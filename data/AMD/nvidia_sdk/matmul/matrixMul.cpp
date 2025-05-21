#include <hip/hip_runtime.h>
#include <iostream>
#include <cmath>
#include <cstdlib>
#include <cstring>

// Helper macros for error checking
#define checkHipErrors(val) check((val), #val, __FILE__, __LINE__)
template<typename T>
void check(T result, char const *const func, const char *const file, int const line) {
    if (result != hipSuccess) {
        std::cerr << "HIP error at: " << file << ":" << line << std::endl;
        std::cerr << hipGetErrorString(result) << " " << func << std::endl;
        exit(EXIT_FAILURE);
    }
}

/**
 * Matrix multiplication (HIP Kernel) on the device: C = A * B
 * wA is A's width and wB is B's width
 */
template <int BLOCK_SIZE>
__global__ void MatrixMulHIP(float *C, float *A, float *B, int wA, int wB) {
    int bx = hipBlockIdx_x;
    int by = hipBlockIdx_y;
    int tx = hipThreadIdx_x;
    int ty = hipThreadIdx_y;

    int aBegin = wA * BLOCK_SIZE * by;
    int aEnd = aBegin + wA - 1;
    int aStep = BLOCK_SIZE;
    int bBegin = BLOCK_SIZE * bx;
    int bStep = BLOCK_SIZE * wB;

    float Csub = 0;

    for (int a = aBegin, b = bBegin; a <= aEnd; a += aStep, b += bStep) {
        __shared__ float As[BLOCK_SIZE][BLOCK_SIZE];
        __shared__ float Bs[BLOCK_SIZE][BLOCK_SIZE];

        As[ty][tx] = A[a + wA * ty + tx];
        Bs[ty][tx] = B[b + wB * ty + tx];

        __syncthreads();

        for (int k = 0; k < BLOCK_SIZE; ++k) {
            Csub += As[ty][k] * Bs[k][tx];
        }

        __syncthreads();
    }

    int c = wB * BLOCK_SIZE * by + BLOCK_SIZE * bx;
    C[c + wB * ty + tx] = Csub;
}

void ConstantInit(float *data, int size, float val) {
    for (int i = 0; i < size; ++i) {
        data[i] = val;
    }
}

int MatrixMultiply(int block_size, const dim3 &dimsA, const dim3 &dimsB) {
    unsigned int size_A = dimsA.x * dimsA.y;
    unsigned int mem_size_A = sizeof(float) * size_A;
    float *h_A;
    checkHipErrors(hipHostMalloc(&h_A, mem_size_A));
    unsigned int size_B = dimsB.x * dimsB.y;
    unsigned int mem_size_B = sizeof(float) * size_B;
    float *h_B;
    checkHipErrors(hipHostMalloc(&h_B, mem_size_B));

    const float valB = 0.01f;
    ConstantInit(h_A, size_A, 1.0f);
    ConstantInit(h_B, size_B, valB);

    float *d_A, *d_B, *d_C;

    dim3 dimsC(dimsB.x, dimsA.y, 1);
    unsigned int mem_size_C = dimsC.x * dimsC.y * sizeof(float);
    float *h_C;
    checkHipErrors(hipHostMalloc(&h_C, mem_size_C));

    checkHipErrors(hipMalloc(reinterpret_cast<void **>(&d_A), mem_size_A));
    checkHipErrors(hipMalloc(reinterpret_cast<void **>(&d_B), mem_size_B));
    checkHipErrors(hipMalloc(reinterpret_cast<void **>(&d_C), mem_size_C));

    hipStream_t stream;
    checkHipErrors(hipStreamCreate(&stream));

    checkHipErrors(hipMemcpyAsync(d_A, h_A, mem_size_A, hipMemcpyHostToDevice, stream));
    checkHipErrors(hipMemcpyAsync(d_B, h_B, mem_size_B, hipMemcpyHostToDevice, stream));

    dim3 threads(block_size, block_size);
    dim3 grid(dimsB.x / threads.x, dimsA.y / threads.y);

    std::cout << "Computing result using HIP Kernel..." << std::endl;

    if (block_size == 16) {
        hipLaunchKernelGGL((MatrixMulHIP<16>), grid, threads, 0, stream, d_C, d_A, d_B, dimsA.x, dimsB.x);
    } else {
        hipLaunchKernelGGL((MatrixMulHIP<32>), grid, threads, 0, stream, d_C, d_A, d_B, dimsA.x, dimsB.x);
    }

    checkHipErrors(hipStreamSynchronize(stream));

    int nIter = 300;

    for (int j = 0; j < nIter; j++) {
        if (block_size == 16) {
            hipLaunchKernelGGL((MatrixMulHIP<16>), grid, threads, 0, stream, d_C, d_A, d_B, dimsA.x, dimsB.x);
        } else {
            hipLaunchKernelGGL((MatrixMulHIP<32>), grid, threads, 0, stream, d_C, d_A, d_B, dimsA.x, dimsB.x);
        }
    }

    float msecPerMatrixMul = 0.0f;
    double flopsPerMatrixMul = 2.0 * static_cast<double>(dimsA.x) *
                               static_cast<double>(dimsA.y) *
                               static_cast<double>(dimsB.x);
    double gigaFlops =
        (flopsPerMatrixMul * 1.0e-9f) / (msecPerMatrixMul / 1000.0f);
    std::cout << "Performance= " << gigaFlops << " GFlop/s\n";

    checkHipErrors(hipMemcpyAsync(h_C, d_C, mem_size_C, hipMemcpyDeviceToHost, stream));
    checkHipErrors(hipStreamSynchronize(stream));

    checkHipErrors(hipHostFree(h_A));
    checkHipErrors(hipHostFree(h_B));
    checkHipErrors(hipHostFree(h_C));
    checkHipErrors(hipFree(d_A));
    checkHipErrors(hipFree(d_B));
    checkHipErrors(hipFree(d_C));
    checkHipErrors(hipStreamDestroy(stream));

    return EXIT_SUCCESS;
}

int main() {
    std::cout << "[Matrix Multiply Using HIP] - Starting..." << std::endl;

    int block_size = 32;
    dim3 dimsA(5 * 2 * block_size, 5 * 2 * block_size, 1);
    dim3 dimsB(5 * 4 * block_size, 5 * 2 * block_size, 1);

    if (dimsA.x != dimsB.y) {
        std::cerr << "Error: outer matrix dimensions must be equal.\n";
        return EXIT_FAILURE;
    }

    std::cout << "MatrixA(" << dimsA.x << "," << dimsA.y << "), MatrixB(" << dimsB.x << "," << dimsB.y << ")\n";

    int matrix_result = MatrixMultiply(block_size, dimsA, dimsB);
    return matrix_result;
}
