#include "gramschmidt.h"
#include "../../common/cache_strategy/cache_wrapper.h"
#include "../../common/polybench.h"
#include "hthread_device.h"
#include <compiler/m3000.h>
#include <math.h>

__global__ void gramschmidt_kernel1(int ni, int nj, int k, DATA_TYPE *a, DATA_TYPE *r, DATA_TYPE *q)
{
    int tid = get_thread_id();

    if (tid == 0) {
        DATA_TYPE nrm = 0.0;
        for (int i = 0; i < _PB_NI; i++) {
            nrm += a[i * NJ + k] * a[i * NJ + k];
        }
        r[k * NJ + k] = sqrt(nrm);
    }
}

__global__ void gramschmidt_kernel2(int ni, int nj, int k, DATA_TYPE *a, DATA_TYPE *r, DATA_TYPE *q)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_NI;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = tid * elements_per_thread + (tid < remainder ? tid : remainder);
    int end_idx = start_idx + elements_per_thread + (tid < remainder ? 1 : 0);

    for (int i = start_idx; i < end_idx; ++i) {
        q[i * NJ + k] = a[i * NJ + k] / r[k * NJ + k];
    }
}

__global__ void gramschmidt_kernel3(int ni, int nj, int k, DATA_TYPE *a, DATA_TYPE *r, DATA_TYPE *q)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_NJ - k - 1;
    if (total_elements <= 0) {
        return;
    }
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = tid * elements_per_thread + (tid < remainder ? tid : remainder);
    int end_idx = start_idx + elements_per_thread + (tid < remainder ? 1 : 0);
    if (start_idx >= end_idx) {
        return;
    }
    for (int j = start_idx; j < end_idx; ++j) {
        r[k * NJ + j] = 0.0;
    }
    for (int i = 0; i < _PB_NI; i++) {
        for (int j = start_idx; j < end_idx; ++j) {
            r[k * NJ + j] += q[i * NJ + k] * a[i * NJ + j];
        }
    }
    for (int i = 0; i < _PB_NI; i++) {
        for (int j = start_idx; j < end_idx; ++j) {
            a[i * NJ + j] -= q[i * NJ + k] * r[k * NJ + j];
        }
    }
}

__global__ void gramschmidt_kernel1_cache(int ni, int nj, int k, DATA_TYPE *a, DATA_TYPE *r, DATA_TYPE *q)
{
    int tid = get_thread_id();
    CACHEs_INIT(a, DATA_TYPE, a, 0, 15);
    CACHEb_INIT(r, DATA_TYPE, &r[k * NJ + k], 0, sizeof(DATA_TYPE));
    DATA_TYPE tmp_a, tmp_r;
    if (tid == 0) {
        DATA_TYPE nrm = 0.0;
        for (int i = 0; i < _PB_NI; i++) {
            CACHEs_RD(a, &a[i * NJ + k], tmp_a);
            nrm += tmp_a * tmp_a;
        }
        CACHEb_WT(r, r, sqrt(nrm));
    }
    CACHEs_INVALID(a);
    CACHEb_FLUSH(r);
}

__global__ void gramschmidt_kernel2_cache(int ni, int nj, int k, DATA_TYPE *a, DATA_TYPE *r, DATA_TYPE *q)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_NI;
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = tid * elements_per_thread + (tid < remainder ? tid : remainder);
    int end_idx = start_idx + elements_per_thread + (tid < remainder ? 1 : 0);
    CACHEb_INIT(r, DATA_TYPE, &r[k * NJ + k], 0, sizeof(DATA_TYPE));
    DATA_TYPE tmp_r;
    CACHEb_RD(r, r, tmp_r);
    for (int i = start_idx; i < end_idx; ++i) {
        q[i * NJ + k] = a[i * NJ + k] / tmp_r;
    }
    CACHEb_INVALID(r);
}

__global__ void gramschmidt_kernel3_cache(int ni, int nj, int k, DATA_TYPE *a, DATA_TYPE *r, DATA_TYPE *q)
{
    int tid = get_thread_id();
    int num_threads = get_group_size();
    int total_elements = _PB_NJ - k - 1;
    if (total_elements <= 0) {
        return;
    }
    int elements_per_thread = total_elements / num_threads;
    int remainder = total_elements % num_threads;

    int start_idx = tid * elements_per_thread + (tid < remainder ? tid : remainder);
    int end_idx = start_idx + elements_per_thread + (tid < remainder ? 1 : 0);
    if (start_idx >= end_idx) {
        return;
    }
    CACHEb_INIT(r, DATA_TYPE, &r[k * NJ + start_idx], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));
    CACHEs_INIT(a, DATA_TYPE, a, 0, 15);
    CACHEs_INIT(q, DATA_TYPE, q, 0, 4);
    DATA_TYPE tmp_r, tmp_a, tmp_q;
    for (int j = start_idx; j < end_idx; ++j) {
        CACHEb_WT(r, &r[j - start_idx], 0.0);
    }
    for (int i = 0; i < _PB_NI; i++) {
        CACHEs_RD(q, &q[i * NJ + k], tmp_q);
        for (int j = start_idx; j < end_idx; ++j) {
            CACHEs_RD(a, &a[i * NJ + j], tmp_a);
            CACHEb_RD(r, &r[j - start_idx], tmp_r);
            tmp_r += tmp_q * tmp_a;
            CACHEb_WT(r, &r[j - start_idx], tmp_r);
        }
    }
    for (int i = 0; i < _PB_NI; i++) {
        CACHEs_RD(q, &q[i * NJ + k], tmp_q);
        for (int j = start_idx; j < end_idx; ++j) {
            CACHEb_RD(r, &r[j - start_idx], tmp_r);
            CACHEs_RD(a, &a[i * NJ + j], tmp_a);
            tmp_a -= tmp_q * tmp_r;
            CACHEs_WT(a, &a[i * NJ + j], tmp_a);
        }
    }
    CACHEs_FLUSH(a);
    CACHEb_INVALID(r);
    CACHEs_INVALID(q);
}
