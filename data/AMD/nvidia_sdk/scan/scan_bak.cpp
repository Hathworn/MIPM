#include <hip/hip_runtime.h>
//#include <helper_cuda.h>
//#include <helper_functions.h>
#include "helper_functions.h"
#include "helper_cuda.h"
#include "/public/software/compiler/dtk/dtk-22.10.1/hip/include/hip/hip_cooperative_groups.h"
#include <assert.h>

#ifndef SCAN_COMMON_H
#define SCAN_COMMON_H

#include <stdlib.h>

////////////////////////////////////////////////////////////////////////////////
// Shortcut typename
////////////////////////////////////////////////////////////////////////////////
typedef unsigned int uint;
 namespace cg = cooperative_groups;
////////////////////////////////////////////////////////////////////////////////
// Implementation limits
////////////////////////////////////////////////////////////////////////////////
#define THREADBLOCK_SIZE 256
 extern "C" const uint MAX_BATCH_ELEMENTS = 64 * 1048576;
 extern "C" const uint MIN_SHORT_ARRAY_SIZE = 4;
 extern "C" const uint MAX_SHORT_ARRAY_SIZE = 4 * THREADBLOCK_SIZE;
 extern "C" const uint MIN_LARGE_ARRAY_SIZE = 8 * THREADBLOCK_SIZE;
 extern "C" const uint MAX_LARGE_ARRAY_SIZE =
     4 * THREADBLOCK_SIZE * THREADBLOCK_SIZE;

 
 ////////////////////////////////////////////////////////////////////////////////
 // Basic scan codelets
 ////////////////////////////////////////////////////////////////////////////////
 // Naive inclusive scan: O(N * log2(N)) operations
 // Allocate 2 * 'size' local memory, initialize the first half
 // with 'size' zeros avoiding if(pos >= offset) condition evaluation
 // and saving instructions
 inline __device__ uint scan1Inclusive(uint idata, volatile uint *s_Data,
                                       uint size, cg::thread_block cta) {
   uint pos = 2 * threadIdx.x - (threadIdx.x & (size - 1));
 
   s_Data[pos] = 0;
   pos += size;
   s_Data[pos] = idata;
 
   for (uint offset = 1; offset < size; offset <<= 1) {
     cg::sync(cta);
     uint t = s_Data[pos] + s_Data[pos - offset];
     cg::sync(cta);
     s_Data[pos] = t;
   }
 
   return s_Data[pos];
 }
 
 inline __device__ uint scan1Exclusive(uint idata, volatile uint *s_Data,
                                       uint size, cg::thread_block cta) {
   return scan1Inclusive(idata, s_Data, size, cta) - idata;
 }
 
 inline __device__ uint4 scan4Inclusive(uint4 idata4, volatile uint *s_Data,
                                        uint size, cg::thread_block cta) {
   // Level-0 inclusive scan
   idata4.y += idata4.x;
   idata4.z += idata4.y;
   idata4.w += idata4.z;
 
   // Level-1 exclusive scan
   uint oval = scan1Exclusive(idata4.w, s_Data, size / 4, cta);
 
   idata4.x += oval;
   idata4.y += oval;
   idata4.z += oval;
   idata4.w += oval;
 
   return idata4;
 }
 
 // Exclusive vector scan: the array to be scanned is stored
 // in local thread memory scope as uint4
 inline __device__ uint4 scan4Exclusive(uint4 idata4, volatile uint *s_Data,
                                        uint size, cg::thread_block cta) {
   uint4 odata4 = scan4Inclusive(idata4, s_Data, size, cta);
   odata4.x -= idata4.x;
   odata4.y -= idata4.y;
   odata4.z -= idata4.z;
   odata4.w -= idata4.w;
   return odata4;
 }
 
 ////////////////////////////////////////////////////////////////////////////////
 // Scan kernels
 ////////////////////////////////////////////////////////////////////////////////
 __global__ void scanExclusiveShared(uint4 *d_Dst, uint4 *d_Src, uint size) {
   // Handle to thread block group
   cg::thread_block cta = cg::this_thread_block();
   __shared__ uint s_Data[2 * THREADBLOCK_SIZE];
 
   uint pos = blockIdx.x * blockDim.x + threadIdx.x;
 
   // Load data
   uint4 idata4 = d_Src[pos];
 
   // Calculate exclusive scan
   uint4 odata4 = scan4Exclusive(idata4, s_Data, size, cta);
 
   // Write back
   d_Dst[pos] = odata4;
 }
 
 // Exclusive scan of top elements of bottom-level scans (4 * THREADBLOCK_SIZE)
 __global__ void scanExclusiveShared2(uint *d_Buf, uint *d_Dst, uint *d_Src,
                                      uint N, uint arrayLength) {
   // Handle to thread block group
   cg::thread_block cta = cg::this_thread_block();
   __shared__ uint s_Data[2 * THREADBLOCK_SIZE];
 
   // Skip loads and stores for inactive threads of last threadblock (pos >= N)
   uint pos = blockIdx.x * blockDim.x + threadIdx.x;
 
   // Load top elements
   // Convert results of bottom-level scan back to inclusive
   uint idata = 0;
 
   if (pos < N)
     idata = d_Dst[(4 * THREADBLOCK_SIZE) - 1 + (4 * THREADBLOCK_SIZE) * pos] +
             d_Src[(4 * THREADBLOCK_SIZE) - 1 + (4 * THREADBLOCK_SIZE) * pos];
 
   // Compute
   uint odata = scan1Exclusive(idata, s_Data, arrayLength, cta);
 
   // Avoid out-of-bound access
   if (pos < N) {
     d_Buf[pos] = odata;
   }
 }
 
 // Final step of large-array scan: combine basic inclusive scan with exclusive
 // scan of top elements of input arrays
 __global__ void uniformUpdate(uint4 *d_Data, uint *d_Buffer) {
   // Handle to thread block group
   cg::thread_block cta = cg::this_thread_block();
   __shared__ uint buf;
   uint pos = blockIdx.x * blockDim.x + threadIdx.x;
 
   if (threadIdx.x == 0) {
     buf = d_Buffer[blockIdx.x];
   }
 
   cg::sync(cta);
 
   uint4 data4 = d_Data[pos];
   data4.x += buf;
   data4.y += buf;
   data4.z += buf;
   data4.w += buf;
   d_Data[pos] = data4;
 }
 
 ////////////////////////////////////////////////////////////////////////////////
 // Interface function
 ////////////////////////////////////////////////////////////////////////////////
 // Derived as 32768 (max power-of-two gridDim.x) * 4 * THREADBLOCK_SIZE
 // Due to scanExclusiveShared<<<>>>() 1D block addressing

 
 // Internal exclusive scan buffer
 static uint *d_Buf;
 

 
 
 
 static uint factorRadix2(uint &log2L, uint L) {
   if (!L) {
     log2L = 0;
     return 0;
   } else {
     for (log2L = 0; (L & 1) == 0; L >>= 1, log2L++)
       ;
 
     return L;
   }
 }
 static uint iDivUp(uint dividend, uint divisor) {
   return ((dividend % divisor) == 0) ? (dividend / divisor)
                                      : (dividend / divisor + 1);
 }

////////////////////////////////////////////////////////////////////////////////
// CUDA scan
////////////////////////////////////////////////////////////////////////////////
extern "C" void initScan(void);
 extern "C" void initScan(void) {
   checkCudaErrors(
       hipMalloc((void **)&d_Buf,
                  (MAX_BATCH_ELEMENTS / (4 * THREADBLOCK_SIZE)) * sizeof(uint)));
 }

extern "C" void closeScan(void);

extern "C" void closeScan(void) { checkCudaErrors(hipFree(d_Buf)); }


extern "C" size_t scanExclusiveShort(uint *d_Dst, uint *d_Src, uint batchSize,
                                     uint arrayLength);

extern "C" size_t scanExclusiveLarge(uint *d_Dst, uint *d_Src, uint batchSize,
                                     uint arrayLength);

////////////////////////////////////////////////////////////////////////////////
// Reference CPU scan
////////////////////////////////////////////////////////////////////////////////
extern "C" void scanExclusiveHost(uint *dst, uint *src, uint batchSize,
                                  uint arrayLength);

#endif

int main(int argc, char **argv) {
  printf("%s Starting...\n\n", argv[0]);

  // Use command-line specified CUDA device, otherwise use device with highest
  // Gflops/s
  findCudaDevice(argc, (const char **)argv);

  uint *d_Input, *d_Output;
  uint *h_Input, *h_OutputCPU, *h_OutputGPU;
  StopWatchInterface *hTimer = NULL;
  const uint N = 13 * 1048576 / 2;

  printf("Allocating and initializing host arrays...\n");
  sdkCreateTimer(&hTimer);
  h_Input = (uint *)malloc(N * sizeof(uint));
  h_OutputCPU = (uint *)malloc(N * sizeof(uint));
  h_OutputGPU = (uint *)malloc(N * sizeof(uint));
  srand(2009);

  for (uint i = 0; i < N; i++) {
    h_Input[i] = rand()%1000;
  }
  for(int i=0;i<20;i++)
  {
    printf("%d ",h_Input[i]);
  }

  printf("Allocating and initializing CUDA arrays...\n");
  checkCudaErrors(hipMalloc((void **)&d_Input, N * sizeof(uint)));
  checkCudaErrors(hipMalloc((void **)&d_Output, N * sizeof(uint)));
  checkCudaErrors(
      hipMemcpy(d_Input, h_Input, N * sizeof(uint), hipMemcpyHostToDevice));

  printf("Initializing CUDA-C scan...\n\n");
  initScan();

  int globalFlag = 1;
  size_t szWorkgroup;
  const int iCycles = 100;
  printf(
      "*** Running GPU scan for short arrays (%d identical iterations)...\n\n",
      iCycles);

  for (uint arrayLength = MIN_SHORT_ARRAY_SIZE;
       arrayLength <= MAX_SHORT_ARRAY_SIZE; arrayLength <<= 1) {
    printf("Running scan for %u elements (%u arrays)...\n", arrayLength,
           N / arrayLength);
    checkCudaErrors(hipDeviceSynchronize());
    sdkResetTimer(&hTimer);
    sdkStartTimer(&hTimer);

    for (int i = 0; i < iCycles; i++) {
      szWorkgroup =
          scanExclusiveShort(d_Output, d_Input, N / arrayLength, arrayLength);
    }

    checkCudaErrors(hipDeviceSynchronize());
    sdkStopTimer(&hTimer);
    double timerValue = 1.0e-3 * sdkGetTimerValue(&hTimer) / iCycles;

    printf("Validating the results...\n");
    printf("...reading back GPU results\n");
    checkCudaErrors(hipMemcpy(h_OutputGPU, d_Output, N * sizeof(uint),
                               hipMemcpyDeviceToHost));

    printf(" ...scanExclusiveHost()\n");
    scanExclusiveHost(h_OutputCPU, h_Input, N / arrayLength, arrayLength);
    /*for(int i=0;i<20;i++)
    {
      printf("%d ",h_OutputCPU[i]);
    }*/

    // Compare GPU results with CPU results and accumulate error for this test
    printf(" ...comparing the results\n");
    int localFlag = 1;

    for (uint i = 0; i < N; i++) {
      if (h_OutputCPU[i] != h_OutputGPU[i]) {
        localFlag = 0;
        break;
      }
    }

    // Log message on individual test result, then accumulate to global flag
    printf(" ...Results %s\n\n",
           (localFlag == 1) ? "Match" : "DON'T Match !!!");
    globalFlag = globalFlag && localFlag;

    // Data log
    if (arrayLength == MAX_SHORT_ARRAY_SIZE) {
      printf("\n");
      printf(
          "scan, Throughput = %.4f MElements/s, Time = %.5f s, Size = %u "
          "Elements, NumDevsUsed = %u, Workgroup = %u\n",
          (1.0e-6 * (double)arrayLength / timerValue), timerValue,
          (unsigned int)arrayLength, 1, (unsigned int)szWorkgroup);
      printf("\n");
    }
  }

  printf(
      "***Running GPU scan for large arrays (%u identical iterations)...\n\n",
      iCycles);

  for (uint arrayLength = MIN_LARGE_ARRAY_SIZE;
       arrayLength <= MAX_LARGE_ARRAY_SIZE; arrayLength <<= 1) {
    printf("Running scan for %u elements (%u arrays)...\n", arrayLength,
           N / arrayLength);
    checkCudaErrors(hipDeviceSynchronize());
    sdkResetTimer(&hTimer);
    sdkStartTimer(&hTimer);

    for (int i = 0; i < iCycles; i++) {
      szWorkgroup =
          scanExclusiveLarge(d_Output, d_Input, N / arrayLength, arrayLength);
    }

    checkCudaErrors(hipDeviceSynchronize());
    sdkStopTimer(&hTimer);
    double timerValue = 1.0e-3 * sdkGetTimerValue(&hTimer) / iCycles;

    printf("Validating the results...\n");
    printf("...reading back GPU results\n");
    checkCudaErrors(hipMemcpy(h_OutputGPU, d_Output, N * sizeof(uint),
                               hipMemcpyDeviceToHost));

    printf("...scanExclusiveHost()\n");
    scanExclusiveHost(h_OutputCPU, h_Input, N / arrayLength, arrayLength);
    for(int i=2045;i<2055;i++)
    {
      printf("%d ",h_OutputCPU[i]);
    }
    for(int i=4090;i<4100;i++)
    {
      printf("%d ",h_OutputCPU[i]);
    }

    // Compare GPU results with CPU results and accumulate error for this test
    printf(" ...comparing the results\n");
    int localFlag = 1;

    for (uint i = 0; i < N; i++) {
      if (h_OutputCPU[i] != h_OutputGPU[i]) {
        localFlag = 0;
        break;
      }
    }

    // Log message on individual test result, then accumulate to global flag
    printf(" ...Results %s\n\n",
           (localFlag == 1) ? "Match" : "DON'T Match !!!");
    globalFlag = globalFlag && localFlag;

    // Data log
    if (arrayLength == MAX_LARGE_ARRAY_SIZE) {
      printf("\n");
      printf(
          "scan, Throughput = %.4f MElements/s, Time = %.5f s, Size = %u "
          "Elements, NumDevsUsed = %u, Workgroup = %u\n",
          (1.0e-6 * (double)arrayLength / timerValue), timerValue,
          (unsigned int)arrayLength, 1, (unsigned int)szWorkgroup);
      printf("\n");
    }
  }

  printf("Shutting down...\n");
  closeScan();
  checkCudaErrors(hipFree(d_Output));
  checkCudaErrors(hipFree(d_Input));

  sdkDeleteTimer(&hTimer);

  // pass or fail (cumulative... all tests in the loop)
  exit(globalFlag ? EXIT_SUCCESS : EXIT_FAILURE);
}


extern "C" void scanExclusiveHost(uint *dst, uint *src, uint batchSize,
                                  uint arrayLength) {
  for (uint i = 0; i < batchSize; i++, src += arrayLength, dst += arrayLength) {
    dst[0] = 0;

    for (uint j = 1; j < arrayLength; j++) dst[j] = src[j - 1] + dst[j - 1];
  }
}
 

 extern "C" size_t scanExclusiveShort(uint *d_Dst, uint *d_Src, uint batchSize,
                                      uint arrayLength) {
   // Check power-of-two factorization
   uint log2L;
   uint factorizationRemainder = factorRadix2(log2L, arrayLength);
   assert(factorizationRemainder == 1);
 
   // Check supported size range
   assert((arrayLength >= MIN_SHORT_ARRAY_SIZE) &&
          (arrayLength <= MAX_SHORT_ARRAY_SIZE));
 
   // Check total batch size limit
   assert((batchSize * arrayLength) <= MAX_BATCH_ELEMENTS);
 
   // Check all threadblocks to be fully packed with data
   assert((batchSize * arrayLength) % (4 * THREADBLOCK_SIZE) == 0);
 
   scanExclusiveShared<<<(batchSize * arrayLength) / (4 * THREADBLOCK_SIZE),
                         THREADBLOCK_SIZE>>>((uint4 *)d_Dst, (uint4 *)d_Src,
                                             arrayLength);
   getLastCudaError("scanExclusiveShared() execution FAILED\n");
 
   return THREADBLOCK_SIZE;
 }

 extern "C" size_t scanExclusiveLarge(uint *d_Dst, uint *d_Src, uint batchSize,
                                      uint arrayLength) {
   // Check power-of-two factorization
   uint log2L;
   uint factorizationRemainder = factorRadix2(log2L, arrayLength);
   assert(factorizationRemainder == 1);
 
   // Check supported size range
   assert((arrayLength >= MIN_LARGE_ARRAY_SIZE) &&
          (arrayLength <= MAX_LARGE_ARRAY_SIZE));
 
   // Check total batch size limit
   assert((batchSize * arrayLength) <= MAX_BATCH_ELEMENTS);
 
   scanExclusiveShared<<<(batchSize * arrayLength) / (4 * THREADBLOCK_SIZE),
                         THREADBLOCK_SIZE>>>((uint4 *)d_Dst, (uint4 *)d_Src,
                                             4 * THREADBLOCK_SIZE);
   getLastCudaError("scanExclusiveShared() execution FAILED\n");
 
   // Not all threadblocks need to be packed with input data:
   // inactive threads of highest threadblock just don't do global reads and
   // writes
   const uint blockCount2 = iDivUp(
       (batchSize * arrayLength) / (4 * THREADBLOCK_SIZE), THREADBLOCK_SIZE);
   scanExclusiveShared2<<<blockCount2, THREADBLOCK_SIZE>>>(
       (uint *)d_Buf, (uint *)d_Dst, (uint *)d_Src,
       (batchSize * arrayLength) / (4 * THREADBLOCK_SIZE),
       arrayLength / (4 * THREADBLOCK_SIZE));
   getLastCudaError("scanExclusiveShared2() execution FAILED\n");
 
   uniformUpdate<<<(batchSize * arrayLength) / (4 * THREADBLOCK_SIZE),
                   THREADBLOCK_SIZE>>>((uint4 *)d_Dst, (uint *)d_Buf);
   getLastCudaError("uniformUpdate() execution FAILED\n");
 
   return THREADBLOCK_SIZE;
 }
 