#include "syr2k.h"
#include "../../common/cache_strategy/cache_wrapper.h"
#include "../../common/polybench.h"
#include "hthread_device.h"
#include <compiler/m3000.h>

static inline int min(int a, int b) { return a > b ? b : a; }

__global__ void syr2k_kernel(int ni, int nj, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *b, DATA_TYPE *c)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    int work_per_thread = (ni * ni + num_threads - 1) / num_threads;
    int start_idx = thread_id * work_per_thread;
    int end_idx = min(start_idx + work_per_thread, ni * ni);

    for (int idx = start_idx; idx < end_idx; ++idx) {
        int i = idx / ni;
        int j = idx % ni;

        c[idx] *= beta;
        for (int k = 0; k < nj; k++) {
            c[idx] += alpha * a[i * nj + k] * b[j * nj + k] + alpha * b[i * nj + k] * a[j * nj + k];
        }
    }
}

#ifdef MINI_DATASET
__global__ void syr2k_kernel_cache(int ni, int nj, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *b,
                                   DATA_TYPE *c)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    int work_per_thread = (ni * ni + num_threads - 1) / num_threads;
    int start_idx = thread_id * work_per_thread;
    int end_idx = min(start_idx + work_per_thread, ni * ni);
    CACHEb_INIT(c, DATA_TYPE, &c[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEd_INIT(a, DATA_TYPE, a, 9, 5);
    CACHEd_INIT(b, DATA_TYPE, b, 9, 5);
    DATA_TYPE tmp_c, tmp_a_ik, tmp_b_jk, tmp_b_ik, tmp_a_jk;
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int i = idx / ni;
        int j = idx % ni;
        CACHEb_RD(c, &c[idx - start_idx], tmp_c);
        tmp_c *= beta;
        for (int k = 0; k < nj; k++) {
            CACHEd_RD(a, &a[i * nj + k], tmp_a_ik);
            CACHEd_RD(b, &b[j * nj + k], tmp_b_jk);
            CACHEd_RD(b, &b[i * nj + k], tmp_b_ik);
            CACHEd_RD(a, &a[j * nj + k], tmp_a_jk);
            tmp_c += alpha * tmp_a_ik * tmp_b_jk + alpha * tmp_b_ik * tmp_a_jk;
        }
        CACHEb_WT(c, &c[idx - start_idx], tmp_c);
    }
    CACHEb_FLUSH(c);
    CACHEd_INVALID(a);
    CACHEd_INVALID(b);
}
#endif

#ifdef SMALL_DATASET
__global__ void syr2k_kernel_cache(int ni, int nj, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *b,
                                   DATA_TYPE *c)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    int work_per_thread = (ni * ni + num_threads - 1) / num_threads;
    int start_idx = thread_id * work_per_thread;
    int end_idx = min(start_idx + work_per_thread, ni * ni);
    CACHEs_INIT(c, DATA_TYPE, c, 0, 13);
    CACHEd_INIT(a, DATA_TYPE, a, 8, 6);
    CACHEd_INIT(b, DATA_TYPE, b, 8, 6);
    DATA_TYPE tmp_c, tmp_a_ik, tmp_b_jk, tmp_b_ik, tmp_a_jk;
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int i = idx / ni;
        int j = idx % ni;
        CACHEs_RD(c, &c[idx], tmp_c);
        tmp_c *= beta;
        for (int k = 0; k < nj; k++) {
            CACHEd_RD(a, &a[i * nj + k], tmp_a_ik);
            CACHEd_RD(b, &b[j * nj + k], tmp_b_jk);
            CACHEd_RD(b, &b[i * nj + k], tmp_b_ik);
            CACHEd_RD(a, &a[j * nj + k], tmp_a_jk);
            tmp_c += alpha * tmp_a_ik * tmp_b_jk + alpha * tmp_b_ik * tmp_a_jk;
        }
        CACHEs_WT(c, &c[idx], tmp_c);
    }
    CACHEs_FLUSH(c);
    CACHEd_INVALID(a);
    CACHEd_INVALID(b);
}
#endif

#ifdef STANDARD_DATASET /* Default if unspecified. */
__global__ void syr2k_kernel_cache(int ni, int nj, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *b,
                                   DATA_TYPE *c)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    int work_per_thread = (ni * ni + num_threads - 1) / num_threads;
    int start_idx = thread_id * work_per_thread;
    int end_idx = min(start_idx + work_per_thread, ni * ni);
    CACHEs_INIT(c, DATA_TYPE, c, 0, 12);
    CACHEd_INIT(a, DATA_TYPE, a, 7, 7);
    CACHEd_INIT(b, DATA_TYPE, b, 7, 7);
    DATA_TYPE tmp_c, tmp_a_ik, tmp_b_jk, tmp_b_ik, tmp_a_jk;
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int i = idx / ni;
        int j = idx % ni;
        CACHEs_RD(c, &c[idx], tmp_c);
        tmp_c *= beta;
        for (int k = 0; k < nj; k++) {
            CACHEd_RD(a, &a[i * nj + k], tmp_a_ik);
            CACHEd_RD(b, &b[j * nj + k], tmp_b_jk);
            CACHEd_RD(b, &b[i * nj + k], tmp_b_ik);
            CACHEd_RD(a, &a[j * nj + k], tmp_a_jk);
            tmp_c += alpha * tmp_a_ik * tmp_b_jk + alpha * tmp_b_ik * tmp_a_jk;
        }
        CACHEs_WT(c, &c[idx], tmp_c);
    }
    CACHEs_FLUSH(c);
    CACHEd_INVALID(a);
    CACHEd_INVALID(b);
}
#endif

#ifdef LARGE_DATASET
__global__ void syr2k_kernel_cache(int ni, int nj, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *b,
                                   DATA_TYPE *c)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    int work_per_thread = (ni * ni + num_threads - 1) / num_threads;
    int start_idx = thread_id * work_per_thread;
    int end_idx = min(start_idx + work_per_thread, ni * ni);
    CACHEs_INIT(c, DATA_TYPE, c, 0, 11);
    CACHEd_INIT(a, DATA_TYPE, a, 7, 7);
    CACHEd_INIT(b, DATA_TYPE, b, 7, 7);
    DATA_TYPE tmp_c, tmp_a_ik, tmp_b_jk, tmp_b_ik, tmp_a_jk;
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int i = idx / ni;
        int j = idx % ni;
        CACHEs_RD(c, &c[idx], tmp_c);
        tmp_c *= beta;
        for (int k = 0; k < nj; k++) {
            CACHEd_RD(a, &a[i * nj + k], tmp_a_ik);
            CACHEd_RD(b, &b[i * nj + k], tmp_b_ik);
            CACHEd_RD(b, &b[j * nj + k], tmp_b_jk);
            CACHEd_RD(a, &a[j * nj + k], tmp_a_jk);
            tmp_c += alpha * tmp_a_ik * tmp_b_jk + alpha * tmp_b_ik * tmp_a_jk;
        }
        CACHEs_WT(c, &c[idx], tmp_c);
    }
    CACHEs_FLUSH(c);
    CACHEd_INVALID(a);
    CACHEd_INVALID(b);
}
#endif

#ifdef EXTRALARGE_DATASET
__global__ void syr2k_kernel_cache(int ni, int nj, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *b,
                                   DATA_TYPE *c)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    int work_per_thread = (ni * ni + num_threads - 1) / num_threads;
    int start_idx = thread_id * work_per_thread;
    int end_idx = min(start_idx + work_per_thread, ni * ni);
    CACHEs_INIT(c, DATA_TYPE, c, 0, 10);
    CACHEd_INIT(a, DATA_TYPE, a, 5, 9);
    CACHEd_INIT(b, DATA_TYPE, b, 5, 9);
    DATA_TYPE tmp_c, tmp_a_ik, tmp_b_jk, tmp_b_ik, tmp_a_jk;
    for (int idx = start_idx; idx < end_idx; ++idx) {
        int i = idx / ni;
        int j = idx % ni;
        CACHEs_RD(c, &c[idx], tmp_c);
        tmp_c *= beta;
        for (int k = 0; k < nj; k++) {
            CACHEd_RD(a, &a[i * nj + k], tmp_a_ik);
            CACHEd_RD(b, &b[i * nj + k], tmp_b_ik);
            CACHEd_RD(b, &b[j * nj + k], tmp_b_jk);
            CACHEd_RD(a, &a[j * nj + k], tmp_a_jk);
            tmp_c += alpha * tmp_a_ik * tmp_b_jk + alpha * tmp_b_ik * tmp_a_jk;
        }
        CACHEs_WT(c, &c[idx], tmp_c);
    }
    CACHEs_FLUSH(c);
    CACHEd_INVALID(a);
    CACHEd_INVALID(b);
}
#endif