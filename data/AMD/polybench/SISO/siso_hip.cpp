#include "hip/hip_runtime.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <assert.h>
#include <unistd.h>
#include <sys/time.h>

#define POLYBENCH_TIME 1

#include "siso.cuh"
#include "../../common/polybench.h"
#include "../../common/polybenchUtilFuncts.h"

#define GPU_DEVICE 0

#define RUN_ON_CPU

// Original SISO function preserved as-is
void siso_cpu(int *OutLa, int *OutLe, int *InLi, int *Ar, int *Br, int *Yr, int *Wr, int N,
              int *initalpha, int *initbeta, int *TmpArBrNow, int *TmpArBrYrWrNow, int *TmpArBrYrWrRevNow,
              int *nexttable, int *pretable)
{
    int alpha[16 * (N + 1)];
    int beta[16 * (N + 1)];
    int tmpL[4];

    for (int i = 0; i < 16; ++i)
    {
        alpha[i] = initalpha[i];
        beta[N * 16 + i] = initbeta[i];
    }

    for (int i = N - 1; i >= 0; i--)
    {
        for (int s = 0; s < 16; ++s)
        {
            int nIdx1 = s * 4;

            tmpL[0] = beta[(i + 1) * 16 + nexttable[nIdx1]] + TmpArBrYrWrNow[(i << 6) + nIdx1];
            tmpL[1] = beta[(i + 1) * 16 + nexttable[nIdx1 + 1]] + TmpArBrYrWrNow[(i << 6) + nIdx1 + 1] + InLi[i * 3];
            tmpL[2] = beta[(i + 1) * 16 + nexttable[nIdx1 + 2]] + TmpArBrYrWrNow[(i << 6) + nIdx1 + 2] + InLi[i * 3 + 1];
            tmpL[3] = beta[(i + 1) * 16 + nexttable[nIdx1 + 3]] + TmpArBrYrWrNow[(i << 6) + nIdx1 + 3] + InLi[i * 3 + 2];

            int tmp1 = (tmpL[0] > tmpL[1]) ? tmpL[0] : tmpL[1];
            int tmp2 = (tmpL[2] > tmpL[3]) ? tmpL[2] : tmpL[3];
            beta[(i << 4) + s] = (tmp1 > tmp2) ? tmp1 : tmp2;
        }
    }

    for (int i = 0; i < N; ++i)
    {
        for (int s = 0; s < 16; ++s)
        {
            int nIdx1 = s * 4;

            tmpL[0] = alpha[(i << 4) + pretable[nIdx1]] + TmpArBrYrWrRevNow[(i << 6) + nIdx1];
            tmpL[1] = alpha[(i << 4) + pretable[nIdx1 + 1]] + TmpArBrYrWrRevNow[(i << 6) + nIdx1 + 1] + InLi[i * 3];
            tmpL[2] = alpha[(i << 4) + pretable[nIdx1 + 2]] + TmpArBrYrWrRevNow[(i << 6) + nIdx1 + 2] + InLi[i * 3 + 1];
            tmpL[3] = alpha[(i << 4) + pretable[nIdx1 + 3]] + TmpArBrYrWrRevNow[(i << 6) + nIdx1 + 3] + InLi[i * 3 + 2];

            int tmp1 = (tmpL[0] > tmpL[1]) ? tmpL[0] : tmpL[1];
            int tmp2 = (tmpL[2] > tmpL[3]) ? tmpL[2] : tmpL[3];
            alpha[(i + 1) * 16 + s] = (tmp1 > tmp2) ? tmp1 : tmp2;
        }
    }

    for (int i = 0; i < N; ++i)
    {
        tmpL[0] = CUSTOMMIN;
        tmpL[1] = CUSTOMMIN;
        tmpL[2] = CUSTOMMIN;
        tmpL[3] = CUSTOMMIN;

        for (int s = 0; s < 16; ++s)
        {
            int nIdx1 = s * 4;

            int tmp1 = beta[(i + 1) * 16 + nexttable[nIdx1]] + alpha[(i << 4) + s] + TmpArBrYrWrNow[(i << 6) + nIdx1];
            int tmp2 = beta[(i + 1) * 16 + nexttable[nIdx1 + 1]] + alpha[(i << 4) + s] + TmpArBrYrWrNow[(i << 6) + nIdx1 + 1] + InLi[i * 3];
            int tmp3 = beta[(i + 1) * 16 + nexttable[nIdx1 + 2]] + alpha[(i << 4) + s] + TmpArBrYrWrNow[(i << 6) + nIdx1 + 2] + InLi[i * 3 + 1];
            int tmp4 = beta[(i + 1) * 16 + nexttable[nIdx1 + 3]] + alpha[(i << 4) + s] + TmpArBrYrWrNow[(i << 6) + nIdx1 + 3] + InLi[i * 3 + 2];

            tmpL[0] = (tmp1 > tmpL[0]) ? tmp1 : tmpL[0];
            tmpL[1] = (tmp2 > tmpL[1]) ? tmp2 : tmpL[1];
            tmpL[2] = (tmp3 > tmpL[2]) ? tmp3 : tmpL[2];
            tmpL[3] = (tmp4 > tmpL[3]) ? tmp4 : tmpL[3];
        }
        OutLa[i * 3] = tmpL[1] - tmpL[0];
        OutLe[i * 3] = OutLa[i * 3] - Br[i] * 2 - InLi[i * 3];

        OutLa[i * 3 + 1] = tmpL[2] - tmpL[0];
        OutLe[i * 3 + 1] = OutLa[i * 3 + 1] - InLi[i * 3 + 1] - Ar[i] * 2;

        OutLa[i * 3 + 2] = tmpL[3] - tmpL[0];
        OutLe[i * 3 + 2] = OutLa[i * 3 + 2] - InLi[i * 3 + 2] - Ar[i] * 2 - Br[i] * 2;
    }

    for (int i = 0; i < 16; ++i)
    {
        initalpha[i] = alpha[N * 16 + i];
        initbeta[i] = beta[i];
    }
}

void init_array(int N, int *InLi, int *Ar, int *Br, int *Yr, int *Wr,
                int *TmpArBrNow, int *TmpArBrYrWrNow, int *TmpArBrYrWrRevNow,
                int *nexttable, int *pretable, int *initalpha, int *initbeta)
{
    for (int i = 0; i < N * 3; i++)
    {
        InLi[i] = ((int)i * (i + 1)) % 100;
    }
    for (int i = 0; i < N; i++)
    {
        Ar[i] = ((int)i * (i + 2)) % 100;
        Br[i] = ((int)i * (i + 3)) % 100;
        Yr[i] = ((int)i * (i + 4)) % 100;
        Wr[i] = ((int)i * (i + 5)) % 100;
    }
    for (int i = 0; i < N * 64; i++)
    {
        TmpArBrNow[i] = ((int)i * (i + 6)) % 100;
        TmpArBrYrWrNow[i] = ((int)i * (i + 7)) % 100;
        TmpArBrYrWrRevNow[i] = ((int)i * (i + 8)) % 100;
    }
    for (int i = 0; i < 64; i++)
    {
        nexttable[i] = i % 16; // Ensure valid indices [0, 15]
        pretable[i] = i % 16;
    }
    for (int i = 0; i < 16; i++)
    {
        initalpha[i] = ((int)i * (i + 9)) % 100;
        initbeta[i] = ((int)i * (i + 10)) % 100;
    }
}

void compareResults(int N, int *OutLa_cpu, int *OutLe_cpu, int *OutLa_gpu, int *OutLe_gpu)
{
    int i, fail;
    fail = 0;

    for (i = 0; i < N * 3; i++)
    {
        if (OutLa_cpu[i] != OutLa_gpu[i])
        {
            //printf("%d %d\n",OutLa_cpu[i],OutLa_gpu[i]);
            fail++;
        }
        if (OutLe_cpu[i] != OutLe_gpu[i])
        {
            //printf("%d %d\n",OutLe_cpu[i],OutLe_gpu[i]);
            fail++;
        }
    }

    printf("Non-Matching CPU-GPU Outputs: %d\n", fail);
}

void GPU_argv_init()
{
    hipDeviceProp_t deviceProp;
    hipGetDeviceProperties(&deviceProp, GPU_DEVICE);
    printf("setting device %d with name %s\n", GPU_DEVICE, deviceProp.name);
    hipSetDevice(GPU_DEVICE);
}

__global__ void beta_kernel(int* beta, int* TmpArBrYrWrNow, int* InLi, int* nexttable, int i, int N)
{
    int s = threadIdx.x;
    if (s < 16)
    {
        int nIdx1 = s * 4;
        int tmpL0 = beta[(i + 1) * 16 + nexttable[nIdx1]] + TmpArBrYrWrNow[i * 64 + nIdx1];
        int tmpL1 = beta[(i + 1) * 16 + nexttable[nIdx1 + 1]] + TmpArBrYrWrNow[i * 64 + nIdx1 + 1] + InLi[i * 3];
        int tmpL2 = beta[(i + 1) * 16 + nexttable[nIdx1 + 2]] + TmpArBrYrWrNow[i * 64 + nIdx1 + 2] + InLi[i * 3 + 1];
        int tmpL3 = beta[(i + 1) * 16 + nexttable[nIdx1 + 3]] + TmpArBrYrWrNow[i * 64 + nIdx1 + 3] + InLi[i * 3 + 2];
        int tmp1 = (tmpL0 > tmpL1) ? tmpL0 : tmpL1;
        int tmp2 = (tmpL2 > tmpL3) ? tmpL2 : tmpL3;
        beta[i * 16 + s] = (tmp1 > tmp2) ? tmp1 : tmp2;
    }
}

__global__ void alpha_kernel(int* alpha, int* TmpArBrYrWrRevNow, int* InLi, int* pretable, int i, int N)
{
    int s = threadIdx.x;
    if (s < 16)
    {
        int nIdx1 = s * 4;
        int tmpL0 = alpha[i * 16 + pretable[nIdx1]] + TmpArBrYrWrRevNow[i * 64 + nIdx1];
        int tmpL1 = alpha[i * 16 + pretable[nIdx1 + 1]] + TmpArBrYrWrRevNow[i * 64 + nIdx1 + 1] + InLi[i * 3];
        int tmpL2 = alpha[i * 16 + pretable[nIdx1 + 2]] + TmpArBrYrWrRevNow[i * 64 + nIdx1 + 2] + InLi[i * 3 + 1];
        int tmpL3 = alpha[i * 16 + pretable[nIdx1 + 3]] + TmpArBrYrWrRevNow[i * 64 + nIdx1 + 3] + InLi[i * 3 + 2];
        int tmp1 = (tmpL0 > tmpL1) ? tmpL0 : tmpL1;
        int tmp2 = (tmpL2 > tmpL3) ? tmpL2 : tmpL3;
        alpha[(i + 1) * 16 + s] = (tmp1 > tmp2) ? tmp1 : tmp2;
    }
}

__global__ void output_kernel(int* OutLa, int* OutLe, int* alpha, int* beta, int* TmpArBrYrWrNow, int* InLi, int* Ar, int* Br, int* nexttable, int N)
{
    int i = blockIdx.x;
    if (i < N)
    {
        __shared__ int max_val[4];
        if (threadIdx.x == 0)
        {
            max_val[0] = CUSTOMMIN;
            max_val[1] = CUSTOMMIN;
            max_val[2] = CUSTOMMIN;
            max_val[3] = CUSTOMMIN;
        }
        __syncthreads();

        int s = threadIdx.x;
        if (s < 16)
        {
            int nIdx1 = s * 4;
            int val0 = beta[(i + 1) * 16 + nexttable[nIdx1]] + alpha[i * 16 + s] + TmpArBrYrWrNow[i * 64 + nIdx1];
            int val1 = beta[(i + 1) * 16 + nexttable[nIdx1 + 1]] + alpha[i * 16 + s] + TmpArBrYrWrNow[i * 64 + nIdx1 + 1] + InLi[i * 3];
            int val2 = beta[(i + 1) * 16 + nexttable[nIdx1 + 2]] + alpha[i * 16 + s] + TmpArBrYrWrNow[i * 64 + nIdx1 + 2] + InLi[i * 3 + 1];
            int val3 = beta[(i + 1) * 16 + nexttable[nIdx1 + 3]] + alpha[i * 16 + s] + TmpArBrYrWrNow[i * 64 + nIdx1 + 3] + InLi[i * 3 + 2];

            atomicMax(&max_val[0], val0);
            atomicMax(&max_val[1], val1);
            atomicMax(&max_val[2], val2);
            atomicMax(&max_val[3], val3);
        }
        __syncthreads();

        if (threadIdx.x == 0)
        {
            OutLa[i * 3] = max_val[1] - max_val[0];
            OutLe[i * 3] = OutLa[i * 3] - Br[i] * 2 - InLi[i * 3];
            OutLa[i * 3 + 1] = max_val[2] - max_val[0];
            OutLe[i * 3 + 1] = OutLa[i * 3 + 1] - InLi[i * 3 + 1] - Ar[i] * 2;
            OutLa[i * 3 + 2] = max_val[3] - max_val[0];
            OutLe[i * 3 + 2] = OutLa[i * 3 + 2] - InLi[i * 3 + 2] - Ar[i] * 2 - Br[i] * 2;
        }
    }
}

void sisoCuda(int N, int *OutLa, int *OutLe, int *InLi, int *Ar, int *Br, int *Yr, int *Wr,
              int *initalpha, int *initbeta, int *TmpArBrNow, int *TmpArBrYrWrNow, int *TmpArBrYrWrRevNow,
              int *nexttable, int *pretable, int *OutLa_outputFromGpu, int *OutLe_outputFromGpu)
{
    int *d_alpha, *d_beta, *d_OutLa, *d_OutLe, *d_InLi, *d_Ar, *d_Br, *d_Yr, *d_Wr;
    int *d_TmpArBrNow, *d_TmpArBrYrWrNow, *d_TmpArBrYrWrRevNow, *d_nexttable, *d_pretable;
    int *d_initalpha, *d_initbeta;

    hipMalloc((void **)&d_alpha, sizeof(int) * (N + 1) * 16);
    hipMalloc((void **)&d_beta, sizeof(int) * (N + 1) * 16);
    hipMalloc((void **)&d_OutLa, sizeof(int) * N * 3);
    hipMalloc((void **)&d_OutLe, sizeof(int) * N * 3);
    hipMalloc((void **)&d_InLi, sizeof(int) * N * 3);
    hipMalloc((void **)&d_Ar, sizeof(int) * N);
    hipMalloc((void **)&d_Br, sizeof(int) * N);
    hipMalloc((void **)&d_Yr, sizeof(int) * N);
    hipMalloc((void **)&d_Wr, sizeof(int) * N);
    hipMalloc((void **)&d_TmpArBrNow, sizeof(int) * N * 64);
    hipMalloc((void **)&d_TmpArBrYrWrNow, sizeof(int) * N * 64);
    hipMalloc((void **)&d_TmpArBrYrWrRevNow, sizeof(int) * N * 64);
    hipMalloc((void **)&d_nexttable, sizeof(int) * 64);
    hipMalloc((void **)&d_pretable, sizeof(int) * 64);
    hipMalloc((void **)&d_initalpha, sizeof(int) * 16);
    hipMalloc((void **)&d_initbeta, sizeof(int) * 16);

    hipMemcpy(d_InLi, InLi, sizeof(int) * N * 3, hipMemcpyHostToDevice);
    hipMemcpy(d_Ar, Ar, sizeof(int) * N, hipMemcpyHostToDevice);
    hipMemcpy(d_Br, Br, sizeof(int) * N, hipMemcpyHostToDevice);
    hipMemcpy(d_Yr, Yr, sizeof(int) * N, hipMemcpyHostToDevice);
    hipMemcpy(d_Wr, Wr, sizeof(int) * N, hipMemcpyHostToDevice);
    hipMemcpy(d_TmpArBrNow, TmpArBrNow, sizeof(int) * N * 64, hipMemcpyHostToDevice);
    hipMemcpy(d_TmpArBrYrWrNow, TmpArBrYrWrNow, sizeof(int) * N * 64, hipMemcpyHostToDevice);
    hipMemcpy(d_TmpArBrYrWrRevNow, TmpArBrYrWrRevNow, sizeof(int) * N * 64, hipMemcpyHostToDevice);
    hipMemcpy(d_nexttable, nexttable, sizeof(int) * 64, hipMemcpyHostToDevice);
    hipMemcpy(d_pretable, pretable, sizeof(int) * 64, hipMemcpyHostToDevice);
    hipMemcpy(d_initalpha, initalpha, sizeof(int) * 16, hipMemcpyHostToDevice);
    hipMemcpy(d_initbeta, initbeta, sizeof(int) * 16, hipMemcpyHostToDevice);

    // Initialize alpha and beta on GPU
    hipMemcpy(d_alpha, initalpha, sizeof(int) * 16, hipMemcpyHostToDevice);
    hipMemcpy(d_beta + N * 16, initbeta, sizeof(int) * 16, hipMemcpyHostToDevice);

    /* Start timer. */
    polybench_start_instruments;

    // Compute beta
    for (int i = N - 1; i >= 0; i--)
    {
        beta_kernel<<<1, 16>>>(d_beta, d_TmpArBrYrWrNow, d_InLi, d_nexttable, i, N);
        hipDeviceSynchronize();
    }

    // Compute alpha
    for (int i = 0; i < N; i++)
    {
        alpha_kernel<<<1, 16>>>(d_alpha, d_TmpArBrYrWrRevNow, d_InLi, d_pretable, i, N);
        hipDeviceSynchronize();
    }

    // Compute OutLa and OutLe
    dim3 block(DIM_THREAD_BLOCK_X, DIM_THREAD_BLOCK_Y);
    dim3 grid(N, 1);
    output_kernel<<<grid, block>>>(d_OutLa, d_OutLe, d_alpha, d_beta, d_TmpArBrYrWrNow, d_InLi, d_Ar, d_Br, d_nexttable, N);
    hipDeviceSynchronize();

    printf("GPU Time in seconds:\n");
    polybench_stop_instruments;
    polybench_print_instruments;

    hipMemcpy(OutLa_outputFromGpu, d_OutLa, sizeof(int) * N * 3, hipMemcpyDeviceToHost);
    hipMemcpy(OutLe_outputFromGpu, d_OutLe, sizeof(int) * N * 3, hipMemcpyDeviceToHost);
    hipMemcpy(initalpha, d_alpha + N * 16, sizeof(int) * 16, hipMemcpyDeviceToHost);
    hipMemcpy(initbeta, d_beta, sizeof(int) * 16, hipMemcpyDeviceToHost);

    hipFree(d_alpha);
    hipFree(d_beta);
    hipFree(d_OutLa);
    hipFree(d_OutLe);
    hipFree(d_InLi);
    hipFree(d_Ar);
    hipFree(d_Br);
    hipFree(d_Yr);
    hipFree(d_Wr);
    hipFree(d_TmpArBrNow);
    hipFree(d_TmpArBrYrWrNow);
    hipFree(d_TmpArBrYrWrRevNow);
    hipFree(d_nexttable);
    hipFree(d_pretable);
    hipFree(d_initalpha);
    hipFree(d_initbeta);
}

int main(int argc, char** argv)
{
    int N = 16384; // Default problem size, adjustable

    int *OutLa, *OutLe, *InLi, *Ar, *Br, *Yr, *Wr;
    int *TmpArBrNow, *TmpArBrYrWrNow, *TmpArBrYrWrRevNow, *nexttable, *pretable;
    int *initalpha, *initbeta;
    int *OutLa_outputFromGpu, *OutLe_outputFromGpu;

    OutLa = (int *)malloc(sizeof(int) * N * 3);
    OutLe = (int *)malloc(sizeof(int) * N * 3);
    InLi = (int *)malloc(sizeof(int) * N * 3);
    Ar = (int *)malloc(sizeof(int) * N);
    Br = (int *)malloc(sizeof(int) * N);
    Yr = (int *)malloc(sizeof(int) * N);
    Wr = (int *)malloc(sizeof(int) * N);
    TmpArBrNow = (int *)malloc(sizeof(int) * N * 64);
    TmpArBrYrWrNow = (int *)malloc(sizeof(int) * N * 64);
    TmpArBrYrWrRevNow = (int *)malloc(sizeof(int) * N * 64);
    nexttable = (int *)malloc(sizeof(int) * 64);
    pretable = (int *)malloc(sizeof(int) * 64);
    initalpha = (int *)malloc(sizeof(int) * 16);
    initbeta = (int *)malloc(sizeof(int) * 16);
    OutLa_outputFromGpu = (int *)malloc(sizeof(int) * N * 3);
    OutLe_outputFromGpu = (int *)malloc(sizeof(int) * N * 3);

    init_array(N, InLi, Ar, Br, Yr, Wr, TmpArBrNow, TmpArBrYrWrNow, TmpArBrYrWrRevNow,
               nexttable, pretable, initalpha, initbeta);

    GPU_argv_init();

    sisoCuda(N, OutLa, OutLe, InLi, Ar, Br, Yr, Wr, initalpha, initbeta,
             TmpArBrNow, TmpArBrYrWrNow, TmpArBrYrWrRevNow, nexttable, pretable,
             OutLa_outputFromGpu, OutLe_outputFromGpu);

    #ifdef RUN_ON_CPU
        /* Start timer. */
        polybench_start_instruments;

        siso_cpu(OutLa, OutLe, InLi, Ar, Br, Yr, Wr, N, initalpha, initbeta,
                 TmpArBrNow, TmpArBrYrWrNow, TmpArBrYrWrRevNow, nexttable, pretable);

        printf("CPU Time in seconds:\n");
        polybench_stop_instruments;
        polybench_print_instruments;

        compareResults(N, OutLa, OutLe, OutLa_outputFromGpu, OutLe_outputFromGpu);
    #endif

    free(OutLa);
    free(OutLe);
    free(InLi);
    free(Ar);
    free(Br);
    free(Yr);
    free(Wr);
    free(TmpArBrNow);
    free(TmpArBrYrWrNow);
    free(TmpArBrYrWrRevNow);
    free(nexttable);
    free(pretable);
    free(initalpha);
    free(initbeta);
    free(OutLa_outputFromGpu);
    free(OutLe_outputFromGpu);

    return 0;
}

#include "../../common/polybench.c"