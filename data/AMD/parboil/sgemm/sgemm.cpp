#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>
#include <malloc.h>
#include <vector>
#include "parboil.h"
#include <iostream>
#include "hip/hip_runtime.h"
#include<fstream>
#include<iostream>
#include<vector>


#define CHECK_ERROR(errorMessage) {                                    \
  hipError_t err = hipGetLastError();                                    \
  if( hipSuccess != err) {                                                \
    fprintf(stderr, "Cuda error: %s in file '%s' in line %i : %s.\n",    \
	errorMessage, __FILE__, __LINE__, hipGetErrorString( err) );\
    exit(EXIT_FAILURE);                                                  \
  }                                                                        \
}

// Parameters of tile sizes
#define TILE_SZ 16 

__global__ void mysgemmNT( const float *A, int lda, const float *B, int ldb, float* C, int ldc, int k, float alpha, float beta )
{
    float c = 0.0f;
    int m = blockIdx.x * blockDim.x + threadIdx.x;
    int n = blockIdx.y * blockDim.y + threadIdx.y;
    for (int i = 0; i < k; ++i) {
	float a = A[m + i * lda]; 
	float b = B[n + i * ldb];
	c += a * b;
    }
    C[m+n*ldc] = C[m+n*ldc] * beta + alpha * c;
}

void basicSgemm( char transa, char transb, int m, int n, int k, float alpha, const float *A, int lda, const float *B, int ldb, float beta, float *C, int ldc )
{
  if ((transa != 'N') && (transa != 'n')) {
    std::cerr << "unsupported value of 'transa' in regtileSgemm()" << std::endl;
    return;
  }
  
  if ((transb != 'T') && (transb != 't')) {
    std::cerr << "unsupported value of 'transb' in regtileSgemm()" << std::endl;
    return;
  }
  
  // In this code we assume the matrix sizes are multiple of tile size
  if ((m%TILE_SZ) || (n%TILE_SZ)) {
    std::cerr << "unsupported size of matrix. m should be multiple of " << TILE_SZ
      << "; n should be multiple of " << TILE_SZ << std::endl;
  }


  dim3 grid( m/TILE_SZ, n/TILE_SZ ), threads( TILE_SZ, TILE_SZ );
  mysgemmNT<<<grid, threads>>>( A, lda, B, ldb, C, ldc, k, alpha, beta);
  CHECK_ERROR("mySgemm");

}



extern bool readColMajorMatrixFile(const char *fn, int &nr_row, int &nr_col, std::vector<float>&v);
extern bool writeColMajorMatrixFile(const char *fn, int, int, std::vector<float>&);

extern "C"
void computeGold(float *, const float*, const float*, unsigned int, unsigned int, unsigned int);

int
main (int argc, char *argv[]) {

  struct pb_Parameters *params;
  struct pb_TimerSet timers;

  float *dA, *dB, *dC;
  size_t A_sz, B_sz, C_sz;
  int matArow, matAcol;
  int matBrow, matBcol;
  std::vector<float> matA, matBT;

  pb_InitializeTimerSet(&timers);

  /* Read command line. Expect 3 inputs: A, B and B^T 
     in column-major layout*/
  params = pb_ReadParameters(&argc, argv);
  if ((params->inpFiles[0] == NULL) 
      || (params->inpFiles[1] == NULL)
      || (params->inpFiles[2] == NULL)
      || (params->inpFiles[3] != NULL))
    {
      fprintf(stderr, "Expecting three input filenames\n");
      exit(-1);
    }
 
  /* Read in data */
  pb_SwitchToTimer(&timers, pb_TimerID_IO);

  // load A
  readColMajorMatrixFile(params->inpFiles[0],
      matArow, matAcol, matA);
  std::cout << "load A" << std::endl;
  // copy A to device memory
  A_sz = matArow*matAcol*sizeof(float);

  // load B^T
  readColMajorMatrixFile(params->inpFiles[2],
      matBcol, matBrow, matBT);
  std::cout << "load B" << std::endl;

  pb_SwitchToTimer( &timers, pb_TimerID_COMPUTE );
  B_sz = matBrow*matBcol*sizeof(float);

  // allocate space for C
  C_sz = matArow*matBcol*sizeof(float);

  // CUDA memory allocation
  std::vector<float> matC(matArow*matBcol);
  hipMalloc((void**)&dA, A_sz);
  hipMalloc((void**)&dB, B_sz);
  hipMalloc((void**)&dC, C_sz);

  // Copy A and B^T into device memory
  pb_SwitchToTimer( &timers, pb_TimerID_COPY );
  hipMemcpy(dA, &matA.front(), A_sz, hipMemcpyHostToDevice); 
  hipMemcpy(dB, &matBT.front(), B_sz, hipMemcpyHostToDevice); 

  hipDeviceSynchronize();

  pb_SwitchToTimer( &timers, pb_TimerID_KERNEL );

  // Use standard sgemm interface
  basicSgemm('N', 'T', matArow, matBcol, matAcol, 1.0f, \
      dA, matArow, dB, matBcol, 0.0f, dC, matArow);

  hipDeviceSynchronize();

  if (params->outFile) {
    pb_SwitchToTimer( &timers, pb_TimerID_COPY );
    hipMemcpy(&matC.front(), dC, C_sz, hipMemcpyDeviceToHost);
    /* Write C to file */
    pb_SwitchToTimer(&timers, pb_TimerID_IO);
    writeColMajorMatrixFile(params->outFile,
	matArow, matBcol, matC); 
  }

  pb_SwitchToTimer(&timers, pb_TimerID_NONE);

  double GPUtime = pb_GetElapsedTime(&(timers.timers[pb_TimerID_KERNEL]));
  std::cout<< "GFLOPs = " << 2.* matArow * matBcol * matAcol/GPUtime/1e9 << std::endl;
  pb_PrintTimerSet(&timers);
  pb_FreeParameters(params);
  hipFree(dA);
  hipFree(dB);
  hipFree(dC);
  return 0;
}


bool readColMajorMatrixFile(const char *fn, int &nr_row, int &nr_col, std::vector<float>&v)
{
  std::cerr << "Opening file:"<< fn << std::endl;
  std::fstream f(fn, std::fstream::in);
  if ( !f.good() ) {
    return false;
  }

  // Read # of rows and cols
  f >> nr_row;
  f >> nr_col;

  float data;
  std::cerr << "Matrix dimension: "<<nr_row<<"x"<<nr_col<<std::endl;
  std::cerr << v.size() <<  std::endl;
  while (f.good() ) {
    f >> data;
    v.push_back(data);
  }
  v.pop_back(); // remove the duplicated last element
  std::cerr << v.size() <<  std::endl;
  return true;
}

bool writeColMajorMatrixFile(const char *fn, int nr_row, int nr_col, std::vector<float>&v)
{
  std::cerr << "Opening file:"<< fn << " for write." << std::endl;
  std::fstream f(fn, std::fstream::out);
  if ( !f.good() ) {
    return false;
  }

  // Read # of rows and cols
  f << nr_row << " "<<nr_col<<" ";

  float data;
  std::cerr << "Matrix dimension: "<<nr_row<<"x"<<nr_col<<std::endl;
  std::cerr << v.size() <<  std::endl;
  for (int i = 0; i < v.size(); ++i) {
    f << v[i] << ' ';
  }
  f << "\n";
  return true;

}
