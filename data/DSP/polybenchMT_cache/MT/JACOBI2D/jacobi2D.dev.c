#include "jacobi2D.h"
#include "../../common/cache_strategy/cache_wrapper.h"
#include "../../common/polybench.h"
#include "hthread_device.h"
#include <compiler/m3000.h>

static inline int min(int a, int b) { return a > b ? b : a; }

__global__ void runJacobi_kernel1(int n, DATA_TYPE *A, DATA_TYPE *B)
{
    int total_threads = get_group_size();
    int thread_id = get_thread_id();

    // 计算每个线程需要处理的行数
    int rows_per_thread = (_PB_N - 2 + total_threads - 1) / total_threads;
    int start_row = 1 + thread_id * rows_per_thread;
    int end_row = min(start_row + rows_per_thread, _PB_N - 1);

    // 每个线程处理其负责的行
    for (int i = start_row; i < end_row; i++) {
        for (int j = 1; j < _PB_N - 1; j++) {
            B[i * N + j] = 0.2f * (A[i * N + j] + A[i * N + (j - 1)] + A[i * N + (j + 1)] + A[(i + 1) * N + j] +
                                   A[(i - 1) * N + j]);
        }
    }
}

__global__ void runJacobi_kernel2(int n, DATA_TYPE *A, DATA_TYPE *B)
{
    int total_threads = get_group_size();
    int thread_id = get_thread_id();

    // 计算每个线程需要处理的行数
    int rows_per_thread = (_PB_N - 2 + total_threads - 1) / total_threads;
    int start_row = 1 + thread_id * rows_per_thread;
    int end_row = min(start_row + rows_per_thread, _PB_N - 1);

    // 每个线程处理其负责的行
    for (int i = start_row; i < end_row; i++) {
        for (int j = 1; j < _PB_N - 1; j++) {
            A[i * N + j] = B[i * N + j];
        }
    }
}

#ifdef MINI_DATASET
__global__ void runJacobi_kernel1_cache(int n, DATA_TYPE *A, DATA_TYPE *B)
{
    int total_threads = get_group_size();
    int thread_id = get_thread_id();

    // 计算每个线程需要处理的行数
    int rows_per_thread = (_PB_N - 2 + total_threads - 1) / total_threads;
    int start_row = 1 + thread_id * rows_per_thread;
    int end_row = min(start_row + rows_per_thread, _PB_N - 1);
    CACHEb_INIT(A, DATA_TYPE, &A[(start_row - 1) * N], 0, (end_row - start_row + 2) * _PB_N * sizeof(DATA_TYPE));
    CACHEb_INIT(B, DATA_TYPE, &B[start_row * N], 0, (end_row - start_row) * _PB_N * sizeof(DATA_TYPE));
    DATA_TYPE tmp_B, tmp_A1, tmp_A2, tmp_A3, tmp_A4, tmp_A5;
    for (int i = start_row; i < end_row; i++) {
        for (int j = 1; j < _PB_N - 1; j++) {
            CACHEb_RD(A, &A[(i - start_row) * N + j], tmp_A5);
            CACHEb_RD(A, &A[(i - start_row + 1) * N + j], tmp_A4);
            CACHEb_RD(A, &A[(i - start_row) * N + j], tmp_A1);
            CACHEb_RD(A, &A[(i - start_row + 2) * N + (j - 1)], tmp_A2);
            CACHEb_RD(A, &A[(i - start_row + 2) * N + (j + 1)], tmp_A3);
            CACHEb_RD(B, &B[(i - start_row) * N + j], tmp_B);
            tmp_B = 0.2f * (tmp_A1 + tmp_A2 + tmp_A3 + tmp_A4 + tmp_A5);
            CACHEb_WT(B, &B[(i - start_row) * N + j], tmp_B);
        }
    }
    CACHEb_INVALID(A);
    CACHEb_FLUSH(B);
}

__global__ void runJacobi_kernel2_cache(int n, DATA_TYPE *A, DATA_TYPE *B)
{
    int total_threads = get_group_size();
    int thread_id = get_thread_id();

    // 计算每个线程需要处理的行数
    int rows_per_thread = (_PB_N - 2 + total_threads - 1) / total_threads;
    int start_row = 1 + thread_id * rows_per_thread;
    int end_row = min(start_row + rows_per_thread, _PB_N - 1);

    CACHEb_INIT(B, DATA_TYPE, &B[start_row * N], 0, (end_row - start_row) * _PB_N * sizeof(DATA_TYPE));
    CACHEb_INIT(A, DATA_TYPE, &A[start_row * N], 0, (end_row - start_row) * _PB_N * sizeof(DATA_TYPE));
    DATA_TYPE tmp_A, tmp_B;
    for (int i = start_row; i < end_row; i++) {
        for (int j = 1; j < _PB_N - 1; j++) {
            CACHEb_RD(B, &B[(i - start_row) * N + j], tmp_B);
            tmp_A = tmp_B;
            CACHEb_WT(A, &A[(i - start_row) * N + j], tmp_A);
        }
    }
    CACHEb_INVALID(B);
    CACHEb_FLUSH(A);
}
#endif

#ifdef SMALL_DATASET
__global__ void runJacobi_kernel1_cache(int n, DATA_TYPE *A, DATA_TYPE *B)
{
    int total_threads = get_group_size();
    int thread_id = get_thread_id();

    // 计算每个线程需要处理的行数
    int rows_per_thread = (_PB_N - 2 + total_threads - 1) / total_threads;
    int start_row = 1 + thread_id * rows_per_thread;
    int end_row = min(start_row + rows_per_thread, _PB_N - 1);
    CACHEd_INIT(A, DATA_TYPE, A, 6, 9);
    CACHEs_INIT(B, DATA_TYPE, B, 0, 14);
    DATA_TYPE tmp_B, tmp_A1, tmp_A2, tmp_A3, tmp_A4, tmp_A5;
    for (int i = start_row; i < end_row; i++) {
        for (int j = 1; j < _PB_N - 1; j++) {
            CACHEd_RD(A, &A[(i - 1) * N + j], tmp_A5);
            CACHEd_RD(A, &A[i * N + j], tmp_A1);
            CACHEd_RD(A, &A[i * N + (j - 1)], tmp_A2);
            CACHEd_RD(A, &A[i * N + (j + 1)], tmp_A3);
            CACHEd_RD(A, &A[(i + 1) * N + j], tmp_A4);
            CACHEs_RD(B, &B[i * N + j], tmp_B);
            tmp_B = 0.2f * (tmp_A1 + tmp_A2 + tmp_A3 + tmp_A4 + tmp_A5);
            CACHEs_WT(B, &B[i * N + j], tmp_B);
        }
    }
    CACHEd_INVALID(A);
    CACHEs_FLUSH(B);
}

__global__ void runJacobi_kernel2_cache(int n, DATA_TYPE *A, DATA_TYPE *B)
{
    int total_threads = get_group_size();
    int thread_id = get_thread_id();

    // 计算每个线程需要处理的行数
    int rows_per_thread = (_PB_N - 2 + total_threads - 1) / total_threads;
    int start_row = 1 + thread_id * rows_per_thread;
    int end_row = min(start_row + rows_per_thread, _PB_N - 1);

    CACHEs_INIT(B, DATA_TYPE, B, 0, 14);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 14);
    DATA_TYPE tmp_A, tmp_B;
    for (int i = start_row; i < end_row; i++) {
        for (int j = 1; j < _PB_N - 1; j++) {
            CACHEs_RD(B, &B[i * N + j], tmp_B);
            tmp_A = tmp_B;
            CACHEs_WT(A, &A[i * N + j], tmp_A);
        }
    }
    CACHEs_INVALID(B);
    CACHEs_FLUSH(A);
}
#endif

#ifdef STANDARD_DATASET /* Default if unspecified. */
__global__ void runJacobi_kernel1_cache(int n, DATA_TYPE *A, DATA_TYPE *B)
{
    int total_threads = get_group_size();
    int thread_id = get_thread_id();

    // 计算每个线程需要处理的行数
    int rows_per_thread = (_PB_N - 2 + total_threads - 1) / total_threads;
    int start_row = 1 + thread_id * rows_per_thread;
    int end_row = min(start_row + rows_per_thread, _PB_N - 1);
    CACHEd_INIT(A, DATA_TYPE, A, 5, 10);
    CACHEs_INIT(B, DATA_TYPE, B, 0, 14);
    DATA_TYPE tmp_B, tmp_A1, tmp_A2, tmp_A3, tmp_A4, tmp_A5;
    for (int i = start_row; i < end_row; i++) {
        for (int j = 1; j < _PB_N - 1; j++) {
            CACHEd_RD(A, &A[(i - 1) * N + j], tmp_A5);
            CACHEd_RD(A, &A[i * N + j], tmp_A1);
            CACHEd_RD(A, &A[i * N + (j - 1)], tmp_A2);
            CACHEd_RD(A, &A[i * N + (j + 1)], tmp_A3);
            CACHEd_RD(A, &A[(i + 1) * N + j], tmp_A4);
            CACHEs_RD(B, &B[i * N + j], tmp_B);
            tmp_B = 0.2f * (tmp_A1 + tmp_A2 + tmp_A3 + tmp_A4 + tmp_A5);
            CACHEs_WT(B, &B[i * N + j], tmp_B);
        }
    }
    CACHEd_INVALID(A);
    CACHEs_FLUSH(B);
}

__global__ void runJacobi_kernel2_cache(int n, DATA_TYPE *A, DATA_TYPE *B)
{
    int total_threads = get_group_size();
    int thread_id = get_thread_id();

    // 计算每个线程需要处理的行数
    int rows_per_thread = (_PB_N - 2 + total_threads - 1) / total_threads;
    int start_row = 1 + thread_id * rows_per_thread;
    int end_row = min(start_row + rows_per_thread, _PB_N - 1);

    CACHEs_INIT(B, DATA_TYPE, B, 0, 14);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 14);
    DATA_TYPE tmp_A, tmp_B;
    for (int i = start_row; i < end_row; i++) {
        for (int j = 1; j < _PB_N - 1; j++) {
            CACHEs_RD(B, &B[i * N + j], tmp_B);
            tmp_A = tmp_B;
            CACHEs_WT(A, &A[i * N + j], tmp_A);
        }
    }
    CACHEs_INVALID(B);
    CACHEs_FLUSH(A);
}
#endif

#ifdef LARGE_DATASET
__global__ void runJacobi_kernel1_cache(int n, DATA_TYPE *A, DATA_TYPE *B)
{
    int total_threads = get_group_size();
    int thread_id = get_thread_id();

    // 计算每个线程需要处理的行数
    int rows_per_thread = (_PB_N - 2 + total_threads - 1) / total_threads;
    int start_row = 1 + thread_id * rows_per_thread;
    int end_row = min(start_row + rows_per_thread, _PB_N - 1);
    CACHEd_INIT(A, DATA_TYPE, A, 4, 11);
    CACHEs_INIT(B, DATA_TYPE, B, 0, 14);
    DATA_TYPE tmp_B, tmp_A1, tmp_A2, tmp_A3, tmp_A4, tmp_A5;
    for (int i = start_row; i < end_row; i++) {
        for (int j = 1; j < _PB_N - 1; j++) {
            CACHEd_RD(A, &A[(i - 1) * N + j], tmp_A5);
            CACHEd_RD(A, &A[i * N + j], tmp_A1);
            CACHEd_RD(A, &A[i * N + (j - 1)], tmp_A2);
            CACHEd_RD(A, &A[i * N + (j + 1)], tmp_A3);
            CACHEd_RD(A, &A[(i + 1) * N + j], tmp_A4);
            CACHEs_RD(B, &B[i * N + j], tmp_B);
            tmp_B = 0.2f * (tmp_A1 + tmp_A2 + tmp_A3 + tmp_A4 + tmp_A5);
            CACHEs_WT(B, &B[i * N + j], tmp_B);
        }
    }
    CACHEd_INVALID(A);
    CACHEs_FLUSH(B);
}

__global__ void runJacobi_kernel2_cache(int n, DATA_TYPE *A, DATA_TYPE *B)
{
    int total_threads = get_group_size();
    int thread_id = get_thread_id();

    // 计算每个线程需要处理的行数
    int rows_per_thread = (_PB_N - 2 + total_threads - 1) / total_threads;
    int start_row = 1 + thread_id * rows_per_thread;
    int end_row = min(start_row + rows_per_thread, _PB_N - 1);

    CACHEs_INIT(B, DATA_TYPE, B, 0, 14);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 14);
    DATA_TYPE tmp_A, tmp_B;
    for (int i = start_row; i < end_row; i++) {
        for (int j = 1; j < _PB_N - 1; j++) {
            CACHEs_RD(B, &B[i * N + j], tmp_B);
            tmp_A = tmp_B;
            CACHEs_WT(A, &A[i * N + j], tmp_A);
        }
    }
    CACHEs_INVALID(B);
    CACHEs_FLUSH(A);
}
#endif

#ifdef EXTRALARGE_DATASET
__global__ void runJacobi_kernel1_cache(int n, DATA_TYPE *A, DATA_TYPE *B)
{
    int total_threads = get_group_size();
    int thread_id = get_thread_id();

    // 计算每个线程需要处理的行数
    int rows_per_thread = (_PB_N - 2 + total_threads - 1) / total_threads;
    int start_row = 1 + thread_id * rows_per_thread;
    int end_row = min(start_row + rows_per_thread, _PB_N - 1);
    CACHEd_INIT(A, DATA_TYPE, A, 8, 7);
    CACHEs_INIT(B, DATA_TYPE, B, 0, 14);
    DATA_TYPE tmp_B, tmp_A1, tmp_A2, tmp_A3, tmp_A4, tmp_A5;
    for (int i = start_row; i < end_row; i++) {
        for (int j = 1; j < _PB_N - 1; j++) {
            CACHEd_RD(A, &A[(i - 1) * N + j], tmp_A5);
            CACHEd_RD(A, &A[i * N + j], tmp_A1);
            CACHEd_RD(A, &A[i * N + (j - 1)], tmp_A2);
            CACHEd_RD(A, &A[i * N + (j + 1)], tmp_A3);
            CACHEd_RD(A, &A[(i + 1) * N + j], tmp_A4);
            CACHEs_RD(B, &B[i * N + j], tmp_B);
            tmp_B = 0.2f * (tmp_A1 + tmp_A2 + tmp_A3 + tmp_A4 + tmp_A5);
            CACHEs_WT(B, &B[i * N + j], tmp_B);
        }
    }
    CACHEd_INVALID(A);
    CACHEs_FLUSH(B);
}

__global__ void runJacobi_kernel2_cache(int n, DATA_TYPE *A, DATA_TYPE *B)
{
    int total_threads = get_group_size();
    int thread_id = get_thread_id();

    // 计算每个线程需要处理的行数
    int rows_per_thread = (_PB_N - 2 + total_threads - 1) / total_threads;
    int start_row = 1 + thread_id * rows_per_thread;
    int end_row = min(start_row + rows_per_thread, _PB_N - 1);

    CACHEs_INIT(B, DATA_TYPE, B, 0, 14);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 14);
    DATA_TYPE tmp_A, tmp_B;
    for (int i = start_row; i < end_row; i++) {
        for (int j = 1; j < _PB_N - 1; j++) {
            CACHEs_RD(B, &B[i * N + j], tmp_B);
            tmp_A = tmp_B;
            CACHEs_WT(A, &A[i * N + j], tmp_A);
        }
    }
    CACHEs_INVALID(B);
    CACHEs_FLUSH(A);
}
#endif