#include <hip/hip_runtime.h>
#include <iostream>
#include <cmath>
#include <cstdlib>

// Error checking macro
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
 * HIP Kernel Device code
 *
 * Computes the vector addition of A and B into C. The 3 vectors have the same
 * number of elements numElements.
 */
__global__ void vectorAdd(const float *A, const float *B, float *C, int numElements) {
    int i = blockDim.x * blockIdx.x + threadIdx.x;

    if (i < numElements) {
        C[i] = A[i] + B[i] + 0.0f;
    }
}

/**
 * Host main routine
 */
int main(void) {
    // Print the vector length to be used, and compute its size
    int numElements = 50000;
    size_t size = numElements * sizeof(float);
    std::cout << "[Vector addition of " << numElements << " elements]\n";

    // Allocate the host input vector A
    float *h_A = (float *)malloc(size);

    // Allocate the host input vector B
    float *h_B = (float *)malloc(size);

    // Allocate the host output vector C
    float *h_C = (float *)malloc(size);

    // Verify that allocations succeeded
    if (h_A == nullptr || h_B == nullptr || h_C == nullptr) {
        std::cerr << "Failed to allocate host vectors!\n";
        exit(EXIT_FAILURE);
    }

    // Initialize the host input vectors
    for (int i = 0; i < numElements; ++i) {
        h_A[i] = rand() / (float)RAND_MAX;
        h_B[i] = rand() / (float)RAND_MAX;
    }

    // Allocate the device input vector A
    float *d_A = nullptr;
    checkHipErrors(hipMalloc((void **)&d_A, size));

    // Allocate the device input vector B
    float *d_B = nullptr;
    checkHipErrors(hipMalloc((void **)&d_B, size));

    // Allocate the device output vector C
    float *d_C = nullptr;
    checkHipErrors(hipMalloc((void **)&d_C, size));

    // Copy the host input vectors A and B to the device
    std::cout << "Copy input data from the host memory to the HIP device\n";
    checkHipErrors(hipMemcpy(d_A, h_A, size, hipMemcpyHostToDevice));
    checkHipErrors(hipMemcpy(d_B, h_B, size, hipMemcpyHostToDevice));

    // Launch the Vector Add HIP Kernel
    int threadsPerBlock = 256;
    int blocksPerGrid = (numElements + threadsPerBlock - 1) / threadsPerBlock;
    std::cout << "HIP kernel launch with " << blocksPerGrid << " blocks of " << threadsPerBlock << " threads\n";
    hipLaunchKernelGGL(vectorAdd, dim3(blocksPerGrid), dim3(threadsPerBlock), 0, 0, d_A, d_B, d_C, numElements);
    checkHipErrors(hipGetLastError());

    // Copy the device result vector to the host result vector
    std::cout << "Copy output data from the HIP device to the host memory\n";
    checkHipErrors(hipMemcpy(h_C, d_C, size, hipMemcpyDeviceToHost));

    // Verify that the result vector is correct
    for (int i = 0; i < numElements; ++i) {
        if (fabs(h_A[i] + h_B[i] - h_C[i]) > 1e-5) {
            std::cerr << "Result verification failed at element " << i << "!\n";
            exit(EXIT_FAILURE);
        }
    }

    std::cout << "Test PASSED\n";

    // Free device global memory
    checkHipErrors(hipFree(d_A));
    checkHipErrors(hipFree(d_B));
    checkHipErrors(hipFree(d_C));

    // Free host memory
    free(h_A);
    free(h_B);
    free(h_C);

    std::cout << "Done\n";
    return 0;
}
