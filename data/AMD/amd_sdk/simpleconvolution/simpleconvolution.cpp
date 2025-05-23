/**********************************************************************
Copyright �2015 Advanced Micro Devices, Inc. All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

�   Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
�   Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or
 other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY
 DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
 OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
********************************************************************/




/**********************************************************************
Copyright �2015 Advanced Micro Devices, Inc. All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

�   Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
�   Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or
 other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY
 DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
 OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
********************************************************************/


#ifndef SIMPLECONVOLUTION_H_
#define SIMPLECONVOLUTION_H_

/**
 * Header Files
 */
#include <hip/hip_runtime.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <string.h>
#include "../include/HIPUtil.hpp"
/**
 ********************************************************************************
 * @file <filterCoeff.h>
 *
 * @brief Contains the filter coefficients.
 *
 ********************************************************************************
 */

#ifndef __SEPFILTERCOEFF__H
#define __SEPFILTERCOEFF__H

/********************************************************************************
 *
 * Sobel 3X3 filter:
 *                      1 0 -1
 *                      2 0 -2
 *                      1 0 -1
 *
 * This is a separable filter. The equivalent separable coefficients are:
 * v = {1.0f, 0.0f, -1.0f};
 * h = {1.0f, 2.0f, 1.0f};
 *********************************************************************************/
float SOBEL_FILTER_3x3[3*3] = 
							{
								 1.0f,  0.0f,  -1.0f,
								 2.0f,  0.0f,  -2.0f,
								 1.0f,  0.0f,  -1.0f
							};
float SOBEL_FILTER_3x3_pass1[3] = { 1.0f, 0.0f, -1.0f };
float SOBEL_FILTER_3x3_pass2[3] = { 1.0f, 2.0f, 1.0f };
/********************************************************************************
 *
 * Sobel 5X5 filter:
 *                       1 2 0 -2 -1; 
 *                       4 8 0 -8 -4;
 *                       6 12 0 -12 -6;
 *                       4 8 0 -8 -4;
 *                       1 2 0 -2 -1;
 *
 * This is a separable filter. The equivalent separable coefficients are:
 * v = {1.0f,  2.0f,   0.0f,  -2.0f,  -1.0f };
 * h = {1.0f,  4.0f,   6.0f,   4.0f,   1.0f };
 *********************************************************************************/
float SOBEL_FILTER_5x5[5*5] = 
							{
								 1.0f,  2.0f,   0.0f,  -2.0f,  -1.0f,
								 4.0f,  8.0f,   0.0f,  -8.0f,  -4.0f,
								 6.0f,  12.0f,  0.0f,  -12.0f, -6.0f,
								 4.0f,  8.0f,   0.0f,  -8.0f,  -4.0f,
								 1.0f,  2.0f,   0.0f,  -2.0f,  -1.0f
							};
float SOBEL_FILTER_5x5_pass1[5] = { 1.0f,  2.0f,   0.0f,  -2.0f,  -1.0f };
float SOBEL_FILTER_5x5_pass2[5] = { 1.0f,  4.0f,   6.0f,  4.0f,  1.0f };

#endif

#define mad(a,b,c) (a*b +c)
#define GROUP_SIZE 256
#define SAMPLE_VERSION "AMD-APP-SDK-vx.y.z.s"

using namespace appsdk;

/**
 * SimpleConvolution
 * Class implements HIP SimpleConvolution sample
 */

class SimpleConvolution
{
        unsigned int                  seed;               /**< Seed value for random number generation */
        double    setupTime;                              /**< Time for setting up HIP */
        double    totalNonSeparableKernelTime;            /**< Time for Non-Separable kernel execution */
	double    totalSeparableKernelTime;	          /**< Time for Separable kernel execution */

        int       width;                                  /**< Width of the Input array */
        int       height;                                 /**< Height of the Input array */
	int	  paddedWidth;	                          /**< Padded Width of the Input array */
	int	  paddedHeight;	                          /**< Padded Height of the Input array */
        unsigned int      *input;		          /**< Input array */
	unsigned int *paddedInput;	                  /**< Padded Input array */
	float     *tmpOutput;                             /**< Temporary Output array to store result of first pass kernel */
        int	*output;                                  /**< Non-Separable Output array */
	int	*outputSep;                               /**< Separable Output array */
        float     *mask;                                  /**< mask array */
        unsigned int      maskWidth;                      /**< mask dimensions */
        unsigned int      maskHeight;                     /**< mask dimensions */
	float     *rowFilter;	                          /**< Row-wise filter for pass1 */
	float     *colFilter;	                          /**< Column-wise filter for pass2 */
	unsigned int	filterSize;		          /**< FilterSize */
	int	filterRadius;		                  /**< FilterRadius */
        int  	*verificationOutput;                      /**< Output array for reference implementation */

        unsigned int*       inputBuffer;        /**< memory input buffer */
	float*       tmpOutputBuffer;    /**<memory temporary output buffer */
        int*       outputBuffer;       /**<  memory output buffer for Non-Separable kernel */
	int*      outputBufferSep;    /**<  memory output buffer for Separable Kernel */
        float*       maskBuffer;         /**<  memory mask buffer */
	float*       rowFilterBuffer;    /**< memory row filter buffer */
	float*      colFilterBuffer;    /**< memory col filter buffer */

        unsigned int       globalThreads;   /**< global NDRange */
        unsigned int       localThreads;    /**< Local Work Group Size */
		int			 localSize;			 /**< User-specified Local Work Group Size */
        int          iterations;         /**< Number of iterations to execute kernel */

        SDKTimer *sampleTimer;      /**< SDKTimer object */

    public:

        HIPCommandArgs   *sampleArgs;   /**< HIPCommand argument class */

        /**
         * Constructor
         * Initialize member variables
         */
        SimpleConvolution(int width_ = 512, int height_ = 512, int iterations_ = 1, unsigned int seed_ = 123)
        {
            sampleArgs = new HIPCommandArgs();
            sampleTimer = new SDKTimer();
            sampleArgs->sampleVerStr = SAMPLE_VERSION;
            seed = seed_;
            input = NULL;
            output = NULL;
			tmpOutput = NULL;
			outputSep = NULL;
            mask   = NULL;
            verificationOutput = NULL;
            width = width_;
            height = height_;
            setupTime = 0;
			totalNonSeparableKernelTime = 0;
            totalSeparableKernelTime = 0;
            iterations = iterations_;
			localSize = GROUP_SIZE;
        }

        /**
         * Allocate and initialize host memory array with random values
         * @return SDK_SUCCESS on success and SDK_FAILURE0 on failure
         */
        int setupSimpleConvolution();

        /**
         * Calculates the value of WorkGroup Size based in global NDRange
         * and kernel properties
         * @return 0 on success and nonzero on failure
         */
        int setWorkGroupSize();

        /**
         * HIP related initialisations.
         * Set up Context, Device list, Command Queue, Memory buffers
         * Build kernel program executable
         * @return SDK_SUCCESS on success and SDK_FAILURE0 on failure
         */
        int setupHIP();

        /**
		* Call both non-separable and separable HIP implementation of 
		* Convolution
		* @return SDK_SUCCESS on success and SDK_FAILURE0 on failure
		*/
        int runKernels();

		/**
         * Set values for Non-Separable kernels' arguments, enqueue calls to the kernels
         * on to the command queue, wait till end of kernel execution.
         * Get kernel start and end time if timing is enabled
         * @return SDK_SUCCESS on success and SDK_FAILURE0 on failure
         */
	int runNonSeparableKernels();

		/**
         * Set values for Separable kernels' arguments, enqueue calls to the kernels
         * on to the command queue, wait till end of kernel execution.
         * Get kernel start and end time if timing is enabled
         * @return SDK_SUCCESS on success and SDK_FAILURE0 on failure
         */
	int runSeparableKernels();

        /**
         * Reference CPU implementation of Simple Convolution
         * for performance comparison
         */
        void CPUReference();

        /**
         * Override from SDKSample. Print sample stats.
         */
        void printStats();

        /**
         * Override from SDKSample. Initialize
         * command line parser, add custom options
         * @return SDK_SUCCESS on success and SDK_FAILURE0 on failure
         */
        int initialize();

        /**
         * Override from SDKSample, adjust width and height
         * of execution domain, perform all sample setup
         * @return SDK_SUCCESS on success and SDK_FAILURE0 on failure
         */
        int setup();

        /**
         * Override from SDKSample
         * Run HIP SimpleConvolution kernel
         * @return SDK_SUCCESS on success and SDK_FAILURE0 on failure
         */
        int run();

        /**
         * Override from SDKSample
         * Cleanup memory allocations
         * @return SDK_SUCCESS on success and SDK_FAILURE0 on failure
         */
        int cleanup();

        /**
         * Override from SDKSample
         * Verify against reference implementation
         * @return SDK_SUCCESS on success and SDK_FAILURE0 on failure
         */
        int verifyResults();
};



#endif


/**
 * The kernel has two implementation of convolution. 
 * 1. Non-Separable Convolution 
 * 2. Separable Convolution
*/


/**
 * NonSeparableConvolution
 * is where each pixel of the output image
 * is the weighted sum of the neighbourhood pixels of the input image
 * The neighbourhood is defined by the dimensions of the mask and 
 * weight of each neighbour is defined by the mask itself.
 * @param input  Padded Input  matrix on which convolution is to be performed
 * @param mask   mask matrix using which convolution was to be performed
 * @param output Output matrix after performing convolution
 * @param inputDimensions dimensions of the input matrix
 * @param maskDimensions  dimensions of the mask matrix
 * @param nExWidth          Size of padded input width
 */

__global__ void simpleNonSeparableConvolution(unsigned int  * input,
                                              float  * mask, int  * output,
                                              uint2  inputDimensions,uint2  maskDimensions,
                                              unsigned int nExWidth)
{
    unsigned int tid   = hipBlockDim_x*hipBlockIdx_x + hipThreadIdx_x;
    
    unsigned int width  = inputDimensions.x;
    unsigned int height = inputDimensions.y;
    
    unsigned int x      = tid%width;
    unsigned int y      = tid/width;
    
    unsigned int maskWidth  = maskDimensions.x;
    unsigned int maskHeight = maskDimensions.y;

    if(x >= width || y >= height)
        return;

    /*
     * initializing weighted sum value
     */
    float sumFX = 0.0f;
    int m = 0, n = 0;
  
    //performing weighted sum within the mask boundaries
    for(unsigned int j = y ; j < (y + maskHeight); ++j, m++)    
    {
        n = 0;
        for(unsigned int i = x; i < (x + maskWidth); ++i, n++)
        { 
            unsigned int maskIndex = m * maskWidth  + n;
            unsigned int index     = j * nExWidth + i;
            
            sumFX += ((float)input[index] * mask[maskIndex]);
        }
    }

    sumFX += 0.5f;
    output[tid] = (int)sumFX;
}




/**
 * SeparableConvolution 
 * is product of 2 one-dimensional convolution.
 * A 2-dimensional convolution operation is separated into 2 one one-dimensional convolution.
 * SeparableConvolution is implemented in two passes.
 * The first pass is called Row-wise convolution.
 * And second pass is called Column-wise convolution.
 */

 /**
 * First Pass - Row-wise convolution
 * @param input  Input  matrix on which convolution is to be performed
 * @param rowFilter rowFilter vector using which row-wise convolution was to be performed
 * @param tmpOutput Output matrix after performing first pass convolution
 * @param inputDimensions dimensions of the input matrix
 * @param filterSize  length of row filter vector
 * @param exInputDimensions      dimensions of padded input
 */
 __global__ void simpleSeparableConvolutionPass1(unsigned int  * input,
                                                 float  * rowFilter, float  * tmpOutput,
                                                 uint2  inputDimensions, unsigned int  filterSize,
                                                 uint2  exInputDimensions)
{
    int cnt = 0;
    
    unsigned int width  = inputDimensions.x;
    unsigned int height = inputDimensions.y;
    
    unsigned int tid    = hipBlockDim_x*hipBlockIdx_x + hipThreadIdx_x;
    unsigned int x      = tid%width;
    unsigned int y      = tid/width;
   
   if(x >= width || y >= (height+filterSize-1))
        return;

    /*
     * initializing weighted sum value
    */
    float sum = 0.0f;

    for(unsigned int i = x; i < (x + filterSize); ++i) {
        sum = mad((float)input[y * exInputDimensions.x + i], rowFilter[cnt++], sum);        
    }

    /* Transposed save */
    tmpOutput[x * exInputDimensions.y + y] = sum;
}

/**
 * Second Pass - Column-wise convolution
 * @param input  Input  matrix on which convolution is to be performed
 * @param colFilter colFilter vector using which column-wise convolution was to be performed
 * @param Output Output matrix after performing second pass convolution
 * @param inputDimensions dimensions of the input matrix
 * @param filterSize  length of col filter vector
 * @param exInputDimensions      dimensions of padded input
 */
 __global__ void simpleSeparableConvolutionPass2(float  * input,
                                                 float  * colFilter, int  * output,
                                                 uint2  inputDimensions, unsigned int  filterSize,
                                                 uint2  exInputDimensions)
{
    int cnt = 0;
    
    unsigned int width  = inputDimensions.x;
    unsigned int height = inputDimensions.y;
    
    unsigned int tid    = hipBlockDim_x*hipBlockIdx_x + hipThreadIdx_x;
    unsigned int x      = tid%height;
    unsigned int y      = tid/height;
   
    if(y >= width || x >= height)
        return;

    /*
     * initializing wighted sum value
    */
    float sum = 0.0f;

    for(unsigned int i = x; i < (x + filterSize); ++i) {
        sum = mad(input[y * exInputDimensions.y + i], colFilter[cnt++], sum);        
    }

    /* Tranposed save */
    sum += 0.5f;
    output[x * width + y] = (int)sum;
}


int SimpleConvolution::setupSimpleConvolution()
{
    unsigned int inputSizeBytes;

    if(maskWidth != 3 && maskWidth != 5)
    {
        std::cout << "Mask width should be either 3 or 5" << std::endl;
        return SDK_EXPECTED_FAILURE;
    }

    // initialisation of mask 
    if(maskWidth == 3)
    {
        mask = SOBEL_FILTER_3x3;
        rowFilter = SOBEL_FILTER_3x3_pass1;
        colFilter = SOBEL_FILTER_3x3_pass2;
    }
    else
    {
        mask = SOBEL_FILTER_5x5;
        rowFilter = SOBEL_FILTER_5x5_pass1;
        colFilter = SOBEL_FILTER_5x5_pass2;
    }

    if(width * height < 256)
    {
        width = 64;
        height = 64;
    }

    // allocate and init memory used by host
    inputSizeBytes = width * height * sizeof(unsigned int);
    input  = (unsigned int *) malloc(inputSizeBytes);
    CHECK_ALLOCATION(input, "Failed to allocate host memory. (input)");
    output = (int *) malloc(width*height*sizeof(int));
    CHECK_ALLOCATION(output, "Failed to allocate host memory. (output)");
    outputSep = (int  *) malloc(width*height*sizeof(int));
    CHECK_ALLOCATION(outputSep, "Failed to allocate host memory. (outputSep)");

    // random initialisation of input1
    fillRandom<unsigned int >(input, width, height, 0, 255);

    // allocate and initalize memory for padded input data to host
    filterRadius = filterSize/2;
    paddedHeight = height + (filterRadius*2);
    paddedWidth = width + (filterRadius*2);


    paddedInput = (unsigned int *)calloc(paddedWidth*paddedHeight, sizeof(unsigned int));
    for(int i = 0; i < height; i++)
        for(int j = 0; j < width; j++) {
            paddedInput[(i+filterRadius)*paddedWidth + (j+filterRadius)] = input[i*width+j];
        }

    tmpOutput = (float  *)calloc(width*paddedHeight, sizeof(float));
    CHECK_ALLOCATION(output, "Failed to allocate host memory. (tmpOutput)");

    return SDK_SUCCESS;
}


int
SimpleConvolution::setupHIP(void)
{

    // Create Input buffer on device
    hipMalloc((void**)&inputBuffer,sizeof(unsigned int ) * paddedHeight * paddedWidth);

    // Send the padded input data to device
    hipMemcpy(inputBuffer, paddedInput,paddedHeight*paddedWidth*sizeof(unsigned int), hipMemcpyHostToDevice);

    // Create a temporary output buffer on device
    hipMalloc((void**)&tmpOutputBuffer,sizeof(float ) * paddedHeight * width);

    // Create a Non-Separable Output buffer on device
    hipMalloc((void**)&outputBuffer,sizeof(int) * height * width);

    // Create a Separable Output buffer on device
    hipMalloc((void**)&outputBufferSep,sizeof(int) * height * width);

    // Create a mask buffer on device
    hipMalloc((void**)&maskBuffer,sizeof(float ) * maskWidth * maskHeight);
    hipMemcpy(maskBuffer, mask, sizeof(float ) * maskWidth * maskHeight, hipMemcpyHostToDevice);

    // Create a row-wise filter buffer on device
    hipMalloc((void**)&rowFilterBuffer,sizeof(float ) * filterSize);
    hipMemcpy(rowFilterBuffer, rowFilter,sizeof(float ) * filterSize, hipMemcpyHostToDevice);

    // Create a column-wise filter buffer on device
    hipMalloc((void**)&colFilterBuffer,sizeof(float ) * filterSize);
    hipMemcpy(colFilterBuffer, colFilter,sizeof(float ) * filterSize, hipMemcpyHostToDevice);

    return SDK_SUCCESS;
}

int
SimpleConvolution::runNonSeparableKernels(void)
{


    uint2 inputDimensions = make_uint2(width, height);
    uint2 maskDimensions  = make_uint2(maskWidth, maskHeight);



    //Set global and local work-group size, global work-group size should be multiple of local work-group size
    localThreads = localSize;
    globalThreads = (width*height + localThreads - 1) / localThreads;
    globalThreads *= localThreads;

    hipLaunchKernelGGL(simpleNonSeparableConvolution,
                    dim3(globalThreads/localThreads),
                    dim3(localThreads),
                    0, 0,
                    inputBuffer ,maskBuffer, outputBuffer , inputDimensions, maskDimensions,paddedWidth );

    return SDK_SUCCESS;
}

int
SimpleConvolution::runSeparableKernels(void)
{
    uint2 inputDimensions = make_uint2(width, height);

    uint2 paddedInputDimensions = make_uint2(paddedWidth, paddedHeight);

    // Setting global work-group for pass1
    unsigned int globalSizePass1 = (width*paddedHeight);
    localThreads = localSize;
    globalThreads = (globalSizePass1 + localThreads - 1)/localThreads;
    globalThreads *= localThreads;

    hipLaunchKernelGGL(simpleSeparableConvolutionPass1,
                    dim3(globalThreads/localThreads),
                    dim3(localThreads),
                    0, 0,
                    inputBuffer ,rowFilterBuffer, tmpOutputBuffer ,inputDimensions, filterSize, paddedInputDimensions );

    // Run Second pass filter

    unsigned int globalSizePass2 = (width*height);
    globalThreads = (globalSizePass2 + localThreads - 1)/localThreads;
    globalThreads *= localThreads;

    hipLaunchKernelGGL(simpleSeparableConvolutionPass2,
                    dim3(globalThreads/localThreads),
                    dim3(localThreads),
                    0, 0,
                    tmpOutputBuffer ,colFilterBuffer,outputBufferSep, inputDimensions, filterSize, paddedInputDimensions );

    return SDK_SUCCESS;
}

/**
 * Reference CPU implementation of Simple Convolution
 * for performance comparison
 */
void
SimpleConvolution::CPUReference()
{    
    for(int y = 0; y < height; y++)
        for(int x = 0; x < width; x++)
        {
            float sum = 0.0f;
            for(unsigned int m = 0; m < filterSize; m++)
            {
                for(unsigned int n = 0; n < filterSize; n++)
                {
                    unsigned int maskIndex = m*filterSize+n;
                    unsigned int inputIndex = (y+m)*paddedWidth + (x+n);

                    // applying convolution operation
                    sum += (float)(paddedInput[inputIndex]) * (mask[maskIndex]);
                }
            }
            sum += 0.5f;
            verificationOutput[(y*width + x)] = (int)sum;
        }
}

int SimpleConvolution::initialize()
{
    // Call base class Initialize to get default configuration
    if  (sampleArgs->initialize() != SDK_SUCCESS)
    {
        return SDK_FAILURE;
    }

    // Now add customized options
    Option* width_option = new Option;
    CHECK_ALLOCATION(width_option, "Memory allocation error.\n");
    width_option->_sVersion = "x";
    width_option->_lVersion = "width";
    width_option->_description = "Width of the input matrix";
    width_option->_type = CA_ARG_INT;
    width_option->_value = &width;
    sampleArgs->AddOption(width_option);
    delete width_option;

    Option* height_option = new Option;
    CHECK_ALLOCATION(height_option, "Memory allocation error.\n");
    height_option->_sVersion = "y";
    height_option->_lVersion = "height";
    height_option->_description = "Height of the input matrix";
    height_option->_type = CA_ARG_INT;
    height_option->_value = &height;
    sampleArgs->AddOption(height_option);
    delete height_option;

    Option* mask_width = new Option;
    CHECK_ALLOCATION(mask_width, "Memory allocation error.\n");
    maskWidth = 3;
    mask_width->_sVersion = "m";
    mask_width->_lVersion = "masksize";
    mask_width->_description = "Width of the mask matrix";
    mask_width->_type = CA_ARG_INT;
    mask_width->_value = &maskWidth;
    sampleArgs->AddOption(mask_width);
    delete mask_width;

    Option* num_iterations = new Option;
    CHECK_ALLOCATION(num_iterations, "Memory allocation error.\n");
    num_iterations->_sVersion = "i";
    num_iterations->_lVersion = "iterations";
    num_iterations->_description = "Number of iterations for kernel execution";
    num_iterations->_type = CA_ARG_INT;
    num_iterations->_value = &iterations;
    sampleArgs->AddOption(num_iterations);
    delete num_iterations;

    Option* group_size = new Option;
    CHECK_ALLOCATION(group_size, "Memory allocation error.\n");
    group_size->_sVersion = "l";
    group_size->_lVersion = "localSize";
    group_size->_description = "Size of work-group";
    group_size->_type = CA_ARG_INT;
    group_size->_value = &localSize;
    sampleArgs->AddOption(group_size);
    delete group_size;

    return SDK_SUCCESS;
}

int SimpleConvolution::setup()
{
    if(!isPowerOf2(width))
    {
        width = roundToPowerOf2(width);
    }
    if(!isPowerOf2(height))
    {
        height = roundToPowerOf2(height);
    }

    filterSize = maskHeight = maskWidth;

    if(!(maskWidth%2))
    {
        maskWidth++;
    }
    if(!(maskHeight%2))
    {
        maskHeight++;
    }

    int status = setupSimpleConvolution();
    if (status != SDK_SUCCESS)
    {
        return status;
    }

    int timer = sampleTimer->createTimer();
    sampleTimer->resetTimer(timer);
    sampleTimer->startTimer(timer);

    if (setupHIP() != SDK_SUCCESS)
    {
        return SDK_FAILURE;
    }

    sampleTimer->stopTimer(timer);

    setupTime = (double)sampleTimer->readTimer(timer);

    return SDK_SUCCESS;
}


int SimpleConvolution::run()
{
    int status;    
    // Warm up
    for(int i = 0; i < 2 && iterations != 1; i++)
    {
        // run non-separable implementation of convolution
        if (runNonSeparableKernels() != SDK_SUCCESS)
        {
             return SDK_FAILURE;
        }

        // Enqueue readBuffer for non-separable filter
        hipMemcpy(output, outputBuffer,width * height * sizeof(int), hipMemcpyDeviceToHost);

        // run separable version implementation of convolution
        if (runSeparableKernels() != SDK_SUCCESS)
        {
             return SDK_FAILURE;
        }

        // Enqueue readBuffer for separable filter
        hipMemcpy(outputSep, outputBufferSep,width * height * sizeof(int), hipMemcpyDeviceToHost);
    }

    std::cout << "Executing kernel for " << iterations <<
              " iterations" <<std::endl;
    std::cout << "-------------------------------------------" << std::endl;

    // create and initialize timers
    int timer = sampleTimer->createTimer();
    sampleTimer->resetTimer(timer);
    sampleTimer->startTimer(timer);

    // running non-separable filter
    for(int i = 0; i < iterations; i++)
    {
        status = runNonSeparableKernels();
        CHECK_ERROR(status, SDK_SUCCESS, " HIP run Kernel failed for Separable Filter");
    }

    sampleTimer->stopTimer(timer);
    totalNonSeparableKernelTime = (double)(sampleTimer->readTimer(timer)) / iterations;

    // Enqueue readBuffer for non-separable filter
    hipMemcpy(output, outputBuffer,width * height * sizeof(int), hipMemcpyDeviceToHost);
    
    sampleTimer->resetTimer(timer);
    sampleTimer->startTimer(timer);

    // running non-separable filter
    for(int i = 0; i < iterations; i++)
    {
        status = runSeparableKernels();
        CHECK_ERROR(status, SDK_SUCCESS, "HIP run Kernel failed for Non-Separable Filter");
    }

    sampleTimer->stopTimer(timer);
    totalSeparableKernelTime = (double)(sampleTimer->readTimer(timer)) / iterations;

    // Enqueue readBuffer for separable filter
    hipMemcpy(outputSep, outputBufferSep,width * height * sizeof(int), hipMemcpyDeviceToHost);

    return SDK_SUCCESS;
}

int SimpleConvolution::verifyResults()
{
    //if(sampleArgs->verify)
    //{
        verificationOutput = (int *) malloc(width * height * sizeof(int));
        CHECK_ALLOCATION(verificationOutput,
                         "Failed to allocate host memory. (verificationOutput)");

        /*
         * reference implementation
         */
        CPUReference();

        std::cout << "Verifying non-Separable Convolution Kernel result - ";
        // compare the results and see if they match
        if(memcmp(output, verificationOutput, height*width*sizeof(int)) == 0)
        {
            std::cout<<"Passed!\n" << std::endl;
        }
        else
        {
            std::cout<<"Failed\n" << std::endl;
            return SDK_FAILURE;
        }

        std::cout << "Verifying Separable Convolution Kernel result - ";
        // compare the results and see if they match
        if(memcmp(outputSep, verificationOutput, height*width*sizeof(int)) == 0)
        {
            std::cout<<"Passed!\n" << std::endl;
            return SDK_SUCCESS;
        }
        else
        {
            std::cout<<"Failed\n" << std::endl;
            return SDK_FAILURE;
        }
    //}

    return SDK_SUCCESS;
}

void SimpleConvolution::printStats()
{
    if(sampleArgs->timing)
    {
        std::string strArray[4] = {"Width", "Height", "mask Size", "KernelTime(sec)"};
        std::string stats[4];

        std::cout << "\n Non-Separable Filter Timing Measurement!" << std::endl;
        stats[0] = toString(width, std::dec);
        stats[1] = toString(height, std::dec);
        stats[2] = toString(maskWidth, std::dec);
        stats[3] = toString(totalNonSeparableKernelTime, std::dec);
        printStatistics(strArray, stats, 4);

        std::cout << "\n Separable Filter Timing Measurement!" << std::endl;
        stats[0] = toString(width, std::dec);
        stats[1] = toString(height, std::dec);
        stats[2] = toString(maskWidth, std::dec);
        stats[3] = toString(totalSeparableKernelTime, std::dec);
        printStatistics(strArray, stats, 4);
    }
}

int SimpleConvolution::cleanup()
{
    hipFree(inputBuffer);
    hipFree(tmpOutputBuffer);
    hipFree(outputBuffer);
    hipFree(maskBuffer);
    hipFree(rowFilterBuffer);
    hipFree(colFilterBuffer);

    FREE(input);
    FREE(paddedInput);
    FREE(output);
    FREE(verificationOutput);

    return SDK_SUCCESS;
}

int main(int argc, char *argv[])
{
    // 默认参数
    int width = 512;
    int height = 512;
    int iterations = 1;
    unsigned int seed = 123;
    int localSize = GROUP_SIZE; // 假设 GROUP_SIZE 已定义

    // 解析命令行参数
    for(int i = 1; i < argc; ++i)
    {
        if(strcmp(argv[i], "--width") == 0 && i + 1 < argc)
        {
            width = atoi(argv[++i]);
        }
        else if(strcmp(argv[i], "--height") == 0 && i + 1 < argc)
        {
            height = atoi(argv[++i]);
        }
        else if(strcmp(argv[i], "--iterations") == 0 && i + 1 < argc)
        {
            iterations = atoi(argv[++i]);
        }
        else if(strcmp(argv[i], "--seed") == 0 && i + 1 < argc)
        {
            seed = atoi(argv[++i]);
        }
        else
        {
            std::cerr << "Unknown or incomplete parameter: " << argv[i] << std::endl;
            std::cerr << "Usage: " << argv[0] << " [--width <value>] [--height <value>] "
                      << "[--iterations <value>] [--seed <value>] [--localSize <value>]" << std::endl;
            return 1;
        }
    }

    // 创建 SimpleConvolution 对象，并传递解析后的参数
    SimpleConvolution hipSimpleConvolution(width, height, iterations, seed);

    if (hipSimpleConvolution.initialize() != SDK_SUCCESS)
    {
        return SDK_FAILURE;
    }



    int status = hipSimpleConvolution.setup();
    if (status != SDK_SUCCESS)
    {
        return status;
    }

    if (hipSimpleConvolution.run() != SDK_SUCCESS)
    {
        return SDK_FAILURE;
    }

    if (hipSimpleConvolution.verifyResults() != SDK_SUCCESS)
    {
        return SDK_FAILURE;
    }

    if (hipSimpleConvolution.cleanup() != SDK_SUCCESS)
    {
        return SDK_FAILURE;
    }
    hipSimpleConvolution.printStats();
    return SDK_SUCCESS;
}
