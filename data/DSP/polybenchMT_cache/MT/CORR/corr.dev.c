#include "corr.h"
#include "../../common/cache_strategy/cache_wrapper.h"
#include "../../common/polybench.h"
#include "hthread_device.h"
#include <compiler/m3000.h>
#include <math.h>

#define FLOAT_N 3214212.01f
#define EPS 0.005f

static inline int min(int a, int b) { return a > b ? b : a; }

__global__ void mean_kernel(int m, int n, DATA_TYPE *mean, DATA_TYPE *data)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();

    // 为每个线程分配任务，确保覆盖所有数据
    int items_per_thread = (_PB_M + total_threads - 1) / total_threads;
    int start_j = thread_id * items_per_thread;
    int end_j = min(start_j + items_per_thread, _PB_M);
    for (int j = start_j; j < end_j; j++) {
        mean[j] = 0.0;
    }
    for (int i = 0; i < _PB_N; i++) {
        for (int j = start_j; j < end_j; j++) {
            mean[j] += data[i * M + j];
        }
    }
    for (int j = start_j; j < end_j; j++) {
        mean[j] /= (DATA_TYPE)FLOAT_N;
    }
}

__global__ void std_kernel(int m, int n, DATA_TYPE *mean, DATA_TYPE *std, DATA_TYPE *data)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();

    // 为每个线程分配任务
    int items_per_thread = (_PB_M + total_threads - 1) / total_threads;
    int start_j = thread_id * items_per_thread;
    int end_j = min(start_j + items_per_thread, _PB_M);

    for (int j = start_j; j < end_j; j++) {
        std[j] = 0.0;
        for (int i = 0; i < _PB_N; i++) {
            std[j] += (data[i * M + j] - mean[j]) * (data[i * M + j] - mean[j]);
        }
        std[j] /= (FLOAT_N);
        std[j] = sqrt(std[j]);
        if (std[j] <= EPS) {
            std[j] = 1.0;
        }
    }
}

__global__ void reduce_kernel(int m, int n, DATA_TYPE *mean, DATA_TYPE *std, DATA_TYPE *data)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();

    // 此核函数处理二维数据，需要重新分配工作
    // 计算总元素数
    int total_elements = _PB_N * _PB_M;
    int items_per_thread = (total_elements + total_threads - 1) / total_threads;
    int start_idx = thread_id * items_per_thread;
    int end_idx = min(start_idx + items_per_thread, total_elements);

    for (int idx = start_idx; idx < end_idx; idx++) {
        // 将一维索引转换为二维索引
        int i = idx / _PB_M;
        int j = idx % _PB_M;

        if ((i < _PB_N) && (j < _PB_M)) {
            data[i * N + j] -= mean[j];
            data[i * N + j] /= (sqrt(FLOAT_N) * std[j]);
        }
    }
}

__global__ void corr_kernel(int m, int n, DATA_TYPE *symmat, DATA_TYPE *data)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();

    // 注意: 这个核函数处理上三角矩阵，需要特殊处理任务分配
    // 需要计算的元素数量为 (M-1)*M/2
    int j1;

    // 每个线程处理一部分行
    int items_per_thread = ((_PB_M - 1) + total_threads - 1) / total_threads;
    int start_j1 = thread_id * items_per_thread;
    int end_j1 = min(start_j1 + items_per_thread, _PB_M - 1);

    for (j1 = start_j1; j1 < end_j1; j1++) {
        symmat[j1 * M + j1] = 1.0;

        for (int j2 = (j1 + 1); j2 < _PB_M; j2++) {
            symmat[j1 * M + j2] = 0.0;
            for (int i = 0; i < _PB_N; i++) {
                symmat[j1 * M + j2] += data[i * M + j1] * data[i * M + j2];
            }
            symmat[j2 * M + j1] = symmat[j1 * M + j2];
        }
    }
}

__global__ void mean_kernel_cache(int m, int n, DATA_TYPE *mean, DATA_TYPE *data)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();

    // 为每个线程分配任务，确保覆盖所有数据
    int items_per_thread = (_PB_M + total_threads - 1) / total_threads;
    int start_j = thread_id * items_per_thread;
    int end_j = min(start_j + items_per_thread, _PB_M);
    CACHEb_INIT(mean, DATA_TYPE, &mean[start_j], 0, (end_j - start_j) * sizeof(DATA_TYPE));
    CACHEs_INIT(data, DATA_TYPE, data, 0, 15);
    DATA_TYPE tmp_mean, tmp_data;
    for (int j = start_j; j < end_j; j++) {
        CACHEb_WT(mean, &mean[j - start_j], 0.0);
    }
    for (int i = 0; i < _PB_N; i++) {
        for (int j = start_j; j < end_j; j++) {
            CACHEb_RD(mean, &mean[j - start_j], tmp_mean);
            CACHEs_RD(data, &data[i * M + j], tmp_data);
            tmp_mean += tmp_data;
            CACHEb_WT(mean, &mean[j - start_j], tmp_mean);
        }
    }
    for (int j = start_j; j < end_j; j++) {
        CACHEb_RD(mean, &mean[j - start_j], tmp_mean);
        tmp_mean /= (DATA_TYPE)FLOAT_N;
        CACHEb_WT(mean, &mean[j - start_j], tmp_mean);
    }
    CACHEb_FLUSH(mean);
    CACHEs_INVALID(data);
}

__global__ void std_kernel_cache(int m, int n, DATA_TYPE *mean, DATA_TYPE *std, DATA_TYPE *data)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();

    // 为每个线程分配任务
    int items_per_thread = (_PB_M + total_threads - 1) / total_threads;
    int start_j = thread_id * items_per_thread;
    int end_j = min(start_j + items_per_thread, _PB_M);
    CACHEb_INIT(std, DATA_TYPE, &std[start_j], 0, (end_j - start_j) * sizeof(DATA_TYPE));
    CACHEb_INIT(mean, DATA_TYPE, &mean[start_j], 0, (end_j - start_j) * sizeof(DATA_TYPE));
    CACHEd_INIT(data, DATA_TYPE, data, 5, 10);
    DATA_TYPE tmp_std, tmp_mean, tmp_data;
    for (int j = start_j; j < end_j; j++) {
        CACHEb_RD(mean, &mean[j - start_j], tmp_mean);
        tmp_std = 0.0;
        for (int i = 0; i < _PB_N; i++) {
            CACHEd_RD(data, &data[i * M + j], tmp_data);
            tmp_std += (tmp_data - tmp_mean) * (tmp_data - tmp_mean);
        }
        tmp_std /= (FLOAT_N);
        tmp_std = sqrt(tmp_std);
        if (tmp_std <= EPS) {
            tmp_std = 1.0;
        }
        CACHEb_WT(std, &std[j - start_j], tmp_std);
    }
    CACHEb_FLUSH(std);
    CACHEb_INVALID(mean);
    CACHEd_INVALID(data);
}

__global__ void reduce_kernel_cache(int m, int n, DATA_TYPE *mean, DATA_TYPE *std, DATA_TYPE *data)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();

    // 此核函数处理二维数据，需要重新分配工作
    // 计算总元素数
    int total_elements = _PB_N * _PB_M;
    int items_per_thread = (total_elements + total_threads - 1) / total_threads;
    int start_idx = thread_id * items_per_thread;
    int end_idx = min(start_idx + items_per_thread, total_elements);

    int start_j = start_idx / _PB_M;
    CACHEb_INIT(mean, DATA_TYPE, mean, 0, _PB_M * sizeof(DATA_TYPE));
    CACHEb_INIT(std, DATA_TYPE, std, 0, _PB_M * sizeof(DATA_TYPE));
    CACHEs_INIT(data, DATA_TYPE, data, 0, 15);
    DATA_TYPE tmp_mean, tmp_std, tmp_data;
    for (int idx = start_idx; idx < end_idx; idx++) {
        // 将一维索引转换为二维索引
        int i = idx / _PB_M;
        int j = idx % _PB_M;
        CACHEb_RD(mean, &mean[j], tmp_mean);
        CACHEb_RD(std, &std[j], tmp_std);
        CACHEs_RD(data, &data[i * N + j], tmp_data);
        tmp_data -= tmp_mean;
        tmp_data /= (sqrt(FLOAT_N) * tmp_std);
        CACHEs_WT(data, &data[i * N + j], tmp_data);
    }
    CACHEs_FLUSH(data);
    CACHEb_INVALID(std);
    CACHEb_INVALID(mean);
}

__global__ void corr_kernel_cache(int m, int n, DATA_TYPE *symmat, DATA_TYPE *data)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();

    // 注意: 这个核函数处理上三角矩阵，需要特殊处理任务分配
    // 需要计算的元素数量为 (M-1)*M/2
    int j1;

    // 每个线程处理一部分行
    int items_per_thread = ((_PB_M - 1) + total_threads - 1) / total_threads;
    int start_j1 = thread_id * items_per_thread;
    int end_j1 = min(start_j1 + items_per_thread, _PB_M - 1);
    CACHEs_INIT(symmat, DATA_TYPE, symmat, 0, 15);
    DATA_TYPE tmp_symmat1;
    for (j1 = start_j1; j1 < end_j1; j1++) {
        CACHEs_WT(symmat, &symmat[j1 * M + j1], 1.0);

        for (int j2 = (j1 + 1); j2 < _PB_M; j2++) {
            tmp_symmat1 = 0.0;
            for (int i = 0; i < _PB_N; i++) {
                tmp_symmat1 += data[i * M + j1] * data[i * M + j2];
            }
            CACHEs_WT(symmat, &symmat[j1 * M + j2], tmp_symmat1);
            symmat[j2 * M + j1] = tmp_symmat1;
        }
    }
    CACHEs_FLUSH(symmat);
}
