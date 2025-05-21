#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <hip/hip_runtime.h>
#include "parboil.h"
#include "iostream"

#ifndef _UDTYPES_H__
#define _UDTYPES_H__
#define PI 3.14159265359
#define BLOCKSIZE 512
#define CUERR \
  do { \
    hipError_t err; \
    if ((err = hipGetLastError()) != hipSuccess) { \
      printf("CUDA error: %s, line %d\n", hipGetErrorString(err), __LINE__); \
      return 0; \
    } \
  } while (0)


typedef struct{
  int numSamples;
  int aquisitionMatrixSize[3];
  int reconstructionMatrixSize[3];
  float kMax[3];
  int gridSize[3];
  float oversample;
  float kernelWidth;
  int binsize;
  int useLUT;
}parameters;

typedef struct{
  float real;
  float imag;
  float kX;
  float kY;
  float kZ;
  float sdc;
} ReconstructionSample;

typedef struct{
  float real;
  float imag;
} cmplx;

#endif

void sort (int numElems, unsigned int maxValue, unsigned int* &dkeys, unsigned int* &dvalues);

#define UINT32_MAX 4294967295
#define BITS 4
#define LNB 4

#define SORT_BS 256

#define CONFLICT_FREE_OFFSET(index) ((index) >> LNB + (index) >> (2*LNB))
#define BLOCK_P_OFFSET (4*SORT_BS+1+(4*SORT_BS+1)/16+(4*SORT_BS+1)/64)

__device__ void scan (unsigned int s_data[BLOCK_P_OFFSET]){
  unsigned int thid = threadIdx.x;

  __syncthreads();

  s_data[2*thid+1+CONFLICT_FREE_OFFSET(2*thid+1)] += s_data[2*thid+CONFLICT_FREE_OFFSET(2*thid)];
  s_data[2*(blockDim.x+thid)+1+CONFLICT_FREE_OFFSET(2*(blockDim.x+thid)+1)] += s_data[2*(blockDim.x+thid)+CONFLICT_FREE_OFFSET(2*(blockDim.x+thid))];

  unsigned int stride = 2;
  for (unsigned int d = blockDim.x; d > 0; d >>= 1)
  {
    __syncthreads();

    if (thid < d)
    {
      unsigned int i  = 2*stride*thid;
      unsigned int ai = i + stride - 1;
      unsigned int bi = ai + stride;

      ai += CONFLICT_FREE_OFFSET(ai);
      bi += CONFLICT_FREE_OFFSET(bi);

      s_data[bi] += s_data[ai];
    }

    stride *= 2;
  }

  if (thid == 0){
    unsigned int last = 4*blockDim.x-1;
    last += CONFLICT_FREE_OFFSET(last);
    s_data[4*blockDim.x+CONFLICT_FREE_OFFSET(4*blockDim.x)] = s_data[last];
    s_data[last] = 0;
  }

  for (unsigned int d = 1; d <= blockDim.x; d *= 2)
  {
    stride >>= 1;

    __syncthreads();

    if (thid < d)
    {
      unsigned int i  = 2*stride*thid;
      unsigned int ai = i + stride - 1;
      unsigned int bi = ai + stride;

      ai += CONFLICT_FREE_OFFSET(ai);
      bi += CONFLICT_FREE_OFFSET(bi);

      unsigned int t  = s_data[ai];
      s_data[ai] = s_data[bi];
      s_data[bi] += t;
    }
  }
  __syncthreads();

  unsigned int temp = s_data[2*thid+CONFLICT_FREE_OFFSET(2*thid)];
  s_data[2*thid+CONFLICT_FREE_OFFSET(2*thid)] = s_data[2*thid+1+CONFLICT_FREE_OFFSET(2*thid+1)];
  s_data[2*thid+1+CONFLICT_FREE_OFFSET(2*thid+1)] += temp;

  unsigned int temp2 = s_data[2*(blockDim.x+thid)+CONFLICT_FREE_OFFSET(2*(blockDim.x+thid))];
  s_data[2*(blockDim.x+thid)+CONFLICT_FREE_OFFSET(2*(blockDim.x+thid))] = s_data[2*(blockDim.x+thid)+1+CONFLICT_FREE_OFFSET(2*(blockDim.x+thid)+1)];
  s_data[2*(blockDim.x+thid)+1+CONFLICT_FREE_OFFSET(2*(blockDim.x+thid)+1)] += temp2;

  __syncthreads();
}

__global__ static void splitSort(int numElems, int iter, unsigned int* keys, unsigned int* values, unsigned int* histo)
{
    __shared__ unsigned int flags[BLOCK_P_OFFSET];
    __shared__ unsigned int histo_s[1<<BITS];

    const unsigned int tid = threadIdx.x;
    const unsigned int gid = blockIdx.x*4*SORT_BS+4*threadIdx.x;

    // Copy input to shared mem. Assumes input is always even numbered
    uint4 lkey = { UINT32_MAX, UINT32_MAX, UINT32_MAX, UINT32_MAX};
    uint4 lvalue;
    if (gid < numElems){
      lkey = *((uint4*)(keys+gid));
      lvalue = *((uint4*)(values+gid));
    }

    if(tid < (1<<BITS)){
      histo_s[tid] = 0;
    }
    __syncthreads();

    atomicAdd(histo_s+((lkey.x&((1<<(BITS*(iter+1)))-1))>>(BITS*iter)),1);
    atomicAdd(histo_s+((lkey.y&((1<<(BITS*(iter+1)))-1))>>(BITS*iter)),1);
    atomicAdd(histo_s+((lkey.z&((1<<(BITS*(iter+1)))-1))>>(BITS*iter)),1);
    atomicAdd(histo_s+((lkey.w&((1<<(BITS*(iter+1)))-1))>>(BITS*iter)),1);

    uint4 index = {4*tid, 4*tid+1, 4*tid+2, 4*tid+3};

    for (int i=BITS*iter; i<BITS*(iter+1);i++){
      const uint4 flag = {(lkey.x>>i)&0x1,(lkey.y>>i)&0x1,(lkey.z>>i)&0x1,(lkey.w>>i)&0x1};

      flags[index.x+CONFLICT_FREE_OFFSET(index.x)] = 1<<(16*flag.x);
      flags[index.y+CONFLICT_FREE_OFFSET(index.y)] = 1<<(16*flag.y);
      flags[index.z+CONFLICT_FREE_OFFSET(index.z)] = 1<<(16*flag.z);
      flags[index.w+CONFLICT_FREE_OFFSET(index.w)] = 1<<(16*flag.w);

      scan (flags);

      index.x = (flags[index.x+CONFLICT_FREE_OFFSET(index.x)]>>(16*flag.x))&0xFFFF;
      index.y = (flags[index.y+CONFLICT_FREE_OFFSET(index.y)]>>(16*flag.y))&0xFFFF;
      index.z = (flags[index.z+CONFLICT_FREE_OFFSET(index.z)]>>(16*flag.z))&0xFFFF;
      index.w = (flags[index.w+CONFLICT_FREE_OFFSET(index.w)]>>(16*flag.w))&0xFFFF;

      unsigned short offset = flags[4*blockDim.x+CONFLICT_FREE_OFFSET(4*blockDim.x)]&0xFFFF;
      index.x += (flag.x) ? offset : 0;
      index.y += (flag.y) ? offset : 0;
      index.z += (flag.z) ? offset : 0;
      index.w += (flag.w) ? offset : 0;

      __syncthreads();
    }

    // Write result.
    if (gid < numElems){
      keys[blockIdx.x*4*SORT_BS+index.x] = lkey.x;
      keys[blockIdx.x*4*SORT_BS+index.y] = lkey.y;
      keys[blockIdx.x*4*SORT_BS+index.z] = lkey.z;
      keys[blockIdx.x*4*SORT_BS+index.w] = lkey.w;

      values[blockIdx.x*4*SORT_BS+index.x] = lvalue.x;
      values[blockIdx.x*4*SORT_BS+index.y] = lvalue.y;
      values[blockIdx.x*4*SORT_BS+index.z] = lvalue.z;
      values[blockIdx.x*4*SORT_BS+index.w] = lvalue.w;
    }
    if (tid < (1<<BITS)){
      histo[gridDim.x*threadIdx.x+blockIdx.x] = histo_s[tid];
    }
}

__global__ void splitRearrange (int numElems, int iter, unsigned int* keys_i, unsigned int* keys_o, unsigned int* values_i, unsigned int* values_o, unsigned int* histo){
  __shared__ unsigned int histo_s[(1<<BITS)];
  __shared__ unsigned int array_s[4*SORT_BS];
  int index = blockIdx.x*4*SORT_BS + 4*threadIdx.x;

  if (threadIdx.x < (1<<BITS)){
    histo_s[threadIdx.x] = histo[gridDim.x*threadIdx.x+blockIdx.x];
  }

  uint4 mine, value;
  if (index < numElems){
    mine = *((uint4*)(keys_i+index));
    value = *((uint4*)(values_i+index));
  } else {
    mine.x = UINT32_MAX;
    mine.y = UINT32_MAX;
    mine.z = UINT32_MAX;
    mine.w = UINT32_MAX;
  }
  uint4 masks = {(mine.x&((1<<(BITS*(iter+1)))-1))>>(BITS*iter),
                 (mine.y&((1<<(BITS*(iter+1)))-1))>>(BITS*iter),
                 (mine.z&((1<<(BITS*(iter+1)))-1))>>(BITS*iter),
                 (mine.w&((1<<(BITS*(iter+1)))-1))>>(BITS*iter)};

  ((uint4*)array_s)[threadIdx.x] = masks;
  __syncthreads();

  uint4 new_index = {histo_s[masks.x],histo_s[masks.y],histo_s[masks.z],histo_s[masks.w]};

  int i = 4*threadIdx.x-1;
  while (i >= 0){
    if (array_s[i] == masks.x){
      new_index.x++;
      i--;
    } else {
      break;
    }
  }

  new_index.y = (masks.y == masks.x) ? new_index.x+1 : new_index.y;
  new_index.z = (masks.z == masks.y) ? new_index.y+1 : new_index.z;
  new_index.w = (masks.w == masks.z) ? new_index.z+1 : new_index.w;

  if (index < numElems){
    keys_o[new_index.x] = mine.x;
    values_o[new_index.x] = value.x;

    keys_o[new_index.y] = mine.y;
    values_o[new_index.y] = value.y;

    keys_o[new_index.z] = mine.z;
    values_o[new_index.z] = value.z;

    keys_o[new_index.w] = mine.w;
    values_o[new_index.w] = value.w;
  }
}

void scanLargeArray( unsigned int gridNumElements, unsigned int* data_d);
void sort (int numElems, unsigned int max_value, unsigned int* &dkeys, unsigned int* &dvalues){
  dim3 grid ((numElems+4*SORT_BS-1)/(4*SORT_BS));
  dim3 block (SORT_BS);

  unsigned int iterations = 0;
  while(max_value > 0){
    max_value >>= BITS;
    iterations++;
  }

  unsigned int *dhisto;
  unsigned int *dkeys_o, *dvalues_o;

  hipMalloc((void**)&dhisto, (1<<BITS)*grid.x*sizeof(unsigned int));
  hipMalloc((void**)&dkeys_o, numElems*sizeof(unsigned int));
  hipMalloc((void**)&dvalues_o, numElems*sizeof(unsigned int));

  for (int i=0; i<iterations; i++){
    splitSort<<<grid,block>>>(numElems, i, dkeys, dvalues, dhisto);

    scanLargeArray(grid.x*(1<<BITS), dhisto);

    splitRearrange<<<grid,block>>>(numElems, i, dkeys, dkeys_o, dvalues, dvalues_o, dhisto);

    unsigned int* temp = dkeys;
    dkeys = dkeys_o;
    dkeys_o = temp;

    temp = dvalues;
    dvalues = dvalues_o;
    dvalues_o = temp;
  }

  hipFree(dkeys_o);
  hipFree(dvalues_o);
  hipFree(dhisto);
}


#define max(x,y) ((x<y)?y:x)
#define min(x,y) ((x>y)?y:x)

float kernel_value_CPU(float v){

  float rValue = 0;

  const float z = v*v;

  // polynomials taken from http://ccrma.stanford.edu/CCRMA/Courses/422/projects/kbd/kbdwindow.cpp
  float num = (z* (z* (z* (z* (z* (z* (z* (z* (z* (z* (z* (z* (z*
  (z* 0.210580722890567e-22f  + 0.380715242345326e-19f ) +
   0.479440257548300e-16f) + 0.435125971262668e-13f ) +
   0.300931127112960e-10f) + 0.160224679395361e-7f  ) +
   0.654858370096785e-5f)  + 0.202591084143397e-2f  ) +
   0.463076284721000e0f)   + 0.754337328948189e2f   ) +
   0.830792541809429e4f)   + 0.571661130563785e6f   ) +
   0.216415572361227e8f)   + 0.356644482244025e9f   ) +
   0.144048298227235e10f);

  float den = (z*(z*(z-0.307646912682801e4f)+0.347626332405882e7f)-0.144048298227235e10f);

  rValue = -num/den;

  return rValue;
}



#ifdef __cplusplus
extern "C"{
#endif


void calculateLUT(float beta, float width, float** LUT, unsigned int* sizeLUT);

void calculateLUT(float beta, float width, float** LUT, unsigned int* sizeLUT){
  float v;
  float cutoff2 = (width*width)/4.0;

  unsigned int size;

  if(width > 0){
    // compute size of LUT based on kernel width
    size = (unsigned int)(10000*width);

    // allocate memory
    (*LUT) = (float*) malloc (size*sizeof(float));

    unsigned int k;
    for(k=0; k<size; ++k){
      // compute value to evaluate kernel at
      // v in the range 0:(_width/2)^2
      v = (((float)k)/((float)size))*cutoff2;

      // compute kernel value and store
      (*LUT)[k] = kernel_value_CPU(beta*sqrt(1.0-(v/cutoff2)));
    }
    (*sizeLUT) = size;
  }
}





float kernel_value_LUT(float v, float* LUT, int sizeLUT, float _1overCutoff2)
{
  unsigned int k0;
  float v0;

  v *= (float)sizeLUT;
  k0=(unsigned int)(v*_1overCutoff2);
  v0 = ((float)k0)/_1overCutoff2;
  return  LUT[k0] + ((v-v0)*(LUT[k0+1]-LUT[k0])/_1overCutoff2);
}



int gridding_Gold(unsigned int n, parameters params, ReconstructionSample* sample, float* LUT, unsigned int sizeLUT, cmplx* gridData, float* sampleDensity);

int gridding_Gold(unsigned int n, parameters params, ReconstructionSample* sample, float* LUT, unsigned int sizeLUT, cmplx* gridData, float* sampleDensity){

  unsigned int NxL, NxH;
  unsigned int NyL, NyH;
  unsigned int NzL, NzH;

  int nx;
  int ny;
  int nz;

  float w;
  unsigned int idx;
  unsigned int idx0;

  unsigned int idxZ;
  unsigned int idxY;

  float Dx2[100];
  float Dy2[100];
  float Dz2[100];
  float *dx2=NULL;
  float *dy2=NULL;
  float *dz2=NULL;

  float dy2dz2;
  float v;

  unsigned int size_x = params.gridSize[0];
  unsigned int size_y = params.gridSize[1];
  unsigned int size_z = params.gridSize[2];

  float cutoff = ((float)(params.kernelWidth))/2.0; // cutoff radius
  float cutoff2 = cutoff*cutoff;                    // square of cutoff radius
  float _1overCutoff2 = 1/cutoff2;                  // 1 over square of cutoff radius

  float beta = PI * sqrt(4*params.kernelWidth*params.kernelWidth/(params.oversample*params.oversample) * (params.oversample-.5)*(params.oversample-.5)-.8);

  int i;
  for (i=0; i < n; i++){
    ReconstructionSample pt = sample[i];

    float kx = pt.kX;
    float ky = pt.kY;
    float kz = pt.kZ;

    NxL = max((kx - cutoff), 0.0);
    NxH = min((kx + cutoff), size_x-1.0);

    NyL = max((ky - cutoff), 0.0);
    NyH = min((ky + cutoff), size_y-1.0);

    NzL = max((kz - cutoff), 0.0);
    NzH = min((kz + cutoff), size_z-1.0);

    if((pt.real != 0.0 || pt.imag != 0.0) && pt.sdc!=0.0)
    {
      for(dz2 = Dz2, nz=NzL; nz<=NzH; ++nz, ++dz2)
      {
        *dz2 = ((kz-nz)*(kz-nz));
      }
      for(dx2=Dx2,nx=NxL; nx<=NxH; ++nx,++dx2)
      {
        *dx2 = ((kx-nx)*(kx-nx));
      }
      for(dy2=Dy2, ny=NyL; ny<=NyH; ++ny,++dy2)
      {
        *dy2 = ((ky-ny)*(ky-ny));
      }

      idxZ = (NzL-1)*size_x*size_y;
      for(dz2=Dz2, nz=NzL; nz<=NzH; ++nz, ++dz2)
      {
        /* linear offset into 3-D matrix to get to zposition */
        idxZ += size_x*size_y;

        idxY = (NyL-1)*size_x;

        /* loop over x indexes, but only if curent distance is close enough (distance will increase by adding x&y distance) */
        if((*dz2)<cutoff2)
        {
          for(dy2=Dy2, ny=NyL; ny<=NyH; ++ny, ++dy2)
          {
            /* linear offset IN ADDITION to idxZ to get to Y position */
            idxY += size_x;

            dy2dz2=(*dz2)+(*dy2);

            idx0 = idxY + idxZ;

            /* loop over y indexes, but only if curent distance is close enough (distance will increase by adding y distance) */
            if(dy2dz2<cutoff2)
            {
              for(dx2=Dx2, nx=NxL; nx<=NxH; ++nx, ++dx2)
              {
                /* value to evaluate kernel at */
                v = dy2dz2+(*dx2);

                if(v<cutoff2)
                {
                  /* linear index of (x,y,z) point */
                  idx = nx + idx0;

                  /* kernel weighting value */
                  if (params.useLUT){
        		    w = kernel_value_LUT(v, LUT, sizeLUT, _1overCutoff2) * pt.sdc;
		          } else {
		            w = kernel_value_CPU(beta*sqrt(1.0-(v*_1overCutoff2))) * pt.sdc;
		          }

                  /* grid data */
                  gridData[idx].real += (w*pt.real);
                  gridData[idx].imag += (w*pt.imag);

                  /* estimate sample density */
                  sampleDensity[idx] += 1.0;
                }
              }
            }
          }
        }
      }
    }
  }
  return 0;
}

int gridding_CPU(unsigned int n, parameters params, ReconstructionSample* sample, int* CPUbin, int CPUbin_size,
                 float* LUT, int sizeLUT, cmplx* gridData[], float* sampleDensity[], int* indeces[]);
#ifdef __cplusplus
}
#endif


#define BLOCK_SIZE 1024
#define GRID_SIZE 65535
#define NUM_BANKS 16
#define LOG_NUM_BANKS 4

#define CONFLICT_FREE_OFFSET(index) ((index) >> LOG_NUM_BANKS + (index) >> (2*LOG_NUM_BANKS))
#define EXPANDED_SIZE(__x) (__x+(__x>>LOG_NUM_BANKS)+(__x>>(2*LOG_NUM_BANKS)))

////////////////////////////////////////////////////////////////////////////////
// Kernels
////////////////////////////////////////////////////////////////////////////////
__global__ void scan_L1_kernel(unsigned int n, unsigned int* data, unsigned int* inter)
{
    __shared__ unsigned int s_data[EXPANDED_SIZE(BLOCK_SIZE)]; 

    unsigned int thid = threadIdx.x;
    unsigned int g_ai = blockIdx.x*2*blockDim.x + threadIdx.x;
    unsigned int g_bi = g_ai + blockDim.x;

    unsigned int s_ai = thid;
    unsigned int s_bi = thid + blockDim.x;

    s_ai += CONFLICT_FREE_OFFSET(s_ai);
    s_bi += CONFLICT_FREE_OFFSET(s_bi);

    s_data[s_ai] = (g_ai < n) ? data[g_ai] : 0;
    s_data[s_bi] = (g_bi < n) ? data[g_bi] : 0;

    unsigned int stride = 1;
    for (unsigned int d = blockDim.x; d > 0; d >>= 1)
    {
        __syncthreads();

        if (thid < d)
        {
            unsigned int i  = 2*stride*thid;
            unsigned int ai = i + stride - 1;
            unsigned int bi = ai + stride;

            ai += CONFLICT_FREE_OFFSET(ai);
            bi += CONFLICT_FREE_OFFSET(bi);

            s_data[bi] += s_data[ai];
        }

        stride *= 2;
    }

    if (thid == 0){
        unsigned int last = blockDim.x*2 -1;
        last += CONFLICT_FREE_OFFSET(last);
        inter[blockIdx.x] = s_data[last];
        s_data[last] = 0;
    }

    for (unsigned int d = 1; d <= blockDim.x; d *= 2)
    {
        stride >>= 1;

        __syncthreads();

        if (thid < d)
        {
            unsigned int i  = 2*stride*thid;
            unsigned int ai = i + stride - 1;
            unsigned int bi = ai + stride;

            ai += CONFLICT_FREE_OFFSET(ai);
            bi += CONFLICT_FREE_OFFSET(bi);

            unsigned int t  = s_data[ai];
            s_data[ai] = s_data[bi];
            s_data[bi] += t;
        }
    }
    __syncthreads();

    if (g_ai < n) { data[g_ai] = s_data[s_ai]; }
    if (g_bi < n) { data[g_bi] = s_data[s_bi]; }
}

__global__ void scan_inter1_kernel(unsigned int* data, unsigned int iter)
{
    extern __shared__ unsigned int s_data[];

    unsigned int thid = threadIdx.x;
    unsigned int gthid = (blockIdx.x*blockDim.x + threadIdx.x);
    unsigned int gi = 2*iter*gthid;
    unsigned int g_ai = gi + iter - 1;
    unsigned int g_bi = g_ai + iter;

    unsigned int s_ai = 2*thid;
    unsigned int s_bi = 2*thid + 1;

    s_ai += CONFLICT_FREE_OFFSET(s_ai);
    s_bi += CONFLICT_FREE_OFFSET(s_bi);

    s_data[s_ai] = data[g_ai];
    s_data[s_bi] = data[g_bi];

    unsigned int stride = 1;
    for (unsigned int d = blockDim.x; d > 0; d >>= 1)
    {
        __syncthreads();

        if (thid < d)
        {
            unsigned int i  = 2*stride*thid;
            unsigned int ai = i + stride - 1;
            unsigned int bi = ai + stride;

            ai += CONFLICT_FREE_OFFSET(ai);
            bi += CONFLICT_FREE_OFFSET(bi);
            s_data[bi] += s_data[ai];
        }

        stride *= 2;
    }

    __syncthreads();

    data[g_ai] = s_data[s_ai];
    data[g_bi] = s_data[s_bi];
}

__global__ void scan_inter2_kernel(unsigned int* data, unsigned int iter)
{
    extern __shared__ unsigned int s_data[];

    unsigned int thid = threadIdx.x;
    unsigned int gthid = (blockIdx.x*blockDim.x + threadIdx.x);
    unsigned int gi = 2*iter*gthid;
    unsigned int g_ai = gi + iter - 1;
    unsigned int g_bi = g_ai + iter;

    unsigned int s_ai = 2*thid;
    unsigned int s_bi = 2*thid + 1;

    s_ai += CONFLICT_FREE_OFFSET(s_ai);
    s_bi += CONFLICT_FREE_OFFSET(s_bi);

    s_data[s_ai] = data[g_ai];
    s_data[s_bi] = data[g_bi];

    unsigned int stride = blockDim.x*2;

    for (unsigned int d = 1; d <= blockDim.x; d *= 2)
    {
        stride >>= 1;

        __syncthreads();

        if (thid < d)
        {
            unsigned int i  = 2*stride*thid;
            unsigned int ai = i + stride - 1;
            unsigned int bi = ai + stride;

            ai += CONFLICT_FREE_OFFSET(ai);
            bi += CONFLICT_FREE_OFFSET(bi);

            unsigned int t  = s_data[ai];
            s_data[ai] = s_data[bi];
            s_data[bi] += t;
        }
    }
    __syncthreads();

    data[g_ai] = s_data[s_ai];
    data[g_bi] = s_data[s_bi];
}

__global__ void uniformAdd(unsigned int n, unsigned int *data, unsigned int *inter)
{

    __shared__ unsigned int uni;
    if (threadIdx.x == 0) { uni = inter[blockIdx.x]; }
    __syncthreads();

    unsigned int g_ai = blockIdx.x*2*blockDim.x + threadIdx.x;
    unsigned int g_bi = g_ai + blockDim.x;

    if (g_ai < n) { data[g_ai] += uni; }
    if (g_bi < n) { data[g_bi] += uni; }
}


#define TILE 64
#define LOG_TILE 6

__constant__ float cutoff2_c;
__constant__ float cutoff_c;
__constant__ int gridSize_c[3];
__constant__ int size_xy_c;
__constant__ float _1overCutoff2_c;

__global__ void binning_kernel (unsigned int n, ReconstructionSample* sample_g, unsigned int* idxKey_g,
                                unsigned int* idxValue_g, unsigned int* binCount_g, unsigned int binsize, unsigned int gridNumElems){
  unsigned int key;
  unsigned int sampleIdx = blockIdx.x*blockDim.x+threadIdx.x;
  ReconstructionSample pt;
  unsigned int binIdx;
  unsigned int count;

  if (sampleIdx < n){
    pt = sample_g[sampleIdx];

    binIdx = (unsigned int)(pt.kZ)*size_xy_c + (unsigned int)(pt.kY)*gridSize_c[0] + (unsigned int)(pt.kX);

    count = atomicAdd(binCount_g+binIdx, 1);
    if (count < binsize){
      key = binIdx;
    } else {
      atomicSub(binCount_g+binIdx, 1);
      key = gridNumElems;
    }

    idxKey_g[sampleIdx] = key;
    idxValue_g[sampleIdx] = sampleIdx;
  }
}

__global__ void reorder_kernel(int n, unsigned int* idxValue_g, ReconstructionSample* samples_g, ReconstructionSample* sortedSample_g){
  unsigned int index = blockIdx.x*blockDim.x + threadIdx.x;
  unsigned int old_index;
  ReconstructionSample pt;

  if (index < n){
    old_index = idxValue_g[index];
    pt = samples_g[old_index];
    sortedSample_g[index] = pt;
  }
}

__device__ float kernel_value(float v){

  float rValue = 0;

  float z = v*v;

  // polynomials taken from http://ccrma.stanford.edu/CCRMA/Courses/422/projects/kbd/kbdwindow.cpp
  float num = (z* (z* (z* (z* (z* (z* (z* (z* (z* (z* (z* (z* (z*
                (z* 0.210580722890567e-22f  + 0.380715242345326e-19f ) +
                 0.479440257548300e-16f) + 0.435125971262668e-13f ) +
                 0.300931127112960e-10f) + 0.160224679395361e-7f  ) +
                 0.654858370096785e-5f)  + 0.202591084143397e-2f  ) +
                 0.463076284721000e0f)   + 0.754337328948189e2f   ) +
                 0.830792541809429e4f)   + 0.571661130563785e6f   ) +
                 0.216415572361227e8f)   + 0.356644482244025e9f   ) +
                 0.144048298227235e10f);

  float den = (z*(z*(z-0.307646912682801e4f)+0.347626332405882e7f)-0.144048298227235e10f);

  rValue = __fdividef(-num,den);

  return rValue;
}

__global__ void gridding_GPU (ReconstructionSample* sample_g, unsigned int* binStartAddr_g, float2* gridData_g, float* sampleDensity_g, float beta){
  __shared__ ReconstructionSample sharedBin[TILE];

  const int flatIdx = threadIdx.z*blockDim.y*blockDim.x+threadIdx.y*blockDim.x+threadIdx.x;

  // figure out starting point of the tile
  const int z0 = blockDim.z*(blockIdx.y/(gridSize_c[1]/blockDim.y));
  const int y0 = blockDim.y*(blockIdx.y%(gridSize_c[1]/blockDim.y));
  const int x0 = blockIdx.x*blockDim.x;

  const int X  = x0+threadIdx.x;
  const int Y  = y0+threadIdx.y;
  const int Z  = z0+threadIdx.z;

  const int xl = x0-ceil(cutoff_c);
  const int xL = (xl < 0) ? 0 : xl;
  const int xh = x0+blockDim.x+cutoff_c;
  const int xH = (xh >= gridSize_c[0]) ? gridSize_c[0]-1 : xh;

  const int yl = y0-ceil(cutoff_c);
  const int yL = (yl < 0) ? 0 : yl;
  const int yh = y0+blockDim.y+cutoff_c;
  const int yH = (yh >= gridSize_c[1]) ? gridSize_c[1]-1 : yh;

  const int zl = z0-ceil(cutoff_c);
  const int zL = (zl < 0) ? 0 : zl;
  const int zh = z0+blockDim.z+cutoff_c;
  const int zH = (zh >= gridSize_c[2]) ? gridSize_c[2]-1 : zh;

  const int idx = Z*size_xy_c + Y*gridSize_c[0] + X;

  float2 pt;
  pt.x = 0.0;
  pt.y = 0.0;
  float density = 0.0;

  for (int z = zL; z <= zH; z++){
    for (int y = yL; y <= yH; y++){
      const unsigned int *addr = binStartAddr_g+z*size_xy_c+ y*gridSize_c[0];
      const unsigned int start = *(addr+xL);
      const unsigned int end   = *(addr+xH+1);
      const unsigned int delta = end-start;
      for (int x = 0; x < ((delta+TILE-1)>>LOG_TILE); x++){
        int tileSize = ((delta-(x<<LOG_TILE)) > TILE) ? TILE : (delta-(x<<LOG_TILE));
        int globalIdx = flatIdx+(x<<LOG_TILE);
        __syncthreads();
        if(flatIdx < tileSize){
          sharedBin[flatIdx] = sample_g[start+globalIdx];
        }
        __syncthreads();

        for (int j=0; j< tileSize; j++){
          const float real = sharedBin[j].real;
          const float imag = sharedBin[j].imag;
          const float sdc = sharedBin[j].sdc;

          if((real != 0.0 || imag != 0.0) && sdc != 0.0){
            float v = (sharedBin[j].kX-X)*(sharedBin[j].kX-X);
            v += (sharedBin[j].kY-Y)*(sharedBin[j].kY-Y);
            v += (sharedBin[j].kZ-Z)*(sharedBin[j].kZ-Z);
            if(v<cutoff2_c){
              const float w = kernel_value(beta*sqrtf(1.0-(v*_1overCutoff2_c))) *sdc;
              pt.x += w*real;
              pt.y += w*imag;
              density += 1.0;
            }
          }
        }
      }
    }
  }

  gridData_g[idx] = pt;
  sampleDensity_g[idx] = density;
}

void CUDA_interface (
  struct pb_TimerSet* timers,
  unsigned int n,       // Number of input elements
  parameters params,    // Parameter struct which defines output gridSize, cutoff distance, etc.
  ReconstructionSample* sample, // Array of input elements
  float* LUT,           // Precomputed LUT table of Kaiser-Bessel function. 
                          // Used for computation on CPU instead of using the function every time
  int sizeLUT,          // Size of LUT
  cmplx* gridData,      // Array of output grid points. Each element has a real and imaginary component
  float* sampleDensity  // Array of same size as gridData couting the number of contributions
                          // to each grid point in the gridData array
);

void CUDA_interface (
  struct pb_TimerSet* timers,
  unsigned int n,       // Number of input elements
  parameters params,    // Parameter struct which defines output gridSize, cutoff distance, etc.
  ReconstructionSample* sample, // Array of input elements
  float* LUT,           // Precomputed LUT table of Kaiser-Bessel function. 
                          // Used for computation on CPU instead of using the function every time
  int sizeLUT,          // Size of LUT
  cmplx* gridData,      // Array of output grid points. Each element has a real and imaginary component
  float* sampleDensity  // Array of same size as gridData couting the number of contributions
                          // to each grid point in the gridData array
){

  /* Initializing all variables */
  dim3 dims (8,4,2); //size of a gridding block on the GPU

  /* x, y, z dimensions of the output grid (gridData) */
  int size_x = params.gridSize[0];
  int size_y = params.gridSize[1];
  int size_z = params.gridSize[2];
  int size_xy = size_y*size_x;

  int gridNumElems = size_x * size_y * size_z;  // Total number of grid points

  float beta = PI * sqrt(4*params.kernelWidth*params.kernelWidth/(params.oversample*params.oversample) * (params.oversample-.5)*(params.oversample-.5)-.8);

  float cutoff = float(params.kernelWidth)/2.0; // cutoff radius
  float cutoff2 = cutoff*cutoff;                // square of cutoff radius
  float _1overCutoff2 = 1/cutoff2;              // 1 over square of cutoff radius

  /* Declarations of device data structures */
  ReconstructionSample* sample_d = NULL;    // Device array for original input array
  ReconstructionSample* sortedSample_d = NULL;             // Device array of the sorted (into bins) input elements.
                                            // This array is accessed by sortedSampleSoA_d in a structure
                                            //   of arrays manner.
  float2* gridData_d = NULL;                // Device array for output grid
  float* sampleDensity_d = NULL;            // Device array for output sample density
  unsigned int* idxKey_d = NULL;            // Array of bin indeces generated in the binning kernel
                                            //   and used to sort the input elements into their
                                            //   corresponding bins
  unsigned int* idxValue_d = NULL;          // This array holds the indices of input elements in the
                                            //   the original array. This array is sorted using the
                                            //   the idxKey_d array, and once sorted, it is used in
                                            //   the reorder kernel to move the actual elements into
                                            //   their corresponding bins.
  unsigned int* binCount_d = NULL;          // Zero-initialized array which counts the number of elements
                                            //   put in each bin. Based on this array, we determine which
                                            //   elements get offloaded to the CPU
  unsigned int* binStartAddr_d = NULL;      // Array of start offset of each of the compact bins

  /* Allocating device memory */
  pb_SwitchToTimer(timers, pb_TimerID_COPY);

  hipMalloc((void**)&sortedSample_d, n*sizeof(ReconstructionSample));
  hipMalloc((void**)&binStartAddr_d, (gridNumElems+1)*sizeof(unsigned int));
  hipMalloc((void**)&sample_d, n*sizeof(ReconstructionSample));
  hipMalloc((void**)&idxKey_d, (((n+3)/4)*4)*sizeof(unsigned int));   //Pad to nearest multiple of 4 to 
  hipMalloc((void**)&idxValue_d, (((n+3)/4)*4)*sizeof(unsigned int)); //satisfy a property of the sorting kernel.

/*The CUDPP library features highly optimizes implementations for radix sort
  and prefix sum. However for portability reasons, we implemented our own,
  slightly less optimized versions of these operations. When performing
  prefix sum using CUDPP, the output array has to be different from the input
  array, which is why we would allocate an array for binCount_d. For our
  implementation, we allow the input and output arrays to be the same,
  therefore we reuse the binCount_d array to get the starting offset of each
  bin. */
#if USE_CUDPP
  hipMalloc((void**)&binCount_d, (gridNumElems+1)*sizeof(unsigned int));
#else
  binCount_d = binStartAddr_d;
#endif
  //CUERR;

  /* Transfering data from Host to Device */
  hipMemcpyToSymbol(HIP_SYMBOL(cutoff2_c), &cutoff2, sizeof(float), 0);
  hipMemcpyToSymbol(HIP_SYMBOL(cutoff_c), &cutoff, sizeof(float), 0);
  hipMemcpyToSymbol(HIP_SYMBOL(gridSize_c), params.gridSize, 3*sizeof(int), 0);
  hipMemcpyToSymbol(HIP_SYMBOL(size_xy_c), &size_xy, sizeof(int), 0);
  hipMemcpyToSymbol(HIP_SYMBOL(_1overCutoff2_c), &_1overCutoff2, sizeof(float), 0);
  hipMemcpy(sample_d, sample, n*sizeof(ReconstructionSample), hipMemcpyHostToDevice);
  hipMemset(binCount_d, 0, (gridNumElems+1)*sizeof(unsigned int));

  // Initialize padding to max integer value, so that when sorted,
  // these elements get pushed to the end of the array.
  hipMemset(idxKey_d+n, 0xFF, (((n+3)&~(3))-n)*sizeof(unsigned int));

  pb_SwitchToTimer(timers, pb_TimerID_KERNEL);

  /* STEP 1: Perform binning. This kernel determines which output bin each input element
   * goes into. Any excess (beyond binsize) is put in the CPU bin
   */
  dim3 block1 (BLOCKSIZE);
  dim3 grid1 ((n+BLOCKSIZE-1)/BLOCKSIZE);

  binning_kernel<<<grid1, block1>>>(n, sample_d, idxKey_d, idxValue_d, binCount_d, params.binsize, gridNumElems);

  /* STEP 2: Sort the index-value pair generate in the binning kernel */
#if USE_CUDPP
  CUDPPConfiguration config;
  config.datatype = CUDPP_UINT;
  config.algorithm = CUDPP_SORT_RADIX;
  config.options = CUDPP_OPTION_KEY_VALUE_PAIRS;

  CUDPPHandle sortplan = 0;
  CUDPPResult result = cudppPlan(&sortplan, config, n, 1, 0);

  int precision = 0;
  int numElems = gridNumElems;
  while (numElems > 0){
    numElems >>= 1;
    precision++;
  }

  cudppSort(sortplan, idxKey_d, idxValue_d, int(precision), n);
  result = cudppDestroyPlan(sortplan);
#else
  sort(n, gridNumElems+1, idxKey_d, idxValue_d);
#endif

  /* STEP 3: Reorder the input data, based on the sorted values from Step 2.
   * this step also involves changing the data from array of structs to a struct
   * of arrays. Also in this kernel, we populate an array with the starting index
   * of every output bin features in the input array, based on the sorted indices 
   * from Step 2.
   * At the end of this step, we copy the start address and list of input elements
   * that will be computed on the CPU.
   */
  reorder_kernel<<<grid1,block1>>>(n, idxValue_d, sample_d, sortedSample_d);

  pb_SwitchToTimer(timers, pb_TimerID_COPY);

  hipFree(idxValue_d);
  hipFree(idxKey_d);
  hipFree(sample_d);

  pb_SwitchToTimer(timers, pb_TimerID_KERNEL);

  /* STEP 4: In this step we generate the ADD scan of the array of starting indices
   * of the output bins. The result is an array that contains the starting address of
   * every output bin.
   */
#if USE_CUDPP
  config.datatype = CUDPP_UINT;
  config.algorithm = CUDPP_SCAN;
  config.options = CUDPP_OPTION_EXCLUSIVE;
  config.op=CUDPP_ADD;

  CUDPPHandle scanplan = 0;
  result = cudppPlan(&scanplan, config, gridNumElems+1, 1, 0);

  cudppScan(scanplan, binCount_d, binStartAddr_d, gridNumElems+1);
  result = cudppDestroyPlan(scanplan);
#else
  scanLargeArray(gridNumElems+1, binCount_d);
#endif

  pb_SwitchToTimer(timers, pb_TimerID_COPY);

  // Copy back to the CPU the indices of the input elements that will be processed on the CPU
  int cpuStart;
  hipMemcpy(&cpuStart, binCount_d+gridNumElems, sizeof(unsigned int), hipMemcpyDeviceToHost);

  int CPUbin_size = int(n)-int(cpuStart);

  ReconstructionSample* CPUbin;
  hipHostMalloc((void**)&CPUbin,CPUbin_size*sizeof(ReconstructionSample));
  hipMemcpy(CPUbin, sortedSample_d+cpuStart, CPUbin_size*sizeof(ReconstructionSample), hipMemcpyDeviceToHost);

#if USE_CUDPP
  hipFree(binCount_d);
#endif

  /* STEP 5: Perform the binning on the GPU. The results are computed in a gather fashion
   * where each thread computes the value of one output element by reading the relevant
   * bins.
   */
  hipMalloc((void**)&gridData_d, gridNumElems*sizeof(float2));
  hipMalloc((void**)&sampleDensity_d, gridNumElems*sizeof(float));
  //CUERR;

  hipMemset(gridData_d, 0, gridNumElems*sizeof(float2));
  hipMemset(sampleDensity_d, 0, gridNumElems*sizeof(float));

  pb_SwitchToTimer(timers, pb_TimerID_KERNEL);

  dim3 block2 (dims.x,dims.y,dims.z);
  dim3 grid2 (size_x/dims.x, (size_y*size_z)/(dims.y*dims.z));

  gridding_GPU<<<grid2, block2>>>(sortedSample_d, binStartAddr_d, gridData_d, sampleDensity_d, beta);

  pb_SwitchToTimer(timers, pb_TimerID_COPY);

  /* Copying the results from the Device to the Host */
  hipMemcpy(sampleDensity, sampleDensity_d, gridNumElems*sizeof(float),hipMemcpyDeviceToHost);
  hipMemcpy(gridData, gridData_d, gridNumElems*sizeof(float2),hipMemcpyDeviceToHost);

  pb_SwitchToTimer(timers, pb_TimerID_COMPUTE);

  /* STEP 6: Computing the contributions of the sample points handled by the Host
   * and adding those to the GPU results.
   */
  gridding_Gold(CPUbin_size, params, CPUbin, LUT, sizeLUT, gridData, sampleDensity);

  pb_SwitchToTimer(timers, pb_TimerID_COPY);

  hipHostFree(CPUbin);
  hipFree(gridData_d);
  hipFree(sampleDensity_d);
  hipFree(binCount_d);
  hipFree(sortedSample_d);

  pb_SwitchToTimer(timers, pb_TimerID_NONE);

  return;
}

#ifdef __cplusplus
extern "C"{
#endif
void calculateLUT(float beta, float width, float** LUT, unsigned int* sizeLUT);

int gridding_Gold(unsigned int n, parameters params, ReconstructionSample* sample, float* LUT, unsigned int sizeLUT, cmplx* gridData, float* sampleDensity);

int gridding_CPU(unsigned int n, parameters params, ReconstructionSample* sample, int* CPUbin, int CPUbin_size,
                 float* LUT, int sizeLUT, cmplx* gridData[], float* sampleDensity[], int* indeces[]);
#ifdef __cplusplus
}
#endif


#define CUERR \
  do { \
    hipError_t err; \
    if ((err = hipGetLastError()) != hipSuccess) { \
      printf("CUDA error: %s, line %d\n", hipGetErrorString(err), __LINE__); \
      return 0; \
    } \
  } while (0)

/************************************************************ 
 * This function reads the parameters from the file provided
 * as a comman line argument.
 ************************************************************/
void setParameters(FILE* file, parameters* p){
  fscanf(file,"aquisition.numsamples=%d\n",&(p->numSamples));
  fscanf(file,"aquisition.kmax=%f %f %f\n",&(p->kMax[0]), &(p->kMax[1]), &(p->kMax[2]));
  fscanf(file,"aquisition.matrixSize=%d %d %d\n", &(p->aquisitionMatrixSize[0]), &(p->aquisitionMatrixSize[1]), &(p->aquisitionMatrixSize[2]));
  fscanf(file,"reconstruction.matrixSize=%d %d %d\n", &(p->reconstructionMatrixSize[0]), &(p->reconstructionMatrixSize[1]), &(p->reconstructionMatrixSize[2]));
  fscanf(file,"gridding.matrixSize=%d %d %d\n", &(p->gridSize[0]), &(p->gridSize[1]), &(p->gridSize[2]));
  fscanf(file,"gridding.oversampling=%f\n", &(p->oversample));
  fscanf(file,"kernel.width=%f\n", &(p->kernelWidth));
  fscanf(file,"kernel.useLUT=%d\n", &(p->useLUT));

  hipDeviceProp_t deviceProp;
  hipGetDeviceProperties(&deviceProp, 0);
  printf("  Total amount of GPU memory: %llu bytes\n", (unsigned long long) deviceProp.totalGlobalMem);
  printf("  Number of samples = %d\n", p->numSamples);
  if (p->numSamples > 10000000 && deviceProp.totalGlobalMem/1024/1024 < 3000) {
    printf("  Need at least 3GB of GPU memory for large dataset\n");
    exit(1);
  }
  printf("  Grid Size = %dx%dx%d\n", p->gridSize[0], p->gridSize[1], p->gridSize[2]);
  printf("  Input Matrix Size = %dx%dx%d\n", p->aquisitionMatrixSize[0], p->aquisitionMatrixSize[1], p->aquisitionMatrixSize[2]);
  printf("  Recon Matrix Size = %dx%dx%d\n", p->reconstructionMatrixSize[0], p->reconstructionMatrixSize[1], p->reconstructionMatrixSize[2]);
  printf("  Kernel Width = %f\n", p->kernelWidth);
  printf("  KMax = %.2f %.2f %.2f\n", p->kMax[0], p->kMax[1], p->kMax[2]);
  printf("  Oversampling = %f\n", p->oversample);
  printf("  GPU Binsize = %d\n", p->binsize);
  printf("  Use LUT = %s\n", (p->useLUT)?"Yes":"No");
}

/************************************************************ 
 * This function reads the sample point data from the kspace
 * and klocation files (and sdc file if provided) into the
 * sample array.
 * Returns the number of samples read successfully.
 ************************************************************/
unsigned int readSampleData(parameters params, FILE* uksdata_f, ReconstructionSample* samples){
  unsigned int i;

  for(i=0; i<params.numSamples; i++){
    if (feof(uksdata_f)){
      break;
    }
    fread((void*) &(samples[i]), sizeof(ReconstructionSample), 1, uksdata_f);
  }

  float kScale[3];
  kScale[0] = float(params.aquisitionMatrixSize[0])/(float(params.reconstructionMatrixSize[0])*float(params.kMax[0]));
  kScale[1] = float(params.aquisitionMatrixSize[1])/(float(params.reconstructionMatrixSize[1])*float(params.kMax[1]));
  kScale[2] = float(params.aquisitionMatrixSize[2])/(float(params.reconstructionMatrixSize[2])*float(params.kMax[2]));

  int size_x = params.gridSize[0];
  int size_y = params.gridSize[1];
  int size_z = params.gridSize[2];

  float ax = (kScale[0]*(size_x-1))/2.0;
  float bx = (float)(size_x-1)/2.0;

  float ay = (kScale[1]*(size_y-1))/2.0;
  float by = (float)(size_y-1)/2.0;

  float az = (kScale[2]*(size_z-1))/2.0;
  float bz = (float)(size_z-1)/2.0;

  for(int n=0; n<i; n++){
    samples[n].kX = floor((samples[n].kX*ax)+bx);
    samples[n].kY = floor((samples[n].kY*ay)+by);
    samples[n].kZ = floor((samples[n].kZ*az)+bz);
  }

  return i;
}


int main (int argc, char* argv[]){
  struct pb_Parameters* prms;
  struct pb_TimerSet timers;

  prms = pb_ReadParameters(&argc,argv);
  pb_InitializeTimerSet(&timers);

  pb_SwitchToTimer(&timers, pb_TimerID_NONE);

  char uksdata[250];
  parameters params;

  FILE* uksfile_f = NULL;
  FILE* uksdata_f = NULL;

  strcpy(uksdata,prms->inpFiles[0]);
  strcat(uksdata,".data");

  uksfile_f = fopen(prms->inpFiles[0],"r");
  if (uksfile_f == NULL){
    printf("ERROR: Could not open %s\n",prms->inpFiles[0]);
    exit(1);
  }

  printf("\nReading parameters\n");

  if (argc >= 2){
    params.binsize = atoi(argv[1]);
  } else { //default binsize value;
    params.binsize = 128;
  }

  setParameters(uksfile_f, &params);

  pb_SwitchToTimer(&timers, pb_TimerID_IO);

  ReconstructionSample* samples; //Input Data
  float* LUT; //use look-up table for faster execution on CPU (intermediate data)
  unsigned int sizeLUT; //set in the function calculateLUT (intermediate data)

  cmplx* gridData; //Output Data
  float* sampleDensity; //Output Data

  cmplx* gridData_gold; //Gold Output Data
  float* sampleDensity_gold; //Gold Output Data

  hipHostMalloc((void**)&samples, params.numSamples*sizeof(ReconstructionSample));
  //CUERR;
  if (samples == NULL){
    printf("ERROR: Unable to allocate memory for input data\n");
    exit(1);
  }

  uksdata_f = fopen(uksdata,"rb");

  if(uksdata_f == NULL){
    printf("ERROR: Could not open data file\n");
    exit(1);
  }

  printf("Reading input data from files\n");

  unsigned int n = readSampleData(params, uksdata_f, samples);
  fclose(uksdata_f);

  if (params.useLUT){
    printf("Generating Look-Up Table\n");
    float beta = PI * sqrt(4*params.kernelWidth*params.kernelWidth/(params.oversample*params.oversample) * (params.oversample-.5)*(params.oversample-.5)-.8);
    calculateLUT(beta, params.kernelWidth, &LUT, &sizeLUT);
  }

  int gridNumElems = params.gridSize[0] * params.gridSize[1] * params.gridSize[2];

  pb_SwitchToTimer(&timers, pb_TimerID_NONE);

  gridData_gold = (cmplx*) calloc (gridNumElems, sizeof(cmplx));
  sampleDensity_gold = (float*) calloc (gridNumElems, sizeof(float));
  if (sampleDensity_gold == NULL || gridData_gold == NULL){
    printf("ERROR: Unable to allocate memory for output data\n");
    exit(1);
  }

  printf("Running gold version\n");

  gridding_Gold(n, params, samples, LUT, sizeLUT, gridData_gold, sampleDensity_gold);

  hipHostMalloc((void**)&gridData, gridNumElems*sizeof(cmplx));
  hipHostMalloc((void**)&sampleDensity, gridNumElems*sizeof(float));
  //CUERR;
  if (sampleDensity == NULL || gridData == NULL){
    printf("ERROR: Unable to allocate memory for output data\n");
    exit(1);
  }

  printf("Running CUDA version\n");

  pb_SwitchToTimer(&timers, pb_TimerID_COMPUTE);

  //Interface function to GPU implementation of gridding
  CUDA_interface(&timers, n, params, samples, LUT, sizeLUT, gridData, sampleDensity);
  std::cerr << "cuda interface" << std::endl;

  pb_SwitchToTimer(&timers, pb_TimerID_NONE);

  int passed=1;
  for (int i=0; i<gridNumElems; i++){
    if(sampleDensity[i] != sampleDensity_gold[i]) {
      passed=0;
      break;
    }
  }
  //(passed) ? printf("Comparing GPU and Gold results... PASSED\n"):printf("Comparing GPU and Gold results... FAILED\n");

  pb_SwitchToTimer(&timers, pb_TimerID_IO);

  FILE* outfile;
  if(!(outfile=fopen(prms->outFile,"w")))
  {
        printf("Cannot open output file!\n");
  } else {
        fwrite(&passed,sizeof(int),1,outfile);
        fclose(outfile);
  }

  pb_SwitchToTimer(&timers, pb_TimerID_NONE);

  if (params.useLUT){
    free(LUT);
  }
  hipHostFree(samples);
  hipHostFree(gridData);
  hipHostFree(sampleDensity);
  free(gridData_gold);
  free(sampleDensity_gold);

  printf("\n");
  pb_PrintTimerSet(&timers);
  pb_FreeParameters(prms);

  return 0;
}






void scanLargeArray( unsigned int gridNumElements, unsigned int* data_d) {
    unsigned int gridNumElems = gridNumElements;    

    // allocate device memory input and output arrays
    unsigned int* inter_d = NULL;

    // Run the prescan
    unsigned int size = (gridNumElems+BLOCK_SIZE-1)/BLOCK_SIZE;

    unsigned int dim_block;
    unsigned int current_max = size*BLOCK_SIZE;
    for (int block_size = 128; block_size <= BLOCK_SIZE; block_size *= 2){
      unsigned int array_size = block_size;
      while(array_size < size){
        array_size *= block_size;
      }
      if (array_size <= current_max){
        current_max = array_size;
        dim_block = block_size;
      }
    }

    hipMalloc( (void**) &inter_d, current_max*sizeof(unsigned int));
    hipMemset (inter_d, 0, current_max*sizeof(unsigned int));

    for (unsigned int i=0; i < (size+GRID_SIZE-1)/GRID_SIZE; i++){
        unsigned int gridSize = ((size-(i*GRID_SIZE)) > GRID_SIZE) ? GRID_SIZE : (size-i*GRID_SIZE);
        unsigned int numElems = ((gridNumElems-(i*GRID_SIZE*BLOCK_SIZE)) > (GRID_SIZE*BLOCK_SIZE)) ? (GRID_SIZE*BLOCK_SIZE) : (gridNumElems-(i*GRID_SIZE*BLOCK_SIZE));

        dim3 block (BLOCK_SIZE/2);
        dim3 grid (gridSize);
        scan_L1_kernel<<<grid, block>>>(numElems, data_d+(i*GRID_SIZE*BLOCK_SIZE), inter_d+(i*GRID_SIZE));
    }

    unsigned int stride = 1;
    for (unsigned int d = current_max; d > 1; d /= dim_block)
    {
        dim3 block (dim_block/2);
        dim3 grid (d/dim_block);

        scan_inter1_kernel<<<grid, block, EXPANDED_SIZE(dim_block)*sizeof(unsigned int)>>>(inter_d, stride);

        stride *= dim_block;
    }

    hipMemset(&(inter_d[current_max-1]), 0, sizeof(unsigned int));

    for (unsigned int d = dim_block; d <= current_max; d *= dim_block)
    {
        stride /= dim_block;
        dim3 block (dim_block/2);
        dim3 grid (d/dim_block);

        scan_inter2_kernel<<<grid, block, EXPANDED_SIZE(dim_block)*sizeof(unsigned int)>>>(inter_d, stride);
    }

    for (unsigned int i=0; i < (size+GRID_SIZE-1)/GRID_SIZE; i++){
        unsigned int gridSize = ((size-(i*GRID_SIZE)) > GRID_SIZE) ? GRID_SIZE : (size-i*GRID_SIZE);
        unsigned int numElems = ((gridNumElems-(i*GRID_SIZE*BLOCK_SIZE)) > (GRID_SIZE*BLOCK_SIZE)) ? (GRID_SIZE*BLOCK_SIZE) : (gridNumElems-(i*GRID_SIZE*BLOCK_SIZE));

        dim3 block (BLOCK_SIZE/2);
        dim3 grid (gridSize);

        uniformAdd<<<grid, block>>>(numElems, data_d+(i*GRID_SIZE*BLOCK_SIZE), inter_d+(i*GRID_SIZE));
    }

    hipFree(inter_d);
}