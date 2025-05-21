#include <hip/hip_runtime.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

// Error checking macro for HIP
#define checkHipErrors(val) check((val), #val, __FILE__, __LINE__)
template <typename T>
void check(T result, char const *const func, const char *const file, int const line) {
    if (result != hipSuccess) {
        fprintf(stderr, "HIP error at %s:%d code=%d (%s) \"%s\"\n",
                file, line, static_cast<int>(result), hipGetErrorString(result), func);
        exit(EXIT_FAILURE);
    }
}

// Kernel that simulates a computational workload using clock cycles
__global__ void clock_block(clock_t *d_o, clock_t clock_count) {
    unsigned int start_clock = (unsigned int)clock();
    clock_t clock_offset = 0;

    while (clock_offset < clock_count) {
        unsigned int end_clock = (unsigned int)clock();
        clock_offset = (clock_t)(end_clock - start_clock);
    }

    d_o[0] = clock_offset;
}

// Kernel to sum up the clock results
__global__ void sum(clock_t *d_clocks, int N) {
    __shared__ clock_t s_clocks[32];
    clock_t my_sum = 0;

    for (int i = threadIdx.x; i < N; i += blockDim.x) {
        my_sum += d_clocks[i];
    }

    s_clocks[threadIdx.x] = my_sum;
    __syncthreads();

    for (int i = 16; i > 0; i /= 2) {
        if (threadIdx.x < i) {
            s_clocks[threadIdx.x] += s_clocks[threadIdx.x + i];
        }
        __syncthreads();
    }

    if (threadIdx.x == 0) {
        d_clocks[0] = s_clocks[0];
    }
}


void usage() {
    printf("Usage: ./main --kernels <num_kernels>\n");
}

int main(int argc, char **argv) {
    int nkernels = 8;  // Number of concurrent kernels
    
    float kernel_time = 10;  // Kernel execution time in ms
    float elapsed_time;      // Timing variable

    int opt;
    while ((opt = getopt(argc, argv, "k:")) != -1) {
        switch (opt) {
            case 'k':
                nkernels = atoi(optarg);  // Get the number of kernels from the command line
                if (nkernels <= 0) {
                    printf("Invalid number of kernels: %d\n", nkernels);
                    usage();
                    return EXIT_FAILURE;
                }
                break;
            default:
                usage();
                return EXIT_FAILURE;
        }
    }


    int nstreams = nkernels + 1;
    int nbytes = nkernels * sizeof(clock_t);

    printf("[%s] - Starting...\n", argv[0]);

    // Get the default HIP device
    int hip_device = 0;
    hipDeviceProp_t deviceProp;
    checkHipErrors(hipGetDeviceProperties(&deviceProp, hip_device));

    if (!deviceProp.concurrentKernels) {
        printf("> GPU does not support concurrent kernel execution\n");
        printf("  HIP kernel runs will be serialized\n");
    }

    printf("> Detected Compute Capability %d.%d hardware with %d multi-processors\n",
           deviceProp.major, deviceProp.minor, deviceProp.multiProcessorCount);

    // Allocate host memory
    clock_t *a = nullptr;
    checkHipErrors(hipHostMalloc((void **)&a, nbytes));

    // Allocate device memory
    clock_t *d_a = nullptr;
    checkHipErrors(hipMalloc((void **)&d_a, nbytes));

    // Allocate and initialize streams
    hipStream_t *streams = (hipStream_t *)malloc(nstreams * sizeof(hipStream_t));
    for (int i = 0; i < nstreams; i++) {
        checkHipErrors(hipStreamCreate(&streams[i]));
    }

    // Create HIP events
    hipEvent_t start_event, stop_event;
    checkHipErrors(hipEventCreate(&start_event));
    checkHipErrors(hipEventCreate(&stop_event));

    hipEvent_t *kernelEvent = (hipEvent_t *)malloc(nkernels * sizeof(hipEvent_t));
    for (int i = 0; i < nkernels; i++) {
        checkHipErrors(hipEventCreateWithFlags(&kernelEvent[i], hipEventDisableTiming));
    }

    // Calculate time in clock cycles
    clock_t time_clocks = (clock_t)(kernel_time * deviceProp.clockRate);

    // Record the start event
    checkHipErrors(hipEventRecord(start_event, 0));

    // Launch kernels in separate streams
    for (int i = 0; i < nkernels; ++i) {
        hipLaunchKernelGGL(clock_block, dim3(1), dim3(1), 0, streams[i], &d_a[i], time_clocks);
        checkHipErrors(hipEventRecord(kernelEvent[i], streams[i]));
        checkHipErrors(hipStreamWaitEvent(streams[nstreams - 1], kernelEvent[i], 0));
    }

    // Launch sum kernel in the last stream
    hipLaunchKernelGGL(sum, dim3(1), dim3(32), 0, streams[nstreams - 1], d_a, nkernels);

    // Copy results back to host
    checkHipErrors(hipMemcpyAsync(a, d_a, sizeof(clock_t), hipMemcpyDeviceToHost, streams[nstreams - 1]));

    // Record and synchronize the stop event
    checkHipErrors(hipEventRecord(stop_event, 0));
    checkHipErrors(hipEventSynchronize(stop_event));
    checkHipErrors(hipEventElapsedTime(&elapsed_time, start_event, stop_event));

    printf("Expected time for serial execution of %d kernels = %.3fs\n", nkernels,
           nkernels * kernel_time / 1000.0f);
    printf("Expected time for concurrent execution of %d kernels = %.3fs\n",
           nkernels, kernel_time / 1000.0f);
    printf("Measured time for sample = %.3fs\n", elapsed_time / 1000.0f);

    bool bTestResult = (a[0] > time_clocks * nkernels);

    // Release resources
    for (int i = 0; i < nstreams; i++) {
        checkHipErrors(hipStreamDestroy(streams[i]));
    }

    for (int i = 0; i < nkernels; i++) {
        checkHipErrors(hipEventDestroy(kernelEvent[i]));
    }

    checkHipErrors(hipEventDestroy(start_event));
    checkHipErrors(hipEventDestroy(stop_event));
    checkHipErrors(hipHostFree(a));
    checkHipErrors(hipFree(d_a));
    free(streams);
    free(kernelEvent);

    if (!bTestResult) {
        printf("Test failed!\n");
        return EXIT_FAILURE;
    }

    printf("Test passed\n");
    return EXIT_SUCCESS;
}
