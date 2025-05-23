/**
 * gramschmidt.cuh: This file is part of the PolyBench/GPU 1.0 test suite.
 *
 *
 * Contact: Scott Grauer-Gray <sgrauerg@gmail.com>
 * Will Killian <killian@udel.edu>
 * Louis-Noel Pouchet <pouchet@cse.ohio-state.edu>
 * Web address: http://www.cse.ohio-state.edu/~pouchet/software/polybench/GPU
 */

#ifndef GRAMSCHMIDT_H
# define GRAMSCHMIDT_H

/* Default to STANDARD_DATASET. */
# if !defined(MINI_DATASET) && !defined(SMALL_DATASET) && !defined(LARGE_DATASET) && !defined(EXTRALARGE_DATASET)
#  define STANDARD_DATASET
# endif

/* Do not define anything if the user manually defines the size. */
# if !defined(N)
/* Define the possible dataset sizes. */
#  ifdef MINI_DATASET
#define NI 512
#define NJ 512
#  endif

#  ifdef SMALL_DATASET
#define NI 640
#define NJ 640
#  endif

#  ifdef STANDARD_DATASET /* Default if unspecified. */
#define NI 768
#define NJ 768
#  endif

#  ifdef LARGE_DATASET
#define NI 896
#define NJ 896
#  endif

#  ifdef EXTRALARGE_DATASET
#define NI 1024
#define NJ 1024
#  endif
# endif /* !N */

# define _PB_NI POLYBENCH_LOOP_BOUND(NI,ni)
# define _PB_NJ POLYBENCH_LOOP_BOUND(NJ,nj)

# ifndef DATA_TYPE
#  define DATA_TYPE float
#  define DATA_PRINTF_MODIFIER "%0.2lf "
# endif

/* Thread block dimensions */
#define DIM_THREAD_BLOCK_X 256
#define DIM_THREAD_BLOCK_Y 1

/* DSP config */
#define THREAD_NUM 24
static int nthreads = THREAD_NUM;                 // 申请的线程组的线程数
static int clusterId = 0;                         // 申请的cluster的ID，有0 - 3，共四个加速簇
static const char *devProgram = "./gramschmidt.dev.dat"; // 设备端二进制文件的位置
static const char *kernel1 = "gramschmidt_kernel1";        // 核函数名称
static const char *kernel2 = "gramschmidt_kernel2";        // 核函数名称
static const char *kernel3 = "gramschmidt_kernel3";        // 核函数名称
static const char *kernel1_cache = "gramschmidt_kernel1_cache";        // 核函数名称
static const char *kernel2_cache = "gramschmidt_kernel2_cache";        // 核函数名称
static const char *kernel3_cache = "gramschmidt_kernel3_cache";        // 核函数名称

#endif /* !GRAMSCHMIDT*/