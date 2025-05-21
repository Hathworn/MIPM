#include "parboil.h"
#include <iostream>

#ifndef __ARGS_H__
#define __ARGS_H__

typedef struct _options_
{
  char *data_name;
  char *random_name;
  int random_count;
  int npoints;
  char *output_name;
} options;

void usage(char *name);
void parse_args(int argc, char **argv, options* args);

#endif


#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

//#include "model.h"
//#include "tpacf_kernel.cu"  
#ifndef __MODEL_H__
#define __MODEL_H__



#define D2R M_PI/180.0
#define R2D 180.0/M_PI
#define R2AM 60.0*180.0/M_PI

#define bins_per_dec 5
#define min_arcmin 1.0
#define max_arcmin 10000.0

#define NUM_BINS 20

typedef unsigned long hist_t;

struct spherical 
{
  float ra, dec;  // latitude, longitude pair
};
 
struct cartesian 
{
  float x, y, z;  // cartesian coodrinates
};

int readdatafile(char *fname, struct cartesian *data, int npoints);
void usage(char *name)
{
  printf("Usage: %s <-d data_file_name> <-r rnd_file_name> "
	 "<-m rnd_count> <-p count> <-o file_name>\n", name);
  exit(0);
}

void parse_args(int argc, char **argv, options* args)
{
  int c;

  args->data_name = NULL;
  args->random_name = NULL;
  args->random_count = 0;
  args->npoints = 0;
  args->output_name = NULL;
  
  while ((c = getopt(argc, argv, "d:n:r:p:o:")) != EOF)
    {
      switch (c)
	{
        case 'd':
          args->data_name = optarg;
          break;
        case 'r':
          args->random_name = optarg;
          break;
        case 'n':
          args->random_count = atoi(optarg);
          break;
        case 'o':
          args->output_name = optarg;
          break;
        case 'p':
          args->npoints = atol(optarg);
          break;
        default:
          usage(argv[0]);
	}
    }
}

void initBinB(struct pb_TimerSet *timers);

int readdatafile(char *fname, struct cartesian *data, int npoints)
{
    printf("entering\n ");
  FILE *infile;
  int lcount = 0;
  float ra, dec;

  if ((infile = fopen(fname, "r")) == NULL)
    {
      fprintf(stderr, "Unable to open data file %s for reading\n", fname);
      return lcount;
    }
  std::cerr << fname << std::endl;
  for (lcount = 0; lcount < npoints; lcount++)
    {
      if (fscanf(infile, "%f %f", &ra, &dec) != 2)
	break;

        {
          // data conversion
	  float rarad = D2R * ra;
	  float decrad = D2R * dec;
	  float cd = cos(decrad);
	  
	  data[lcount].x = cos(rarad) * cd;
	  data[lcount].y = sin(rarad) * cd;
	  data[lcount].z = sin(decrad);
        }
    }

  fclose(infile);
  std::cerr << "read finish" << std::endl;
  return lcount;
}

#endif


#include "hip/hip_runtime.h"
#ifndef _PRESCAN_CU_
#define _PRESCAN_CU_
#include <assert.h>
#include <math.h>

#define WARP_SIZE 32
#define NUM_BANKS 16
#define LOG_NUM_BANKS 4

#define BLOCK_SIZE 256
#define NUM_WARPS (BLOCK_SIZE/WARP_SIZE)
#define HISTS_PER_WARP 16
#define NUM_HISTOGRAMS  (NUM_WARPS*HISTS_PER_WARP)
#define THREADS_PER_HIST (WARP_SIZE/HISTS_PER_WARP)

float** g_scanBlockSums;
unsigned int g_numEltsAllocated = 0;
unsigned int g_numLevelsAllocated = 0;

__constant__ float dev_binb[NUM_BINS+1];

unsigned int NUM_SETS;
unsigned int NUM_ELEMENTS;

// create the bin boundaries
void initBinB( struct pb_TimerSet *timers )
{
  float *binb = (float*)malloc((NUM_BINS+1)*sizeof(float));
  for (int k = 0; k < NUM_BINS+1; k++)
    {
      binb[k] = cos(pow(10.0, (log10(min_arcmin) + k*1.0/bins_per_dec)) 
		    / 60.0*D2R);
    }
  pb_SwitchToTimer( timers, pb_TimerID_COPY );
  hipMemcpyToSymbol(HIP_SYMBOL(dev_binb), binb, (NUM_BINS+1)*sizeof(float));
  pb_SwitchToTimer( timers, pb_TimerID_COMPUTE );
  free(binb);
}

__global__ 
void gen_hists( hist_t* histograms, float* all_x_data, float* all_y_data, 
		float* all_z_data, int NUM_SETS, int NUM_ELEMENTS )
{
  unsigned int bx = blockIdx.x;
  unsigned int tid = threadIdx.x;
  bool do_self = (bx < (NUM_SETS + 1));

  float* data_x;
  float* data_y;
  float* data_z;
  float* random_x;
  float* random_y;
  float* random_z;

  __shared__ unsigned int
    warp_hists[NUM_BINS][NUM_HISTOGRAMS]; // 640B <1k  
    
  for(unsigned int w = 0; w < NUM_BINS*NUM_HISTOGRAMS; w += BLOCK_SIZE )
    {
      if(w+tid < NUM_BINS*NUM_HISTOGRAMS)
	{
	  warp_hists[(w+tid)/NUM_HISTOGRAMS][(w+tid)%NUM_HISTOGRAMS] = 0;
	}
    }
    
  // Get stuff into shared memory to kick off the loop.
  if( !do_self)
    {
      data_x = all_x_data;
      data_y = all_y_data;
      data_z = all_z_data;
      random_x = all_x_data + NUM_ELEMENTS * (bx - NUM_SETS);
      random_y = all_y_data + NUM_ELEMENTS * (bx - NUM_SETS);
      random_z = all_z_data + NUM_ELEMENTS * (bx - NUM_SETS);
    }
  else
    {
      random_x = all_x_data + NUM_ELEMENTS * (bx);
      random_y = all_y_data + NUM_ELEMENTS * (bx);
      random_z = all_z_data + NUM_ELEMENTS * (bx);
      
      data_x = random_x;
      data_y = random_y;
      data_z = random_z;
    }
    
  // Iterate over all random points
  for(unsigned int j = 0; j < NUM_ELEMENTS; j += BLOCK_SIZE)
    {
      // load current random point values
      float random_x_s;
      float random_y_s;
      float random_z_s;
	  
      if(tid + j < NUM_ELEMENTS)
        {
	  random_x_s = random_x[tid + j];
	  random_y_s = random_y[tid + j];
	  random_z_s = random_z[tid + j];
	}

      // Iterate over all data points
      // If do_self, then use a tighter bound on the number of data points.
      for(unsigned int k = 0;
	  k < NUM_ELEMENTS && (do_self ? k < j + BLOCK_SIZE : 1); k++)
	{
	  // do actual calculations on the values:
	  float distance = data_x[k] * random_x_s + 
	    data_y[k] * random_y_s + 
	    data_z[k] * random_z_s ;

	  unsigned int bin_index;

	  // run binary search to find bin_index
	  unsigned int min = 0;
	  unsigned int max = NUM_BINS;
	  {
	    unsigned int k2;
	      
	    while (max > min+1)
	      {
		k2 = (min + max) / 2;
		if (distance >= dev_binb[k2]) 
		  max = k2;
		else 
		  min = k2;
	      }
	    bin_index = max - 1;
	  }

	  unsigned int warpnum = tid / (WARP_SIZE/HISTS_PER_WARP);
	  if((distance < dev_binb[min]) && (distance >= dev_binb[max]) && 
	     (!do_self || (tid + j > k)) && (tid + j < NUM_ELEMENTS))
	    {
	      atomicAdd(&warp_hists[bin_index][warpnum], 1U);
	    }
	}
    }
    
  // coalesce the histograms in a block
  unsigned int warp_index = tid & ( (NUM_HISTOGRAMS>>1) - 1);
  unsigned int bin_index = tid / (NUM_HISTOGRAMS>>1);
  for(unsigned int offset = NUM_HISTOGRAMS >> 1; offset > 0; 
      offset >>= 1)
    {
      for(unsigned int bin_base = 0; bin_base < NUM_BINS; 
	  bin_base += BLOCK_SIZE/ (NUM_HISTOGRAMS>>1))
	{
	  __syncthreads();
	  if(warp_index < offset && bin_base+bin_index < NUM_BINS )
	    {
	      unsigned long sum =
		warp_hists[bin_base + bin_index][warp_index] + 
		warp_hists[bin_base + bin_index][warp_index+offset];
	      warp_hists[bin_base + bin_index][warp_index] = sum;
	    }
	}
    }
    
  __syncthreads();
    
  // Put the results back in the real histogram
  // warp_hists[x][0] holds sum of all locations of bin x
  hist_t* hist_base = histograms + NUM_BINS * bx;
  if(tid < NUM_BINS)
    {
      hist_base[tid] = warp_hists[tid][0];
    }
}

void TPACF(hist_t * histograms, float* d_x_data, float* d_y_data, 
	   float* d_z_data)
{
  dim3 dimBlock(BLOCK_SIZE);
  dim3 dimGrid(NUM_SETS*2 + 1);

  gen_hists <<< dimGrid, dimBlock >>> ( histograms, d_x_data, 
					d_y_data, d_z_data, NUM_SETS, 
					NUM_ELEMENTS);
}
// **===-----------------------------------------------------------===**


#endif // _PRESCAN_CU_

#define CUDA_ERRCK { hipError_t err; \
  if ((err = hipGetLastError()) != hipSuccess) { \
  printf("CUDA error: %s, line %d\n", hipGetErrorString(err), __LINE__); \
  return -1; }}


int 
main( int argc, char** argv) 
{
  struct pb_TimerSet timers;
  struct pb_Parameters *params;

  pb_InitializeTimerSet( &timers );
  params = pb_ReadParameters( &argc, argv );

  //options args;
  //parse_args(argc, argv, &args);
  
  pb_SwitchToTimer( &timers, pb_TimerID_COMPUTE );

  NUM_ELEMENTS = 487;
  NUM_SETS = 1;
  int num_elements = NUM_ELEMENTS; 
  
  std::cerr << NUM_ELEMENTS << std::endl; 
  std::cerr << NUM_SETS  << std::endl;

  printf("Min distance: %f arcmin\n", min_arcmin);
  printf("Max distance: %f arcmin\n", max_arcmin);
  printf("Bins per dec: %i\n", bins_per_dec);
  printf("Total bins  : %i\n", NUM_BINS);
  std::cerr << "finish parse" << std::endl;
  //read in files 
  unsigned mem_size = (1+NUM_SETS)*num_elements*sizeof(struct cartesian);
  unsigned f_mem_size = (1+NUM_SETS)*num_elements*sizeof(float);
 std::cerr << "356"  << std::endl; 
  // container for all the points read from files
  struct cartesian *h_all_data;
  h_all_data = (struct cartesian*) malloc(mem_size); 
  // Until I can get libs fixed
  std::cerr << params->inpFiles[0]  << std::endl;
    std::cerr << "361"  << std::endl;
  // iterator for data files
  struct cartesian *working = h_all_data;
    
  // go through and read all data and random points into h_all_data
  pb_SwitchToTimer( &timers, pb_TimerID_IO );
  std::cerr << "367" << std::endl;
  //std::cerr << params->inpFiles[0]  << std::endl;
  readdatafile((char*) params->inpFiles[0], working, num_elements);
  pb_SwitchToTimer( &timers, pb_TimerID_COMPUTE );
  std::cerr << "371" << std::endl;
  working += num_elements;
  std::cerr << "finish read" << std::endl;
  for(int i = 0; i < (NUM_SETS); i++)
    {
      pb_SwitchToTimer( &timers, pb_TimerID_IO );
      readdatafile(params->inpFiles[i+1], working, num_elements);
      pb_SwitchToTimer( &timers, pb_TimerID_COMPUTE );

      working += num_elements;
    }

  // split into x, y, and z arrays
  float * h_x_data = (float*) malloc (3*f_mem_size);
  float * h_y_data = h_x_data + NUM_ELEMENTS*(NUM_SETS+1);
  float * h_z_data = h_y_data + NUM_ELEMENTS*(NUM_SETS+1);
  for(int i = 0; i < (NUM_SETS+1); ++i)
    {
      for(int j = 0; j < NUM_ELEMENTS; ++j)
	{
	  h_x_data[i*NUM_ELEMENTS+j] = h_all_data[i*NUM_ELEMENTS+j].x;
	  h_y_data[i*NUM_ELEMENTS+j] = h_all_data[i*NUM_ELEMENTS+j].y;
	  h_z_data[i*NUM_ELEMENTS+j] = h_all_data[i*NUM_ELEMENTS+j].z;
	}
    }

  // from on use x, y, and z arrays, free h_all_data
  free(h_all_data);
  pb_SwitchToTimer( &timers, pb_TimerID_COPY );

  // allocate cuda memory to hold all points
  float * d_x_data;
  hipMalloc((void**) & d_x_data, 3*f_mem_size);
  CUDA_ERRCK
  float * d_y_data = d_x_data + NUM_ELEMENTS*(NUM_SETS+1);
  float * d_z_data = d_y_data + NUM_ELEMENTS*(NUM_SETS+1);

  // allocate cuda memory to hold final histograms
  // (1 for dd, and NUM_SETS for dr and rr apiece)
  hist_t * d_hists;
  hipMalloc((void**) & d_hists, NUM_BINS*(NUM_SETS*2+1)*sizeof(hist_t) );
  CUDA_ERRCK
  pb_SwitchToTimer( &timers, pb_TimerID_COMPUTE );

  // allocate system memory for final histograms
  hist_t *new_hists = (hist_t *) malloc(NUM_BINS*(NUM_SETS*2+1)*
					sizeof(hist_t));

  // Initialize the boundary constants for bin search
  initBinB( &timers );
  CUDA_ERRCK

  // **===------------------ Kick off TPACF on CUDA------------------===**
  pb_SwitchToTimer( &timers, pb_TimerID_COPY );
  hipMemcpy(d_x_data, h_x_data, 3*f_mem_size, hipMemcpyHostToDevice);
  CUDA_ERRCK
  pb_SwitchToTimer( &timers, pb_TimerID_KERNEL );

  TPACF(d_hists, d_x_data, d_y_data, d_z_data);

  pb_SwitchToTimer( &timers, pb_TimerID_COPY );
  hipMemcpy(new_hists, d_hists, NUM_BINS*(NUM_SETS*2+1)*
	     sizeof(hist_t), hipMemcpyDeviceToHost);
  CUDA_ERRCK
  pb_SwitchToTimer( &timers, pb_TimerID_COMPUTE );
  // **===-----------------------------------------------------------===**

  // references into output histograms
  hist_t *dd_hist = new_hists;
  hist_t *rr_hist = dd_hist + NUM_BINS;
  hist_t *dr_hist = rr_hist + NUM_BINS*NUM_SETS;

  // add up values within dr and rr
  int rr[NUM_BINS];
  for(int i=0; i<NUM_BINS; i++)
    {
      rr[i] = 0;
    }
  for(int i=0; i<NUM_SETS; i++)
    {
      for(int j=0; j<NUM_BINS; j++)
	{
	  rr[j] += rr_hist[i*NUM_BINS + j];
	}
    }
  int dr[NUM_BINS];
  for(int i=0; i<NUM_BINS; i++)
    {
      dr[i] = 0;
    }
  for(int i=0; i<NUM_SETS; i++)
    {
      for(int j=0; j<NUM_BINS; j++)
	{
	  dr[j] += dr_hist[i*NUM_BINS + j];
	}
    }

  FILE *outfile;
  if ((outfile = fopen(params->outFile, "w")) == NULL)
    {
      fprintf(stderr, "Unable to open output file %s for writing, "
	      "assuming stdout\n", params->outFile);
      outfile = stdout;
    }
  
  pb_SwitchToTimer( &timers, pb_TimerID_IO );
  // print out final histograms + omega (while calculating omega)
  for(int i=0; i<NUM_BINS; i++)
    {
      fprintf(outfile, "%d\n%d\n%d\n", dd_hist[i], dr[i], rr[i]);
    }

  pb_SwitchToTimer( &timers, pb_TimerID_COMPUTE );
  if(outfile != stdout)
    fclose(outfile);

  // cleanup memory
  free(new_hists);
  free( h_x_data);

  pb_SwitchToTimer( &timers, pb_TimerID_COPY );
  hipFree( d_hists );
  hipFree( d_x_data );

  pb_SwitchToTimer(&timers, pb_TimerID_NONE);
  pb_PrintTimerSet(&timers);
  pb_FreeParameters(params);
}

