#ifndef _FDTD3D_H_
#define _FDTD3D_H_
#define k_dim_min 96
#define k_dim_max 376
#define k_dim_qa 248

#define k_radius_min 4
#define k_radius_max 4
#define k_radius_default 4


#define k_timesteps_min 1
#define k_timesteps_max 10
#define k_timesteps_default 5

#endif

#include <iostream>
#include <iomanip>

//#include "FDTD3dReference.h"
//#include "FDTD3dGPU.h"

#include <helper_functions.h>
#include <helper_cuda.h>
#include <math.h>
#include <assert.h>
//#include "FDTD3dGPU.h"
#include <hip/hip_runtime.h>
#include <hip/hip_cooperative_groups.h>
#include <hip/hip_runtime_api.h>

#ifndef _FDTD3DGPU_H_
#define _FDTD3DGPU_H_

#include <cstddef>
#if defined(WIN32) || defined(_WIN32) || defined(WIN64) || \
    defined(_WIN64) && defined(_MSC_VER)
typedef unsigned __int64 memsize_t;
#else
#include <stdint.h>
typedef uint64_t memsize_t;
#endif

#define k_blockDimX 32
#define k_blockDimMaxY 16
#define k_blockSizeMin 128
#define k_blockSizeMax (k_blockDimX * k_blockDimMaxY)

bool getTargetDeviceGlobalMemSize(memsize_t *result, const int argc,
                                  const char **argv);
bool fdtdGPU(float *output, const float *input, const float *coeff,
             const int dimx, const int dimy, const int dimz, const int radius,
             const int timesteps, const int argc, const char **argv);

#endif

#ifndef CLAMP
#define CLAMP(a, min, max) (MIN(max, MAX(a, min)))
#endif

 namespace cg = cooperative_groups;
 
 // Note: If you change the RADIUS, you should also change the unrolling below
 #define RADIUS 4
 
 __constant__ float stencil[RADIUS + 1];
 
 __global__ void FiniteDifferencesKernel(float *output, const float *input,
                                         const int dimx, const int dimy,
                                         const int dimz) {
   bool validr = true;
   bool validw = true;
   const int gtidx = blockIdx.x * blockDim.x + threadIdx.x;
   const int gtidy = blockIdx.y * blockDim.y + threadIdx.y;
   const int ltidx = threadIdx.x;
   const int ltidy = threadIdx.y;
   const int workx = blockDim.x;
   const int worky = blockDim.y;
   // Handle to thread block group
   cg::thread_block cta = cg::this_thread_block();
   __shared__ float tile[k_blockDimMaxY + 2 * RADIUS][k_blockDimX + 2 * RADIUS];
 
   const int stride_y = dimx + 2 * RADIUS;
   const int stride_z = stride_y * (dimy + 2 * RADIUS);
 
   int inputIndex = 0;
   int outputIndex = 0;
 
   // Advance inputIndex to start of inner volume
   inputIndex += RADIUS * stride_y + RADIUS;
 
   // Advance inputIndex to target element
   inputIndex += gtidy * stride_y + gtidx;
 
   float infront[RADIUS];
   float behind[RADIUS];
   float current;
 
   const int tx = ltidx + RADIUS;
   const int ty = ltidy + RADIUS;
 
   // Check in bounds
   if ((gtidx >= dimx + RADIUS) || (gtidy >= dimy + RADIUS)) validr = false;
 
   if ((gtidx >= dimx) || (gtidy >= dimy)) validw = false;
 
   // Preload the "infront" and "behind" data
   for (int i = RADIUS - 2; i >= 0; i--) {
     if (validr) behind[i] = input[inputIndex];
 
     inputIndex += stride_z;
   }
 
   if (validr) current = input[inputIndex];
 
   outputIndex = inputIndex;
   inputIndex += stride_z;
 
   for (int i = 0; i < RADIUS; i++) {
     if (validr) infront[i] = input[inputIndex];
 
     inputIndex += stride_z;
   }
 
   // Step through the xy-planes
 #pragma unroll 9
 
   for (int iz = 0; iz < dimz; iz++) {
     // Advance the slice (move the thread-front)
     for (int i = RADIUS - 1; i > 0; i--) behind[i] = behind[i - 1];
 
     behind[0] = current;
     current = infront[0];
 #pragma unroll 4
 
     for (int i = 0; i < RADIUS - 1; i++) infront[i] = infront[i + 1];
 
     if (validr) infront[RADIUS - 1] = input[inputIndex];
 
     inputIndex += stride_z;
     outputIndex += stride_z;
     cg::sync(cta);
 
     // Note that for the work items on the boundary of the problem, the
     // supplied index when reading the halo (below) may wrap to the
     // previous/next row or even the previous/next xy-plane. This is
     // acceptable since a) we disable the output write for these work
     // items and b) there is at least one xy-plane before/after the
     // current plane, so the access will be within bounds.
 
     // Update the data slice in the local tile
     // Halo above & below
     if (ltidy < RADIUS) {
       tile[ltidy][tx] = input[outputIndex - RADIUS * stride_y];
       tile[ltidy + worky + RADIUS][tx] = input[outputIndex + worky * stride_y];
     }
 
     // Halo left & right
     if (ltidx < RADIUS) {
       tile[ty][ltidx] = input[outputIndex - RADIUS];
       tile[ty][ltidx + workx + RADIUS] = input[outputIndex + workx];
     }
 
     tile[ty][tx] = current;
     cg::sync(cta);
 
     // Compute the output value
     float value = stencil[0] * current;
 #pragma unroll 4
 
     for (int i = 1; i <= RADIUS; i++) {
       value +=
           stencil[i] * (infront[i - 1] + behind[i - 1] + tile[ty - i][tx] +
                         tile[ty + i][tx] + tile[ty][tx - i] + tile[ty][tx + i]);
     }
 
     // Store the output value
     if (validw) output[outputIndex] = value;
   }
 }
 

 bool getTargetDeviceGlobalMemSize(memsize_t *result, const int argc,
                                   const char **argv) {
   int deviceCount = 0;
   int targetDevice = 0;
   size_t memsize = 0;
 
   // Get the number of CUDA enabled GPU devices
   printf(" hipGetDeviceCount\n");
   checkCudaErrors(hipGetDeviceCount(&deviceCount));
 
   // Select target device (device 0 by default)
   targetDevice = findCudaDevice(argc, (const char **)argv);
 
   // Query target device for maximum memory allocation
   printf(" hipGetDeviceProperties\n");
   struct hipDeviceProp_t deviceProp;
   checkCudaErrors(hipGetDeviceProperties(&deviceProp, targetDevice));
 
   memsize = deviceProp.totalGlobalMem;
 
   // Save the result
   *result = (memsize_t)memsize;
   return true;
 }
 
 bool fdtdGPU(float *output, const float *input, const float *coeff,
              const int dimx, const int dimy, const int dimz, const int radius,
              const int timesteps, const int argc, const char **argv) {
   const int outerDimx = dimx + 2 * radius;
   const int outerDimy = dimy + 2 * radius;
   const int outerDimz = dimz + 2 * radius;
   const size_t volumeSize = outerDimx * outerDimy * outerDimz;
   int deviceCount = 0;
   int targetDevice = 0;
   float *bufferOut = 0;
   float *bufferIn = 0;
   dim3 dimBlock;
   dim3 dimGrid;
 
   // Ensure that the inner data starts on a 128B boundary
   const int padding = (128 / sizeof(float)) - radius;
   const size_t paddedVolumeSize = volumeSize + padding;
 
 #ifdef GPU_PROFILING
   hipEvent_t profileStart = 0;
   hipEvent_t profileEnd = 0;
   const int profileTimesteps = timesteps - 1;
 
   if (profileTimesteps < 1) {
     printf(
         " cannot profile with fewer than two timesteps (timesteps=%d), "
         "profiling is disabled.\n",
         timesteps);
   }
 
 #endif
 
   // Check the radius is valid
   if (radius != RADIUS) {
     printf("radius is invalid, must be %d - see kernel for details.\n", RADIUS);
     exit(EXIT_FAILURE);
   }
 
   // Get the number of CUDA enabled GPU devices
   checkCudaErrors(hipGetDeviceCount(&deviceCount));
 
   // Select target device (device 0 by default)
   targetDevice = findCudaDevice(argc, (const char **)argv);
 
   checkCudaErrors(hipSetDevice(targetDevice));
 
   // Allocate memory buffers
   checkCudaErrors(
       hipMalloc((void **)&bufferOut, paddedVolumeSize * sizeof(float)));
   checkCudaErrors(
       hipMalloc((void **)&bufferIn, paddedVolumeSize * sizeof(float)));
 
   // Check for a command-line specified block size
   int userBlockSize;
 
   if (checkCmdLineFlag(argc, (const char **)argv, "block-size")) {
     userBlockSize = getCmdLineArgumentInt(argc, argv, "block-size");
     // Constrain to a multiple of k_blockDimX
     userBlockSize = (userBlockSize / k_blockDimX * k_blockDimX);
 
     // Constrain within allowed bounds
     userBlockSize = MIN(MAX(userBlockSize, k_blockSizeMin), k_blockSizeMax);
   } else {
     userBlockSize = k_blockSizeMax;
   }
 
   // Check the device limit on the number of threads
   struct hipFuncAttributes funcAttrib;
   checkCudaErrors(hipFuncGetAttributes(&funcAttrib, (const void*)FiniteDifferencesKernel));
 
   userBlockSize = MIN(userBlockSize, funcAttrib.maxThreadsPerBlock);
 
   // Set the block size
   dimBlock.x = k_blockDimX;
   // Visual Studio 2005 does not like std::min
   //    dimBlock.y = std::min<size_t>(userBlockSize / k_blockDimX,
   //    (size_t)k_blockDimMaxY);
   dimBlock.y = ((userBlockSize / k_blockDimX) < (size_t)k_blockDimMaxY)
                    ? (userBlockSize / k_blockDimX)
                    : (size_t)k_blockDimMaxY;
   dimGrid.x = (unsigned int)ceil((float)dimx / dimBlock.x);
   dimGrid.y = (unsigned int)ceil((float)dimy / dimBlock.y);
   printf(" set block size to %dx%d\n", dimBlock.x, dimBlock.y);
   printf(" set grid size to %dx%d\n", dimGrid.x, dimGrid.y);
 
   // Check the block size is valid
   if (dimBlock.x < RADIUS || dimBlock.y < RADIUS) {
     printf("invalid block size, x (%d) and y (%d) must be >= radius (%d).\n",
            dimBlock.x, dimBlock.y, RADIUS);
     exit(EXIT_FAILURE);
   }
 
   // Copy the input to the device input buffer
   checkCudaErrors(hipMemcpy(bufferIn + padding, input,
                              volumeSize * sizeof(float),
                              hipMemcpyHostToDevice));
 
   // Copy the input to the device output buffer (actually only need the halo)
   checkCudaErrors(hipMemcpy(bufferOut + padding, input,
                              volumeSize * sizeof(float),
                              hipMemcpyHostToDevice));
 
   // Copy the coefficients to the device coefficient buffer
   checkCudaErrors(
       hipMemcpyToSymbol(HIP_SYMBOL(stencil), (void *)coeff, (radius + 1) * sizeof(float)));
 
 #ifdef GPU_PROFILING
 
   // Create the events
   checkCudaErrors(hipEventCreate(&profileStart));
   checkCudaErrors(hipEventCreate(&profileEnd));
 
 #endif
 
   // Execute the FDTD
   float *bufferSrc = bufferIn + padding;
   float *bufferDst = bufferOut + padding;
   printf(" GPU FDTD loop\n");
 
 #ifdef GPU_PROFILING
   // Enqueue start event
   checkCudaErrors(hipEventRecord(profileStart, 0));
 #endif
 
   for (int it = 0; it < timesteps; it++) {
     printf("\tt = %d ", it);
 
     // Launch the kernel
     printf("launch kernel\n");
     FiniteDifferencesKernel<<<dimGrid, dimBlock>>>(bufferDst, bufferSrc, dimx,
                                                    dimy, dimz);
 
     // Toggle the buffers
     // Visual Studio 2005 does not like std::swap
     //    std::swap<float *>(bufferSrc, bufferDst);
     float *tmp = bufferDst;
     bufferDst = bufferSrc;
     bufferSrc = tmp;
   }
 
   printf("\n");
 
 #ifdef GPU_PROFILING
   // Enqueue end event
   checkCudaErrors(hipEventRecord(profileEnd, 0));
 #endif
 
   // Wait for the kernel to complete
   checkCudaErrors(hipDeviceSynchronize());
 
   // Read the result back, result is in bufferSrc (after final toggle)
   checkCudaErrors(hipMemcpy(output, bufferSrc, volumeSize * sizeof(float),
                              hipMemcpyDeviceToHost));
 
 // Report time
 #ifdef GPU_PROFILING
   float elapsedTimeMS = 0;
 
   if (profileTimesteps > 0) {
     checkCudaErrors(
         hipEventElapsedTime(&elapsedTimeMS, profileStart, profileEnd));
   }
 
   if (profileTimesteps > 0) {
     // Convert milliseconds to seconds
     double elapsedTime = elapsedTimeMS * 1.0e-3;
     double avgElapsedTime = elapsedTime / (double)profileTimesteps;
     // Determine number of computations per timestep
     size_t pointsComputed = dimx * dimy * dimz;
     // Determine throughput
     double throughputM = 1.0e-6 * (double)pointsComputed / avgElapsedTime;
     printf(
         "FDTD3d, Throughput = %.4f MPoints/s, Time = %.5f s, Size = %u Points, "
         "NumDevsUsed = %u, Blocksize = %u\n",
         throughputM, avgElapsedTime, pointsComputed, 1,
         dimBlock.x * dimBlock.y);
   }
 
 #endif
 
   // Cleanup
   if (bufferIn) {
     checkCudaErrors(hipFree(bufferIn));
   }
 
   if (bufferOut) {
     checkCudaErrors(hipFree(bufferOut));
   }
 
 #ifdef GPU_PROFILING
 
   if (profileStart) {
     checkCudaErrors(hipEventDestroy(profileStart));
   }
 
   if (profileEnd) {
     checkCudaErrors(hipEventDestroy(profileEnd));
   }
 
 #endif
   return true;
 }
 

void generateRandomData(float *data, const int dimx, const int dimy,
                        const int dimz, const float lowerBound,
                        const float upperBound) {
  srand(0);

  for (int iz = 0; iz < dimz; iz++) {
    for (int iy = 0; iy < dimy; iy++) {
      for (int ix = 0; ix < dimx; ix++) {
        *data = (float)(lowerBound +
                        ((float)rand() / (float)RAND_MAX) *
                            (upperBound - lowerBound));
        ++data;
      }
    }
  }
}

void generatePatternData(float *data, const int dimx, const int dimy,
                         const int dimz, const float lowerBound,
                         const float upperBound) {
  for (int iz = 0; iz < dimz; iz++) {
    for (int iy = 0; iy < dimy; iy++) {
      for (int ix = 0; ix < dimx; ix++) {
        *data = (float)(lowerBound +
                        ((float)iz / (float)dimz) * (upperBound - lowerBound));
        ++data;
      }
    }
  }
}

bool fdtdReference(float *output, const float *input, const float *coeff,
                   const int dimx, const int dimy, const int dimz,
                   const int radius, const int timesteps) {
  const int outerDimx = dimx + 2 * radius;
  const int outerDimy = dimy + 2 * radius;
  const int outerDimz = dimz + 2 * radius;
  const size_t volumeSize = outerDimx * outerDimy * outerDimz;
  const int stride_y = outerDimx;
  const int stride_z = stride_y * outerDimy;
  float *intermediate = 0;
  const float *bufsrc = 0;
  float *bufdst = 0;
  float *bufdstnext = 0;

  // Allocate temporary buffer
  printf(" calloc intermediate\n");
  intermediate = (float *)calloc(volumeSize, sizeof(float));

  // Decide which buffer to use first (result should end up in output)
  if ((timesteps % 2) == 0) {
    bufsrc = input;
    bufdst = intermediate;
    bufdstnext = output;
  } else {
    bufsrc = input;
    bufdst = output;
    bufdstnext = intermediate;
  }

  // Run the FDTD (naive method)
  printf(" Host FDTD loop\n");

  for (int it = 0; it < timesteps; it++) {
    printf("\tt = %d\n", it);
    const float *src = bufsrc;
    float *dst = bufdst;

    for (int iz = -radius; iz < dimz + radius; iz++) {
      for (int iy = -radius; iy < dimy + radius; iy++) {
        for (int ix = -radius; ix < dimx + radius; ix++) {
          if (ix >= 0 && ix < dimx && iy >= 0 && iy < dimy && iz >= 0 &&
              iz < dimz) {
            float value = (*src) * coeff[0];

            for (int ir = 1; ir <= radius; ir++) {
              value += coeff[ir] * (*(src + ir) + *(src - ir));  // horizontal
              value += coeff[ir] * (*(src + ir * stride_y) +
                                    *(src - ir * stride_y));  // vertical
              value +=
                  coeff[ir] * (*(src + ir * stride_z) +
                               *(src - ir * stride_z));  // in front & behind
            }

            *dst = value;
          } else {
            *dst = *src;
          }

          ++dst;
          ++src;
        }
      }
    }

    // Rotate buffers
    float *tmp = bufdst;
    bufdst = bufdstnext;
    bufdstnext = tmp;
    bufsrc = (const float *)tmp;
  }

  printf("\n");

  if (intermediate) free(intermediate);

  return true;
}

bool compareData(const float *output, const float *reference, const int dimx,
                 const int dimy, const int dimz, const int radius,
                 const float tolerance) {
  for (int iz = -radius; iz < dimz + radius; iz++) {
    for (int iy = -radius; iy < dimy + radius; iy++) {
      for (int ix = -radius; ix < dimx + radius; ix++) {
        if (ix >= 0 && ix < dimx && iy >= 0 && iy < dimy && iz >= 0 &&
            iz < dimz) {
          // Determine the absolute difference
          float difference = fabs(*reference - *output);
          float error;

          // Determine the relative error
          if (*reference != 0)
            error = difference / *reference;
          else
            error = difference;

          // Check the error is within the tolerance
          if (error > tolerance) {
            printf("Data error at point (%d,%d,%d)\t%f instead of %f\n", ix, iy,
                   iz, *output, *reference);
            return false;
          }
        }

        ++output;
        ++reference;
      }
    }
  }

  return true;
}

//// Name of the log file
// const char *printfFile = "FDTD3d.txt";

// Forward declarations
bool runTest(int argc, const char **argv);
void showHelp(const int argc, const char **argv);

int main(int argc, char **argv) {
  bool bTestResult = false;
  // Start the log
  printf("%s Starting...\n\n", argv[0]);

  // Check help flag
  if (checkCmdLineFlag(argc, (const char **)argv, "help")) {
    printf("Displaying help on console\n");
    showHelp(argc, (const char **)argv);
    bTestResult = true;
  } else {
    // Execute
    bTestResult = runTest(argc, (const char **)argv);
  }

  // Finish
  exit(bTestResult ? EXIT_SUCCESS : EXIT_FAILURE);
}

void showHelp(const int argc, const char **argv) {
  if (argc > 0) std::cout << std::endl << argv[0] << std::endl;

  std::cout << std::endl << "Syntax:" << std::endl;
  std::cout << std::left;
  std::cout << "    " << std::setw(20) << "--device=<device>"
            << "Specify device to use for execution" << std::endl;
  std::cout << "    " << std::setw(20) << "--dimx=<N>"
            << "Specify number of elements in x direction (excluding halo)"
            << std::endl;
  std::cout << "    " << std::setw(20) << "--dimy=<N>"
            << "Specify number of elements in y direction (excluding halo)"
            << std::endl;
  std::cout << "    " << std::setw(20) << "--dimz=<N>"
            << "Specify number of elements in z direction (excluding halo)"
            << std::endl;
  std::cout << "    " << std::setw(20) << "--radius=<N>"
            << "Specify radius of stencil" << std::endl;
  std::cout << "    " << std::setw(20) << "--timesteps=<N>"
            << "Specify number of timesteps" << std::endl;
  std::cout << "    " << std::setw(20) << "--block-size=<N>"
            << "Specify number of threads per block" << std::endl;
  std::cout << std::endl;
  std::cout << "    " << std::setw(20) << "--noprompt"
            << "Skip prompt before exit" << std::endl;
  std::cout << std::endl;
}

bool runTest(int argc, const char **argv) {
  float *host_output;
  float *device_output;
  float *input;
  float *coeff;

  int defaultDim;
  int dimx;
  int dimy;
  int dimz;
  int outerDimx;
  int outerDimy;
  int outerDimz;
  int radius;
  int timesteps;
  size_t volumeSize;
  memsize_t memsize;

  const float lowerBound = 0.0f;
  const float upperBound = 1.0f;

  // Determine default dimensions
  printf("Set-up, based upon target device GMEM size...\n");
  // Get the memory size of the target device
  printf(" getTargetDeviceGlobalMemSize\n");
  getTargetDeviceGlobalMemSize(&memsize, argc, argv);

  // We can never use all the memory so to keep things simple we aim to
  // use around half the total memory
  memsize /= 2;

  // Most of our memory use is taken up by the input and output buffers -
  // two buffers of equal size - and for simplicity the volume is a cube:
  //   dim = floor( (N/2)^(1/3) )
  defaultDim = (int)floor(pow((memsize / (2.0 * sizeof(float))), 1.0 / 3.0));

  // By default, make the volume edge size an integer multiple of 128B to
  // improve performance by coalescing memory accesses, in a real
  // application it would make sense to pad the lines accordingly
  int roundTarget = 128 / sizeof(float);
  defaultDim = defaultDim / roundTarget * roundTarget;
  defaultDim -= k_radius_default * 2;

  // Check dimension is valid
  if (defaultDim < k_dim_min) {
    printf(
        "insufficient device memory (maximum volume on device is %d, must be "
        "between %d and %d).\n",
        defaultDim, k_dim_min, k_dim_max);
    exit(EXIT_FAILURE);
  } else if (defaultDim > k_dim_max) {
    defaultDim = k_dim_max;
  }

  // For QA testing, override default volume size
  if (checkCmdLineFlag(argc, argv, "qatest")) {
    defaultDim = MIN(defaultDim, k_dim_qa);
  }

  // set default dim
  dimx = defaultDim;
  dimy = defaultDim;
  dimz = defaultDim;
  radius = k_radius_default;
  timesteps = k_timesteps_default;

  // Parse command line arguments
  if (checkCmdLineFlag(argc, argv, "dimx")) {
    dimx =
        CLAMP(getCmdLineArgumentInt(argc, argv, "dimx"), k_dim_min, k_dim_max);
  }

  if (checkCmdLineFlag(argc, argv, "dimy")) {
    dimy =
        CLAMP(getCmdLineArgumentInt(argc, argv, "dimy"), k_dim_min, k_dim_max);
  }

  if (checkCmdLineFlag(argc, argv, "dimz")) {
    dimz =
        CLAMP(getCmdLineArgumentInt(argc, argv, "dimz"), k_dim_min, k_dim_max);
  }

  if (checkCmdLineFlag(argc, argv, "radius")) {
    radius = CLAMP(getCmdLineArgumentInt(argc, argv, "radius"), k_radius_min,
                   k_radius_max);
  }

  if (checkCmdLineFlag(argc, argv, "timesteps")) {
    timesteps = CLAMP(getCmdLineArgumentInt(argc, argv, "timesteps"),
                      k_timesteps_min, k_timesteps_max);
  }

  // Determine volume size
  outerDimx = dimx + 2 * radius;
  outerDimy = dimy + 2 * radius;
  outerDimz = dimz + 2 * radius;
  volumeSize = outerDimx * outerDimy * outerDimz;

  // Allocate memory
  host_output = (float *)calloc(volumeSize, sizeof(float));
  input = (float *)malloc(volumeSize * sizeof(float));
  coeff = (float *)malloc((radius + 1) * sizeof(float));

  // Create coefficients
  for (int i = 0; i <= radius; i++) {
    coeff[i] = 0.1f;
  }

  // Generate data
  printf(" generateRandomData\n\n");
  generateRandomData(input, outerDimx, outerDimy, outerDimz, lowerBound,
                     upperBound);
  printf(
      "FDTD on %d x %d x %d volume with symmetric filter radius %d for %d "
      "timesteps...\n\n",
      dimx, dimy, dimz, radius, timesteps);

  // Execute on the host
  printf("fdtdReference...\n");
  fdtdReference(host_output, input, coeff, dimx, dimy, dimz, radius, timesteps);
  printf("fdtdReference complete\n");

  // Allocate memory
  device_output = (float *)calloc(volumeSize, sizeof(float));

  // Execute on the device
  printf("fdtdGPU...\n");
  fdtdGPU(device_output, input, coeff, dimx, dimy, dimz, radius, timesteps,
          argc, argv);
  printf("fdtdGPU complete\n");

  // Compare the results
  float tolerance = 0.0001f;
  printf("\nCompareData (tolerance %f)...\n", tolerance);
  return compareData(device_output, host_output, dimx, dimy, dimz, radius,
                     tolerance);
}
