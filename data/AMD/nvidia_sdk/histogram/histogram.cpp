#ifndef HISTOGRAM_COMMON_H
#define HISTOGRAM_COMMON_H


////////////////////////////////////////////////////////////////////////////////
// Common definitions
////////////////////////////////////////////////////////////////////////////////
#define HISTOGRAM64_BIN_COUNT 64
#define HISTOGRAM256_BIN_COUNT 256
#define UINT_BITS 32
typedef unsigned int uint;
typedef unsigned char uchar;

////////////////////////////////////////////////////////////////////////////////
// GPU-specific common definitions
////////////////////////////////////////////////////////////////////////////////
#define LOG2_WARP_SIZE 5U
#define WARP_SIZE (1U << LOG2_WARP_SIZE)

// May change on future hardware, so better parametrize the code
#define SHARED_MEMORY_BANKS 16

// Threadblock size: must be a multiple of (4 * SHARED_MEMORY_BANKS)
// because of the bit permutation of threadIdx.x
#define HISTOGRAM64_THREADBLOCK_SIZE (4 * SHARED_MEMORY_BANKS)

// Warps ==subhistograms per threadblock
#define WARP_COUNT 6

// Threadblock size
#define HISTOGRAM256_THREADBLOCK_SIZE (WARP_COUNT * WARP_SIZE)

// Shared memory per threadblock
#define HISTOGRAM256_THREADBLOCK_MEMORY (WARP_COUNT * HISTOGRAM256_BIN_COUNT)

#define UMUL(a, b) ((a) * (b))
#define UMAD(a, b, c) (UMUL((a), (b)) + (c))

////////////////////////////////////////////////////////////////////////////////
// Reference CPU histogram
////////////////////////////////////////////////////////////////////////////////
extern "C" void histogram64CPU(uint *h_Histogram, void *h_Data, uint byteCount);

extern "C" void histogram256CPU(uint *h_Histogram, void *h_Data,
                                uint byteCount);

////////////////////////////////////////////////////////////////////////////////
// GPU histogram
////////////////////////////////////////////////////////////////////////////////
extern "C" void initHistogram64(void);
extern "C" void initHistogram256(void);
extern "C" void closeHistogram64(void);
extern "C" void closeHistogram256(void);

extern "C" void histogram64(uint *d_Histogram, void *d_Data, uint byteCount);

extern "C" void histogram256(uint *d_Histogram, void *d_Data, uint byteCount);

#endif


#include "hip/hip_runtime.h"
 #include <assert.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
 #include <hip/hip_cooperative_groups.h>
 
 namespace cg = cooperative_groups;
 #include <helper_cuda.h>
 #include <helper_timer.h>
 #include <helper_image.h>


#define TAG_MASK 0xFFFFFFFFU
 inline __device__ void addByte(uint *s_WarpHist, uint data, uint threadTag) {
   atomicAdd(s_WarpHist + data, 1);
 }
 
 inline __device__ void addWord(uint *s_WarpHist, uint data, uint tag) {
   addByte(s_WarpHist, (data >> 0) & 0xFFU, tag);
   addByte(s_WarpHist, (data >> 8) & 0xFFU, tag);
   addByte(s_WarpHist, (data >> 16) & 0xFFU, tag);
   addByte(s_WarpHist, (data >> 24) & 0xFFU, tag);
 }
 
 __global__ void histogram256Kernel(uint *d_PartialHistograms, uint *d_Data,
                                    uint dataCount) {
   // Handle to thread block group
   cg::thread_block cta = cg::this_thread_block();
   // Per-warp subhistogram storage
   __shared__ uint s_Hist[HISTOGRAM256_THREADBLOCK_MEMORY];
   uint *s_WarpHist =
       s_Hist + (threadIdx.x >> LOG2_WARP_SIZE) * HISTOGRAM256_BIN_COUNT;
 
 // Clear shared memory storage for current threadblock before processing
 #pragma unroll
 
   for (uint i = 0;
        i < (HISTOGRAM256_THREADBLOCK_MEMORY / HISTOGRAM256_THREADBLOCK_SIZE);
        i++) {
     s_Hist[threadIdx.x + i * HISTOGRAM256_THREADBLOCK_SIZE] = 0;
   }
 
   // Cycle through the entire data set, update subhistograms for each warp
   const uint tag = threadIdx.x << (UINT_BITS - LOG2_WARP_SIZE);
 
   cg::sync(cta);
 
   for (uint pos = UMAD(blockIdx.x, blockDim.x, threadIdx.x); pos < dataCount;
        pos += UMUL(blockDim.x, gridDim.x)) {
     uint data = d_Data[pos];
     addWord(s_WarpHist, data, tag);
   }
 
   // Merge per-warp histograms into per-block and write to global memory
   cg::sync(cta);
 
   for (uint bin = threadIdx.x; bin < HISTOGRAM256_BIN_COUNT;
        bin += HISTOGRAM256_THREADBLOCK_SIZE) {
     uint sum = 0;
 
     for (uint i = 0; i < WARP_COUNT; i++) {
       sum += s_Hist[bin + i * HISTOGRAM256_BIN_COUNT] & TAG_MASK;
     }
 
     d_PartialHistograms[blockIdx.x * HISTOGRAM256_BIN_COUNT + bin] = sum;
   }
 }
 
 ////////////////////////////////////////////////////////////////////////////////
 // Merge histogram256() output
 // Run one threadblock per bin; each threadblock adds up the same bin counter
 // from every partial histogram. Reads are uncoalesced, but mergeHistogram256
 // takes only a fraction of total processing time
 ////////////////////////////////////////////////////////////////////////////////
 #define MERGE_THREADBLOCK_SIZE 256
 
 __global__ void mergeHistogram256Kernel(uint *d_Histogram,
                                         uint *d_PartialHistograms,
                                         uint histogramCount) {
   // Handle to thread block group
   cg::thread_block cta = cg::this_thread_block();
 
   uint sum = 0;
 
   for (uint i = threadIdx.x; i < histogramCount; i += MERGE_THREADBLOCK_SIZE) {
     sum += d_PartialHistograms[blockIdx.x + i * HISTOGRAM256_BIN_COUNT];
   }
 
   __shared__ uint data[MERGE_THREADBLOCK_SIZE];
   data[threadIdx.x] = sum;
 
   for (uint stride = MERGE_THREADBLOCK_SIZE / 2; stride > 0; stride >>= 1) {
     cg::sync(cta);
 
     if (threadIdx.x < stride) {
       data[threadIdx.x] += data[threadIdx.x + stride];
     }
   }
 
   if (threadIdx.x == 0) {
     d_Histogram[blockIdx.x] = data[0];
   }
 }
 
 ////////////////////////////////////////////////////////////////////////////////
 // Host interface to GPU histogram
 ////////////////////////////////////////////////////////////////////////////////
 // histogram256kernel() intermediate results buffer
 static const uint PARTIAL_HISTOGRAM256_COUNT = 240;
 static uint *d_PartialHistograms;
 
 // Internal memory allocation
 extern "C" void initHistogram256(void) {
   checkCudaErrors(hipMalloc(
       (void **)&d_PartialHistograms,
       PARTIAL_HISTOGRAM256_COUNT * HISTOGRAM256_BIN_COUNT * sizeof(uint)));
 }
 
 // Internal memory deallocation
 extern "C" void closeHistogram256(void) {
   checkCudaErrors(hipFree(d_PartialHistograms));
 }
 
 extern "C" void histogram256(uint *d_Histogram, void *d_Data, uint byteCount) {
   assert(byteCount % sizeof(uint) == 0);
   histogram256Kernel<<<PARTIAL_HISTOGRAM256_COUNT,
                        HISTOGRAM256_THREADBLOCK_SIZE>>>(
       d_PartialHistograms, (uint *)d_Data, byteCount / sizeof(uint));
   getLastCudaError("histogram256Kernel() execution failed\n");
 
   mergeHistogram256Kernel<<<HISTOGRAM256_BIN_COUNT, MERGE_THREADBLOCK_SIZE>>>(
       d_Histogram, d_PartialHistograms, PARTIAL_HISTOGRAM256_COUNT);
   getLastCudaError("mergeHistogram256Kernel() execution failed\n");
 }
 

 typedef uint4 data_t;
 
 // May change on future hardware, so better parametrize the code
 #define SHARED_MEMORY_BANKS 16
 
 ////////////////////////////////////////////////////////////////////////////////
 // Main computation pass: compute gridDim.x partial histograms
 ////////////////////////////////////////////////////////////////////////////////
 // Count a byte into shared-memory storage
 inline __device__ void addByte(uchar *s_ThreadBase, uint data) {
   s_ThreadBase[UMUL(data, HISTOGRAM64_THREADBLOCK_SIZE)]++;
 }
 
 // Count four bytes of a word
 inline __device__ void addWord(uchar *s_ThreadBase, uint data) {
   // Only higher 6 bits of each byte matter, as this is a 64-bin histogram
   addByte(s_ThreadBase, (data >> 2) & 0x3FU);
   addByte(s_ThreadBase, (data >> 10) & 0x3FU);
   addByte(s_ThreadBase, (data >> 18) & 0x3FU);
   addByte(s_ThreadBase, (data >> 26) & 0x3FU);
 }
 
 __global__ void histogram64Kernel(uint *d_PartialHistograms, data_t *d_Data,
                                   uint dataCount) {
   // Handle to thread block group
   cg::thread_block cta = cg::this_thread_block();
   // Encode thread index in order to avoid bank conflicts in s_Hist[] access:
   // each group of SHARED_MEMORY_BANKS threads accesses consecutive shared
   // memory banks
   // and the same bytes [0..3] within the banks
   // Because of this permutation block size should be a multiple of 4 *
   // SHARED_MEMORY_BANKS
   const uint threadPos = ((threadIdx.x & ~(SHARED_MEMORY_BANKS * 4 - 1)) << 0) |
                          ((threadIdx.x & (SHARED_MEMORY_BANKS - 1)) << 2) |
                          ((threadIdx.x & (SHARED_MEMORY_BANKS * 3)) >> 4);
 
   // Per-thread histogram storage
   __shared__ uchar s_Hist[HISTOGRAM64_THREADBLOCK_SIZE * HISTOGRAM64_BIN_COUNT];
   uchar *s_ThreadBase = s_Hist + threadPos;
 
 // Initialize shared memory (writing 32-bit words)
 #pragma unroll
 
   for (uint i = 0; i < (HISTOGRAM64_BIN_COUNT / 4); i++) {
     ((uint *)s_Hist)[threadIdx.x + i * HISTOGRAM64_THREADBLOCK_SIZE] = 0;
   }
 
   // Read data from global memory and submit to the shared-memory histogram
   // Since histogram counters are byte-sized, every single thread can't do more
   // than 255 submission
   cg::sync(cta);
 
   for (uint pos = UMAD(blockIdx.x, blockDim.x, threadIdx.x); pos < dataCount;
        pos += UMUL(blockDim.x, gridDim.x)) {
     data_t data = d_Data[pos];
     addWord(s_ThreadBase, data.x);
     addWord(s_ThreadBase, data.y);
     addWord(s_ThreadBase, data.z);
     addWord(s_ThreadBase, data.w);
   }
 
   // Accumulate per-thread histograms into per-block and write to global memory
   cg::sync(cta);
 
   if (threadIdx.x < HISTOGRAM64_BIN_COUNT) {
     uchar *s_HistBase =
         s_Hist + UMUL(threadIdx.x, HISTOGRAM64_THREADBLOCK_SIZE);
 
     uint sum = 0;
     uint pos = 4 * (threadIdx.x & (SHARED_MEMORY_BANKS - 1));
 
 #pragma unroll
 
     for (uint i = 0; i < (HISTOGRAM64_THREADBLOCK_SIZE / 4); i++) {
       sum += s_HistBase[pos + 0] + s_HistBase[pos + 1] + s_HistBase[pos + 2] +
              s_HistBase[pos + 3];
       pos = (pos + 4) & (HISTOGRAM64_THREADBLOCK_SIZE - 1);
     }
 
     d_PartialHistograms[blockIdx.x * HISTOGRAM64_BIN_COUNT + threadIdx.x] = sum;
   }
 }
 
 ////////////////////////////////////////////////////////////////////////////////
 // Merge histogram64() output
 // Run one threadblock per bin; each threadbock adds up the same bin counter
 // from every partial histogram. Reads are uncoalesced, but mergeHistogram64
 // takes only a fraction of total processing time
 ////////////////////////////////////////////////////////////////////////////////
 #define MERGE_THREADBLOCK_SIZE 256
 
 __global__ void mergeHistogram64Kernel(uint *d_Histogram,
                                        uint *d_PartialHistograms,
                                        uint histogramCount) {
   // Handle to thread block group
   cg::thread_block cta = cg::this_thread_block();
   __shared__ uint data[MERGE_THREADBLOCK_SIZE];
 
   uint sum = 0;
 
   for (uint i = threadIdx.x; i < histogramCount; i += MERGE_THREADBLOCK_SIZE) {
     sum += d_PartialHistograms[blockIdx.x + i * HISTOGRAM64_BIN_COUNT];
   }
 
   data[threadIdx.x] = sum;
 
   for (uint stride = MERGE_THREADBLOCK_SIZE / 2; stride > 0; stride >>= 1) {
     cg::sync(cta);
 
     if (threadIdx.x < stride) {
       data[threadIdx.x] += data[threadIdx.x + stride];
     }
   }
 
   if (threadIdx.x == 0) {
     d_Histogram[blockIdx.x] = data[0];
   }
 }
 
 ////////////////////////////////////////////////////////////////////////////////
 // CPU interface to GPU histogram calculator
 ////////////////////////////////////////////////////////////////////////////////
 // histogram64kernel() intermediate results buffer
 // MAX_PARTIAL_HISTOGRAM64_COUNT == 32768 and HISTOGRAM64_THREADBLOCK_SIZE == 64
 // amounts to max. 480MB of input data
 static const uint MAX_PARTIAL_HISTOGRAM64_COUNT = 32768;
 
 // Internal memory allocation
 extern "C" void initHistogram64(void) {
   assert(HISTOGRAM64_THREADBLOCK_SIZE % (4 * SHARED_MEMORY_BANKS) == 0);
   checkCudaErrors(hipMalloc(
       (void **)&d_PartialHistograms,
       MAX_PARTIAL_HISTOGRAM64_COUNT * HISTOGRAM64_BIN_COUNT * sizeof(uint)));
 }
 
 // Internal memory deallocation
 extern "C" void closeHistogram64(void) {
   checkCudaErrors(hipFree(d_PartialHistograms));
 }
 
 // Round a / b to nearest higher integer value
 inline uint iDivUp(uint a, uint b) {
   return (a % b != 0) ? (a / b + 1) : (a / b);
 }
 
 // Snap a to nearest lower multiple of b
 inline uint iSnapDown(uint a, uint b) { return a - a % b; }
 
 extern "C" void histogram64(uint *d_Histogram, void *d_Data, uint byteCount) {
   const uint histogramCount = iDivUp(
       byteCount, HISTOGRAM64_THREADBLOCK_SIZE * iSnapDown(255, sizeof(data_t)));
 
   assert(byteCount % sizeof(data_t) == 0);
   assert(histogramCount <= MAX_PARTIAL_HISTOGRAM64_COUNT);
 
   histogram64Kernel<<<histogramCount, HISTOGRAM64_THREADBLOCK_SIZE>>>(
       d_PartialHistograms, (data_t *)d_Data, byteCount / sizeof(data_t));
   getLastCudaError("histogram64Kernel() execution failed\n");
 
   mergeHistogram64Kernel<<<HISTOGRAM64_BIN_COUNT, MERGE_THREADBLOCK_SIZE>>>(
       d_Histogram, d_PartialHistograms, histogramCount);
   getLastCudaError("mergeHistogram64() execution failed\n");
 }
 

extern "C" void histogram64CPU(uint *h_Histogram, void *h_Data,
                               uint byteCount) {
  for (uint i = 0; i < HISTOGRAM64_BIN_COUNT; i++) h_Histogram[i] = 0;

  assert(sizeof(uint) == 4 && (byteCount % 4) == 0);

  for (uint i = 0; i < (byteCount / 4); i++) {
    uint data = ((uint *)h_Data)[i];
    h_Histogram[(data >> 2) & 0x3FU]++;
    h_Histogram[(data >> 10) & 0x3FU]++;
    h_Histogram[(data >> 18) & 0x3FU]++;
    h_Histogram[(data >> 26) & 0x3FU]++;
  }
}

extern "C" void histogram256CPU(uint *h_Histogram, void *h_Data,
                                uint byteCount) {
  for (uint i = 0; i < HISTOGRAM256_BIN_COUNT; i++) h_Histogram[i] = 0;

  assert(sizeof(uint) == 4 && (byteCount % 4) == 0);

  for (uint i = 0; i < (byteCount / 4); i++) {
    uint data = ((uint *)h_Data)[i];
    h_Histogram[(data >> 0) & 0xFFU]++;
    h_Histogram[(data >> 8) & 0xFFU]++;
    h_Histogram[(data >> 16) & 0xFFU]++;
    h_Histogram[(data >> 24) & 0xFFU]++;
  }
}
const int numRuns = 16;
const static char *sSDKsample = "[histogram]\0";

int main(int argc, char **argv) {
  uchar *h_Data;
  uint *h_HistogramCPU, *h_HistogramGPU;
  uchar *d_Data;
  uint *d_Histogram;
  StopWatchInterface *hTimer = NULL;
  int PassFailFlag = 1;
  uint byteCount = 64 * 1048576;
  uint uiSizeMult = 1;

  hipDeviceProp_t deviceProp;
  deviceProp.major = 0;
  deviceProp.minor = 0;

  // set logfile name and start logs
  printf("[%s] - Starting...\n", sSDKsample);

  // Use command-line specified CUDA device, otherwise use device with highest
  // Gflops/s
  int dev = findCudaDevice(argc, (const char **)argv);

  checkCudaErrors(hipGetDeviceProperties(&deviceProp, dev));

  printf("CUDA device [%s] has %d Multi-Processors, Compute %d.%d\n",
         deviceProp.name, deviceProp.multiProcessorCount, deviceProp.major,
         deviceProp.minor);

  sdkCreateTimer(&hTimer);

  // Optional Command-line multiplier to increase size of array to histogram
  if (checkCmdLineFlag(argc, (const char **)argv, "sizemult")) {
    uiSizeMult = getCmdLineArgumentInt(argc, (const char **)argv, "sizemult");
    uiSizeMult = MAX(1, MIN(uiSizeMult, 10));
    byteCount *= uiSizeMult;
  }

  printf("Initializing data...\n");
  printf("...allocating CPU memory.\n");
  h_Data = (uchar *)malloc(byteCount);
  h_HistogramCPU = (uint *)malloc(HISTOGRAM256_BIN_COUNT * sizeof(uint));
  h_HistogramGPU = (uint *)malloc(HISTOGRAM256_BIN_COUNT * sizeof(uint));

  printf("...generating input data\n");
  srand(2009);

  for (uint i = 0; i < byteCount; i++) {
    h_Data[i] = rand() % 256;
  }

  printf("...allocating GPU memory and copying input data\n\n");
  checkCudaErrors(hipMalloc((void **)&d_Data, byteCount));
  checkCudaErrors(
      hipMalloc((void **)&d_Histogram, HISTOGRAM256_BIN_COUNT * sizeof(uint)));
  checkCudaErrors(
      hipMemcpy(d_Data, h_Data, byteCount, hipMemcpyHostToDevice));

  {
    printf("Starting up 64-bin histogram...\n\n");
    initHistogram64();

    printf("Running 64-bin GPU histogram for %u bytes (%u runs)...\n\n",
           byteCount, numRuns);

    for (int iter = -1; iter < numRuns; iter++) {
      // iter == -1 -- warmup iteration
      if (iter == 0) {
        hipDeviceSynchronize();
        sdkResetTimer(&hTimer);
        sdkStartTimer(&hTimer);
      }

      histogram64(d_Histogram, d_Data, byteCount);
    }

    hipDeviceSynchronize();
    sdkStopTimer(&hTimer);
    double dAvgSecs =
        1.0e-3 * (double)sdkGetTimerValue(&hTimer) / (double)numRuns;
    printf("histogram64() time (average) : %.5f sec, %.4f MB/sec\n\n", dAvgSecs,
           ((double)byteCount * 1.0e-6) / dAvgSecs);
    printf(
        "histogram64, Throughput = %.4f MB/s, Time = %.5f s, Size = %u Bytes, "
        "NumDevsUsed = %u, Workgroup = %u\n",
        (1.0e-6 * (double)byteCount / dAvgSecs), dAvgSecs, byteCount, 1,
        HISTOGRAM64_THREADBLOCK_SIZE);

    printf("\nValidating GPU results...\n");
    printf(" ...reading back GPU results\n");
    checkCudaErrors(hipMemcpy(h_HistogramGPU, d_Histogram,
                               HISTOGRAM64_BIN_COUNT * sizeof(uint),
                               hipMemcpyDeviceToHost));

    printf(" ...histogram64CPU()\n");
    histogram64CPU(h_HistogramCPU, h_Data, byteCount);

    printf(" ...comparing the results...\n");

    for (uint i = 0; i < HISTOGRAM64_BIN_COUNT; i++)
      if (h_HistogramGPU[i] != h_HistogramCPU[i]) {
        PassFailFlag = 0;
      }

    printf(PassFailFlag ? " ...64-bin histograms match\n\n"
                        : " ***64-bin histograms do not match!!!***\n\n");

    printf("Shutting down 64-bin histogram...\n\n\n");
    closeHistogram64();
  }

  {
    printf("Initializing 256-bin histogram...\n");
    initHistogram256();

    printf("Running 256-bin GPU histogram for %u bytes (%u runs)...\n\n",
           byteCount, numRuns);

    for (int iter = -1; iter < numRuns; iter++) {
      // iter == -1 -- warmup iteration
      if (iter == 0) {
        checkCudaErrors(hipDeviceSynchronize());
        sdkResetTimer(&hTimer);
        sdkStartTimer(&hTimer);
      }

      histogram256(d_Histogram, d_Data, byteCount);
    }

    hipDeviceSynchronize();
    sdkStopTimer(&hTimer);
    double dAvgSecs =
        1.0e-3 * (double)sdkGetTimerValue(&hTimer) / (double)numRuns;
    printf("histogram256() time (average) : %.5f sec, %.4f MB/sec\n\n",
           dAvgSecs, ((double)byteCount * 1.0e-6) / dAvgSecs);
    printf(
        "histogram256, Throughput = %.4f MB/s, Time = %.5f s, Size = %u Bytes, "
        "NumDevsUsed = %u, Workgroup = %u\n",
        (1.0e-6 * (double)byteCount / dAvgSecs), dAvgSecs, byteCount, 1,
        HISTOGRAM256_THREADBLOCK_SIZE);

    printf("\nValidating GPU results...\n");
    printf(" ...reading back GPU results\n");
    checkCudaErrors(hipMemcpy(h_HistogramGPU, d_Histogram,
                               HISTOGRAM256_BIN_COUNT * sizeof(uint),
                               hipMemcpyDeviceToHost));

    printf(" ...histogram256CPU()\n");
    histogram256CPU(h_HistogramCPU, h_Data, byteCount);

    printf(" ...comparing the results\n");

    for (uint i = 0; i < HISTOGRAM256_BIN_COUNT; i++)
      if (h_HistogramGPU[i] != h_HistogramCPU[i]) {
        PassFailFlag = 0;
      }

    printf(PassFailFlag ? " ...256-bin histograms match\n\n"
                        : " ***256-bin histograms do not match!!!***\n\n");

    printf("Shutting down 256-bin histogram...\n\n\n");
    closeHistogram256();
  }

  printf("Shutting down...\n");
  sdkDeleteTimer(&hTimer);
  checkCudaErrors(hipFree(d_Histogram));
  checkCudaErrors(hipFree(d_Data));
  free(h_HistogramGPU);
  free(h_HistogramCPU);
  free(h_Data);

  printf(
      "\nNOTE: The CUDA Samples are not meant for performance measurements. "
      "Results may vary when GPU Boost is enabled.\n\n");

  printf("%s - Test Summary\n", sSDKsample);

  // pass or fail (for both 64 bit and 256 bit histograms)
  if (!PassFailFlag) {
    printf("Test failed!\n");
    exit(EXIT_FAILURE);
  }

  printf("Test passed\n");
  exit(EXIT_SUCCESS);
}
