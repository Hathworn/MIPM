#include "jacobi1D.h"
#include "../../common/cache_strategy/cache_wrapper.h"
#include "../../common/polybench.h"
#include "hthread_device.h"
#include <compiler/m3000.h>

__global__ void runJacobiDSP_kernel1(int n, DATA_TYPE *A, DATA_TYPE *B)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();

    // 计算每个线程需要处理的元素数量
    int elements_per_thread = (_PB_N - 2) / total_threads;
    int remainder = (_PB_N - 2) % total_threads;

    int start_idx = 1;
    if (thread_id < remainder) {
        start_idx += thread_id * (elements_per_thread + 1);
    } else {
        start_idx += remainder * (elements_per_thread + 1) + (thread_id - remainder) * elements_per_thread;
    }

    // 计算结束索引
    int end_idx;
    if (thread_id < remainder) {
        end_idx = start_idx + elements_per_thread;
    } else {
        end_idx = start_idx + elements_per_thread - 1;
    }

    // 确保不超过数组边界
    end_idx = (end_idx < (_PB_N - 1)) ? end_idx : (_PB_N - 1);

    // 执行计算
    for (int i = start_idx; i <= end_idx; i++) {
        B[i] = 0.3333333f * (A[i - 1] + A[i] + A[i + 1]);
    }
    return;
}

__global__ void runJacobiDSP_kernel2(int n, DATA_TYPE *A, DATA_TYPE *B)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();

    // 计算每个线程需要处理的元素数量
    int elements_per_thread = (_PB_N - 2) / total_threads;
    int remainder = (_PB_N - 2) % total_threads;

    int start_idx = 1;
    if (thread_id < remainder) {
        start_idx += thread_id * (elements_per_thread + 1);
    } else {
        start_idx += remainder * (elements_per_thread + 1) + (thread_id - remainder) * elements_per_thread;
    }

    // 计算结束索引
    int end_idx = (thread_id < remainder) ? start_idx + elements_per_thread : start_idx + elements_per_thread - 1;

    // 确保不超过数组边界
    end_idx = (end_idx < (_PB_N - 1)) ? end_idx : (_PB_N - 1);

    // 执行计算
    for (int i = start_idx; i <= end_idx; i++) {
        A[i] = B[i];
    }

    return;
}

__global__ void runJacobiDSP_kernel1_cache(int n, DATA_TYPE *A, DATA_TYPE *B)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();

    // 计算每个线程需要处理的元素数量
    int elements_per_thread = (_PB_N - 2) / total_threads;
    int remainder = (_PB_N - 2) % total_threads;

    int start_idx = 1;
    if (thread_id < remainder) {
        start_idx += thread_id * (elements_per_thread + 1);
    } else {
        start_idx += remainder * (elements_per_thread + 1) + (thread_id - remainder) * elements_per_thread;
    }

    // 计算结束索引
    int end_idx;
    if (thread_id < remainder) {
        end_idx = start_idx + elements_per_thread;
    } else {
        end_idx = start_idx + elements_per_thread - 1;
    }

    // 确保不超过数组边界
    end_idx = (end_idx < (_PB_N - 1)) ? end_idx : (_PB_N - 1);

    // CACHEb_INIT(A, DATA_TYPE, &A[start_idx - 1], 0, 692);
    // CACHEb_INIT(B, DATA_TYPE, &B[start_idx], 0, 684);
    CACHEb_INIT(A, DATA_TYPE, &A[start_idx - 1], 0, (end_idx - start_idx + 3) * sizeof(DATA_TYPE));
    CACHEb_INIT(B, DATA_TYPE, &B[start_idx], 0, (end_idx - start_idx + 1) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_A1, tmp_A2, tmp_A3, tmp_B;
    for (int i = start_idx; i <= end_idx; i++) {
        CACHEb_RD(A, &A[i - start_idx], tmp_A1);
        CACHEb_RD(A, &A[i - start_idx + 1], tmp_A2);
        CACHEb_RD(A, &A[i - start_idx + 2], tmp_A3);
        tmp_B = 0.3333333f * (tmp_A1 + tmp_A2 + tmp_A3);
        CACHEb_WT(B, &B[i - start_idx], tmp_B);
    }
    CACHEb_INVALID(A);
    CACHEb_FLUSH(B);
    return;
}

__global__ void runJacobiDSP_kernel2_cache(int n, DATA_TYPE *A, DATA_TYPE *B)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();

    // 计算每个线程需要处理的元素数量
    int elements_per_thread = (_PB_N - 2) / total_threads;
    int remainder = (_PB_N - 2) % total_threads;

    int start_idx = 1;
    if (thread_id < remainder) {
        start_idx += thread_id * (elements_per_thread + 1);
    } else {
        start_idx += remainder * (elements_per_thread + 1) + (thread_id - remainder) * elements_per_thread;
    }

    // 计算结束索引
    int end_idx = (thread_id < remainder) ? start_idx + elements_per_thread : start_idx + elements_per_thread - 1;

    // 确保不超过数组边界
    end_idx = (end_idx < (_PB_N - 1)) ? end_idx : (_PB_N - 1);

    CACHEb_INIT(A, DATA_TYPE, &A[start_idx], 0, (end_idx - start_idx + 1) * sizeof(DATA_TYPE));
    CACHEb_INIT(B, DATA_TYPE, &B[start_idx], 0, (end_idx - start_idx + 1) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_A, tmp_B;
    for (int i = start_idx; i <= end_idx; i++) {
        CACHEb_RD(B, &B[i - start_idx], tmp_B);
        tmp_A = tmp_B;
        CACHEb_WT(A, &A[i - start_idx], tmp_A);
    }
    CACHEb_INVALID(B);
    CACHEb_FLUSH(A);
    return;
}
