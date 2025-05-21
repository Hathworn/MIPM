#include "covariance.h"
#include "../../common/cache_strategy/cache_wrapper.h"
#include "../../common/polybench.h"
#include "hthread_device.h"
#include <compiler/m3000.h>

__global__ void mean_kernel(int m, int n, DATA_TYPE *mean, DATA_TYPE *data)
{
    // 获取当前线程的 ID 和线程组大小
    int thread_id = get_thread_id();   // 线程 ID
    int group_size = get_group_size(); // 线程总数

    // 每个线程负责的数据范围
    int j_start = (m * thread_id) / group_size;     // 计算每个线程负责的起始数据
    int j_end = (m * (thread_id + 1)) / group_size; // 计算每个线程负责的结束数据

    // 保证线程任务在数据范围内均匀分配，处理多余的部分
    if (thread_id == group_size - 1) {
        j_end = m; // 最后一个线程处理剩余的所有数据
    }

    // 计算每个线程负责的任务
    for (int j = j_start; j < j_end; ++j) {
        mean[j] = 0.0;
    }
    for (int i = 0; i < n; i++) {
        for (int j = j_start; j < j_end; ++j) {
            mean[j] += data[i * m + j];
        }
    }
    for (int j = j_start; j < j_end; ++j) {
        mean[j] /= (DATA_TYPE)n;
    }
}

__global__ void reduce_kernel(int m, int n, DATA_TYPE *mean, DATA_TYPE *data)
{
    // 获取当前线程的 ID 和线程组大小
    int thread_id = get_thread_id();   // 线程 ID
    int group_size = get_group_size(); // 线程总数

    // 每个线程负责的数据范围
    int total_elements = m * n;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    // 计算该线程的任务范围
    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);

    // 遍历该线程分配的任务
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int j = idx % m; // 列索引 (对应原始代码中的 j)
        int i = idx / m; // 行索引 (对应原始代码中的 i)

        if (i < n && j < m) {
            data[i * m + j] -= mean[j]; // 原始计算逻辑
        }
    }
}

__global__ void covar_kernel(int m, int n, DATA_TYPE *symmat, DATA_TYPE *data)
{
    // 获取线程ID和线程总数
    int thread_id = get_thread_id();   // 当前线程ID
    int group_size = get_group_size(); // 线程总数

    // 每个线程负责的元素数量
    int total_elements = m * m; // 总的协方差矩阵元素数量
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    // 计算当前线程需要处理的起始和结束元素索引
    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);

    // 遍历该线程负责的协方差矩阵元素
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int j1 = idx % m; // 行索引
        int j2 = idx / m; // 列索引

        if (j1 <= j2) // 确保只计算对称矩阵的一半
        {
            symmat[j1 * m + j2] = 0.0;
            for (int i = 0; i < n; ++i) {
                symmat[j1 * m + j2] += data[i * m + j1] * data[i * m + j2];
            }
            // 对称矩阵的另一半元素赋值
            symmat[j2 * m + j1] = symmat[j1 * m + j2];
        }
    }
}

#ifdef MINI_DATASET
__global__ void mean_kernel_cache(int m, int n, DATA_TYPE *mean, DATA_TYPE *data)
{
    // 获取当前线程的 ID 和线程组大小
    int thread_id = get_thread_id();   // 线程 ID
    int group_size = get_group_size(); // 线程总数

    // 每个线程负责的数据范围
    int j_start = (m * thread_id) / group_size;
    int j_end = (thread_id == group_size - 1) ? m : (m * (thread_id + 1)) / group_size;

    CACHEb_INIT(mean, DATA_TYPE, &mean[j_start], 0, (j_end - j_start) * sizeof(DATA_TYPE));
    CACHEs_INIT(data, DATA_TYPE, data, 0, 15);
    DATA_TYPE tmp_mean, tmp_data;
    for (int j = j_start; j < j_end; ++j) {
        CACHEb_WT(mean, &mean[j - j_start], 0.0);
    }
    for (int i = 0; i < n; i++) {
        for (int j = j_start; j < j_end; ++j) {
            CACHEb_RD(mean, &mean[j - j_start], tmp_mean);
            CACHEb_RD(data, &data[i * m + j], tmp_data);
            tmp_mean += tmp_data;
            CACHEb_WT(mean, &mean[j - j_start], tmp_mean);
        }
    }
    for (int j = j_start; j < j_end; ++j) {
        CACHEb_RD(mean, &mean[j - j_start], tmp_mean);
        tmp_mean /= (DATA_TYPE)n;
        CACHEb_WT(mean, &mean[j - j_start], tmp_mean);
    }
    CACHEb_FLUSH(mean);
    CACHEs_INVALID(data);
}

__global__ void reduce_kernel_cache(int m, int n, DATA_TYPE *mean, DATA_TYPE *data)
{
    // 获取当前线程的 ID 和线程组大小
    int thread_id = get_thread_id();   // 线程 ID
    int group_size = get_group_size(); // 线程总数

    // 每个线程负责的数据范围
    int total_elements = m * n;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    // 计算该线程的任务范围
    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);
    CACHEb_INIT(mean, DATA_TYPE, mean, 0, _PB_M * sizeof(DATA_TYPE));
    CACHEb_INIT(data, DATA_TYPE, &data[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_mean, tmp_data;

    // 遍历该线程分配的任务
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int j = idx % m; // 列索引 (对应原始代码中的 j)

        CACHEb_RD(mean, &mean[j], tmp_mean);
        CACHEb_RD(data, &data[idx - start_idx], tmp_data);
        tmp_data -= tmp_mean;
        CACHEb_WT(data, &data[idx - start_idx], tmp_data);
    }
    CACHEb_FLUSH(data);
    CACHEb_INVALID(mean);
}

__global__ void covar_kernel_cache(int m, int n, DATA_TYPE *symmat, DATA_TYPE *data)
{
    // 获取线程ID和线程总数
    int thread_id = get_thread_id();   // 当前线程ID
    int group_size = get_group_size(); // 线程总数

    // 每个线程负责的元素数量
    int total_elements = m * m; // 总的协方差矩阵元素数量
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    // 计算当前线程需要处理的起始和结束元素索引
    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);
    CACHEs_INIT(symmat, DATA_TYPE, symmat, 0, 15);
    DATA_TYPE tmp_symmat1;
    // 遍历该线程负责的协方差矩阵元素
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int j1 = idx % m; // 行索引
        int j2 = idx / m; // 列索引
        if (j1 <= j2)     // 确保只计算对称矩阵的一半
        {
            tmp_symmat1 = 0.0;
            for (int i = 0; i < n; ++i) {
                tmp_symmat1 += data[i * m + j1] * data[i * m + j2];
            }
            // 对称矩阵的另一半元素赋值
            symmat[j2 * m + j1] = tmp_symmat1;
            CACHEs_WT(symmat, &symmat[j1 * m + j2], tmp_symmat1);
        }
    }
    CACHEs_FLUSH(symmat);
}
#endif

#ifdef SMALL_DATASET
__global__ void mean_kernel_cache(int m, int n, DATA_TYPE *mean, DATA_TYPE *data)
{
    // 获取当前线程的 ID 和线程组大小
    int thread_id = get_thread_id();   // 线程 ID
    int group_size = get_group_size(); // 线程总数

    // 每个线程负责的数据范围
    int j_start = (m * thread_id) / group_size;
    int j_end = (thread_id == group_size - 1) ? m : (m * (thread_id + 1)) / group_size;

    CACHEb_INIT(mean, DATA_TYPE, &mean[j_start], 0, (j_end - j_start) * sizeof(DATA_TYPE));
    CACHEs_INIT(data, DATA_TYPE, data, 0, 10);
    DATA_TYPE tmp_mean, tmp_data;
    for (int j = j_start; j < j_end; ++j) {
        CACHEb_WT(mean, &mean[j - j_start], 0.0);
    }
    for (int i = 0; i < n; i++) {
        for (int j = j_start; j < j_end; ++j) {
            CACHEb_RD(mean, &mean[j - j_start], tmp_mean);
            CACHEb_RD(data, &data[i * m + j], tmp_data);
            tmp_mean += tmp_data;
            CACHEb_WT(mean, &mean[j - j_start], tmp_mean);
        }
    }
    for (int j = j_start; j < j_end; ++j) {
        CACHEb_RD(mean, &mean[j - j_start], tmp_mean);
        tmp_mean /= (DATA_TYPE)n;
        CACHEb_WT(mean, &mean[j - j_start], tmp_mean);
    }
    CACHEb_FLUSH(mean);
    CACHEs_INVALID(data);
}

__global__ void reduce_kernel_cache(int m, int n, DATA_TYPE *mean, DATA_TYPE *data)
{
    // 获取当前线程的 ID 和线程组大小
    int thread_id = get_thread_id();   // 线程 ID
    int group_size = get_group_size(); // 线程总数

    // 每个线程负责的数据范围
    int total_elements = m * n;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    // 计算该线程的任务范围
    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);
    CACHEb_INIT(mean, DATA_TYPE, mean, 0, _PB_M * sizeof(DATA_TYPE));
    CACHEs_INIT(data, DATA_TYPE, data, 0, 15);
    DATA_TYPE tmp_mean, tmp_data;

    // 遍历该线程分配的任务
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int j = idx % m; // 列索引 (对应原始代码中的 j)

        CACHEb_RD(mean, &mean[j], tmp_mean);
        CACHEs_RD(data, &data[idx], tmp_data);
        tmp_data -= tmp_mean;
        CACHEs_WT(data, &data[idx], tmp_data);
    }
    CACHEs_FLUSH(data);
    CACHEb_INVALID(mean);
}

__global__ void covar_kernel_cache(int m, int n, DATA_TYPE *symmat, DATA_TYPE *data)
{
    // 获取线程ID和线程总数
    int thread_id = get_thread_id();   // 当前线程ID
    int group_size = get_group_size(); // 线程总数

    // 每个线程负责的元素数量
    int total_elements = m * m; // 总的协方差矩阵元素数量
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    // 计算当前线程需要处理的起始和结束元素索引
    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);
    CACHEs_INIT(symmat, DATA_TYPE, symmat, 0, 15);
    DATA_TYPE tmp_symmat1;
    // 遍历该线程负责的协方差矩阵元素
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int j1 = idx % m; // 行索引
        int j2 = idx / m; // 列索引
        if (j1 <= j2)     // 确保只计算对称矩阵的一半
        {
            tmp_symmat1 = 0.0;
            for (int i = 0; i < n; ++i) {
                tmp_symmat1 += data[i * m + j1] * data[i * m + j2];
            }
            // 对称矩阵的另一半元素赋值
            symmat[j2 * m + j1] = tmp_symmat1;
            CACHEs_WT(symmat, &symmat[j1 * m + j2], tmp_symmat1);
        }
    }
    CACHEs_FLUSH(symmat);
}
#endif

#ifdef STANDARD_DATASET /* Default if unspecified. */
__global__ void mean_kernel_cache(int m, int n, DATA_TYPE *mean, DATA_TYPE *data)
{
    // 获取当前线程的 ID 和线程组大小
    int thread_id = get_thread_id();   // 线程 ID
    int group_size = get_group_size(); // 线程总数

    // 每个线程负责的数据范围
    int j_start = (m * thread_id) / group_size;
    int j_end = (thread_id == group_size - 1) ? m : (m * (thread_id + 1)) / group_size;

    CACHEb_INIT(mean, DATA_TYPE, &mean[j_start], 0, (j_end - j_start) * sizeof(DATA_TYPE));
    CACHEs_INIT(data, DATA_TYPE, data, 0, 10);
    DATA_TYPE tmp_mean, tmp_data;
    for (int j = j_start; j < j_end; ++j) {
        CACHEb_WT(mean, &mean[j - j_start], 0.0);
    }
    for (int i = 0; i < n; i++) {
        for (int j = j_start; j < j_end; ++j) {
            CACHEb_RD(mean, &mean[j - j_start], tmp_mean);
            CACHEb_RD(data, &data[i * m + j], tmp_data);
            tmp_mean += tmp_data;
            CACHEb_WT(mean, &mean[j - j_start], tmp_mean);
        }
    }
    for (int j = j_start; j < j_end; ++j) {
        CACHEb_RD(mean, &mean[j - j_start], tmp_mean);
        tmp_mean /= (DATA_TYPE)n;
        CACHEb_WT(mean, &mean[j - j_start], tmp_mean);
    }
    CACHEb_FLUSH(mean);
    CACHEs_INVALID(data);
}
__global__ void reduce_kernel_cache(int m, int n, DATA_TYPE *mean, DATA_TYPE *data)
{
    // 获取当前线程的 ID 和线程组大小
    int thread_id = get_thread_id();   // 线程 ID
    int group_size = get_group_size(); // 线程总数

    // 每个线程负责的数据范围
    int total_elements = m * n;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    // 计算该线程的任务范围
    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);
    CACHEb_INIT(mean, DATA_TYPE, mean, 0, _PB_M * sizeof(DATA_TYPE));
    CACHEs_INIT(data, DATA_TYPE, data, 0, 15);
    DATA_TYPE tmp_mean, tmp_data;

    // 遍历该线程分配的任务
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int j = idx % m; // 列索引 (对应原始代码中的 j)

        CACHEb_RD(mean, &mean[j], tmp_mean);
        CACHEs_RD(data, &data[idx], tmp_data);
        tmp_data -= tmp_mean;
        CACHEs_WT(data, &data[idx], tmp_data);
    }
    CACHEs_FLUSH(data);
    CACHEb_INVALID(mean);
}

__global__ void covar_kernel_cache(int m, int n, DATA_TYPE *symmat, DATA_TYPE *data)
{
    // 获取线程ID和线程总数
    int thread_id = get_thread_id();   // 当前线程ID
    int group_size = get_group_size(); // 线程总数

    // 每个线程负责的元素数量
    int total_elements = m * m; // 总的协方差矩阵元素数量
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    // 计算当前线程需要处理的起始和结束元素索引
    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);
    CACHEs_INIT(symmat, DATA_TYPE, symmat, 0, 15);
    DATA_TYPE tmp_symmat1;
    // 遍历该线程负责的协方差矩阵元素
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int j1 = idx % m; // 行索引
        int j2 = idx / m; // 列索引
        if (j1 <= j2)     // 确保只计算对称矩阵的一半
        {
            tmp_symmat1 = 0.0;
            for (int i = 0; i < n; ++i) {
                tmp_symmat1 += data[i * m + j1] * data[i * m + j2];
            }
            // 对称矩阵的另一半元素赋值
            symmat[j2 * m + j1] = tmp_symmat1;
            CACHEs_WT(symmat, &symmat[j1 * m + j2], tmp_symmat1);
        }
    }
    CACHEs_FLUSH(symmat);
}
#endif

#ifdef LARGE_DATASET
__global__ void mean_kernel_cache(int m, int n, DATA_TYPE *mean, DATA_TYPE *data)
{
    // 获取当前线程的 ID 和线程组大小
    int thread_id = get_thread_id();   // 线程 ID
    int group_size = get_group_size(); // 线程总数

    // 每个线程负责的数据范围
    int j_start = (m * thread_id) / group_size;
    int j_end = (thread_id == group_size - 1) ? m : (m * (thread_id + 1)) / group_size;

    CACHEb_INIT(mean, DATA_TYPE, &mean[j_start], 0, (j_end - j_start) * sizeof(DATA_TYPE));
    CACHEs_INIT(data, DATA_TYPE, data, 0, 10);
    DATA_TYPE tmp_mean, tmp_data;
    for (int j = j_start; j < j_end; ++j) {
        CACHEb_WT(mean, &mean[j - j_start], 0.0);
    }
    for (int i = 0; i < n; i++) {
        for (int j = j_start; j < j_end; ++j) {
            CACHEb_RD(mean, &mean[j - j_start], tmp_mean);
            CACHEb_RD(data, &data[i * m + j], tmp_data);
            tmp_mean += tmp_data;
            CACHEb_WT(mean, &mean[j - j_start], tmp_mean);
        }
    }
    for (int j = j_start; j < j_end; ++j) {
        CACHEb_RD(mean, &mean[j - j_start], tmp_mean);
        tmp_mean /= (DATA_TYPE)n;
        CACHEb_WT(mean, &mean[j - j_start], tmp_mean);
    }
    CACHEb_FLUSH(mean);
    CACHEs_INVALID(data);
}
__global__ void reduce_kernel_cache(int m, int n, DATA_TYPE *mean, DATA_TYPE *data)
{
    // 获取当前线程的 ID 和线程组大小
    int thread_id = get_thread_id();   // 线程 ID
    int group_size = get_group_size(); // 线程总数

    // 每个线程负责的数据范围
    int total_elements = m * n;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    // 计算该线程的任务范围
    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);
    CACHEb_INIT(mean, DATA_TYPE, mean, 0, _PB_M * sizeof(DATA_TYPE));
    CACHEs_INIT(data, DATA_TYPE, data, 0, 15);
    DATA_TYPE tmp_mean, tmp_data;

    // 遍历该线程分配的任务
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int j = idx % m; // 列索引 (对应原始代码中的 j)

        CACHEb_RD(mean, &mean[j], tmp_mean);
        CACHEs_RD(data, &data[idx], tmp_data);
        tmp_data -= tmp_mean;
        CACHEs_WT(data, &data[idx], tmp_data);
    }
    CACHEs_FLUSH(data);
    CACHEb_INVALID(mean);
}

__global__ void covar_kernel_cache(int m, int n, DATA_TYPE *symmat, DATA_TYPE *data)
{
    // 获取线程ID和线程总数
    int thread_id = get_thread_id();   // 当前线程ID
    int group_size = get_group_size(); // 线程总数

    // 每个线程负责的元素数量
    int total_elements = m * m; // 总的协方差矩阵元素数量
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    // 计算当前线程需要处理的起始和结束元素索引
    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);
    CACHEs_INIT(symmat, DATA_TYPE, symmat, 0, 15);
    DATA_TYPE tmp_symmat1;
    // 遍历该线程负责的协方差矩阵元素
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int j1 = idx % m; // 行索引
        int j2 = idx / m; // 列索引
        if (j1 <= j2)     // 确保只计算对称矩阵的一半
        {
            tmp_symmat1 = 0.0;
            for (int i = 0; i < n; ++i) {
                tmp_symmat1 += data[i * m + j1] * data[i * m + j2];
            }
            // 对称矩阵的另一半元素赋值
            symmat[j2 * m + j1] = tmp_symmat1;
            CACHEs_WT(symmat, &symmat[j1 * m + j2], tmp_symmat1);
        }
    }
    CACHEs_FLUSH(symmat);
}
#endif

#ifdef EXTRALARGE_DATASET
__global__ void mean_kernel_cache(int m, int n, DATA_TYPE *mean, DATA_TYPE *data)
{
    // 获取当前线程的 ID 和线程组大小
    int thread_id = get_thread_id();   // 线程 ID
    int group_size = get_group_size(); // 线程总数

    // 每个线程负责的数据范围
    int j_start = (m * thread_id) / group_size;
    int j_end = (thread_id == group_size - 1) ? m : (m * (thread_id + 1)) / group_size;

    CACHEb_INIT(mean, DATA_TYPE, &mean[j_start], 0, (j_end - j_start) * sizeof(DATA_TYPE));
    CACHEs_INIT(data, DATA_TYPE, data, 0, 10);
    DATA_TYPE tmp_mean, tmp_data;
    for (int j = j_start; j < j_end; ++j) {
        CACHEb_WT(mean, &mean[j - j_start], 0.0);
    }
    for (int i = 0; i < n; i++) {
        for (int j = j_start; j < j_end; ++j) {
            CACHEb_RD(mean, &mean[j - j_start], tmp_mean);
            CACHEb_RD(data, &data[i * m + j], tmp_data);
            tmp_mean += tmp_data;
            CACHEb_WT(mean, &mean[j - j_start], tmp_mean);
        }
    }
    for (int j = j_start; j < j_end; ++j) {
        CACHEb_RD(mean, &mean[j - j_start], tmp_mean);
        tmp_mean /= (DATA_TYPE)n;
        CACHEb_WT(mean, &mean[j - j_start], tmp_mean);
    }
    CACHEb_FLUSH(mean);
    CACHEs_INVALID(data);
}
__global__ void reduce_kernel_cache(int m, int n, DATA_TYPE *mean, DATA_TYPE *data)
{
    // 获取当前线程的 ID 和线程组大小
    int thread_id = get_thread_id();   // 线程 ID
    int group_size = get_group_size(); // 线程总数

    // 每个线程负责的数据范围
    int total_elements = m * n;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    // 计算该线程的任务范围
    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);
    CACHEb_INIT(mean, DATA_TYPE, mean, 0, _PB_M * sizeof(DATA_TYPE));
    CACHEs_INIT(data, DATA_TYPE, data, 0, 15);
    DATA_TYPE tmp_mean, tmp_data;

    // 遍历该线程分配的任务
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int j = idx % m; // 列索引 (对应原始代码中的 j)

        CACHEb_RD(mean, &mean[j], tmp_mean);
        CACHEs_RD(data, &data[idx], tmp_data);
        tmp_data -= tmp_mean;
        CACHEs_WT(data, &data[idx], tmp_data);
    }
    CACHEs_FLUSH(data);
    CACHEb_INVALID(mean);
}

__global__ void covar_kernel_cache(int m, int n, DATA_TYPE *symmat, DATA_TYPE *data)
{
    // 获取线程ID和线程总数
    int thread_id = get_thread_id();   // 当前线程ID
    int group_size = get_group_size(); // 线程总数

    // 每个线程负责的元素数量
    int total_elements = m * m; // 总的协方差矩阵元素数量
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    // 计算当前线程需要处理的起始和结束元素索引
    int start_idx = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_idx = (thread_id + 1) * elements_per_thread + (thread_id + 1 < remainder ? thread_id + 1 : remainder);
    CACHEs_INIT(symmat, DATA_TYPE, symmat, 0, 15);
    DATA_TYPE tmp_symmat1;
    // 遍历该线程负责的协方差矩阵元素
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int j1 = idx % m; // 行索引
        int j2 = idx / m; // 列索引
        if (j1 <= j2)     // 确保只计算对称矩阵的一半
        {
            tmp_symmat1 = 0.0;
            for (int i = 0; i < n; ++i) {
                tmp_symmat1 += data[i * m + j1] * data[i * m + j2];
            }
            // 对称矩阵的另一半元素赋值
            symmat[j2 * m + j1] = tmp_symmat1;
            CACHEs_WT(symmat, &symmat[j1 * m + j2], tmp_symmat1);
        }
    }
    CACHEs_FLUSH(symmat);
}
#endif