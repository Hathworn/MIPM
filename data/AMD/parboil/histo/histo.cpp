#include "hip/hip_runtime.h"

#include "parboil.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <hip/hip_runtime.h>

#define KB                      8
#define BINS_PER_BLOCK          (KB * 1024)
#define BLOCK_X         14

#define PRESCAN_THREADS     512
#define PRESCAN_BLOCKS_X    64

#if KB == 24
        #define THREADS         768
#elif KB == 48
        #define THREADS         1024
#else //KB == 16 or other
        #define THREADS         512
#endif

#define UNROLL 16
#define UINT8_MAX 255
#define UINT32_MAX 4294967295


typedef struct{
  unsigned char B;
  unsigned char G;
  unsigned char R;
} RGB;

typedef struct {
  unsigned int filesz;
  unsigned short creator1;
  unsigned short creator2;
  unsigned int bmp_offset;
} bmpfile_header_t;

typedef struct {
  unsigned int header_sz;
  unsigned int width;
  unsigned int height;
  unsigned short nplanes;
  unsigned short bitspp;
  unsigned int compress_type;
  unsigned int bmp_bytesz;
  unsigned int hres;
  unsigned int vres;
  unsigned int ncolors;
  unsigned int nimpcolors;
} bmp_dib_header_t;

typedef enum {
  BI_RGB = 0,
  BI_RLE8,
  BI_RLE4,
  BI_BITFIELDS,
  BI_JPEG,
  BI_PNG,
} bmp_compression_method_t;

typedef struct{
  unsigned char magic[2];
  bmpfile_header_t file_header;
  bmp_dib_header_t dib_header;
  unsigned int* palette;
  void* pixel_map;
} bmp_image;

void create_bmp(RGB* bitmap, int height, int width, const char* filename){
    bmp_image image;

    int padded_width = 4*(((width*24)+31)/32);
    padded_width -= width*sizeof(RGB);

    char* pad = (char*) calloc (padded_width, sizeof(char));

    image.magic[0]='B';
    image.magic[1]='M';

    image.file_header.filesz = 2*sizeof(char) + sizeof(bmpfile_header_t) + sizeof(bmp_dib_header_t) + height*width*sizeof(RGB);
    image.file_header.creator1 = image.file_header.creator2 = 0;
    image.file_header.bmp_offset = 2*sizeof(char) + sizeof(bmpfile_header_t) + sizeof(bmp_dib_header_t);

    image.dib_header.header_sz = 40;//sizeof(bmp_dib_header_t);
    image.dib_header.width = width;
    image.dib_header.height = height;
    image.dib_header.nplanes = 1;
    image.dib_header.bitspp = 24;
    image.dib_header.compress_type = 0;
    image.dib_header.bmp_bytesz = width*height*sizeof(RGB);
    image.dib_header.hres = 0;
    image.dib_header.vres = 0;
    image.dib_header.ncolors = 0;
    image.dib_header.nimpcolors = 0;

    FILE* out_file = fopen(filename,"wb");

    fwrite(image.magic,sizeof(char),2,out_file);
    fwrite(&(image.file_header),sizeof(char),sizeof(bmpfile_header_t),out_file);
    fwrite(&(image.dib_header),sizeof(char),sizeof(bmp_dib_header_t),out_file);

    int h;
    for (h = height-1; h >= 0; h--){
      fwrite(&bitmap[h*width],sizeof(RGB),width,out_file);
      fwrite(pad,sizeof(char),padded_width,out_file);
    }

    fclose(out_file);
}




RGB HSVtoRGB( float h, float s, float v )
{
    int i;
    float f, p, q, t;
    float r, g, b;
    RGB value={0,0,0};

    if( s == 0 ) {
        r = g = b = v;
        return value;
    }
    h /= 60;
    i = floor( h );
    f = h - i;
    p = v * ( 1 - s );
    q = v * ( 1 - s * f );
    t = v * ( 1 - s * ( 1 - f ) );
    switch( i ) {
        case 0:
            r = v; g = t; b = p;
            break;
        case 1:
            r = q; g = v; b = p;
            break;
        case 2:
            r = p; g = v; b = t;
            break;
        case 3:
            r = p; g = q; b = v;
            break;
        case 4:
            r = t; g = p; b = v;
            break;
        default:
            r = v; g = p; b = q;
            break;
    }

    unsigned int temp = r*255;
    value.R = temp;
    temp = g*255;
    value.G = temp;
    temp = b*255;
    value.B = temp;

    return value;
}

void dump_histo_img(unsigned char* histo, unsigned int height, unsigned int width, const char *filename)
{
    RGB* pixel_map = (RGB*) malloc (height*width*sizeof(RGB));

    for (size_t y = 0; y < height; ++y)
    {
        for (size_t x = 0; x < width; ++x)
        {
            unsigned char value = histo[y * width + x];

            if (value == 0){
                pixel_map[y*width+x].R = 0;
                pixel_map[y*width+x].G = 0;
                pixel_map[y*width+x].B = 0;
            } else {
                pixel_map[y*width+x] = HSVtoRGB(0.0,1.0,cbrt(1+ 63.0*((float)value)/((float)UINT8_MAX))/4);
            }
        }
    }
    create_bmp(pixel_map, height, width, filename);
    free(pixel_map);
}


__device__ void calculateBin (
        const unsigned int bin,
        uchar4 *sm_mapping)
{
        unsigned char offset  =  bin        %   4;
        unsigned char indexlo = (bin >>  2) % 256;
        unsigned char indexhi = (bin >> 10) %  KB;
        unsigned char block   =  bin / BINS_PER_BLOCK;

        offset *= 8;

        uchar4 sm;
        sm.x = block;
        sm.y = indexhi;
        sm.z = indexlo;
        sm.w = offset;

        *sm_mapping = sm;
}


__device__ void testIncrementGlobal (
        unsigned int *global_histo,
        unsigned int sm_range_min,
        unsigned int sm_range_max,
        const uchar4 sm)
{
        const unsigned int range = sm.x;
        const unsigned int indexhi = sm.y;
        const unsigned int indexlo = sm.z;
        const unsigned int offset  = sm.w;

        /* Scan for inputs that are outside the central region of histogram */
        if (range < sm_range_min || range > sm_range_max)
        {
                const unsigned int bin = range * BINS_PER_BLOCK + offset / 8 + (indexlo << 2) + (indexhi << 10);
                const unsigned int bin_div2 = bin / 2;
                const unsigned int bin_offset = (bin % 2 == 1) ? 16 : 0;

                unsigned int old_val = global_histo[bin_div2];
                unsigned short old_bin = (old_val >> bin_offset) & 0xFFFF;

                if (old_bin < 255)
                {
                        atomicAdd (&global_histo[bin_div2], 1 << bin_offset);
                }
        }
}

__device__ void testIncrementLocal (
        unsigned int *global_overflow,
        unsigned int smem[KB][256],
        const unsigned int myRange,
        const uchar4 sm)
{
        const unsigned int range = sm.x;
        const unsigned int indexhi = sm.y;
        const unsigned int indexlo = sm.z;
        const unsigned int offset  = sm.w;

        /* Scan for inputs that are inside the central region of histogram */
        if (range == myRange)
        {
                /* Atomically increment shared memory */
                unsigned int add = (unsigned int)(1 << offset);
                unsigned int prev = atomicAdd (&smem[indexhi][indexlo], add);

                /* Check if current bin overflowed */
                unsigned int prev_bin_val = (prev >> offset) & 0x000000FF;

                /* If there was an overflow, record it and record if it cascaded into other bins */
                if (prev_bin_val == 0x000000FF)
                {
                        const unsigned int bin =
                                range * BINS_PER_BLOCK +
                                offset / 8 + (indexlo << 2) + (indexhi << 10);

                        bool can_overflow_to_bin_plus_1 = (offset < 24) ? true : false;
                        bool can_overflow_to_bin_plus_2 = (offset < 16) ? true : false;
                        bool can_overflow_to_bin_plus_3 = (offset <  8) ? true : false;

                        bool overflow_into_bin_plus_1 = false;
                        bool overflow_into_bin_plus_2 = false;
                        bool overflow_into_bin_plus_3 = false;

                        unsigned int prev_bin_plus_1_val = (prev >> (offset +  8)) & 0x000000FF;
                        unsigned int prev_bin_plus_2_val = (prev >> (offset + 16)) & 0x000000FF;
                        unsigned int prev_bin_plus_3_val = (prev >> (offset + 24)) & 0x000000FF;

                        if (can_overflow_to_bin_plus_1 &&        prev_bin_val == 0x000000FF) overflow_into_bin_plus_1 = true;
                        if (can_overflow_to_bin_plus_2 && prev_bin_plus_1_val == 0x000000FF) overflow_into_bin_plus_2 = true;
                        if (can_overflow_to_bin_plus_3 && prev_bin_plus_2_val == 0x000000FF) overflow_into_bin_plus_3 = true;

                        unsigned int bin_plus_1_add;
                        unsigned int bin_plus_2_add;
                        unsigned int bin_plus_3_add;

                        if (overflow_into_bin_plus_1) bin_plus_1_add = (prev_bin_plus_1_val < 0x000000FF) ? 0xFFFFFFFF : 0x000000FF;
                        if (overflow_into_bin_plus_2) bin_plus_2_add = (prev_bin_plus_2_val < 0x000000FF) ? 0xFFFFFFFF : 0x000000FF;
                        if (overflow_into_bin_plus_3) bin_plus_3_add = (prev_bin_plus_3_val < 0x000000FF) ? 0xFFFFFFFF : 0x000000FF;

                                                      atomicAdd (&global_overflow[bin],   256);
                        if (overflow_into_bin_plus_1) atomicAdd (&global_overflow[bin+1], bin_plus_1_add);
                        if (overflow_into_bin_plus_2) atomicAdd (&global_overflow[bin+2], bin_plus_2_add);
                        if (overflow_into_bin_plus_3) atomicAdd (&global_overflow[bin+3], bin_plus_3_add);
                }
        }
}

__device__ void clearMemory (unsigned int smem[KB][256])
{
        for (int i = threadIdx.x; i < BINS_PER_BLOCK / 4; i += blockDim.x)
        {
                ((unsigned int*)smem)[i] = 0;
        }
}

__device__ void copyMemory (unsigned int *dst, unsigned int src[KB][256])
{
        for (int i = threadIdx.x; i < BINS_PER_BLOCK/4; i += blockDim.x)
        {
                atomicAdd(dst+i*4, (((unsigned int*)src)[i] >> 0) & 0xFF);
                atomicAdd(dst+i*4+1, (((unsigned int*)src)[i] >> 8) & 0xFF);
                atomicAdd(dst+i*4+2, (((unsigned int*)src)[i] >> 16) & 0xFF);
                atomicAdd(dst+i*4+3, (((unsigned int*)src)[i] >> 24) & 0xFF);
        }
}

__global__ void histo_prescan_kernel (
        unsigned int* input,
        int size,
        unsigned int* minmax);

__global__ void histo_main_kernel (
        uchar4 *sm_mappings,
        unsigned int num_elements,
        unsigned int sm_range_min,
        unsigned int sm_range_max,
        unsigned int histo_height,
        unsigned int histo_width,
        unsigned int *global_subhisto,
        unsigned int *global_histo,
        unsigned int *global_overflow);

__global__ void histo_intermediates_kernel (
        uint2 *input,
        unsigned int height,
        unsigned int width,
        unsigned int input_pitch,
        uchar4 *sm_mappings);

__global__ void histo_final_kernel (
        unsigned int sm_range_min,
        unsigned int sm_range_max,
        unsigned int histo_height,
        unsigned int histo_width,
        unsigned int *global_subhisto,
        unsigned int *global_histo,
        unsigned int *global_overflow,
        unsigned int *final_histo);

/******************************************************************************
* Implementation: GPU
* Details:
* in the GPU implementation of histogram, we begin by computing the span of the
* input values into the histogram. Then the histogramming computation is carried
* out by a (BLOCK_X, BLOCK_Y) sized grid, where every group of Y (same X)
* computes its own partial histogram for a part of the input, and every Y in the
* group exclusively writes to a portion of the span computed in the beginning.
* Finally, a reduction is performed to combine all the partial histograms into
* the final result.
******************************************************************************/

int main(int argc, char* argv[]) {
  struct pb_TimerSet *timersPtr;
  struct pb_Parameters *parameters;

  parameters = pb_ReadParameters(&argc, argv);
  if (!parameters)
    return -1;

  if(!parameters->inpFiles[0]){
    fputs("Input file expected\n", stderr);
    return -1;
  }

  timersPtr = (struct pb_TimerSet *) malloc (sizeof(struct pb_TimerSet));
  
  
  //appendDefaultTimerSet(NULL);
  
  
  if (timersPtr == NULL) {
    fprintf(stderr, "Could not append default timer set!\n");
    exit(1);
  }
  
  struct pb_TimerSet timers = *timersPtr;
  
//  pb_CreateTimer(&timers, "myTimer!", 0);
  
  
  pb_InitializeTimerSet(&timers);
  
  pb_AddSubTimer(&timers, "Input", pb_TimerID_IO);
  pb_AddSubTimer(&timers, "Output", pb_TimerID_IO);
  
  char *prescans = "PreScanKernel";
  char *postpremems = "PostPreMems";
  char *intermediates = "IntermediatesKernel";
  char *mains = "MainKernel";
  char *finals = "FinalKernel";
  
  pb_AddSubTimer(&timers, prescans, pb_TimerID_KERNEL);
  pb_AddSubTimer(&timers, postpremems, pb_TimerID_KERNEL);
  pb_AddSubTimer(&timers, intermediates, pb_TimerID_KERNEL);
  pb_AddSubTimer(&timers, mains, pb_TimerID_KERNEL);
  pb_AddSubTimer(&timers, finals, pb_TimerID_KERNEL);
  
//  pb_SwitchToTimer(&timers, pb_TimerID_IO);
  pb_SwitchToSubTimer(&timers, "Input", pb_TimerID_IO);

  int numIterations;
  if (argc >= 2){
    numIterations = atoi(argv[1]);
  } else {
    fputs("Expected at least one command line argument\n", stderr);
    return -1;
  }

  unsigned int img_width, img_height;
  unsigned int histo_width, histo_height;

  FILE* f = fopen(parameters->inpFiles[0],"rb");
  int result = 0;

  result += fread(&img_width,    sizeof(unsigned int), 1, f);
  result += fread(&img_height,   sizeof(unsigned int), 1, f);
  result += fread(&histo_width,  sizeof(unsigned int), 1, f);
  result += fread(&histo_height, sizeof(unsigned int), 1, f);

  if (result != 4){
    fputs("Error reading input and output dimensions from file\n", stderr);
    return -1;
  }

  unsigned int* img = (unsigned int*) malloc (img_width*img_height*sizeof(unsigned int));
  unsigned char* histo = (unsigned char*) calloc (histo_width*histo_height, sizeof(unsigned char));

  result = fread(img, sizeof(unsigned int), img_width*img_height, f);

  fclose(f);

  if (result != img_width*img_height){
    fputs("Error reading input array from file\n", stderr);
    return -1;
  }

  int even_width = ((img_width+1)/2)*2;
  unsigned int* input;
  unsigned int* ranges;
  uchar4* sm_mappings;
  unsigned int* global_subhisto;
  unsigned short* global_histo;
  unsigned int* global_overflow;
  unsigned char* final_histo;

  hipMalloc((void**)&input           , even_width*(((img_height+UNROLL-1)/UNROLL)*UNROLL)*sizeof(unsigned int));
  hipMalloc((void**)&ranges          , 2*sizeof(unsigned int));
  hipMalloc((void**)&sm_mappings     , img_width*img_height*sizeof(uchar4));
  hipMalloc((void**)&global_subhisto , img_width*histo_height*sizeof(unsigned int));
  hipMalloc((void**)&global_histo    , img_width*histo_height*sizeof(unsigned short));
  hipMalloc((void**)&global_overflow , img_width*histo_height*sizeof(unsigned int));
  hipMalloc((void**)&final_histo     , img_width*histo_height*sizeof(unsigned char));

  hipMemset(final_histo           ,0 , img_width*histo_height*sizeof(unsigned char));

  for (int y=0; y < img_height; y++){
    hipMemcpy(&(((unsigned int*)input)[y*even_width]),&img[y*img_width],img_width*sizeof(unsigned int), hipMemcpyHostToDevice);
  }
  
  //pb_SwitchToTimer(&timers, pb_TimerID_KERNEL);
  pb_SwitchToSubTimer(&timers, NULL, pb_TimerID_KERNEL);
  
  
  unsigned int *zeroData = (unsigned int *) calloc(img_width*histo_height, sizeof(unsigned int));
  

  for (int iter = 0; iter < numIterations; iter++) {
    unsigned int ranges_h[2] = {UINT32_MAX, 0};

    hipMemcpy(ranges,ranges_h, 2*sizeof(unsigned int), hipMemcpyHostToDevice);


    pb_SwitchToSubTimer(&timers, prescans , pb_TimerID_KERNEL);

    histo_prescan_kernel<<<dim3(PRESCAN_BLOCKS_X),dim3(PRESCAN_THREADS)>>>((unsigned int*)input, (int)(img_height*img_width), ranges);

    pb_SwitchToSubTimer(&timers, postpremems , pb_TimerID_KERNEL);

    hipMemcpy(ranges_h,ranges, 2*sizeof(unsigned int), hipMemcpyDeviceToHost);

    hipMemcpy(global_subhisto,zeroData, img_width*histo_height*sizeof(unsigned int), hipMemcpyHostToDevice);
    //    hipMemset(global_subhisto,0,img_width*histo_height*sizeof(unsigned int));

    pb_SwitchToSubTimer(&timers, intermediates, pb_TimerID_KERNEL);

    histo_intermediates_kernel<<<dim3((img_height + UNROLL-1)/UNROLL), dim3((img_width+1)/2)>>>(
                (uint2*)(input),
                (unsigned int)img_height,
                (unsigned int)img_width,
                (img_width+1)/2,
                (uchar4*)(sm_mappings)
    );
    
    pb_SwitchToSubTimer(&timers, mains, pb_TimerID_KERNEL);    
    
    histo_main_kernel<<<dim3(BLOCK_X, ranges_h[1]-ranges_h[0]+1), dim3(THREADS)>>>(
                (uchar4*)(sm_mappings),
                img_height*img_width,
                ranges_h[0], ranges_h[1],
                histo_height, histo_width,
                (unsigned int*)(global_subhisto),
                (unsigned int*)(global_histo),
                (unsigned int*)(global_overflow)
    );
    
    pb_SwitchToSubTimer(&timers, finals, pb_TimerID_KERNEL);    

    histo_final_kernel<<<dim3(BLOCK_X*3), dim3(512)>>>(
                ranges_h[0], ranges_h[1],
                histo_height, histo_width,
                (unsigned int*)(global_subhisto),
                (unsigned int*)(global_histo),
                (unsigned int*)(global_overflow),
                (unsigned int*)(final_histo)
    );
  }

  pb_SwitchToSubTimer(&timers, "Output", pb_TimerID_IO);
  //  pb_SwitchToTimer(&timers, pb_TimerID_IO);


  hipMemcpy(histo,final_histo, histo_height*histo_width*sizeof(unsigned char), hipMemcpyDeviceToHost);

  hipFree(input);
  hipFree(ranges);
  hipFree(sm_mappings);
  hipFree(global_subhisto);
  hipFree(global_histo);
  hipFree(global_overflow);
  hipFree(final_histo);

  if (parameters->outFile) {
    dump_histo_img(histo, histo_height, histo_width, parameters->outFile);
  }

  //pb_SwitchToTimer(&timers, pb_TimerID_COMPUTE);
  pb_SwitchToSubTimer(&timers, NULL, pb_TimerID_COMPUTE);

  free(img);
  free(histo);

  pb_SwitchToSubTimer(&timers, NULL, pb_TimerID_NONE);
  
  printf("\n");
  pb_PrintTimerSet(&timers);
  pb_FreeParameters(parameters);

  return 0;
}


__global__ void histo_prescan_kernel (unsigned int* input, int size, unsigned int* minmax)
{
    __shared__ float Avg[PRESCAN_THREADS];
    __shared__ float StdDev[PRESCAN_THREADS];

    int stride = size/gridDim.x;
    int addr = blockIdx.x*stride+threadIdx.x;
    int end = blockIdx.x*stride + stride/8; // Only sample 1/8th of the input data

    // Compute the average per thread
    float avg = 0.0;
    unsigned int count = 0;
    while (addr < end){
        avg += input[addr];
        count++;
	addr += blockDim.x;
    }
    avg /= count;
    Avg[threadIdx.x] = avg;

    // Compute the standard deviation per thread
    int addr2 = blockIdx.x*stride+threadIdx.x;
    float stddev = 0;
    while (addr2 < end){
        stddev += (input[addr2]-avg)*(input[addr2]-avg);
        addr2 += blockDim.x;
    }
    stddev /= count;
    StdDev[threadIdx.x] = sqrtf(stddev);

#define SUM(stride__)\
if(threadIdx.x < stride__){\
    Avg[threadIdx.x] += Avg[threadIdx.x+stride__];\
    StdDev[threadIdx.x] += StdDev[threadIdx.x+stride__];\
}

    // Add all the averages and standard deviations from all the threads
    // and take their arithmetic average (as a simplified approximation of the
    // real average and standard deviation.
#if (PRESCAN_THREADS >= 32)    
    for (int stride = PRESCAN_THREADS/2; stride >= 32; stride = stride >> 1){
	__syncthreads();
	SUM(stride);
    }
#endif
#if (PRESCAN_THREADS >= 16)
    SUM(16);
#endif
#if (PRESCAN_THREADS >= 8)
    SUM(8);
#endif
#if (PRESCAN_THREADS >= 4)
    SUM(4);
#endif
#if (PRESCAN_THREADS >= 2)
    SUM(2);
#endif

    if (threadIdx.x == 0){
        float avg = Avg[0]+Avg[1];
	avg /= PRESCAN_THREADS;
	float stddev = StdDev[0]+StdDev[1];
	stddev /= PRESCAN_THREADS;

        // Take the maximum and minimum range from all the blocks. This will
        // be the final answer. The standard deviation is taken out to 10 sigma
        // away from the average. The value 10 was obtained empirically.
	    atomicMin(minmax,((unsigned int)(avg-10*stddev))/(KB*1024));
        atomicMax(minmax+1,((unsigned int)(avg+10*stddev))/(KB*1024));
    }
}




__global__ void histo_intermediates_kernel (
        uint2 *input,
        unsigned int height,
        unsigned int width,
        unsigned int input_pitch,
        uchar4 *sm_mappings)
{
        unsigned int line = UNROLL * blockIdx.x;// 16 is the unroll factor;

        uint2 *load_bin = input + line * input_pitch + threadIdx.x;

        unsigned int store = line * width + threadIdx.x;
        bool skip = (width % 2) && (threadIdx.x == (blockDim.x - 1));

        #pragma unroll
        for (int i = 0; i < UNROLL; i++)
        {
                uint2 bin_value = *load_bin;

                calculateBin (
                        bin_value.x,
                        &sm_mappings[store]
                );

                if (!skip) calculateBin (
                        bin_value.y,
                        &sm_mappings[store + blockDim.x]
                );

                load_bin += input_pitch;
                store += width;
        }
}


__global__ void histo_final_kernel (
    unsigned int sm_range_min, 
    unsigned int sm_range_max,
    unsigned int histo_height, 
    unsigned int histo_width,
    unsigned int *global_subhisto,
    unsigned int *global_histo,
    unsigned int *global_overflow,
    unsigned int *final_histo) //final output
{
    unsigned int start_offset = threadIdx.x + blockIdx.x * blockDim.x;
    const ushort4 zero_short  = {0, 0, 0, 0};
    const uint4 zero_int      = {0, 0, 0, 0};

    unsigned int size_low_histo = sm_range_min * BINS_PER_BLOCK;
    unsigned int size_mid_histo = (sm_range_max - sm_range_min +1) * BINS_PER_BLOCK;

    /* Clear lower region of global histogram */
    for (unsigned int i = start_offset; i < size_low_histo/4; i += gridDim.x * blockDim.x)
    {
        ushort4 global_histo_data = ((ushort4*)global_histo)[i];
        ((ushort4*)global_histo)[i] = zero_short;

        global_histo_data.x = min (global_histo_data.x, 255);
        global_histo_data.y = min (global_histo_data.y, 255);
        global_histo_data.z = min (global_histo_data.z, 255);
        global_histo_data.w = min (global_histo_data.w, 255);

        uchar4 final_histo_data = {
            global_histo_data.x,
            global_histo_data.y,
            global_histo_data.z,
            global_histo_data.w
        };

        ((uchar4*)final_histo)[i] = final_histo_data;
    }

    /* Clear the middle region of the overflow buffer */
    for (unsigned int i = (size_low_histo/4) + start_offset; i < (size_low_histo+size_mid_histo)/4; i += gridDim.x * blockDim.x)
    {
        uint4 global_histo_data = ((uint4*)global_overflow)[i];
        ((uint4*)global_overflow)[i] = zero_int;

        uint4 internal_histo_data = {
            global_histo_data.x,
            global_histo_data.y,
            global_histo_data.z,
            global_histo_data.w
        };

        unsigned int bin4in0 = ((unsigned int*)global_subhisto)[i*4];
        unsigned int bin4in1 = ((unsigned int*)global_subhisto)[i*4+1];
        unsigned int bin4in2 = ((unsigned int*)global_subhisto)[i*4+2];
        unsigned int bin4in3 = ((unsigned int*)global_subhisto)[i*4+3];

        internal_histo_data.x = min (bin4in0, 255);
        internal_histo_data.y = min (bin4in1, 255);
        internal_histo_data.z = min (bin4in2, 255);
        internal_histo_data.w = min (bin4in3, 255);

        uchar4 final_histo_data = {
            internal_histo_data.x,
            internal_histo_data.y,
            internal_histo_data.z,
            internal_histo_data.w
        };

        ((uchar4*)final_histo)[i] = final_histo_data;
    }

    /* Clear the upper region of global histogram */
    for (unsigned int i = ((size_low_histo+size_mid_histo)/4) + start_offset; i < (histo_height*histo_width)/4; i += gridDim.x * blockDim.x)
    {
        ushort4 global_histo_data = ((ushort4*)global_histo)[i];
        ((ushort4*)global_histo)[i] = zero_short;

        global_histo_data.x = min (global_histo_data.x, 255);
        global_histo_data.y = min (global_histo_data.y, 255);
        global_histo_data.z = min (global_histo_data.z, 255);
        global_histo_data.w = min (global_histo_data.w, 255);

        uchar4 final_histo_data = {
            global_histo_data.x,
            global_histo_data.y,
            global_histo_data.z,
            global_histo_data.w
        };

        ((uchar4*)final_histo)[i] = final_histo_data;
    }
}



__global__ void histo_main_kernel (
        uchar4 *sm_mappings,
        unsigned int num_elements,
        unsigned int sm_range_min,
        unsigned int sm_range_max,
        unsigned int histo_height,
        unsigned int histo_width,
        unsigned int *global_subhisto,
        unsigned int *global_histo,
        unsigned int *global_overflow)
{
        /* Most optimal solution uses 24 * 1024 bins per threadblock */
        __shared__ unsigned int sub_histo[KB][256];

        /* Each threadblock contributes to a specific 24KB range of histogram,
         * and also scans every N-th line for interesting data.  N = gridDim.x
         */
        unsigned int local_scan_range = sm_range_min + blockIdx.y;
        unsigned int local_scan_load = blockIdx.x * blockDim.x + threadIdx.x;

        clearMemory (sub_histo);
        __syncthreads();

        if (blockIdx.y == 0)
        {
                /* Loop through and scan the input */
                while (local_scan_load < num_elements)
                {
                        /* Read buffer */
                        uchar4 sm = sm_mappings[local_scan_load];
                        local_scan_load += blockDim.x * gridDim.x;

                        /* Check input */
                        testIncrementLocal (
                                global_overflow,
                                sub_histo,
                                local_scan_range,
                                sm
                        );
                        testIncrementGlobal (
                                global_histo,
                                sm_range_min,
                                sm_range_max,
                                sm
                        );
                }
        }
        else
        {
                /* Loop through and scan the input */
                while (local_scan_load < num_elements)
                {
                        /* Read buffer */
                        uchar4 sm = sm_mappings[local_scan_load];
                        local_scan_load += blockDim.x * gridDim.x;

                        /* Check input */
                        testIncrementLocal (
                                global_overflow,
                                sub_histo,
                                local_scan_range,
                                sm
                        );
                }
        }

        /* Store sub histogram to global memory */
        unsigned int store_index = (local_scan_range * BINS_PER_BLOCK);

        __syncthreads();
        copyMemory (&(global_subhisto[store_index]), sub_histo);
}
