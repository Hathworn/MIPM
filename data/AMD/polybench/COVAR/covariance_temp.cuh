/**
 * covariance.cuh: This file is part of the PolyBench/GPU 1.0 test suite.
 *
 *
 * Contact: Scott Grauer-Gray <sgrauerg@gmail.com>
 * Will Killian <killian@udel.edu>
 * Louis-Noel Pouchet <pouchet@cse.ohio-state.edu>
 * Web address: http://www.cse.ohio-state.edu/~pouchet/software/polybench/GPU
 */

#ifndef COVARIANCE_CUH
# define COVARIANCE_CUH

/* Default to STANDARD_DATASET. */
# if !defined(MINI_DATASET) && !defined(SMALL_DATASET) && !defined(LARGE_DATASET) && !defined(EXTRALARGE_DATASET)
#  define STANDARD_DATASET
# endif

/* Do not define anything if the user manually defines the size. */
# if !defined(N)
/* Define the possible dataset sizes. */
#  ifdef MINI_DATASET
#define M 8192
#define N 8192
#  endif

#  ifdef SMALL_DATASET
#define M 8192
#define N 8192
#  endif

#  ifdef STANDARD_DATASET /* Default if unspecified. */
#define M 8192
#define N 8192
#  endif

#  ifdef LARGE_DATASET
#define M 8192
#define N 8192
#  endif

#  ifdef EXTRALARGE_DATASET
#define M 8192
#define N 8192
#  endif
# endif /* !N */

# define _PB_M POLYBENCH_LOOP_BOUND(M,m)
# define _PB_N POLYBENCH_LOOP_BOUND(N,n)

# ifndef DATA_TYPE
#  define DATA_TYPE float
#  define DATA_PRINTF_MODIFIER "%0.2lf "
# endif

/* Thread block dimensions for kernel 1*/
#define DIM_THREAD_BLOCK_KERNEL_1_X 4
#define DIM_THREAD_BLOCK_KERNEL_1_Y 64

/* Thread block dimensions for kernel 2*/
#define DIM_THREAD_BLOCK_KERNEL_2_X 4
#define DIM_THREAD_BLOCK_KERNEL_2_Y 64

/* Thread block dimensions for kernel 3*/
#define DIM_THREAD_BLOCK_KERNEL_3_X 4
#define DIM_THREAD_BLOCK_KERNEL_3_Y 64


#endif /* !COVARIANCE*/