#include "hip/hip_runtime.h"
#include <stdio.h>

#include "helper_cuda.h"
#include "helper_functions.h"
#include "/public/software/compiler/dtk/dtk-22.10.1/hip/include/hip/hip_cooperative_groups.h"


namespace cg = cooperative_groups;
 
 // Utility function to extract unsigned chars from an
 // unsigned integer
 __device__ uchar4 uint_to_uchar4(const unsigned int in) {
   return make_uchar4((in & 0x000000ff) >> 0, (in & 0x0000ff00) >> 8,
                      (in & 0x00ff0000) >> 16, (in & 0xff000000) >> 24);
 }
 
 // Utility for dealing with vector data at different levels.
 struct packed_result {
   uint4 x, y, z, w;
 };
 
 __device__ packed_result get_prefix_sum(const uint4 &data,
                                         const cg::thread_block &cta) {
   const auto tile = cg::tiled_partition<32>(cta);
 
   __shared__ unsigned int sums[128];
   const unsigned int lane_id = tile.thread_rank();
   const unsigned int warp_id = tile.meta_group_rank();
 
   unsigned int result[16] = {};
   {
     const uchar4 a = uint_to_uchar4(data.x);
     const uchar4 b = uint_to_uchar4(data.y);
     const uchar4 c = uint_to_uchar4(data.z);
     const uchar4 d = uint_to_uchar4(data.w);
 
     result[0] = a.x;
     result[1] = a.x + a.y;
     result[2] = a.x + a.y + a.z;
     result[3] = a.x + a.y + a.z + a.w;
 
     result[4] = b.x;
     result[5] = b.x + b.y;
     result[6] = b.x + b.y + b.z;
     result[7] = b.x + b.y + b.z + b.w;
 
     result[8] = c.x;
     result[9] = c.x + c.y;
     result[10] = c.x + c.y + c.z;
     result[11] = c.x + c.y + c.z + c.w;
 
     result[12] = d.x;
     result[13] = d.x + d.y;
     result[14] = d.x + d.y + d.z;
     result[15] = d.x + d.y + d.z + d.w;
   }
 
 #pragma unroll
   for (unsigned int i = 4; i <= 7; i++) result[i] += result[3];
 
 #pragma unroll
   for (unsigned int i = 8; i <= 11; i++) result[i] += result[7];
 
 #pragma unroll
   for (unsigned int i = 12; i <= 15; i++) result[i] += result[11];
 
   unsigned int sum = result[15];
 
   // the prefix sum for each thread's 16 value is computed,
   // now the final sums (result[15]) need to be shared
   // with the other threads and add.  To do this,
   // the __shfl_up() instruction is used and a shuffle scan
   // operation is performed to distribute the sums to the correct
   // threads
 
 #pragma unroll
   for (unsigned int i = 1; i < 32; i *= 2) {
     const unsigned int n = tile.shfl_up(sum, i);
 
     if (lane_id >= i) {
 #pragma unroll
       for (unsigned int j = 0; j < 16; j++) {
         result[j] += n;
       }
 
       sum += n;
     }
   }
 
   // Now the final sum for the warp must be shared
   // between warps.  This is done by each warp
   // having a thread store to shared memory, then
   // having some other warp load the values and
   // compute a prefix sum, again by using __shfl_up.
   // The results are uniformly added back to the warps.
   // last thread in the warp holding sum of the warp
   // places that in shared
   if (tile.thread_rank() == (tile.size() - 1)) {
     sums[warp_id] = result[15];
   }
 
   __syncthreads();
 
   if (warp_id == 0) {
     unsigned int warp_sum = sums[lane_id];
 
 #pragma unroll
     for (unsigned int i = 1; i <= 16; i *= 2) {
       const unsigned int n = tile.shfl_up(warp_sum, i);
 
       if (lane_id >= i) warp_sum += n;
     }
 
     sums[lane_id] = warp_sum;
   }
 
   __syncthreads();
 
   // fold in unused warp
   if (warp_id > 0) {
     const unsigned int blockSum = sums[warp_id - 1];
 
 #pragma unroll
     for (unsigned int i = 0; i < 16; i++) {
       result[i] += blockSum;
     }
   }
 
   packed_result out;
   memcpy(&out, result, sizeof(out));
   return out;
 }
 
 // This function demonstrates some uses of the shuffle instruction
 // in the generation of an integral image (also
 // called a summed area table)
 // The approach is two pass, a horizontal (scanline) then a vertical
 // (column) pass.
 // This is the horizontal pass kernel.
 __global__ void shfl_intimage_rows(const uint4 *img, uint4 *integral_image) {
   const auto cta = cg::this_thread_block();
   const auto tile = cg::tiled_partition<32>(cta);
 
   const unsigned int id = threadIdx.x;
   // pointer to head of current scanline
   const uint4 *scanline = &img[blockIdx.x * 120];
   packed_result result = get_prefix_sum(scanline[id], cta);
 
   // This access helper allows packed_result to stay optimized as registers
   // rather than spill to stack
   auto idxToElem = [&result](unsigned int idx) -> const uint4 {
     switch (idx) {
       case 0:
         return result.x;
       case 1:
         return result.y;
       case 2:
         return result.z;
       case 3:
         return result.w;
     }
     return {};
   };
 
   // assemble result
   // Each thread has 16 values to write, which are
   // now integer data (to avoid overflow).  Instead of
   // each thread writing consecutive uint4s, the
   // approach shown here experiments using
   // the shuffle command to reformat the data
   // inside the registers so that each thread holds
   // consecutive data to be written so larger contiguous
   // segments can be assembled for writing.
   /*
     For example data that needs to be written as
 
     GMEM[16] <- x0 x1 x2 x3 y0 y1 y2 y3 z0 z1 z2 z3 w0 w1 w2 w3
     but is stored in registers (r0..r3), in four threads (0..3) as:
 
     threadId   0  1  2  3
       r0      x0 y0 z0 w0
       r1      x1 y1 z1 w1
       r2      x2 y2 z2 w2
       r3      x3 y3 z3 w3
 
       after apply __shfl_xor operations to move data between registers r1..r3:
 
     threadId  00 01 10 11
               x0 y0 z0 w0
      xor(01)->y1 x1 w1 z1
      xor(10)->z2 w2 x2 y2
      xor(11)->w3 z3 y3 x3
 
      and now x0..x3, and z0..z3 can be written out in order by all threads.
 
      In the current code, each register above is actually representing
      four integers to be written as uint4's to GMEM.
   */
 
   const unsigned int idMask = id & 3;
   const unsigned int idSwizzle = (id + 2) & 3;
   const unsigned int idShift = (id >> 2) << 4;
   const unsigned int blockOffset = blockIdx.x * 480;
 
   // Use CG tile to warp shuffle vector types
   result.y = tile.shfl_xor(result.y, 1);
   result.z = tile.shfl_xor(result.z, 2);
   result.w = tile.shfl_xor(result.w, 3);
 
   // First batch
   integral_image[blockOffset + idMask + idShift] = idxToElem(idMask);
   // Second batch offset by 2
   integral_image[blockOffset + idSwizzle + idShift + 8] = idxToElem(idSwizzle);
 
   // continuing from the above example,
   // this use of __shfl_xor() places the y0..y3 and w0..w3 data
   // in order.
   result.x = tile.shfl_xor(result.x, 1);
   result.y = tile.shfl_xor(result.y, 1);
   result.z = tile.shfl_xor(result.z, 1);
   result.w = tile.shfl_xor(result.w, 1);
 
   // First batch
   integral_image[blockOffset + idMask + idShift + 4] = idxToElem(idMask);
   // Second batch offset by 2
   integral_image[blockOffset + idSwizzle + idShift + 12] = idxToElem(idSwizzle);
 }
 
 // This kernel computes columnwise prefix sums.  When the data input is
 // the row sums from above, this completes the integral image.
 // The approach here is to have each block compute a local set of sums.
 // First , the data covered by the block is loaded into shared memory,
 // then instead of performing a sum in shared memory using __syncthreads
 // between stages, the data is reformatted so that the necessary sums
 // occur inside warps and the shuffle scan operation is used.
 // The final set of sums from the block is then propagated, with the block
 // computing "down" the image and adding the running sum to the local
 // block sums.
 __global__ void shfl_vertical_shfl(unsigned int *img, int width, int height) {
   __shared__ unsigned int sums[32][9];
   int tidx = blockIdx.x * blockDim.x + threadIdx.x;
   // int warp_id = threadIdx.x / warpSize ;
   unsigned int lane_id = tidx % 8;
   // int rows_per_thread = (height / blockDim. y) ;
   // int start_row = rows_per_thread * threadIdx.y;
   unsigned int stepSum = 0;
   unsigned int mask = 0xffffffff;
 
   sums[threadIdx.x][threadIdx.y] = 0;
   __syncthreads();
 
   for (int step = 0; step < 135; step++) {
     unsigned int sum = 0;
     unsigned int *p = img + (threadIdx.y + step * 8) * width + tidx;
 
     sum = *p;
     sums[threadIdx.x][threadIdx.y] = sum;
     __syncthreads();
 
     // place into SMEM
     // shfl scan reduce the SMEM, reformating so the column
     // sums are computed in a warp
     // then read out properly
     int partial_sum = 0;
     int j = threadIdx.x % 8;
     int k = threadIdx.x / 8 + threadIdx.y * 4;
 
     partial_sum = sums[k][j];
 
     for (int i = 1; i <= 8; i *= 2) {
       int n = __shfl_up_sync(mask, partial_sum, i, 32);
 
       if (lane_id >= i) partial_sum += n;
     }
 
     sums[k][j] = partial_sum;
     __syncthreads();
 
     if (threadIdx.y > 0) {
       sum += sums[threadIdx.x][threadIdx.y - 1];
     }
 
     sum += stepSum;
     stepSum += sums[threadIdx.x][blockDim.y - 1];
     __syncthreads();
     *p = sum;
   }
 }
 
__global__ void shfl_scan_test(int *data, int width, int *partial_sums = NULL) {
  extern __shared__ int sums[];
  int id = ((blockIdx.x * blockDim.x) + threadIdx.x);
  int lane_id = id % warpSize;
  // determine a warp_id within a block
  int warp_id = threadIdx.x / warpSize;

  // Below is the basic structure of using a shfl instruction
  // for a scan.
  // Record "value" as a variable - we accumulate it along the way
  int value = data[id];

  // Now accumulate in log steps up the chain
  // compute sums, with another thread's value who is
  // distance delta away (i).  Note
  // those threads where the thread 'i' away would have
  // been out of bounds of the warp are unaffected.  This
  // creates the scan sum.

#pragma unroll
  for (int i = 1; i <= width; i *= 2) {
    unsigned int mask = 0xffffffff;
    int n = __shfl_up_sync(mask, value, i, width);

    if (lane_id >= i) value += n;
  }

  // value now holds the scan value for the individual thread
  // next sum the largest values for each warp

  // write the sum of the warp to smem
  if (threadIdx.x % warpSize == warpSize - 1) {
    sums[warp_id] = value;
  }

  __syncthreads();

  //
  // scan sum the warp sums
  // the same shfl scan operation, but performed on warp sums
  //
  if (warp_id == 0 && lane_id < (blockDim.x / warpSize)) {
    int warp_sum = sums[lane_id];

    int mask = (1 << (blockDim.x / warpSize)) - 1;
    for (int i = 1; i <= (blockDim.x / warpSize); i *= 2) {
      int n = __shfl_up_sync(mask, warp_sum, i, (blockDim.x / warpSize));

      if (lane_id >= i) warp_sum += n;
    }

    sums[lane_id] = warp_sum;
  }

  __syncthreads();

  // perform a uniform add across warps in the block
  // read neighbouring warp's sum and add it to threads value
  int blockSum = 0;

  if (warp_id > 0) {
    blockSum = sums[warp_id - 1];
  }

  value += blockSum;

  // Now write out our result
  data[id] = value;

  // last thread has sum, write write out the block's sum
  if (partial_sums != NULL && threadIdx.x == blockDim.x - 1) {
    partial_sums[blockIdx.x] = value;
  }
}

// Uniform add: add partial sums array
__global__ void uniform_add(int *data, int *partial_sums, int len) {
  __shared__ int buf;
  int id = ((blockIdx.x * blockDim.x) + threadIdx.x);

  if (id > len) return;

  if (threadIdx.x == 0) {
    buf = partial_sums[blockIdx.x];
  }

  __syncthreads();
  data[id] += buf;
}

static unsigned int iDivUp(unsigned int dividend, unsigned int divisor) {
  return ((dividend % divisor) == 0) ? (dividend / divisor)
                                     : (dividend / divisor + 1);
}

// This function verifies the shuffle scan result, for the simple
// prefix sum case.
bool CPUverify(int *h_data, int *h_result, int n_elements) {
  // cpu verify
  for (int i = 0; i < n_elements - 1; i++) {
    h_data[i + 1] = h_data[i] + h_data[i + 1];
  }

  int diff = 0;

  for (int i = 0; i < n_elements; i++) {
    diff += h_data[i] - h_result[i];
  }

  printf("CPU verify result diff (GPUvsCPU) = %d\n", diff);
  bool bTestResult = false;

  if (diff == 0) bTestResult = true;

  StopWatchInterface *hTimer = NULL;
  sdkCreateTimer(&hTimer);
  sdkResetTimer(&hTimer);
  sdkStartTimer(&hTimer);

  for (int j = 0; j < 100; j++)
    for (int i = 0; i < n_elements - 1; i++) {
      h_data[i + 1] = h_data[i] + h_data[i + 1];
    }

  sdkStopTimer(&hTimer);
  double cput = sdkGetTimerValue(&hTimer);
  printf("CPU sum (naive) took %f ms\n", cput / 100);
  return bTestResult;
}

// this verifies the row scan result for synthetic data of all 1's
unsigned int verifyDataRowSums(unsigned int *h_image, int w, int h) {
  unsigned int diff = 0;

  for (int j = 0; j < h; j++) {
    for (int i = 0; i < w; i++) {
      int gold = i + 1;
      diff +=
          abs(static_cast<int>(gold) - static_cast<int>(h_image[j * w + i]));
    }
  }

  return diff;
}

bool shuffle_simple_test(int argc, char **argv) {
  int *h_data, *h_partial_sums, *h_result;
  int *d_data, *d_partial_sums;
  const int n_elements = 65536;
  int sz = sizeof(int) * n_elements;
  int cuda_device = 0;

  printf("Starting shfl_scan\n");

  // use command-line specified CUDA device, otherwise use device with highest
  // Gflops/s
  cuda_device = findCudaDevice(argc, (const char **)argv);

  hipDeviceProp_t deviceProp;
  checkCudaErrors(hipGetDevice(&cuda_device));

  checkCudaErrors(hipGetDeviceProperties(&deviceProp, cuda_device));

  printf("> Detected Compute SM %d.%d hardware with %d multi-processors\n",
         deviceProp.major, deviceProp.minor, deviceProp.multiProcessorCount);

  // __shfl intrinsic needs SM 3.0 or higher
  if (deviceProp.major < 3) {
    printf("> __shfl() intrinsic requires device SM 3.0+\n");
    printf("> Waiving test.\n");
    exit(EXIT_WAIVED);
  }

  checkCudaErrors(hipHostMalloc(reinterpret_cast<void **>(&h_data),
                                 sizeof(int) * n_elements));
  checkCudaErrors(hipHostMalloc(reinterpret_cast<void **>(&h_result),
                                 sizeof(int) * n_elements));

  // initialize data:
  printf("Computing Simple Sum test\n");
  printf("---------------------------------------------------\n");

  printf("Initialize test data [1, 1, 1...]\n");

  for (int i = 0; i < n_elements; i++) {
    h_data[i] = 1;
  }

  int blockSize = 256;
  int gridSize = n_elements / blockSize;
  int nWarps = blockSize / 32;
  int shmem_sz = nWarps * sizeof(int);
  int n_partialSums = n_elements / blockSize;
  int partial_sz = n_partialSums * sizeof(int);

  printf("Scan summation for %d elements, %d partial sums\n", n_elements,
         n_elements / blockSize);

  int p_blockSize = min(n_partialSums, blockSize);
  int p_gridSize = iDivUp(n_partialSums, p_blockSize);
  printf("Partial summing %d elements with %d blocks of size %d\n",
         n_partialSums, p_gridSize, p_blockSize);

  // initialize a timer
  hipEvent_t start, stop;
  checkCudaErrors(hipEventCreate(&start));
  checkCudaErrors(hipEventCreate(&stop));
  float et = 0;
  float inc = 0;

  checkCudaErrors(hipMalloc(reinterpret_cast<void **>(&d_data), sz));
  checkCudaErrors(
      hipMalloc(reinterpret_cast<void **>(&d_partial_sums), partial_sz));
  checkCudaErrors(hipMemset(d_partial_sums, 0, partial_sz));

  checkCudaErrors(
      hipHostMalloc(reinterpret_cast<void **>(&h_partial_sums), partial_sz));
  checkCudaErrors(hipMemcpy(d_data, h_data, sz, hipMemcpyHostToDevice));

  checkCudaErrors(hipEventRecord(start, 0));
  shfl_scan_test<<<gridSize, blockSize, shmem_sz>>>(d_data, 32, d_partial_sums);
  shfl_scan_test<<<p_gridSize, p_blockSize, shmem_sz>>>(d_partial_sums, 32);
  uniform_add<<<gridSize - 1, blockSize>>>(d_data + blockSize, d_partial_sums,
                                           n_elements);
  checkCudaErrors(hipEventRecord(stop, 0));
  checkCudaErrors(hipEventSynchronize(stop));
  checkCudaErrors(hipEventElapsedTime(&inc, start, stop));
  et += inc;

  checkCudaErrors(hipMemcpy(h_result, d_data, sz, hipMemcpyDeviceToHost));
  checkCudaErrors(hipMemcpy(h_partial_sums, d_partial_sums, partial_sz,
                             hipMemcpyDeviceToHost));

  printf("Test Sum: %d\n", h_partial_sums[n_partialSums - 1]);
  printf("Time (ms): %f\n", et);
  printf("%d elements scanned in %f ms -> %f MegaElements/s\n", n_elements, et,
         n_elements / (et / 1000.0f) / 1000000.0f);

  bool bTestResult = CPUverify(h_data, h_result, n_elements);

  checkCudaErrors(hipHostFree(h_data));
  checkCudaErrors(hipHostFree(h_result));
  checkCudaErrors(hipHostFree(h_partial_sums));
  checkCudaErrors(hipFree(d_data));
  checkCudaErrors(hipFree(d_partial_sums));

  return bTestResult;
}

// This function tests creation of an integral image using
// synthetic data, of size 1920x1080 pixels greyscale.
bool shuffle_integral_image_test() {
  char *d_data;
  unsigned int *h_image;
  unsigned int *d_integral_image;
  int w = 1920;
  int h = 1080;
  int n_elements = w * h;
  int sz = sizeof(unsigned int) * n_elements;

  printf("\nComputing Integral Image Test on size %d x %d synthetic data\n", w,
         h);
  printf("---------------------------------------------------\n");
  checkCudaErrors(hipHostMalloc(reinterpret_cast<void **>(&h_image), sz));
  // fill test "image" with synthetic 1's data
  memset(h_image, 0, sz);

  // each thread handles 16 values, use 1 block/row
  int blockSize = iDivUp(w, 16);
  // launch 1 block / row
  int gridSize = h;

  // Create a synthetic image for testing
  checkCudaErrors(hipMalloc(reinterpret_cast<void **>(&d_data), sz));
  checkCudaErrors(hipMalloc(reinterpret_cast<void **>(&d_integral_image),
                             n_elements * sizeof(int) * 4));
  checkCudaErrors(hipMemset(d_data, 1, sz));
  checkCudaErrors(hipMemset(d_integral_image, 0, sz));

  hipEvent_t start, stop;
  hipEventCreate(&start);
  hipEventCreate(&stop);
  float et = 0;
  unsigned int err;

  // Execute scan line prefix sum kernel, and time it
  hipEventRecord(start);
  shfl_intimage_rows<<<gridSize, blockSize>>>(
      reinterpret_cast<uint4 *>(d_data),
      reinterpret_cast<uint4 *>(d_integral_image));
  hipEventRecord(stop);
  checkCudaErrors(hipEventSynchronize(stop));
  checkCudaErrors(hipEventElapsedTime(&et, start, stop));
  printf("Method: Fast  Time (GPU Timer): %f ms ", et);

  // verify the scan line results
  checkCudaErrors(
      hipMemcpy(h_image, d_integral_image, sz, hipMemcpyDeviceToHost));
  err = verifyDataRowSums(h_image, w, h);
  printf("Diff = %d\n", err);

  // Execute column prefix sum kernel and time it
  dim3 blockSz(32, 8);
  dim3 testGrid(w / blockSz.x, 1);

  hipEventRecord(start);
  shfl_vertical_shfl<<<testGrid, blockSz>>>((unsigned int *)d_integral_image, w,
                                            h);
  hipEventRecord(stop);
  checkCudaErrors(hipEventSynchronize(stop));
  checkCudaErrors(hipEventElapsedTime(&et, start, stop));
  printf("Method: Vertical Scan  Time (GPU Timer): %f ms ", et);

  // Verify the column results
  checkCudaErrors(
      hipMemcpy(h_image, d_integral_image, sz, hipMemcpyDeviceToHost));
  printf("\n");

  int finalSum = h_image[w * h - 1];
  printf("CheckSum: %d, (expect %dx%d=%d)\n", finalSum, w, h, w * h);

  checkCudaErrors(hipFree(d_data));
  checkCudaErrors(hipFree(d_integral_image));
  checkCudaErrors(hipHostFree(h_image));
  // verify final sum: if the final value in the corner is the same as the size
  // of the buffer (all 1's) then the integral image was generated successfully
  return (finalSum == w * h) ? true : false;
}

int main(int argc, char *argv[]) {
  // Initialization.  The shuffle intrinsic is not available on SM < 3.0
  // so waive the test if the hardware is not present.
  int cuda_device = 0;

  printf("Starting shfl_scan\n");

  // use command-line specified CUDA device, otherwise use device with highest
  // Gflops/s
  cuda_device = findCudaDevice(argc, (const char **)argv);

  hipDeviceProp_t deviceProp;
  checkCudaErrors(hipGetDevice(&cuda_device));

  checkCudaErrors(hipGetDeviceProperties(&deviceProp, cuda_device));

  printf("> Detected Compute SM %d.%d hardware with %d multi-processors\n",
         deviceProp.major, deviceProp.minor, deviceProp.multiProcessorCount);

  // __shfl intrinsic needs SM 3.0 or higher
  if (deviceProp.major < 3) {
    printf("> __shfl() intrinsic requires device SM 3.0+\n");
    printf("> Waiving test.\n");
    exit(EXIT_WAIVED);
  }

  bool bTestResult = true;
  bool simpleTest = shuffle_simple_test(argc, argv);
  bool intTest = shuffle_integral_image_test();

  bTestResult = simpleTest & intTest;

  exit((bTestResult) ? EXIT_SUCCESS : EXIT_FAILURE);
}
