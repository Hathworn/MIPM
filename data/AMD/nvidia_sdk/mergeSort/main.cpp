/* Copyright (c) 2022, NVIDIA CORPORATION. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *  * Neither the name of NVIDIA CORPORATION nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS ``AS IS'' AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
 * OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
//#include "/opt/dtk-24.04.1/hip/include/hip/hip_device_runtime_api.h"
#include "/public/software/compiler/dtk/dtk-24.04.1/hip/include/hip/hip_runtime.h"
#include "helper_functions.h"
#include "helper_cuda.h"
#include "/public/software/compiler/dtk/dtk-24.04.1/hip/include/hip/hip_cooperative_groups.h"


namespace cg = cooperative_groups;

typedef unsigned int uint;

#define SHARED_SIZE_LIMIT 1024U
#define SAMPLE_STRIDE 128


  static inline __host__ __device__ uint iDivUp(uint a, uint b) {
   return ((a % b) == 0) ? (a / b) : (a / b + 1);
 }
__device__ static uint umin(uint a, uint b) { return (a <= b) ? a : b; }

 static inline __host__ __device__ uint getSampleCount(uint dividend) {
   return iDivUp(dividend, SAMPLE_STRIDE);
 }
#define W (sizeof(uint) * 8)
 static inline __device__ uint nextPowerOfTwo(uint x) {
   /*
       --x;
       x |= x >> 1;
       x |= x >> 2;
       x |= x >> 4;
       x |= x >> 8;
       x |= x >> 16;
       return ++x;
   */
   return 1U << (W - __clz(x - 1));
 }


////////////////////////////////////////////////////////////////////////////////
// Extensive sort validation routine
////////////////////////////////////////////////////////////////////////////////
extern "C" uint validateSortedKeys(uint *resKey, uint *srcKey, uint batchSize,
                                   uint arrayLength, uint numValues,
                                   uint sortDir);

extern "C" void fillValues(uint *val, uint N);

extern "C" int validateSortedValues(uint *resKey, uint *resVal, uint *srcKey,
                                    uint batchSize, uint arrayLength);

////////////////////////////////////////////////////////////////////////////////
// CUDA merge sort
////////////////////////////////////////////////////////////////////////////////
extern "C" void initMergeSort(void);

extern "C" void closeMergeSort(void);

extern "C" void mergeSort(uint *dstKey, uint *dstVal, uint *bufKey,
                          uint *bufVal, uint *srcKey, uint *srcVal, uint N,
                          uint sortDir);

////////////////////////////////////////////////////////////////////////////////
// CPU "emulation"
////////////////////////////////////////////////////////////////////////////////
extern "C" void mergeSortHost(uint *dstKey, uint *dstVal, uint *bufKey,
                              uint *bufVal, uint *srcKey, uint *srcVal, uint N,
                              uint sortDir);

static void mergeSortShared(uint *d_DstKey, uint *d_DstVal, uint *d_SrcKey,
                             uint *d_SrcVal, uint batchSize, uint arrayLength,
                             uint sortDir);

static void generateSampleRanks(uint *d_RanksA, uint *d_RanksB, uint *d_SrcKey,
                            uint stride, uint N, uint sortDir);


static void mergeRanksAndIndices(uint *d_LimitsA, uint *d_LimitsB,
                                  uint *d_RanksA, uint *d_RanksB, uint stride,
                                  uint N);


static void mergeElementaryIntervals(uint *d_DstKey, uint *d_DstVal,
                                      uint *d_SrcKey, uint *d_SrcVal,
                                      uint *d_LimitsA, uint *d_LimitsB,
                                      uint stride, uint N, uint sortDir);
template <uint sortDir>
 inline __device__ void merge(uint *dstKey, uint *dstVal, uint *srcAKey,
                              uint *srcAVal, uint *srcBKey, uint *srcBVal,
                              uint lenA, uint nPowTwoLenA, uint lenB,
                              uint nPowTwoLenB, cg::thread_block cta);


template <uint sortDir>
static inline __device__ uint binarySearchInclusive(uint val, uint *data, uint L, uint stride);
template <uint sortDir>
static inline __device__ uint binarySearchExclusive(uint val, uint *data,
                                                     uint L, uint stride) {
   if (L == 0) {
     return 0;
   }
 
   uint pos = 0;
 
   for (; stride > 0; stride >>= 1) {
     uint newPos = umin(pos + stride, L);
 
     if ((sortDir && (data[newPos - 1] < val)) ||
         (!sortDir && (data[newPos - 1] > val))) {
       pos = newPos;
     }
   }
 
   return pos;
 }


template <uint sortDir>
 __global__ void mergeSortSharedKernel(uint *d_DstKey, uint *d_DstVal,
                                       uint *d_SrcKey, uint *d_SrcVal,
                                       uint arrayLength) {
   // Handle to thread block group
   cg::thread_block cta = cg::this_thread_block();
   __shared__ uint s_key[SHARED_SIZE_LIMIT];
   __shared__ uint s_val[SHARED_SIZE_LIMIT];
 
   d_SrcKey += blockIdx.x * SHARED_SIZE_LIMIT + threadIdx.x;
   d_SrcVal += blockIdx.x * SHARED_SIZE_LIMIT + threadIdx.x;
   d_DstKey += blockIdx.x * SHARED_SIZE_LIMIT + threadIdx.x;
   d_DstVal += blockIdx.x * SHARED_SIZE_LIMIT + threadIdx.x;
   s_key[threadIdx.x + 0] = d_SrcKey[0];
   s_val[threadIdx.x + 0] = d_SrcVal[0];
   s_key[threadIdx.x + (SHARED_SIZE_LIMIT / 2)] =
       d_SrcKey[(SHARED_SIZE_LIMIT / 2)];
   s_val[threadIdx.x + (SHARED_SIZE_LIMIT / 2)] =
       d_SrcVal[(SHARED_SIZE_LIMIT / 2)];
 
   for (uint stride = 1; stride < arrayLength; stride <<= 1) {
     uint lPos = threadIdx.x & (stride - 1);
     uint *baseKey = s_key + 2 * (threadIdx.x - lPos);
     uint *baseVal = s_val + 2 * (threadIdx.x - lPos);
 
     cg::sync(cta);
     uint keyA = baseKey[lPos + 0];
     uint valA = baseVal[lPos + 0];
     uint keyB = baseKey[lPos + stride];
     uint valB = baseVal[lPos + stride];
     uint posA =
         binarySearchExclusive<sortDir>(keyA, baseKey + stride, stride, stride) +
         lPos;
     uint posB =
         binarySearchInclusive<sortDir>(keyB, baseKey + 0, stride, stride) +
         lPos;
 
     cg::sync(cta);
     baseKey[posA] = keyA;
     baseVal[posA] = valA;
     baseKey[posB] = keyB;
     baseVal[posB] = valB;
   }
 
   cg::sync(cta);
   d_DstKey[0] = s_key[threadIdx.x + 0];
   d_DstVal[0] = s_val[threadIdx.x + 0];
   d_DstKey[(SHARED_SIZE_LIMIT / 2)] =
       s_key[threadIdx.x + (SHARED_SIZE_LIMIT / 2)];
   d_DstVal[(SHARED_SIZE_LIMIT / 2)] =
       s_val[threadIdx.x + (SHARED_SIZE_LIMIT / 2)];
 }                                   


 template <uint sortDir>
 static inline __device__ uint binarySearchInclusive(uint val, uint *data,
                                                     uint L, uint stride) {
   if (L == 0) {
     return 0;
   }
 
   uint pos = 0;
 
   for (; stride > 0; stride >>= 1) {
     uint newPos = umin(pos + stride, L);
 
     if ((sortDir && (data[newPos - 1] <= val)) ||
         (!sortDir && (data[newPos - 1] >= val))) {
       pos = newPos;
     }
   }
 
   return pos;
 }
template <uint sortDir>
 __global__ void generateSampleRanksKernel(uint *d_RanksA, uint *d_RanksB,
                                           uint *d_SrcKey, uint stride, uint N,
                                           uint threadCount) {
   uint pos = blockIdx.x * blockDim.x + threadIdx.x;
 
   if (pos >= threadCount) {
     return;
   }
 
   const uint i = pos & ((stride / SAMPLE_STRIDE) - 1);
   const uint segmentBase = (pos - i) * (2 * SAMPLE_STRIDE);
   d_SrcKey += segmentBase;
   d_RanksA += segmentBase / SAMPLE_STRIDE;
   d_RanksB += segmentBase / SAMPLE_STRIDE;
 
   const uint segmentElementsA = stride;
   const uint segmentElementsB = umin(stride, N - segmentBase - stride);
   const uint segmentSamplesA = getSampleCount(segmentElementsA);
   const uint segmentSamplesB = getSampleCount(segmentElementsB);
 
   if (i < segmentSamplesA) {
     d_RanksA[i] = i * SAMPLE_STRIDE;
     d_RanksB[i] = binarySearchExclusive<sortDir>(
         d_SrcKey[i * SAMPLE_STRIDE], d_SrcKey + stride, segmentElementsB,
         nextPowerOfTwo(segmentElementsB));
   }
 
   if (i < segmentSamplesB) {
     d_RanksB[(stride / SAMPLE_STRIDE) + i] = i * SAMPLE_STRIDE;
     d_RanksA[(stride / SAMPLE_STRIDE) + i] = binarySearchInclusive<sortDir>(
         d_SrcKey[stride + i * SAMPLE_STRIDE], d_SrcKey + 0, segmentElementsA,
         nextPowerOfTwo(segmentElementsA));
   }
 }





////////////////////////////////////////////////////////////////////////////////
// Test driver
////////////////////////////////////////////////////////////////////////////////
int main(int argc, char **argv) {
  uint *h_SrcKey, *h_SrcVal, *h_DstKey, *h_DstVal;
  uint *d_SrcKey, *d_SrcVal, *d_BufKey, *d_BufVal, *d_DstKey, *d_DstVal;
  StopWatchInterface *hTimer = NULL;

  const uint N = 4 * 1048576;
  const uint DIR = 1;
  const uint numValues = 65536;

  printf("%s Starting...\n\n", argv[0]);

  int dev = findCudaDevice(argc, (const char **)argv);

  if (dev == -1) {
    return EXIT_FAILURE;
  }

  printf("Allocating and initializing host arrays...\n\n");
  sdkCreateTimer(&hTimer);
  h_SrcKey = (uint *)malloc(N * sizeof(uint));
  h_SrcVal = (uint *)malloc(N * sizeof(uint));
  h_DstKey = (uint *)malloc(N * sizeof(uint));
  h_DstVal = (uint *)malloc(N * sizeof(uint));

  srand(2009);

  for (uint i = 0; i < N; i++) {
    h_SrcKey[i] = rand() % numValues;
  }

  fillValues(h_SrcVal, N);

  printf("Allocating and initializing CUDA arrays...\n\n");
  checkCudaErrors(hipMalloc((void **)&d_DstKey, N * sizeof(uint)));
  checkCudaErrors(hipMalloc((void **)&d_DstVal, N * sizeof(uint)));
  checkCudaErrors(hipMalloc((void **)&d_BufKey, N * sizeof(uint)));
  checkCudaErrors(hipMalloc((void **)&d_BufVal, N * sizeof(uint)));
  checkCudaErrors(hipMalloc((void **)&d_SrcKey, N * sizeof(uint)));
  checkCudaErrors(hipMalloc((void **)&d_SrcVal, N * sizeof(uint)));
  checkCudaErrors(
      hipMemcpy(d_SrcKey, h_SrcKey, N * sizeof(uint), hipMemcpyHostToDevice));
  checkCudaErrors(
      hipMemcpy(d_SrcVal, h_SrcVal, N * sizeof(uint), hipMemcpyHostToDevice));

  printf("Initializing GPU merge sort...\n");
  initMergeSort();

  printf("Running GPU merge sort...\n");
  checkCudaErrors(hipDeviceSynchronize());
  sdkResetTimer(&hTimer);
  sdkStartTimer(&hTimer);
  mergeSort(d_DstKey, d_DstVal, d_BufKey, d_BufVal, d_SrcKey, d_SrcVal, N, DIR);
  checkCudaErrors(hipDeviceSynchronize());
  sdkStopTimer(&hTimer);
  printf("Time: %f ms\n", sdkGetTimerValue(&hTimer));

  printf("Reading back GPU merge sort results...\n");
  checkCudaErrors(
      hipMemcpy(h_DstKey, d_DstKey, N * sizeof(uint), hipMemcpyDeviceToHost));
  checkCudaErrors(
      hipMemcpy(h_DstVal, d_DstVal, N * sizeof(uint), hipMemcpyDeviceToHost));

  printf("Inspecting the results...\n");
  uint keysFlag = validateSortedKeys(h_DstKey, h_SrcKey, 1, N, numValues, DIR);

  uint valuesFlag = validateSortedValues(h_DstKey, h_DstVal, h_SrcKey, 1, N);

  printf("Shutting down...\n");
  closeMergeSort();
  sdkDeleteTimer(&hTimer);
  checkCudaErrors(hipFree(d_SrcVal));
  checkCudaErrors(hipFree(d_SrcKey));
  checkCudaErrors(hipFree(d_BufVal));
  checkCudaErrors(hipFree(d_BufKey));
  checkCudaErrors(hipFree(d_DstVal));
  checkCudaErrors(hipFree(d_DstKey));
  free(h_DstVal);
  free(h_DstKey);
  free(h_SrcVal);
  free(h_SrcKey);

  exit((keysFlag && valuesFlag) ? EXIT_SUCCESS : EXIT_FAILURE);
}


extern "C" uint validateSortedKeys(uint *resKey, uint *srcKey, uint batchSize,
                                   uint arrayLength, uint numValues,
                                   uint sortDir) {
  uint *srcHist;
  uint *resHist;

  if (arrayLength < 2) {
    printf("validateSortedKeys(): arrays too short, exiting...\n");
    return 1;
  }

  printf("...inspecting keys array: ");
  srcHist = (uint *)malloc(numValues * sizeof(uint));
  resHist = (uint *)malloc(numValues * sizeof(uint));

  int flag = 1;

  for (uint j = 0; j < batchSize;
       j++, srcKey += arrayLength, resKey += arrayLength) {
    // Build histograms for keys arrays
    memset(srcHist, 0, numValues * sizeof(uint));
    memset(resHist, 0, numValues * sizeof(uint));

    for (uint i = 0; i < arrayLength; i++) {
      if ((srcKey[i] < numValues) && (resKey[i] < numValues)) {
        srcHist[srcKey[i]]++;
        resHist[resKey[i]]++;
      } else {
        fprintf(
            stderr,
            "***Set %u source/result key arrays are not limited properly***\n",
            j);
        flag = 0;
        goto brk;
      }
    }

    // Compare the histograms
    for (uint i = 0; i < numValues; i++)
      if (srcHist[i] != resHist[i]) {
        fprintf(stderr,
                "***Set %u source/result keys histograms do not match***\n", j);
        flag = 0;
        goto brk;
      }

    // Finally check the ordering
    for (uint i = 0; i < arrayLength - 1; i++)
      if ((sortDir && (resKey[i] > resKey[i + 1])) ||
          (!sortDir && (resKey[i] < resKey[i + 1]))) {
        fprintf(stderr,
                "***Set %u result key array is not ordered properly***\n", j);
        flag = 0;
        goto brk;
      }
  }

brk:
  free(resHist);
  free(srcHist);

  if (flag) printf("OK\n");

  return flag;
}

////////////////////////////////////////////////////////////////////////////////
// Value validation / stability check routines
////////////////////////////////////////////////////////////////////////////////
extern "C" void fillValues(uint *val, uint N) {
  for (uint i = 0; i < N; i++) val[i] = i;
}

extern "C" int validateSortedValues(uint *resKey, uint *resVal, uint *srcKey,
                                    uint batchSize, uint arrayLength) {
  int correctFlag = 1, stableFlag = 1;

  printf("...inspecting keys and values array: ");

  for (uint i = 0; i < batchSize;
       i++, resKey += arrayLength, resVal += arrayLength) {
    for (uint j = 0; j < arrayLength; j++) {
      if (resKey[j] != srcKey[resVal[j]]) correctFlag = 0;

      if ((j < arrayLength - 1) && (resKey[j] == resKey[j + 1]) &&
          (resVal[j] > resVal[j + 1]))
        stableFlag = 0;
    }
  }

  printf(correctFlag ? "OK\n" : "***corrupted!!!***\n");
  printf(stableFlag ? "...stability property: stable!\n"
                    : "...stability property: NOT stable\n");

  return correctFlag;
}



 
 inline __device__ void Comparator(uint &keyA, uint &valA, uint &keyB,
                                   uint &valB, uint arrowDir) {
   uint t;
 
   if ((keyA > keyB) == arrowDir) {
     t = keyA;
     keyA = keyB;
     keyB = t;
     t = valA;
     valA = valB;
     valB = t;
   }
 }
 
 __global__ void bitonicSortSharedKernel(uint *d_DstKey, uint *d_DstVal,
                                         uint *d_SrcKey, uint *d_SrcVal,
                                         uint arrayLength, uint sortDir) {
   // Handle to thread block group
   cg::thread_block cta = cg::this_thread_block();
   // Shared memory storage for one or more short vectors
   __shared__ uint s_key[SHARED_SIZE_LIMIT];
   __shared__ uint s_val[SHARED_SIZE_LIMIT];
 
   // Offset to the beginning of subbatch and load data
   d_SrcKey += blockIdx.x * SHARED_SIZE_LIMIT + threadIdx.x;
   d_SrcVal += blockIdx.x * SHARED_SIZE_LIMIT + threadIdx.x;
   d_DstKey += blockIdx.x * SHARED_SIZE_LIMIT + threadIdx.x;
   d_DstVal += blockIdx.x * SHARED_SIZE_LIMIT + threadIdx.x;
   s_key[threadIdx.x + 0] = d_SrcKey[0];
   s_val[threadIdx.x + 0] = d_SrcVal[0];
   s_key[threadIdx.x + (SHARED_SIZE_LIMIT / 2)] =
       d_SrcKey[(SHARED_SIZE_LIMIT / 2)];
   s_val[threadIdx.x + (SHARED_SIZE_LIMIT / 2)] =
       d_SrcVal[(SHARED_SIZE_LIMIT / 2)];
 
   for (uint size = 2; size < arrayLength; size <<= 1) {
     // Bitonic merge
     uint dir = (threadIdx.x & (size / 2)) != 0;
 
     for (uint stride = size / 2; stride > 0; stride >>= 1) {
       cg::sync(cta);
       uint pos = 2 * threadIdx.x - (threadIdx.x & (stride - 1));
       Comparator(s_key[pos + 0], s_val[pos + 0], s_key[pos + stride],
                  s_val[pos + stride], dir);
     }
   }
 
   // ddd == sortDir for the last bitonic merge step
   {
     for (uint stride = arrayLength / 2; stride > 0; stride >>= 1) {
       cg::sync(cta);
       uint pos = 2 * threadIdx.x - (threadIdx.x & (stride - 1));
       Comparator(s_key[pos + 0], s_val[pos + 0], s_key[pos + stride],
                  s_val[pos + stride], sortDir);
     }
   }
 
   cg::sync(cta);
   d_DstKey[0] = s_key[threadIdx.x + 0];
   d_DstVal[0] = s_val[threadIdx.x + 0];
   d_DstKey[(SHARED_SIZE_LIMIT / 2)] =
       s_key[threadIdx.x + (SHARED_SIZE_LIMIT / 2)];
   d_DstVal[(SHARED_SIZE_LIMIT / 2)] =
       s_val[threadIdx.x + (SHARED_SIZE_LIMIT / 2)];
 }
 
 // Helper function (also used by odd-even merge sort)
 extern "C" uint factorRadix2(uint *log2L, uint L) {
   if (!L) {
     *log2L = 0;
     return 0;
   } else {
     for (*log2L = 0; (L & 1) == 0; L >>= 1, *log2L++)
       ;
 
     return L;
   }
 }
 
 extern "C" void bitonicSortShared(uint *d_DstKey, uint *d_DstVal,
                                   uint *d_SrcKey, uint *d_SrcVal,
                                   uint batchSize, uint arrayLength,
                                   uint sortDir) {
   // Nothing to sort
   if (arrayLength < 2) {
     return;
   }
 
   // Only power-of-two array lengths are supported by this implementation
   uint log2L;
   uint factorizationRemainder = factorRadix2(&log2L, arrayLength);
   assert(factorizationRemainder == 1);
 
   uint blockCount = batchSize * arrayLength / SHARED_SIZE_LIMIT;
   uint threadCount = SHARED_SIZE_LIMIT / 2;
 
   assert(arrayLength <= SHARED_SIZE_LIMIT);
   assert((batchSize * arrayLength) % SHARED_SIZE_LIMIT == 0);
 
   bitonicSortSharedKernel<<<blockCount, threadCount>>>(
       d_DstKey, d_DstVal, d_SrcKey, d_SrcVal, arrayLength, sortDir);
   getLastCudaError("bitonicSortSharedKernel<<<>>> failed!\n");
 }
 
 ////////////////////////////////////////////////////////////////////////////////
 // Merge step 3: merge elementary intervals
 ////////////////////////////////////////////////////////////////////////////////

 

 
 template <uint sortDir>
 static inline __device__ void ComparatorExtended(uint &keyA, uint &valA,
                                                  uint &flagA, uint &keyB,
                                                  uint &valB, uint &flagB,
                                                  uint arrowDir) {
   uint t;
 
   if ((!(flagA || flagB) && ((keyA > keyB) == arrowDir)) ||
       ((arrowDir == sortDir) && (flagA == 1)) ||
       ((arrowDir != sortDir) && (flagB == 1))) {
     t = keyA;
     keyA = keyB;
     keyB = t;
     t = valA;
     valA = valB;
     valB = t;
     t = flagA;
     flagA = flagB;
     flagB = t;
   }
 }
 
 template <uint sortDir>
 __global__ void bitonicMergeElementaryIntervalsKernel(
     uint *d_DstKey, uint *d_DstVal, uint *d_SrcKey, uint *d_SrcVal,
     uint *d_LimitsA, uint *d_LimitsB, uint stride, uint N) {
   // Handle to thread block group
   cg::thread_block cta = cg::this_thread_block();
   __shared__ uint s_key[2 * SAMPLE_STRIDE];
   __shared__ uint s_val[2 * SAMPLE_STRIDE];
   __shared__ uint s_inf[2 * SAMPLE_STRIDE];
 
   const uint intervalI = blockIdx.x & ((2 * stride) / SAMPLE_STRIDE - 1);
   const uint segmentBase = (blockIdx.x - intervalI) * SAMPLE_STRIDE;
   d_SrcKey += segmentBase;
   d_SrcVal += segmentBase;
   d_DstKey += segmentBase;
   d_DstVal += segmentBase;
 
   // Set up threadblock-wide parameters
   __shared__ uint startSrcA, lenSrcA, startSrcB, lenSrcB, startDst;
 
   if (threadIdx.x == 0) {
     uint segmentElementsA = stride;
     uint segmentElementsB = umin(stride, N - segmentBase - stride);
     uint segmentSamplesA = stride / SAMPLE_STRIDE;
     uint segmentSamplesB = getSampleCount(segmentElementsB);
     uint segmentSamples = segmentSamplesA + segmentSamplesB;
 
     startSrcA = d_LimitsA[blockIdx.x];
     startSrcB = d_LimitsB[blockIdx.x];
     startDst = startSrcA + startSrcB;
 
     uint endSrcA = (intervalI + 1 < segmentSamples) ? d_LimitsA[blockIdx.x + 1]
                                                     : segmentElementsA;
     uint endSrcB = (intervalI + 1 < segmentSamples) ? d_LimitsB[blockIdx.x + 1]
                                                     : segmentElementsB;
     lenSrcA = endSrcA - startSrcA;
     lenSrcB = endSrcB - startSrcB;
   }
 
   s_inf[threadIdx.x + 0] = 1;
   s_inf[threadIdx.x + SAMPLE_STRIDE] = 1;
 
   // Load input data
   cg::sync(cta);
 
   if (threadIdx.x < lenSrcA) {
     s_key[threadIdx.x] = d_SrcKey[0 + startSrcA + threadIdx.x];
     s_val[threadIdx.x] = d_SrcVal[0 + startSrcA + threadIdx.x];
     s_inf[threadIdx.x] = 0;
   }
 
   // Prepare for bitonic merge by inversing the ordering
   if (threadIdx.x < lenSrcB) {
     s_key[2 * SAMPLE_STRIDE - 1 - threadIdx.x] =
         d_SrcKey[stride + startSrcB + threadIdx.x];
     s_val[2 * SAMPLE_STRIDE - 1 - threadIdx.x] =
         d_SrcVal[stride + startSrcB + threadIdx.x];
     s_inf[2 * SAMPLE_STRIDE - 1 - threadIdx.x] = 0;
   }
 
   //"Extended" bitonic merge
   for (uint stride = SAMPLE_STRIDE; stride > 0; stride >>= 1) {
     cg::sync(cta);
     uint pos = 2 * threadIdx.x - (threadIdx.x & (stride - 1));
     ComparatorExtended<sortDir>(s_key[pos + 0], s_val[pos + 0], s_inf[pos + 0],
                                 s_key[pos + stride], s_val[pos + stride],
                                 s_inf[pos + stride], sortDir);
   }
 
   // Store sorted data
   cg::sync(cta);
   d_DstKey += startDst;
   d_DstVal += startDst;
 
   if (threadIdx.x < lenSrcA) {
     d_DstKey[threadIdx.x] = s_key[threadIdx.x];
     d_DstVal[threadIdx.x] = s_val[threadIdx.x];
   }
 
   if (threadIdx.x < lenSrcB) {
     d_DstKey[lenSrcA + threadIdx.x] = s_key[lenSrcA + threadIdx.x];
     d_DstVal[lenSrcA + threadIdx.x] = s_val[lenSrcA + threadIdx.x];
   }
 }
 
 extern "C" void bitonicMergeElementaryIntervals(uint *d_DstKey, uint *d_DstVal,
                                                 uint *d_SrcKey, uint *d_SrcVal,
                                                 uint *d_LimitsA,
                                                 uint *d_LimitsB, uint stride,
                                                 uint N, uint sortDir) {
   uint lastSegmentElements = N % (2 * stride);
 
   uint mergePairs = (lastSegmentElements > stride)
                         ? getSampleCount(N)
                         : (N - lastSegmentElements) / SAMPLE_STRIDE;
 
   if (sortDir) {
     bitonicMergeElementaryIntervalsKernel<1U><<<mergePairs, SAMPLE_STRIDE>>>(
         d_DstKey, d_DstVal, d_SrcKey, d_SrcVal, d_LimitsA, d_LimitsB, stride,
         N);
     getLastCudaError("mergeElementaryIntervalsKernel<1> failed\n");
   } else {
     bitonicMergeElementaryIntervalsKernel<0U><<<mergePairs, SAMPLE_STRIDE>>>(
         d_DstKey, d_DstVal, d_SrcKey, d_SrcVal, d_LimitsA, d_LimitsB, stride,
         N);
     getLastCudaError("mergeElementaryIntervalsKernel<0> failed\n");
   }
 }
 
static const uint MAX_SAMPLE_COUNT = 32768;
static uint *d_RanksA, *d_RanksB, *d_LimitsA, *d_LimitsB;
  extern "C" void initMergeSort(void) {
   checkCudaErrors(
       hipMalloc((void **)&d_RanksA, MAX_SAMPLE_COUNT * sizeof(uint)));
   checkCudaErrors(
       hipMalloc((void **)&d_RanksB, MAX_SAMPLE_COUNT * sizeof(uint)));
   checkCudaErrors(
       hipMalloc((void **)&d_LimitsA, MAX_SAMPLE_COUNT * sizeof(uint)));
   checkCudaErrors(
       hipMalloc((void **)&d_LimitsB, MAX_SAMPLE_COUNT * sizeof(uint)));
 }

 extern "C" void mergeSort(uint *d_DstKey, uint *d_DstVal, uint *d_BufKey,
                           uint *d_BufVal, uint *d_SrcKey, uint *d_SrcVal,
                           uint N, uint sortDir) {
   uint stageCount = 0;
 
   for (uint stride = SHARED_SIZE_LIMIT; stride < N; stride <<= 1, stageCount++)
     ;
 
   uint *ikey, *ival, *okey, *oval;
 
   if (stageCount & 1) {
     ikey = d_BufKey;
     ival = d_BufVal;
     okey = d_DstKey;
     oval = d_DstVal;
   } else {
     ikey = d_DstKey;
     ival = d_DstVal;
     okey = d_BufKey;
     oval = d_BufVal;
   }
 
   assert(N <= (SAMPLE_STRIDE * MAX_SAMPLE_COUNT));
   assert(N % SHARED_SIZE_LIMIT == 0);
   mergeSortShared(ikey, ival, d_SrcKey, d_SrcVal, N / SHARED_SIZE_LIMIT,
                   SHARED_SIZE_LIMIT, sortDir);
 
   for (uint stride = SHARED_SIZE_LIMIT; stride < N; stride <<= 1) {
     uint lastSegmentElements = N % (2 * stride);
 
     // Find sample ranks and prepare for limiters merge
     generateSampleRanks(d_RanksA, d_RanksB, ikey, stride, N, sortDir);
 
     // Merge ranks and indices
     mergeRanksAndIndices(d_LimitsA, d_LimitsB, d_RanksA, d_RanksB, stride, N);
 
     // Merge elementary intervals
     mergeElementaryIntervals(okey, oval, ikey, ival, d_LimitsA, d_LimitsB,
                              stride, N, sortDir);
 
     if (lastSegmentElements <= stride) {
       // Last merge segment consists of a single array which just needs to be
       // passed through
       checkCudaErrors(hipMemcpy(
           okey + (N - lastSegmentElements), ikey + (N - lastSegmentElements),
           lastSegmentElements * sizeof(uint), hipMemcpyDeviceToDevice));
       checkCudaErrors(hipMemcpy(
           oval + (N - lastSegmentElements), ival + (N - lastSegmentElements),
           lastSegmentElements * sizeof(uint), hipMemcpyDeviceToDevice));
     }
 
     uint *t;
     t = ikey;
     ikey = okey;
     okey = t;
     t = ival;
     ival = oval;
     oval = t;
   }
 }
 

  extern "C" void closeMergeSort(void) {
   checkCudaErrors(hipFree(d_RanksA));
   checkCudaErrors(hipFree(d_RanksB));
   checkCudaErrors(hipFree(d_LimitsB));
   checkCudaErrors(hipFree(d_LimitsA));
 }


  static void mergeSortShared(uint *d_DstKey, uint *d_DstVal, uint *d_SrcKey,
                             uint *d_SrcVal, uint batchSize, uint arrayLength,
                             uint sortDir) {
   if (arrayLength < 2) {
     return;
   }
 
   assert(SHARED_SIZE_LIMIT % arrayLength == 0);
   assert(((batchSize * arrayLength) % SHARED_SIZE_LIMIT) == 0);
   uint blockCount = batchSize * arrayLength / SHARED_SIZE_LIMIT;
   uint threadCount = SHARED_SIZE_LIMIT / 2;
 
   if (sortDir) {
     mergeSortSharedKernel<1U><<<blockCount, threadCount>>>(
         d_DstKey, d_DstVal, d_SrcKey, d_SrcVal, arrayLength);
     getLastCudaError("mergeSortShared<1><<<>>> failed\n");
   } else {
     mergeSortSharedKernel<0U><<<blockCount, threadCount>>>(
         d_DstKey, d_DstVal, d_SrcKey, d_SrcVal, arrayLength);
     getLastCudaError("mergeSortShared<0><<<>>> failed\n");
   }
 }

  static void generateSampleRanks(uint *d_RanksA, uint *d_RanksB, uint *d_SrcKey,
                                 uint stride, uint N, uint sortDir) {
   uint lastSegmentElements = N % (2 * stride);
   uint threadCount =
       (lastSegmentElements > stride)
           ? (N + 2 * stride - lastSegmentElements) / (2 * SAMPLE_STRIDE)
           : (N - lastSegmentElements) / (2 * SAMPLE_STRIDE);
 
   if (sortDir) {
     generateSampleRanksKernel<1U><<<iDivUp(threadCount, 256), 256>>>(
         d_RanksA, d_RanksB, d_SrcKey, stride, N, threadCount);
     getLastCudaError("generateSampleRanksKernel<1U><<<>>> failed\n");
   } else {
     generateSampleRanksKernel<0U><<<iDivUp(threadCount, 256), 256>>>(
         d_RanksA, d_RanksB, d_SrcKey, stride, N, threadCount);
     getLastCudaError("generateSampleRanksKernel<0U><<<>>> failed\n");
   }
 }

 __global__ void mergeRanksAndIndicesKernel(uint *d_Limits, uint *d_Ranks,
                                            uint stride, uint N,
                                            uint threadCount) {
   uint pos = blockIdx.x * blockDim.x + threadIdx.x;
 
   if (pos >= threadCount) {
     return;
   }
 
   const uint i = pos & ((stride / SAMPLE_STRIDE) - 1);
   const uint segmentBase = (pos - i) * (2 * SAMPLE_STRIDE);
   d_Ranks += (pos - i) * 2;
   d_Limits += (pos - i) * 2;
 
   const uint segmentElementsA = stride;
   const uint segmentElementsB = umin(stride, N - segmentBase - stride);
   const uint segmentSamplesA = getSampleCount(segmentElementsA);
   const uint segmentSamplesB = getSampleCount(segmentElementsB);
 
   if (i < segmentSamplesA) {
     uint dstPos = binarySearchExclusive<1U>(
                       d_Ranks[i], d_Ranks + segmentSamplesA, segmentSamplesB,
                       nextPowerOfTwo(segmentSamplesB)) +
                   i;
     d_Limits[dstPos] = d_Ranks[i];
   }
 
   if (i < segmentSamplesB) {
     uint dstPos = binarySearchInclusive<1U>(d_Ranks[segmentSamplesA + i],
                                             d_Ranks, segmentSamplesA,
                                             nextPowerOfTwo(segmentSamplesA)) +
                   i;
     d_Limits[dstPos] = d_Ranks[segmentSamplesA + i];
   }
 }

 static void mergeRanksAndIndices(uint *d_LimitsA, uint *d_LimitsB,
                                  uint *d_RanksA, uint *d_RanksB, uint stride,
                                  uint N) {
   uint lastSegmentElements = N % (2 * stride);
   uint threadCount =
       (lastSegmentElements > stride)
           ? (N + 2 * stride - lastSegmentElements) / (2 * SAMPLE_STRIDE)
           : (N - lastSegmentElements) / (2 * SAMPLE_STRIDE);
 
   mergeRanksAndIndicesKernel<<<iDivUp(threadCount, 256), 256>>>(
       d_LimitsA, d_RanksA, stride, N, threadCount);
   getLastCudaError("mergeRanksAndIndicesKernel(A)<<<>>> failed\n");
 
   mergeRanksAndIndicesKernel<<<iDivUp(threadCount, 256), 256>>>(
       d_LimitsB, d_RanksB, stride, N, threadCount);
   getLastCudaError("mergeRanksAndIndicesKernel(B)<<<>>> failed\n");
 }

template <uint sortDir>
 inline __device__ void merge(uint *dstKey, uint *dstVal, uint *srcAKey,
                              uint *srcAVal, uint *srcBKey, uint *srcBVal,
                              uint lenA, uint nPowTwoLenA, uint lenB,
                              uint nPowTwoLenB, cg::thread_block cta) {
   uint keyA, valA, keyB, valB, dstPosA, dstPosB;
 
   if (threadIdx.x < lenA) {
     keyA = srcAKey[threadIdx.x];
     valA = srcAVal[threadIdx.x];
     dstPosA = binarySearchExclusive<sortDir>(keyA, srcBKey, lenB, nPowTwoLenB) +
               threadIdx.x;
   }
 
   if (threadIdx.x < lenB) {
     keyB = srcBKey[threadIdx.x];
     valB = srcBVal[threadIdx.x];
     dstPosB = binarySearchInclusive<sortDir>(keyB, srcAKey, lenA, nPowTwoLenA) +
               threadIdx.x;
   }
 
   cg::sync(cta);
 
   if (threadIdx.x < lenA) {
     dstKey[dstPosA] = keyA;
     dstVal[dstPosA] = valA;
   }
 
   if (threadIdx.x < lenB) {
     dstKey[dstPosB] = keyB;
     dstVal[dstPosB] = valB;
   }
 }


template <uint sortDir>
 __global__ void mergeElementaryIntervalsKernel(uint *d_DstKey, uint *d_DstVal,
                                                uint *d_SrcKey, uint *d_SrcVal,
                                                uint *d_LimitsA, uint *d_LimitsB,
                                                uint stride, uint N) {
   // Handle to thread block group
   cg::thread_block cta = cg::this_thread_block();
   __shared__ uint s_key[2 * SAMPLE_STRIDE];
   __shared__ uint s_val[2 * SAMPLE_STRIDE];
 
   const uint intervalI = blockIdx.x & ((2 * stride) / SAMPLE_STRIDE - 1);
   const uint segmentBase = (blockIdx.x - intervalI) * SAMPLE_STRIDE;
   d_SrcKey += segmentBase;
   d_SrcVal += segmentBase;
   d_DstKey += segmentBase;
   d_DstVal += segmentBase;
 
   // Set up threadblock-wide parameters
   __shared__ uint startSrcA, startSrcB, lenSrcA, lenSrcB, startDstA, startDstB;
 
   if (threadIdx.x == 0) {
     uint segmentElementsA = stride;
     uint segmentElementsB = umin(stride, N - segmentBase - stride);
     uint segmentSamplesA = getSampleCount(segmentElementsA);
     uint segmentSamplesB = getSampleCount(segmentElementsB);
     uint segmentSamples = segmentSamplesA + segmentSamplesB;
 
     startSrcA = d_LimitsA[blockIdx.x];
     startSrcB = d_LimitsB[blockIdx.x];
     uint endSrcA = (intervalI + 1 < segmentSamples) ? d_LimitsA[blockIdx.x + 1]
                                                     : segmentElementsA;
     uint endSrcB = (intervalI + 1 < segmentSamples) ? d_LimitsB[blockIdx.x + 1]
                                                     : segmentElementsB;
     lenSrcA = endSrcA - startSrcA;
     lenSrcB = endSrcB - startSrcB;
     startDstA = startSrcA + startSrcB;
     startDstB = startDstA + lenSrcA;
   }
 
   // Load main input data
   cg::sync(cta);
 
   if (threadIdx.x < lenSrcA) {
     s_key[threadIdx.x + 0] = d_SrcKey[0 + startSrcA + threadIdx.x];
     s_val[threadIdx.x + 0] = d_SrcVal[0 + startSrcA + threadIdx.x];
   }
 
   if (threadIdx.x < lenSrcB) {
     s_key[threadIdx.x + SAMPLE_STRIDE] =
         d_SrcKey[stride + startSrcB + threadIdx.x];
     s_val[threadIdx.x + SAMPLE_STRIDE] =
         d_SrcVal[stride + startSrcB + threadIdx.x];
   }
 
   // Merge data in shared memory
   cg::sync(cta);
   merge<sortDir>(s_key, s_val, s_key + 0, s_val + 0, s_key + SAMPLE_STRIDE,
                  s_val + SAMPLE_STRIDE, lenSrcA, SAMPLE_STRIDE, lenSrcB,
                  SAMPLE_STRIDE, cta);
 
   // Store merged data
   cg::sync(cta);
 
   if (threadIdx.x < lenSrcA) {
     d_DstKey[startDstA + threadIdx.x] = s_key[threadIdx.x];
     d_DstVal[startDstA + threadIdx.x] = s_val[threadIdx.x];
   }
 
   if (threadIdx.x < lenSrcB) {
     d_DstKey[startDstB + threadIdx.x] = s_key[lenSrcA + threadIdx.x];
     d_DstVal[startDstB + threadIdx.x] = s_val[lenSrcA + threadIdx.x];
   }
 }

  static void mergeElementaryIntervals(uint *d_DstKey, uint *d_DstVal,
                                      uint *d_SrcKey, uint *d_SrcVal,
                                      uint *d_LimitsA, uint *d_LimitsB,
                                      uint stride, uint N, uint sortDir) {
   uint lastSegmentElements = N % (2 * stride);
   uint mergePairs = (lastSegmentElements > stride)
                         ? getSampleCount(N)
                         : (N - lastSegmentElements) / SAMPLE_STRIDE;
 
   if (sortDir) {
     mergeElementaryIntervalsKernel<1U><<<mergePairs, SAMPLE_STRIDE>>>(
         d_DstKey, d_DstVal, d_SrcKey, d_SrcVal, d_LimitsA, d_LimitsB, stride,
         N);
     getLastCudaError("mergeElementaryIntervalsKernel<1> failed\n");
   } else {
     mergeElementaryIntervalsKernel<0U><<<mergePairs, SAMPLE_STRIDE>>>(
         d_DstKey, d_DstVal, d_SrcKey, d_SrcVal, d_LimitsA, d_LimitsB, stride,
         N);
     getLastCudaError("mergeElementaryIntervalsKernel<0> failed\n");
   }
 }
