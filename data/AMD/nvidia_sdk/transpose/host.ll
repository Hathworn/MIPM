; ModuleID = 'transpose.cpp'
source_filename = "transpose.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sSMtoArchName = type { i32, i8* }
%struct.sSMtoCores = type { i32, i32 }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque
%struct.hipDeviceProp_t = type { [256 x i8], i64, i64, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.hipDeviceArch_t, i32, i32, i32, i32, i64, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32*, i32*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hipDeviceArch_t = type { i32 }
%struct.ihipEvent_t = type opaque

$_Z14findCudaDeviceiPPKc = comdat any

$_Z5checkI10hipError_tEvT_PKcS3_i = comdat any

$_Z19_ConvertSMVer2Coresii = comdat any

$_Z13gpuDeviceIniti = comdat any

$_Z23gpuGetMaxGflopsDeviceIdv = comdat any

$_Z22_ConvertSMVer2ArchNameii = comdat any

$__hip_gpubin_handle = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1
@sSDKsample = dso_local local_unnamed_addr global i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), align 8
@MATRIX_SIZE_X = dso_local local_unnamed_addr global i32 1024, align 4
@MATRIX_SIZE_Y = dso_local local_unnamed_addr global i32 1024, align 4
@MUL_FACTOR = dso_local local_unnamed_addr global i32 16, align 4
@MAX_TILES = dso_local local_unnamed_addr global i32 0, align 4
@_Z4copyPfS_ii = dso_local constant void (float*, float*, i32, i32)* @_Z19__device_stub__copyPfS_ii, align 8
@_Z13copySharedMemPfS_ii = dso_local constant void (float*, float*, i32, i32)* @_Z28__device_stub__copySharedMemPfS_ii, align 8
@_Z14transposeNaivePfS_ii = dso_local constant void (float*, float*, i32, i32)* @_Z29__device_stub__transposeNaivePfS_ii, align 8
@_Z18transposeCoalescedPfS_ii = dso_local constant void (float*, float*, i32, i32)* @_Z33__device_stub__transposeCoalescedPfS_ii, align 8
@_Z24transposeNoBankConflictsPfS_ii = dso_local constant void (float*, float*, i32, i32)* @_Z39__device_stub__transposeNoBankConflictsPfS_ii, align 8
@_Z17transposeDiagonalPfS_ii = dso_local constant void (float*, float*, i32, i32)* @_Z32__device_stub__transposeDiagonalPfS_ii, align 8
@_Z20transposeFineGrainedPfS_ii = dso_local constant void (float*, float*, i32, i32)* @_Z35__device_stub__transposeFineGrainedPfS_ii, align 8
@_Z22transposeCoarseGrainedPfS_ii = dso_local constant void (float*, float*, i32, i32)* @_Z37__device_stub__transposeCoarseGrainedPfS_ii, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"dimX\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"> MatrixSize X = %d is greater than the recommended size = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"> MatrixSize X = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"dimY\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"> MatrixSize Y = %d is greater than the recommended size = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"> MatrixSize Y = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"\0A%s : Command line options\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"%s Starting...\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"hipGetDevice(&devID)\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"transpose.cpp\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"hipGetDeviceProperties(&deviceProp, devID)\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"> Device %d: \22%s\22\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"> SM Capability %d.%d detected:\0A\00", align 1
@.str.20 = private unnamed_addr constant [50 x i8] c"> [%s] has %d MP(s) x %d (Cores/MP) = %d (Cores)\0A\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"> Compute performance scaling factor = %4.2f\0A\00", align 1
@.str.22 = private unnamed_addr constant [95 x i8] c"\0A[%s] does not support non-square matrices (row_dim_size(%d) != col_dim_size(%d))\0AExiting...\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [69 x i8] c"[%s] Matrix size must be integral multiple of tile size\0AExiting...\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [59 x i8] c"[%s] grid size computation incorrect in test \0AExiting...\0A\0A\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"hipMalloc((void **)&d_idata, mem_size)\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"hipMalloc((void **)&d_odata, mem_size)\00", align 1
@.str.29 = private unnamed_addr constant [61 x i8] c"hipMemcpy(d_idata, h_idata, mem_size, hipMemcpyHostToDevice)\00", align 1
@.str.30 = private unnamed_addr constant [73 x i8] c"\0AMatrix size: %dx%d (%dx%d tiles), tile size: %dx%d, block size: %dx%d\0A\0A\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"hipEventCreate(&start)\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"hipEventCreate(&stop)\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"simple copy       \00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"shared memory copy\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"naive             \00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"coalesced         \00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"optimized         \00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"coarse-grained    \00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"fine-grained      \00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"diagonal          \00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"hipGetLastError()\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"hipEventRecord(start, 0)\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"hipEventRecord(stop, 0)\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"hipEventSynchronize(stop)\00", align 1
@.str.45 = private unnamed_addr constant [46 x i8] c"hipEventElapsedTime(&kernelTime, start, stop)\00", align 1
@.str.46 = private unnamed_addr constant [61 x i8] c"hipMemcpy(h_odata, d_odata, mem_size, hipMemcpyDeviceToHost)\00", align 1
@.str.47 = private unnamed_addr constant [26 x i8] c"*** %s kernel FAILED ***\0A\00", align 1
@.str.48 = private unnamed_addr constant [113 x i8] c"transpose %s, Throughput = %.4f GB/s, Time = %.5f ms, Size = %u fp32 elements, NumDevsUsed = %u, Workgroup = %u\0A\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"hipEventDestroy(start)\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"hipEventDestroy(stop)\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"device=\00", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"Invalid command line parameter\0A \00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"hipSetDevice(devID)\00", align 1
@.str.58 = private unnamed_addr constant [58 x i8] c"/public/home/dtune/zhengh/nvidia_sdk/common/helper_cuda.h\00", align 1
@.str.59 = private unnamed_addr constant [79 x i8] c"hipDeviceGetAttribute(&major, hipDeviceAttributeComputeCapabilityMajor, devID)\00", align 1
@.str.60 = private unnamed_addr constant [79 x i8] c"hipDeviceGetAttribute(&minor, hipDeviceAttributeComputeCapabilityMinor, devID)\00", align 1
@.str.61 = private unnamed_addr constant [52 x i8] c"GPU Device %d: \22%s\22 with compute capability %d.%d\0A\0A\00", align 1
@.str.62 = private unnamed_addr constant [33 x i8] c"hipGetDeviceCount(&device_count)\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.63 = private unnamed_addr constant [57 x i8] c"gpuDeviceInit() CUDA error: no devices supporting CUDA.\0A\00", align 1
@.str.65 = private unnamed_addr constant [47 x i8] c">> %d CUDA capable GPU device(s) detected. <<\0A\00", align 1
@.str.66 = private unnamed_addr constant [61 x i8] c">> gpuDeviceInit (-device=%d) is not a valid GPU device. <<\0A\00", align 1
@.str.67 = private unnamed_addr constant [74 x i8] c"hipDeviceGetAttribute(&computeMode, hipDeviceAttributeComputeMode, devID)\00", align 1
@.str.68 = private unnamed_addr constant [91 x i8] c"Error: device is running in <Compute Mode Prohibited>, no threads can use hipSetDevice().\0A\00", align 1
@.str.69 = private unnamed_addr constant [52 x i8] c"gpuDeviceInit(): GPU device does not support CUDA.\0A\00", align 1
@.str.70 = private unnamed_addr constant [39 x i8] c"gpuDeviceInit() CUDA Device [%d]: \22%s\0A\00", align 1
@.str.71 = private unnamed_addr constant [67 x i8] c"gpuGetMaxGflopsDeviceId() CUDA error: no devices supporting CUDA.\0A\00", align 1
@.str.72 = private unnamed_addr constant [83 x i8] c"hipDeviceGetAttribute(&computeMode, hipDeviceAttributeComputeMode, current_device)\00", align 1
@.str.73 = private unnamed_addr constant [88 x i8] c"hipDeviceGetAttribute(&major, hipDeviceAttributeComputeCapabilityMajor, current_device)\00", align 1
@.str.74 = private unnamed_addr constant [88 x i8] c"hipDeviceGetAttribute(&minor, hipDeviceAttributeComputeCapabilityMinor, current_device)\00", align 1
@.str.75 = private unnamed_addr constant [99 x i8] c"hipDeviceGetAttribute(&multiProcessorCount, hipDeviceAttributeMultiprocessorCount, current_device)\00", align 1
@.str.76 = private unnamed_addr constant [34 x i8] c"CUDA error at %s:%d code=%d(%s) \0A\00", align 1
@.str.77 = private unnamed_addr constant [81 x i8] c"gpuGetMaxGflopsDeviceId() CUDA error: all devices have compute mode prohibited.\0A\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"Kepler\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"Maxwell\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"Pascal\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"Volta\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"Xavier\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"Turing\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"Ampere\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"Ada\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"Hopper\00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c"Graphics Device\00", align 1
@__const._Z22_ConvertSMVer2ArchNameii.nGpuArchNameSM = private unnamed_addr constant [19 x %struct.sSMtoArchName] [%struct.sSMtoArchName { i32 48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0) }, %struct.sSMtoArchName { i32 50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0) }, %struct.sSMtoArchName { i32 53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0) }, %struct.sSMtoArchName { i32 55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0) }, %struct.sSMtoArchName { i32 80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i32 0, i32 0) }, %struct.sSMtoArchName { i32 82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i32 0, i32 0) }, %struct.sSMtoArchName { i32 83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i32 0, i32 0) }, %struct.sSMtoArchName { i32 96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0) }, %struct.sSMtoArchName { i32 97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0) }, %struct.sSMtoArchName { i32 98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0) }, %struct.sSMtoArchName { i32 112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0) }, %struct.sSMtoArchName { i32 114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0) }, %struct.sSMtoArchName { i32 117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0) }, %struct.sSMtoArchName { i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0) }, %struct.sSMtoArchName { i32 134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0) }, %struct.sSMtoArchName { i32 135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0) }, %struct.sSMtoArchName { i32 137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0) }, %struct.sSMtoArchName { i32 144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0) }, %struct.sSMtoArchName { i32 -1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.87, i32 0, i32 0) }], align 16
@.str.88 = private unnamed_addr constant [63 x i8] c"MapSMtoArchName for SM %d.%d is undefined.  Default to use %s\0A\00", align 1
@__const._Z19_ConvertSMVer2Coresii.nGpuArchCoresPerSM = private unnamed_addr constant [19 x %struct.sSMtoCores] [%struct.sSMtoCores { i32 48, i32 192 }, %struct.sSMtoCores { i32 50, i32 192 }, %struct.sSMtoCores { i32 53, i32 192 }, %struct.sSMtoCores { i32 55, i32 192 }, %struct.sSMtoCores { i32 80, i32 128 }, %struct.sSMtoCores { i32 82, i32 128 }, %struct.sSMtoCores { i32 83, i32 128 }, %struct.sSMtoCores { i32 96, i32 64 }, %struct.sSMtoCores { i32 97, i32 128 }, %struct.sSMtoCores { i32 98, i32 128 }, %struct.sSMtoCores { i32 112, i32 64 }, %struct.sSMtoCores { i32 114, i32 64 }, %struct.sSMtoCores { i32 117, i32 64 }, %struct.sSMtoCores { i32 128, i32 64 }, %struct.sSMtoCores { i32 134, i32 128 }, %struct.sSMtoCores { i32 135, i32 128 }, %struct.sSMtoCores { i32 137, i32 128 }, %struct.sSMtoCores { i32 144, i32 128 }, %struct.sSMtoCores { i32 -1, i32 -1 }], align 16
@.str.89 = private unnamed_addr constant [69 x i8] c"MapSMtoCores for SM %d.%d is undefined.  Default to use %d Cores/SM\0A\00", align 1
@.str.90 = private unnamed_addr constant [39 x i8] c"CUDA error at %s:%d code=%d(%s) \22%s\22 \0A\00", align 1
@0 = private unnamed_addr constant [14 x i8] c"_Z4copyPfS_ii\00", align 1
@1 = private unnamed_addr constant [24 x i8] c"_Z13copySharedMemPfS_ii\00", align 1
@2 = private unnamed_addr constant [25 x i8] c"_Z14transposeNaivePfS_ii\00", align 1
@3 = private unnamed_addr constant [29 x i8] c"_Z18transposeCoalescedPfS_ii\00", align 1
@4 = private unnamed_addr constant [35 x i8] c"_Z24transposeNoBankConflictsPfS_ii\00", align 1
@5 = private unnamed_addr constant [28 x i8] c"_Z17transposeDiagonalPfS_ii\00", align 1
@6 = private unnamed_addr constant [31 x i8] c"_Z20transposeFineGrainedPfS_ii\00", align 1
@7 = private unnamed_addr constant [33 x i8] c"_Z22transposeCoarseGrainedPfS_ii\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_transpose.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]
@str = private unnamed_addr constant [60 x i8] c"\09-device=n          (where n=0,1,2.... for the GPU device)\0A\00", align 1
@str.94 = private unnamed_addr constant [66 x i8] c"> The default matrix size can be overridden with these parameters\00", align 1
@str.95 = private unnamed_addr constant [47 x i8] c"\09-dimX=row_dim_size (matrix row    dimensions)\00", align 1
@str.96 = private unnamed_addr constant [47 x i8] c"\09-dimY=col_dim_size (matrix column dimensions)\00", align 1
@str.97 = private unnamed_addr constant [13 x i8] c"Test failed!\00", align 1
@str.98 = private unnamed_addr constant [12 x i8] c"Test passed\00", align 1
@str.99 = private unnamed_addr constant [62 x i8] c"Input matrix size is larger than the available device memory!\00", align 1
@str.100 = private unnamed_addr constant [36 x i8] c"Please choose a smaller size matrix\00", align 1
@str.101 = private unnamed_addr constant [11 x i8] c"exiting...\00", align 1
@switch.table.main = private unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i64 0, i64 0)], align 8
@switch.table.main.102 = private unnamed_addr constant [8 x void (float*, float*, i32, i32)*] [void (float*, float*, i32, i32)* bitcast (void (float*, float*, i32, i32)** @_Z4copyPfS_ii to void (float*, float*, i32, i32)*), void (float*, float*, i32, i32)* bitcast (void (float*, float*, i32, i32)** @_Z13copySharedMemPfS_ii to void (float*, float*, i32, i32)*), void (float*, float*, i32, i32)* bitcast (void (float*, float*, i32, i32)** @_Z14transposeNaivePfS_ii to void (float*, float*, i32, i32)*), void (float*, float*, i32, i32)* bitcast (void (float*, float*, i32, i32)** @_Z18transposeCoalescedPfS_ii to void (float*, float*, i32, i32)*), void (float*, float*, i32, i32)* bitcast (void (float*, float*, i32, i32)** @_Z24transposeNoBankConflictsPfS_ii to void (float*, float*, i32, i32)*), void (float*, float*, i32, i32)* bitcast (void (float*, float*, i32, i32)** @_Z22transposeCoarseGrainedPfS_ii to void (float*, float*, i32, i32)*), void (float*, float*, i32, i32)* bitcast (void (float*, float*, i32, i32)** @_Z20transposeFineGrainedPfS_ii to void (float*, float*, i32, i32)*), void (float*, float*, i32, i32)* bitcast (void (float*, float*, i32, i32)** @_Z17transposeDiagonalPfS_ii to void (float*, float*, i32, i32)*)], align 8

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: norecurse uwtable
define dso_local void @_Z19__device_stub__copyPfS_ii(float* %0, float* %1, i32 %2, i32 %3) #3 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dim3, align 8
  %10 = alloca %struct.dim3, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store float* %0, float** %5, align 8, !tbaa !3
  store float* %1, float** %6, align 8, !tbaa !3
  store i32 %2, i32* %7, align 4, !tbaa !7
  store i32 %3, i32* %8, align 4, !tbaa !7
  %13 = alloca [4 x i8*], align 16
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 0
  %15 = bitcast [4 x i8*]* %13 to float***
  store float** %5, float*** %15, align 16
  %16 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 1
  %17 = bitcast i8** %16 to float***
  store float** %6, float*** %17, align 8
  %18 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 2
  %19 = bitcast i8** %18 to i32**
  store i32* %7, i32** %19, align 16
  %20 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 3
  %21 = bitcast i8** %20 to i32**
  store i32* %8, i32** %21, align 8
  %22 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %9, %struct.dim3* nonnull %10, i64* nonnull %11, i8** nonnull %12)
  %23 = load i64, i64* %11, align 8
  %24 = bitcast i8** %12 to %struct.ihipStream_t**
  %25 = load %struct.ihipStream_t*, %struct.ihipStream_t** %24, align 8
  %26 = bitcast %struct.dim3* %9 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.dim3, %struct.dim3* %9, i64 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = bitcast %struct.dim3* %10 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.dim3, %struct.dim3* %10, i64 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, i32, i32)** @_Z4copyPfS_ii to i8*), i64 %27, i32 %29, i64 %31, i32 %33, i8** nonnull %14, i64 %23, %struct.ihipStream_t* %25)
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: norecurse uwtable
define dso_local void @_Z28__device_stub__copySharedMemPfS_ii(float* %0, float* %1, i32 %2, i32 %3) #3 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dim3, align 8
  %10 = alloca %struct.dim3, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store float* %0, float** %5, align 8, !tbaa !3
  store float* %1, float** %6, align 8, !tbaa !3
  store i32 %2, i32* %7, align 4, !tbaa !7
  store i32 %3, i32* %8, align 4, !tbaa !7
  %13 = alloca [4 x i8*], align 16
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 0
  %15 = bitcast [4 x i8*]* %13 to float***
  store float** %5, float*** %15, align 16
  %16 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 1
  %17 = bitcast i8** %16 to float***
  store float** %6, float*** %17, align 8
  %18 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 2
  %19 = bitcast i8** %18 to i32**
  store i32* %7, i32** %19, align 16
  %20 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 3
  %21 = bitcast i8** %20 to i32**
  store i32* %8, i32** %21, align 8
  %22 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %9, %struct.dim3* nonnull %10, i64* nonnull %11, i8** nonnull %12)
  %23 = load i64, i64* %11, align 8
  %24 = bitcast i8** %12 to %struct.ihipStream_t**
  %25 = load %struct.ihipStream_t*, %struct.ihipStream_t** %24, align 8
  %26 = bitcast %struct.dim3* %9 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.dim3, %struct.dim3* %9, i64 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = bitcast %struct.dim3* %10 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.dim3, %struct.dim3* %10, i64 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, i32, i32)** @_Z13copySharedMemPfS_ii to i8*), i64 %27, i32 %29, i64 %31, i32 %33, i8** nonnull %14, i64 %23, %struct.ihipStream_t* %25)
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local void @_Z29__device_stub__transposeNaivePfS_ii(float* %0, float* %1, i32 %2, i32 %3) #3 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dim3, align 8
  %10 = alloca %struct.dim3, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store float* %0, float** %5, align 8, !tbaa !3
  store float* %1, float** %6, align 8, !tbaa !3
  store i32 %2, i32* %7, align 4, !tbaa !7
  store i32 %3, i32* %8, align 4, !tbaa !7
  %13 = alloca [4 x i8*], align 16
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 0
  %15 = bitcast [4 x i8*]* %13 to float***
  store float** %5, float*** %15, align 16
  %16 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 1
  %17 = bitcast i8** %16 to float***
  store float** %6, float*** %17, align 8
  %18 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 2
  %19 = bitcast i8** %18 to i32**
  store i32* %7, i32** %19, align 16
  %20 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 3
  %21 = bitcast i8** %20 to i32**
  store i32* %8, i32** %21, align 8
  %22 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %9, %struct.dim3* nonnull %10, i64* nonnull %11, i8** nonnull %12)
  %23 = load i64, i64* %11, align 8
  %24 = bitcast i8** %12 to %struct.ihipStream_t**
  %25 = load %struct.ihipStream_t*, %struct.ihipStream_t** %24, align 8
  %26 = bitcast %struct.dim3* %9 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.dim3, %struct.dim3* %9, i64 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = bitcast %struct.dim3* %10 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.dim3, %struct.dim3* %10, i64 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, i32, i32)** @_Z14transposeNaivePfS_ii to i8*), i64 %27, i32 %29, i64 %31, i32 %33, i8** nonnull %14, i64 %23, %struct.ihipStream_t* %25)
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local void @_Z33__device_stub__transposeCoalescedPfS_ii(float* %0, float* %1, i32 %2, i32 %3) #3 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dim3, align 8
  %10 = alloca %struct.dim3, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store float* %0, float** %5, align 8, !tbaa !3
  store float* %1, float** %6, align 8, !tbaa !3
  store i32 %2, i32* %7, align 4, !tbaa !7
  store i32 %3, i32* %8, align 4, !tbaa !7
  %13 = alloca [4 x i8*], align 16
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 0
  %15 = bitcast [4 x i8*]* %13 to float***
  store float** %5, float*** %15, align 16
  %16 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 1
  %17 = bitcast i8** %16 to float***
  store float** %6, float*** %17, align 8
  %18 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 2
  %19 = bitcast i8** %18 to i32**
  store i32* %7, i32** %19, align 16
  %20 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 3
  %21 = bitcast i8** %20 to i32**
  store i32* %8, i32** %21, align 8
  %22 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %9, %struct.dim3* nonnull %10, i64* nonnull %11, i8** nonnull %12)
  %23 = load i64, i64* %11, align 8
  %24 = bitcast i8** %12 to %struct.ihipStream_t**
  %25 = load %struct.ihipStream_t*, %struct.ihipStream_t** %24, align 8
  %26 = bitcast %struct.dim3* %9 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.dim3, %struct.dim3* %9, i64 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = bitcast %struct.dim3* %10 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.dim3, %struct.dim3* %10, i64 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, i32, i32)** @_Z18transposeCoalescedPfS_ii to i8*), i64 %27, i32 %29, i64 %31, i32 %33, i8** nonnull %14, i64 %23, %struct.ihipStream_t* %25)
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local void @_Z39__device_stub__transposeNoBankConflictsPfS_ii(float* %0, float* %1, i32 %2, i32 %3) #3 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dim3, align 8
  %10 = alloca %struct.dim3, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store float* %0, float** %5, align 8, !tbaa !3
  store float* %1, float** %6, align 8, !tbaa !3
  store i32 %2, i32* %7, align 4, !tbaa !7
  store i32 %3, i32* %8, align 4, !tbaa !7
  %13 = alloca [4 x i8*], align 16
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 0
  %15 = bitcast [4 x i8*]* %13 to float***
  store float** %5, float*** %15, align 16
  %16 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 1
  %17 = bitcast i8** %16 to float***
  store float** %6, float*** %17, align 8
  %18 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 2
  %19 = bitcast i8** %18 to i32**
  store i32* %7, i32** %19, align 16
  %20 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 3
  %21 = bitcast i8** %20 to i32**
  store i32* %8, i32** %21, align 8
  %22 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %9, %struct.dim3* nonnull %10, i64* nonnull %11, i8** nonnull %12)
  %23 = load i64, i64* %11, align 8
  %24 = bitcast i8** %12 to %struct.ihipStream_t**
  %25 = load %struct.ihipStream_t*, %struct.ihipStream_t** %24, align 8
  %26 = bitcast %struct.dim3* %9 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.dim3, %struct.dim3* %9, i64 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = bitcast %struct.dim3* %10 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.dim3, %struct.dim3* %10, i64 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, i32, i32)** @_Z24transposeNoBankConflictsPfS_ii to i8*), i64 %27, i32 %29, i64 %31, i32 %33, i8** nonnull %14, i64 %23, %struct.ihipStream_t* %25)
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local void @_Z32__device_stub__transposeDiagonalPfS_ii(float* %0, float* %1, i32 %2, i32 %3) #3 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dim3, align 8
  %10 = alloca %struct.dim3, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store float* %0, float** %5, align 8, !tbaa !3
  store float* %1, float** %6, align 8, !tbaa !3
  store i32 %2, i32* %7, align 4, !tbaa !7
  store i32 %3, i32* %8, align 4, !tbaa !7
  %13 = alloca [4 x i8*], align 16
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 0
  %15 = bitcast [4 x i8*]* %13 to float***
  store float** %5, float*** %15, align 16
  %16 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 1
  %17 = bitcast i8** %16 to float***
  store float** %6, float*** %17, align 8
  %18 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 2
  %19 = bitcast i8** %18 to i32**
  store i32* %7, i32** %19, align 16
  %20 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 3
  %21 = bitcast i8** %20 to i32**
  store i32* %8, i32** %21, align 8
  %22 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %9, %struct.dim3* nonnull %10, i64* nonnull %11, i8** nonnull %12)
  %23 = load i64, i64* %11, align 8
  %24 = bitcast i8** %12 to %struct.ihipStream_t**
  %25 = load %struct.ihipStream_t*, %struct.ihipStream_t** %24, align 8
  %26 = bitcast %struct.dim3* %9 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.dim3, %struct.dim3* %9, i64 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = bitcast %struct.dim3* %10 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.dim3, %struct.dim3* %10, i64 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, i32, i32)** @_Z17transposeDiagonalPfS_ii to i8*), i64 %27, i32 %29, i64 %31, i32 %33, i8** nonnull %14, i64 %23, %struct.ihipStream_t* %25)
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local void @_Z35__device_stub__transposeFineGrainedPfS_ii(float* %0, float* %1, i32 %2, i32 %3) #3 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dim3, align 8
  %10 = alloca %struct.dim3, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store float* %0, float** %5, align 8, !tbaa !3
  store float* %1, float** %6, align 8, !tbaa !3
  store i32 %2, i32* %7, align 4, !tbaa !7
  store i32 %3, i32* %8, align 4, !tbaa !7
  %13 = alloca [4 x i8*], align 16
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 0
  %15 = bitcast [4 x i8*]* %13 to float***
  store float** %5, float*** %15, align 16
  %16 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 1
  %17 = bitcast i8** %16 to float***
  store float** %6, float*** %17, align 8
  %18 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 2
  %19 = bitcast i8** %18 to i32**
  store i32* %7, i32** %19, align 16
  %20 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 3
  %21 = bitcast i8** %20 to i32**
  store i32* %8, i32** %21, align 8
  %22 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %9, %struct.dim3* nonnull %10, i64* nonnull %11, i8** nonnull %12)
  %23 = load i64, i64* %11, align 8
  %24 = bitcast i8** %12 to %struct.ihipStream_t**
  %25 = load %struct.ihipStream_t*, %struct.ihipStream_t** %24, align 8
  %26 = bitcast %struct.dim3* %9 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.dim3, %struct.dim3* %9, i64 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = bitcast %struct.dim3* %10 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.dim3, %struct.dim3* %10, i64 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, i32, i32)** @_Z20transposeFineGrainedPfS_ii to i8*), i64 %27, i32 %29, i64 %31, i32 %33, i8** nonnull %14, i64 %23, %struct.ihipStream_t* %25)
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local void @_Z37__device_stub__transposeCoarseGrainedPfS_ii(float* %0, float* %1, i32 %2, i32 %3) #3 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dim3, align 8
  %10 = alloca %struct.dim3, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store float* %0, float** %5, align 8, !tbaa !3
  store float* %1, float** %6, align 8, !tbaa !3
  store i32 %2, i32* %7, align 4, !tbaa !7
  store i32 %3, i32* %8, align 4, !tbaa !7
  %13 = alloca [4 x i8*], align 16
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 0
  %15 = bitcast [4 x i8*]* %13 to float***
  store float** %5, float*** %15, align 16
  %16 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 1
  %17 = bitcast i8** %16 to float***
  store float** %6, float*** %17, align 8
  %18 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 2
  %19 = bitcast i8** %18 to i32**
  store i32* %7, i32** %19, align 16
  %20 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 3
  %21 = bitcast i8** %20 to i32**
  store i32* %8, i32** %21, align 8
  %22 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %9, %struct.dim3* nonnull %10, i64* nonnull %11, i8** nonnull %12)
  %23 = load i64, i64* %11, align 8
  %24 = bitcast i8** %12 to %struct.ihipStream_t**
  %25 = load %struct.ihipStream_t*, %struct.ihipStream_t** %24, align 8
  %26 = bitcast %struct.dim3* %9 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.dim3, %struct.dim3* %9, i64 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = bitcast %struct.dim3* %10 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.dim3, %struct.dim3* %10, i64 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, i32, i32)** @_Z22transposeCoarseGrainedPfS_ii to i8*), i64 %27, i32 %29, i64 %31, i32 %33, i8** nonnull %14, i64 %23, %struct.ihipStream_t* %25)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z20computeTransposeGoldPfS_ii(float* nocapture writeonly %0, float* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #4 {
  %5 = icmp sgt i32 %3, 0
  %6 = icmp sgt i32 %2, 0
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %51

8:                                                ; preds = %4
  %9 = zext i32 %3 to i64
  %10 = zext i32 %2 to i64
  %11 = zext i32 %3 to i64
  %12 = zext i32 %2 to i64
  %13 = and i64 %12, 1
  %14 = icmp eq i32 %2, 1
  %15 = and i64 %12, 4294967294
  %16 = icmp eq i64 %13, 0
  br label %17

17:                                               ; preds = %8, %48
  %18 = phi i64 [ 0, %8 ], [ %49, %48 ]
  %19 = mul nsw i64 %18, %10
  br i1 %14, label %39, label %20

20:                                               ; preds = %17, %20
  %21 = phi i64 [ %36, %20 ], [ 0, %17 ]
  %22 = phi i64 [ %37, %20 ], [ 0, %17 ]
  %23 = add nuw nsw i64 %21, %19
  %24 = getelementptr inbounds float, float* %1, i64 %23
  %25 = load float, float* %24, align 4, !tbaa !9
  %26 = mul nsw i64 %21, %9
  %27 = add nuw nsw i64 %26, %18
  %28 = getelementptr inbounds float, float* %0, i64 %27
  store float %25, float* %28, align 4, !tbaa !9
  %29 = or i64 %21, 1
  %30 = add nuw nsw i64 %29, %19
  %31 = getelementptr inbounds float, float* %1, i64 %30
  %32 = load float, float* %31, align 4, !tbaa !9
  %33 = mul nsw i64 %29, %9
  %34 = add nuw nsw i64 %33, %18
  %35 = getelementptr inbounds float, float* %0, i64 %34
  store float %32, float* %35, align 4, !tbaa !9
  %36 = add nuw nsw i64 %21, 2
  %37 = add i64 %22, 2
  %38 = icmp eq i64 %37, %15
  br i1 %38, label %39, label %20, !llvm.loop !11

39:                                               ; preds = %20, %17
  %40 = phi i64 [ 0, %17 ], [ %36, %20 ]
  br i1 %16, label %48, label %41

41:                                               ; preds = %39
  %42 = add nuw nsw i64 %40, %19
  %43 = getelementptr inbounds float, float* %1, i64 %42
  %44 = load float, float* %43, align 4, !tbaa !9
  %45 = mul nsw i64 %40, %9
  %46 = add nuw nsw i64 %45, %18
  %47 = getelementptr inbounds float, float* %0, i64 %46
  store float %44, float* %47, align 4, !tbaa !9
  br label %48

48:                                               ; preds = %39, %41
  %49 = add nuw nsw i64 %18, 1
  %50 = icmp eq i64 %49, %11
  br i1 %50, label %51, label %17, !llvm.loop !13

51:                                               ; preds = %48, %4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z9getParamsiPPcR15hipDeviceProp_tRiS3_i(i32 %0, i8** nocapture readonly %1, %struct.hipDeviceProp_t* nocapture nonnull readnone align 8 %2, i32* nocapture nonnull writeonly align 4 dereferenceable(4) %3, i32* nocapture nonnull writeonly align 4 dereferenceable(4) %4, i32 %5) local_unnamed_addr #6 {
  %7 = icmp sgt i32 %0, 1
  br i1 %7, label %8, label %104

8:                                                ; preds = %6
  %9 = zext i32 %0 to i64
  br label %10

10:                                               ; preds = %47, %8
  %11 = phi i64 [ 1, %8 ], [ %49, %47 ]
  %12 = phi i8 [ 0, %8 ], [ %48, %47 ]
  %13 = getelementptr inbounds i8*, i8** %1, i64 %11
  %14 = load i8*, i8** %13, align 8, !tbaa !3
  br label %15

15:                                               ; preds = %15, %10
  %16 = phi i64 [ %20, %15 ], [ 0, %10 ]
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1, !tbaa !14
  %19 = icmp eq i8 %18, 45
  %20 = add nuw i64 %16, 1
  br i1 %19, label %15, label %21, !llvm.loop !15

21:                                               ; preds = %15
  %22 = trunc i64 %16 to i32
  %23 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %14) #19
  %24 = trunc i64 %23 to i32
  %25 = add i32 %24, -1
  %26 = icmp sgt i32 %25, %22
  %27 = shl i64 %16, 32
  %28 = ashr exact i64 %27, 32
  %29 = select i1 %26, i64 %28, i64 0
  %30 = getelementptr inbounds i8, i8* %14, i64 %29
  %31 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %30, i32 61) #19
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %30) #19
  br label %39

35:                                               ; preds = %21
  %36 = ptrtoint i8* %31 to i64
  %37 = ptrtoint i8* %30 to i64
  %38 = sub i64 %36, %37
  br label %39

39:                                               ; preds = %35, %33
  %40 = phi i64 [ %34, %33 ], [ %38, %35 ]
  %41 = trunc i64 %40 to i32
  %42 = icmp eq i32 %41, 4
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = tail call i32 @strncasecmp(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 4) #19
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %39
  br label %47

47:                                               ; preds = %46, %43
  %48 = phi i8 [ %12, %46 ], [ 1, %43 ]
  %49 = add nuw nsw i64 %11, 1
  %50 = icmp eq i64 %49, %9
  br i1 %50, label %51, label %10, !llvm.loop !16

51:                                               ; preds = %47
  %52 = and i8 %48, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %104, label %54

54:                                               ; preds = %51, %90
  %55 = phi i64 [ %93, %90 ], [ 1, %51 ]
  %56 = phi i8 [ %92, %90 ], [ 0, %51 ]
  %57 = phi i32 [ %91, %90 ], [ -1, %51 ]
  %58 = getelementptr inbounds i8*, i8** %1, i64 %55
  %59 = load i8*, i8** %58, align 8, !tbaa !3
  br label %60

60:                                               ; preds = %60, %54
  %61 = phi i64 [ %65, %60 ], [ 0, %54 ]
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1, !tbaa !14
  %64 = icmp eq i8 %63, 45
  %65 = add nuw i64 %61, 1
  br i1 %64, label %60, label %66, !llvm.loop !15

66:                                               ; preds = %60
  %67 = trunc i64 %61 to i32
  %68 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %59) #19
  %69 = trunc i64 %68 to i32
  %70 = add i32 %69, -1
  %71 = icmp sgt i32 %70, %67
  %72 = shl i64 %61, 32
  %73 = ashr exact i64 %72, 32
  %74 = select i1 %71, i64 %73, i64 0
  %75 = getelementptr inbounds i8, i8* %59, i64 %74
  %76 = tail call i32 @strncasecmp(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 4) #19
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %66
  %79 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %75) #19
  %80 = trunc i64 %79 to i32
  %81 = icmp sgt i32 %80, 4
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = getelementptr inbounds i8, i8* %75, i64 4
  %84 = load i8, i8* %83, align 1, !tbaa !14
  %85 = icmp eq i8 %84, 61
  %86 = select i1 %85, i64 5, i64 4
  %87 = getelementptr inbounds i8, i8* %75, i64 %86
  %88 = tail call i64 @strtol(i8* nocapture nonnull %87, i8** null, i32 10) #20
  %89 = trunc i64 %88 to i32
  br label %90

90:                                               ; preds = %82, %78, %66
  %91 = phi i32 [ %89, %82 ], [ 0, %78 ], [ %57, %66 ]
  %92 = phi i8 [ 1, %82 ], [ 1, %78 ], [ %56, %66 ]
  %93 = add nuw nsw i64 %55, 1
  %94 = icmp eq i64 %93, %9
  br i1 %94, label %95, label %54, !llvm.loop !17

95:                                               ; preds = %90
  %96 = and i8 %92, 1
  %97 = icmp eq i8 %96, 0
  %98 = select i1 %97, i32 0, i32 %91
  store i32 %98, i32* %3, align 4, !tbaa !7
  %99 = icmp sgt i32 %98, %5
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %98, i32 %5)
  br label %107

102:                                              ; preds = %95
  %103 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  br label %107

104:                                              ; preds = %6, %51
  %105 = srem i32 %5, 512
  %106 = sub nsw i32 %5, %105
  store i32 %106, i32* %3, align 4, !tbaa !7
  br label %107

107:                                              ; preds = %100, %102, %104
  br i1 %7, label %108, label %204

108:                                              ; preds = %107
  %109 = zext i32 %0 to i64
  br label %110

110:                                              ; preds = %147, %108
  %111 = phi i64 [ 1, %108 ], [ %149, %147 ]
  %112 = phi i8 [ 0, %108 ], [ %148, %147 ]
  %113 = getelementptr inbounds i8*, i8** %1, i64 %111
  %114 = load i8*, i8** %113, align 8, !tbaa !3
  br label %115

115:                                              ; preds = %115, %110
  %116 = phi i64 [ %120, %115 ], [ 0, %110 ]
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i8, i8* %117, align 1, !tbaa !14
  %119 = icmp eq i8 %118, 45
  %120 = add nuw i64 %116, 1
  br i1 %119, label %115, label %121, !llvm.loop !15

121:                                              ; preds = %115
  %122 = trunc i64 %116 to i32
  %123 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %114) #19
  %124 = trunc i64 %123 to i32
  %125 = add i32 %124, -1
  %126 = icmp sgt i32 %125, %122
  %127 = shl i64 %116, 32
  %128 = ashr exact i64 %127, 32
  %129 = select i1 %126, i64 %128, i64 0
  %130 = getelementptr inbounds i8, i8* %114, i64 %129
  %131 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %130, i32 61) #19
  %132 = icmp eq i8* %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %121
  %134 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %130) #19
  br label %139

135:                                              ; preds = %121
  %136 = ptrtoint i8* %131 to i64
  %137 = ptrtoint i8* %130 to i64
  %138 = sub i64 %136, %137
  br label %139

139:                                              ; preds = %135, %133
  %140 = phi i64 [ %134, %133 ], [ %138, %135 ]
  %141 = trunc i64 %140 to i32
  %142 = icmp eq i32 %141, 4
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = tail call i32 @strncasecmp(i8* %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 4) #19
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %143, %139
  br label %147

147:                                              ; preds = %146, %143
  %148 = phi i8 [ %112, %146 ], [ 1, %143 ]
  %149 = add nuw nsw i64 %111, 1
  %150 = icmp eq i64 %149, %109
  br i1 %150, label %151, label %110, !llvm.loop !16

151:                                              ; preds = %147
  %152 = and i8 %148, 1
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %204, label %154

154:                                              ; preds = %151, %190
  %155 = phi i64 [ %193, %190 ], [ 1, %151 ]
  %156 = phi i8 [ %192, %190 ], [ 0, %151 ]
  %157 = phi i32 [ %191, %190 ], [ -1, %151 ]
  %158 = getelementptr inbounds i8*, i8** %1, i64 %155
  %159 = load i8*, i8** %158, align 8, !tbaa !3
  br label %160

160:                                              ; preds = %160, %154
  %161 = phi i64 [ %165, %160 ], [ 0, %154 ]
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i8, i8* %162, align 1, !tbaa !14
  %164 = icmp eq i8 %163, 45
  %165 = add nuw i64 %161, 1
  br i1 %164, label %160, label %166, !llvm.loop !15

166:                                              ; preds = %160
  %167 = trunc i64 %161 to i32
  %168 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %159) #19
  %169 = trunc i64 %168 to i32
  %170 = add i32 %169, -1
  %171 = icmp sgt i32 %170, %167
  %172 = shl i64 %161, 32
  %173 = ashr exact i64 %172, 32
  %174 = select i1 %171, i64 %173, i64 0
  %175 = getelementptr inbounds i8, i8* %159, i64 %174
  %176 = tail call i32 @strncasecmp(i8* %175, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 4) #19
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %166
  %179 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %175) #19
  %180 = trunc i64 %179 to i32
  %181 = icmp sgt i32 %180, 4
  br i1 %181, label %182, label %190

182:                                              ; preds = %178
  %183 = getelementptr inbounds i8, i8* %175, i64 4
  %184 = load i8, i8* %183, align 1, !tbaa !14
  %185 = icmp eq i8 %184, 61
  %186 = select i1 %185, i64 5, i64 4
  %187 = getelementptr inbounds i8, i8* %175, i64 %186
  %188 = tail call i64 @strtol(i8* nocapture nonnull %187, i8** null, i32 10) #20
  %189 = trunc i64 %188 to i32
  br label %190

190:                                              ; preds = %182, %178, %166
  %191 = phi i32 [ %189, %182 ], [ 0, %178 ], [ %157, %166 ]
  %192 = phi i8 [ 1, %182 ], [ 1, %178 ], [ %156, %166 ]
  %193 = add nuw nsw i64 %155, 1
  %194 = icmp eq i64 %193, %109
  br i1 %194, label %195, label %154, !llvm.loop !17

195:                                              ; preds = %190
  %196 = and i8 %192, 1
  %197 = icmp eq i8 %196, 0
  %198 = select i1 %197, i32 0, i32 %191
  store i32 %198, i32* %4, align 4, !tbaa !7
  %199 = icmp sgt i32 %198, %5
  br i1 %199, label %200, label %202

200:                                              ; preds = %195
  %201 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 %198, i32 %5)
  br label %207

202:                                              ; preds = %195
  %203 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %198)
  br label %207

204:                                              ; preds = %107, %151
  %205 = srem i32 %5, 512
  %206 = sub nsw i32 %5, %205
  store i32 %206, i32* %4, align 4, !tbaa !7
  br label %207

207:                                              ; preds = %200, %202, %204
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z8showHelpv() local_unnamed_addr #6 {
  %1 = load i8*, i8** @sSDKsample, align 8, !tbaa !3
  %2 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* %1)
  %3 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([60 x i8], [60 x i8]* @str, i64 0, i64 0))
  %4 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([66 x i8], [66 x i8]* @str.94, i64 0, i64 0))
  %5 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([47 x i8], [47 x i8]* @str.95, i64 0, i64 0))
  %6 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([47 x i8], [47 x i8]* @str.96, i64 0, i64 0))
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #3 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hipDeviceProp_t, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ihipEvent_t*, align 8
  %8 = alloca %struct.ihipEvent_t*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  %12 = load i8*, i8** @sSDKsample, align 8, !tbaa !3
  %13 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* %12)
  %14 = icmp sgt i32 %0, 1
  br i1 %14, label %15, label %68

15:                                               ; preds = %2
  %16 = zext i32 %0 to i64
  br label %17

17:                                               ; preds = %54, %15
  %18 = phi i64 [ 1, %15 ], [ %56, %54 ]
  %19 = phi i8 [ 0, %15 ], [ %55, %54 ]
  %20 = getelementptr inbounds i8*, i8** %1, i64 %18
  %21 = load i8*, i8** %20, align 8, !tbaa !3
  br label %22

22:                                               ; preds = %22, %17
  %23 = phi i64 [ %27, %22 ], [ 0, %17 ]
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1, !tbaa !14
  %26 = icmp eq i8 %25, 45
  %27 = add nuw i64 %23, 1
  br i1 %26, label %22, label %28, !llvm.loop !15

28:                                               ; preds = %22
  %29 = trunc i64 %23 to i32
  %30 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %21) #19
  %31 = trunc i64 %30 to i32
  %32 = add i32 %31, -1
  %33 = icmp sgt i32 %32, %29
  %34 = shl i64 %23, 32
  %35 = ashr exact i64 %34, 32
  %36 = select i1 %33, i64 %35, i64 0
  %37 = getelementptr inbounds i8, i8* %21, i64 %36
  %38 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %37, i32 61) #19
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %37) #19
  br label %46

42:                                               ; preds = %28
  %43 = ptrtoint i8* %38 to i64
  %44 = ptrtoint i8* %37 to i64
  %45 = sub i64 %43, %44
  br label %46

46:                                               ; preds = %42, %40
  %47 = phi i64 [ %41, %40 ], [ %45, %42 ]
  %48 = trunc i64 %47 to i32
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = tail call i32 @strncasecmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 4) #19
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50, %46
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi i8 [ %19, %53 ], [ 1, %50 ]
  %56 = add nuw nsw i64 %18, 1
  %57 = icmp eq i64 %56, %16
  br i1 %57, label %58, label %17, !llvm.loop !16

58:                                               ; preds = %54
  %59 = and i8 %55, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = load i8*, i8** @sSDKsample, align 8, !tbaa !3
  %63 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* %62) #20
  %64 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([60 x i8], [60 x i8]* @str, i64 0, i64 0)) #20
  %65 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([66 x i8], [66 x i8]* @str.94, i64 0, i64 0)) #20
  %66 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([47 x i8], [47 x i8]* @str.95, i64 0, i64 0)) #20
  %67 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([47 x i8], [47 x i8]* @str.96, i64 0, i64 0)) #20
  ret i32 0

68:                                               ; preds = %2, %58
  %69 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %69) #20
  %70 = tail call i32 @_Z14findCudaDeviceiPPKc(i32 %0, i8** %1)
  store i32 %70, i32* %3, align 4, !tbaa !7
  %71 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %4, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 792, i8* nonnull %71) #20
  %72 = call i32 @hipGetDevice(i32* nonnull %3)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 370)
  %73 = load i32, i32* %3, align 4, !tbaa !7
  %74 = call i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* nonnull %4, i32 %73)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %74, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 371)
  %75 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %4, i64 0, i32 12
  %76 = load i32, i32* %75, align 8, !tbaa !18
  %77 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %4, i64 0, i32 13
  %78 = load i32, i32* %77, align 4, !tbaa !22
  %79 = call i32 @_Z19_ConvertSMVer2Coresii(i32 %76, i32 %78)
  %80 = sitofp i32 %79 to float
  %81 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %4, i64 0, i32 14
  %82 = load i32, i32* %81, align 8, !tbaa !23
  %83 = sitofp i32 %82 to float
  %84 = fmul contract float %80, %83
  %85 = fdiv contract float 1.920000e+02, %84
  %86 = fptosi float %85 to i32
  %87 = icmp sgt i32 %86, 1
  %88 = select i1 %87, i32 %86, i32 1
  %89 = sitofp i32 %88 to float
  %90 = load i32, i32* %3, align 4, !tbaa !7
  %91 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 %90, i8* nonnull %71)
  %92 = load i32, i32* %75, align 8, !tbaa !18
  %93 = load i32, i32* %77, align 4, !tbaa !22
  %94 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i32 %92, i32 %93)
  %95 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %95) #20
  %96 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %96) #20
  %97 = load i32, i32* @MAX_TILES, align 4, !tbaa !7
  %98 = sitofp i32 %97 to float
  %99 = fdiv contract float %98, %89
  %100 = call contract float @sqrtf(float %99) #20
  %101 = call contract float @llvm.floor.f32(float %100) #20
  %102 = fmul contract float %101, 1.600000e+01
  %103 = fptosi float %102 to i32
  %104 = call contract float @sqrtf(float %99) #20
  %105 = call contract float @llvm.floor.f32(float %104) #20
  %106 = fmul contract float %105, 1.600000e+01
  %107 = fptosi float %106 to i32
  %108 = srem i32 %107, 512
  %109 = sub nsw i32 %103, %108
  %110 = icmp eq i32 %109, 0
  %111 = select i1 %110, i32 512, i32 %109
  %112 = load i32, i32* %81, align 8, !tbaa !23
  %113 = load i32, i32* %75, align 8, !tbaa !18
  %114 = load i32, i32* %77, align 4, !tbaa !22
  %115 = call i32 @_Z19_ConvertSMVer2Coresii(i32 %113, i32 %114)
  %116 = load i32, i32* %75, align 8, !tbaa !18
  %117 = load i32, i32* %77, align 4, !tbaa !22
  %118 = call i32 @_Z19_ConvertSMVer2Coresii(i32 %116, i32 %117)
  %119 = load i32, i32* %81, align 8, !tbaa !23
  %120 = mul nsw i32 %119, %118
  %121 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([50 x i8], [50 x i8]* @.str.20, i64 0, i64 0), i8* nonnull %71, i32 %112, i32 %115, i32 %120)
  %122 = fpext float %89 to double
  %123 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i64 0, i64 0), double %122)
  call void @_Z9getParamsiPPcR15hipDeviceProp_tRiS3_i(i32 %0, i8** %1, %struct.hipDeviceProp_t* nonnull align 8 undef, i32* nonnull align 4 dereferenceable(4) %5, i32* nonnull align 4 dereferenceable(4) %6, i32 %111)
  %124 = load i32, i32* %5, align 4, !tbaa !7
  %125 = load i32, i32* %6, align 4, !tbaa !7
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %130, label %127

127:                                              ; preds = %68
  %128 = load i8*, i8** @sSDKsample, align 8, !tbaa !3
  %129 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([95 x i8], [95 x i8]* @.str.22, i64 0, i64 0), i8* %128, i32 %124, i32 %125)
  call void @exit(i32 1) #21
  unreachable

130:                                              ; preds = %68
  %131 = and i32 %124, 15
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i8*, i8** @sSDKsample, align 8, !tbaa !3
  %135 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([69 x i8], [69 x i8]* @.str.23, i64 0, i64 0), i8* %134)
  call void @exit(i32 1) #21
  unreachable

136:                                              ; preds = %130
  %137 = sdiv i32 %124, 16
  %138 = icmp ult i32 %124, 16
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i8*, i8** @sSDKsample, align 8, !tbaa !3
  %141 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([59 x i8], [59 x i8]* @.str.24, i64 0, i64 0), i8* %140)
  call void @exit(i32 1) #21
  unreachable

142:                                              ; preds = %136
  %143 = bitcast %struct.ihipEvent_t** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %143) #20
  %144 = bitcast %struct.ihipEvent_t** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %144) #20
  %145 = sext i32 %124 to i64
  %146 = shl nsw i64 %145, 2
  %147 = mul i64 %146, %145
  %148 = shl i64 %147, 1
  %149 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %4, i64 0, i32 1
  %150 = load i64, i64* %149, align 8, !tbaa !24
  %151 = icmp ugt i64 %148, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %142
  %153 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([62 x i8], [62 x i8]* @str.99, i64 0, i64 0))
  %154 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @str.100, i64 0, i64 0))
  call void @exit(i32 1) #21
  unreachable

155:                                              ; preds = %142
  %156 = call noalias align 16 i8* @malloc(i64 %147) #20
  %157 = bitcast i8* %156 to float*
  %158 = call noalias align 16 i8* @malloc(i64 %147) #20
  %159 = bitcast i8* %158 to float*
  %160 = call noalias align 16 i8* @malloc(i64 %147) #20
  %161 = bitcast i8* %160 to float*
  %162 = bitcast float** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %162) #20
  %163 = bitcast float** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %163) #20
  %164 = bitcast float** %9 to i8**
  %165 = call i32 @hipMalloc(i8** nonnull %164, i64 %147)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %165, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 461)
  %166 = bitcast float** %10 to i8**
  %167 = call i32 @hipMalloc(i8** nonnull %166, i64 %147)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %167, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 462)
  %168 = mul i32 %124, %124
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %222

170:                                              ; preds = %155
  %171 = zext i32 %168 to i64
  %172 = icmp ult i32 %168, 8
  br i1 %172, label %220, label %173

173:                                              ; preds = %170
  %174 = and i64 %171, 4294967288
  %175 = add nsw i64 %174, -8
  %176 = lshr exact i64 %175, 3
  %177 = add nuw nsw i64 %176, 1
  %178 = and i64 %177, 1
  %179 = icmp eq i64 %175, 0
  br i1 %179, label %206, label %180

180:                                              ; preds = %173
  %181 = and i64 %177, 4611686018427387902
  br label %182

182:                                              ; preds = %182, %180
  %183 = phi i64 [ 0, %180 ], [ %202, %182 ]
  %184 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %180 ], [ %203, %182 ]
  %185 = phi i64 [ 0, %180 ], [ %204, %182 ]
  %186 = add <4 x i32> %184, <i32 4, i32 4, i32 4, i32 4>
  %187 = sitofp <4 x i32> %184 to <4 x float>
  %188 = sitofp <4 x i32> %186 to <4 x float>
  %189 = getelementptr inbounds float, float* %157, i64 %183
  %190 = bitcast float* %189 to <4 x float>*
  store <4 x float> %187, <4 x float>* %190, align 16, !tbaa !9
  %191 = getelementptr inbounds float, float* %189, i64 4
  %192 = bitcast float* %191 to <4 x float>*
  store <4 x float> %188, <4 x float>* %192, align 16, !tbaa !9
  %193 = or i64 %183, 8
  %194 = add <4 x i32> %184, <i32 8, i32 8, i32 8, i32 8>
  %195 = add <4 x i32> %184, <i32 12, i32 12, i32 12, i32 12>
  %196 = sitofp <4 x i32> %194 to <4 x float>
  %197 = sitofp <4 x i32> %195 to <4 x float>
  %198 = getelementptr inbounds float, float* %157, i64 %193
  %199 = bitcast float* %198 to <4 x float>*
  store <4 x float> %196, <4 x float>* %199, align 16, !tbaa !9
  %200 = getelementptr inbounds float, float* %198, i64 4
  %201 = bitcast float* %200 to <4 x float>*
  store <4 x float> %197, <4 x float>* %201, align 16, !tbaa !9
  %202 = add nuw i64 %183, 16
  %203 = add <4 x i32> %184, <i32 16, i32 16, i32 16, i32 16>
  %204 = add i64 %185, 2
  %205 = icmp eq i64 %204, %181
  br i1 %205, label %206, label %182, !llvm.loop !25

206:                                              ; preds = %182, %173
  %207 = phi i64 [ 0, %173 ], [ %202, %182 ]
  %208 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %173 ], [ %203, %182 ]
  %209 = icmp eq i64 %178, 0
  br i1 %209, label %218, label %210

210:                                              ; preds = %206
  %211 = add <4 x i32> %208, <i32 4, i32 4, i32 4, i32 4>
  %212 = sitofp <4 x i32> %208 to <4 x float>
  %213 = sitofp <4 x i32> %211 to <4 x float>
  %214 = getelementptr inbounds float, float* %157, i64 %207
  %215 = bitcast float* %214 to <4 x float>*
  store <4 x float> %212, <4 x float>* %215, align 16, !tbaa !9
  %216 = getelementptr inbounds float, float* %214, i64 4
  %217 = bitcast float* %216 to <4 x float>*
  store <4 x float> %213, <4 x float>* %217, align 16, !tbaa !9
  br label %218

218:                                              ; preds = %206, %210
  %219 = icmp eq i64 %174, %171
  br i1 %219, label %222, label %220

220:                                              ; preds = %170, %218
  %221 = phi i64 [ 0, %170 ], [ %174, %218 ]
  br label %285

222:                                              ; preds = %285, %218, %155
  %223 = load i8*, i8** %164, align 8, !tbaa !3
  %224 = call i32 @hipMemcpy(i8* %223, i8* %156, i64 %147, i32 1)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %224, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 471)
  %225 = icmp sgt i32 %124, 0
  br i1 %225, label %226, label %266

226:                                              ; preds = %222
  %227 = zext i32 %124 to i64
  %228 = and i64 %227, 1
  %229 = icmp eq i32 %124, 1
  %230 = and i64 %227, 4294967294
  %231 = icmp eq i64 %228, 0
  br label %232

232:                                              ; preds = %263, %226
  %233 = phi i64 [ 0, %226 ], [ %264, %263 ]
  %234 = mul nuw nsw i64 %233, %227
  br i1 %229, label %254, label %235

235:                                              ; preds = %232, %235
  %236 = phi i64 [ %251, %235 ], [ 0, %232 ]
  %237 = phi i64 [ %252, %235 ], [ 0, %232 ]
  %238 = add nuw nsw i64 %236, %234
  %239 = getelementptr inbounds float, float* %157, i64 %238
  %240 = load float, float* %239, align 4, !tbaa !9
  %241 = mul nuw nsw i64 %236, %227
  %242 = add nuw nsw i64 %241, %233
  %243 = getelementptr inbounds float, float* %161, i64 %242
  store float %240, float* %243, align 4, !tbaa !9
  %244 = or i64 %236, 1
  %245 = add nuw nsw i64 %244, %234
  %246 = getelementptr inbounds float, float* %157, i64 %245
  %247 = load float, float* %246, align 4, !tbaa !9
  %248 = mul nuw nsw i64 %244, %227
  %249 = add nuw nsw i64 %248, %233
  %250 = getelementptr inbounds float, float* %161, i64 %249
  store float %247, float* %250, align 4, !tbaa !9
  %251 = add nuw nsw i64 %236, 2
  %252 = add i64 %237, 2
  %253 = icmp eq i64 %252, %230
  br i1 %253, label %254, label %235, !llvm.loop !11

254:                                              ; preds = %235, %232
  %255 = phi i64 [ 0, %232 ], [ %251, %235 ]
  br i1 %231, label %263, label %256

256:                                              ; preds = %254
  %257 = add nuw nsw i64 %255, %234
  %258 = getelementptr inbounds float, float* %157, i64 %257
  %259 = load float, float* %258, align 4, !tbaa !9
  %260 = mul nuw nsw i64 %255, %227
  %261 = add nuw nsw i64 %260, %233
  %262 = getelementptr inbounds float, float* %161, i64 %261
  store float %259, float* %262, align 4, !tbaa !9
  br label %263

263:                                              ; preds = %254, %256
  %264 = add nuw nsw i64 %233, 1
  %265 = icmp eq i64 %264, %227
  br i1 %265, label %266, label %232, !llvm.loop !13

266:                                              ; preds = %263, %222
  %267 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([73 x i8], [73 x i8]* @.str.30, i64 0, i64 0), i32 %124, i32 %124, i32 %137, i32 %137, i32 16, i32 16, i32 16, i32 16)
  %268 = call i32 @hipEventCreate(%struct.ihipEvent_t** nonnull %7)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %268, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 484)
  %269 = call i32 @hipEventCreate(%struct.ihipEvent_t** nonnull %8)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %269, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 485)
  %270 = zext i32 %137 to i64
  %271 = shl nuw i64 %270, 32
  %272 = or i64 %271, %270
  %273 = bitcast float* %11 to i8*
  %274 = icmp eq i32 %168, 0
  %275 = zext i32 %168 to i64
  %276 = uitofp i64 %147 to float
  %277 = fmul contract float %276, 2.000000e+03
  %278 = fmul contract float %277, 0x3E10000000000000
  %279 = icmp ult i32 %168, 8
  %280 = and i64 %275, 4294967288
  %281 = icmp eq i64 %280, %275
  %282 = icmp ult i32 %168, 8
  %283 = and i64 %275, 4294967288
  %284 = icmp eq i64 %283, %275
  br label %303

285:                                              ; preds = %220, %285
  %286 = phi i64 [ %290, %285 ], [ %221, %220 ]
  %287 = trunc i64 %286 to i32
  %288 = sitofp i32 %287 to float
  %289 = getelementptr inbounds float, float* %157, i64 %286
  store float %288, float* %289, align 4, !tbaa !9
  %290 = add nuw nsw i64 %286, 1
  %291 = icmp eq i64 %290, %171
  br i1 %291, label %222, label %285, !llvm.loop !27

292:                                              ; preds = %525
  call void @free(i8* %156) #20
  call void @free(i8* %158) #20
  call void @free(i8* %160) #20
  %293 = load i8*, i8** %164, align 8, !tbaa !3
  %294 = call i32 @hipFree(i8* %293)
  %295 = load i8*, i8** %166, align 8, !tbaa !3
  %296 = call i32 @hipFree(i8* %295)
  %297 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %7, align 8, !tbaa !3
  %298 = call i32 @hipEventDestroy(%struct.ihipEvent_t* %297)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %298, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 604)
  %299 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %8, align 8, !tbaa !3
  %300 = call i32 @hipEventDestroy(%struct.ihipEvent_t* %299)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %300, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 605)
  %301 = and i8 %526, 1
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %535, label %537

303:                                              ; preds = %266, %525
  %304 = phi void (float*, float*, i32, i32)* [ undef, %266 ], [ %318, %525 ]
  %305 = phi i8* [ undef, %266 ], [ %317, %525 ]
  %306 = phi i8 [ 1, %266 ], [ %526, %525 ]
  %307 = phi i32 [ 0, %266 ], [ %533, %525 ]
  %308 = icmp ult i32 %307, 8
  br i1 %308, label %309, label %316

309:                                              ; preds = %303
  %310 = zext i32 %307 to i64
  %311 = getelementptr inbounds [8 x i8*], [8 x i8*]* @switch.table.main, i64 0, i64 %310
  %312 = load i8*, i8** %311, align 8
  %313 = zext i32 %307 to i64
  %314 = getelementptr inbounds [8 x void (float*, float*, i32, i32)*], [8 x void (float*, float*, i32, i32)*]* @switch.table.main.102, i64 0, i64 %313
  %315 = load void (float*, float*, i32, i32)*, void (float*, float*, i32, i32)** %314, align 8
  br label %316

316:                                              ; preds = %309, %303
  %317 = phi i8* [ %305, %303 ], [ %312, %309 ]
  %318 = phi void (float*, float*, i32, i32)* [ %304, %303 ], [ %315, %309 ]
  %319 = icmp eq void (float*, float*, i32, i32)* %318, bitcast (void (float*, float*, i32, i32)** @_Z4copyPfS_ii to void (float*, float*, i32, i32)*)
  %320 = icmp eq void (float*, float*, i32, i32)* %318, bitcast (void (float*, float*, i32, i32)** @_Z13copySharedMemPfS_ii to void (float*, float*, i32, i32)*)
  %321 = or i1 %319, %320
  %322 = icmp eq void (float*, float*, i32, i32)* %318, bitcast (void (float*, float*, i32, i32)** @_Z22transposeCoarseGrainedPfS_ii to void (float*, float*, i32, i32)*)
  %323 = icmp eq void (float*, float*, i32, i32)* %318, bitcast (void (float*, float*, i32, i32)** @_Z20transposeFineGrainedPfS_ii to void (float*, float*, i32, i32)*)
  %324 = or i1 %322, %323
  %325 = select i1 %324, float* %159, float* %161
  %326 = select i1 %321, float* %157, float* %325
  %327 = call i32 @hipGetLastError()
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %333, label %329

329:                                              ; preds = %316
  %330 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %331 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %327)
  %332 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %330, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 549, i32 %327, i8* %331, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i64 0, i64 0)) #22
  call void @exit(i32 1) #21
  unreachable

333:                                              ; preds = %316
  %334 = call i32 @__hipPushCallConfiguration(i64 %272, i32 1, i64 68719476752, i32 1, i64 0, %struct.ihipStream_t* null)
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %341

336:                                              ; preds = %333
  %337 = load float*, float** %10, align 8, !tbaa !3
  %338 = load float*, float** %9, align 8, !tbaa !3
  %339 = bitcast void (float*, float*, i32, i32)* %318 to void (float*, float*, i32, i32)**
  %340 = load void (float*, float*, i32, i32)*, void (float*, float*, i32, i32)** %339, align 8
  call void %340(float* %337, float* %338, i32 %124, i32 %124)
  br label %341

341:                                              ; preds = %336, %333
  %342 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %7, align 8, !tbaa !3
  %343 = call i32 @hipEventRecord(%struct.ihipEvent_t* %342, %struct.ihipStream_t* null)
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %347

345:                                              ; preds = %341
  %346 = bitcast void (float*, float*, i32, i32)* %318 to void (float*, float*, i32, i32)**
  br label %440

347:                                              ; preds = %341
  %348 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %349 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %343)
  %350 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %348, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 555, i32 %343, i8* %349, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0)) #22
  call void @exit(i32 1) #21
  unreachable

351:                                              ; preds = %448
  %352 = add nuw nsw i32 %441, 1
  %353 = icmp eq i32 %352, 100
  br i1 %353, label %354, label %440, !llvm.loop !29

354:                                              ; preds = %351
  %355 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %8, align 8, !tbaa !3
  %356 = call i32 @hipEventRecord(%struct.ihipEvent_t* %355, %struct.ihipStream_t* null)
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %362, label %358

358:                                              ; preds = %354
  %359 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %360 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %356)
  %361 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %359, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 563, i32 %356, i8* %360, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i64 0, i64 0)) #22
  call void @exit(i32 1) #21
  unreachable

362:                                              ; preds = %354
  %363 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %8, align 8, !tbaa !3
  %364 = call i32 @hipEventSynchronize(%struct.ihipEvent_t* %363)
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %370, label %366

366:                                              ; preds = %362
  %367 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %368 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %364)
  %369 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %367, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 564, i32 %364, i8* %368, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.44, i64 0, i64 0)) #22
  call void @exit(i32 1) #21
  unreachable

370:                                              ; preds = %362
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %273) #20
  %371 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %7, align 8, !tbaa !3
  %372 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %8, align 8, !tbaa !3
  %373 = call i32 @hipEventElapsedTime(float* nonnull %11, %struct.ihipEvent_t* %371, %struct.ihipEvent_t* %372)
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %379, label %375

375:                                              ; preds = %370
  %376 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %377 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %373)
  %378 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %376, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 566, i32 %373, i8* %377, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.45, i64 0, i64 0)) #22
  call void @exit(i32 1) #21
  unreachable

379:                                              ; preds = %370
  %380 = load i8*, i8** %166, align 8, !tbaa !3
  %381 = call i32 @hipMemcpy(i8* %158, i8* %380, i64 %147, i32 2)
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %387, label %383

383:                                              ; preds = %379
  %384 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %385 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %381)
  %386 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %384, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 569, i32 %381, i8* %385, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.46, i64 0, i64 0)) #22
  call void @exit(i32 1) #21
  unreachable

387:                                              ; preds = %379
  br i1 %274, label %498, label %388

388:                                              ; preds = %387
  br i1 %279, label %421, label %389

389:                                              ; preds = %388, %389
  %390 = phi i64 [ %415, %389 ], [ 0, %388 ]
  %391 = phi <4 x i1> [ %413, %389 ], [ <i1 true, i1 true, i1 true, i1 true>, %388 ]
  %392 = phi <4 x i1> [ %414, %389 ], [ <i1 true, i1 true, i1 true, i1 true>, %388 ]
  %393 = getelementptr inbounds float, float* %326, i64 %390
  %394 = bitcast float* %393 to <4 x float>*
  %395 = load <4 x float>, <4 x float>* %394, align 16, !tbaa !9
  %396 = getelementptr inbounds float, float* %393, i64 4
  %397 = bitcast float* %396 to <4 x float>*
  %398 = load <4 x float>, <4 x float>* %397, align 4, !tbaa !9
  %399 = getelementptr inbounds float, float* %159, i64 %390
  %400 = bitcast float* %399 to <4 x float>*
  %401 = load <4 x float>, <4 x float>* %400, align 16, !tbaa !9
  %402 = getelementptr inbounds float, float* %399, i64 4
  %403 = bitcast float* %402 to <4 x float>*
  %404 = load <4 x float>, <4 x float>* %403, align 16, !tbaa !9
  %405 = fsub contract <4 x float> %395, %401
  %406 = fsub contract <4 x float> %398, %404
  %407 = fcmp contract ole <4 x float> %405, <float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000>
  %408 = fcmp contract ole <4 x float> %406, <float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000>
  %409 = fcmp contract oge <4 x float> %405, <float 0xBF847AE140000000, float 0xBF847AE140000000, float 0xBF847AE140000000, float 0xBF847AE140000000>
  %410 = fcmp contract oge <4 x float> %406, <float 0xBF847AE140000000, float 0xBF847AE140000000, float 0xBF847AE140000000, float 0xBF847AE140000000>
  %411 = and <4 x i1> %407, %409
  %412 = and <4 x i1> %408, %410
  %413 = and <4 x i1> %391, %411
  %414 = and <4 x i1> %392, %412
  %415 = add nuw i64 %390, 8
  %416 = icmp eq i64 %415, %280
  br i1 %416, label %417, label %389, !llvm.loop !30

417:                                              ; preds = %389
  %418 = and <4 x i1> %414, %413
  %419 = bitcast <4 x i1> %418 to i4
  %420 = icmp eq i4 %419, -1
  br i1 %281, label %438, label %421

421:                                              ; preds = %388, %417
  %422 = phi i64 [ 0, %388 ], [ %280, %417 ]
  %423 = phi i1 [ true, %388 ], [ %420, %417 ]
  br label %424

424:                                              ; preds = %421, %424
  %425 = phi i64 [ %436, %424 ], [ %422, %421 ]
  %426 = phi i1 [ %435, %424 ], [ %423, %421 ]
  %427 = getelementptr inbounds float, float* %326, i64 %425
  %428 = load float, float* %427, align 4, !tbaa !9
  %429 = getelementptr inbounds float, float* %159, i64 %425
  %430 = load float, float* %429, align 4, !tbaa !9
  %431 = fsub contract float %428, %430
  %432 = fcmp contract ole float %431, 0x3F847AE140000000
  %433 = fcmp contract oge float %431, 0xBF847AE140000000
  %434 = and i1 %432, %433
  %435 = and i1 %426, %434
  %436 = add nuw nsw i64 %425, 1
  %437 = icmp eq i64 %436, %275
  br i1 %437, label %438, label %424, !llvm.loop !31

438:                                              ; preds = %424, %417
  %439 = phi i1 [ %420, %417 ], [ %435, %424 ]
  br i1 %439, label %457, label %455

440:                                              ; preds = %345, %351
  %441 = phi i32 [ 0, %345 ], [ %352, %351 ]
  %442 = call i32 @__hipPushCallConfiguration(i64 %272, i32 1, i64 68719476752, i32 1, i64 0, %struct.ihipStream_t* null)
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %444, label %448

444:                                              ; preds = %440
  %445 = load float*, float** %10, align 8, !tbaa !3
  %446 = load float*, float** %9, align 8, !tbaa !3
  %447 = load void (float*, float*, i32, i32)*, void (float*, float*, i32, i32)** %346, align 8
  call void %447(float* %445, float* %446, i32 %124, i32 %124)
  br label %448

448:                                              ; preds = %444, %440
  %449 = call i32 @hipGetLastError()
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %351, label %451

451:                                              ; preds = %448
  %452 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %453 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %449)
  %454 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %452, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 560, i32 %449, i8* %453, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i64 0, i64 0)) #22
  call void @exit(i32 1) #21
  unreachable

455:                                              ; preds = %438
  %456 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.47, i64 0, i64 0), i8* %317)
  br label %457

457:                                              ; preds = %455, %438
  %458 = phi i8 [ 0, %455 ], [ %306, %438 ]
  %459 = load i8*, i8** %166, align 8, !tbaa !3
  %460 = call i32 @hipMemcpy(i8* nonnull %158, i8* %459, i64 %147, i32 2)
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %462, label %502

462:                                              ; preds = %457
  br i1 %282, label %495, label %463

463:                                              ; preds = %462, %463
  %464 = phi i64 [ %489, %463 ], [ 0, %462 ]
  %465 = phi <4 x i1> [ %487, %463 ], [ <i1 true, i1 true, i1 true, i1 true>, %462 ]
  %466 = phi <4 x i1> [ %488, %463 ], [ <i1 true, i1 true, i1 true, i1 true>, %462 ]
  %467 = getelementptr inbounds float, float* %326, i64 %464
  %468 = bitcast float* %467 to <4 x float>*
  %469 = load <4 x float>, <4 x float>* %468, align 16, !tbaa !9
  %470 = getelementptr inbounds float, float* %467, i64 4
  %471 = bitcast float* %470 to <4 x float>*
  %472 = load <4 x float>, <4 x float>* %471, align 4, !tbaa !9
  %473 = getelementptr inbounds float, float* %159, i64 %464
  %474 = bitcast float* %473 to <4 x float>*
  %475 = load <4 x float>, <4 x float>* %474, align 16, !tbaa !9
  %476 = getelementptr inbounds float, float* %473, i64 4
  %477 = bitcast float* %476 to <4 x float>*
  %478 = load <4 x float>, <4 x float>* %477, align 16, !tbaa !9
  %479 = fsub contract <4 x float> %469, %475
  %480 = fsub contract <4 x float> %472, %478
  %481 = fcmp contract ole <4 x float> %479, <float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000>
  %482 = fcmp contract ole <4 x float> %480, <float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000>
  %483 = fcmp contract oge <4 x float> %479, <float 0xBF847AE140000000, float 0xBF847AE140000000, float 0xBF847AE140000000, float 0xBF847AE140000000>
  %484 = fcmp contract oge <4 x float> %480, <float 0xBF847AE140000000, float 0xBF847AE140000000, float 0xBF847AE140000000, float 0xBF847AE140000000>
  %485 = and <4 x i1> %481, %483
  %486 = and <4 x i1> %482, %484
  %487 = and <4 x i1> %465, %485
  %488 = and <4 x i1> %466, %486
  %489 = add nuw i64 %464, 8
  %490 = icmp eq i64 %489, %283
  br i1 %490, label %491, label %463, !llvm.loop !32

491:                                              ; preds = %463
  %492 = and <4 x i1> %488, %487
  %493 = bitcast <4 x i1> %492 to i4
  %494 = icmp eq i4 %493, -1
  br i1 %284, label %521, label %495

495:                                              ; preds = %462, %491
  %496 = phi i64 [ 0, %462 ], [ %283, %491 ]
  %497 = phi i1 [ true, %462 ], [ %494, %491 ]
  br label %507

498:                                              ; preds = %387
  %499 = load i8*, i8** %166, align 8, !tbaa !3
  %500 = call i32 @hipMemcpy(i8* %158, i8* %499, i64 %147, i32 2)
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %525, label %502

502:                                              ; preds = %498, %457
  %503 = phi i32 [ %500, %498 ], [ %460, %457 ]
  %504 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %505 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %503)
  %506 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %504, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 579, i32 %503, i8* %505, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.46, i64 0, i64 0)) #22
  call void @exit(i32 1) #21
  unreachable

507:                                              ; preds = %495, %507
  %508 = phi i64 [ %519, %507 ], [ %496, %495 ]
  %509 = phi i1 [ %518, %507 ], [ %497, %495 ]
  %510 = getelementptr inbounds float, float* %326, i64 %508
  %511 = load float, float* %510, align 4, !tbaa !9
  %512 = getelementptr inbounds float, float* %159, i64 %508
  %513 = load float, float* %512, align 4, !tbaa !9
  %514 = fsub contract float %511, %513
  %515 = fcmp contract ole float %514, 0x3F847AE140000000
  %516 = fcmp contract oge float %514, 0xBF847AE140000000
  %517 = and i1 %515, %516
  %518 = and i1 %509, %517
  %519 = add nuw nsw i64 %508, 1
  %520 = icmp eq i64 %519, %275
  br i1 %520, label %521, label %507, !llvm.loop !33

521:                                              ; preds = %507, %491
  %522 = phi i1 [ %494, %491 ], [ %518, %507 ]
  br i1 %522, label %525, label %523

523:                                              ; preds = %521
  %524 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.47, i64 0, i64 0), i8* %317)
  br label %525

525:                                              ; preds = %498, %523, %521
  %526 = phi i8 [ 0, %523 ], [ %458, %521 ], [ %306, %498 ]
  %527 = load float, float* %11, align 4, !tbaa !9
  %528 = fdiv contract float %527, 1.000000e+02
  %529 = fdiv contract float %278, %528
  %530 = fpext float %529 to double
  %531 = fpext float %528 to double
  %532 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([113 x i8], [113 x i8]* @.str.48, i64 0, i64 0), i8* %317, double %530, double %531, i32 %168, i32 1, i32 256)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %273) #20
  %533 = add nuw nsw i32 %307, 1
  %534 = icmp eq i32 %533, 8
  br i1 %534, label %292, label %303, !llvm.loop !34

535:                                              ; preds = %292
  %536 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.97, i64 0, i64 0))
  call void @exit(i32 1) #21
  unreachable

537:                                              ; preds = %292
  %538 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @str.98, i64 0, i64 0))
  call void @exit(i32 0) #21
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_Z14findCudaDeviceiPPKc(i32 %0, i8** %1) local_unnamed_addr #8 comdat {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = icmp sgt i32 %0, 1
  br i1 %5, label %6, label %105

6:                                                ; preds = %2
  %7 = zext i32 %0 to i64
  br label %8

8:                                                ; preds = %45, %6
  %9 = phi i64 [ 1, %6 ], [ %47, %45 ]
  %10 = phi i8 [ 0, %6 ], [ %46, %45 ]
  %11 = getelementptr inbounds i8*, i8** %1, i64 %9
  %12 = load i8*, i8** %11, align 8, !tbaa !3
  br label %13

13:                                               ; preds = %13, %8
  %14 = phi i64 [ %18, %13 ], [ 0, %8 ]
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1, !tbaa !14
  %17 = icmp eq i8 %16, 45
  %18 = add nuw i64 %14, 1
  br i1 %17, label %13, label %19, !llvm.loop !15

19:                                               ; preds = %13
  %20 = trunc i64 %14 to i32
  %21 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %12) #19
  %22 = trunc i64 %21 to i32
  %23 = add i32 %22, -1
  %24 = icmp sgt i32 %23, %20
  %25 = shl i64 %14, 32
  %26 = ashr exact i64 %25, 32
  %27 = select i1 %24, i64 %26, i64 0
  %28 = getelementptr inbounds i8, i8* %12, i64 %27
  %29 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %28, i32 61) #19
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %28) #19
  br label %37

33:                                               ; preds = %19
  %34 = ptrtoint i8* %29 to i64
  %35 = ptrtoint i8* %28 to i64
  %36 = sub i64 %34, %35
  br label %37

37:                                               ; preds = %33, %31
  %38 = phi i64 [ %32, %31 ], [ %36, %33 ]
  %39 = trunc i64 %38 to i32
  %40 = icmp eq i32 %39, 6
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = tail call i32 @strncasecmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), i64 6) #19
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %37
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i8 [ %10, %44 ], [ 1, %41 ]
  %47 = add nuw nsw i64 %9, 1
  %48 = icmp eq i64 %47, %7
  br i1 %48, label %49, label %8, !llvm.loop !16

49:                                               ; preds = %45
  %50 = and i8 %46, 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %105, label %52

52:                                               ; preds = %49, %88
  %53 = phi i64 [ %91, %88 ], [ 1, %49 ]
  %54 = phi i8 [ %90, %88 ], [ 0, %49 ]
  %55 = phi i32 [ %89, %88 ], [ -1, %49 ]
  %56 = getelementptr inbounds i8*, i8** %1, i64 %53
  %57 = load i8*, i8** %56, align 8, !tbaa !3
  br label %58

58:                                               ; preds = %58, %52
  %59 = phi i64 [ %63, %58 ], [ 0, %52 ]
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1, !tbaa !14
  %62 = icmp eq i8 %61, 45
  %63 = add nuw i64 %59, 1
  br i1 %62, label %58, label %64, !llvm.loop !15

64:                                               ; preds = %58
  %65 = trunc i64 %59 to i32
  %66 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %57) #19
  %67 = trunc i64 %66 to i32
  %68 = add i32 %67, -1
  %69 = icmp sgt i32 %68, %65
  %70 = shl i64 %59, 32
  %71 = ashr exact i64 %70, 32
  %72 = select i1 %69, i64 %71, i64 0
  %73 = getelementptr inbounds i8, i8* %57, i64 %72
  %74 = tail call i32 @strncasecmp(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0), i64 7) #19
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %64
  %77 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %73) #19
  %78 = trunc i64 %77 to i32
  %79 = icmp sgt i32 %78, 7
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = getelementptr inbounds i8, i8* %73, i64 7
  %82 = load i8, i8* %81, align 1, !tbaa !14
  %83 = icmp eq i8 %82, 61
  %84 = select i1 %83, i64 8, i64 7
  %85 = getelementptr inbounds i8, i8* %73, i64 %84
  %86 = tail call i64 @strtol(i8* nocapture nonnull %85, i8** null, i32 10) #20
  %87 = trunc i64 %86 to i32
  br label %88

88:                                               ; preds = %80, %76, %64
  %89 = phi i32 [ %87, %80 ], [ 0, %76 ], [ %55, %64 ]
  %90 = phi i8 [ 1, %80 ], [ 1, %76 ], [ %54, %64 ]
  %91 = add nuw nsw i64 %53, 1
  %92 = icmp eq i64 %91, %7
  br i1 %92, label %93, label %52, !llvm.loop !17

93:                                               ; preds = %88
  %94 = and i8 %90, 1
  %95 = icmp eq i8 %94, 0
  %96 = select i1 %95, i32 0, i32 %89
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.55, i64 0, i64 0))
  tail call void @exit(i32 1) #21
  unreachable

100:                                              ; preds = %93
  %101 = tail call i32 @_Z13gpuDeviceIniti(i32 %96)
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %136

103:                                              ; preds = %100
  %104 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @str.101, i64 0, i64 0))
  tail call void @exit(i32 1) #21
  unreachable

105:                                              ; preds = %2, %49
  %106 = tail call i32 @_Z23gpuGetMaxGflopsDeviceIdv()
  %107 = tail call i32 @hipSetDevice(i32 %106)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %111 = tail call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %107)
  %112 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.58, i64 0, i64 0), i32 1067, i32 %107, i8* %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i64 0, i64 0)) #22
  tail call void @exit(i32 1) #21
  unreachable

113:                                              ; preds = %105
  %114 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %114) #20
  store i32 0, i32* %3, align 4, !tbaa !7
  %115 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %115) #20
  store i32 0, i32* %4, align 4, !tbaa !7
  %116 = call i32 @hipDeviceGetAttribute(i32* nonnull %3, i32 36, i32 %106)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %113
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %120 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %116)
  %121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.58, i64 0, i64 0), i32 1069, i32 %116, i8* %120, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.59, i64 0, i64 0)) #22
  call void @exit(i32 1) #21
  unreachable

122:                                              ; preds = %113
  %123 = call i32 @hipDeviceGetAttribute(i32* nonnull %4, i32 37, i32 %106)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %122
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %127 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %123)
  %128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.58, i64 0, i64 0), i32 1070, i32 %123, i8* %127, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.60, i64 0, i64 0)) #22
  call void @exit(i32 1) #21
  unreachable

129:                                              ; preds = %122
  %130 = load i32, i32* %3, align 4, !tbaa !7
  %131 = load i32, i32* %4, align 4, !tbaa !7
  %132 = call i8* @_Z22_ConvertSMVer2ArchNameii(i32 %130, i32 %131)
  %133 = load i32, i32* %3, align 4, !tbaa !7
  %134 = load i32, i32* %4, align 4, !tbaa !7
  %135 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([52 x i8], [52 x i8]* @.str.61, i64 0, i64 0), i32 %106, i8* %132, i32 %133, i32 %134)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %115) #20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %114) #20
  br label %136

136:                                              ; preds = %100, %129
  %137 = phi i32 [ %101, %100 ], [ %106, %129 ]
  ret i32 %137
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %0, i8* %1, i8* %2, i32 %3) local_unnamed_addr #9 comdat {
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %8 = tail call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %0)
  %9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.90, i64 0, i64 0), i8* %2, i32 %3, i32 %0, i8* %8, i8* %1) #22
  tail call void @exit(i32 1) #21
  unreachable

10:                                               ; preds = %4
  ret void
}

declare dso_local i32 @hipGetDevice(i32*) local_unnamed_addr #0

declare dso_local i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t*, i32) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_Z19_ConvertSMVer2Coresii(i32 %0, i32 %1) local_unnamed_addr #8 comdat {
  %3 = shl i32 %0, 4
  %4 = add nsw i32 %3, %1
  switch i32 %4, label %26 [
    i32 48, label %22
    i32 50, label %5
    i32 53, label %6
    i32 55, label %7
    i32 80, label %8
    i32 82, label %9
    i32 83, label %10
    i32 96, label %11
    i32 97, label %12
    i32 98, label %13
    i32 112, label %14
    i32 114, label %15
    i32 117, label %16
    i32 128, label %17
    i32 134, label %18
    i32 135, label %19
    i32 137, label %20
    i32 144, label %21
  ]

5:                                                ; preds = %2
  br label %22

6:                                                ; preds = %2
  br label %22

7:                                                ; preds = %2
  br label %22

8:                                                ; preds = %2
  br label %22

9:                                                ; preds = %2
  br label %22

10:                                               ; preds = %2
  br label %22

11:                                               ; preds = %2
  br label %22

12:                                               ; preds = %2
  br label %22

13:                                               ; preds = %2
  br label %22

14:                                               ; preds = %2
  br label %22

15:                                               ; preds = %2
  br label %22

16:                                               ; preds = %2
  br label %22

17:                                               ; preds = %2
  br label %22

18:                                               ; preds = %2
  br label %22

19:                                               ; preds = %2
  br label %22

20:                                               ; preds = %2
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %2, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %23 = phi i64 [ 0, %2 ], [ 1, %5 ], [ 2, %6 ], [ 3, %7 ], [ 4, %8 ], [ 5, %9 ], [ 6, %10 ], [ 7, %11 ], [ 8, %12 ], [ 9, %13 ], [ 10, %14 ], [ 11, %15 ], [ 12, %16 ], [ 13, %17 ], [ 14, %18 ], [ 15, %19 ], [ 16, %20 ], [ 17, %21 ]
  %24 = getelementptr inbounds [19 x %struct.sSMtoCores], [19 x %struct.sSMtoCores]* @__const._Z19_ConvertSMVer2Coresii.nGpuArchCoresPerSM, i64 0, i64 %23, i32 1
  %25 = load i32, i32* %24, align 4, !tbaa !35
  br label %28

26:                                               ; preds = %2
  %27 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([69 x i8], [69 x i8]* @.str.89, i64 0, i64 0), i32 %0, i32 %1, i32 128)
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i32 [ %25, %22 ], [ 128, %26 ]
  ret i32 %29
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #10

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #11

declare dso_local i32 @hipMalloc(i8**, i64) local_unnamed_addr #0

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #0

declare dso_local i32 @hipEventCreate(%struct.ihipEvent_t**) local_unnamed_addr #0

declare dso_local i32 @hipGetLastError() local_unnamed_addr #0

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #0

declare dso_local i32 @hipEventRecord(%struct.ihipEvent_t*, %struct.ihipStream_t*) local_unnamed_addr #0

declare dso_local i32 @hipEventSynchronize(%struct.ihipEvent_t*) local_unnamed_addr #0

declare dso_local i32 @hipEventElapsedTime(float*, %struct.ihipEvent_t*, %struct.ihipEvent_t*) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #12

declare dso_local i32 @hipFree(i8*) local_unnamed_addr #0

declare dso_local i32 @hipEventDestroy(%struct.ihipEvent_t*) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncasecmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_Z13gpuDeviceIniti(i32 %0) local_unnamed_addr #8 comdat {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #20
  %7 = call i32 @hipGetDeviceCount(i32* nonnull %2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %11 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %7)
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.58, i64 0, i64 0), i32 999, i32 %7, i8* %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.62, i64 0, i64 0)) #22
  call void @exit(i32 1) #21
  unreachable

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4, !tbaa !7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %18 = call i64 @fwrite(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.63, i64 0, i64 0), i64 56, i64 1, %struct._IO_FILE* %17) #22
  call void @exit(i32 1) #21
  unreachable

19:                                               ; preds = %13
  %20 = icmp sgt i32 %0, 0
  %21 = select i1 %20, i32 %0, i32 0
  %22 = icmp slt i32 %21, %14
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %25 = call i32 @fputc(i32 10, %struct._IO_FILE* %24)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %27 = load i32, i32* %2, align 4, !tbaa !7
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.65, i64 0, i64 0), i32 %27) #22
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.66, i64 0, i64 0), i32 %21) #22
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %32 = call i32 @fputc(i32 10, %struct._IO_FILE* %31)
  %33 = sub nsw i32 0, %21
  br label %84

34:                                               ; preds = %19
  %35 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %35) #20
  store i32 -1, i32* %3, align 4, !tbaa !7
  %36 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %36) #20
  store i32 0, i32* %4, align 4, !tbaa !7
  %37 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %37) #20
  store i32 0, i32* %5, align 4, !tbaa !7
  %38 = call i32 @hipDeviceGetAttribute(i32* nonnull %3, i32 33, i32 %21)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %42 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %38)
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.58, i64 0, i64 0), i32 1025, i32 %38, i8* %42, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.67, i64 0, i64 0)) #22
  call void @exit(i32 1) #21
  unreachable

44:                                               ; preds = %34
  %45 = call i32 @hipDeviceGetAttribute(i32* nonnull %4, i32 36, i32 %21)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %49 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %45)
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.58, i64 0, i64 0), i32 1026, i32 %45, i8* %49, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.59, i64 0, i64 0)) #22
  call void @exit(i32 1) #21
  unreachable

51:                                               ; preds = %44
  %52 = call i32 @hipDeviceGetAttribute(i32* nonnull %5, i32 37, i32 %21)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %56 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %52)
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.58, i64 0, i64 0), i32 1027, i32 %52, i8* %56, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.60, i64 0, i64 0)) #22
  call void @exit(i32 1) #21
  unreachable

58:                                               ; preds = %51
  %59 = load i32, i32* %3, align 4, !tbaa !7
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %63 = call i64 @fwrite(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.68, i64 0, i64 0), i64 90, i64 1, %struct._IO_FILE* %62) #22
  br label %82

64:                                               ; preds = %58
  %65 = load i32, i32* %4, align 4, !tbaa !7
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %69 = call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.69, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %68) #22
  call void @exit(i32 1) #21
  unreachable

70:                                               ; preds = %64
  %71 = call i32 @hipSetDevice(i32 %21)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %75 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %71)
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.58, i64 0, i64 0), i32 1040, i32 %71, i8* %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i64 0, i64 0)) #22
  call void @exit(i32 1) #21
  unreachable

77:                                               ; preds = %70
  %78 = load i32, i32* %4, align 4, !tbaa !7
  %79 = load i32, i32* %5, align 4, !tbaa !7
  %80 = call i8* @_Z22_ConvertSMVer2ArchNameii(i32 %78, i32 %79)
  %81 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @.str.70, i64 0, i64 0), i32 %21, i8* %80)
  br label %82

82:                                               ; preds = %77, %61
  %83 = phi i32 [ -1, %61 ], [ %21, %77 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %37) #20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %36) #20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %35) #20
  br label %84

84:                                               ; preds = %82, %23
  %85 = phi i32 [ %33, %23 ], [ %83, %82 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #20
  ret i32 %85
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_Z23gpuGetMaxGflopsDeviceIdv() local_unnamed_addr #8 comdat {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #20
  store i32 0, i32* %1, align 4, !tbaa !7
  %8 = call i32 @hipGetDeviceCount(i32* nonnull %1)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %12 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %8)
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.58, i64 0, i64 0), i32 1092, i32 %8, i8* %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.62, i64 0, i64 0)) #22
  call void @exit(i32 1) #21
  unreachable

14:                                               ; preds = %0
  %15 = load i32, i32* %1, align 4, !tbaa !7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = bitcast i32* %2 to i8*
  %19 = bitcast i32* %3 to i8*
  %20 = bitcast i32* %4 to i8*
  %21 = bitcast i32* %5 to i8*
  %22 = bitcast i32* %6 to i8*
  %23 = icmp sgt i32 %15, 0
  br i1 %23, label %27, label %99

24:                                               ; preds = %14
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %26 = call i64 @fwrite(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.71, i64 0, i64 0), i64 66, i64 1, %struct._IO_FILE* %25) #22
  call void @exit(i32 1) #21
  unreachable

27:                                               ; preds = %17, %92
  %28 = phi i32 [ %96, %92 ], [ 0, %17 ]
  %29 = phi i64 [ %95, %92 ], [ 0, %17 ]
  %30 = phi i32 [ %94, %92 ], [ 0, %17 ]
  %31 = phi i32 [ %93, %92 ], [ 0, %17 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #20
  store i32 -1, i32* %2, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #20
  store i32 0, i32* %3, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #20
  store i32 0, i32* %4, align 4, !tbaa !7
  %32 = call i32 @hipDeviceGetAttribute(i32* nonnull %2, i32 33, i32 %28)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %36 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %32)
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.58, i64 0, i64 0), i32 1106, i32 %32, i8* %36, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.72, i64 0, i64 0)) #22
  call void @exit(i32 1) #21
  unreachable

38:                                               ; preds = %27
  %39 = call i32 @hipDeviceGetAttribute(i32* nonnull %3, i32 36, i32 %28)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %43 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %39)
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.58, i64 0, i64 0), i32 1107, i32 %39, i8* %43, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.73, i64 0, i64 0)) #22
  call void @exit(i32 1) #21
  unreachable

45:                                               ; preds = %38
  %46 = call i32 @hipDeviceGetAttribute(i32* nonnull %4, i32 37, i32 %28)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %50 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %46)
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.58, i64 0, i64 0), i32 1108, i32 %46, i8* %50, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.74, i64 0, i64 0)) #22
  call void @exit(i32 1) #21
  unreachable

52:                                               ; preds = %45
  %53 = load i32, i32* %2, align 4, !tbaa !7
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %90, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %3, align 4, !tbaa !7
  %57 = icmp eq i32 %56, 9999
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 9999
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = call i32 @_Z19_ConvertSMVer2Coresii(i32 %56, i32 %58)
  br label %63

63:                                               ; preds = %55, %61
  %64 = phi i32 [ %62, %61 ], [ 1, %55 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #20
  store i32 0, i32* %5, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #20
  store i32 0, i32* %6, align 4, !tbaa !7
  %65 = call i32 @hipDeviceGetAttribute(i32* nonnull %5, i32 32, i32 %28)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %69 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %65)
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.58, i64 0, i64 0), i32 1120, i32 %65, i8* %69, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.75, i64 0, i64 0)) #22
  call void @exit(i32 1) #21
  unreachable

71:                                               ; preds = %63
  %72 = call i32 @hipDeviceGetAttribute(i32* nonnull %6, i32 29, i32 %28)
  switch i32 %72, label %75 [
    i32 0, label %73
    i32 1, label %79
  ]

73:                                               ; preds = %71
  %74 = load i32, i32* %6, align 4, !tbaa !7
  br label %79

75:                                               ; preds = %71
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %77 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %72)
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.58, i64 0, i64 0), i32 1129, i32 %72, i8* %77) #22
  call void @exit(i32 1) #21
  unreachable

79:                                               ; preds = %71, %73
  %80 = phi i32 [ %74, %73 ], [ %72, %71 ]
  %81 = load i32, i32* %5, align 4, !tbaa !7
  %82 = sext i32 %81 to i64
  %83 = sext i32 %64 to i64
  %84 = mul nsw i64 %82, %83
  %85 = sext i32 %80 to i64
  %86 = mul i64 %84, %85
  %87 = icmp ugt i64 %86, %29
  %88 = select i1 %87, i32 %28, i32 %31
  %89 = select i1 %87, i64 %86, i64 %29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #20
  br label %92

90:                                               ; preds = %52
  %91 = add nsw i32 %30, 1
  br label %92

92:                                               ; preds = %90, %79
  %93 = phi i32 [ %88, %79 ], [ %31, %90 ]
  %94 = phi i32 [ %30, %79 ], [ %91, %90 ]
  %95 = phi i64 [ %89, %79 ], [ %29, %90 ]
  %96 = add nuw nsw i32 %28, 1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #20
  %97 = load i32, i32* %1, align 4, !tbaa !7
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %27, label %99, !llvm.loop !37

99:                                               ; preds = %92, %17
  %100 = phi i32 [ 0, %17 ], [ %93, %92 ]
  %101 = phi i32 [ 0, %17 ], [ %94, %92 ]
  %102 = phi i32 [ %15, %17 ], [ %97, %92 ]
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %106 = call i64 @fwrite(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.77, i64 0, i64 0), i64 80, i64 1, %struct._IO_FILE* %105) #22
  call void @exit(i32 1) #21
  unreachable

107:                                              ; preds = %99
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #20
  ret i32 %100
}

declare dso_local i32 @hipSetDevice(i32) local_unnamed_addr #0

declare dso_local i32 @hipDeviceGetAttribute(i32*, i32, i32) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i8* @_Z22_ConvertSMVer2ArchNameii(i32 %0, i32 %1) local_unnamed_addr #8 comdat {
  %3 = shl i32 %0, 4
  %4 = add nsw i32 %3, %1
  switch i32 %4, label %26 [
    i32 48, label %22
    i32 50, label %5
    i32 53, label %6
    i32 55, label %7
    i32 80, label %8
    i32 82, label %9
    i32 83, label %10
    i32 96, label %11
    i32 97, label %12
    i32 98, label %13
    i32 112, label %14
    i32 114, label %15
    i32 117, label %16
    i32 128, label %17
    i32 134, label %18
    i32 135, label %19
    i32 137, label %20
    i32 144, label %21
  ]

5:                                                ; preds = %2
  br label %22

6:                                                ; preds = %2
  br label %22

7:                                                ; preds = %2
  br label %22

8:                                                ; preds = %2
  br label %22

9:                                                ; preds = %2
  br label %22

10:                                               ; preds = %2
  br label %22

11:                                               ; preds = %2
  br label %22

12:                                               ; preds = %2
  br label %22

13:                                               ; preds = %2
  br label %22

14:                                               ; preds = %2
  br label %22

15:                                               ; preds = %2
  br label %22

16:                                               ; preds = %2
  br label %22

17:                                               ; preds = %2
  br label %22

18:                                               ; preds = %2
  br label %22

19:                                               ; preds = %2
  br label %22

20:                                               ; preds = %2
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %2, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %23 = phi i64 [ 0, %2 ], [ 1, %5 ], [ 2, %6 ], [ 3, %7 ], [ 4, %8 ], [ 5, %9 ], [ 6, %10 ], [ 7, %11 ], [ 8, %12 ], [ 9, %13 ], [ 10, %14 ], [ 11, %15 ], [ 12, %16 ], [ 13, %17 ], [ 14, %18 ], [ 15, %19 ], [ 16, %20 ], [ 17, %21 ]
  %24 = getelementptr inbounds [19 x %struct.sSMtoArchName], [19 x %struct.sSMtoArchName]* @__const._Z22_ConvertSMVer2ArchNameii.nGpuArchNameSM, i64 0, i64 %23, i32 1
  %25 = load i8*, i8** %24, align 8, !tbaa !38
  br label %28

26:                                               ; preds = %2
  %27 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([63 x i8], [63 x i8]* @.str.88, i64 0, i64 0), i32 %0, i32 %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i8* [ %25, %22 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i64 0, i64 0), %26 ]
  ret i8* %29
}

declare dso_local i32 @hipGetDeviceCount(i32*) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %0) unnamed_addr #9 {
  %2 = tail call i8* @hipGetErrorName(i32 %0)
  ret i8* %2
}

declare dso_local i8* @hipGetErrorName(i32) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.floor.f32(float) #16

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local float @sqrtf(float) local_unnamed_addr #17

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_transpose.cpp() #18 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #20
  %2 = load i32, i32* @MATRIX_SIZE_X, align 4, !tbaa !7
  %3 = srem i32 %2, 512
  %4 = sub nsw i32 %2, %3
  %5 = load i32, i32* @MATRIX_SIZE_Y, align 4, !tbaa !7
  %6 = srem i32 %5, 512
  %7 = sub nsw i32 %5, %6
  %8 = mul nsw i32 %7, %4
  %9 = sdiv i32 %8, 256
  store i32 %9, i32* @MAX_TILES, align 4, !tbaa !7
  ret void
}

declare dso_local i32 @__hipRegisterFunction(i8**, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32*) local_unnamed_addr

declare dso_local i8** @__hipRegisterFatBinary(i8*) local_unnamed_addr

define internal void @__hip_module_ctor(i8* nocapture readnone %0) {
  %2 = load i8**, i8*** @__hip_gpubin_handle, align 8
  %3 = icmp eq i8** %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i8** @__hipRegisterFatBinary(i8* bitcast ({ i32, i32, i8*, i8* }* @__hip_fatbin_wrapper to i8*))
  store i8** %5, i8*** @__hip_gpubin_handle, align 8
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i8** [ %5, %4 ], [ %2, %1 ]
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (float*, float*, i32, i32)** @_Z4copyPfS_ii to i8*), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %9 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (float*, float*, i32, i32)** @_Z13copySharedMemPfS_ii to i8*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %10 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (float*, float*, i32, i32)** @_Z14transposeNaivePfS_ii to i8*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %11 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (float*, float*, i32, i32)** @_Z18transposeCoalescedPfS_ii to i8*), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @3, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @3, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %12 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (float*, float*, i32, i32)** @_Z24transposeNoBankConflictsPfS_ii to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @4, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @4, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %13 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (float*, float*, i32, i32)** @_Z17transposeDiagonalPfS_ii to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @5, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @5, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %14 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (float*, float*, i32, i32)** @_Z20transposeFineGrainedPfS_ii to i8*), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @6, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @6, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %15 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (float*, float*, i32, i32)** @_Z22transposeCoarseGrainedPfS_ii to i8*), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @7, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @7, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %16 = tail call i32 @atexit(void (i8*)* nonnull @__hip_module_dtor)
  ret void
}

declare dso_local void @__hipUnregisterFatBinary(i8**) local_unnamed_addr

define internal void @__hip_module_dtor(i8* nocapture readnone %0) {
  %2 = load i8**, i8*** @__hip_gpubin_handle, align 8
  %3 = icmp eq i8** %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @__hipUnregisterFatBinary(i8** nonnull %2)
  store i8** null, i8*** @__hip_gpubin_handle, align 8
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

declare dso_local i32 @atexit(void (i8*)*) local_unnamed_addr

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git bdeeab053a8bf72a56bdf54d056a43ecb9dc2748)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !5, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{!5, !5, i64 0}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = !{!19, !8, i64 328}
!19 = !{!"_ZTS15hipDeviceProp_t", !5, i64 0, !20, i64 256, !20, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !5, i64 284, !5, i64 296, !8, i64 308, !8, i64 312, !8, i64 316, !20, i64 320, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !8, i64 348, !8, i64 352, !21, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !8, i64 372, !20, i64 376, !8, i64 384, !8, i64 388, !8, i64 392, !5, i64 396, !8, i64 652, !8, i64 656, !8, i64 660, !8, i64 664, !8, i64 668, !5, i64 672, !5, i64 680, !4, i64 696, !4, i64 704, !20, i64 712, !20, i64 720, !20, i64 728, !8, i64 736, !8, i64 740, !8, i64 744, !8, i64 748, !8, i64 752, !8, i64 756, !8, i64 760, !8, i64 764, !8, i64 768, !8, i64 772, !8, i64 776, !8, i64 780, !8, i64 784, !8, i64 788}
!20 = !{!"long", !5, i64 0}
!21 = !{!"_ZTS15hipDeviceArch_t", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 2, !8, i64 2, !8, i64 2}
!22 = !{!19, !8, i64 332}
!23 = !{!19, !8, i64 336}
!24 = !{!19, !20, i64 256}
!25 = distinct !{!25, !12, !26}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = distinct !{!27, !12, !28, !26}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12, !26}
!31 = distinct !{!31, !12, !28, !26}
!32 = distinct !{!32, !12, !26}
!33 = distinct !{!33, !12, !28, !26}
!34 = distinct !{!34, !12}
!35 = !{!36, !8, i64 4}
!36 = !{!"_ZTSZ19_ConvertSMVer2CoresiiE10sSMtoCores", !8, i64 0, !8, i64 4}
!37 = distinct !{!37, !12}
!38 = !{!39, !4, i64 8}
!39 = !{!"_ZTSZ22_ConvertSMVer2ArchNameiiE13sSMtoArchName", !8, i64 0, !4, i64 8}
