#ifndef SISO_H
#define SISO_H

#define DIM_THREAD_BLOCK_X 16
#define DIM_THREAD_BLOCK_Y 1
#define CUSTOMMIN -999999 // Minimum value as per original SISO function

__global__ void beta_kernel(int* beta, int* TmpArBrYrWrNow, int* InLi, int* nexttable, int i, int N);
__global__ void alpha_kernel(int* alpha, int* TmpArBrYrWrRevNow, int* InLi, int* pretable, int i, int N);
__global__ void output_kernel(int* OutLa, int* OutLe, int* alpha, int* beta, int* TmpArBrYrWrNow, int* InLi, int* Ar, int* Br, int* nexttable, int N);

#endif