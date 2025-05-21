#include "doitgen.h"
#include "../../common/cache_strategy/cache_wrapper.h"
#include "hthread_device.h"
#include <compiler/m3000.h>
#include <math.h>
#include <time.h>

static inline int min(int a, int b) { return a < b ? a : b; }

__global__ void doitgen_kernel1(int r, DATA_TYPE *sum, DATA_TYPE *A, DATA_TYPE *C4)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = NP * NQ;
    int elements_per_thread = total_elements / group_size;
    int extra_elements = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + min(thread_id, extra_elements);
    int end_idx = start_idx + elements_per_thread + (thread_id < extra_elements ? 1 : 0);

    for (int i = start_idx; i < end_idx; i++) {
        sum[r * (NQ * NP) + i] = (DATA_TYPE)0.0;
    }
    for (int s = 0; s < NP; s++) {
        for (int i = start_idx; i < end_idx; i++) {
            int p = i % NP;
            int q = i / NP;
            sum[r * (NQ * NP) + i] += A[r * (NQ * NP) + q * NP + s] * C4[s * NP + p];
        }
    }
}

__global__ void doitgen_kernel2(int r, DATA_TYPE *sum, DATA_TYPE *A, DATA_TYPE *C4)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = NP * NQ;
    int elements_per_thread = total_elements / group_size;
    int extra_elements = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + min(thread_id, extra_elements);
    int end_idx = start_idx + elements_per_thread + (thread_id < extra_elements ? 1 : 0);

    for (int i = start_idx; i < end_idx; i++) {
        A[r * (NQ * NP) + i] = sum[r * (NQ * NP) + i];
    }
}

/* nb bersion */
// __global__ void doitgen_kernel1_cache(int r, DATA_TYPE *sum, DATA_TYPE *A, DATA_TYPE *C4)
// {
//     int thread_id = get_thread_id();
//     int group_size = get_group_size();

//     int total_elements = NP * NQ;
//     int elements_per_thread = total_elements / group_size;
//     int extra_elements = total_elements % group_size;

//     int start_idx = thread_id * elements_per_thread + min(thread_id, extra_elements);
//     int end_idx = start_idx + elements_per_thread + (thread_id < extra_elements ? 1 : 0);

//     int start_A_row = start_idx / NP, end_A_row = end_idx / NP;

//     CACHEb_INIT(sum, DATA_TYPE, &sum[r * (NQ * NP) + start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
//     CACHEb_INIT(A, DATA_TYPE, &A[r * (NQ * NP) + start_A_row * NP], 0, ((end_A_row - start_A_row + 1) * NP) *
//     sizeof(DATA_TYPE)); DATA_TYPE tmp_sum, tmp_A, tmp_C4; for (int i = start_idx; i < end_idx; i++) {
//         CACHEb_WT(sum, &sum[i - start_idx], 0);
//     }
//     for (int s = 0; s < NP; s++) {
//         CACHEb_INIT(C4, DATA_TYPE, &C4[s * NP], 0, NP * sizeof(DATA_TYPE));
//         for (int i = start_idx; i < end_idx; i++) {
//             int p = i % NP;
//             int q = i / NP;
//             CACHEb_RD(sum, &sum[i - start_idx], tmp_sum);
//             CACHEb_RD(A, &A[(q - start_A_row) * NP + s], tmp_A);
//             CACHEb_RD(C4, &C4[p], tmp_C4);
//             tmp_sum += tmp_A * tmp_C4;
//             CACHEb_WT(sum, &sum[i - start_idx], tmp_sum);
//         }
//         CACHEb_INVALID(C4);
//     }
//     CACHEb_FLUSH(sum);
//     CACHEb_INVALID(A);
// }

#ifdef MINI_DATASET
__global__ void doitgen_kernel1_cache(int r, DATA_TYPE *sum, DATA_TYPE *A, DATA_TYPE *C4)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = NP * NQ;
    int elements_per_thread = total_elements / group_size;
    int extra_elements = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + min(thread_id, extra_elements);
    int end_idx = start_idx + elements_per_thread + (thread_id < extra_elements ? 1 : 0);

    CACHEb_INIT(sum, DATA_TYPE, &sum[r * (NQ * NP) + start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(A, DATA_TYPE, &A[r * (NQ * NP)], 0, (NQ * NP) * sizeof(DATA_TYPE));
    CACHEb_INIT(C4, DATA_TYPE, C4, 0, (NP * NP) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_sum, tmp_A, tmp_C4;
    for (int i = start_idx; i < end_idx; i++) {
        CACHEb_WT(sum, &sum[i - start_idx], 0);
    }
    for (int s = 0; s < NP; s++) {
        for (int i = start_idx; i < end_idx; i++) {
            int p = i % NP;
            int q = i / NP;
            CACHEb_RD(sum, &sum[i - start_idx], tmp_sum);
            CACHEb_RD(A, &A[q * NP + s], tmp_A);
            CACHEb_RD(C4, &C4[s * NP + p], tmp_C4);
            tmp_sum += tmp_A * tmp_C4;
            CACHEb_WT(sum, &sum[i - start_idx], tmp_sum);
        }
    }
    CACHEb_FLUSH(sum);
    CACHEb_INVALID(A);
    CACHEb_INVALID(C4);
}

__global__ void doitgen_kernel2_cache(int r, DATA_TYPE *sum, DATA_TYPE *A, DATA_TYPE *C4)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = NP * NQ;
    int elements_per_thread = total_elements / group_size;
    int extra_elements = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + min(thread_id, extra_elements);
    int end_idx = start_idx + elements_per_thread + (thread_id < extra_elements ? 1 : 0);
    CACHEb_INIT(sum, DATA_TYPE, &sum[r * (NQ * NP) + start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(A, DATA_TYPE, &A[r * (NQ * NP) + start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_sum;
    for (int i = start_idx; i < end_idx; i++) {
        CACHEb_RD(sum, &sum[i - start_idx], tmp_sum);
        CACHEb_WT(A, &A[i - start_idx], tmp_sum);
    }
    CACHEb_FLUSH(A);
    CACHEb_INVALID(sum);
}
#endif

#ifdef SMALL_DATASET
__global__ void doitgen_kernel1_cache(int r, DATA_TYPE *sum, DATA_TYPE *A, DATA_TYPE *C4)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = NP * NQ;
    int elements_per_thread = total_elements / group_size;
    int extra_elements = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + min(thread_id, extra_elements);
    int end_idx = start_idx + elements_per_thread + (thread_id < extra_elements ? 1 : 0);

    int start_A_row = start_idx / NP, end_A_row = end_idx / NP;

    CACHEb_INIT(sum, DATA_TYPE, &sum[r * (NQ * NP) + start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(A, DATA_TYPE, &A[r * (NQ * NP) + start_A_row * NP], 0,
                ((end_A_row - start_A_row + 1) * NP) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_sum, tmp_A, tmp_C4;
    for (int i = start_idx; i < end_idx; i++) {
        CACHEb_WT(sum, &sum[i - start_idx], 0);
    }
    for (int s = 0; s < NP; s++) {
        CACHEb_INIT(C4, DATA_TYPE, &C4[s * NP], 0, NP * sizeof(DATA_TYPE));
        for (int i = start_idx; i < end_idx; i++) {
            int p = i % NP;
            int q = i / NP;
            CACHEb_RD(sum, &sum[i - start_idx], tmp_sum);
            CACHEb_RD(A, &A[(q - start_A_row) * NP + s], tmp_A);
            CACHEb_RD(C4, &C4[p], tmp_C4);
            tmp_sum += tmp_A * tmp_C4;
            CACHEb_WT(sum, &sum[i - start_idx], tmp_sum);
        }
        CACHEb_INVALID(C4);
    }
    CACHEb_FLUSH(sum);
    CACHEb_INVALID(A);
}

__global__ void doitgen_kernel2_cache(int r, DATA_TYPE *sum, DATA_TYPE *A, DATA_TYPE *C4)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = NP * NQ;
    int elements_per_thread = total_elements / group_size;
    int extra_elements = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + min(thread_id, extra_elements);
    int end_idx = start_idx + elements_per_thread + (thread_id < extra_elements ? 1 : 0);
    CACHEb_INIT(sum, DATA_TYPE, &sum[r * (NQ * NP) + start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(A, DATA_TYPE, &A[r * (NQ * NP) + start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_sum;
    for (int i = start_idx; i < end_idx; i++) {
        CACHEb_RD(sum, &sum[i - start_idx], tmp_sum);
        CACHEb_WT(A, &A[i - start_idx], tmp_sum);
    }
    CACHEb_FLUSH(A);
    CACHEb_INVALID(sum);
}
#endif

#ifdef STANDARD_DATASET /* Default if unspecified. */
__global__ void doitgen_kernel1_cache(int r, DATA_TYPE *sum, DATA_TYPE *A, DATA_TYPE *C4)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = NP * NQ;
    int elements_per_thread = total_elements / group_size;
    int extra_elements = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + min(thread_id, extra_elements);
    int end_idx = start_idx + elements_per_thread + (thread_id < extra_elements ? 1 : 0);

    int start_A_row = start_idx / NP, end_A_row = end_idx / NP;

    CACHEb_INIT(sum, DATA_TYPE, &sum[r * (NQ * NP) + start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(A, DATA_TYPE, &A[r * (NQ * NP) + start_A_row * NP], 0,
                ((end_A_row - start_A_row + 1) * NP) * sizeof(DATA_TYPE));
    CACHEs_INIT(C4, DATA_TYPE, C4, 0, 15);
    DATA_TYPE tmp_sum, tmp_A, tmp_C4;
    for (int i = start_idx; i < end_idx; i++) {
        CACHEb_WT(sum, &sum[i - start_idx], 0);
    }
    for (int s = 0; s < NP; s++) {
        for (int i = start_idx; i < end_idx; i++) {
            int p = i % NP;
            int q = i / NP;
            CACHEb_RD(sum, &sum[i - start_idx], tmp_sum);
            CACHEb_RD(A, &A[(q - start_A_row) * NP + s], tmp_A);
            CACHEs_RD(C4, &C4[s * NP + p], tmp_C4);
            tmp_sum += tmp_A * tmp_C4;
            CACHEb_WT(sum, &sum[i - start_idx], tmp_sum);
        }
    }
    CACHEb_FLUSH(sum);
    CACHEs_INVALID(C4);
    CACHEb_INVALID(A);
}

__global__ void doitgen_kernel2_cache(int r, DATA_TYPE *sum, DATA_TYPE *A, DATA_TYPE *C4)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = NP * NQ;
    int elements_per_thread = total_elements / group_size;
    int extra_elements = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + min(thread_id, extra_elements);
    int end_idx = start_idx + elements_per_thread + (thread_id < extra_elements ? 1 : 0);
    CACHEb_INIT(sum, DATA_TYPE, &sum[r * (NQ * NP) + start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(A, DATA_TYPE, &A[r * (NQ * NP) + start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_sum;
    for (int i = start_idx; i < end_idx; i++) {
        CACHEb_RD(sum, &sum[i - start_idx], tmp_sum);
        CACHEb_WT(A, &A[i - start_idx], tmp_sum);
    }
    CACHEb_FLUSH(A);
    CACHEb_INVALID(sum);
}
#endif

#ifdef LARGE_DATASET
__global__ void doitgen_kernel1_cache(int r, DATA_TYPE *sum, DATA_TYPE *A, DATA_TYPE *C4)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = NP * NQ;
    int elements_per_thread = total_elements / group_size;
    int extra_elements = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + min(thread_id, extra_elements);
    int end_idx = start_idx + elements_per_thread + (thread_id < extra_elements ? 1 : 0);

    int start_A_row = start_idx / NP, end_A_row = end_idx / NP;

    CACHEb_INIT(sum, DATA_TYPE, &sum[r * (NQ * NP) + start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(A, DATA_TYPE, &A[r * (NQ * NP) + start_A_row * NP], 0,
                ((end_A_row - start_A_row + 1) * NP) * sizeof(DATA_TYPE));
    CACHEs_INIT(C4, DATA_TYPE, C4, 0, 13);
    DATA_TYPE tmp_sum, tmp_A, tmp_C4;
    for (int i = start_idx; i < end_idx; i++) {
        CACHEb_WT(sum, &sum[i - start_idx], 0);
    }
    for (int s = 0; s < NP; s++) {
        for (int i = start_idx; i < end_idx; i++) {
            int p = i % NP;
            int q = i / NP;
            CACHEb_RD(sum, &sum[i - start_idx], tmp_sum);
            CACHEb_RD(A, &A[(q - start_A_row) * NP + s], tmp_A);
            CACHEs_RD(C4, &C4[s * NP + p], tmp_C4);
            tmp_sum += tmp_A * tmp_C4;
            CACHEb_WT(sum, &sum[i - start_idx], tmp_sum);
        }
    }
    CACHEb_FLUSH(sum);
    CACHEs_INVALID(C4);
    CACHEb_INVALID(A);
}

__global__ void doitgen_kernel2_cache(int r, DATA_TYPE *sum, DATA_TYPE *A, DATA_TYPE *C4)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = NP * NQ;
    int elements_per_thread = total_elements / group_size;
    int extra_elements = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + min(thread_id, extra_elements);
    int end_idx = start_idx + elements_per_thread + (thread_id < extra_elements ? 1 : 0);
    CACHEb_INIT(sum, DATA_TYPE, &sum[r * (NQ * NP) + start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(A, DATA_TYPE, &A[r * (NQ * NP) + start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_sum;
    for (int i = start_idx; i < end_idx; i++) {
        CACHEb_RD(sum, &sum[i - start_idx], tmp_sum);
        CACHEb_WT(A, &A[i - start_idx], tmp_sum);
    }
    CACHEb_FLUSH(A);
    CACHEb_INVALID(sum);
}
#endif

#ifdef EXTRALARGE_DATASET
__global__ void doitgen_kernel1_cache(int r, DATA_TYPE *sum, DATA_TYPE *A, DATA_TYPE *C4)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = NP * NQ;
    int elements_per_thread = total_elements / group_size;
    int extra_elements = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + min(thread_id, extra_elements);
    int end_idx = start_idx + elements_per_thread + (thread_id < extra_elements ? 1 : 0);

    int start_A_row = start_idx / NP, end_A_row = end_idx / NP;

    CACHEs_INIT(C4, DATA_TYPE, C4, 0, 9);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 15);
    CACHEs_INIT(sum, DATA_TYPE, sum, 0, 14);
    DATA_TYPE tmp_sum, tmp_A, tmp_C4;
    for (int i = start_idx; i < end_idx; i++) {
        CACHEs_WT(sum, &sum[i], 0);
    }
    for (int s = 0; s < NP; s++) {
        for (int i = start_idx; i < end_idx; i++) {
            int p = i % NP;
            int q = i / NP;
            CACHEs_RD(sum, &sum[r * (NQ * NP) + i], tmp_sum);
            CACHEs_RD(A, &A[r * (NQ * NP) + q * NP + s], tmp_A);
            CACHEs_RD(C4, &C4[s * NP + p], tmp_C4);
            tmp_sum += tmp_A * tmp_C4;
            CACHEs_WT(sum, &sum[r * (NQ * NP) + i], tmp_sum);
        }
    }
    CACHEs_FLUSH(sum);
    CACHEs_INVALID(C4);
    CACHEs_INVALID(A);
}

__global__ void doitgen_kernel2_cache(int r, DATA_TYPE *sum, DATA_TYPE *A, DATA_TYPE *C4)
{
    int thread_id = get_thread_id();
    int group_size = get_group_size();

    int total_elements = NP * NQ;
    int elements_per_thread = total_elements / group_size;
    int extra_elements = total_elements % group_size;

    int start_idx = thread_id * elements_per_thread + min(thread_id, extra_elements);
    int end_idx = start_idx + elements_per_thread + (thread_id < extra_elements ? 1 : 0);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 14);
    CACHEs_INIT(sum, DATA_TYPE, sum, 0, 14);
    DATA_TYPE tmp_sum;
    for (int i = start_idx; i < end_idx; i++) {
        CACHEs_RD(sum, &sum[i], tmp_sum);
        CACHEs_WT(A, &A[i], tmp_sum);
    }
    CACHEs_FLUSH(A);
    CACHEs_INVALID(sum);
}
#endif
