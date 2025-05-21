#include "adi.h"
#include "../../common/cache_strategy/cache_wrapper.h"
#include "../../common/polybench.h"
#include "hthread_device.h"
#include <compiler/m3000.h>

__global__ void adi_kernel1(int n, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int rows_per_thread = _PB_N / total_threads;
    int extra_rows = _PB_N % total_threads;
    int start_row = thread_id * rows_per_thread + (thread_id < extra_rows ? thread_id : extra_rows);
    int end_row = start_row + rows_per_thread + (thread_id < extra_rows ? 1 : 0);
    for (int i1 = start_row; i1 < end_row; i1++) {
        for (int i2 = 1; i2 < _PB_N; i2++) {
            X[i1 * N + i2] = X[i1 * N + i2] - X[i1 * N + (i2 - 1)] * A[i1 * N + i2] / B[i1 * N + (i2 - 1)];
            B[i1 * N + i2] = B[i1 * N + i2] - A[i1 * N + i2] * A[i1 * N + i2] / B[i1 * N + (i2 - 1)];
        }
    }
}

__global__ void adi_kernel2(int n, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int rows_per_thread = _PB_N / total_threads;
    int extra_rows = _PB_N % total_threads;
    int start_row = thread_id * rows_per_thread + (thread_id < extra_rows ? thread_id : extra_rows);
    int end_row = start_row + rows_per_thread + (thread_id < extra_rows ? 1 : 0);
    for (int i1 = start_row; i1 < end_row; i1++) {
        X[i1 * N + (N - 1)] = X[i1 * N + (N - 1)] / B[i1 * N + (N - 1)];
    }
}

__global__ void adi_kernel3(int n, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int rows_per_thread = _PB_N / total_threads;
    int extra_rows = _PB_N % total_threads;
    int start_row = thread_id * rows_per_thread + (thread_id < extra_rows ? thread_id : extra_rows);
    int end_row = start_row + rows_per_thread + (thread_id < extra_rows ? 1 : 0);
    for (int i1 = start_row; i1 < end_row; i1++) {
        for (int i2 = 0; i2 < _PB_N - 2; i2++) {
            X[i1 * N + (N - i2 - 2)] =
                (X[i1 * N + (N - i2 - 2)] - X[i1 * N + (N - i2 - 3)] * A[i1 * N + (N - i2 - 3)]) /
                B[i1 * N + (N - i2 - 3)];
        }
    }
}

__global__ void adi_kernel4(int n, int i1, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int cols_per_thread = _PB_N / total_threads;
    int extra_cols = _PB_N % total_threads;
    int start_col = thread_id * cols_per_thread + (thread_id < extra_cols ? thread_id : extra_cols);
    int end_col = start_col + cols_per_thread + (thread_id < extra_cols ? 1 : 0);
    for (int i2 = start_col; i2 < end_col; i2++) {
        X[i1 * N + i2] = X[i1 * N + i2] - X[(i1 - 1) * N + i2] * A[i1 * N + i2] / B[(i1 - 1) * N + i2];
        B[i1 * N + i2] = B[i1 * N + i2] - A[i1 * N + i2] * A[i1 * N + i2] / B[(i1 - 1) * N + i2];
    }
}

__global__ void adi_kernel5(int n, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int cols_per_thread = _PB_N / total_threads;
    int extra_cols = _PB_N % total_threads;
    int start_col = thread_id * cols_per_thread + (thread_id < extra_cols ? thread_id : extra_cols);
    int end_col = start_col + cols_per_thread + (thread_id < extra_cols ? 1 : 0);
    for (int i2 = start_col; i2 < end_col; i2++) {
        X[(N - 1) * N + i2] = X[(N - 1) * N + i2] / B[(N - 1) * N + i2];
    }
}

__global__ void adi_kernel6(int n, int i1, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int cols_per_thread = _PB_N / total_threads;
    int extra_cols = _PB_N % total_threads;
    int start_col = thread_id * cols_per_thread + (thread_id < extra_cols ? thread_id : extra_cols);
    int end_col = start_col + cols_per_thread + (thread_id < extra_cols ? 1 : 0);
    for (int i2 = start_col; i2 < end_col; i2++) {
        X[(N - 2 - i1) * N + i2] =
            (X[(N - 2 - i1) * N + i2] - X[(N - i1 - 3) * N + i2] * A[(N - 3 - i1) * N + i2]) / B[(N - 2 - i1) * N + i2];
    }
}

#ifdef MINI_DATASET
__global__ void adi_kernel1_cache(int n, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int rows_per_thread = _PB_N / total_threads;
    int extra_rows = _PB_N % total_threads;
    int start_row = thread_id * rows_per_thread + (thread_id < extra_rows ? thread_id : extra_rows);
    int end_row = start_row + rows_per_thread + (thread_id < extra_rows ? 1 : 0);
    CACHEb_INIT(A, DATA_TYPE, &A[start_row * N], 0, (end_row - start_row) * N * sizeof(DATA_TYPE));
    CACHEb_INIT(B, DATA_TYPE, &B[start_row * N], 0, (end_row - start_row) * N * sizeof(DATA_TYPE));
    CACHEs_INIT(X, DATA_TYPE, X, 0, 13);
    DATA_TYPE tmp_A_i1_i2, tmp_B_i1_i2, tmp_B_i1_i2_1, tmp_X_i1_i2_1, tmp_X_i1_i2;
    for (int i1 = start_row; i1 < end_row; i1++) {
        for (int i2 = 1; i2 < _PB_N; i2++) {
            CACHEb_RD(A, &A[(i1 - start_row) * N + i2], tmp_A_i1_i2);
            CACHEb_RD(B, &B[(i1 - start_row) * N + i2], tmp_B_i1_i2);
            CACHEb_RD(B, &B[(i1 - start_row) * N + i2 - 1], tmp_B_i1_i2_1);
            CACHEs_RD(X, &X[i1 * N + i2 - 1], tmp_X_i1_i2_1);
            CACHEs_RD(X, &X[i1 * N + i2], tmp_X_i1_i2);
            tmp_X_i1_i2 = tmp_X_i1_i2 - tmp_X_i1_i2_1 * tmp_A_i1_i2 / tmp_B_i1_i2_1;
            tmp_B_i1_i2 = tmp_B_i1_i2 - tmp_A_i1_i2 * tmp_A_i1_i2 / tmp_B_i1_i2_1;
            CACHEb_WT(B, &B[(i1 - start_row) * N + i2], tmp_B_i1_i2);
            CACHEs_WT(X, &X[i1 * N + i2], tmp_X_i1_i2);
        }
    }
    CACHEb_FLUSH(B);
    CACHEs_FLUSH(X);
    CACHEb_INVALID(A);
}

__global__ void adi_kernel2_cache(int n, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int rows_per_thread = _PB_N / total_threads;
    int extra_rows = _PB_N % total_threads;
    int start_row = thread_id * rows_per_thread + (thread_id < extra_rows ? thread_id : extra_rows);
    int end_row = start_row + rows_per_thread + (thread_id < extra_rows ? 1 : 0);
    CACHEb_INIT(X, DATA_TYPE, &X[start_row * N], 0, (end_row - start_row) * N * sizeof(DATA_TYPE));
    CACHEb_INIT(B, DATA_TYPE, &B[start_row * N], 0, (end_row - start_row) * N * sizeof(DATA_TYPE));
    DATA_TYPE tmp_X_i1_N_1, tmp_B_i1_N_1;
    for (int i1 = start_row; i1 < end_row; i1++) {
        CACHEb_RD(X, &X[(i1 - start_row) * N + N - 1], tmp_X_i1_N_1);
        CACHEb_RD(B, &B[(i1 - start_row) * N + N - 1], tmp_B_i1_N_1);
        tmp_X_i1_N_1 = tmp_X_i1_N_1 / tmp_B_i1_N_1;
        CACHEb_WT(X, &X[(i1 - start_row) * N + N - 1], tmp_X_i1_N_1);
    }
    CACHEb_FLUSH(X);
    CACHEb_INVALID(B);
}

__global__ void adi_kernel3_cache(int n, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int rows_per_thread = _PB_N / total_threads;
    int extra_rows = _PB_N % total_threads;
    int start_row = thread_id * rows_per_thread + (thread_id < extra_rows ? thread_id : extra_rows);
    int end_row = start_row + rows_per_thread + (thread_id < extra_rows ? 1 : 0);
    CACHEb_INIT(X, DATA_TYPE, &X[start_row * N], 0, (end_row - start_row) * N * sizeof(DATA_TYPE));
    CACHEs_INIT(B, DATA_TYPE, B, 0, 14);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 14);
    DATA_TYPE tmp_X_i1_i2_2, tmp_X_i1_i2_3, tmp_A_i1_i2_3, tmp_B_i1_i2_3;
    for (int i1 = start_row; i1 < end_row; i1++) {
        for (int i2 = 0; i2 < _PB_N - 2; i2++) {
            CACHEb_RD(X, &X[(i1 - start_row) * N + (N - i2 - 2)], tmp_X_i1_i2_2);
            CACHEb_RD(X, &X[(i1 - start_row) * N + (N - i2 - 3)], tmp_X_i1_i2_3);
            CACHEs_RD(A, &A[i1 * N + (N - i2 - 3)], tmp_A_i1_i2_3);
            CACHEb_RD(B, &B[i1 * N + (N - i2 - 3)], tmp_B_i1_i2_3);
            tmp_X_i1_i2_2 = (tmp_X_i1_i2_2 - tmp_X_i1_i2_3 * tmp_A_i1_i2_3) / tmp_B_i1_i2_3;
            CACHEb_WT(X, &X[(i1 - start_row) * N + (N - i2 - 2)], tmp_X_i1_i2_2);
        }
    }
    CACHEb_FLUSH(X);
    CACHEs_INVALID(A);
    CACHEs_INVALID(B);
}

__global__ void adi_kernel4_cache(int n, int i1, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int cols_per_thread = _PB_N / total_threads;
    int extra_cols = _PB_N % total_threads;
    int start_col = thread_id * cols_per_thread + (thread_id < extra_cols ? thread_id : extra_cols);
    int end_col = start_col + cols_per_thread + (thread_id < extra_cols ? 1 : 0);
    DATA_TYPE *X_p = X;
    DATA_TYPE *B_p = B;
    CACHEb_INIT(X, DATA_TYPE, &X[(i1 - 1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    CACHEb_INIT(B, DATA_TYPE, &B[(i1 - 1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    CACHEb_INIT(A, DATA_TYPE, &A[i1 * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_X_i1_1_i2, tmp_B_i1_i2_1, tmp_A_i1_i2;
    for (int i2 = start_col; i2 < end_col; i2++) {
        CACHEb_RD(X, &X[i2 - start_col], tmp_X_i1_1_i2);
        CACHEb_RD(B, &B[i2 - start_col], tmp_B_i1_i2_1);
        CACHEb_RD(A, &A[i2 - start_col], tmp_A_i1_i2);
        X_p[i1 * N + i2] = X_p[i1 * N + i2] - tmp_X_i1_1_i2 * tmp_A_i1_i2 / tmp_B_i1_i2_1;
        B_p[i1 * N + i2] = B_p[i1 * N + i2] - tmp_A_i1_i2 * tmp_A_i1_i2 / tmp_B_i1_i2_1;
    }
    CACHEb_INVALID(X);
    CACHEb_INVALID(B);
    CACHEb_INVALID(A);
}

__global__ void adi_kernel5_cache(int n, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int cols_per_thread = _PB_N / total_threads;
    int extra_cols = _PB_N % total_threads;
    int start_col = thread_id * cols_per_thread + (thread_id < extra_cols ? thread_id : extra_cols);
    int end_col = start_col + cols_per_thread + (thread_id < extra_cols ? 1 : 0);
    CACHEb_INIT(B, DATA_TYPE, &B[(N - 1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    CACHEb_INIT(X, DATA_TYPE, &X[(N - 1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_B_N_1_i2, tmp_X_N_1_i2;
    for (int i2 = start_col; i2 < end_col; i2++) {
        CACHEb_RD(B, &B[i2 - start_col], tmp_B_N_1_i2);
        CACHEb_RD(X, &X[i2 - start_col], tmp_X_N_1_i2);
        tmp_X_N_1_i2 = tmp_X_N_1_i2 / tmp_B_N_1_i2;
        CACHEb_WT(X, &X[i2 - start_col], tmp_X_N_1_i2);
    }
    CACHEb_INVALID(B);
    CACHEb_FLUSH(X);
}

__global__ void adi_kernel6_cache(int n, int i1, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int cols_per_thread = _PB_N / total_threads;
    int extra_cols = _PB_N % total_threads;
    int start_col = thread_id * cols_per_thread + (thread_id < extra_cols ? thread_id : extra_cols);
    int end_col = start_col + cols_per_thread + (thread_id < extra_cols ? 1 : 0);
    DATA_TYPE *X_p = X;
    CACHEb_INIT(B, DATA_TYPE, &B[(N - 2 - i1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    CACHEb_INIT(A, DATA_TYPE, &A[(N - 3 - i1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    CACHEb_INIT(X, DATA_TYPE, &X[(N - 3 - i1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_B_N_2_i2, tmp_X_N_3_i2, tmp_A_N_3_i2;
    for (int i2 = start_col; i2 < end_col; i2++) {
        CACHEb_RD(B, &B[i2 - start_col], tmp_B_N_2_i2);
        CACHEb_RD(A, &A[i2 - start_col], tmp_A_N_3_i2);
        CACHEb_RD(X, &X[i2 - start_col], tmp_X_N_3_i2);
        X_p[(N - 2 - i1) * N + i2] = (X_p[(N - 2 - i1) * N + i2] - tmp_X_N_3_i2 * tmp_A_N_3_i2) / tmp_B_N_2_i2;
    }
    CACHEb_INVALID(B);
    CACHEb_INVALID(A);
    CACHEb_INVALID(X);
}
#endif

#ifdef SMALL_DATASET

__global__ void adi_kernel1_cache(int n, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int rows_per_thread = _PB_N / total_threads;
    int extra_rows = _PB_N % total_threads;
    int start_row = thread_id * rows_per_thread + (thread_id < extra_rows ? thread_id : extra_rows);
    int end_row = start_row + rows_per_thread + (thread_id < extra_rows ? 1 : 0);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 14);
    CACHEs_INIT(B, DATA_TYPE, B, 0, 14);
    CACHEs_INIT(X, DATA_TYPE, X, 0, 13);
    DATA_TYPE tmp_A;
    DATA_TYPE tmp_B1, tmp_B2;
    DATA_TYPE tmp_X1, tmp_X2;
    for (int i1 = start_row; i1 < end_row; i1++) {
        for (int i2 = 1; i2 < _PB_N; i2++) {
            CACHEs_RD(A, &A[i1 * N + i2], tmp_A);
            CACHEs_RD(B, &B[i1 * N + i2], tmp_B1);
            CACHEs_RD(X, &X[i1 * N + i2], tmp_X1);
            CACHEs_RD(B, &B[i1 * N + i2 - 1], tmp_B2);
            CACHEs_RD(X, &X[i1 * N + i2 - 1], tmp_X2);
            tmp_X1 = tmp_X1 - tmp_X2 * tmp_A / tmp_B2;
            tmp_B1 = tmp_B1 - tmp_A * tmp_A / tmp_B2;
            CACHEs_WT(X, &X[i1 * N + i2], tmp_X1);
            CACHEs_WT(B, &B[i1 * N + i2], tmp_B1);
        }
    }
    CACHEs_INVALID(A);
    CACHEs_FLUSH(B);
    CACHEs_FLUSH(X);
}

__global__ void adi_kernel2_cache(int n, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int rows_per_thread = _PB_N / total_threads;
    int extra_rows = _PB_N % total_threads;
    int start_row = thread_id * rows_per_thread + (thread_id < extra_rows ? thread_id : extra_rows);
    int end_row = start_row + rows_per_thread + (thread_id < extra_rows ? 1 : 0);
    CACHEs_INIT(X, DATA_TYPE, X, 0, 15);
    DATA_TYPE tmp_X_i1_N_1;
    for (int i1 = start_row; i1 < end_row; i1++) {
        CACHEs_RD(X, &X[i1 * N + (N - 1)], tmp_X_i1_N_1);
        tmp_X_i1_N_1 = tmp_X_i1_N_1 / B[i1 * N + (N - 1)];
        CACHEs_WT(X, &X[i1 * N + (N - 1)], tmp_X_i1_N_1);
    }
    CACHEs_FLUSH(X);
}

__global__ void adi_kernel3_cache(int n, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int rows_per_thread = _PB_N / total_threads;
    int extra_rows = _PB_N % total_threads;
    int start_row = thread_id * rows_per_thread + (thread_id < extra_rows ? thread_id : extra_rows);
    int end_row = start_row + rows_per_thread + (thread_id < extra_rows ? 1 : 0);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 12);
    CACHEs_INIT(B, DATA_TYPE, B, 0, 12);
    CACHEs_INIT(X, DATA_TYPE, X, 0, 14);
    DATA_TYPE tmp_A;
    DATA_TYPE tmp_B1;
    DATA_TYPE tmp_X1, tmp_X2;
    for (int i1 = start_row; i1 < end_row; i1++) {
        for (int i2 = 1; i2 < _PB_N; i2++) {
            CACHEs_RD(A, &A[i1 * N + (N - i2 - 3)], tmp_A);
            CACHEs_RD(B, &B[i1 * N + (N - i2 - 3)], tmp_B1);
            CACHEs_RD(X, &X[i1 * N + (N - i2 - 2)], tmp_X1);
            CACHEs_RD(X, &X[i1 * N + (N - i2 - 3)], tmp_X2);
            tmp_X1 = (tmp_X1 - tmp_X2 * tmp_A) / tmp_B1;
            CACHEs_WT(X, &X[i1 * N + (N - i2 - 2)], tmp_X1);
        }
    }
    CACHEs_FLUSH(X);
    CACHEs_INVALID(A);
    CACHEs_INVALID(B);
}

__global__ void adi_kernel4_cache(int n, int i1, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int cols_per_thread = _PB_N / total_threads;
    int extra_cols = _PB_N % total_threads;
    int start_col = thread_id * cols_per_thread + (thread_id < extra_cols ? thread_id : extra_cols);
    int end_col = start_col + cols_per_thread + (thread_id < extra_cols ? 1 : 0);
    DATA_TYPE *X_p = X;
    DATA_TYPE *B_p = B;
    CACHEb_INIT(X, DATA_TYPE, &X[(i1 - 1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    CACHEb_INIT(B, DATA_TYPE, &B[(i1 - 1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    CACHEb_INIT(A, DATA_TYPE, &A[i1 * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_X_i1_1_i2, tmp_B_i1_i2_1, tmp_A_i1_i2;
    for (int i2 = start_col; i2 < end_col; i2++) {
        CACHEb_RD(X, &X[i2 - start_col], tmp_X_i1_1_i2);
        CACHEb_RD(B, &B[i2 - start_col], tmp_B_i1_i2_1);
        CACHEb_RD(A, &A[i2 - start_col], tmp_A_i1_i2);
        X_p[i1 * N + i2] = X_p[i1 * N + i2] - tmp_X_i1_1_i2 * tmp_A_i1_i2 / tmp_B_i1_i2_1;
        B_p[i1 * N + i2] = B_p[i1 * N + i2] - tmp_A_i1_i2 * tmp_A_i1_i2 / tmp_B_i1_i2_1;
    }
    CACHEb_INVALID(X);
    CACHEb_INVALID(B);
    CACHEb_INVALID(A);
}

__global__ void adi_kernel5_cache(int n, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int cols_per_thread = _PB_N / total_threads;
    int extra_cols = _PB_N % total_threads;
    int start_col = thread_id * cols_per_thread + (thread_id < extra_cols ? thread_id : extra_cols);
    int end_col = start_col + cols_per_thread + (thread_id < extra_cols ? 1 : 0);
    CACHEb_INIT(B, DATA_TYPE, &B[(N - 1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    CACHEb_INIT(X, DATA_TYPE, &X[(N - 1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_B_N_1_i2, tmp_X_N_1_i2;
    for (int i2 = start_col; i2 < end_col; i2++) {
        CACHEb_RD(B, &B[i2 - start_col], tmp_B_N_1_i2);
        CACHEb_RD(X, &X[i2 - start_col], tmp_X_N_1_i2);
        tmp_X_N_1_i2 = tmp_X_N_1_i2 / tmp_B_N_1_i2;
        CACHEb_WT(X, &X[i2 - start_col], tmp_X_N_1_i2);
    }
    CACHEb_INVALID(B);
    CACHEb_FLUSH(X);
}

__global__ void adi_kernel6_cache(int n, int i1, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int cols_per_thread = _PB_N / total_threads;
    int extra_cols = _PB_N % total_threads;
    int start_col = thread_id * cols_per_thread + (thread_id < extra_cols ? thread_id : extra_cols);
    int end_col = start_col + cols_per_thread + (thread_id < extra_cols ? 1 : 0);
    DATA_TYPE *X_p = X;
    CACHEb_INIT(B, DATA_TYPE, &B[(N - 2 - i1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    CACHEb_INIT(A, DATA_TYPE, &A[(N - 3 - i1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    CACHEb_INIT(X, DATA_TYPE, &X[(N - 3 - i1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_B_N_2_i2, tmp_X_N_3_i2, tmp_A_N_3_i2;
    for (int i2 = start_col; i2 < end_col; i2++) {
        CACHEb_RD(B, &B[i2 - start_col], tmp_B_N_2_i2);
        CACHEb_RD(A, &A[i2 - start_col], tmp_A_N_3_i2);
        CACHEb_RD(X, &X[i2 - start_col], tmp_X_N_3_i2);
        X_p[(N - 2 - i1) * N + i2] = (X_p[(N - 2 - i1) * N + i2] - tmp_X_N_3_i2 * tmp_A_N_3_i2) / tmp_B_N_2_i2;
    }
    CACHEb_INVALID(B);
    CACHEb_INVALID(A);
    CACHEb_INVALID(X);
}

#endif

#ifdef STANDARD_DATASET /* Default if unspecified. */

__global__ void adi_kernel1_cache(int n, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int rows_per_thread = _PB_N / total_threads;
    int extra_rows = _PB_N % total_threads;
    int start_row = thread_id * rows_per_thread + (thread_id < extra_rows ? thread_id : extra_rows);
    int end_row = start_row + rows_per_thread + (thread_id < extra_rows ? 1 : 0);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 14);
    CACHEs_INIT(B, DATA_TYPE, B, 0, 14);
    CACHEs_INIT(X, DATA_TYPE, X, 0, 13);
    DATA_TYPE tmp_A;
    DATA_TYPE tmp_B1, tmp_B2;
    DATA_TYPE tmp_X1, tmp_X2;
    for (int i1 = start_row; i1 < end_row; i1++) {
        for (int i2 = 1; i2 < _PB_N; i2++) {
            CACHEs_RD(A, &A[i1 * N + i2], tmp_A);
            CACHEs_RD(B, &B[i1 * N + i2], tmp_B1);
            CACHEs_RD(X, &X[i1 * N + i2], tmp_X1);
            CACHEs_RD(B, &B[i1 * N + i2 - 1], tmp_B2);
            CACHEs_RD(X, &X[i1 * N + i2 - 1], tmp_X2);
            tmp_X1 = tmp_X1 - tmp_X2 * tmp_A / tmp_B2;
            tmp_B1 = tmp_B1 - tmp_A * tmp_A / tmp_B2;
            CACHEs_WT(X, &X[i1 * N + i2], tmp_X1);
            CACHEs_WT(B, &B[i1 * N + i2], tmp_B1);
        }
    }
    CACHEs_INVALID(A);
    CACHEs_FLUSH(B);
    CACHEs_FLUSH(X);
}

__global__ void adi_kernel2_cache(int n, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int rows_per_thread = _PB_N / total_threads;
    int extra_rows = _PB_N % total_threads;
    int start_row = thread_id * rows_per_thread + (thread_id < extra_rows ? thread_id : extra_rows);
    int end_row = start_row + rows_per_thread + (thread_id < extra_rows ? 1 : 0);
    CACHEs_INIT(X, DATA_TYPE, X, 0, 15);
    DATA_TYPE tmp_X_i1_N_1;
    for (int i1 = start_row; i1 < end_row; i1++) {
        CACHEs_RD(X, &X[i1 * N + (N - 1)], tmp_X_i1_N_1);
        tmp_X_i1_N_1 = tmp_X_i1_N_1 / B[i1 * N + (N - 1)];
        CACHEs_WT(X, &X[i1 * N + (N - 1)], tmp_X_i1_N_1);
    }
    CACHEs_FLUSH(X);
}

__global__ void adi_kernel3_cache(int n, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int rows_per_thread = _PB_N / total_threads;
    int extra_rows = _PB_N % total_threads;
    int start_row = thread_id * rows_per_thread + (thread_id < extra_rows ? thread_id : extra_rows);
    int end_row = start_row + rows_per_thread + (thread_id < extra_rows ? 1 : 0);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 12);
    CACHEs_INIT(B, DATA_TYPE, B, 0, 12);
    CACHEs_INIT(X, DATA_TYPE, X, 0, 14);
    DATA_TYPE tmp_A;
    DATA_TYPE tmp_B1;
    DATA_TYPE tmp_X1, tmp_X2;
    for (int i1 = start_row; i1 < end_row; i1++) {
        for (int i2 = 1; i2 < _PB_N; i2++) {
            CACHEs_RD(A, &A[i1 * N + (N - i2 - 3)], tmp_A);
            CACHEs_RD(B, &B[i1 * N + (N - i2 - 3)], tmp_B1);
            CACHEs_RD(X, &X[i1 * N + (N - i2 - 2)], tmp_X1);
            CACHEs_RD(X, &X[i1 * N + (N - i2 - 3)], tmp_X2);
            tmp_X1 = (tmp_X1 - tmp_X2 * tmp_A) / tmp_B1;
            CACHEs_WT(X, &X[i1 * N + (N - i2 - 2)], tmp_X1);
        }
    }
    CACHEs_FLUSH(X);
    CACHEs_INVALID(A);
    CACHEs_INVALID(B);
}

__global__ void adi_kernel4_cache(int n, int i1, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int cols_per_thread = _PB_N / total_threads;
    int extra_cols = _PB_N % total_threads;
    int start_col = thread_id * cols_per_thread + (thread_id < extra_cols ? thread_id : extra_cols);
    int end_col = start_col + cols_per_thread + (thread_id < extra_cols ? 1 : 0);
    DATA_TYPE *X_p = X;
    DATA_TYPE *B_p = B;
    CACHEb_INIT(X, DATA_TYPE, &X[(i1 - 1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    CACHEb_INIT(B, DATA_TYPE, &B[(i1 - 1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    CACHEb_INIT(A, DATA_TYPE, &A[i1 * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_X_i1_1_i2, tmp_B_i1_i2_1, tmp_A_i1_i2;
    for (int i2 = start_col; i2 < end_col; i2++) {
        CACHEb_RD(X, &X[i2 - start_col], tmp_X_i1_1_i2);
        CACHEb_RD(B, &B[i2 - start_col], tmp_B_i1_i2_1);
        CACHEb_RD(A, &A[i2 - start_col], tmp_A_i1_i2);
        X_p[i1 * N + i2] = X_p[i1 * N + i2] - tmp_X_i1_1_i2 * tmp_A_i1_i2 / tmp_B_i1_i2_1;
        B_p[i1 * N + i2] = B_p[i1 * N + i2] - tmp_A_i1_i2 * tmp_A_i1_i2 / tmp_B_i1_i2_1;
    }
    CACHEb_INVALID(X);
    CACHEb_INVALID(B);
    CACHEb_INVALID(A);
}

__global__ void adi_kernel5_cache(int n, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int cols_per_thread = _PB_N / total_threads;
    int extra_cols = _PB_N % total_threads;
    int start_col = thread_id * cols_per_thread + (thread_id < extra_cols ? thread_id : extra_cols);
    int end_col = start_col + cols_per_thread + (thread_id < extra_cols ? 1 : 0);
    CACHEb_INIT(B, DATA_TYPE, &B[(N - 1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    CACHEb_INIT(X, DATA_TYPE, &X[(N - 1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_B_N_1_i2, tmp_X_N_1_i2;
    for (int i2 = start_col; i2 < end_col; i2++) {
        CACHEb_RD(B, &B[i2 - start_col], tmp_B_N_1_i2);
        CACHEb_RD(X, &X[i2 - start_col], tmp_X_N_1_i2);
        tmp_X_N_1_i2 = tmp_X_N_1_i2 / tmp_B_N_1_i2;
        CACHEb_WT(X, &X[i2 - start_col], tmp_X_N_1_i2);
    }
    CACHEb_INVALID(B);
    CACHEb_FLUSH(X);
}

__global__ void adi_kernel6_cache(int n, int i1, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int cols_per_thread = _PB_N / total_threads;
    int extra_cols = _PB_N % total_threads;
    int start_col = thread_id * cols_per_thread + (thread_id < extra_cols ? thread_id : extra_cols);
    int end_col = start_col + cols_per_thread + (thread_id < extra_cols ? 1 : 0);
    DATA_TYPE *X_p = X;
    CACHEb_INIT(B, DATA_TYPE, &B[(N - 2 - i1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    CACHEb_INIT(A, DATA_TYPE, &A[(N - 3 - i1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    CACHEb_INIT(X, DATA_TYPE, &X[(N - 3 - i1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_B_N_2_i2, tmp_X_N_3_i2, tmp_A_N_3_i2;
    for (int i2 = start_col; i2 < end_col; i2++) {
        CACHEb_RD(B, &B[i2 - start_col], tmp_B_N_2_i2);
        CACHEb_RD(A, &A[i2 - start_col], tmp_A_N_3_i2);
        CACHEb_RD(X, &X[i2 - start_col], tmp_X_N_3_i2);
        X_p[(N - 2 - i1) * N + i2] = (X_p[(N - 2 - i1) * N + i2] - tmp_X_N_3_i2 * tmp_A_N_3_i2) / tmp_B_N_2_i2;
    }
    CACHEb_INVALID(B);
    CACHEb_INVALID(A);
    CACHEb_INVALID(X);
}

#endif

#ifdef LARGE_DATASET

__global__ void adi_kernel1_cache(int n, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int rows_per_thread = _PB_N / total_threads;
    int extra_rows = _PB_N % total_threads;
    int start_row = thread_id * rows_per_thread + (thread_id < extra_rows ? thread_id : extra_rows);
    int end_row = start_row + rows_per_thread + (thread_id < extra_rows ? 1 : 0);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 14);
    CACHEs_INIT(B, DATA_TYPE, B, 0, 14);
    CACHEs_INIT(X, DATA_TYPE, X, 0, 13);
    DATA_TYPE tmp_A;
    DATA_TYPE tmp_B1, tmp_B2;
    DATA_TYPE tmp_X1, tmp_X2;
    for (int i1 = start_row; i1 < end_row; i1++) {
        for (int i2 = 1; i2 < _PB_N; i2++) {
            CACHEs_RD(A, &A[i1 * N + i2], tmp_A);
            CACHEs_RD(B, &B[i1 * N + i2], tmp_B1);
            CACHEs_RD(X, &X[i1 * N + i2], tmp_X1);
            CACHEs_RD(B, &B[i1 * N + i2 - 1], tmp_B2);
            CACHEs_RD(X, &X[i1 * N + i2 - 1], tmp_X2);
            tmp_X1 = tmp_X1 - tmp_X2 * tmp_A / tmp_B2;
            tmp_B1 = tmp_B1 - tmp_A * tmp_A / tmp_B2;
            CACHEs_WT(X, &X[i1 * N + i2], tmp_X1);
            CACHEs_WT(B, &B[i1 * N + i2], tmp_B1);
        }
    }
    CACHEs_INVALID(A);
    CACHEs_FLUSH(B);
    CACHEs_FLUSH(X);
}

__global__ void adi_kernel2_cache(int n, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int rows_per_thread = _PB_N / total_threads;
    int extra_rows = _PB_N % total_threads;
    int start_row = thread_id * rows_per_thread + (thread_id < extra_rows ? thread_id : extra_rows);
    int end_row = start_row + rows_per_thread + (thread_id < extra_rows ? 1 : 0);
    CACHEs_INIT(X, DATA_TYPE, X, 0, 15);
    DATA_TYPE tmp_X_i1_N_1;
    for (int i1 = start_row; i1 < end_row; i1++) {
        CACHEs_RD(X, &X[i1 * N + (N - 1)], tmp_X_i1_N_1);
        tmp_X_i1_N_1 = tmp_X_i1_N_1 / B[i1 * N + (N - 1)];
        CACHEs_WT(X, &X[i1 * N + (N - 1)], tmp_X_i1_N_1);
    }
    CACHEs_FLUSH(X);
}

__global__ void adi_kernel3_cache(int n, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int rows_per_thread = _PB_N / total_threads;
    int extra_rows = _PB_N % total_threads;
    int start_row = thread_id * rows_per_thread + (thread_id < extra_rows ? thread_id : extra_rows);
    int end_row = start_row + rows_per_thread + (thread_id < extra_rows ? 1 : 0);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 12);
    CACHEs_INIT(B, DATA_TYPE, B, 0, 12);
    CACHEs_INIT(X, DATA_TYPE, X, 0, 14);
    DATA_TYPE tmp_A;
    DATA_TYPE tmp_B1;
    DATA_TYPE tmp_X1, tmp_X2;
    for (int i1 = start_row; i1 < end_row; i1++) {
        for (int i2 = 1; i2 < _PB_N; i2++) {
            CACHEs_RD(A, &A[i1 * N + (N - i2 - 3)], tmp_A);
            CACHEs_RD(B, &B[i1 * N + (N - i2 - 3)], tmp_B1);
            CACHEs_RD(X, &X[i1 * N + (N - i2 - 2)], tmp_X1);
            CACHEs_RD(X, &X[i1 * N + (N - i2 - 3)], tmp_X2);
            tmp_X1 = (tmp_X1 - tmp_X2 * tmp_A) / tmp_B1;
            CACHEs_WT(X, &X[i1 * N + (N - i2 - 2)], tmp_X1);
        }
    }
    CACHEs_FLUSH(X);
    CACHEs_INVALID(A);
    CACHEs_INVALID(B);
}

__global__ void adi_kernel4_cache(int n, int i1, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int cols_per_thread = _PB_N / total_threads;
    int extra_cols = _PB_N % total_threads;
    int start_col = thread_id * cols_per_thread + (thread_id < extra_cols ? thread_id : extra_cols);
    int end_col = start_col + cols_per_thread + (thread_id < extra_cols ? 1 : 0);
    DATA_TYPE *X_p = X;
    DATA_TYPE *B_p = B;
    CACHEb_INIT(X, DATA_TYPE, &X[(i1 - 1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    CACHEb_INIT(B, DATA_TYPE, &B[(i1 - 1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    CACHEb_INIT(A, DATA_TYPE, &A[i1 * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_X_i1_1_i2, tmp_B_i1_i2_1, tmp_A_i1_i2;
    for (int i2 = start_col; i2 < end_col; i2++) {
        CACHEb_RD(X, &X[i2 - start_col], tmp_X_i1_1_i2);
        CACHEb_RD(B, &B[i2 - start_col], tmp_B_i1_i2_1);
        CACHEb_RD(A, &A[i2 - start_col], tmp_A_i1_i2);
        X_p[i1 * N + i2] = X_p[i1 * N + i2] - tmp_X_i1_1_i2 * tmp_A_i1_i2 / tmp_B_i1_i2_1;
        B_p[i1 * N + i2] = B_p[i1 * N + i2] - tmp_A_i1_i2 * tmp_A_i1_i2 / tmp_B_i1_i2_1;
    }
    CACHEb_INVALID(X);
    CACHEb_INVALID(B);
    CACHEb_INVALID(A);
}

__global__ void adi_kernel5_cache(int n, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int cols_per_thread = _PB_N / total_threads;
    int extra_cols = _PB_N % total_threads;
    int start_col = thread_id * cols_per_thread + (thread_id < extra_cols ? thread_id : extra_cols);
    int end_col = start_col + cols_per_thread + (thread_id < extra_cols ? 1 : 0);
    CACHEb_INIT(B, DATA_TYPE, &B[(N - 1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    CACHEb_INIT(X, DATA_TYPE, &X[(N - 1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_B_N_1_i2, tmp_X_N_1_i2;
    for (int i2 = start_col; i2 < end_col; i2++) {
        CACHEb_RD(B, &B[i2 - start_col], tmp_B_N_1_i2);
        CACHEb_RD(X, &X[i2 - start_col], tmp_X_N_1_i2);
        tmp_X_N_1_i2 = tmp_X_N_1_i2 / tmp_B_N_1_i2;
        CACHEb_WT(X, &X[i2 - start_col], tmp_X_N_1_i2);
    }
    CACHEb_INVALID(B);
    CACHEb_FLUSH(X);
}

__global__ void adi_kernel6_cache(int n, int i1, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int cols_per_thread = _PB_N / total_threads;
    int extra_cols = _PB_N % total_threads;
    int start_col = thread_id * cols_per_thread + (thread_id < extra_cols ? thread_id : extra_cols);
    int end_col = start_col + cols_per_thread + (thread_id < extra_cols ? 1 : 0);
    DATA_TYPE *X_p = X;
    CACHEb_INIT(B, DATA_TYPE, &B[(N - 2 - i1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    CACHEb_INIT(A, DATA_TYPE, &A[(N - 3 - i1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    CACHEb_INIT(X, DATA_TYPE, &X[(N - 3 - i1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_B_N_2_i2, tmp_X_N_3_i2, tmp_A_N_3_i2;
    for (int i2 = start_col; i2 < end_col; i2++) {
        CACHEb_RD(B, &B[i2 - start_col], tmp_B_N_2_i2);
        CACHEb_RD(A, &A[i2 - start_col], tmp_A_N_3_i2);
        CACHEb_RD(X, &X[i2 - start_col], tmp_X_N_3_i2);
        X_p[(N - 2 - i1) * N + i2] = (X_p[(N - 2 - i1) * N + i2] - tmp_X_N_3_i2 * tmp_A_N_3_i2) / tmp_B_N_2_i2;
    }
    CACHEb_INVALID(B);
    CACHEb_INVALID(A);
    CACHEb_INVALID(X);
}

#endif

#ifdef EXTRALARGE_DATASET
__global__ void adi_kernel1_cache(int n, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int rows_per_thread = _PB_N / total_threads;
    int extra_rows = _PB_N % total_threads;
    int start_row = thread_id * rows_per_thread + (thread_id < extra_rows ? thread_id : extra_rows);
    int end_row = start_row + rows_per_thread + (thread_id < extra_rows ? 1 : 0);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 14);
    CACHEs_INIT(B, DATA_TYPE, B, 0, 14);
    CACHEs_INIT(X, DATA_TYPE, X, 0, 13);
    DATA_TYPE tmp_A;
    DATA_TYPE tmp_B1, tmp_B2;
    DATA_TYPE tmp_X1, tmp_X2;
    for (int i1 = start_row; i1 < end_row; i1++) {
        for (int i2 = 1; i2 < _PB_N; i2++) {
            CACHEs_RD(A, &A[i1 * N + i2], tmp_A);
            CACHEs_RD(B, &B[i1 * N + i2], tmp_B1);
            CACHEs_RD(X, &X[i1 * N + i2], tmp_X1);
            CACHEs_RD(B, &B[i1 * N + i2 - 1], tmp_B2);
            CACHEs_RD(X, &X[i1 * N + i2 - 1], tmp_X2);
            tmp_X1 = tmp_X1 - tmp_X2 * tmp_A / tmp_B2;
            tmp_B1 = tmp_B1 - tmp_A * tmp_A / tmp_B2;
            CACHEs_WT(X, &X[i1 * N + i2], tmp_X1);
            CACHEs_WT(B, &B[i1 * N + i2], tmp_B1);
        }
    }
    CACHEs_INVALID(A);
    CACHEs_FLUSH(B);
    CACHEs_FLUSH(X);
}

__global__ void adi_kernel2_cache(int n, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int rows_per_thread = _PB_N / total_threads;
    int extra_rows = _PB_N % total_threads;
    int start_row = thread_id * rows_per_thread + (thread_id < extra_rows ? thread_id : extra_rows);
    int end_row = start_row + rows_per_thread + (thread_id < extra_rows ? 1 : 0);
    CACHEs_INIT(X, DATA_TYPE, X, 0, 15);
    DATA_TYPE tmp_X_i1_N_1;
    for (int i1 = start_row; i1 < end_row; i1++) {
        CACHEs_RD(X, &X[i1 * N + (N - 1)], tmp_X_i1_N_1);
        tmp_X_i1_N_1 = tmp_X_i1_N_1 / B[i1 * N + (N - 1)];
        CACHEs_WT(X, &X[i1 * N + (N - 1)], tmp_X_i1_N_1);
    }
    CACHEs_FLUSH(X);
}

__global__ void adi_kernel3_cache(int n, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int rows_per_thread = _PB_N / total_threads;
    int extra_rows = _PB_N % total_threads;
    int start_row = thread_id * rows_per_thread + (thread_id < extra_rows ? thread_id : extra_rows);
    int end_row = start_row + rows_per_thread + (thread_id < extra_rows ? 1 : 0);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 12);
    CACHEs_INIT(B, DATA_TYPE, B, 0, 12);
    CACHEs_INIT(X, DATA_TYPE, X, 0, 14);
    DATA_TYPE tmp_A;
    DATA_TYPE tmp_B1;
    DATA_TYPE tmp_X1, tmp_X2;
    for (int i1 = start_row; i1 < end_row; i1++) {
        for (int i2 = 1; i2 < _PB_N; i2++) {
            CACHEs_RD(A, &A[i1 * N + (N - i2 - 3)], tmp_A);
            CACHEs_RD(B, &B[i1 * N + (N - i2 - 3)], tmp_B1);
            CACHEs_RD(X, &X[i1 * N + (N - i2 - 2)], tmp_X1);
            CACHEs_RD(X, &X[i1 * N + (N - i2 - 3)], tmp_X2);
            tmp_X1 = (tmp_X1 - tmp_X2 * tmp_A) / tmp_B1;
            CACHEs_WT(X, &X[i1 * N + (N - i2 - 2)], tmp_X1);
        }
    }
    CACHEs_FLUSH(X);
    CACHEs_INVALID(A);
    CACHEs_INVALID(B);
}

__global__ void adi_kernel4_cache(int n, int i1, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int cols_per_thread = _PB_N / total_threads;
    int extra_cols = _PB_N % total_threads;
    int start_col = thread_id * cols_per_thread + (thread_id < extra_cols ? thread_id : extra_cols);
    int end_col = start_col + cols_per_thread + (thread_id < extra_cols ? 1 : 0);
    DATA_TYPE *X_p = X;
    DATA_TYPE *B_p = B;
    CACHEs_INIT(X, DATA_TYPE, X, 0, 14);
    CACHEb_INIT(B, DATA_TYPE, &B[(i1 - 1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    CACHEb_INIT(A, DATA_TYPE, &A[i1 * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_X_i1_1_i2, tmp_B_i1_i2_1, tmp_A_i1_i2;
    for (int i2 = start_col; i2 < end_col; i2++) {
        CACHEs_RD(X, &X[(i1 - 1) * N + i2], tmp_X_i1_1_i2);
        CACHEb_RD(B, &B[i2 - start_col], tmp_B_i1_i2_1);
        CACHEb_RD(A, &A[i2 - start_col], tmp_A_i1_i2);
        X_p[i1 * N + i2] = X_p[i1 * N + i2] - tmp_X_i1_1_i2 * tmp_A_i1_i2 / tmp_B_i1_i2_1;
        B_p[i1 * N + i2] = B_p[i1 * N + i2] - tmp_A_i1_i2 * tmp_A_i1_i2 / tmp_B_i1_i2_1;
    }
    CACHEs_INVALID(X);
    CACHEb_INVALID(B);
    CACHEb_INVALID(A);
}

__global__ void adi_kernel5_cache(int n, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int cols_per_thread = _PB_N / total_threads;
    int extra_cols = _PB_N % total_threads;
    int start_col = thread_id * cols_per_thread + (thread_id < extra_cols ? thread_id : extra_cols);
    int end_col = start_col + cols_per_thread + (thread_id < extra_cols ? 1 : 0);
    CACHEb_INIT(B, DATA_TYPE, &B[(N - 1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    CACHEb_INIT(X, DATA_TYPE, &X[(N - 1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_B_N_1_i2, tmp_X_N_1_i2;
    for (int i2 = start_col; i2 < end_col; i2++) {
        CACHEb_RD(B, &B[i2 - start_col], tmp_B_N_1_i2);
        CACHEb_RD(X, &X[i2 - start_col], tmp_X_N_1_i2);
        tmp_X_N_1_i2 = tmp_X_N_1_i2 / tmp_B_N_1_i2;
        CACHEb_WT(X, &X[i2 - start_col], tmp_X_N_1_i2);
    }
    CACHEb_INVALID(B);
    CACHEb_FLUSH(X);
}

__global__ void adi_kernel6_cache(int n, int i1, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *X)
{
    int thread_id = get_thread_id();
    int total_threads = get_group_size();
    int cols_per_thread = _PB_N / total_threads;
    int extra_cols = _PB_N % total_threads;
    int start_col = thread_id * cols_per_thread + (thread_id < extra_cols ? thread_id : extra_cols);
    int end_col = start_col + cols_per_thread + (thread_id < extra_cols ? 1 : 0);
    DATA_TYPE *X_p = X;
    CACHEb_INIT(B, DATA_TYPE, &B[(N - 2 - i1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    CACHEb_INIT(A, DATA_TYPE, &A[(N - 3 - i1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    CACHEb_INIT(X, DATA_TYPE, &X[(N - 3 - i1) * N + start_col], 0, (end_col - start_col) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_B_N_2_i2, tmp_X_N_3_i2, tmp_A_N_3_i2;
    for (int i2 = start_col; i2 < end_col; i2++) {
        CACHEb_RD(B, &B[i2 - start_col], tmp_B_N_2_i2);
        CACHEb_RD(A, &A[i2 - start_col], tmp_A_N_3_i2);
        CACHEb_RD(X, &X[i2 - start_col], tmp_X_N_3_i2);
        X_p[(N - 2 - i1) * N + i2] = (X_p[(N - 2 - i1) * N + i2] - tmp_X_N_3_i2 * tmp_A_N_3_i2) / tmp_B_N_2_i2;
    }
    CACHEb_INVALID(B);
    CACHEb_INVALID(A);
    CACHEb_INVALID(X);
}

#endif