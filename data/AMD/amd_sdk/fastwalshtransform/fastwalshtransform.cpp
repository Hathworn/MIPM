#include <hip/hip_runtime.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <string.h>

#include "../include/HIPUtil.hpp"

#define SAMPLE_VERSION "HIP-Examples-Application-v1.0"

using namespace appsdk;
using namespace std;

/**
 * FastWalshTransform
 * Class implements FastWalsh Transform sample
 */

class FastWalshTransform
{
        unsigned int          seed;       /**< Seed value for random number generation */
        double           setupTime;       /**< Time for setting up OpenCL */
        double     totalKernelTime;       /**< Time for kernel execution */
        double    totalProgramTime;       /**< Time for program execution */
        double referenceKernelTime;       /**< Time for reference implementation */
        int                 length;       /**< Length of the input array */
        float               *input;       /**< Input array */
        float              *output;       /**< Ouput array */
        float   *verificationInput;       /**< Input array for reference implementation */
        float*         inputBuffer;       /**<  memory buffer */
        float*        outputBuffer;       /**<  memory buffer */
        int             iterations;       /**< Number of iterations for kernel execution */
        SDKTimer      *sampleTimer;       /**< SDKTimer object */

    public:

        HIPCommandArgs   *sampleArgs;   /**< HIPCommand argument class */
        /**
         * Constructor
         * Initialize member variables
         * @param name name of sample (string)
         */
        FastWalshTransform(unsigned int seed_ = 123, int length_ = 1024, int iterations_ = 1)
        {
            seed = seed_;
            length = length_;
            input = NULL;
            verificationInput = NULL;
            setupTime = 0;
            totalKernelTime = 0;
            iterations = iterations_;
            sampleArgs = new HIPCommandArgs() ;
            sampleTimer = new SDKTimer();
            sampleArgs->sampleVerStr = SAMPLE_VERSION;
        }

        inline long long get_time()
        {
          struct timeval tv;
          gettimeofday(&tv, 0);
          return (tv.tv_sec * 1000000) + tv.tv_usec;
        }

        int setupFastWalshTransform();


        int setupHIP();

        int runKernels();

        void fastWalshTransformCPUReference(
            float * input,
            const unsigned int length);

        void printStats();

        int initialize();

        int setup();

        int run();

        int cleanup();

        int verifyResults();
};


__global__ void fastWalshTransform(
			           float * tArray,
                                   int   step  )
{
		unsigned int tid = hipThreadIdx_x+hipBlockIdx_x*hipBlockDim_x;

        const unsigned int group = tid%step;
        const unsigned int pair  = 2*step*(tid/step) + group;

        const unsigned int match = pair + step;

        float T1          = tArray[pair];
        float T2          = tArray[match];

        tArray[pair]             = T1 + T2;
        tArray[match]            = T1 - T2;
}

int
FastWalshTransform::setupFastWalshTransform()
{
    unsigned int inputSizeBytes;

    if(length < 512)
    {
        length = 512;
    }

    // allocate and init memory used by host
    inputSizeBytes = length * sizeof(float);
    input = (float *) malloc(inputSizeBytes);
    CHECK_ALLOCATION(input, "Failed to allocate host memory. (input)");

    output = (float *) malloc(inputSizeBytes);
    CHECK_ALLOCATION(output, "Failed to allocate host memory. (output)");

    // random initialisation of input
    fillRandom<float>(input, length, 1, 0, 255);

    //if(sampleArgs->verify)
    //{
        verificationInput = (float *) malloc(inputSizeBytes);
        CHECK_ALLOCATION(verificationInput,
                         "Failed to allocate host memory. (verificationInput)");
        memcpy(verificationInput, input, inputSizeBytes);
    //}

    // Unless sampleArgs->quiet mode has been enabled, print the INPUT array.
    if(!sampleArgs->quiet)
    {
        printArray<float>(
            "Input",
            input,
            length,
            1);
    }
    return SDK_SUCCESS;
}

int
FastWalshTransform::setupHIP(void)
{

    hipDeviceProp_t devProp;
    hipGetDeviceProperties(&devProp, 0);
    cout << " System minor " << devProp.minor << endl;
    cout << " System major " << devProp.major << endl;
    cout << " agent prop name " << devProp.name << endl;

    hipHostMalloc((void**)&inputBuffer, sizeof(float) * length,hipHostMallocDefault);


    return SDK_SUCCESS;
}


int
FastWalshTransform::runKernels(void)
{
    hipEvent_t start, stop;

    hipEventCreate(&start);
    hipEventCreate(&stop);
    float eventMs = 1.0f;

    float *din;
    hipHostGetDevicePointer((void**)&din, inputBuffer,0);

    hipMemcpy(din, input, length * sizeof(float), hipMemcpyHostToDevice);

    int globalThreads = length / 2;
    int localThreads  = 256;

     for(int step = 1; step < length; step <<= 1)
  {
    // Record the start event
    hipEventRecord(start, NULL);

    hipLaunchKernelGGL(fastWalshTransform,
                    dim3(globalThreads/localThreads),
                    dim3(localThreads),
                    0, 0,
                    inputBuffer ,step);

    hipEventRecord(stop, NULL);
    hipEventSynchronize(stop);

    hipEventElapsedTime(&eventMs, start, stop);

    printf ("kernel_time (hipEventElapsedTime) =%6.3fms\n", eventMs);
  }

    hipMemcpy(output, din, length * sizeof(float), hipMemcpyDeviceToHost);

    return SDK_SUCCESS;
}

/*
 * This is the reference implementation of the FastWalsh transform
 * Here we perform the buttery operation on an array on numbers
 * to get and pair and a match indices. Their sum and differences are
 * stored in the corresponding locations and is used in the future
 * iterations to get a transformed array
 */
void
FastWalshTransform::fastWalshTransformCPUReference(
    float * vinput,
    const unsigned int length)
{
    // for each pass of the algorithm
    for(unsigned int step = 1; step < length; step <<= 1)
    {
        // length of each block
        unsigned int jump = step << 1;
        // for each blocks
        for(unsigned int group = 0; group < step; ++group)
        {
            // for each pair of elements with in the block
            for(unsigned int pair = group; pair < length; pair += jump)
            {
                // find its partner
                unsigned int match = pair + step;

                float T1 = vinput[pair];
                float T2 = vinput[match];

                // store the sum and difference of the numbers in the same locations
                vinput[pair] = T1 + T2;
                vinput[match] = T1 - T2;
            }
        }
    }
}

int
FastWalshTransform::initialize()
{
    // Call base class Initialize to get default configuration
    if(sampleArgs->initialize() != SDK_SUCCESS)
    {
        return SDK_FAILURE;
    }

    // Now add customized options
    Option* signal_length = new Option;
    CHECK_ALLOCATION(signal_length, "Memory allocation error.\n");

    signal_length->_sVersion = "x";
    signal_length->_lVersion = "length";
    signal_length->_description = "Length of input array";
    signal_length->_type = CA_ARG_INT;
    signal_length->_value = &length;
    sampleArgs->AddOption(signal_length);
    delete signal_length;

    Option* num_iterations = new Option;
    CHECK_ALLOCATION(num_iterations, "Memory allocation error.\n");

    num_iterations->_sVersion = "i";
    num_iterations->_lVersion = "iterations";
    num_iterations->_description = "Number of iterations for kernel execution";
    num_iterations->_type = CA_ARG_INT;
    num_iterations->_value = &iterations;

    sampleArgs->AddOption(num_iterations);
    delete num_iterations;

    return SDK_SUCCESS;
}

int
FastWalshTransform::setup()
{
    // make sure the length is the power of 2
    if(isPowerOf2(length))
    {
        length = roundToPowerOf2(length);
    }

    if(setupFastWalshTransform() != SDK_SUCCESS)
    {
        return SDK_FAILURE;
    }

    int timer = sampleTimer->createTimer();
    sampleTimer->resetTimer(timer);
    sampleTimer->startTimer(timer);

    if(setupHIP() != SDK_SUCCESS)
    {
        return SDK_FAILURE;
    }

    sampleTimer->stopTimer(timer);
    setupTime = (double)sampleTimer->readTimer(timer);

    return SDK_SUCCESS;
}


int
FastWalshTransform::run()
{
    // Warm up
    for(int i = 0; i < 2 && iterations != 1; i++)
    {
        // Arguments are set and execution call is enqueued on command buffer
        if(runKernels() != SDK_SUCCESS)
        {
            return SDK_FAILURE;
        }
    }

    std::cout << "Executing kernel for " << iterations
              << " iterations" << std::endl;
    std::cout << "-------------------------------------------" << std::endl;

    int timer = sampleTimer->createTimer();
    sampleTimer->resetTimer(timer);
    sampleTimer->startTimer(timer);

    for(int i = 0; i < iterations; i++)
    {
        // Arguments are set and execution call is enqueued on command buffer
        if(runKernels() != SDK_SUCCESS)
        {
            return SDK_FAILURE;
        }
    }

    sampleTimer->stopTimer(timer);
    totalKernelTime = (double)(sampleTimer->readTimer(timer)) / iterations;

    if(!sampleArgs->quiet)
    {
        printArray<float>("Output", input, length, 1);
    }

    return SDK_SUCCESS;
}

int
FastWalshTransform::verifyResults()
{
    //if(sampleArgs->verify)
    //{
        /*
         * reference implementation
         * it overwrites the input array with the output
         */
        int refTimer = sampleTimer->createTimer();
        sampleTimer->resetTimer(refTimer);
        sampleTimer->startTimer(refTimer);

        fastWalshTransformCPUReference(verificationInput, length);

        sampleTimer->stopTimer(refTimer);
        referenceKernelTime = sampleTimer->readTimer(refTimer);

        // compare the results and see if they match
        if(compare(output, verificationInput, length))
        {
            std::cout << "Passed!\n" << std::endl;
            return SDK_SUCCESS;
        }
        else
        {
            std::cout << "Failed\n" << std::endl;
            return SDK_FAILURE;
        }
    //}

    return SDK_SUCCESS;
}

void
FastWalshTransform::printStats()
{
    if(sampleArgs->timing)
    {
        std::string strArray[3] = {"Length", "Time(sec)", "[Transfer+Kernel]Time(sec)"};
        std::string stats[3];

        sampleTimer->totalTime = setupTime + totalKernelTime ;

        stats[0] = toString(length, std::dec);
        stats[1] = toString(sampleTimer->totalTime, std::dec);
        stats[2] = toString(totalKernelTime, std::dec);

        printStatistics(strArray, stats, 3);
    }
}
int
FastWalshTransform::cleanup()
{

    hipHostFree(inputBuffer);

    FREE(input);
    FREE(output);
    FREE(verificationInput);

    return SDK_SUCCESS;
}

int main(int argc, char* argv[])
{
    // 默认参数值
    unsigned int seed = 123;
    int length = 1024;
    int iterations = 1;

    // 简单的参数解析，期望参数按顺序传递：seed, length, iterations
    // 例如：./program 456 2048 10
    if (argc > 1)
    {
        char* end;
        seed = static_cast<unsigned int>(strtoul(argv[1], &end, 10));
        if (*end != '\0')
        {
            std::cerr << "无效的 seed 值: " << argv[1] << std::endl;
            return 1;
        }
    }

    if (argc > 2)
    {
        char* end;
        length = static_cast<int>(strtol(argv[2], &end, 10));
        if (*end != '\0')
        {
            std::cerr << "无效的 length 值: " << argv[2] << std::endl;
            return 1;
        }
    }

    if (argc > 3)
    {
        char* end;
        iterations = static_cast<int>(strtol(argv[3], &end, 10));
        if (*end != '\0')
        {
            std::cerr << "无效的 iterations 值: " << argv[3] << std::endl;
            return 1;
        }
    }

    // 使用解析后的参数创建 FastWalshTransform 实例
    FastWalshTransform hipFastWalshTransform(seed, length, iterations);

    // Initialize
    if( hipFastWalshTransform.initialize() != SDK_SUCCESS)
    {
        return SDK_FAILURE;
    }

    // Setup
    if(hipFastWalshTransform.setup() != SDK_SUCCESS)
    {
        return SDK_FAILURE;
    }

    // Run
    if(hipFastWalshTransform.run() != SDK_SUCCESS)
    {
        return SDK_FAILURE;
    }

    // VerifyResults
    if(hipFastWalshTransform.verifyResults() != SDK_SUCCESS)
    {
        return SDK_FAILURE;
    }

    // Cleanup
    if(hipFastWalshTransform.cleanup() != SDK_SUCCESS)
    {
        return SDK_FAILURE;
    }
    hipFastWalshTransform.printStats();

    return SDK_SUCCESS;
}
