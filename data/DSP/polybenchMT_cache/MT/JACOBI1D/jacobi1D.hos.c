#include <math.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>
#include <time.h>
#include <unistd.h>

#define POLYBENCH_TIME 1

#include "../../common/MTUtilFuncts.h"
#include "../../common/polybench.h"
#include "hthread_host.h"
#include "jacobi1D.h"

// define the error threshold for the results "not matching"
#define PERCENT_DIFF_ERROR_THRESHOLD 0.05

#define RUN_ON_CPU

void init_array(int n, DATA_TYPE POLYBENCH_1D(A, N, n), DATA_TYPE POLYBENCH_1D(B, N, n)) {
    int i;

    for (i = 0; i < n; i++) {
        A[i] = ((DATA_TYPE)4 * i + 10) / N;
        B[i] = ((DATA_TYPE)7 * i + 11) / N;
    }
}

void runJacobi1DCpu(int tsteps, int n, DATA_TYPE POLYBENCH_1D(A, N, n), DATA_TYPE POLYBENCH_1D(B, N, n)) {
    for (int t = 0; t < _PB_TSTEPS; t++) {
        for (int i = 1; i < _PB_N - 1; i++) {
            B[i] = 0.33333 * (A[i - 1] + A[i] + A[i + 1]);
        }

        for (int j = 1; j < _PB_N - 1; j++) {
            A[j] = B[j];
        }
    }
}

void compareResults(int n, DATA_TYPE POLYBENCH_1D(a, N, n), DATA_TYPE POLYBENCH_1D(a_outputFromDsp, N, n), DATA_TYPE POLYBENCH_1D(b, N, n), DATA_TYPE POLYBENCH_1D(b_outputFromDsp, N, n)) {
    int i, fail;
    fail = 0;

    // Compare a and c
    for (i = 0; i < n; i++) {
        if (percentDiff(a[i], a_outputFromDsp[i]) > PERCENT_DIFF_ERROR_THRESHOLD) {
            fail++;
        }
    }

    for (i = 0; i < n; i++) {
        if (percentDiff(b[i], b_outputFromDsp[i]) > PERCENT_DIFF_ERROR_THRESHOLD) {
            fail++;
        }
    }
    // Print results
    double fail_percent = (100.0 * fail) / (double)(2 * n);
    printf("Non-Matching CPU-DSP Outputs Beyond Error Threshold of %4.2f Percent: %d (%.2lf%%)\n",
           PERCENT_DIFF_ERROR_THRESHOLD, fail, fail_percent);
}

void runJacobi1DDSP(int tsteps, int n, DATA_TYPE POLYBENCH_1D(A, N, n), DATA_TYPE POLYBENCH_1D(B, N, n), DATA_TYPE POLYBENCH_1D(A_outputFromDsp, N, n),
                    DATA_TYPE POLYBENCH_1D(B_outputFromDsp, N, n), double *t_DSP_start, double *t_DSP_end) {
    memcpy(A_outputFromDsp, A, sizeof(DATA_TYPE) * N);
    memcpy(B_outputFromDsp, B, sizeof(DATA_TYPE) * N);

    int retc = hthread_dev_open(clusterId);
    M_checkRetC(retc, hthread_dev_open);
    retc = hthread_dat_load(clusterId, devProgram);
    M_checkRetC(retc, hthread_dat_load);

    uint64_t args[3];
    args[0] = (uint64_t)toRawBits(n);    // 非指针变量
    args[1] = (uint64_t)A_outputFromDsp; // 指针变量
    args[2] = (uint64_t)B_outputFromDsp; // 指针变量
    int groupId = hthread_group_create(clusterId, nthreads);
    polybench_timer_start(t_DSP_start);
    for (int t = 0; t < _PB_TSTEPS; t++) {
        hthread_group_exec(groupId, kernel1, 1, 2, args);
        hthread_group_wait(groupId);
        hthread_group_exec(groupId, kernel2, 1, 2, args);
        hthread_group_wait(groupId);
    }
    polybench_timer_stop(t_DSP_end);
    hthread_group_destroy(groupId);
}

void runJacobi1DDSP_cache(int tsteps, int n, DATA_TYPE POLYBENCH_1D(A, N, n), DATA_TYPE POLYBENCH_1D(B, N, n), DATA_TYPE POLYBENCH_1D(A_outputFromDsp, N, n),
                    DATA_TYPE POLYBENCH_1D(B_outputFromDsp, N, n), double *t_DSP_start, double *t_DSP_end) {
    memcpy(A_outputFromDsp, A, sizeof(DATA_TYPE) * N);
    memcpy(B_outputFromDsp, B, sizeof(DATA_TYPE) * N);

    int retc = hthread_dev_open(clusterId);
    M_checkRetC(retc, hthread_dev_open);
    retc = hthread_dat_load(clusterId, devProgram);
    M_checkRetC(retc, hthread_dat_load);

    uint64_t args[3];
    args[0] = (uint64_t)toRawBits(n);    // 非指针变量
    args[1] = (uint64_t)A_outputFromDsp; // 指针变量
    args[2] = (uint64_t)B_outputFromDsp; // 指针变量
    int groupId = hthread_group_create(clusterId, nthreads);
    polybench_timer_start(t_DSP_start);
    for (int t = 0; t < _PB_TSTEPS; t++) {
        // static double t_kernel1_sum = 0, t_kernel2_sum = 0;
        // double t_kernel1_start, t_kernel1_end, t_kernel2_start, t_kernel2_end;
        
        // polybench_timer_start(&t_kernel1_start);
        hthread_group_exec(groupId, kernel1_cache, 1, 2, args);
        hthread_group_wait(groupId);
        // polybench_timer_stop(&t_kernel1_end);
        // t_kernel1_sum += t_kernel1_end - t_kernel1_start;
        
        // polybench_timer_start(&t_kernel2_start); 
        hthread_group_exec(groupId, kernel2_cache, 1, 2, args);
        hthread_group_wait(groupId);
        // polybench_timer_stop(&t_kernel2_end);
        // t_kernel2_sum += t_kernel2_end - t_kernel2_start;
        
        // if(t == _PB_TSTEPS - 1) {
        //     printf("kernel1总运行时间: %0.6lf 秒\n", t_kernel1_sum);
        //     printf("kernel2总运行时间: %0.6lf 秒\n", t_kernel2_sum);
        //     printf("kernel1占比: %0.2f%%\n", (t_kernel1_sum/(t_kernel1_sum + t_kernel2_sum))*100);
        //     printf("kernel2占比: %0.2f%%\n", (t_kernel2_sum/(t_kernel1_sum + t_kernel2_sum))*100);
        // }
    }
    polybench_timer_stop(t_DSP_end);
    hthread_group_destroy(groupId);
}

/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static void print_array(int n, DATA_TYPE POLYBENCH_1D(A, N, n))

{
    int i;

    for (i = 0; i < n; i++) {
        fprintf(stderr, DATA_PRINTF_MODIFIER, A[i]);
        if (i % 20 == 0)
            fprintf(stderr, "\n");
    }
    fprintf(stderr, "\n");
}

int main(int argc, char **argv) {
    double t_DSP_start, t_DSP_end, t_CPU_start, t_CPU_end;
    double t_DSP_sum = 0, t_CPU_sum = 0, t_DSP_cache_sum = 0;

    /* Retrieve problem size. */
    int n = N;
    int tsteps = TSTEPS;

    /* DSP device init. */
    int clusterId = 0;
    int nthreads = THREAD_NUM;
    clusterId = DSP_init(devProgram, nthreads);
    if (clusterId == -1) {
        return 0;
    }

    POLYBENCH_1D_ARRAY_DECL(a, DATA_TYPE, N, n, clusterId, HT_MEM_RW);
    POLYBENCH_1D_ARRAY_DECL(b, DATA_TYPE, N, n, clusterId, HT_MEM_RW);
    POLYBENCH_1D_ARRAY_DECL(a_outputFromDsp, DATA_TYPE, N, n, clusterId, HT_MEM_RW);
    POLYBENCH_1D_ARRAY_DECL(b_outputFromDsp, DATA_TYPE, N, n, clusterId, HT_MEM_RW);

    for (int i = 0; i < ROUND; i++) {
        init_array(n, POLYBENCH_ARRAY(a), POLYBENCH_ARRAY(b));

        runJacobi1DDSP(tsteps, n, POLYBENCH_ARRAY(a), POLYBENCH_ARRAY(b), POLYBENCH_ARRAY(a_outputFromDsp), POLYBENCH_ARRAY(b_outputFromDsp), &t_DSP_start, &t_DSP_end);
        t_DSP_sum += t_DSP_end - t_DSP_start;

        init_array(n, POLYBENCH_ARRAY(a), POLYBENCH_ARRAY(b));

        runJacobi1DDSP_cache(tsteps, n, POLYBENCH_ARRAY(a), POLYBENCH_ARRAY(b), POLYBENCH_ARRAY(a_outputFromDsp), POLYBENCH_ARRAY(b_outputFromDsp), &t_DSP_start, &t_DSP_end);
        t_DSP_cache_sum += t_DSP_end - t_DSP_start;

#ifdef RUN_ON_CPU
        init_array(n, POLYBENCH_ARRAY(a), POLYBENCH_ARRAY(b));
        
        polybench_timer_start(&t_CPU_start);
        runJacobi1DCpu(tsteps, n, POLYBENCH_ARRAY(a), POLYBENCH_ARRAY(b));
        polybench_timer_stop(&t_CPU_end);
        t_CPU_sum += t_CPU_end - t_CPU_start;

        compareResults(n, POLYBENCH_ARRAY(a), POLYBENCH_ARRAY(a_outputFromDsp), POLYBENCH_ARRAY(b), POLYBENCH_ARRAY(b_outputFromDsp));

#else // print output to stderr so no dead code elimination

        print_array(n, POLYBENCH_ARRAY(a_outputFromDsp));

#endif // RUN_ON_CPU
    }

    /* print performance metrics */
    polybench_PM_print_cache("jacobi1D", clusterId, nthreads, t_CPU_sum / ROUND, t_DSP_sum / ROUND, t_DSP_cache_sum / ROUND, get_dataset_name());

    POLYBENCH_FREE_ARRAY(a);
    POLYBENCH_FREE_ARRAY(a_outputFromDsp);
    POLYBENCH_FREE_ARRAY(b);
    POLYBENCH_FREE_ARRAY(b_outputFromDsp);

    int retc = hthread_dat_unload(clusterId);
    M_checkRetC(retc, hthread_dat_unload);
    retc = hthread_dev_close(clusterId);
    M_checkRetC(retc, hthread_dev_close);
    return 0;
}

#include "../../common/polybench.c"
