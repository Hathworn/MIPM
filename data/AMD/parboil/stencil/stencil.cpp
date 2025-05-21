#include "parboil.h"
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <endian.h>
#include "hip/hip_runtime.h"
#include <malloc.h>

#include <inttypes.h>

#if __BYTE_ORDER != __LITTLE_ENDIAN
# error "File I/O is not implemented for this system: wrong endianness."
#endif


void outputData(char* fName, float *h_A0,int nx,int ny,int nz)
{
  FILE* fid = fopen(fName, "w");
  uint32_t tmp32;
  if (fid == NULL)
    {
      fprintf(stderr, "Cannot open output file\n");
      exit(-1);
    }
  tmp32 = nx*ny*nz;
  fwrite(&tmp32, sizeof(uint32_t), 1, fid);
  fwrite(h_A0, sizeof(float), tmp32, fid);

  fclose (fid);
  return;
}
void outputData(char* fName, float *h_A0,int nx,int ny,int nz);
#ifndef _COMMON_H_
#define _COMMON_H_
#define Index3D(_nx,_ny,_i,_j,_k) ((_i)+_nx*((_j)+_ny*(_k)))
#endif

#define CUERR { hipError_t err; \
  if ((err = hipGetLastError()) != hipSuccess) { \
  printf("CUDA error: %s, line %d\n", hipGetErrorString(err), __LINE__); \
  return -1; }}

//#include "hip/hip_runtime.h"
__global__ void naive_kernel(float c0,float c1,float *A0,float *Anext, int nx, int ny, int nz)
{
    int i = threadIdx.x;
    int j = blockIdx.x+1;
    int k = blockIdx.y+1;
	if(i>0)
	{
    Anext[Index3D (nx, ny, i, j, k)] = 
	(A0[Index3D (nx, ny, i, j, k + 1)] +
	A0[Index3D (nx, ny, i, j, k - 1)] +
	A0[Index3D (nx, ny, i, j + 1, k)] +
	A0[Index3D (nx, ny, i, j - 1, k)] +
	A0[Index3D (nx, ny, i + 1, j, k)] +
	A0[Index3D (nx, ny, i - 1, j, k)])*c1
	- A0[Index3D (nx, ny, i, j, k)]*c0;
	}
}


static int read_data(float *A0, int nx,int ny,int nz,FILE *fp) 
{	
	int s=0;
	for(int i=0;i<nz;i++)
	{
		for(int j=0;j<ny;j++)
		{
			for(int k=0;k<nx;k++)
			{
                                fread(A0+s,sizeof(float),1,fp);
				s++;
			}
		}
	}
	return 0;
}

int main(int argc, char** argv) {
	struct pb_TimerSet timers;
	struct pb_Parameters *parameters;
	

	
	printf("CUDA accelerated 7 points stencil codes****\n");
	printf("Original version by Li-Wen Chang <lchang20@illinois.edu> and I-Jui Sung<sung10@illinois.edu>\n");
	printf("This version maintained by Chris Rodrigues  ***********\n");
	parameters = pb_ReadParameters(&argc, argv);

	pb_InitializeTimerSet(&timers);
	pb_SwitchToTimer(&timers, pb_TimerID_COMPUTE);
	
	//declaration
	int nx,ny,nz;
	int size;
  int iteration;
	float c0=1.0f/6.0f;
	float c1=1.0f/6.0f/6.0f;

	if (argc<5) 
    {
      printf("Usage: probe nx ny nz tx ty t\n"
	     "nx: the grid size x\n"
	     "ny: the grid size y\n"
	     "nz: the grid size z\n"
		  "t: the iteration time\n");
      return -1;
    }

	nx = atoi(argv[1]);
	if (nx<1)
		return -1;
	ny = atoi(argv[2]);
	if (ny<1)
		return -1;
	nz = atoi(argv[3]);
	if (nz<1)
		return -1;
	iteration = atoi(argv[4]);
	if(iteration<1)
		return -1;
std::cerr << "start malloc" << std::endl;
	
	//host data
	float *h_A0;
	float *h_Anext;
	//device
	float *d_A0;
	float *d_Anext;

	
	size=nx*ny*nz;
	
  h_A0=(float*)malloc(sizeof(float)*size);
  h_Anext=(float*)malloc(sizeof(float)*size);
  pb_SwitchToTimer(&timers, pb_TimerID_IO);
  FILE *fp = fopen(parameters->inpFiles[0], "rb");
  read_data(h_A0, nx,ny,nz,fp);
  fclose(fp);
std::cerr << "start malloc" << std::endl;	
	pb_SwitchToTimer(&timers, pb_TimerID_COPY);
	//memory allocation
	hipMalloc((void **)&d_A0, size*sizeof(float));
	hipMalloc((void **)&d_Anext, size*sizeof(float));
	hipMemset(d_Anext,0,size*sizeof(float));

	//memory copy
	hipMemcpy(d_A0, h_A0, size*sizeof(float), hipMemcpyHostToDevice);
  hipMemcpy(d_Anext, d_A0, size*sizeof(float), hipMemcpyDeviceToDevice);

	
	hipDeviceSynchronize();
	pb_SwitchToTimer(&timers, pb_TimerID_COMPUTE);

	//only use 1D thread block
	dim3 block (nx-1, 1, 1);
	dim3 grid (ny-2, nz-2,1);

	//main execution
	pb_SwitchToTimer(&timers, pb_TimerID_KERNEL);
	for(int t=0;t<iteration;t++)
	{
		naive_kernel<<<grid, block>>>(c0,c1, d_A0, d_Anext, nx, ny,  nz);
    float *d_temp = d_A0;
    d_A0 = d_Anext;
    d_Anext = d_temp;

	}
  CUERR // check and clear any existing errorsi
  float *d_temp = d_A0;
  d_A0 = d_Anext;
  d_Anext = d_temp;
	
	hipDeviceSynchronize();
	pb_SwitchToTimer(&timers, pb_TimerID_COPY);
	hipMemcpy(h_Anext, d_Anext,size*sizeof(float), hipMemcpyDeviceToHost);
	hipDeviceSynchronize();
	hipFree(d_A0);
  hipFree(d_Anext);
 
	if (parameters->outFile) {
		 pb_SwitchToTimer(&timers, pb_TimerID_IO);
		outputData(parameters->outFile,h_Anext,nx,ny,nz);
		
	}
	pb_SwitchToTimer(&timers, pb_TimerID_COMPUTE);
		
	free (h_A0);
	free (h_Anext);
	pb_SwitchToTimer(&timers, pb_TimerID_NONE);

	pb_PrintTimerSet(&timers);
	pb_FreeParameters(parameters);

	return 0;

}
