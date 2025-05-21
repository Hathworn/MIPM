#include "fdtd2d.h"
#include "../../common/cache_strategy/cache_wrapper.h"
#include "../../common/polybench.h"
#include "hthread_device.h"
#include <compiler/m3000.h>

static inline int min(int a, int b) { return a < b ? a : b; }

__global__ void fdtd_step1_kernel(int nx, int ny, int t, DATA_TYPE *_fict_, DATA_TYPE *ex, DATA_TYPE *ey, DATA_TYPE *hz)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    int total_elements = nx * ny;

    int start = thread_id * (total_elements / num_threads);
    int end = (thread_id == num_threads - 1) ? total_elements : (thread_id + 1) * (total_elements / num_threads);

    if (start == 0) {
        for (int j = 0; j < ny; j++) {
            ey[j] = _fict_[t];
        }
        start += ny;
    }
    for (int idx = start; idx < end; idx++) {
        ey[idx] = ey[idx] - 0.5f * (hz[idx] - hz[idx - ny]);
    }
}

__global__ void fdtd_step2_kernel(int nx, int ny, int t, DATA_TYPE *ex, DATA_TYPE *ey, DATA_TYPE *hz)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    int total_elements = nx * ny;

    int start = thread_id * (total_elements / num_threads);
    int end = (thread_id == num_threads - 1) ? total_elements : (thread_id + 1) * (total_elements / num_threads);
    if (start / ny == 0) {
        start++;
    }
    for (int idx = start; idx < end; idx++) {
        int j = idx % ny;

        if (j > 0) {
            ex[idx] = ex[idx] - 0.5f * (hz[idx] - hz[idx - 1]);
        }
    }
}

__global__ void fdtd_step3_kernel(int nx, int ny, int t, DATA_TYPE *ex, DATA_TYPE *ey, DATA_TYPE *hz)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    int total_elements = nx * ny;

    int start = thread_id * (total_elements / num_threads);
    int end = (thread_id == num_threads - 1) ? total_elements : (thread_id + 1) * (total_elements / num_threads);

    for (int idx = start; idx < end; idx++) {
        int i = idx / ny;
        int j = idx % ny;
        if (i < nx - 1 && j < ny - 1) {
            hz[i * ny + j] =
                hz[i * ny + j] - 0.7f * (ex[i * ny + (j + 1)] - ex[i * ny + j] + ey[(i + 1) * ny + j] - ey[i * ny + j]);
        }
    }
}

#ifdef MINI_DATASET
__global__ void fdtd_step1_kernel_cache(int nx, int ny, int t, DATA_TYPE *_fict_, DATA_TYPE *ex, DATA_TYPE *ey,
                                        DATA_TYPE *hz)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    int total_elements = nx * ny;

    int start = thread_id * (total_elements / num_threads);
    int end = (thread_id == num_threads - 1) ? total_elements : (thread_id + 1) * (total_elements / num_threads);

    if (start == 0) {
        CACHEb_INIT(_fict_, DATA_TYPE, &_fict_[t], 0, sizeof(DATA_TYPE));
        CACHEb_INIT(ey, DATA_TYPE, ey, 0, ny * sizeof(DATA_TYPE));
        DATA_TYPE tmp_fict_;
        CACHEb_RD(_fict_, &_fict_[0], tmp_fict_);
        for (int j = 0; j < ny; j++) {
            CACHEb_WT(ey, &ey[j], tmp_fict_);
        }
        start += ny;
        CACHEb_FLUSH(ey);
        CACHEb_INVALID(_fict_);
    }
    CACHEb_INIT(ey, DATA_TYPE, &ey[start], 0, (end - start) * sizeof(DATA_TYPE));
    CACHEb_INIT(hz, DATA_TYPE, &hz[start - ny], 0, (end - start + ny) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_ey, tmp_hz1, tmp_hz2;
    for (int idx = start; idx < end; idx++) {
        int i = idx / ny;
        int j = idx % ny;
        CACHEb_RD(ey, &ey[idx - start], tmp_ey);
        CACHEb_RD(hz, &hz[idx - start + ny], tmp_hz1);
        CACHEb_RD(hz, &hz[idx - start], tmp_hz2);
        tmp_ey = tmp_ey - 0.5f * (tmp_hz1 - tmp_hz2);
        CACHEb_WT(ey, &ey[idx - start], tmp_ey);
    }
    CACHEb_FLUSH(ey);
    CACHEb_INVALID(hz);
}

__global__ void fdtd_step2_kernel_cache(int nx, int ny, int t, DATA_TYPE *ex, DATA_TYPE *ey, DATA_TYPE *hz)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    int total_elements = nx * ny;

    int start = thread_id * (total_elements / num_threads);
    int end = (thread_id == num_threads - 1) ? total_elements : (thread_id + 1) * (total_elements / num_threads);
    if (start / ny == 0) {
        start++;
    }
    CACHEb_INIT(ex, DATA_TYPE, &ex[start], 0, (end - start) * sizeof(DATA_TYPE));
    CACHEb_INIT(hz, DATA_TYPE, &hz[start - 1], 0, (end - start + 1) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_ex, tmp_hz1, tmp_hz2;
    for (int idx = start; idx < end; idx++) {
        int j = idx % ny;
        if (j > 0) {
            CACHEb_RD(hz, &hz[idx - start + 1], tmp_hz1);
            CACHEb_RD(hz, &hz[idx - start], tmp_hz2);
            CACHEb_RD(ex, &ex[idx - start], tmp_ex);
            tmp_ex = tmp_ex - 0.5f * (tmp_hz1 - tmp_hz2);
            CACHEb_WT(ex, &ex[idx - start], tmp_ex);
        }
    }
    CACHEb_FLUSH(ex);
    CACHEb_INVALID(hz);
}

__global__ void fdtd_step3_kernel_cache(int nx, int ny, int t, DATA_TYPE *ex, DATA_TYPE *ey, DATA_TYPE *hz)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    int total_elements = nx * ny;

    int start = thread_id * (total_elements / num_threads);
    int end = (thread_id == num_threads - 1) ? total_elements : (thread_id + 1) * (total_elements / num_threads);
    CACHEb_INIT(hz, DATA_TYPE, &hz[start], 0, (end - start) * sizeof(DATA_TYPE));
    CACHEb_INIT(ex, DATA_TYPE, &ex[start], 0, (end - start + 1) * sizeof(DATA_TYPE));
    CACHEb_INIT(ey, DATA_TYPE, &ey[start], 0, (end - start + ny) * sizeof(DATA_TYPE));
    DATA_TYPE tmp_ex1, tmp_ex2, tmp_ey1, tmp_ey2, tmp_hz;
    for (int idx = start; idx < end; idx++) {
        int i = idx / ny;
        int j = idx % ny;
        if (i < nx - 1 && j < ny - 1) {
            CACHEb_RD(hz, &hz[i * ny + j - start], tmp_hz);
            CACHEb_RD(ex, &ex[i * ny + j + 1 - start], tmp_ex1);
            CACHEb_RD(ex, &ex[i * ny + j - start], tmp_ex2);
            CACHEb_RD(ey, &ey[(i + 1) * ny + j - start], tmp_ey1);
            CACHEb_RD(ey, &ey[i * ny + j - start], tmp_ey2);
            tmp_hz = tmp_hz - 0.7f * (tmp_ex1 - tmp_ex2 + tmp_ey1 - tmp_ey2);
            CACHEb_WT(hz, &hz[i * ny + j - start], tmp_hz);
        }
    }
    CACHEb_FLUSH(hz);
    CACHEb_INVALID(ex);
    CACHEb_INVALID(ey);
}
#endif

#ifdef SMALL_DATASET
__global__ void fdtd_step1_kernel_cache(int nx, int ny, int t, DATA_TYPE *_fict_, DATA_TYPE *ex, DATA_TYPE *ey,
                                        DATA_TYPE *hz)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    int total_elements = nx * ny;

    int start = thread_id * (total_elements / num_threads);
    int end = (thread_id == num_threads - 1) ? total_elements : (thread_id + 1) * (total_elements / num_threads);

    if (start == 0) {
        CACHEb_INIT(_fict_, DATA_TYPE, &_fict_[t], 0, sizeof(DATA_TYPE));
        CACHEb_INIT(ey, DATA_TYPE, ey, 0, ny * sizeof(DATA_TYPE));
        DATA_TYPE tmp_fict_;
        CACHEb_RD(_fict_, &_fict_[0], tmp_fict_);
        for (int j = 0; j < ny; j++) {
            CACHEb_WT(ey, &ey[j], tmp_fict_);
        }
        start += ny;
        CACHEb_FLUSH(ey);
        CACHEb_INVALID(_fict_);
    }
    CACHEb_INIT(ey, DATA_TYPE, &ey[start], 0, (end - start) * sizeof(DATA_TYPE));
    CACHEd_INIT(hz, DATA_TYPE, hz, 5, 9);
    DATA_TYPE tmp_ey, tmp_hz1, tmp_hz2;
    for (int idx = start; idx < end; idx++) {
        int i = idx / ny;
        int j = idx % ny;
        CACHEb_RD(ey, &ey[idx - start], tmp_ey);
        CACHEd_RD(hz, &hz[idx], tmp_hz1);
        CACHEd_RD(hz, &hz[idx - ny], tmp_hz2);
        tmp_ey = tmp_ey - 0.5f * (tmp_hz1 - tmp_hz2);
        CACHEb_WT(ey, &ey[idx - start], tmp_ey);
    }
    CACHEb_FLUSH(ey);
    CACHEd_INVALID(hz);
}

__global__ void fdtd_step2_kernel_cache(int nx, int ny, int t, DATA_TYPE *ex, DATA_TYPE *ey, DATA_TYPE *hz)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    int total_elements = nx * ny;

    int start = thread_id * (total_elements / num_threads);
    int end = (thread_id == num_threads - 1) ? total_elements : (thread_id + 1) * (total_elements / num_threads);
    if (start / ny == 0) {
        start++;
    }
    CACHEb_INIT(ex, DATA_TYPE, &ex[start], 0, (end - start) * sizeof(DATA_TYPE));
    CACHEs_INIT(hz, DATA_TYPE, hz, 0, 14);
    DATA_TYPE tmp_ex, tmp_hz1, tmp_hz2;
    for (int idx = start; idx < end; idx++) {
        int j = idx % ny;
        if (j > 0) {
            CACHEs_RD(hz, &hz[idx], tmp_hz1);
            CACHEs_RD(hz, &hz[idx - 1], tmp_hz2);
            CACHEb_RD(ex, &ex[idx - start], tmp_ex);
            tmp_ex = tmp_ex - 0.5f * (tmp_hz1 - tmp_hz2);
            CACHEb_WT(ex, &ex[idx - start], tmp_ex);
        }
    }
    CACHEb_FLUSH(ex);
    CACHEs_INVALID(hz);
}

__global__ void fdtd_step3_kernel_cache(int nx, int ny, int t, DATA_TYPE *ex, DATA_TYPE *ey, DATA_TYPE *hz)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    int total_elements = nx * ny;

    int start = thread_id * (total_elements / num_threads);
    int end = (thread_id == num_threads - 1) ? total_elements : (thread_id + 1) * (total_elements / num_threads);
    CACHEb_INIT(hz, DATA_TYPE, &hz[start], 0, (end - start) * sizeof(DATA_TYPE));
    CACHEs_INIT(ex, DATA_TYPE, ex, 0, 14);
    CACHEd_INIT(ey, DATA_TYPE, ey, 3, 7);

    DATA_TYPE tmp_ex1, tmp_ex2, tmp_ey1, tmp_ey2, tmp_hz;
    for (int idx = start; idx < end; idx++) {
        int i = idx / ny;
        int j = idx % ny;
        if (i < nx - 1 && j < ny - 1) {
            CACHEb_RD(hz, &hz[i * ny + j - start], tmp_hz);
            CACHEs_RD(ex, &ex[i * ny + j + 1], tmp_ex1);
            CACHEs_RD(ex, &ex[i * ny + j], tmp_ex2);
            CACHEd_RD(ey, &ey[(i + 1) * ny + j], tmp_ey1);
            CACHEd_RD(ey, &ey[i * ny + j], tmp_ey2);
            tmp_hz = tmp_hz - 0.7f * (tmp_ex1 - tmp_ex2 + tmp_ey1 - tmp_ey2);
            CACHEb_WT(hz, &hz[i * ny + j - start], tmp_hz);
        }
    }
    CACHEb_FLUSH(hz);
    CACHEs_INVALID(ex);
    CACHEd_INVALID(ey);
}
#endif

#ifdef STANDARD_DATASET /* Default if unspecified. */
__global__ void fdtd_step1_kernel_cache(int nx, int ny, int t, DATA_TYPE *_fict_, DATA_TYPE *ex, DATA_TYPE *ey,
                                        DATA_TYPE *hz)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    int total_elements = nx * ny;

    int start = thread_id * (total_elements / num_threads);
    int end = (thread_id == num_threads - 1) ? total_elements : (thread_id + 1) * (total_elements / num_threads);

    if (start == 0) {
        CACHEb_INIT(_fict_, DATA_TYPE, &_fict_[t], 0, sizeof(DATA_TYPE));
        CACHEs_INIT(ey, DATA_TYPE, ey, 0, 15);
        DATA_TYPE tmp_fict_;
        CACHEb_RD(_fict_, &_fict_[0], tmp_fict_);
        for (int j = 0; j < ny; j++) {
            CACHEs_WT(ey, &ey[j], tmp_fict_);
        }
        start += ny;
        CACHEs_FLUSH(ey);
        CACHEb_INVALID(_fict_);
    }
    CACHEs_INIT(ey, DATA_TYPE, ey, 0, 15);
    DATA_TYPE tmp_ey;
    for (int idx = start; idx < end; idx++) {
        int i = idx / ny;
        int j = idx % ny;
        CACHEs_RD(ey, &ey[idx], tmp_ey);
        tmp_ey = tmp_ey - 0.5f * (hz[idx] - hz[idx - ny]);
        CACHEs_WT(ey, &ey[idx], tmp_ey);
    }
    CACHEs_FLUSH(ey);
}

__global__ void fdtd_step2_kernel_cache(int nx, int ny, int t, DATA_TYPE *ex, DATA_TYPE *ey, DATA_TYPE *hz)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    int total_elements = nx * ny;

    int start = thread_id * (total_elements / num_threads);
    int end = (thread_id == num_threads - 1) ? total_elements : (thread_id + 1) * (total_elements / num_threads);
    if (start / ny == 0) {
        start++;
    }
    CACHEs_INIT(ex, DATA_TYPE, ex, 0, 15);
    CACHEs_INIT(hz, DATA_TYPE, hz, 0, 14);
    DATA_TYPE tmp_ex, tmp_hz1, tmp_hz2;
    for (int idx = start; idx < end; idx++) {
        int j = idx % ny;
        if (j > 0) {
            CACHEs_RD(hz, &hz[idx], tmp_hz1);
            CACHEs_RD(hz, &hz[idx - 1], tmp_hz2);
            CACHEs_RD(ex, &ex[idx], tmp_ex);
            tmp_ex = tmp_ex - 0.5f * (tmp_hz1 - tmp_hz2);
            CACHEs_WT(ex, &ex[idx], tmp_ex);
        }
    }
    CACHEs_FLUSH(ex);
    CACHEs_INVALID(hz);
}

__global__ void fdtd_step3_kernel_cache(int nx, int ny, int t, DATA_TYPE *ex, DATA_TYPE *ey, DATA_TYPE *hz)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    int total_elements = nx * ny;

    int start = thread_id * (total_elements / num_threads);
    int end = (thread_id == num_threads - 1) ? total_elements : (thread_id + 1) * (total_elements / num_threads);
    CACHEs_INIT(hz, DATA_TYPE, hz, 0, 15);
    CACHEs_INIT(ex, DATA_TYPE, ex, 0, 14);

    DATA_TYPE tmp_ex1, tmp_ex2, tmp_ey1, tmp_ey2, tmp_hz;
    for (int idx = start; idx < end; idx++) {
        int i = idx / ny;
        int j = idx % ny;
        if (i < nx - 1 && j < ny - 1) {
            CACHEs_RD(hz, &hz[i * ny + j], tmp_hz);
            CACHEs_RD(ex, &ex[i * ny + j], tmp_ex2);
            CACHEs_RD(ex, &ex[i * ny + j + 1], tmp_ex1);
            tmp_hz = tmp_hz - 0.7f * (tmp_ex1 - tmp_ex2 + ey[(i + 1) * ny + j] - ey[i * ny + j]);
            CACHEs_WT(hz, &hz[i * ny + j], tmp_hz);
        }
    }
    CACHEs_FLUSH(hz);
    CACHEs_INVALID(ex);
}
#endif

#ifdef LARGE_DATASET
__global__ void fdtd_step1_kernel_cache(int nx, int ny, int t, DATA_TYPE *_fict_, DATA_TYPE *ex, DATA_TYPE *ey,
                                        DATA_TYPE *hz)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    int total_elements = nx * ny;

    int start = thread_id * (total_elements / num_threads);
    int end = (thread_id == num_threads - 1) ? total_elements : (thread_id + 1) * (total_elements / num_threads);

    if (start == 0) {
        CACHEb_INIT(_fict_, DATA_TYPE, &_fict_[t], 0, sizeof(DATA_TYPE));
        CACHEs_INIT(ey, DATA_TYPE, ey, 0, 15);
        DATA_TYPE tmp_fict_;
        CACHEb_RD(_fict_, &_fict_[0], tmp_fict_);
        for (int j = 0; j < ny; j++) {
            CACHEs_WT(ey, &ey[j], tmp_fict_);
        }
        start += ny;
        CACHEs_FLUSH(ey);
        CACHEb_INVALID(_fict_);
    }
    CACHEs_INIT(ey, DATA_TYPE, ey, 0, 15);
    DATA_TYPE tmp_ey;
    for (int idx = start; idx < end; idx++) {
        int i = idx / ny;
        int j = idx % ny;
        CACHEs_RD(ey, &ey[idx], tmp_ey);
        tmp_ey = tmp_ey - 0.5f * (hz[idx] - hz[idx - ny]);
        CACHEs_WT(ey, &ey[idx], tmp_ey);
    }
    CACHEs_FLUSH(ey);
}

__global__ void fdtd_step2_kernel_cache(int nx, int ny, int t, DATA_TYPE *ex, DATA_TYPE *ey, DATA_TYPE *hz)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    int total_elements = nx * ny;

    int start = thread_id * (total_elements / num_threads);
    int end = (thread_id == num_threads - 1) ? total_elements : (thread_id + 1) * (total_elements / num_threads);
    if (start / ny == 0) {
        start++;
    }
    CACHEs_INIT(ex, DATA_TYPE, ex, 0, 15);
    CACHEs_INIT(hz, DATA_TYPE, hz, 0, 14);
    DATA_TYPE tmp_ex, tmp_hz1, tmp_hz2;
    for (int idx = start; idx < end; idx++) {
        int j = idx % ny;
        if (j > 0) {
            CACHEs_RD(hz, &hz[idx], tmp_hz1);
            CACHEs_RD(hz, &hz[idx - 1], tmp_hz2);
            CACHEs_RD(ex, &ex[idx], tmp_ex);
            tmp_ex = tmp_ex - 0.5f * (tmp_hz1 - tmp_hz2);
            CACHEs_WT(ex, &ex[idx], tmp_ex);
        }
    }
    CACHEs_FLUSH(ex);
    CACHEs_INVALID(hz);
}

__global__ void fdtd_step3_kernel_cache(int nx, int ny, int t, DATA_TYPE *ex, DATA_TYPE *ey, DATA_TYPE *hz)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    int total_elements = nx * ny;

    int start = thread_id * (total_elements / num_threads);
    int end = (thread_id == num_threads - 1) ? total_elements : (thread_id + 1) * (total_elements / num_threads);
    CACHEs_INIT(hz, DATA_TYPE, hz, 0, 15);
    CACHEs_INIT(ex, DATA_TYPE, ex, 0, 14);

    DATA_TYPE tmp_ex1, tmp_ex2, tmp_ey1, tmp_ey2, tmp_hz;
    for (int idx = start; idx < end; idx++) {
        int i = idx / ny;
        int j = idx % ny;
        if (i < nx - 1 && j < ny - 1) {
            CACHEs_RD(hz, &hz[i * ny + j], tmp_hz);
            CACHEs_RD(ex, &ex[i * ny + j], tmp_ex2);
            CACHEs_RD(ex, &ex[i * ny + j + 1], tmp_ex1);
            tmp_hz = tmp_hz - 0.7f * (tmp_ex1 - tmp_ex2 + ey[(i + 1) * ny + j] - ey[i * ny + j]);
            CACHEs_WT(hz, &hz[i * ny + j], tmp_hz);
        }
    }
    CACHEs_FLUSH(hz);
    CACHEs_INVALID(ex);
}
#endif

#ifdef EXTRALARGE_DATASET
__global__ void fdtd_step1_kernel_cache(int nx, int ny, int t, DATA_TYPE *_fict_, DATA_TYPE *ex, DATA_TYPE *ey,
                                        DATA_TYPE *hz)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    int total_elements = nx * ny;

    int start = thread_id * (total_elements / num_threads);
    int end = (thread_id == num_threads - 1) ? total_elements : (thread_id + 1) * (total_elements / num_threads);

    if (start == 0) {
        CACHEb_INIT(_fict_, DATA_TYPE, &_fict_[t], 0, sizeof(DATA_TYPE));
        CACHEs_INIT(ey, DATA_TYPE, ey, 0, 15);
        DATA_TYPE tmp_fict_;
        CACHEb_RD(_fict_, &_fict_[0], tmp_fict_);
        for (int j = 0; j < ny; j++) {
            CACHEs_WT(ey, &ey[j], tmp_fict_);
        }
        start += ny;
        CACHEs_FLUSH(ey);
        CACHEb_INVALID(_fict_);
    }
    CACHEs_INIT(ey, DATA_TYPE, ey, 0, 15);
    DATA_TYPE tmp_ey;
    for (int idx = start; idx < end; idx++) {
        int i = idx / ny;
        int j = idx % ny;
        CACHEs_RD(ey, &ey[idx], tmp_ey);
        tmp_ey = tmp_ey - 0.5f * (hz[idx] - hz[idx - ny]);
        CACHEs_WT(ey, &ey[idx], tmp_ey);
    }
    CACHEs_FLUSH(ey);
}

__global__ void fdtd_step2_kernel_cache(int nx, int ny, int t, DATA_TYPE *ex, DATA_TYPE *ey, DATA_TYPE *hz)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    int total_elements = nx * ny;

    int start = thread_id * (total_elements / num_threads);
    int end = (thread_id == num_threads - 1) ? total_elements : (thread_id + 1) * (total_elements / num_threads);
    if (start / ny == 0) {
        start++;
    }
    CACHEs_INIT(ex, DATA_TYPE, ex, 0, 15);
    CACHEs_INIT(hz, DATA_TYPE, hz, 0, 14);
    DATA_TYPE tmp_ex, tmp_hz1, tmp_hz2;
    for (int idx = start; idx < end; idx++) {
        int j = idx % ny;
        if (j > 0) {
            CACHEs_RD(hz, &hz[idx], tmp_hz1);
            CACHEs_RD(hz, &hz[idx - 1], tmp_hz2);
            CACHEs_RD(ex, &ex[idx], tmp_ex);
            tmp_ex = tmp_ex - 0.5f * (tmp_hz1 - tmp_hz2);
            CACHEs_WT(ex, &ex[idx], tmp_ex);
        }
    }
    CACHEs_FLUSH(ex);
    CACHEs_INVALID(hz);
}

__global__ void fdtd_step3_kernel_cache(int nx, int ny, int t, DATA_TYPE *ex, DATA_TYPE *ey, DATA_TYPE *hz)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    int total_elements = nx * ny;

    int start = thread_id * (total_elements / num_threads);
    int end = (thread_id == num_threads - 1) ? total_elements : (thread_id + 1) * (total_elements / num_threads);
    CACHEs_INIT(hz, DATA_TYPE, hz, 0, 15);
    CACHEs_INIT(ex, DATA_TYPE, ex, 0, 14);

    DATA_TYPE tmp_ex1, tmp_ex2, tmp_ey1, tmp_ey2, tmp_hz;
    for (int idx = start; idx < end; idx++) {
        int i = idx / ny;
        int j = idx % ny;
        if (i < nx - 1 && j < ny - 1) {
            CACHEs_RD(hz, &hz[i * ny + j], tmp_hz);
            CACHEs_RD(ex, &ex[i * ny + j], tmp_ex2);
            CACHEs_RD(ex, &ex[i * ny + j + 1], tmp_ex1);
            tmp_hz = tmp_hz - 0.7f * (tmp_ex1 - tmp_ex2 + ey[(i + 1) * ny + j] - ey[i * ny + j]);
            CACHEs_WT(hz, &hz[i * ny + j], tmp_hz);
        }
    }
    CACHEs_FLUSH(hz);
    CACHEs_INVALID(ex);
}
#endif