#include "syrk.h"
#include "../../common/cache_strategy/cache_wrapper.h"
#include "../../common/polybench.h"
#include "hthread_device.h"
#include <compiler/m3000.h>

__global__ void syrk_kernel(int ni, int nj, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *c)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_NI;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx, end_idx;
    if (tid < remainder) {
        start_idx = tid * (elements_per_thread + 1);
        end_idx = start_idx + (elements_per_thread + 1);
    } else {
        start_idx = remainder * (elements_per_thread + 1) + (tid - remainder) * elements_per_thread;
        end_idx = start_idx + elements_per_thread;
    }

    for (int i = start_idx; i < end_idx; ++i) {
        for (int j = 0; j < _PB_NI; ++j) {
            c[i * NI + j] = c[i * NI + j] * beta;
            for (int k = 0; k < _PB_NJ; k++) {
                c[i * NI + j] += alpha * a[i * NJ + k] * a[j * NJ + k];
            }
        }
    }
}

#ifdef MINI_DATASET
__global__ void syrk_kernel_cache(int ni, int nj, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *c)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_NI;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx, end_idx;
    if (tid < remainder) {
        start_idx = tid * (elements_per_thread + 1);
        end_idx = start_idx + (elements_per_thread + 1);
    } else {
        start_idx = remainder * (elements_per_thread + 1) + (tid - remainder) * elements_per_thread;
        end_idx = start_idx + elements_per_thread;
    }
    CACHEs_INIT(c, DATA_TYPE, c, 0, 13);
    CACHEd_INIT(a, DATA_TYPE, a, 9, 6);
    DATA_TYPE tmp_c, tmp_a1, tmp_a2;
    for (int i = start_idx; i < end_idx; ++i) {
        for (int j = 0; j < _PB_NI; ++j) {
            CACHEs_RD(c, &c[i * NJ + j], tmp_c);
            tmp_c = tmp_c * beta;
            for (int k = 0; k < _PB_NJ; k++) {
                CACHEd_RD(a, &a[i * NJ + k], tmp_a1);
                CACHEd_RD(a, &a[j * NJ + k], tmp_a2);
                tmp_c += alpha * tmp_a1 * tmp_a2;
            }
            CACHEs_WT(c, &c[i * NJ + j], tmp_c);
        }
    }
    CACHEs_FLUSH(c);
    CACHEd_INVALID(a);
}
#endif

#ifdef SMALL_DATASET
__global__ void syrk_kernel_cache(int ni, int nj, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *c)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_NI;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx, end_idx;
    if (tid < remainder) {
        start_idx = tid * (elements_per_thread + 1);
        end_idx = start_idx + (elements_per_thread + 1);
    } else {
        start_idx = remainder * (elements_per_thread + 1) + (tid - remainder) * elements_per_thread;
        end_idx = start_idx + elements_per_thread;
    }
    CACHEs_INIT(c, DATA_TYPE, c, 0, 13);
    CACHEd_INIT(a, DATA_TYPE, a, 8, 7);
    DATA_TYPE tmp_c, tmp_a1, tmp_a2;
    for (int i = start_idx; i < end_idx; ++i) {
        for (int j = 0; j < _PB_NI; ++j) {
            CACHEs_RD(c, &c[i * NJ + j], tmp_c);
            tmp_c = tmp_c * beta;
            for (int k = 0; k < _PB_NJ; k++) {
                CACHEd_RD(a, &a[i * NJ + k], tmp_a1);
                CACHEd_RD(a, &a[j * NJ + k], tmp_a2);
                tmp_c += alpha * tmp_a1 * tmp_a2;
            }
            CACHEs_WT(c, &c[i * NJ + j], tmp_c);
        }
    }
    CACHEd_INVALID(a);
    CACHEs_FLUSH(c);
}
#endif

#ifdef STANDARD_DATASET /* Default if unspecified. */
__global__ void syrk_kernel_cache(int ni, int nj, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *c)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_NI;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx, end_idx;
    if (tid < remainder) {
        start_idx = tid * (elements_per_thread + 1);
        end_idx = start_idx + (elements_per_thread + 1);
    } else {
        start_idx = remainder * (elements_per_thread + 1) + (tid - remainder) * elements_per_thread;
        end_idx = start_idx + elements_per_thread;
    }
    CACHEs_INIT(c, DATA_TYPE, c, 0, 12);
    CACHEd_INIT(a, DATA_TYPE, a, 7, 8);
    DATA_TYPE tmp_c, tmp_a1, tmp_a2;
    for (int i = start_idx; i < end_idx; ++i) {
        for (int j = 0; j < _PB_NI; ++j) {
            CACHEs_RD(c, &c[i * NJ + j], tmp_c);
            tmp_c = tmp_c * beta;
            for (int k = 0; k < _PB_NJ; k++) {
                CACHEd_RD(a, &a[i * NJ + k], tmp_a1);
                CACHEd_RD(a, &a[j * NJ + k], tmp_a2);
                tmp_c += alpha * tmp_a1 * tmp_a2;
            }
            CACHEs_WT(c, &c[i * NJ + j], tmp_c);
        }
    }
    CACHEd_INVALID(a);
    CACHEs_FLUSH(c);
}
#endif

#ifdef LARGE_DATASET
__global__ void syrk_kernel_cache(int ni, int nj, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *c)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_NI;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx, end_idx;
    if (tid < remainder) {
        start_idx = tid * (elements_per_thread + 1);
        end_idx = start_idx + (elements_per_thread + 1);
    } else {
        start_idx = remainder * (elements_per_thread + 1) + (tid - remainder) * elements_per_thread;
        end_idx = start_idx + elements_per_thread;
    }
    CACHEs_INIT(c, DATA_TYPE, c, 0, 11);
    CACHEd_INIT(a, DATA_TYPE, a, 6, 9);
    DATA_TYPE tmp_c, tmp_a1, tmp_a2;
    for (int i = start_idx; i < end_idx; ++i) {
        for (int j = 0; j < _PB_NI; ++j) {
            CACHEs_RD(c, &c[i * NJ + j], tmp_c);
            tmp_c = tmp_c * beta;
            for (int k = 0; k < _PB_NJ; k++) {
                CACHEd_RD(a, &a[i * NJ + k], tmp_a1);
                CACHEd_RD(a, &a[j * NJ + k], tmp_a2);
                tmp_c += alpha * tmp_a1 * tmp_a2;
            }
            CACHEs_WT(c, &c[i * NJ + j], tmp_c);
        }
    }
    CACHEd_INVALID(a);
    CACHEs_FLUSH(c);
}
#endif

#ifdef EXTRALARGE_DATASET
__global__ void syrk_kernel_cache(int ni, int nj, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *c)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_NI;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx, end_idx;
    if (tid < remainder) {
        start_idx = tid * (elements_per_thread + 1);
        end_idx = start_idx + (elements_per_thread + 1);
    } else {
        start_idx = remainder * (elements_per_thread + 1) + (tid - remainder) * elements_per_thread;
        end_idx = start_idx + elements_per_thread;
    }
    CACHEs_INIT(c, DATA_TYPE, c, 0, 10);
    CACHEd_INIT(a, DATA_TYPE, a, 6, 9);
    DATA_TYPE tmp_c, tmp_a1, tmp_a2;
    for (int i = start_idx; i < end_idx; ++i) {
        for (int j = 0; j < _PB_NI; ++j) {
            CACHEs_RD(c, &c[i * NJ + j], tmp_c);
            tmp_c = tmp_c * beta;
            for (int k = 0; k < _PB_NJ; k++) {
                CACHEd_RD(a, &a[i * NJ + k], tmp_a1);
                CACHEd_RD(a, &a[j * NJ + k], tmp_a2);
                tmp_c += alpha * tmp_a1 * tmp_a2;
            }
            CACHEs_WT(c, &c[i * NJ + j], tmp_c);
        }
    }
    CACHEd_INVALID(a);
    CACHEs_FLUSH(c);
}
#endif