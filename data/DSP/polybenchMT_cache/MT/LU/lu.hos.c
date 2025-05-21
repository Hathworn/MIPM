#include <math.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <unistd.h>

#define POLYBENCH_TIME 1

#include "../../common/MTUtilFuncts.h"
#include "../../common/polybench.h"
#include "hthread_host.h"
#include "lu.h"
#include <string.h>

// define the error threshold for the results "not matching"
#define PERCENT_DIFF_ERROR_THRESHOLD 0.05

#define RUN_ON_CPU

void lu(int n, DATA_TYPE POLYBENCH_2D(A, N, N, n, n))
{
    for (int k = 0; k < _PB_N; k++) {
        for (int j = k + 1; j < _PB_N; j++) {
            A[k][j] = A[k][j] / A[k][k];
        }

        for (int i = k + 1; i < _PB_N; i++) {
            for (int j = k + 1; j < _PB_N; j++) {
                A[i][j] = A[i][j] - A[i][k] * A[k][j];
            }
        }
    }
}

void init_array(int n, DATA_TYPE POLYBENCH_2D(A, N, N, n, n))
{
    int i, j;

    for (i = 0; i < n; i++) {
        for (j = 0; j < n; j++) {
            A[i][j] = ((DATA_TYPE)i * j + 1) / N;
        }
    }
}

void compareResults(int n, DATA_TYPE POLYBENCH_2D(A_cpu, N, N, n, n),
                    DATA_TYPE POLYBENCH_2D(A_outputFromDsp, N, N, n, n))
{
    int i, j, fail;
    fail = 0;

    // Compare a and b
    for (i = 0; i < n; i++) {
        for (j = 0; j < n; j++) {
            if (percentDiff(A_cpu[i][j], A_outputFromDsp[i][j]) > PERCENT_DIFF_ERROR_THRESHOLD) {
                fail++;
            }
        }
    }

    // 新增fail_percent计算
    double fail_percent = (100.0 * fail) / (double)(n * n);
    printf("Non-Matching CPU-DSP Outputs Beyond Error Threshold of %4.2f Percent: %d (%.2lf%%)\n",
           PERCENT_DIFF_ERROR_THRESHOLD, fail, fail_percent);
}

// void luDSP(int n, DATA_TYPE POLYBENCH_2D(A, N, N, n, n), DATA_TYPE POLYBENCH_2D(A_outputFromDsp, N, N, n, n),
//            double *t_DSP_start, double *t_DSP_end)
// {
//     memcpy(A_outputFromDsp, A, sizeof(DATA_TYPE) * N * N);

//     int retc = hthread_dev_open(clusterId);
//     M_checkRetC(retc, hthread_dev_open);
//     retc = hthread_dat_load(clusterId, devProgram);
//     M_checkRetC(retc, hthread_dat_load);

//     uint64_t args[3];
//     args[0] = (uint64_t)toRawBits(n);
//     args[2] = (uint64_t)(A_outputFromDsp);

//     int groupId = hthread_group_create(clusterId, nthreads);
//     hthread_group_wait(groupId); // 等待线程组处于空闲状态
//     polybench_timer_start(t_DSP_start);
//     for (int k = 0; k < N; k++) {
//         args[1] = (uint64_t)toRawBits(k);
//         hthread_group_exec(groupId, kernel1, 2, 1, args);
//         hthread_group_wait(groupId);
//         hthread_group_exec(groupId, kernel2, 2, 1, args);
//         hthread_group_wait(groupId);
//     }
//     polybench_timer_stop(t_DSP_end);
//     hthread_group_destroy(groupId);
// }

int threshold = N / 2; // 例如，剩余大小小于N/8时切换到CPU

void luDSP(int n, DATA_TYPE POLYBENCH_2D(A, N, N, n, n), DATA_TYPE POLYBENCH_2D(A_outputFromDsp, N, N, n, n),
                 double *t_DSP_start, double *t_DSP_end)
{
    memcpy(A_outputFromDsp, A, sizeof(DATA_TYPE) * N * N);

    int retc = hthread_dev_open(clusterId);
    M_checkRetC(retc, hthread_dev_open);
    retc = hthread_dat_load(clusterId, devProgram);
    M_checkRetC(retc, hthread_dat_load);

    uint64_t args[3];
    args[0] = (uint64_t)toRawBits(n);
    args[2] = (uint64_t)(A_outputFromDsp);

    // 创建一个固定的线程组
    int groupId = hthread_group_create(clusterId, nthreads);
    hthread_group_wait(groupId);

    polybench_timer_start(t_DSP_start);
    
    for (int k = 0; k < N; k++) {
        if (N - k <= threshold) {
            // 在CPU上完成剩余计算
            for (int kk = k; kk < N; kk++) {
                // 第一步：规范化第kk行
                DATA_TYPE pivot = A_outputFromDsp[kk][kk];
                for (int j = kk + 1; j < N; j++) {
                    A_outputFromDsp[kk][j] = A_outputFromDsp[kk][j] / pivot;
                }
                
                // 第二步：更新子矩阵
                for (int i = kk + 1; i < N; i++) {
                    for (int j = kk + 1; j < N; j++) {
                        A_outputFromDsp[i][j] = A_outputFromDsp[i][j] 
                            - A_outputFromDsp[i][kk] * A_outputFromDsp[kk][j];
                    }
                }
            }
            break; // 完成所有计算，退出循环
        } else {
            // 使用DSP计算
            args[1] = (uint64_t)toRawBits(k);
            hthread_group_exec(groupId, kernel1_cache, 2, 1, args);
            hthread_group_wait(groupId);
            hthread_group_exec(groupId, kernel2_cache, 2, 1, args);
            hthread_group_wait(groupId);
        }
    }
    
    polybench_timer_stop(t_DSP_end);
    hthread_group_destroy(groupId);
}

// void luDSP_cache(int n, DATA_TYPE POLYBENCH_2D(A, N, N, n, n), DATA_TYPE POLYBENCH_2D(A_outputFromDsp, N, N, n, n),
//                  double *t_DSP_start, double *t_DSP_end)
// {
//     memcpy(A_outputFromDsp, A, sizeof(DATA_TYPE) * N * N);

//     int retc = hthread_dev_open(clusterId);
//     M_checkRetC(retc, hthread_dev_open);
//     retc = hthread_dat_load(clusterId, devProgram);
//     M_checkRetC(retc, hthread_dat_load);

//     uint64_t args[3];
//     args[0] = (uint64_t)toRawBits(n);
//     args[2] = (uint64_t)(A_outputFromDsp);

//     int groupId = hthread_group_create(clusterId, nthreads);
//     hthread_group_wait(groupId); // 等待线程组处于空闲状态
//     polybench_timer_start(t_DSP_start);
//     for (int k = 0; k < N; k++) {
//         args[1] = (uint64_t)toRawBits(k);
//         hthread_group_exec(groupId, kernel1_cache, 2, 1, args);
//         hthread_group_wait(groupId);
//         hthread_group_exec(groupId, kernel2_cache, 2, 1, args);
//         hthread_group_wait(groupId);
//     }
//     polybench_timer_stop(t_DSP_end);
//     hthread_group_destroy(groupId);
// }

void luDSP_cache(int n, DATA_TYPE POLYBENCH_2D(A, N, N, n, n), DATA_TYPE POLYBENCH_2D(A_outputFromDsp, N, N, n, n),
                 double *t_DSP_start, double *t_DSP_end)
{
    memcpy(A_outputFromDsp, A, sizeof(DATA_TYPE) * N * N);

    int retc = hthread_dev_open(clusterId);
    M_checkRetC(retc, hthread_dev_open);
    retc = hthread_dat_load(clusterId, devProgram);
    M_checkRetC(retc, hthread_dat_load);

    uint64_t args[3];
    args[0] = (uint64_t)toRawBits(n);
    args[2] = (uint64_t)(A_outputFromDsp);

    // 创建一个固定的线程组
    int groupId = hthread_group_create(clusterId, nthreads);
    hthread_group_wait(groupId);

    polybench_timer_start(t_DSP_start);
    
    for (int k = 0; k < N; k++) {
        if (N - k <= threshold) {
            // 在CPU上完成剩余计算
            for (int kk = k; kk < N; kk++) {
                // 第一步：规范化第kk行
                DATA_TYPE pivot = A_outputFromDsp[kk][kk];
                for (int j = kk + 1; j < N; j++) {
                    A_outputFromDsp[kk][j] = A_outputFromDsp[kk][j] / pivot;
                }
                
                // 第二步：更新子矩阵
                for (int i = kk + 1; i < N; i++) {
                    for (int j = kk + 1; j < N; j++) {
                        A_outputFromDsp[i][j] = A_outputFromDsp[i][j] 
                            - A_outputFromDsp[i][kk] * A_outputFromDsp[kk][j];
                    }
                }
            }
            break; // 完成所有计算，退出循环
        } else {
            // 使用DSP计算
            args[1] = (uint64_t)toRawBits(k);
            hthread_group_exec(groupId, kernel1_cache, 2, 1, args);
            hthread_group_wait(groupId);
            hthread_group_exec(groupId, kernel2_cache, 2, 1, args);
            hthread_group_wait(groupId);
        }
    }
    
    polybench_timer_stop(t_DSP_end);
    hthread_group_destroy(groupId);
}

/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static void print_array(int n, DATA_TYPE POLYBENCH_2D(A, N, N, n, n))

{
    int i, j;

    for (i = 0; i < n; i++)
        for (j = 0; j < n; j++) {
            fprintf(stderr, DATA_PRINTF_MODIFIER, A[i][j]);
            if ((i * n + j) % 20 == 0)
                fprintf(stderr, "\n");
        }
    fprintf(stderr, "\n");
}

int main(int argc, char *argv[])
{
    double t_DSP_start, t_DSP_end, t_CPU_start, t_CPU_end;
    double t_DSP_sum = 0, t_CPU_sum = 0, t_DSP_cache_sum = 0;

    int n = N;

    /* DSP device init. */
    int clusterId = 0;
    int nthreads = THREAD_NUM;
    clusterId = DSP_init(devProgram, nthreads);
    if (clusterId == -1) {
        return 0;
    }

    /* Variable declaration/allocation. */
    POLYBENCH_2D_ARRAY_DECL(A, DATA_TYPE, N, N, n, n, clusterId, HT_MEM_RW);
    POLYBENCH_2D_ARRAY_DECL(A_outputFromDsp, DATA_TYPE, N, N, n, n, clusterId, HT_MEM_RW);

    for (int i = 0; i < ROUND; i++) {
        init_array(n, POLYBENCH_ARRAY(A));
        luDSP(n, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(A_outputFromDsp), &t_DSP_start, &t_DSP_end);
        t_DSP_sum += t_DSP_end - t_DSP_start;

        init_array(n, POLYBENCH_ARRAY(A));
        luDSP_cache(n, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(A_outputFromDsp), &t_DSP_start, &t_DSP_end);
        t_DSP_cache_sum += t_DSP_end - t_DSP_start;

#ifdef RUN_ON_CPU
        init_array(n, POLYBENCH_ARRAY(A));
        /* Start CPU timer. */
        polybench_timer_start(&t_CPU_start);

        lu(n, POLYBENCH_ARRAY(A));

        /* Stop CPU timer. */
        polybench_timer_stop(&t_CPU_end);
        t_CPU_sum += t_CPU_end - t_CPU_start;
        compareResults(n, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(A_outputFromDsp));

#else // print output to stderr so no dead code elimination

        print_array(n, POLYBENCH_ARRAY(A_outputFromDsp));

#endif // RUN_ON_CPU
    }

    /* print performance metrics */
    polybench_PM_print_cache("lu_kernel", clusterId, nthreads, t_CPU_sum / ROUND, t_DSP_sum / ROUND,
                             t_DSP_cache_sum / ROUND, get_dataset_name());

    /* free memory space, Unload the dat file, close the cluster */
    POLYBENCH_FREE_ARRAY(A);
    POLYBENCH_FREE_ARRAY(A_outputFromDsp);
    int retc = hthread_dat_unload(clusterId);
    M_checkRetC(retc, hthread_dat_unload);
    retc = hthread_dev_close(clusterId);
    M_checkRetC(retc, hthread_dev_close);

    return 0;
}

#include "../../common/polybench.c"
