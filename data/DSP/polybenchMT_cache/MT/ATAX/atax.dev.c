#include "atax.h"
#include "../../common/cache_strategy/cache_wrapper.h"
#include "../../common/polybench.h"
#include "hthread_device.h"
#include <compiler/m3000.h>

__global__ void atax_kernel1(int nx, int ny, DATA_TYPE *A, DATA_TYPE *x, DATA_TYPE *tmp)
{
    // 获取当前线程的线程 ID
    int thread_id = get_thread_id();
    // 获取线程的总数
    int group_size = get_group_size();

    // 计算每个线程需要处理的任务范围
    int total_elements = nx;                               // 任务总数（每个线程处理一行的计算）
    int elements_per_thread = total_elements / group_size; // 每个线程处理的元素数
    int remainder = total_elements % group_size;           // 余下的元素

    // 每个线程的任务范围
    int start_idx = thread_id * elements_per_thread;
    int end_idx = (thread_id + 1) * elements_per_thread;

    // 处理余下的部分
    if (thread_id < remainder) {
        start_idx += thread_id;
        end_idx = start_idx + elements_per_thread + 1;
    } else {
        start_idx += remainder;
        end_idx = start_idx + elements_per_thread;
    }

    // 处理分配给当前线程的任务范围
    for (int i = start_idx; i < end_idx; i++) {
        tmp[i] = 0;
        for (int j = 0; j < ny; j++) {
            tmp[i] += A[i * ny + j] * x[j];
        }
    }
}

__global__ void atax_kernel2(int nx, int ny, DATA_TYPE *A, DATA_TYPE *y, DATA_TYPE *tmp)
{
    // 获取当前线程的线程 ID
    int thread_id = get_thread_id();
    // 获取线程的总数
    int group_size = get_group_size();

    // 计算每个线程需要处理的任务范围
    int total_elements = ny;                               // 任务总数（每个线程处理一列的计算）
    int elements_per_thread = total_elements / group_size; // 每个线程处理的元素数
    int remainder = total_elements % group_size;           // 余下的元素

    // 每个线程的任务范围
    int start_idx = thread_id * elements_per_thread;
    int end_idx = (thread_id + 1) * elements_per_thread;

    // 处理余下的部分
    if (thread_id < remainder) {
        start_idx += thread_id;
        end_idx = start_idx + elements_per_thread + 1;
    } else {
        start_idx += remainder;
        end_idx = start_idx + elements_per_thread;
    }

    for (int j = start_idx; j < end_idx; j++) {
        y[j] = 0;
    }

    for (int i = 0; i < nx; i++) {
        for (int j = start_idx; j < end_idx; j++) {
            y[j] += A[i * ny + j] * tmp[i];
        }
    }
}

#ifdef MINI_DATASET
__global__ void atax_kernel1_cache(int nx, int ny, DATA_TYPE *A, DATA_TYPE *x, DATA_TYPE *tmp)
{
    // 获取当前线程的线程 ID
    int thread_id = get_thread_id();
    // 获取线程的总数
    int group_size = get_group_size();

    // 计算每个线程需要处理的任务范围
    int total_elements = nx;                               // 任务总数（每个线程处理一行的计算）
    int elements_per_thread = total_elements / group_size; // 每个线程处理的元素数
    int remainder = total_elements % group_size;           // 余下的元素

    // 每个线程的任务范围
    int start_idx = thread_id * elements_per_thread;
    int end_idx = (thread_id + 1) * elements_per_thread;

    // 处理余下的部分
    if (thread_id < remainder) {
        start_idx += thread_id;
        end_idx = start_idx + elements_per_thread + 1;
    } else {
        start_idx += remainder;
        end_idx = start_idx + elements_per_thread;
    }

    CACHEb_INIT(tmp, DATA_TYPE, &tmp[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(x, DATA_TYPE, x, 0, ny * sizeof(DATA_TYPE));
    CACHEs_INIT(A, DATA_TYPE, A, 0, 15);
    DATA_TYPE tmp_A, tmp_x, tmp_tmp;
    // 处理分配给当前线程的任务范围
    for (int i = start_idx; i < end_idx; i++) {
        CACHEb_RD(tmp, &tmp[i - start_idx], tmp_tmp);
        tmp_tmp = 0;
        for (int j = 0; j < ny; j++) {
            CACHEb_RD(x, &x[j], tmp_x);
            CACHEs_RD(A, &A[i * ny + j], tmp_A);
            tmp_tmp += tmp_A * tmp_x;
        }
        CACHEb_WT(tmp, &tmp[i - start_idx], tmp_tmp);
    }
    CACHEb_FLUSH(tmp);
    CACHEs_INVALID(A);
    CACHEb_INVALID(x);
}

__global__ void atax_kernel2_cache(int nx, int ny, DATA_TYPE *A, DATA_TYPE *y, DATA_TYPE *tmp)
{
    // 获取当前线程的线程 ID
    int thread_id = get_thread_id();
    // 获取线程的总数
    int group_size = get_group_size();

    // 计算每个线程需要处理的任务范围
    int total_elements = ny;                               // 任务总数（每个线程处理一列的计算）
    int elements_per_thread = total_elements / group_size; // 每个线程处理的元素数
    int remainder = total_elements % group_size;           // 余下的元素

    // 每个线程的任务范围
    int start_idx = thread_id * elements_per_thread;
    int end_idx = (thread_id + 1) * elements_per_thread;

    // 处理余下的部分
    if (thread_id < remainder) {
        start_idx += thread_id;
        end_idx = start_idx + elements_per_thread + 1;
    } else {
        start_idx += remainder;
        end_idx = start_idx + elements_per_thread;
    }

    CACHEb_INIT(y, DATA_TYPE, &y[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(tmp, DATA_TYPE, tmp, 0, nx * sizeof(DATA_TYPE));
    CACHEs_INIT(A, DATA_TYPE, A, 0, 15);
    DATA_TYPE tmp_A, tmp_tmp, tmp_y;
    for (int j = start_idx; j < end_idx; j++) {
        CACHEb_WT(y, &y[j - start_idx], 0);
    }

    for (int i = 0; i < nx; i++) {
        CACHEb_RD(tmp, &tmp[i], tmp_tmp);
        for (int j = start_idx; j < end_idx; j++) {
            CACHEs_RD(A, &A[i * ny + j], tmp_A);
            CACHEb_RD(y, &y[j - start_idx], tmp_y);
            tmp_y += tmp_A * tmp_tmp;
            CACHEb_WT(y, &y[j - start_idx], tmp_y);
        }
    }
    CACHEb_FLUSH(y);
    CACHEs_INVALID(A);
    CACHEb_INVALID(tmp);
}
#endif

#ifdef SMALL_DATASET
__global__ void atax_kernel1_cache(int nx, int ny, DATA_TYPE *A, DATA_TYPE *x, DATA_TYPE *tmp)
{
    // 获取当前线程的线程 ID
    int thread_id = get_thread_id();
    // 获取线程的总数
    int group_size = get_group_size();

    // 计算每个线程需要处理的任务范围
    int total_elements = nx;                               // 任务总数（每个线程处理一行的计算）
    int elements_per_thread = total_elements / group_size; // 每个线程处理的元素数
    int remainder = total_elements % group_size;           // 余下的元素

    // 每个线程的任务范围
    int start_idx = thread_id * elements_per_thread;
    int end_idx = (thread_id + 1) * elements_per_thread;

    // 处理余下的部分
    if (thread_id < remainder) {
        start_idx += thread_id;
        end_idx = start_idx + elements_per_thread + 1;
    } else {
        start_idx += remainder;
        end_idx = start_idx + elements_per_thread;
    }

    CACHEb_INIT(tmp, DATA_TYPE, &tmp[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(x, DATA_TYPE, x, 0, ny * sizeof(DATA_TYPE));
    CACHEs_INIT(A, DATA_TYPE, A, 0, 14);
    DATA_TYPE tmp_A, tmp_x, tmp_tmp;
    // 处理分配给当前线程的任务范围
    for (int i = start_idx; i < end_idx; i++) {
        CACHEb_RD(tmp, &tmp[i - start_idx], tmp_tmp);
        tmp_tmp = 0;
        for (int j = 0; j < ny; j++) {
            CACHEb_RD(x, &x[j], tmp_x);
            CACHEs_RD(A, &A[i * ny + j], tmp_A);
            tmp_tmp += tmp_A * tmp_x;
        }
        CACHEb_WT(tmp, &tmp[i - start_idx], tmp_tmp);
    }
    CACHEb_FLUSH(tmp);
    CACHEs_INVALID(A);
    CACHEb_INVALID(x);
}

__global__ void atax_kernel2_cache(int nx, int ny, DATA_TYPE *A, DATA_TYPE *y, DATA_TYPE *tmp)
{
    // 获取当前线程的线程 ID
    int thread_id = get_thread_id();
    // 获取线程的总数
    int group_size = get_group_size();

    // 计算每个线程需要处理的任务范围
    int total_elements = ny;                               // 任务总数（每个线程处理一列的计算）
    int elements_per_thread = total_elements / group_size; // 每个线程处理的元素数
    int remainder = total_elements % group_size;           // 余下的元素

    // 每个线程的任务范围
    int start_idx = thread_id * elements_per_thread;
    int end_idx = (thread_id + 1) * elements_per_thread;

    // 处理余下的部分
    if (thread_id < remainder) {
        start_idx += thread_id;
        end_idx = start_idx + elements_per_thread + 1;
    } else {
        start_idx += remainder;
        end_idx = start_idx + elements_per_thread;
    }

    CACHEb_INIT(y, DATA_TYPE, &y[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(tmp, DATA_TYPE, tmp, 0, nx * sizeof(DATA_TYPE));
    CACHEs_INIT(A, DATA_TYPE, A, 0, 14);
    DATA_TYPE tmp_A, tmp_tmp, tmp_y;
    for (int j = start_idx; j < end_idx; j++) {
        CACHEb_WT(y, &y[j - start_idx], 0);
    }

    for (int i = 0; i < nx; i++) {
        CACHEb_RD(tmp, &tmp[i], tmp_tmp);
        for (int j = start_idx; j < end_idx; j++) {
            CACHEs_RD(A, &A[i * ny + j], tmp_A);
            CACHEb_RD(y, &y[j - start_idx], tmp_y);
            tmp_y += tmp_A * tmp_tmp;
            CACHEb_WT(y, &y[j - start_idx], tmp_y);
        }
    }
    CACHEb_FLUSH(y);
    CACHEs_INVALID(A);
    CACHEb_INVALID(tmp);
}
#endif

#ifdef STANDARD_DATASET /* Default if unspecified. */
__global__ void atax_kernel1_cache(int nx, int ny, DATA_TYPE *A, DATA_TYPE *x, DATA_TYPE *tmp)
{
    // 获取当前线程的线程 ID
    int thread_id = get_thread_id();
    // 获取线程的总数
    int group_size = get_group_size();

    // 计算每个线程需要处理的任务范围
    int total_elements = nx;                               // 任务总数（每个线程处理一行的计算）
    int elements_per_thread = total_elements / group_size; // 每个线程处理的元素数
    int remainder = total_elements % group_size;           // 余下的元素

    // 每个线程的任务范围
    int start_idx = thread_id * elements_per_thread;
    int end_idx = (thread_id + 1) * elements_per_thread;

    // 处理余下的部分
    if (thread_id < remainder) {
        start_idx += thread_id;
        end_idx = start_idx + elements_per_thread + 1;
    } else {
        start_idx += remainder;
        end_idx = start_idx + elements_per_thread;
    }

    CACHEb_INIT(tmp, DATA_TYPE, &tmp[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEs_INIT(x, DATA_TYPE, x, 0, 15);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 14);
    DATA_TYPE tmp_A, tmp_x, tmp_tmp;
    // 处理分配给当前线程的任务范围
    for (int i = start_idx; i < end_idx; i++) {
        CACHEb_RD(tmp, &tmp[i - start_idx], tmp_tmp);
        tmp_tmp = 0;
        for (int j = 0; j < ny; j++) {
            CACHEs_RD(x, &x[j], tmp_x);
            CACHEs_RD(A, &A[i * ny + j], tmp_A);
            tmp_tmp += tmp_A * tmp_x;
        }
        CACHEb_WT(tmp, &tmp[i - start_idx], tmp_tmp);
    }
    CACHEb_FLUSH(tmp);
    CACHEs_INVALID(A);
    CACHEs_INVALID(x);
}

__global__ void atax_kernel2_cache(int nx, int ny, DATA_TYPE *A, DATA_TYPE *y, DATA_TYPE *tmp)
{
    // 获取当前线程的线程 ID
    int thread_id = get_thread_id();
    // 获取线程的总数
    int group_size = get_group_size();

    // 计算每个线程需要处理的任务范围
    int total_elements = ny;                               // 任务总数（每个线程处理一列的计算）
    int elements_per_thread = total_elements / group_size; // 每个线程处理的元素数
    int remainder = total_elements % group_size;           // 余下的元素

    // 每个线程的任务范围
    int start_idx = thread_id * elements_per_thread;
    int end_idx = (thread_id + 1) * elements_per_thread;

    // 处理余下的部分
    if (thread_id < remainder) {
        start_idx += thread_id;
        end_idx = start_idx + elements_per_thread + 1;
    } else {
        start_idx += remainder;
        end_idx = start_idx + elements_per_thread;
    }

    CACHEb_INIT(y, DATA_TYPE, &y[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEs_INIT(tmp, DATA_TYPE, tmp, 0, 15);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 12);
    DATA_TYPE tmp_A, tmp_tmp, tmp_y;
    for (int j = start_idx; j < end_idx; j++) {
        CACHEb_WT(y, &y[j - start_idx], 0);
    }

    for (int i = 0; i < nx; i++) {
        CACHEs_RD(tmp, &tmp[i], tmp_tmp);
        for (int j = start_idx; j < end_idx; j++) {
            CACHEs_RD(A, &A[i * ny + j], tmp_A);
            CACHEb_RD(y, &y[j - start_idx], tmp_y);
            tmp_y += tmp_A * tmp_tmp;
            CACHEb_WT(y, &y[j - start_idx], tmp_y);
        }
    }
    CACHEb_FLUSH(y);
    CACHEs_INVALID(A);
    CACHEs_INVALID(tmp);
}
#endif

#ifdef LARGE_DATASET
__global__ void atax_kernel1_cache(int nx, int ny, DATA_TYPE *A, DATA_TYPE *x, DATA_TYPE *tmp)
{
    // 获取当前线程的线程 ID
    int thread_id = get_thread_id();
    // 获取线程的总数
    int group_size = get_group_size();

    // 计算每个线程需要处理的任务范围
    int total_elements = nx;                               // 任务总数（每个线程处理一行的计算）
    int elements_per_thread = total_elements / group_size; // 每个线程处理的元素数
    int remainder = total_elements % group_size;           // 余下的元素

    // 每个线程的任务范围
    int start_idx = thread_id * elements_per_thread;
    int end_idx = (thread_id + 1) * elements_per_thread;

    // 处理余下的部分
    if (thread_id < remainder) {
        start_idx += thread_id;
        end_idx = start_idx + elements_per_thread + 1;
    } else {
        start_idx += remainder;
        end_idx = start_idx + elements_per_thread;
    }

    CACHEb_INIT(tmp, DATA_TYPE, &tmp[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEs_INIT(x, DATA_TYPE, x, 0, 15);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 14);
    DATA_TYPE tmp_A, tmp_x, tmp_tmp;
    // 处理分配给当前线程的任务范围
    for (int i = start_idx; i < end_idx; i++) {
        CACHEb_RD(tmp, &tmp[i - start_idx], tmp_tmp);
        tmp_tmp = 0;
        for (int j = 0; j < ny; j++) {
            CACHEs_RD(x, &x[j], tmp_x);
            CACHEs_RD(A, &A[i * ny + j], tmp_A);
            tmp_tmp += tmp_A * tmp_x;
        }
        CACHEb_WT(tmp, &tmp[i - start_idx], tmp_tmp);
    }
    CACHEb_FLUSH(tmp);
    CACHEs_INVALID(A);
    CACHEs_INVALID(x);
}

__global__ void atax_kernel2_cache(int nx, int ny, DATA_TYPE *A, DATA_TYPE *y, DATA_TYPE *tmp)
{
    // 获取当前线程的线程 ID
    int thread_id = get_thread_id();
    // 获取线程的总数
    int group_size = get_group_size();

    // 计算每个线程需要处理的任务范围
    int total_elements = ny;                               // 任务总数（每个线程处理一列的计算）
    int elements_per_thread = total_elements / group_size; // 每个线程处理的元素数
    int remainder = total_elements % group_size;           // 余下的元素

    // 每个线程的任务范围
    int start_idx = thread_id * elements_per_thread;
    int end_idx = (thread_id + 1) * elements_per_thread;

    // 处理余下的部分
    if (thread_id < remainder) {
        start_idx += thread_id;
        end_idx = start_idx + elements_per_thread + 1;
    } else {
        start_idx += remainder;
        end_idx = start_idx + elements_per_thread;
    }

    CACHEb_INIT(y, DATA_TYPE, &y[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEs_INIT(tmp, DATA_TYPE, tmp, 0, 15);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 12);
    DATA_TYPE tmp_A, tmp_tmp, tmp_y;
    for (int j = start_idx; j < end_idx; j++) {
        CACHEb_WT(y, &y[j - start_idx], 0);
    }

    for (int i = 0; i < nx; i++) {
        CACHEs_RD(tmp, &tmp[i], tmp_tmp);
        for (int j = start_idx; j < end_idx; j++) {
            CACHEs_RD(A, &A[i * ny + j], tmp_A);
            CACHEb_RD(y, &y[j - start_idx], tmp_y);
            tmp_y += tmp_A * tmp_tmp;
            CACHEb_WT(y, &y[j - start_idx], tmp_y);
        }
    }
    CACHEb_FLUSH(y);
    CACHEs_INVALID(A);
    CACHEs_INVALID(tmp);
}
#endif

#ifdef EXTRALARGE_DATASET
__global__ void atax_kernel1_cache(int nx, int ny, DATA_TYPE *A, DATA_TYPE *x, DATA_TYPE *tmp)
{
    // 获取当前线程的线程 ID
    int thread_id = get_thread_id();
    // 获取线程的总数
    int group_size = get_group_size();

    // 计算每个线程需要处理的任务范围
    int total_elements = nx;                               // 任务总数（每个线程处理一行的计算）
    int elements_per_thread = total_elements / group_size; // 每个线程处理的元素数
    int remainder = total_elements % group_size;           // 余下的元素

    // 每个线程的任务范围
    int start_idx = thread_id * elements_per_thread;
    int end_idx = (thread_id + 1) * elements_per_thread;

    // 处理余下的部分
    if (thread_id < remainder) {
        start_idx += thread_id;
        end_idx = start_idx + elements_per_thread + 1;
    } else {
        start_idx += remainder;
        end_idx = start_idx + elements_per_thread;
    }

    CACHEb_INIT(tmp, DATA_TYPE, &tmp[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEs_INIT(x, DATA_TYPE, x, 0, 15);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 14);
    DATA_TYPE tmp_A, tmp_x, tmp_tmp;
    // 处理分配给当前线程的任务范围
    for (int i = start_idx; i < end_idx; i++) {
        CACHEb_RD(tmp, &tmp[i - start_idx], tmp_tmp);
        tmp_tmp = 0;
        for (int j = 0; j < ny; j++) {
            CACHEs_RD(x, &x[j], tmp_x);
            CACHEs_RD(A, &A[i * ny + j], tmp_A);
            tmp_tmp += tmp_A * tmp_x;
        }
        CACHEb_WT(tmp, &tmp[i - start_idx], tmp_tmp);
    }
    CACHEb_FLUSH(tmp);
    CACHEs_INVALID(A);
    CACHEs_INVALID(x);
}

__global__ void atax_kernel2_cache(int nx, int ny, DATA_TYPE *A, DATA_TYPE *y, DATA_TYPE *tmp)
{
    // 获取当前线程的线程 ID
    int thread_id = get_thread_id();
    // 获取线程的总数
    int group_size = get_group_size();

    // 计算每个线程需要处理的任务范围
    int total_elements = ny;                               // 任务总数（每个线程处理一列的计算）
    int elements_per_thread = total_elements / group_size; // 每个线程处理的元素数
    int remainder = total_elements % group_size;           // 余下的元素

    // 每个线程的任务范围
    int start_idx = thread_id * elements_per_thread;
    int end_idx = (thread_id + 1) * elements_per_thread;

    // 处理余下的部分
    if (thread_id < remainder) {
        start_idx += thread_id;
        end_idx = start_idx + elements_per_thread + 1;
    } else {
        start_idx += remainder;
        end_idx = start_idx + elements_per_thread;
    }

    CACHEb_INIT(y, DATA_TYPE, &y[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEs_INIT(tmp, DATA_TYPE, tmp, 0, 15);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 12);
    DATA_TYPE tmp_A, tmp_tmp, tmp_y;
    for (int j = start_idx; j < end_idx; j++) {
        CACHEb_WT(y, &y[j - start_idx], 0);
    }

    for (int i = 0; i < nx; i++) {
        CACHEs_RD(tmp, &tmp[i], tmp_tmp);
        for (int j = start_idx; j < end_idx; j++) {
            CACHEs_RD(A, &A[i * ny + j], tmp_A);
            CACHEb_RD(y, &y[j - start_idx], tmp_y);
            tmp_y += tmp_A * tmp_tmp;
            CACHEb_WT(y, &y[j - start_idx], tmp_y);
        }
    }
    CACHEb_FLUSH(y);
    CACHEs_INVALID(A);
    CACHEs_INVALID(tmp);
}
#endif