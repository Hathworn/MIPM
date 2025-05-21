#include "gemver.h"
#include "../../common/cache_strategy/cache_wrapper.h"
#include "../../common/polybench.h"
#include "hthread_device.h"
#include <compiler/m3000.h>
#include <math.h>

__global__ void gemver_kernel1(int n, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *v1, DATA_TYPE *v2,
                               DATA_TYPE *u1, DATA_TYPE *u2)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = tid * elements_per_thread + (tid < remainder ? tid : remainder);
    int end_idx = start_idx + elements_per_thread + (tid < remainder);

    for (int i = start_idx; i < end_idx; ++i) {
        for (int j = 0; j < _PB_N; ++j) {
            a[i * N + j] += u1[i] * v1[j] + u2[i] * v2[j];
        }
    }
}

__global__ void gemver_kernel2(int n, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *x, DATA_TYPE *y,
                               DATA_TYPE *z)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = tid * elements_per_thread + (tid < remainder ? tid : remainder);
    int end_idx = start_idx + elements_per_thread + (tid < remainder);

    for (int j = 0; j < _PB_N; j++) {
        for (int i = start_idx; i < end_idx; ++i) {
            x[i] += beta * a[j * N + i] * y[j];
        }
    }
    for (int i = start_idx; i < end_idx; ++i) {
        x[i] += z[i];
    }
}

__global__ void gemver_kernel3(int n, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *x, DATA_TYPE *w)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = tid * elements_per_thread + (tid < remainder ? tid : remainder);
    int end_idx = start_idx + elements_per_thread + (tid < remainder);

    for (int i = start_idx; i < end_idx; ++i) {
        for (int j = 0; j < _PB_N; j++) {
            w[i] += alpha * a[i * N + j] * x[j];
        }
    }
}

#ifdef MINI_DATASET
__global__ void gemver_kernel1_cache(int n, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *v1, DATA_TYPE *v2,
                                     DATA_TYPE *u1, DATA_TYPE *u2)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = tid * elements_per_thread + (tid < remainder ? tid : remainder);
    int end_idx = start_idx + elements_per_thread + (tid < remainder);
    CACHEb_INIT(u1, DATA_TYPE, &u1[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(u2, DATA_TYPE, &u2[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(v1, DATA_TYPE, v1, 0, _PB_N * sizeof(DATA_TYPE));
    CACHEb_INIT(v2, DATA_TYPE, v2, 0, _PB_N * sizeof(DATA_TYPE));
    CACHEs_INIT(a, DATA_TYPE, a, 0, 15);
    DATA_TYPE tmp_u1, tmp_u2, tmp_v1, tmp_v2, tmp_a;
    for (int i = start_idx; i < end_idx; ++i) {
        for (int j = 0; j < _PB_N; ++j) {
            CACHEb_RD(u1, &u1[i - start_idx], tmp_u1);
            CACHEb_RD(u2, &u2[i - start_idx], tmp_u2);
            CACHEb_RD(v1, &v1[j], tmp_v1);
            CACHEb_RD(v2, &v2[j], tmp_v2);
            CACHEs_RD(a, &a[i * N + j], tmp_a);
            tmp_a += tmp_u1 * tmp_v1 + tmp_u2 * tmp_v2;
            CACHEs_WT(a, &a[i * N + j], tmp_a);
        }
    }
    CACHEs_FLUSH(a);
    CACHEb_INVALID(u1);
    CACHEb_INVALID(u2);
    CACHEb_INVALID(v1);
    CACHEb_INVALID(v2);
}

__global__ void gemver_kernel2_cache(int n, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *x, DATA_TYPE *y,
                                     DATA_TYPE *z)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = tid * elements_per_thread + (tid < remainder ? tid : remainder);
    int end_idx = start_idx + elements_per_thread + (tid < remainder);
    CACHEb_INIT(x, DATA_TYPE, &x[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(z, DATA_TYPE, &z[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(y, DATA_TYPE, y, 0, _PB_N * sizeof(DATA_TYPE));
    CACHEs_INIT(a, DATA_TYPE, a, 0, 15);
    DATA_TYPE tmp_x, tmp_a, tmp_y, tmp_z;
    for (int j = 0; j < _PB_N; j++) {
        for (int i = start_idx; i < end_idx; ++i) {
            CACHEb_RD(x, &x[i - start_idx], tmp_x);
            CACHEs_RD(a, &a[j * N + i], tmp_a);
            CACHEb_RD(y, &y[j], tmp_y);
            tmp_x += beta * tmp_a * tmp_y;
            CACHEb_WT(x, &x[i - start_idx], tmp_x);
        }
    }
    for (int i = start_idx; i < end_idx; ++i) {
        CACHEb_RD(x, &x[i - start_idx], tmp_x);
        CACHEb_RD(z, &z[i - start_idx], tmp_z);
        tmp_x += tmp_z;
        CACHEb_WT(x, &x[i - start_idx], tmp_x);
    }
    CACHEb_FLUSH(x);
    CACHEs_INVALID(a);
    CACHEb_INVALID(y);
    CACHEb_INVALID(z);
}

__global__ void gemver_kernel3_cache(int n, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *x, DATA_TYPE *w)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = tid * elements_per_thread + (tid < remainder ? tid : remainder);
    int end_idx = start_idx + elements_per_thread + (tid < remainder);
    CACHEs_INIT(a, DATA_TYPE, a, 0, 15);
    CACHEb_INIT(x, DATA_TYPE, x, 0, _PB_N * sizeof(DATA_TYPE));
    CACHEb_INIT(w, DATA_TYPE, &w[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_a, tmp_x, tmp_w;
    for (int i = start_idx; i < end_idx; ++i) {
        for (int j = 0; j < _PB_N; j++) {
            CACHEs_RD(a, &a[i * N + j], tmp_a);
            CACHEb_RD(w, &w[i - start_idx], tmp_w);
            CACHEb_RD(x, &x[j], tmp_x);
            tmp_w += alpha * tmp_a * tmp_x;
            CACHEb_WT(w, &w[i - start_idx], tmp_w);
        }
    }
    CACHEb_FLUSH(w);
    CACHEs_INVALID(a);
    CACHEb_INVALID(x);
}
#endif

#ifdef SMALL_DATASET
__global__ void gemver_kernel1_cache(int n, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *v1, DATA_TYPE *v2,
                                     DATA_TYPE *u1, DATA_TYPE *u2)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = tid * elements_per_thread + (tid < remainder ? tid : remainder);
    int end_idx = start_idx + elements_per_thread + (tid < remainder);
    CACHEb_INIT(u1, DATA_TYPE, &u1[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(u2, DATA_TYPE, &u2[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(v1, DATA_TYPE, v1, 0, _PB_N * sizeof(DATA_TYPE));
    CACHEb_INIT(v2, DATA_TYPE, v2, 0, _PB_N * sizeof(DATA_TYPE));
    CACHEs_INIT(a, DATA_TYPE, a, 0, 14);
    DATA_TYPE tmp_u1, tmp_u2, tmp_v1, tmp_v2, tmp_a;
    for (int i = start_idx; i < end_idx; ++i) {
        for (int j = 0; j < _PB_N; ++j) {
            CACHEb_RD(u1, &u1[i - start_idx], tmp_u1);
            CACHEb_RD(u2, &u2[i - start_idx], tmp_u2);
            CACHEb_RD(v1, &v1[j], tmp_v1);
            CACHEb_RD(v2, &v2[j], tmp_v2);
            CACHEs_RD(a, &a[i * N + j], tmp_a);
            tmp_a += tmp_u1 * tmp_v1 + tmp_u2 * tmp_v2;
            CACHEs_WT(a, &a[i * N + j], tmp_a);
        }
    }
    CACHEs_FLUSH(a);
    CACHEb_INVALID(u1);
    CACHEb_INVALID(u2);
    CACHEb_INVALID(v1);
    CACHEb_INVALID(v2);
}

__global__ void gemver_kernel2_cache(int n, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *x, DATA_TYPE *y,
                                     DATA_TYPE *z)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = tid * elements_per_thread + (tid < remainder ? tid : remainder);
    int end_idx = start_idx + elements_per_thread + (tid < remainder);
    CACHEb_INIT(x, DATA_TYPE, &x[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(z, DATA_TYPE, &z[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(y, DATA_TYPE, y, 0, _PB_N * sizeof(DATA_TYPE));
    CACHEs_INIT(a, DATA_TYPE, a, 0, 15);
    DATA_TYPE tmp_x, tmp_a, tmp_y, tmp_z;
    for (int j = 0; j < _PB_N; j++) {
        for (int i = start_idx; i < end_idx; ++i) {
            CACHEb_RD(x, &x[i - start_idx], tmp_x);
            CACHEs_RD(a, &a[j * N + i], tmp_a);
            CACHEb_RD(y, &y[j], tmp_y);
            tmp_x += beta * tmp_a * tmp_y;
            CACHEb_WT(x, &x[i - start_idx], tmp_x);
        }
    }
    for (int i = start_idx; i < end_idx; ++i) {
        CACHEb_RD(x, &x[i - start_idx], tmp_x);
        CACHEb_RD(z, &z[i - start_idx], tmp_z);
        tmp_x += tmp_z;
        CACHEb_WT(x, &x[i - start_idx], tmp_x);
    }
    CACHEb_FLUSH(x);
    CACHEs_INVALID(a);
    CACHEb_INVALID(y);
    CACHEb_INVALID(z);
}

__global__ void gemver_kernel3_cache(int n, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *x, DATA_TYPE *w)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = tid * elements_per_thread + (tid < remainder ? tid : remainder);
    int end_idx = start_idx + elements_per_thread + (tid < remainder);
    CACHEs_INIT(a, DATA_TYPE, a, 0, 15);
    CACHEb_INIT(x, DATA_TYPE, x, 0, _PB_N * sizeof(DATA_TYPE));
    CACHEb_INIT(w, DATA_TYPE, &w[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_a, tmp_x, tmp_w;
    for (int i = start_idx; i < end_idx; ++i) {
        for (int j = 0; j < _PB_N; j++) {
            CACHEs_RD(a, &a[i * N + j], tmp_a);
            CACHEb_RD(w, &w[i - start_idx], tmp_w);
            CACHEb_RD(x, &x[j], tmp_x);
            tmp_w += alpha * tmp_a * tmp_x;
            CACHEb_WT(w, &w[i - start_idx], tmp_w);
        }
    }
    CACHEb_FLUSH(w);
    CACHEs_INVALID(a);
    CACHEb_INVALID(x);
}
#endif

#ifdef STANDARD_DATASET /* Default if unspecified. */
__global__ void gemver_kernel1_cache(int n, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *v1, DATA_TYPE *v2,
                                     DATA_TYPE *u1, DATA_TYPE *u2)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = tid * elements_per_thread + (tid < remainder ? tid : remainder);
    int end_idx = start_idx + elements_per_thread + (tid < remainder);
    CACHEb_INIT(u1, DATA_TYPE, &u1[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(u2, DATA_TYPE, &u2[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEs_INIT(v1, DATA_TYPE, v1, 0, 14);
    CACHEs_INIT(v2, DATA_TYPE, v2, 0, 14);
    CACHEs_INIT(a, DATA_TYPE, a, 0, 6);
    DATA_TYPE tmp_u1, tmp_u2, tmp_v1, tmp_v2, tmp_a;
    for (int i = start_idx; i < end_idx; ++i) {
        for (int j = 0; j < _PB_N; ++j) {
            CACHEb_RD(u1, &u1[i - start_idx], tmp_u1);
            CACHEb_RD(u2, &u2[i - start_idx], tmp_u2);
            CACHEs_RD(v1, &v1[j], tmp_v1);
            CACHEs_RD(v2, &v2[j], tmp_v2);
            CACHEs_RD(a, &a[i * N + j], tmp_a);
            tmp_a += tmp_u1 * tmp_v1 + tmp_u2 * tmp_v2;
            CACHEs_WT(a, &a[i * N + j], tmp_a);
        }
    }
    CACHEs_FLUSH(a);
    CACHEb_INVALID(u1);
    CACHEb_INVALID(u2);
    CACHEs_INVALID(v1);
    CACHEs_INVALID(v2);
}

__global__ void gemver_kernel2_cache(int n, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *x, DATA_TYPE *y,
                                     DATA_TYPE *z)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = tid * elements_per_thread + (tid < remainder ? tid : remainder);
    int end_idx = start_idx + elements_per_thread + (tid < remainder);
    CACHEb_INIT(x, DATA_TYPE, &x[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(z, DATA_TYPE, &z[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(y, DATA_TYPE, y, 0, _PB_N * sizeof(DATA_TYPE));
    // CACHEs_INIT(a, DATA_TYPE, a, 0, 15);
    DATA_TYPE tmp_x, tmp_a, tmp_y, tmp_z;
    for (int j = 0; j < _PB_N; j++) {
        for (int i = start_idx; i < end_idx; ++i) {
            CACHEb_RD(x, &x[i - start_idx], tmp_x);
            // CACHEs_RD(a, &a[j * N + i], tmp_a);
            CACHEb_RD(y, &y[j], tmp_y);
            tmp_x += beta * a[j * N + i] * tmp_y;
            CACHEb_WT(x, &x[i - start_idx], tmp_x);
        }
    }
    for (int i = start_idx; i < end_idx; ++i) {
        CACHEb_RD(x, &x[i - start_idx], tmp_x);
        CACHEb_RD(z, &z[i - start_idx], tmp_z);
        tmp_x += tmp_z;
        CACHEb_WT(x, &x[i - start_idx], tmp_x);
    }
    CACHEb_FLUSH(x);
    // CACHEs_INVALID(a);
    CACHEb_INVALID(y);
    CACHEb_INVALID(z);
}

__global__ void gemver_kernel3_cache(int n, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *x, DATA_TYPE *w)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = tid * elements_per_thread + (tid < remainder ? tid : remainder);
    int end_idx = start_idx + elements_per_thread + (tid < remainder);
    CACHEs_INIT(a, DATA_TYPE, a, 0, 14);
    CACHEb_INIT(x, DATA_TYPE, x, 0, _PB_N * sizeof(DATA_TYPE));
    CACHEb_INIT(w, DATA_TYPE, &w[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_a, tmp_x, tmp_w;
    for (int i = start_idx; i < end_idx; ++i) {
        for (int j = 0; j < _PB_N; j++) {
            CACHEs_RD(a, &a[i * N + j], tmp_a);
            CACHEb_RD(w, &w[i - start_idx], tmp_w);
            CACHEb_RD(x, &x[j], tmp_x);
            tmp_w += alpha * tmp_a * tmp_x;
            CACHEb_WT(w, &w[i - start_idx], tmp_w);
        }
    }
    CACHEb_FLUSH(w);
    CACHEs_INVALID(a);
    CACHEb_INVALID(x);
}
#endif

#ifdef LARGE_DATASET
__global__ void gemver_kernel1_cache(int n, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *v1, DATA_TYPE *v2,
                                     DATA_TYPE *u1, DATA_TYPE *u2)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = tid * elements_per_thread + (tid < remainder ? tid : remainder);
    int end_idx = start_idx + elements_per_thread + (tid < remainder);
    CACHEb_INIT(u1, DATA_TYPE, &u1[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(u2, DATA_TYPE, &u2[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEs_INIT(v1, DATA_TYPE, v1, 0, 14);
    CACHEs_INIT(v2, DATA_TYPE, v2, 0, 14);
    CACHEs_INIT(a, DATA_TYPE, a, 0, 7);
    DATA_TYPE tmp_u1, tmp_u2, tmp_v1, tmp_v2, tmp_a;
    for (int i = start_idx; i < end_idx; ++i) {
        for (int j = 0; j < _PB_N; ++j) {
            CACHEb_RD(u1, &u1[i - start_idx], tmp_u1);
            CACHEb_RD(u2, &u2[i - start_idx], tmp_u2);
            CACHEs_RD(v1, &v1[j], tmp_v1);
            CACHEs_RD(v2, &v2[j], tmp_v2);
            CACHEs_RD(a, &a[i * N + j], tmp_a);
            tmp_a += tmp_u1 * tmp_v1 + tmp_u2 * tmp_v2;
            CACHEs_WT(a, &a[i * N + j], tmp_a);
        }
    }
    CACHEs_FLUSH(a);
    CACHEb_INVALID(u1);
    CACHEb_INVALID(u2);
    CACHEs_INVALID(v1);
    CACHEs_INVALID(v2);
}

__global__ void gemver_kernel2_cache(int n, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *x, DATA_TYPE *y,
                                     DATA_TYPE *z)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = tid * elements_per_thread + (tid < remainder ? tid : remainder);
    int end_idx = start_idx + elements_per_thread + (tid < remainder);
    CACHEb_INIT(x, DATA_TYPE, &x[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEs_INIT(z, DATA_TYPE, z, 0, 5);
    CACHEs_INIT(y, DATA_TYPE, y, 0, 14);
    // CACHEs_INIT(a, DATA_TYPE, a, 0, 15);
    DATA_TYPE tmp_x, tmp_a, tmp_y, tmp_z;
    for (int j = 0; j < _PB_N; j++) {
        for (int i = start_idx; i < end_idx; ++i) {
            CACHEb_RD(x, &x[i - start_idx], tmp_x);
            // CACHEs_RD(a, &a[j * N + i], tmp_a);
            CACHEb_RD(y, &y[j], tmp_y);
            tmp_x += beta * a[j * N + i] * tmp_y;
            CACHEb_WT(x, &x[i - start_idx], tmp_x);
        }
    }
    for (int i = start_idx; i < end_idx; ++i) {
        CACHEb_RD(x, &x[i - start_idx], tmp_x);
        CACHEs_RD(z, &z[i], tmp_z);
        tmp_x += tmp_z;
        CACHEb_WT(x, &x[i - start_idx], tmp_x);
    }
    CACHEb_FLUSH(x);
    // CACHEs_INVALID(a);
    CACHEs_INVALID(y);
    CACHEs_INVALID(z);
}

__global__ void gemver_kernel3_cache(int n, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *x, DATA_TYPE *w)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = tid * elements_per_thread + (tid < remainder ? tid : remainder);
    int end_idx = start_idx + elements_per_thread + (tid < remainder);
    CACHEs_INIT(a, DATA_TYPE, a, 0, 7);
    CACHEs_INIT(x, DATA_TYPE, x, 0, 15);
    CACHEs_INIT(w, DATA_TYPE, w, 0, 9);
    DATA_TYPE tmp_a, tmp_x, tmp_w;
    for (int i = start_idx; i < end_idx; ++i) {
        for (int j = 0; j < _PB_N; j++) {
            CACHEs_RD(a, &a[i * N + j], tmp_a);
            CACHEs_RD(w, &w[i], tmp_w);
            CACHEs_RD(x, &x[j], tmp_x);
            tmp_w += alpha * tmp_a * tmp_x;
            CACHEs_WT(w, &w[i], tmp_w);
        }
    }
    CACHEs_FLUSH(w);
    CACHEs_INVALID(a);
    CACHEs_INVALID(x);
}
#endif

#ifdef EXTRALARGE_DATASET
__global__ void gemver_kernel1_cache(int n, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *v1, DATA_TYPE *v2,
                                     DATA_TYPE *u1, DATA_TYPE *u2)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = tid * elements_per_thread + (tid < remainder ? tid : remainder);
    int end_idx = start_idx + elements_per_thread + (tid < remainder);
    CACHEb_INIT(u1, DATA_TYPE, &u1[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEb_INIT(u2, DATA_TYPE, &u2[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEs_INIT(v1, DATA_TYPE, v1, 0, 14);
    CACHEs_INIT(v2, DATA_TYPE, v2, 0, 14);
    CACHEs_INIT(a, DATA_TYPE, a, 0, 7);
    DATA_TYPE tmp_u1, tmp_u2, tmp_v1, tmp_v2, tmp_a;
    for (int i = start_idx; i < end_idx; ++i) {
        for (int j = 0; j < _PB_N; ++j) {
            CACHEb_RD(u1, &u1[i - start_idx], tmp_u1);
            CACHEb_RD(u2, &u2[i - start_idx], tmp_u2);
            CACHEs_RD(v1, &v1[j], tmp_v1);
            CACHEs_RD(v2, &v2[j], tmp_v2);
            CACHEs_RD(a, &a[i * N + j], tmp_a);
            tmp_a += tmp_u1 * tmp_v1 + tmp_u2 * tmp_v2;
            CACHEs_WT(a, &a[i * N + j], tmp_a);
        }
    }
    CACHEs_FLUSH(a);
    CACHEb_INVALID(u1);
    CACHEb_INVALID(u2);
    CACHEs_INVALID(v1);
    CACHEs_INVALID(v2);
}

__global__ void gemver_kernel2_cache(int n, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *x, DATA_TYPE *y,
                                     DATA_TYPE *z)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = tid * elements_per_thread + (tid < remainder ? tid : remainder);
    int end_idx = start_idx + elements_per_thread + (tid < remainder);
    CACHEb_INIT(x, DATA_TYPE, &x[start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEs_INIT(z, DATA_TYPE, z, 0, 4);
    CACHEs_INIT(y, DATA_TYPE, y, 0, 15);
    // CACHEs_INIT(a, DATA_TYPE, a, 0, 15);
    DATA_TYPE tmp_x, tmp_a, tmp_y, tmp_z;
    for (int j = 0; j < _PB_N; j++) {
        for (int i = start_idx; i < end_idx; ++i) {
            CACHEb_RD(x, &x[i - start_idx], tmp_x);
            // CACHEs_RD(a, &a[j * N + i], tmp_a);
            CACHEb_RD(y, &y[j], tmp_y);
            tmp_x += beta * a[j * N + i] * tmp_y;
            CACHEb_WT(x, &x[i - start_idx], tmp_x);
        }
    }
    for (int i = start_idx; i < end_idx; ++i) {
        CACHEb_RD(x, &x[i - start_idx], tmp_x);
        CACHEs_RD(z, &z[i], tmp_z);
        tmp_x += tmp_z;
        CACHEb_WT(x, &x[i - start_idx], tmp_x);
    }
    CACHEb_FLUSH(x);
    // CACHEs_INVALID(a);
    CACHEs_INVALID(y);
    CACHEs_INVALID(z);
}

__global__ void gemver_kernel3_cache(int n, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE *a, DATA_TYPE *x, DATA_TYPE *w)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_N;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = tid * elements_per_thread + (tid < remainder ? tid : remainder);
    int end_idx = start_idx + elements_per_thread + (tid < remainder);
    CACHEs_INIT(a, DATA_TYPE, a, 0, 6);
    CACHEs_INIT(x, DATA_TYPE, x, 0, 15);
    CACHEs_INIT(w, DATA_TYPE, w, 0, 8);
    DATA_TYPE tmp_a, tmp_x, tmp_w;
    for (int i = start_idx; i < end_idx; ++i) {
        for (int j = 0; j < _PB_N; j++) {
            CACHEs_RD(a, &a[i * N + j], tmp_a);
            CACHEs_RD(w, &w[i], tmp_w);
            CACHEs_RD(x, &x[j], tmp_x);
            tmp_w += alpha * tmp_a * tmp_x;
            CACHEs_WT(w, &w[i], tmp_w);
        }
    }
    CACHEs_FLUSH(w);
    CACHEs_INVALID(a);
    CACHEs_INVALID(x);
}
#endif