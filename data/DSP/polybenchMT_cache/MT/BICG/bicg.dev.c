#include "bicg.h"
#include "../../common/cache_strategy/cache_wrapper.h"
#include "../../common/polybench.h"
#include "hthread_device.h"
#include <compiler/m3000.h>
#include <math.h>

__global__ void bicg_kernel1(int nx, int ny, DATA_TYPE *A, DATA_TYPE *r, DATA_TYPE *s)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    // 计算每个线程需要处理的元素数量
    int items_per_thread = ny / num_threads;
    int remainder = ny % num_threads;

    // 计算当前线程的起始和结束位置
    int start_j = thread_id * items_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_j = start_j + items_per_thread + (thread_id < remainder ? 1 : 0);

    // 先初始化输出数组
    for (int j = start_j; j < end_j; j++) {
        s[j] = 0.0f;
    }

    // 交换循环顺序，提高内存访问效率
    for (int i = 0; i < nx; i++) {
        for (int j = start_j; j < end_j; j++) {
            s[j] += r[i] * A[i * ny + j];
        }
    }
}

__global__ void bicg_kernel2(int nx, int ny, DATA_TYPE *A, DATA_TYPE *p, DATA_TYPE *q)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    // 计算每个线程需要处理的元素数量
    int items_per_thread = _PB_NX / num_threads;
    int remainder = _PB_NX % num_threads;

    // 计算当前线程的起始和结束位置
    int start_i = thread_id * items_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_i = start_i + items_per_thread + (thread_id < remainder ? 1 : 0);

    // 处理分配给当前线程的所有元素
    for (int i = start_i; i < end_i; i++) {
        q[i] = 0.0f;

        for (int j = 0; j < _PB_NY; j++) {
            q[i] += A[i * NY + j] * p[j];
        }
    }
}

#ifdef MINI_DATASET
__global__ void bicg_kernel1_cache(int nx, int ny, DATA_TYPE *A, DATA_TYPE *r, DATA_TYPE *s)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    // 计算每个线程需要处理的元素数量
    int items_per_thread = ny / num_threads;
    int remainder = ny % num_threads;

    // 计算当前线程的起始和结束位置
    int start_j = thread_id * items_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_j = start_j + items_per_thread + (thread_id < remainder ? 1 : 0);
    CACHEb_INIT(s, DATA_TYPE, &s[start_j], 0, (end_j - start_j) * sizeof(DATA_TYPE));
    CACHEb_INIT(r, DATA_TYPE, r, 0, nx * sizeof(DATA_TYPE));
    CACHEs_INIT(A, DATA_TYPE, A, 0, 15);
    DATA_TYPE tmp_s, tmp_r, tmp_A;
    // 先初始化输出数组
    for (int j = start_j; j < end_j; j++) {
        CACHEb_WT(s, &s[j - start_j], 0);
    }

    // 交换循环顺序，提高内存访问效率
    for (int i = 0; i < nx; i++) {
        for (int j = start_j; j < end_j; j++) {
            CACHEb_RD(s, &s[j - start_j], tmp_s);
            CACHEb_RD(r, &r[i], tmp_r);
            CACHEs_RD(A, &A[i * ny + j], tmp_A);
            tmp_s += tmp_r * tmp_A;
            CACHEb_WT(s, &s[j - start_j], tmp_s);
        }
    }
    CACHEb_FLUSH(s);
    CACHEb_INVALID(r);
    CACHEs_INVALID(A);
}

__global__ void bicg_kernel2_cache(int nx, int ny, DATA_TYPE *A, DATA_TYPE *p, DATA_TYPE *q)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    // 计算每个线程需要处理的元素数量
    int items_per_thread = _PB_NX / num_threads;
    int remainder = _PB_NX % num_threads;

    // 计算当前线程的起始和结束位置
    int start_i = thread_id * items_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_i = start_i + items_per_thread + (thread_id < remainder ? 1 : 0);

    // 处理分配给当前线程的所有元素
    CACHEb_INIT(q, DATA_TYPE, &q[start_i], 0, (end_i - start_i) * sizeof(DATA_TYPE));
    CACHEb_INIT(p, DATA_TYPE, p, 0, ny * sizeof(DATA_TYPE));
    CACHEs_INIT(A, DATA_TYPE, A, 0, 15);
    DATA_TYPE tmp_q, tmp_p, tmp_A;

    for (int i = start_i; i < end_i; i++) {
        tmp_q = 0.0f;
        for (int j = 0; j < _PB_NY; j++) {
            CACHEs_RD(A, &A[i * ny + j], tmp_A);
            CACHEb_RD(p, &p[j], tmp_p);
            tmp_q += tmp_A * tmp_p;
        }
        CACHEb_WT(q, &q[i - start_i], tmp_q);
    }
    CACHEb_FLUSH(q);
    CACHEb_INVALID(p);
    CACHEs_INVALID(A);
}
#endif

#ifdef SMALL_DATASET
__global__ void bicg_kernel1_cache(int nx, int ny, DATA_TYPE *A, DATA_TYPE *r, DATA_TYPE *s)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    // 计算每个线程需要处理的元素数量
    int items_per_thread = ny / num_threads;
    int remainder = ny % num_threads;

    // 计算当前线程的起始和结束位置
    int start_j = thread_id * items_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_j = start_j + items_per_thread + (thread_id < remainder ? 1 : 0);
    CACHEb_INIT(s, DATA_TYPE, &s[start_j], 0, (end_j - start_j) * sizeof(DATA_TYPE));
    CACHEb_INIT(r, DATA_TYPE, r, 0, nx * sizeof(DATA_TYPE));
    CACHEs_INIT(A, DATA_TYPE, A, 0, 15);
    DATA_TYPE tmp_s, tmp_r, tmp_A;
    // 先初始化输出数组
    for (int j = start_j; j < end_j; j++) {
        CACHEb_WT(s, &s[j - start_j], 0);
    }

    // 交换循环顺序，提高内存访问效率
    for (int i = 0; i < nx; i++) {
        for (int j = start_j; j < end_j; j++) {
            CACHEb_RD(s, &s[j - start_j], tmp_s);
            CACHEb_RD(r, &r[i], tmp_r);
            CACHEs_RD(A, &A[i * ny + j], tmp_A);
            tmp_s += tmp_r * tmp_A;
            CACHEb_WT(s, &s[j - start_j], tmp_s);
        }
    }
    CACHEb_FLUSH(s);
    CACHEb_INVALID(r);
    CACHEs_INVALID(A);
}

__global__ void bicg_kernel2_cache(int nx, int ny, DATA_TYPE *A, DATA_TYPE *p, DATA_TYPE *q)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    // 计算每个线程需要处理的元素数量
    int items_per_thread = _PB_NX / num_threads;
    int remainder = _PB_NX % num_threads;

    // 计算当前线程的起始和结束位置
    int start_i = thread_id * items_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_i = start_i + items_per_thread + (thread_id < remainder ? 1 : 0);

    // 处理分配给当前线程的所有元素
    CACHEb_INIT(q, DATA_TYPE, &q[start_i], 0, (end_i - start_i) * sizeof(DATA_TYPE));
    CACHEb_INIT(p, DATA_TYPE, p, 0, ny * sizeof(DATA_TYPE));
    CACHEs_INIT(A, DATA_TYPE, A, 0, 15);
    DATA_TYPE tmp_q, tmp_p, tmp_A;

    for (int i = start_i; i < end_i; i++) {
        tmp_q = 0.0f;
        for (int j = 0; j < _PB_NY; j++) {
            CACHEs_RD(A, &A[i * ny + j], tmp_A);
            CACHEb_RD(p, &p[j], tmp_p);
            tmp_q += tmp_A * tmp_p;
        }
        CACHEb_WT(q, &q[i - start_i], tmp_q);
    }
    CACHEb_FLUSH(q);
    CACHEb_INVALID(p);
    CACHEs_INVALID(A);
}
#endif

#ifdef STANDARD_DATASET /* Default if unspecified. */
__global__ void bicg_kernel1_cache(int nx, int ny, DATA_TYPE *A, DATA_TYPE *r, DATA_TYPE *s)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    // 计算每个线程需要处理的元素数量
    int items_per_thread = ny / num_threads;
    int remainder = ny % num_threads;

    // 计算当前线程的起始和结束位置
    int start_j = thread_id * items_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_j = start_j + items_per_thread + (thread_id < remainder ? 1 : 0);
    CACHEb_INIT(s, DATA_TYPE, &s[start_j], 0, (end_j - start_j) * sizeof(DATA_TYPE));
    CACHEb_INIT(r, DATA_TYPE, r, 0, nx * sizeof(DATA_TYPE));
    CACHEs_INIT(A, DATA_TYPE, A, 0, 14);
    DATA_TYPE tmp_s, tmp_r, tmp_A;
    // 先初始化输出数组
    for (int j = start_j; j < end_j; j++) {
        CACHEb_WT(s, &s[j - start_j], 0);
    }

    // 交换循环顺序，提高内存访问效率
    for (int i = 0; i < nx; i++) {
        for (int j = start_j; j < end_j; j++) {
            CACHEb_RD(s, &s[j - start_j], tmp_s);
            CACHEb_RD(r, &r[i], tmp_r);
            CACHEs_RD(A, &A[i * ny + j], tmp_A);
            tmp_s += tmp_r * tmp_A;
            CACHEb_WT(s, &s[j - start_j], tmp_s);
        }
    }
    CACHEb_FLUSH(s);
    CACHEb_INVALID(r);
    CACHEs_INVALID(A);
}

__global__ void bicg_kernel2_cache(int nx, int ny, DATA_TYPE *A, DATA_TYPE *p, DATA_TYPE *q)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    // 计算每个线程需要处理的元素数量
    int items_per_thread = _PB_NX / num_threads;
    int remainder = _PB_NX % num_threads;

    // 计算当前线程的起始和结束位置
    int start_i = thread_id * items_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_i = start_i + items_per_thread + (thread_id < remainder ? 1 : 0);

    // 处理分配给当前线程的所有元素
    CACHEb_INIT(q, DATA_TYPE, &q[start_i], 0, (end_i - start_i) * sizeof(DATA_TYPE));
    CACHEb_INIT(p, DATA_TYPE, p, 0, ny * sizeof(DATA_TYPE));
    CACHEs_INIT(A, DATA_TYPE, A, 0, 14);
    DATA_TYPE tmp_q, tmp_p, tmp_A;

    for (int i = start_i; i < end_i; i++) {
        tmp_q = 0.0f;
        for (int j = 0; j < _PB_NY; j++) {
            CACHEs_RD(A, &A[i * ny + j], tmp_A);
            CACHEb_RD(p, &p[j], tmp_p);
            tmp_q += tmp_A * tmp_p;
        }
        CACHEb_WT(q, &q[i - start_i], tmp_q);
    }
    CACHEb_FLUSH(q);
    CACHEb_INVALID(p);
    CACHEs_INVALID(A);
}
#endif

#ifdef LARGE_DATASET
__global__ void bicg_kernel1_cache(int nx, int ny, DATA_TYPE *A, DATA_TYPE *r, DATA_TYPE *s)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    // 计算每个线程需要处理的元素数量
    int items_per_thread = ny / num_threads;
    int remainder = ny % num_threads;

    // 计算当前线程的起始和结束位置
    int start_j = thread_id * items_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_j = start_j + items_per_thread + (thread_id < remainder ? 1 : 0);
    CACHEb_INIT(s, DATA_TYPE, &s[start_j], 0, (end_j - start_j) * sizeof(DATA_TYPE));
    CACHEs_INIT(r, DATA_TYPE, r, 0, 15);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 14);
    DATA_TYPE tmp_s, tmp_r, tmp_A;
    // 先初始化输出数组
    for (int j = start_j; j < end_j; j++) {
        CACHEb_WT(s, &s[j - start_j], 0);
    }

    // 交换循环顺序，提高内存访问效率
    for (int i = 0; i < nx; i++) {
        for (int j = start_j; j < end_j; j++) {
            CACHEb_RD(s, &s[j - start_j], tmp_s);
            CACHEs_RD(r, &r[i], tmp_r);
            CACHEs_RD(A, &A[i * ny + j], tmp_A);
            tmp_s += tmp_r * tmp_A;
            CACHEb_WT(s, &s[j - start_j], tmp_s);
        }
    }
    CACHEb_FLUSH(s);
    CACHEs_INVALID(r);
    CACHEs_INVALID(A);
}

__global__ void bicg_kernel2_cache(int nx, int ny, DATA_TYPE *A, DATA_TYPE *p, DATA_TYPE *q)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    // 计算每个线程需要处理的元素数量
    int items_per_thread = _PB_NX / num_threads;
    int remainder = _PB_NX % num_threads;

    // 计算当前线程的起始和结束位置
    int start_i = thread_id * items_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_i = start_i + items_per_thread + (thread_id < remainder ? 1 : 0);

    // 处理分配给当前线程的所有元素
    CACHEb_INIT(q, DATA_TYPE, &q[start_i], 0, (end_i - start_i) * sizeof(DATA_TYPE));
    CACHEs_INIT(p, DATA_TYPE, p, 0, 15);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 14);
    DATA_TYPE tmp_q, tmp_p, tmp_A;

    for (int i = start_i; i < end_i; i++) {
        tmp_q = 0.0f;
        for (int j = 0; j < _PB_NY; j++) {
            CACHEs_RD(A, &A[i * ny + j], tmp_A);
            CACHEs_RD(p, &p[j], tmp_p);
            tmp_q += tmp_A * tmp_p;
        }
        CACHEb_WT(q, &q[i - start_i], tmp_q);
    }
    CACHEb_FLUSH(q);
    CACHEs_INVALID(p);
    CACHEs_INVALID(A);
}
#endif

#ifdef EXTRALARGE_DATASET
__global__ void bicg_kernel1_cache(int nx, int ny, DATA_TYPE *A, DATA_TYPE *r, DATA_TYPE *s)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    // 计算每个线程需要处理的元素数量
    int items_per_thread = ny / num_threads;
    int remainder = ny % num_threads;

    // 计算当前线程的起始和结束位置
    int start_j = thread_id * items_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_j = start_j + items_per_thread + (thread_id < remainder ? 1 : 0);
    CACHEb_INIT(s, DATA_TYPE, &s[start_j], 0, (end_j - start_j) * sizeof(DATA_TYPE));
    CACHEs_INIT(r, DATA_TYPE, r, 0, 15);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 14);
    DATA_TYPE tmp_s, tmp_r, tmp_A;
    // 先初始化输出数组
    for (int j = start_j; j < end_j; j++) {
        CACHEb_WT(s, &s[j - start_j], 0);
    }

    // 交换循环顺序，提高内存访问效率
    for (int i = 0; i < nx; i++) {
        for (int j = start_j; j < end_j; j++) {
            CACHEb_RD(s, &s[j - start_j], tmp_s);
            CACHEs_RD(r, &r[i], tmp_r);
            CACHEs_RD(A, &A[i * ny + j], tmp_A);
            tmp_s += tmp_r * tmp_A;
            CACHEb_WT(s, &s[j - start_j], tmp_s);
        }
    }
    CACHEb_FLUSH(s);
    CACHEs_INVALID(r);
    CACHEs_INVALID(A);
}

__global__ void bicg_kernel2_cache(int nx, int ny, DATA_TYPE *A, DATA_TYPE *p, DATA_TYPE *q)
{
    int thread_id = get_thread_id();
    int num_threads = get_group_size();

    // 计算每个线程需要处理的元素数量
    int items_per_thread = _PB_NX / num_threads;
    int remainder = _PB_NX % num_threads;

    // 计算当前线程的起始和结束位置
    int start_i = thread_id * items_per_thread + (thread_id < remainder ? thread_id : remainder);
    int end_i = start_i + items_per_thread + (thread_id < remainder ? 1 : 0);

    // 处理分配给当前线程的所有元素
    CACHEb_INIT(q, DATA_TYPE, &q[start_i], 0, (end_i - start_i) * sizeof(DATA_TYPE));
    CACHEs_INIT(p, DATA_TYPE, p, 0, 15);
    CACHEs_INIT(A, DATA_TYPE, A, 0, 14);
    DATA_TYPE tmp_q, tmp_p, tmp_A;

    for (int i = start_i; i < end_i; i++) {
        tmp_q = 0.0f;
        for (int j = 0; j < _PB_NY; j++) {
            CACHEs_RD(A, &A[i * ny + j], tmp_A);
            CACHEs_RD(p, &p[j], tmp_p);
            tmp_q += tmp_A * tmp_p;
        }
        CACHEb_WT(q, &q[i - start_i], tmp_q);
    }
    CACHEb_FLUSH(q);
    CACHEs_INVALID(p);
    CACHEs_INVALID(A);
}
#endif
