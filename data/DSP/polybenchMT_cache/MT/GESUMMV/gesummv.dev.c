#include "gesummv.h"
#include "../../common/cache_strategy/cache_wrapper.h"
#include "../../common/polybench.h"
#include "hthread_device.h"
#include <compiler/m3000.h>

__global__ void gesummv_kernel(int n, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *tmp,
                               DATA_TYPE *x, DATA_TYPE *y)
{
    int tid = get_thread_id();
    int group_size = get_group_size();

    int base = _PB_N / group_size;
    int remainder = _PB_N % group_size;

    int start_i = tid * base + (tid < remainder ? tid : remainder);
    int end_i = start_i + base + (tid < remainder ? 1 : 0);

    for (int i = start_i; i < end_i; i++) {
        tmp[i] = 0;
        y[i] = 0;

        for (int j = 0; j < _PB_N; j++) {
            tmp[i] += A[i * _PB_N + j] * x[j];
            y[i] += B[i * _PB_N + j] * x[j];
        }
        y[i] = alpha * tmp[i] + beta * y[i];
    }
}

#ifdef MINI_DATASET
__global__ void gesummv_kernel_cache(int n, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *tmp,
                                     DATA_TYPE *x, DATA_TYPE *y)
{
    int tid = get_thread_id();
    int group_size = get_group_size();

    int base = _PB_N / group_size;
    int remainder = _PB_N % group_size;

    int start_i = tid * base + (tid < remainder ? tid : remainder);
    int end_i = start_i + base + (tid < remainder ? 1 : 0);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 14);
    CACHEs_INIT(B, DATA_TYPE, B, 0, 14);
    CACHEb_INIT(y, DATA_TYPE, &y[start_i], 0, (end_i - start_i) * sizeof(DATA_TYPE));
    CACHEb_INIT(x, DATA_TYPE, x, 0, _PB_N * sizeof(DATA_TYPE));
    DATA_TYPE tmp_a, tmp_b, tmp_x, tmp_y, tmp_tmp;

    for (int i = start_i; i < end_i; i++) {
        tmp_tmp = 0;
        tmp_y = 0;

        for (int j = 0; j < _PB_N; j++) {
            CACHEs_RD(A, &A[i * _PB_N + j], tmp_a);
            CACHEs_RD(B, &B[i * _PB_N + j], tmp_b);
            CACHEb_RD(x, &x[j], tmp_x);
            tmp_tmp += +tmp_a * tmp_x;
            tmp_y = tmp_y + tmp_b * tmp_x;
        }
        tmp_y = alpha * tmp_tmp + beta * tmp_y;
        CACHEb_WT(y, &y[i - start_i], tmp_y);
    }
    CACHEb_FLUSH(y);
    CACHEs_INVALID(A);
    CACHEs_INVALID(B);
    CACHEb_INVALID(x);
}
#endif

#ifdef SMALL_DATASET
__global__ void gesummv_kernel_cache(int n, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *tmp,
                                     DATA_TYPE *x, DATA_TYPE *y)
{
    int tid = get_thread_id();
    int group_size = get_group_size();

    int base = _PB_N / group_size;
    int remainder = _PB_N % group_size;

    int start_i = tid * base + (tid < remainder ? tid : remainder);
    int end_i = start_i + base + (tid < remainder ? 1 : 0);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 14);
    CACHEs_INIT(B, DATA_TYPE, B, 0, 14);
    CACHEb_INIT(y, DATA_TYPE, &y[start_i], 0, (end_i - start_i) * sizeof(DATA_TYPE));
    CACHEb_INIT(x, DATA_TYPE, x, 0, _PB_N * sizeof(DATA_TYPE));
    DATA_TYPE tmp_a, tmp_b, tmp_x, tmp_y, tmp_tmp;

    for (int i = start_i; i < end_i; i++) {
        tmp_tmp = 0;
        tmp_y = 0;

        for (int j = 0; j < _PB_N; j++) {
            CACHEs_RD(A, &A[i * _PB_N + j], tmp_a);
            CACHEs_RD(B, &B[i * _PB_N + j], tmp_b);
            CACHEb_RD(x, &x[j], tmp_x);
            tmp_tmp += +tmp_a * tmp_x;
            tmp_y = tmp_y + tmp_b * tmp_x;
        }
        tmp_y = alpha * tmp_tmp + beta * tmp_y;
        CACHEb_WT(y, &y[i - start_i], tmp_y);
    }
    CACHEb_FLUSH(y);
    CACHEs_INVALID(A);
    CACHEs_INVALID(B);
    CACHEb_INVALID(x);
}
#endif

#ifdef STANDARD_DATASET /* Default if unspecified. */
__global__ void gesummv_kernel_cache(int n, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *tmp,
                                     DATA_TYPE *x, DATA_TYPE *y)
{
    int tid = get_thread_id();
    int group_size = get_group_size();

    int base = _PB_N / group_size;
    int remainder = _PB_N % group_size;

    int start_i = tid * base + (tid < remainder ? tid : remainder);
    int end_i = start_i + base + (tid < remainder ? 1 : 0);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 14);
    CACHEs_INIT(B, DATA_TYPE, B, 0, 14);
    CACHEb_INIT(y, DATA_TYPE, &y[start_i], 0, (end_i - start_i) * sizeof(DATA_TYPE));
    CACHEb_INIT(x, DATA_TYPE, x, 0, _PB_N * sizeof(DATA_TYPE));
    DATA_TYPE tmp_a, tmp_b, tmp_x, tmp_y, tmp_tmp;

    for (int i = start_i; i < end_i; i++) {
        tmp_tmp = 0;
        tmp_y = 0;

        for (int j = 0; j < _PB_N; j++) {
            CACHEs_RD(A, &A[i * _PB_N + j], tmp_a);
            CACHEs_RD(B, &B[i * _PB_N + j], tmp_b);
            CACHEb_RD(x, &x[j], tmp_x);
            tmp_tmp += +tmp_a * tmp_x;
            tmp_y = tmp_y + tmp_b * tmp_x;
        }
        tmp_y = alpha * tmp_tmp + beta * tmp_y;
        CACHEb_WT(y, &y[i - start_i], tmp_y);
    }
    CACHEb_FLUSH(y);
    CACHEs_INVALID(A);
    CACHEs_INVALID(B);
    CACHEb_INVALID(x);
}
#endif

#ifdef LARGE_DATASET
__global__ void gesummv_kernel_cache(int n, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *tmp,
                                     DATA_TYPE *x, DATA_TYPE *y)
{
    int tid = get_thread_id();
    int group_size = get_group_size();

    int base = _PB_N / group_size;
    int remainder = _PB_N % group_size;

    int start_i = tid * base + (tid < remainder ? tid : remainder);
    int end_i = start_i + base + (tid < remainder ? 1 : 0);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 13);
    CACHEs_INIT(B, DATA_TYPE, B, 0, 13);
    CACHEb_INIT(y, DATA_TYPE, &y[start_i], 0, (end_i - start_i) * sizeof(DATA_TYPE));
    CACHEb_INIT(x, DATA_TYPE, x, 0, _PB_N * sizeof(DATA_TYPE));
    DATA_TYPE tmp_a, tmp_b, tmp_x, tmp_y, tmp_tmp;

    for (int i = start_i; i < end_i; i++) {
        tmp_tmp = 0;
        tmp_y = 0;

        for (int j = 0; j < _PB_N; j++) {
            CACHEs_RD(A, &A[i * _PB_N + j], tmp_a);
            CACHEs_RD(B, &B[i * _PB_N + j], tmp_b);
            CACHEb_RD(x, &x[j], tmp_x);
            tmp_tmp += +tmp_a * tmp_x;
            tmp_y = tmp_y + tmp_b * tmp_x;
        }
        tmp_y = alpha * tmp_tmp + beta * tmp_y;
        CACHEb_WT(y, &y[i - start_i], tmp_y);
    }
    CACHEb_FLUSH(y);
    CACHEs_INVALID(A);
    CACHEs_INVALID(B);
    CACHEb_INVALID(x);
}
#endif

#ifdef EXTRALARGE_DATASET
__global__ void gesummv_kernel_cache(int n, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *A, DATA_TYPE *B, DATA_TYPE *tmp,
                                     DATA_TYPE *x, DATA_TYPE *y)
{
    int tid = get_thread_id();
    int group_size = get_group_size();

    int base = _PB_N / group_size;
    int remainder = _PB_N % group_size;

    int start_i = tid * base + (tid < remainder ? tid : remainder);
    int end_i = start_i + base + (tid < remainder ? 1 : 0);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 13);
    CACHEs_INIT(B, DATA_TYPE, B, 0, 13);
    CACHEs_INIT(y, DATA_TYPE, y, 0, 13);
    CACHEs_INIT(x, DATA_TYPE, x, 0, 15);
    DATA_TYPE tmp_a, tmp_b, tmp_x, tmp_y, tmp_tmp;

    for (int i = start_i; i < end_i; i++) {
        tmp_tmp = 0;
        tmp_y = 0;

        for (int j = 0; j < _PB_N; j++) {
            CACHEs_RD(A, &A[i * _PB_N + j], tmp_a);
            CACHEs_RD(B, &B[i * _PB_N + j], tmp_b);
            CACHEs_RD(x, &x[j], tmp_x);
            tmp_tmp += +tmp_a * tmp_x;
            tmp_y = tmp_y + tmp_b * tmp_x;
        }
        tmp_y = alpha * tmp_tmp + beta * tmp_y;
        CACHEs_WT(y, &y[i], tmp_y);
    }
    CACHEs_FLUSH(y);
    CACHEs_INVALID(A);
    CACHEs_INVALID(B);
    CACHEs_INVALID(x);
}
#endif