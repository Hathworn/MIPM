#include "lu.h"
#include "../../common/cache_strategy/cache_wrapper.h"
#include "../../common/polybench.h"
#include "hthread_device.h"
#include <compiler/m3000.h>

__global__ void lu_kernel1(int n, int k, DATA_TYPE *A)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N - k - 1;
    if (total_elements <= 0) {
        return;
    }
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = (tid < remainder)
                        ? tid * (elements_per_thread + 1) + k + 1
                        : remainder * (elements_per_thread + 1) + (tid - remainder) * elements_per_thread + k + 1;
    int end_idx = start_idx + elements_per_thread + (tid < remainder ? 1 : 0);
    if (start_idx >= end_idx) {
        return;
    }
    DATA_TYPE tmp = A[k * N + k];
    for (int j = start_idx; j < end_idx; ++j) {
        A[k * N + j] = A[k * N + j] / tmp;
    }
}

__global__ void lu_kernel2(int n, int k, DATA_TYPE *A)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = (_PB_N - k - 1);
    if (total_elements <= 0) {
        return;
    }
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = (tid < remainder)
                        ? tid * (elements_per_thread + 1) + k + 1
                        : remainder * (elements_per_thread + 1) + (tid - remainder) * elements_per_thread + k + 1;
    int end_idx = start_idx + elements_per_thread + (tid < remainder ? 1 : 0);
    if (start_idx >= end_idx) {
        return;
    }

    for (int i = k + 1; i < _PB_N; ++i) {
        for (int j = start_idx; j < end_idx; ++j) {
            A[i * N + j] = A[i * N + j] - A[i * N + k] * A[k * N + j];
        }
    }
}

__global__ void lu_kernel1_cache(int n, int k, DATA_TYPE *A)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N - k - 1;
    if (total_elements <= 0) {
        return;
    }
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = (tid < remainder)
                        ? tid * (elements_per_thread + 1) + k + 1
                        : remainder * (elements_per_thread + 1) + (tid - remainder) * elements_per_thread + k + 1;
    int end_idx = start_idx + elements_per_thread + (tid < remainder ? 1 : 0);
    if (start_idx >= end_idx) {
        return;
    }
    DATA_TYPE tmp = A[k * N + k];
    CACHEb_INIT(A, DATA_TYPE, &A[k * N + start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_a;
    for (int j = start_idx; j < end_idx; ++j) {
        CACHEb_RD(A, &A[j - start_idx], tmp_a);
        tmp_a = tmp_a / tmp;
        CACHEb_WT(A, &A[j - start_idx], tmp_a);
    }
    CACHEb_FLUSH(A);
}

__global__ void lu_kernel2_cache(int n, int k, DATA_TYPE *A)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = (_PB_N - k - 1);
    // if (total_elements <= 0) {
    //     return;
    // }
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = (tid < remainder)
                        ? tid * (elements_per_thread + 1) + k + 1
                        : remainder * (elements_per_thread + 1) + (tid - remainder) * elements_per_thread + k + 1;
    int end_idx = start_idx + elements_per_thread + (tid < remainder ? 1 : 0);
    // if (start_idx >= end_idx) {
    //     return;
    // }
    CACHEd_INIT(A, DATA_TYPE, A, 7, 8);
    DATA_TYPE tmp_a_ik, tmp_a_kj, tmp_a_ij;
    for (int i = k + 1; i < _PB_N; ++i) {
        CACHEd_RD(A, &A[i * N + k], tmp_a_ik);
        for (int j = start_idx; j < end_idx; ++j) {
            CACHEd_RD(A, &A[k * N + j], tmp_a_kj);
            // CACHEd_RD(A, &A[i * N + j], tmp_a_ij);
            A[i * N + j] = A[i * N + j] - tmp_a_ik * tmp_a_kj;
            // CACHEd_WT(A, &A[i * N + j], tmp_a_ij);
        }
    }
    // CACHEd_FLUSH(A);
    CACHEd_INVALID(A);
}