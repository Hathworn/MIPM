#include "gemm.h"
#include "../../common/cache_strategy/cache_wrapper.h"
#include "hthread_device.h"
#include <compiler/m3000.h>

__global__ void gemm_kernel(int ni, int nj, int nk, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *b,
                            DATA_TYPE *c)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = ni * nj;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    int start = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end = start + elements_per_thread + (thread_id < remainder ? 1 : 0);

    for (int idx = start; idx < end; ++idx) {
        c[idx] *= beta;
    }

    for (int k = 0; k < nk; ++k) {
        for (int idx = start; idx < end; ++idx) {
            int i = idx / nj;
            int j = idx % nj;
            c[idx] += alpha * a[i * nk + k] * b[k * nj + j];
        }
    }
}

// __global__ void gemm_kernel_cache(int ni, int nj, int nk, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *b,
//                                   DATA_TYPE *c)
// {
//     int thread_id = get_thread_id();
//     int group_size = get_group_size();

//     int total_elements = ni * nj;
//     int elements_per_thread = total_elements / group_size;
//     int remainder = total_elements % group_size;

//     int start = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
//     int end = start + elements_per_thread + (thread_id < remainder ? 1 : 0);
//     int size = (end / nj) * nk + nk - 1 - (start / nj) * nk;
//     CACHEs_INIT(b, DATA_TYPE, b, 0, 13);
//     CACHEs_INIT(c, DATA_TYPE, c, 0, 14);
//     CACHEs_INIT(a, DATA_TYPE, a, 0, 15);
//     DATA_TYPE tmp_c, tmp_a, tmp_b;
//     for (int idx = start; idx < end; ++idx) {
//         CACHEs_RD(c, &c[idx], tmp_c);
//         tmp_c *= beta;
//         CACHEs_WT(c, &c[idx], tmp_c);
//     }

//     for (int k = 0; k < nk; ++k) {
//         for (int idx = start; idx < end; ++idx) {
//             int i = idx / nj;
//             int j = idx % nj;
//             CACHEs_RD(c, &c[idx], tmp_c);
//             CACHEs_RD(a, &a[i * nk + k], tmp_a);
//             CACHEs_RD(b, &b[k * nj + j], tmp_b);
//             tmp_c += alpha * tmp_a * tmp_b;
//             CACHEs_WT(c, &c[idx], tmp_c);
//         }
//     }
//     CACHEs_FLUSH(c);
//     CACHEs_INVALID(a);
//     CACHEs_INVALID(b);
// }

#ifdef MINI_DATASET
__global__ void gemm_kernel_cache(int ni, int nj, int nk, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *b,
                                  DATA_TYPE *c)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = ni * nj;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    int start = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end = start + elements_per_thread + (thread_id < remainder ? 1 : 0);
    int size = (end / nj) * nk + nk - 1 - (start / nj) * nk;
    CACHEb_INIT(c, DATA_TYPE, &c[start], 0, (end - start) * sizeof(DATA_TYPE));
    int start_row = start / nj;
    int end_row = (end - 1) / nj;
    int a_elements = (end_row - start_row + 1) * nk;
    CACHEb_INIT(a, DATA_TYPE, &a[start_row * nk], 0, a_elements * sizeof(DATA_TYPE));
    CACHEs_INIT(b, DATA_TYPE, b, 0, 15);
    DATA_TYPE tmp_c, tmp_a, tmp_b;
    for (int idx = start; idx < end; ++idx) {
        CACHEb_RD(c, &c[idx - start], tmp_c);
        tmp_c *= beta;
        CACHEb_WT(c, &c[idx - start], tmp_c);
    }

    for (int k = 0; k < nk; ++k) {
        for (int idx = start; idx < end; ++idx) {
            int i = idx / nj;
            int j = idx % nj;
            CACHEb_RD(c, &c[idx - start], tmp_c);
            CACHEb_RD(a, &a[(i - start_row) * nk + k], tmp_a);
            CACHEs_RD(b, &b[k * nj + j], tmp_b);
            tmp_c += alpha * tmp_a * tmp_b;
            CACHEb_WT(c, &c[idx - start], tmp_c);
        }
    }
    CACHEb_FLUSH(c);
    CACHEb_INVALID(a);
    CACHEs_INVALID(b);
}
#endif

#ifdef SMALL_DATASET
__global__ void gemm_kernel_cache(int ni, int nj, int nk, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *b,
                                  DATA_TYPE *c)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = ni * nj;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    int start = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end = start + elements_per_thread + (thread_id < remainder ? 1 : 0);
    int size = (end / nj) * nk + nk - 1 - (start / nj) * nk;
    CACHEb_INIT(c, DATA_TYPE, &c[start], 0, (end - start) * sizeof(DATA_TYPE));
    int start_row = start / nj;
    int end_row = (end - 1) / nj;
    int a_elements = (end_row - start_row + 1) * nk;
    CACHEb_INIT(a, DATA_TYPE, &a[start_row * nk], 0, a_elements * sizeof(DATA_TYPE));
    CACHEs_INIT(b, DATA_TYPE, b, 0, 13);
    DATA_TYPE tmp_c, tmp_a, tmp_b;
    for (int idx = start; idx < end; ++idx) {
        CACHEb_RD(c, &c[idx - start], tmp_c);
        tmp_c *= beta;
        CACHEb_WT(c, &c[idx - start], tmp_c);
    }

    for (int k = 0; k < nk; ++k) {
        for (int idx = start; idx < end; ++idx) {
            int i = idx / nj;
            int j = idx % nj;
            CACHEb_RD(c, &c[idx - start], tmp_c);
            CACHEb_RD(a, &a[(i - start_row) * nk + k], tmp_a);
            CACHEs_RD(b, &b[k * nj + j], tmp_b);
            tmp_c += alpha * tmp_a * tmp_b;
            CACHEb_WT(c, &c[idx - start], tmp_c);
        }
    }
    CACHEb_FLUSH(c);
    CACHEb_INVALID(a);
    CACHEs_INVALID(b);
}
#endif

#ifdef STANDARD_DATASET /* Default if unspecified. */
__global__ void gemm_kernel_cache(int ni, int nj, int nk, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *b,
                                  DATA_TYPE *c)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = ni * nj;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    int start = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end = start + elements_per_thread + (thread_id < remainder ? 1 : 0);
    int size = (end / nj) * nk + nk - 1 - (start / nj) * nk;
    CACHEs_INIT(b, DATA_TYPE, b, 0, 14);
    // CACHEs_INIT(c, DATA_TYPE, c, 0, 14);
    CACHEs_INIT(a, DATA_TYPE, a, 0, 15);
    DATA_TYPE tmp_c, tmp_a, tmp_b;
    for (int idx = start; idx < end; ++idx) {
        // CACHEs_RD(c, &c[idx], tmp_c);
        c[idx] *= beta;
        // CACHEs_WT(c, &c[idx], tmp_c);
    }

    for (int k = 0; k < nk; ++k) {
        for (int idx = start; idx < end; ++idx) {
            int i = idx / nj;
            int j = idx % nj;
            // CACHEs_RD(c, &c[idx], tmp_c);
            CACHEs_RD(a, &a[i * nk + k], tmp_a);
            CACHEs_RD(b, &b[k * nj + j], tmp_b);
            c[idx] += alpha * tmp_a * tmp_b;
            // CACHEs_WT(c, &c[idx], tmp_c);
        }
    }
    // CACHEs_FLUSH(c);
    CACHEs_INVALID(a);
    CACHEs_INVALID(b);
}
#endif

#ifdef LARGE_DATASET
__global__ void gemm_kernel_cache(int ni, int nj, int nk, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *b,
                                  DATA_TYPE *c)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = ni * nj;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    int start = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end = start + elements_per_thread + (thread_id < remainder ? 1 : 0);
    int size = (end / nj) * nk + nk - 1 - (start / nj) * nk;
    CACHEs_INIT(b, DATA_TYPE, b, 0, 14);
    // CACHEs_INIT(c, DATA_TYPE, c, 0, 14);
    CACHEs_INIT(a, DATA_TYPE, a, 0, 15);
    DATA_TYPE tmp_c, tmp_a, tmp_b;
    for (int idx = start; idx < end; ++idx) {
        // CACHEs_RD(c, &c[idx], tmp_c);
        c[idx] *= beta;
        // CACHEs_WT(c, &c[idx], tmp_c);
    }

    for (int k = 0; k < nk; ++k) {
        for (int idx = start; idx < end; ++idx) {
            int i = idx / nj;
            int j = idx % nj;
            // CACHEs_RD(c, &c[idx], tmp_c);
            CACHEs_RD(a, &a[i * nk + k], tmp_a);
            CACHEs_RD(b, &b[k * nj + j], tmp_b);
            c[idx] += alpha * tmp_a * tmp_b;
            // CACHEs_WT(c, &c[idx], tmp_c);
        }
    }
    // CACHEs_FLUSH(c);
    CACHEs_INVALID(a);
    CACHEs_INVALID(b);
}
#endif

#ifdef EXTRALARGE_DATASET
__global__ void gemm_kernel_cache(int ni, int nj, int nk, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *b,
                                  DATA_TYPE *c)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = ni * nj;
    int elements_per_thread = total_elements / group_size;
    int remainder = total_elements % group_size;

    int start = thread_id * elements_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end = start + elements_per_thread + (thread_id < remainder ? 1 : 0);
    int size = (end / nj) * nk + nk - 1 - (start / nj) * nk;
    CACHEs_INIT(b, DATA_TYPE, b, 0, 14);
    // CACHEs_INIT(c, DATA_TYPE, c, 0, 14);
    CACHEs_INIT(a, DATA_TYPE, a, 0, 15);
    DATA_TYPE tmp_c, tmp_a, tmp_b;
    for (int idx = start; idx < end; ++idx) {
        // CACHEs_RD(c, &c[idx], tmp_c);
        c[idx] *= beta;
        // CACHEs_WT(c, &c[idx], tmp_c);
    }

    for (int k = 0; k < nk; ++k) {
        for (int idx = start; idx < end; ++idx) {
            int i = idx / nj;
            int j = idx % nj;
            // CACHEs_RD(c, &c[idx], tmp_c);
            CACHEs_RD(a, &a[i * nk + k], tmp_a);
            CACHEs_RD(b, &b[k * nj + j], tmp_b);
            c[idx] += alpha * tmp_a * tmp_b;
            // CACHEs_WT(c, &c[idx], tmp_c);
        }
    }
    // CACHEs_FLUSH(c);
    CACHEs_INVALID(a);
    CACHEs_INVALID(b);
}
#endif