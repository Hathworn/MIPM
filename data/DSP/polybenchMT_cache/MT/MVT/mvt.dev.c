#include "mvt.h"
#include "../../common/cache_strategy/cache_wrapper.h"
#include "../../common/polybench.h"
#include "hthread_device.h"
#include <compiler/m3000.h>

__global__ void mvt_kernel1(int n, DATA_TYPE *a, DATA_TYPE *x1, DATA_TYPE *y_1)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = (tid < remainder) ? tid * (elements_per_thread + 1)
                                      : remainder * (elements_per_thread + 1) + (tid - remainder) * elements_per_thread;
    int end_idx = start_idx + elements_per_thread + (tid < remainder ? 1 : 0);

    for (int i = start_idx; i < end_idx; ++i) {
        for (int j = 0; j < _PB_N; j++) {
            x1[i] += a[i * N + j] * y_1[j];
        }
    }
}

__global__ void mvt_kernel2(int n, DATA_TYPE *a, DATA_TYPE *x2, DATA_TYPE *y_2)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = (tid < remainder) ? tid * (elements_per_thread + 1)
                                      : remainder * (elements_per_thread + 1) + (tid - remainder) * elements_per_thread;
    int end_idx = start_idx + elements_per_thread + (tid < remainder ? 1 : 0);

    for (int j = 0; j < _PB_N; j++) {
        for (int i = start_idx; i < end_idx; ++i) {
            x2[i] += a[j * N + i] * y_2[j];
        }
    }
}

#ifdef MINI_DATASET
__global__ void mvt_kernel1_cache(int n, DATA_TYPE *a, DATA_TYPE *x1, DATA_TYPE *y_1)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = (tid < remainder) ? tid * (elements_per_thread + 1)
                                      : remainder * (elements_per_thread + 1) + (tid - remainder) * elements_per_thread;
    int end_idx = start_idx + elements_per_thread + (tid < remainder ? 1 : 0);
    CACHEb_INIT(x1, DATA_TYPE, &x1[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(y_1, DATA_TYPE, y_1, 0, _PB_N * sizeof(DATA_TYPE));
    CACHEs_INIT(a, DATA_TYPE, a, 0, 15);
    DATA_TYPE tmp_x1_i, tmp_y_1_j, tmp_a_ij;
    for (int i = start_idx; i < end_idx; ++i) {
        CACHEb_RD(x1, &x1[i - start_idx], tmp_x1_i);
        for (int j = 0; j < _PB_N; j++) {
            CACHEb_RD(y_1, &y_1[j], tmp_y_1_j);
            CACHEs_RD(a, &a[i * N + j], tmp_a_ij);
            tmp_x1_i += tmp_a_ij * tmp_y_1_j;
        }
        CACHEb_WT(x1, &x1[i - start_idx], tmp_x1_i);
    }
    CACHEb_FLUSH(x1);
    CACHEb_INVALID(y_1);
    CACHEs_INVALID(a);
}

__global__ void mvt_kernel2_cache(int n, DATA_TYPE *a, DATA_TYPE *x2, DATA_TYPE *y_2)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = (tid < remainder) ? tid * (elements_per_thread + 1)
                                      : remainder * (elements_per_thread + 1) + (tid - remainder) * elements_per_thread;
    int end_idx = start_idx + elements_per_thread + (tid < remainder ? 1 : 0);
    CACHEb_INIT(x2, DATA_TYPE, &x2[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(y_2, DATA_TYPE, y_2, 0, _PB_N * sizeof(DATA_TYPE));
    CACHEs_INIT(a, DATA_TYPE, a, 0, 15);
    DATA_TYPE tmp_x2_i, tmp_y_2_j, tmp_a_ji;
    for (int j = 0; j < _PB_N; j++) {
        CACHEb_RD(y_2, &y_2[j], tmp_y_2_j);
        for (int i = start_idx; i < end_idx; ++i) {
            CACHEb_RD(x2, &x2[i - start_idx], tmp_x2_i);
            CACHEs_RD(a, &a[j * N + i], tmp_a_ji);
            tmp_x2_i += tmp_a_ji * tmp_y_2_j;
            CACHEb_WT(x2, &x2[i - start_idx], tmp_x2_i);
        }
    }
    CACHEb_FLUSH(x2);
    CACHEb_INVALID(y_2);
    CACHEs_INVALID(a);
}
#endif

#ifdef SMALL_DATASET
__global__ void mvt_kernel1_cache(int n, DATA_TYPE *a, DATA_TYPE *x1, DATA_TYPE *y_1)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = (tid < remainder) ? tid * (elements_per_thread + 1)
                                      : remainder * (elements_per_thread + 1) + (tid - remainder) * elements_per_thread;
    int end_idx = start_idx + elements_per_thread + (tid < remainder ? 1 : 0);
    CACHEb_INIT(x1, DATA_TYPE, &x1[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(y_1, DATA_TYPE, y_1, 0, _PB_N * sizeof(DATA_TYPE));
    CACHEs_INIT(a, DATA_TYPE, a, 0, 15);
    DATA_TYPE tmp_x1_i, tmp_y_1_j, tmp_a_ij;
    for (int i = start_idx; i < end_idx; ++i) {
        CACHEb_RD(x1, &x1[i - start_idx], tmp_x1_i);
        for (int j = 0; j < _PB_N; j++) {
            CACHEb_RD(y_1, &y_1[j], tmp_y_1_j);
            CACHEs_RD(a, &a[i * N + j], tmp_a_ij);
            tmp_x1_i += tmp_a_ij * tmp_y_1_j;
        }
        CACHEb_WT(x1, &x1[i - start_idx], tmp_x1_i);
    }
    CACHEb_FLUSH(x1);
    CACHEb_INVALID(y_1);
    CACHEs_INVALID(a);
}

__global__ void mvt_kernel2_cache(int n, DATA_TYPE *a, DATA_TYPE *x2, DATA_TYPE *y_2)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = (tid < remainder) ? tid * (elements_per_thread + 1)
                                      : remainder * (elements_per_thread + 1) + (tid - remainder) * elements_per_thread;
    int end_idx = start_idx + elements_per_thread + (tid < remainder ? 1 : 0);
    CACHEb_INIT(x2, DATA_TYPE, &x2[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(y_2, DATA_TYPE, y_2, 0, _PB_N * sizeof(DATA_TYPE));
    CACHEs_INIT(a, DATA_TYPE, a, 0, 15);
    DATA_TYPE tmp_x2_i, tmp_y_2_j, tmp_a_ji;
    for (int j = 0; j < _PB_N; j++) {
        CACHEb_RD(y_2, &y_2[j], tmp_y_2_j);
        for (int i = start_idx; i < end_idx; ++i) {
            CACHEb_RD(x2, &x2[i - start_idx], tmp_x2_i);
            CACHEs_RD(a, &a[j * N + i], tmp_a_ji);
            tmp_x2_i += tmp_a_ji * tmp_y_2_j;
            CACHEb_WT(x2, &x2[i - start_idx], tmp_x2_i);
        }
    }
    CACHEb_FLUSH(x2);
    CACHEb_INVALID(y_2);
    CACHEs_INVALID(a);
}
#endif

#ifdef STANDARD_DATASET /* Default if unspecified. */
__global__ void mvt_kernel1_cache(int n, DATA_TYPE *a, DATA_TYPE *x1, DATA_TYPE *y_1)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = (tid < remainder) ? tid * (elements_per_thread + 1)
                                      : remainder * (elements_per_thread + 1) + (tid - remainder) * elements_per_thread;
    int end_idx = start_idx + elements_per_thread + (tid < remainder ? 1 : 0);
    CACHEb_INIT(x1, DATA_TYPE, &x1[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(y_1, DATA_TYPE, y_1, 0, _PB_N * sizeof(DATA_TYPE));
    CACHEs_INIT(a, DATA_TYPE, a, 0, 15);
    DATA_TYPE tmp_x1_i, tmp_y_1_j, tmp_a_ij;
    for (int i = start_idx; i < end_idx; ++i) {
        CACHEb_RD(x1, &x1[i - start_idx], tmp_x1_i);
        for (int j = 0; j < _PB_N; j++) {
            CACHEb_RD(y_1, &y_1[j], tmp_y_1_j);
            CACHEs_RD(a, &a[i * N + j], tmp_a_ij);
            tmp_x1_i += tmp_a_ij * tmp_y_1_j;
        }
        CACHEb_WT(x1, &x1[i - start_idx], tmp_x1_i);
    }
    CACHEb_FLUSH(x1);
    CACHEb_INVALID(y_1);
    CACHEs_INVALID(a);
}

__global__ void mvt_kernel2_cache(int n, DATA_TYPE *a, DATA_TYPE *x2, DATA_TYPE *y_2)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = (tid < remainder) ? tid * (elements_per_thread + 1)
                                      : remainder * (elements_per_thread + 1) + (tid - remainder) * elements_per_thread;
    int end_idx = start_idx + elements_per_thread + (tid < remainder ? 1 : 0);
    CACHEb_INIT(x2, DATA_TYPE, &x2[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(y_2, DATA_TYPE, y_2, 0, _PB_N * sizeof(DATA_TYPE));
    CACHEs_INIT(a, DATA_TYPE, a, 0, 15);
    DATA_TYPE tmp_x2_i, tmp_y_2_j, tmp_a_ji;
    for (int j = 0; j < _PB_N; j++) {
        CACHEb_RD(y_2, &y_2[j], tmp_y_2_j);
        for (int i = start_idx; i < end_idx; ++i) {
            CACHEb_RD(x2, &x2[i - start_idx], tmp_x2_i);
            CACHEs_RD(a, &a[j * N + i], tmp_a_ji);
            tmp_x2_i += tmp_a_ji * tmp_y_2_j;
            CACHEb_WT(x2, &x2[i - start_idx], tmp_x2_i);
        }
    }
    CACHEb_FLUSH(x2);
    CACHEb_INVALID(y_2);
    CACHEs_INVALID(a);
}
#endif

#ifdef LARGE_DATASET
__global__ void mvt_kernel1_cache(int n, DATA_TYPE *a, DATA_TYPE *x1, DATA_TYPE *y_1)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = (tid < remainder) ? tid * (elements_per_thread + 1)
                                      : remainder * (elements_per_thread + 1) + (tid - remainder) * elements_per_thread;
    int end_idx = start_idx + elements_per_thread + (tid < remainder ? 1 : 0);
    CACHEb_INIT(x1, DATA_TYPE, &x1[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(y_1, DATA_TYPE, y_1, 0, _PB_N * sizeof(DATA_TYPE));
    CACHEs_INIT(a, DATA_TYPE, a, 0, 14);
    DATA_TYPE tmp_x1_i, tmp_y_1_j, tmp_a_ij;
    for (int i = start_idx; i < end_idx; ++i) {
        CACHEb_RD(x1, &x1[i - start_idx], tmp_x1_i);
        for (int j = 0; j < _PB_N; j++) {
            CACHEb_RD(y_1, &y_1[j], tmp_y_1_j);
            CACHEs_RD(a, &a[i * N + j], tmp_a_ij);
            tmp_x1_i += tmp_a_ij * tmp_y_1_j;
        }
        CACHEb_WT(x1, &x1[i - start_idx], tmp_x1_i);
    }
    CACHEb_FLUSH(x1);
    CACHEb_INVALID(y_1);
    CACHEs_INVALID(a);
}

__global__ void mvt_kernel2_cache(int n, DATA_TYPE *a, DATA_TYPE *x2, DATA_TYPE *y_2)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = (tid < remainder) ? tid * (elements_per_thread + 1)
                                      : remainder * (elements_per_thread + 1) + (tid - remainder) * elements_per_thread;
    int end_idx = start_idx + elements_per_thread + (tid < remainder ? 1 : 0);
    CACHEb_INIT(x2, DATA_TYPE, &x2[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(y_2, DATA_TYPE, y_2, 0, _PB_N * sizeof(DATA_TYPE));
    CACHEs_INIT(a, DATA_TYPE, a, 0, 14);
    DATA_TYPE tmp_x2_i, tmp_y_2_j, tmp_a_ji;
    for (int j = 0; j < _PB_N; j++) {
        CACHEb_RD(y_2, &y_2[j], tmp_y_2_j);
        for (int i = start_idx; i < end_idx; ++i) {
            CACHEb_RD(x2, &x2[i - start_idx], tmp_x2_i);
            CACHEs_RD(a, &a[j * N + i], tmp_a_ji);
            tmp_x2_i += tmp_a_ji * tmp_y_2_j;
            CACHEb_WT(x2, &x2[i - start_idx], tmp_x2_i);
        }
    }
    CACHEb_FLUSH(x2);
    CACHEb_INVALID(y_2);
    CACHEs_INVALID(a);
}
#endif

#ifdef EXTRALARGE_DATASET
__global__ void mvt_kernel1_cache(int n, DATA_TYPE *a, DATA_TYPE *x1, DATA_TYPE *y_1)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = (tid < remainder) ? tid * (elements_per_thread + 1)
                                      : remainder * (elements_per_thread + 1) + (tid - remainder) * elements_per_thread;
    int end_idx = start_idx + elements_per_thread + (tid < remainder ? 1 : 0);
    CACHEs_INIT(x1, DATA_TYPE, x1, 0, 8);
    CACHEs_INIT(y_1, DATA_TYPE, y_1, 0, 15);
    CACHEs_INIT(a, DATA_TYPE, a, 0, 6);
    DATA_TYPE tmp_x1_i, tmp_y_1_j, tmp_a_ij;
    for (int i = start_idx; i < end_idx; ++i) {
        CACHEs_RD(x1, &x1[i], tmp_x1_i);
        for (int j = 0; j < _PB_N; j++) {
            CACHEs_RD(y_1, &y_1[j], tmp_y_1_j);
            CACHEs_RD(a, &a[i * N + j], tmp_a_ij);
            tmp_x1_i += tmp_a_ij * tmp_y_1_j;
        }
        CACHEs_WT(x1, &x1[i], tmp_x1_i);
    }
    CACHEs_FLUSH(x1);
    CACHEs_INVALID(y_1);
    CACHEs_INVALID(a);
}

__global__ void mvt_kernel2_cache(int n, DATA_TYPE *a, DATA_TYPE *x2, DATA_TYPE *y_2)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = (tid < remainder) ? tid * (elements_per_thread + 1)
                                      : remainder * (elements_per_thread + 1) + (tid - remainder) * elements_per_thread;
    int end_idx = start_idx + elements_per_thread + (tid < remainder ? 1 : 0);
    CACHEb_INIT(x2, DATA_TYPE, &x2[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEs_INIT(y_2, DATA_TYPE, y_2, 0, 15);
    CACHEs_INIT(a, DATA_TYPE, a, 0, 12);
    DATA_TYPE tmp_x2_i, tmp_y_2_j, tmp_a_ji;
    for (int j = 0; j < _PB_N; j++) {
        CACHEs_RD(y_2, &y_2[j], tmp_y_2_j);
        for (int i = start_idx; i < end_idx; ++i) {
            CACHEb_RD(x2, &x2[i - start_idx], tmp_x2_i);
            CACHEs_RD(a, &a[j * N + i], tmp_a_ji);
            tmp_x2_i += tmp_a_ji * tmp_y_2_j;
            CACHEb_WT(x2, &x2[i - start_idx], tmp_x2_i);
        }
    }
    CACHEb_FLUSH(x2);
    CACHEs_INVALID(y_2);
    CACHEs_INVALID(a);
}
#endif