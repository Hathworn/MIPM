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
#include "gesummv.h"
#include "hthread_host.h"

// define the error threshold for the results "not matching"
#define PERCENT_DIFF_ERROR_THRESHOLD 0.05

#define GPU_DEVICE 0

/* Declared constant values for ALPHA and BETA (same as values in PolyBench 2.0) */
#define ALPHA 43532.0f
#define BETA 12313.0f

#define RUN_ON_CPU

void gesummv(int n, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE POLYBENCH_2D(A, N, N, n, n),
             DATA_TYPE POLYBENCH_2D(B, N, N, n, n), DATA_TYPE POLYBENCH_1D(tmp, N, n), DATA_TYPE POLYBENCH_1D(x, N, n),
             DATA_TYPE POLYBENCH_1D(y, N, n))
{
    int i, j;

    for (i = 0; i < _PB_N; i++) {
        tmp[i] = 0;
        y[i] = 0;
        for (j = 0; j < _PB_N; j++) {
            tmp[i] = A[i][j] * x[j] + tmp[i];
            y[i] = B[i][j] * x[j] + y[i];
        }

        y[i] = alpha * tmp[i] + beta * y[i];
    }
}

void init(int n, DATA_TYPE *alpha, DATA_TYPE *beta, DATA_TYPE POLYBENCH_2D(A, N, N, n, n),
          DATA_TYPE POLYBENCH_2D(B, N, N, n, n), DATA_TYPE POLYBENCH_1D(x, N, n))
{
    int i, j;

    *alpha = 43532;
    *beta = 12313;

    for (i = 0; i < n; i++) {
        x[i] = ((DATA_TYPE)i) / N;

        for (j = 0; j < n; j++) {
            A[i][j] = ((DATA_TYPE)i * j) / N;
            B[i][j] = ((DATA_TYPE)i * j) / n;
        }
    }
}

void compareResults(int n, DATA_TYPE POLYBENCH_1D(y, N, n), DATA_TYPE POLYBENCH_1D(y_outputFromGpu, N, n))
{
    int i, fail;
    fail = 0;

    for (i = 0; i < n; i++) {
        if (percentDiff(y[i], y_outputFromGpu[i]) > PERCENT_DIFF_ERROR_THRESHOLD) {
            fail++;
        }
    }

    // Print results
    double fail_percent = (100.0 * fail) / (double)(n);
    printf("Non-Matching CPU-DSP Outputs Beyond Error Threshold of %4.2f Percent: %d (%.2lf%%)\n",
           PERCENT_DIFF_ERROR_THRESHOLD, fail, fail_percent);
}

void gesummvDSP(int n, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE POLYBENCH_2D(A, N, N, n, n),
                DATA_TYPE POLYBENCH_2D(B, N, N, n, n), DATA_TYPE POLYBENCH_1D(tmp, N, n),
                DATA_TYPE POLYBENCH_1D(x, N, n), DATA_TYPE POLYBENCH_1D(y, N, n),
                DATA_TYPE POLYBENCH_1D(y_outputFromDsp, N, n), double *t_DSP_start, double *t_DSP_end)
{
    int retc = hthread_dev_open(clusterId);
    if (retc != 0) {
        fprintf(stderr, "Failed to open DSP cluster %d. Error code: %d\n", clusterId, retc);
        return;
    }
    M_checkRetC(retc, hthread_dev_open);
    retc = hthread_dat_load(clusterId, devProgram);
    M_checkRetC(retc, hthread_dat_load);

    uint64_t args[8];
    args[0] = (uint64_t)toRawBits(n);
    args[1] = (uint64_t)toRawBits(alpha);
    args[2] = (uint64_t)toRawBits(beta);
    args[3] = (uint64_t)A;
    args[4] = (uint64_t)B;
    args[5] = (uint64_t)tmp;
    args[6] = (uint64_t)x;
    args[7] = (uint64_t)y_outputFromDsp;

    polybench_timer_start(t_DSP_start);

    int groupId = hthread_group_create(clusterId, nthreads, kernel, 3, 5, args);
    hthread_group_wait(groupId);

    polybench_timer_stop(t_DSP_end);
    hthread_group_destroy(groupId);
}

void gesummvDSP_cache(int n, DATA_TYPE alpha, DATA_TYPE beta, DATA_TYPE POLYBENCH_2D(A, N, N, n, n),
                DATA_TYPE POLYBENCH_2D(B, N, N, n, n), DATA_TYPE POLYBENCH_1D(tmp, N, n),
                DATA_TYPE POLYBENCH_1D(x, N, n), DATA_TYPE POLYBENCH_1D(y, N, n),
                DATA_TYPE POLYBENCH_1D(y_outputFromDsp, N, n), double *t_DSP_start, double *t_DSP_end)
{
    int retc = hthread_dev_open(clusterId);
    if (retc != 0) {
        fprintf(stderr, "Failed to open DSP cluster %d. Error code: %d\n", clusterId, retc);
        return;
    }
    M_checkRetC(retc, hthread_dev_open);
    retc = hthread_dat_load(clusterId, devProgram);
    M_checkRetC(retc, hthread_dat_load);

    uint64_t args[8];
    args[0] = (uint64_t)toRawBits(n);
    args[1] = (uint64_t)toRawBits(alpha);
    args[2] = (uint64_t)toRawBits(beta);
    args[3] = (uint64_t)A;
    args[4] = (uint64_t)B;
    args[5] = (uint64_t)tmp;
    args[6] = (uint64_t)x;
    args[7] = (uint64_t)y_outputFromDsp;

    polybench_timer_start(t_DSP_start);

    int groupId = hthread_group_create(clusterId, nthreads, kernel_cache, 3, 5, args);
    hthread_group_wait(groupId);

    polybench_timer_stop(t_DSP_end);
    hthread_group_destroy(groupId);
}

void print_array(int n, DATA_TYPE POLYBENCH_1D(y, N, n))
{
    int i;
    for (i = 0; i < n; i++) {
        fprintf(stderr, DATA_PRINTF_MODIFIER, y[i]);
        if (i % 20 == 0)
            fprintf(stderr, "\n");
    }
}

int main(int argc, char *argv[])
{
    double t_DSP_start, t_DSP_end, t_CPU_start, t_CPU_end;
    double t_DSP_sum = 0, t_CPU_sum = 0, t_DSP_cache_sum = 0;

    /* Retrieve problem size. */
    int n = N;

    /* DSP device init. */
    int clusterId = 0;
    int nthreads = THREAD_NUM;
    clusterId = DSP_init(devProgram, nthreads);
    if (clusterId == -1) {
        fprintf(stderr, "DSP initialization failed. Please check hardware and configuration.\n");
        return 0;
    }

    /* Variable declaration/allocation. */
    DATA_TYPE alpha;
    DATA_TYPE beta;
    POLYBENCH_2D_ARRAY_DECL(A, DATA_TYPE, N, N, n, n, clusterId, HT_MEM_RO);
    POLYBENCH_2D_ARRAY_DECL(B, DATA_TYPE, N, N, n, n, clusterId, HT_MEM_RO);
    POLYBENCH_1D_ARRAY_DECL(tmp, DATA_TYPE, N, n, clusterId, HT_MEM_WO);
    POLYBENCH_1D_ARRAY_DECL(x, DATA_TYPE, N, n, clusterId, HT_MEM_RO);
    POLYBENCH_1D_ARRAY_DECL(y, DATA_TYPE, N, n, clusterId, HT_MEM_WO);
    POLYBENCH_1D_ARRAY_DECL(y_outputFromDsp, DATA_TYPE, N, n, clusterId, HT_MEM_WO);

    for (int i = 0; i < ROUND; i++) {
        init(n, &alpha, &beta, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(B), POLYBENCH_ARRAY(x));
        gesummvDSP(n, alpha, beta, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(B), POLYBENCH_ARRAY(tmp), POLYBENCH_ARRAY(x),
                   POLYBENCH_ARRAY(y), POLYBENCH_ARRAY(y_outputFromDsp), &t_DSP_start, &t_DSP_end);
        t_DSP_sum += t_DSP_end - t_DSP_start;

        init(n, &alpha, &beta, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(B), POLYBENCH_ARRAY(x));
        gesummvDSP_cache(n, alpha, beta, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(B), POLYBENCH_ARRAY(tmp), POLYBENCH_ARRAY(x),
                   POLYBENCH_ARRAY(y), POLYBENCH_ARRAY(y_outputFromDsp), &t_DSP_start, &t_DSP_end);
        t_DSP_cache_sum += t_DSP_end - t_DSP_start;

#ifdef RUN_ON_CPU
        init(n, &alpha, &beta, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(B), POLYBENCH_ARRAY(x));
        /* Start CPU timer. */
        polybench_timer_start(&t_CPU_start);

        gesummv(n, alpha, beta, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(B), POLYBENCH_ARRAY(tmp), POLYBENCH_ARRAY(x),
                POLYBENCH_ARRAY(y));

        /* Stop CPU timer. */
        polybench_timer_stop(&t_CPU_end);
        t_CPU_sum += t_CPU_end - t_CPU_start;
        compareResults(n, POLYBENCH_ARRAY(y), POLYBENCH_ARRAY(y_outputFromDsp));

#else // print output to stderr so no dead code elimination

        print_array(n, POLYBENCH_ARRAY(y_outputFromGpu));

#endif // RUN_ON_CPU
    }

    polybench_PM_print_cache(kernel, clusterId, nthreads, t_CPU_sum / ROUND, t_DSP_sum / ROUND, t_DSP_cache_sum / ROUND, get_dataset_name());

    POLYBENCH_FREE_ARRAY(A);
    POLYBENCH_FREE_ARRAY(B);
    POLYBENCH_FREE_ARRAY(tmp);
    POLYBENCH_FREE_ARRAY(x);
    POLYBENCH_FREE_ARRAY(y);
    POLYBENCH_FREE_ARRAY(y_outputFromDsp);

    int retc = hthread_dat_unload(clusterId);
    M_checkRetC(retc, hthread_dat_unload);
    retc = hthread_dev_close(clusterId);
    M_checkRetC(retc, hthread_dev_close);

    return 0;
}

#include "../../common/polybench.c"
