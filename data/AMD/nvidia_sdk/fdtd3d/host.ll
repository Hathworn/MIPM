; ModuleID = 'fdtd3d.cpp'
source_filename = "fdtd3d.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sSMtoCores = type { i32, i32 }
%struct.sSMtoArchName = type { i32, i8* }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque
%struct.hipDeviceProp_t = type { [256 x i8], i64, i64, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.hipDeviceArch_t, i32, i32, i32, i32, i64, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32*, i32*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hipDeviceArch_t = type { i32 }
%struct.hipFuncAttributes = type { i32, i32, i64, i64, i32, i32, i32, i32, i32, i64 }

$_Z14findCudaDeviceiPPKc = comdat any

$_Z13gpuDeviceIniti = comdat any

$_Z23gpuGetMaxGflopsDeviceIdv = comdat any

$_Z22_ConvertSMVer2ArchNameii = comdat any

$_Z19_ConvertSMVer2Coresii = comdat any

$__hip_gpubin_handle = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@stencil = internal global [5 x float] undef, align 16
@_Z23FiniteDifferencesKernelPfPKfiii = dso_local constant void (float*, float*, i32, i32, i32)* @_Z38__device_stub__FiniteDifferencesKernelPfPKfiii, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"hipGetDeviceCount(&deviceCount)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"fdtd3d.cpp\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"hipGetDeviceProperties(&deviceProp, targetDevice)\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"radius is invalid, must be %d - see kernel for details.\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"hipSetDevice(targetDevice)\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"hipMalloc((void **)&bufferOut, paddedVolumeSize * sizeof(float))\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"hipMalloc((void **)&bufferIn, paddedVolumeSize * sizeof(float))\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"block-size\00", align 1
@.str.10 = private unnamed_addr constant [72 x i8] c"hipFuncGetAttributes(&funcAttrib, (const void*)FiniteDifferencesKernel)\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c" set block size to %dx%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c" set grid size to %dx%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [63 x i8] c"invalid block size, x (%d) and y (%d) must be >= radius (%d).\0A\00", align 1
@.str.14 = private unnamed_addr constant [88 x i8] c"hipMemcpy(bufferIn + padding, input, volumeSize * sizeof(float), hipMemcpyHostToDevice)\00", align 1
@.str.15 = private unnamed_addr constant [89 x i8] c"hipMemcpy(bufferOut + padding, input, volumeSize * sizeof(float), hipMemcpyHostToDevice)\00", align 1
@.str.16 = private unnamed_addr constant [84 x i8] c"hipMemcpyToSymbol(HIP_SYMBOL(stencil), (void *)coeff, (radius + 1) * sizeof(float))\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"\09t = %d \00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"hipDeviceSynchronize()\00", align 1
@.str.22 = private unnamed_addr constant [80 x i8] c"hipMemcpy(output, bufferSrc, volumeSize * sizeof(float), hipMemcpyDeviceToHost)\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"hipFree(bufferIn)\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"hipFree(bufferOut)\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"\09t = %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [49 x i8] c"Data error at point (%d,%d,%d)\09%f instead of %f\0A\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"%s Starting...\0A\0A\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str.32 = private unnamed_addr constant [8 x i8] c"Syntax:\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"--device=<device>\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"Specify device to use for execution\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"--dimx=<N>\00", align 1
@.str.37 = private unnamed_addr constant [59 x i8] c"Specify number of elements in x direction (excluding halo)\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"--dimy=<N>\00", align 1
@.str.39 = private unnamed_addr constant [59 x i8] c"Specify number of elements in y direction (excluding halo)\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"--dimz=<N>\00", align 1
@.str.41 = private unnamed_addr constant [59 x i8] c"Specify number of elements in z direction (excluding halo)\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"--radius=<N>\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"Specify radius of stencil\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"--timesteps=<N>\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"Specify number of timesteps\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"--block-size=<N>\00", align 1
@.str.47 = private unnamed_addr constant [36 x i8] c"Specify number of threads per block\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"--noprompt\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"Skip prompt before exit\00", align 1
@.str.52 = private unnamed_addr constant [89 x i8] c"insufficient device memory (maximum volume on device is %d, must be between %d and %d).\0A\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"qatest\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"dimx\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"dimy\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"dimz\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"timesteps\00", align 1
@.str.60 = private unnamed_addr constant [82 x i8] c"FDTD on %d x %d x %d volume with symmetric filter radius %d for %d timesteps...\0A\0A\00", align 1
@.str.65 = private unnamed_addr constant [32 x i8] c"\0ACompareData (tolerance %f)...\0A\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"device=\00", align 1
@.str.68 = private unnamed_addr constant [33 x i8] c"Invalid command line parameter\0A \00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"hipSetDevice(devID)\00", align 1
@.str.71 = private unnamed_addr constant [58 x i8] c"/public/home/dtune/zhengh/nvidia_sdk/common/helper_cuda.h\00", align 1
@.str.72 = private unnamed_addr constant [79 x i8] c"hipDeviceGetAttribute(&major, hipDeviceAttributeComputeCapabilityMajor, devID)\00", align 1
@.str.73 = private unnamed_addr constant [79 x i8] c"hipDeviceGetAttribute(&minor, hipDeviceAttributeComputeCapabilityMinor, devID)\00", align 1
@.str.74 = private unnamed_addr constant [52 x i8] c"GPU Device %d: \22%s\22 with compute capability %d.%d\0A\0A\00", align 1
@.str.75 = private unnamed_addr constant [33 x i8] c"hipGetDeviceCount(&device_count)\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.76 = private unnamed_addr constant [57 x i8] c"gpuDeviceInit() CUDA error: no devices supporting CUDA.\0A\00", align 1
@.str.77 = private unnamed_addr constant [47 x i8] c">> %d CUDA capable GPU device(s) detected. <<\0A\00", align 1
@.str.78 = private unnamed_addr constant [61 x i8] c">> gpuDeviceInit (-device=%d) is not a valid GPU device. <<\0A\00", align 1
@.str.79 = private unnamed_addr constant [74 x i8] c"hipDeviceGetAttribute(&computeMode, hipDeviceAttributeComputeMode, devID)\00", align 1
@.str.80 = private unnamed_addr constant [91 x i8] c"Error: device is running in <Compute Mode Prohibited>, no threads can use hipSetDevice().\0A\00", align 1
@.str.81 = private unnamed_addr constant [52 x i8] c"gpuDeviceInit(): GPU device does not support CUDA.\0A\00", align 1
@.str.82 = private unnamed_addr constant [39 x i8] c"gpuDeviceInit() CUDA Device [%d]: \22%s\0A\00", align 1
@.str.83 = private unnamed_addr constant [67 x i8] c"gpuGetMaxGflopsDeviceId() CUDA error: no devices supporting CUDA.\0A\00", align 1
@.str.84 = private unnamed_addr constant [83 x i8] c"hipDeviceGetAttribute(&computeMode, hipDeviceAttributeComputeMode, current_device)\00", align 1
@.str.85 = private unnamed_addr constant [88 x i8] c"hipDeviceGetAttribute(&major, hipDeviceAttributeComputeCapabilityMajor, current_device)\00", align 1
@.str.86 = private unnamed_addr constant [88 x i8] c"hipDeviceGetAttribute(&minor, hipDeviceAttributeComputeCapabilityMinor, current_device)\00", align 1
@.str.87 = private unnamed_addr constant [99 x i8] c"hipDeviceGetAttribute(&multiProcessorCount, hipDeviceAttributeMultiprocessorCount, current_device)\00", align 1
@.str.88 = private unnamed_addr constant [34 x i8] c"CUDA error at %s:%d code=%d(%s) \0A\00", align 1
@.str.89 = private unnamed_addr constant [81 x i8] c"gpuGetMaxGflopsDeviceId() CUDA error: all devices have compute mode prohibited.\0A\00", align 1
@__const._Z19_ConvertSMVer2Coresii.nGpuArchCoresPerSM = private unnamed_addr constant [19 x %struct.sSMtoCores] [%struct.sSMtoCores { i32 48, i32 192 }, %struct.sSMtoCores { i32 50, i32 192 }, %struct.sSMtoCores { i32 53, i32 192 }, %struct.sSMtoCores { i32 55, i32 192 }, %struct.sSMtoCores { i32 80, i32 128 }, %struct.sSMtoCores { i32 82, i32 128 }, %struct.sSMtoCores { i32 83, i32 128 }, %struct.sSMtoCores { i32 96, i32 64 }, %struct.sSMtoCores { i32 97, i32 128 }, %struct.sSMtoCores { i32 98, i32 128 }, %struct.sSMtoCores { i32 112, i32 64 }, %struct.sSMtoCores { i32 114, i32 64 }, %struct.sSMtoCores { i32 117, i32 64 }, %struct.sSMtoCores { i32 128, i32 64 }, %struct.sSMtoCores { i32 134, i32 128 }, %struct.sSMtoCores { i32 135, i32 128 }, %struct.sSMtoCores { i32 137, i32 128 }, %struct.sSMtoCores { i32 144, i32 128 }, %struct.sSMtoCores { i32 -1, i32 -1 }], align 16
@.str.90 = private unnamed_addr constant [69 x i8] c"MapSMtoCores for SM %d.%d is undefined.  Default to use %d Cores/SM\0A\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"Kepler\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"Maxwell\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"Pascal\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"Volta\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"Xavier\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"Turing\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"Ampere\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"Ada\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"Hopper\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"Graphics Device\00", align 1
@__const._Z22_ConvertSMVer2ArchNameii.nGpuArchNameSM = private unnamed_addr constant [19 x %struct.sSMtoArchName] [%struct.sSMtoArchName { i32 48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i32 0, i32 0) }, %struct.sSMtoArchName { i32 50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i32 0, i32 0) }, %struct.sSMtoArchName { i32 53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i32 0, i32 0) }, %struct.sSMtoArchName { i32 55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i32 0, i32 0) }, %struct.sSMtoArchName { i32 80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i32 0, i32 0) }, %struct.sSMtoArchName { i32 82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i32 0, i32 0) }, %struct.sSMtoArchName { i32 83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i32 0, i32 0) }, %struct.sSMtoArchName { i32 96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0) }, %struct.sSMtoArchName { i32 97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0) }, %struct.sSMtoArchName { i32 98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0) }, %struct.sSMtoArchName { i32 112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i32 0, i32 0) }, %struct.sSMtoArchName { i32 114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0) }, %struct.sSMtoArchName { i32 117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i32 0, i32 0) }, %struct.sSMtoArchName { i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.97, i32 0, i32 0) }, %struct.sSMtoArchName { i32 134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.97, i32 0, i32 0) }, %struct.sSMtoArchName { i32 135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.97, i32 0, i32 0) }, %struct.sSMtoArchName { i32 137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i32 0, i32 0) }, %struct.sSMtoArchName { i32 144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i32 0, i32 0) }, %struct.sSMtoArchName { i32 -1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.100, i32 0, i32 0) }], align 16
@.str.101 = private unnamed_addr constant [63 x i8] c"MapSMtoArchName for SM %d.%d is undefined.  Default to use %s\0A\00", align 1
@.str.102 = private unnamed_addr constant [39 x i8] c"CUDA error at %s:%d code=%d(%s) \22%s\22 \0A\00", align 1
@0 = private unnamed_addr constant [36 x i8] c"_Z23FiniteDifferencesKernelPfPKfiii\00", align 1
@1 = private unnamed_addr constant [8 x i8] c"stencil\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_fdtd3d.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]
@str = private unnamed_addr constant [19 x i8] c" hipGetDeviceCount\00", align 1
@str.103 = private unnamed_addr constant [24 x i8] c" hipGetDeviceProperties\00", align 1
@str.104 = private unnamed_addr constant [11 x i8] c"exiting...\00", align 1
@str.105 = private unnamed_addr constant [15 x i8] c" GPU FDTD loop\00", align 1
@str.106 = private unnamed_addr constant [14 x i8] c"launch kernel\00", align 1
@str.107 = private unnamed_addr constant [21 x i8] c" calloc intermediate\00", align 1
@str.108 = private unnamed_addr constant [16 x i8] c" Host FDTD loop\00", align 1
@str.109 = private unnamed_addr constant [27 x i8] c"Displaying help on console\00", align 1
@str.110 = private unnamed_addr constant [46 x i8] c"Set-up, based upon target device GMEM size...\00", align 1
@str.111 = private unnamed_addr constant [30 x i8] c" getTargetDeviceGlobalMemSize\00", align 1
@str.112 = private unnamed_addr constant [21 x i8] c" generateRandomData\0A\00", align 1
@str.113 = private unnamed_addr constant [17 x i8] c"fdtdReference...\00", align 1
@str.114 = private unnamed_addr constant [23 x i8] c"fdtdReference complete\00", align 1
@str.115 = private unnamed_addr constant [11 x i8] c"fdtdGPU...\00", align 1
@str.116 = private unnamed_addr constant [17 x i8] c"fdtdGPU complete\00", align 1

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: norecurse uwtable
define dso_local void @_Z38__device_stub__FiniteDifferencesKernelPfPKfiii(float* %0, float* %1, i32 %2, i32 %3, i32 %4) #3 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store float* %0, float** %6, align 8, !tbaa !3
  store float* %1, float** %7, align 8, !tbaa !3
  store i32 %2, i32* %8, align 4, !tbaa !7
  store i32 %3, i32* %9, align 4, !tbaa !7
  store i32 %4, i32* %10, align 4, !tbaa !7
  %15 = alloca [5 x i8*], align 16
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 0
  %17 = bitcast [5 x i8*]* %15 to float***
  store float** %6, float*** %17, align 16
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 1
  %19 = bitcast i8** %18 to float***
  store float** %7, float*** %19, align 8
  %20 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 2
  %21 = bitcast i8** %20 to i32**
  store i32* %8, i32** %21, align 16
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 3
  %23 = bitcast i8** %22 to i32**
  store i32* %9, i32** %23, align 8
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 4
  %25 = bitcast i8** %24 to i32**
  store i32* %10, i32** %25, align 16
  %26 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %11, %struct.dim3* nonnull %12, i64* nonnull %13, i8** nonnull %14)
  %27 = load i64, i64* %13, align 8
  %28 = bitcast i8** %14 to %struct.ihipStream_t**
  %29 = load %struct.ihipStream_t*, %struct.ihipStream_t** %28, align 8
  %30 = bitcast %struct.dim3* %11 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.dim3, %struct.dim3* %11, i64 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = bitcast %struct.dim3* %12 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.dim3, %struct.dim3* %12, i64 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, i32, i32, i32)** @_Z23FiniteDifferencesKernelPfPKfiii to i8*), i64 %31, i32 %33, i64 %35, i32 %37, i8** nonnull %16, i64 %27, %struct.ihipStream_t* %29)
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define dso_local zeroext i1 @_Z28getTargetDeviceGlobalMemSizePmiPPKc(i64* nocapture writeonly %0, i32 %1, i8** %2) local_unnamed_addr #4 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hipDeviceProp_t, align 8
  %6 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #22
  store i32 0, i32* %4, align 4, !tbaa !7
  %7 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @str, i64 0, i64 0))
  %8 = call i32 @hipGetDeviceCount(i32* nonnull %4)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %12 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %8)
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 192, i32 %8, i8* %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)) #23
  call void @exit(i32 1) #24
  unreachable

14:                                               ; preds = %3
  %15 = call i32 @_Z14findCudaDeviceiPPKc(i32 %1, i8** %2)
  %16 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @str.103, i64 0, i64 0))
  %17 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %5, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 792, i8* nonnull %17) #22
  %18 = call i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* nonnull %5, i32 %15)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %22 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %18)
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 200, i32 %18, i8* %22, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0)) #23
  call void @exit(i32 1) #24
  unreachable

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %5, i64 0, i32 1
  %26 = load i64, i64* %25, align 8, !tbaa !9
  store i64 %26, i64* %0, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 792, i8* nonnull %17) #22
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #22
  ret i1 true
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #6

declare dso_local i32 @hipGetDeviceCount(i32*) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_Z14findCudaDeviceiPPKc(i32 %0, i8** %1) local_unnamed_addr #7 comdat {
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
  %21 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %12) #25
  %22 = trunc i64 %21 to i32
  %23 = add i32 %22, -1
  %24 = icmp sgt i32 %23, %20
  %25 = shl i64 %14, 32
  %26 = ashr exact i64 %25, 32
  %27 = select i1 %24, i64 %26, i64 0
  %28 = getelementptr inbounds i8, i8* %12, i64 %27
  %29 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %28, i32 61) #25
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %28) #25
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
  %42 = tail call i32 @strncasecmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i64 6) #25
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %37
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i8 [ %10, %44 ], [ 1, %41 ]
  %47 = add nuw nsw i64 %9, 1
  %48 = icmp eq i64 %47, %7
  br i1 %48, label %49, label %8, !llvm.loop !17

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
  %66 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %57) #25
  %67 = trunc i64 %66 to i32
  %68 = add i32 %67, -1
  %69 = icmp sgt i32 %68, %65
  %70 = shl i64 %59, 32
  %71 = ashr exact i64 %70, 32
  %72 = select i1 %69, i64 %71, i64 0
  %73 = getelementptr inbounds i8, i8* %57, i64 %72
  %74 = tail call i32 @strncasecmp(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i64 7) #25
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %64
  %77 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %73) #25
  %78 = trunc i64 %77 to i32
  %79 = icmp sgt i32 %78, 7
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = getelementptr inbounds i8, i8* %73, i64 7
  %82 = load i8, i8* %81, align 1, !tbaa !14
  %83 = icmp eq i8 %82, 61
  %84 = select i1 %83, i64 8, i64 7
  %85 = getelementptr inbounds i8, i8* %73, i64 %84
  %86 = tail call i64 @strtol(i8* nocapture nonnull %85, i8** null, i32 10) #22
  %87 = trunc i64 %86 to i32
  br label %88

88:                                               ; preds = %80, %76, %64
  %89 = phi i32 [ %87, %80 ], [ 0, %76 ], [ %55, %64 ]
  %90 = phi i8 [ 1, %80 ], [ 1, %76 ], [ %54, %64 ]
  %91 = add nuw nsw i64 %53, 1
  %92 = icmp eq i64 %91, %7
  br i1 %92, label %93, label %52, !llvm.loop !18

93:                                               ; preds = %88
  %94 = and i8 %90, 1
  %95 = icmp eq i8 %94, 0
  %96 = select i1 %95, i32 0, i32 %89
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.68, i64 0, i64 0))
  tail call void @exit(i32 1) #24
  unreachable

100:                                              ; preds = %93
  %101 = tail call i32 @_Z13gpuDeviceIniti(i32 %96)
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %136

103:                                              ; preds = %100
  %104 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @str.104, i64 0, i64 0))
  tail call void @exit(i32 1) #24
  unreachable

105:                                              ; preds = %2, %49
  %106 = tail call i32 @_Z23gpuGetMaxGflopsDeviceIdv()
  %107 = tail call i32 @hipSetDevice(i32 %106)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %111 = tail call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %107)
  %112 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.71, i64 0, i64 0), i32 1067, i32 %107, i8* %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.70, i64 0, i64 0)) #23
  tail call void @exit(i32 1) #24
  unreachable

113:                                              ; preds = %105
  %114 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %114) #22
  store i32 0, i32* %3, align 4, !tbaa !7
  %115 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %115) #22
  store i32 0, i32* %4, align 4, !tbaa !7
  %116 = call i32 @hipDeviceGetAttribute(i32* nonnull %3, i32 36, i32 %106)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %113
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %120 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %116)
  %121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.71, i64 0, i64 0), i32 1069, i32 %116, i8* %120, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.72, i64 0, i64 0)) #23
  call void @exit(i32 1) #24
  unreachable

122:                                              ; preds = %113
  %123 = call i32 @hipDeviceGetAttribute(i32* nonnull %4, i32 37, i32 %106)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %122
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %127 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %123)
  %128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.71, i64 0, i64 0), i32 1070, i32 %123, i8* %127, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.73, i64 0, i64 0)) #23
  call void @exit(i32 1) #24
  unreachable

129:                                              ; preds = %122
  %130 = load i32, i32* %3, align 4, !tbaa !7
  %131 = load i32, i32* %4, align 4, !tbaa !7
  %132 = call i8* @_Z22_ConvertSMVer2ArchNameii(i32 %130, i32 %131)
  %133 = load i32, i32* %3, align 4, !tbaa !7
  %134 = load i32, i32* %4, align 4, !tbaa !7
  %135 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([52 x i8], [52 x i8]* @.str.74, i64 0, i64 0), i32 %106, i8* %132, i32 %133, i32 %134)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %115) #22
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %114) #22
  br label %136

136:                                              ; preds = %100, %129
  %137 = phi i32 [ %101, %100 ], [ %106, %129 ]
  ret i32 %137
}

declare dso_local i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t*, i32) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: uwtable
define dso_local zeroext i1 @_Z7fdtdGPUPfPKfS1_iiiiiiPPKc(float* %0, float* %1, float* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i8** %9) local_unnamed_addr #8 {
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dim3, align 8
  %17 = alloca %struct.dim3, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca [5 x i8*], align 16
  %21 = alloca i32, align 4
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  %24 = alloca %struct.hipFuncAttributes, align 8
  %25 = shl nsw i32 %6, 1
  %26 = add nsw i32 %25, %3
  %27 = add nsw i32 %25, %4
  %28 = add nsw i32 %25, %5
  %29 = mul nsw i32 %26, %27
  %30 = mul nsw i32 %29, %28
  %31 = sext i32 %30 to i64
  %32 = bitcast i32* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %32) #22
  store i32 0, i32* %21, align 4, !tbaa !7
  %33 = bitcast float** %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33) #22
  store float* null, float** %22, align 8, !tbaa !3
  %34 = bitcast float** %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34) #22
  store float* null, float** %23, align 8, !tbaa !3
  %35 = sub i32 32, %6
  %36 = sext i32 %35 to i64
  %37 = icmp eq i32 %6, 4
  br i1 %37, label %40, label %38

38:                                               ; preds = %10
  %39 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i32 4)
  tail call void @exit(i32 1) #24
  unreachable

40:                                               ; preds = %10
  %41 = add nsw i64 %31, %36
  %42 = call i32 @hipGetDeviceCount(i32* nonnull %21)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %46 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %42)
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 248, i32 %42, i8* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)) #23
  call void @exit(i32 1) #24
  unreachable

48:                                               ; preds = %40
  %49 = call i32 @_Z14findCudaDeviceiPPKc(i32 %8, i8** %9)
  %50 = call i32 @hipSetDevice(i32 %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %54 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %50)
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 253, i32 %50, i8* %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0)) #23
  call void @exit(i32 1) #24
  unreachable

56:                                               ; preds = %48
  %57 = bitcast float** %22 to i8**
  %58 = shl nsw i64 %41, 2
  %59 = call i32 @hipMalloc(i8** nonnull %57, i64 %58)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %63 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %59)
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 257, i32 %59, i8* %63, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0)) #23
  call void @exit(i32 1) #24
  unreachable

65:                                               ; preds = %56
  %66 = bitcast float** %23 to i8**
  %67 = call i32 @hipMalloc(i8** nonnull %66, i64 %58)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %71 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %67)
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 259, i32 %67, i8* %71, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0)) #23
  call void @exit(i32 1) #24
  unreachable

73:                                               ; preds = %65
  %74 = icmp sgt i32 %8, 1
  br i1 %74, label %75, label %172

75:                                               ; preds = %73
  %76 = zext i32 %8 to i64
  br label %77

77:                                               ; preds = %114, %75
  %78 = phi i64 [ 1, %75 ], [ %116, %114 ]
  %79 = phi i8 [ 0, %75 ], [ %115, %114 ]
  %80 = getelementptr inbounds i8*, i8** %9, i64 %78
  %81 = load i8*, i8** %80, align 8, !tbaa !3
  br label %82

82:                                               ; preds = %82, %77
  %83 = phi i64 [ %87, %82 ], [ 0, %77 ]
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1, !tbaa !14
  %86 = icmp eq i8 %85, 45
  %87 = add nuw i64 %83, 1
  br i1 %86, label %82, label %88, !llvm.loop !15

88:                                               ; preds = %82
  %89 = trunc i64 %83 to i32
  %90 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #25
  %91 = trunc i64 %90 to i32
  %92 = add i32 %91, -1
  %93 = icmp sgt i32 %92, %89
  %94 = shl i64 %83, 32
  %95 = ashr exact i64 %94, 32
  %96 = select i1 %93, i64 %95, i64 0
  %97 = getelementptr inbounds i8, i8* %81, i64 %96
  %98 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %97, i32 61) #25
  %99 = icmp eq i8* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %88
  %101 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %97) #25
  br label %106

102:                                              ; preds = %88
  %103 = ptrtoint i8* %98 to i64
  %104 = ptrtoint i8* %97 to i64
  %105 = sub i64 %103, %104
  br label %106

106:                                              ; preds = %102, %100
  %107 = phi i64 [ %101, %100 ], [ %105, %102 ]
  %108 = trunc i64 %107 to i32
  %109 = icmp eq i32 %108, 10
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = call i32 @strncasecmp(i8* %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i64 10) #25
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %110, %106
  br label %114

114:                                              ; preds = %113, %110
  %115 = phi i8 [ %79, %113 ], [ 1, %110 ]
  %116 = add nuw nsw i64 %78, 1
  %117 = icmp eq i64 %116, %76
  br i1 %117, label %118, label %77, !llvm.loop !17

118:                                              ; preds = %114
  %119 = and i8 %115, 1
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %172, label %121

121:                                              ; preds = %118, %157
  %122 = phi i64 [ %160, %157 ], [ 1, %118 ]
  %123 = phi i8 [ %159, %157 ], [ 0, %118 ]
  %124 = phi i32 [ %158, %157 ], [ -1, %118 ]
  %125 = getelementptr inbounds i8*, i8** %9, i64 %122
  %126 = load i8*, i8** %125, align 8, !tbaa !3
  br label %127

127:                                              ; preds = %127, %121
  %128 = phi i64 [ %132, %127 ], [ 0, %121 ]
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = load i8, i8* %129, align 1, !tbaa !14
  %131 = icmp eq i8 %130, 45
  %132 = add nuw i64 %128, 1
  br i1 %131, label %127, label %133, !llvm.loop !15

133:                                              ; preds = %127
  %134 = trunc i64 %128 to i32
  %135 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %126) #25
  %136 = trunc i64 %135 to i32
  %137 = add i32 %136, -1
  %138 = icmp sgt i32 %137, %134
  %139 = shl i64 %128, 32
  %140 = ashr exact i64 %139, 32
  %141 = select i1 %138, i64 %140, i64 0
  %142 = getelementptr inbounds i8, i8* %126, i64 %141
  %143 = call i32 @strncasecmp(i8* %142, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i64 10) #25
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %133
  %146 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %142) #25
  %147 = trunc i64 %146 to i32
  %148 = icmp sgt i32 %147, 10
  br i1 %148, label %149, label %157

149:                                              ; preds = %145
  %150 = getelementptr inbounds i8, i8* %142, i64 10
  %151 = load i8, i8* %150, align 1, !tbaa !14
  %152 = icmp eq i8 %151, 61
  %153 = select i1 %152, i64 11, i64 10
  %154 = getelementptr inbounds i8, i8* %142, i64 %153
  %155 = call i64 @strtol(i8* nocapture nonnull %154, i8** null, i32 10) #22
  %156 = trunc i64 %155 to i32
  br label %157

157:                                              ; preds = %149, %145, %133
  %158 = phi i32 [ %156, %149 ], [ 0, %145 ], [ %124, %133 ]
  %159 = phi i8 [ 1, %149 ], [ 1, %145 ], [ %123, %133 ]
  %160 = add nuw nsw i64 %122, 1
  %161 = icmp eq i64 %160, %76
  br i1 %161, label %162, label %121, !llvm.loop !18

162:                                              ; preds = %157
  %163 = and i8 %159, 1
  %164 = icmp eq i8 %163, 0
  %165 = sdiv i32 %158, 32
  %166 = shl nsw i32 %165, 5
  %167 = select i1 %164, i32 0, i32 %166
  %168 = icmp sgt i32 %167, 128
  %169 = select i1 %168, i32 %167, i32 128
  %170 = icmp ult i32 %169, 512
  %171 = select i1 %170, i32 %169, i32 512
  br label %172

172:                                              ; preds = %73, %118, %162
  %173 = phi i32 [ %171, %162 ], [ 512, %118 ], [ 512, %73 ]
  %174 = bitcast %struct.hipFuncAttributes* %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %174) #22
  %175 = call i32 @hipFuncGetAttributes(%struct.hipFuncAttributes* nonnull %24, i8* bitcast (void (float*, float*, i32, i32, i32)** @_Z23FiniteDifferencesKernelPfPKfiii to i8*))
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %172
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %179 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %175)
  %180 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %178, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 277, i32 %175, i8* %179, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i64 0, i64 0)) #23
  call void @exit(i32 1) #24
  unreachable

181:                                              ; preds = %172
  %182 = getelementptr inbounds %struct.hipFuncAttributes, %struct.hipFuncAttributes* %24, i64 0, i32 5
  %183 = load i32, i32* %182, align 4, !tbaa !19
  %184 = icmp slt i32 %173, %183
  %185 = select i1 %184, i32 %173, i32 %183
  %186 = sdiv i32 %185, 32
  %187 = icmp ult i32 %186, 16
  %188 = select i1 %187, i32 %186, i32 16
  %189 = sitofp i32 %3 to float
  %190 = fmul contract float %189, 3.125000e-02
  %191 = call contract float @llvm.ceil.f32(float %190) #22
  %192 = fptoui float %191 to i32
  %193 = sitofp i32 %4 to float
  %194 = uitofp i32 %188 to float
  %195 = fdiv contract float %193, %194
  %196 = call contract float @llvm.ceil.f32(float %195) #22
  %197 = fptoui float %196 to i32
  %198 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 32, i32 %188)
  %199 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %192, i32 %197)
  %200 = icmp ult i32 %188, 4
  br i1 %200, label %201, label %203

201:                                              ; preds = %181
  %202 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([63 x i8], [63 x i8]* @.str.13, i64 0, i64 0), i32 32, i32 %188, i32 4)
  call void @exit(i32 1) #24
  unreachable

203:                                              ; preds = %181
  %204 = load float*, float** %23, align 8, !tbaa !3
  %205 = getelementptr inbounds float, float* %204, i64 %36
  %206 = bitcast float* %205 to i8*
  %207 = bitcast float* %1 to i8*
  %208 = shl nsw i64 %31, 2
  %209 = call i32 @hipMemcpy(i8* %206, i8* %207, i64 %208, i32 1)
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %203
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %213 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %209)
  %214 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %212, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 304, i32 %209, i8* %213, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.14, i64 0, i64 0)) #23
  call void @exit(i32 1) #24
  unreachable

215:                                              ; preds = %203
  %216 = load float*, float** %22, align 8, !tbaa !3
  %217 = getelementptr inbounds float, float* %216, i64 %36
  %218 = bitcast float* %217 to i8*
  %219 = call i32 @hipMemcpy(i8* %218, i8* %207, i64 %208, i32 1)
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %215
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %223 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %219)
  %224 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %222, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 309, i32 %219, i8* %223, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.15, i64 0, i64 0)) #23
  call void @exit(i32 1) #24
  unreachable

225:                                              ; preds = %215
  %226 = bitcast float* %2 to i8*
  %227 = call i32 @hipMemcpyToSymbol(i8* nonnull bitcast ([5 x float]* @stencil to i8*), i8* %226, i64 20, i64 0, i32 1)
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %225
  %230 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %231 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %227)
  %232 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %230, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 313, i32 %227, i8* %231, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.16, i64 0, i64 0)) #23
  call void @exit(i32 1) #24
  unreachable

233:                                              ; preds = %225
  %234 = load float*, float** %23, align 8, !tbaa !3
  %235 = getelementptr inbounds float, float* %234, i64 %36
  %236 = load float*, float** %22, align 8, !tbaa !3
  %237 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @str.105, i64 0, i64 0))
  %238 = zext i32 %197 to i64
  %239 = shl nuw i64 %238, 32
  %240 = zext i32 %192 to i64
  %241 = or i64 %239, %240
  %242 = zext i32 %188 to i64
  %243 = shl nuw nsw i64 %242, 32
  %244 = or i64 %243, 32
  %245 = bitcast float** %11 to i8*
  %246 = bitcast float** %12 to i8*
  %247 = bitcast i32* %13 to i8*
  %248 = bitcast i32* %14 to i8*
  %249 = bitcast i32* %15 to i8*
  %250 = bitcast %struct.dim3* %16 to i8*
  %251 = bitcast %struct.dim3* %17 to i8*
  %252 = bitcast i64* %18 to i8*
  %253 = bitcast i8** %19 to i8*
  %254 = bitcast [5 x i8*]* %20 to i8*
  %255 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i64 0, i64 0
  %256 = bitcast [5 x i8*]* %20 to float***
  %257 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i64 0, i64 1
  %258 = bitcast i8** %257 to float***
  %259 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i64 0, i64 2
  %260 = bitcast i8** %259 to i32**
  %261 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i64 0, i64 3
  %262 = bitcast i8** %261 to i32**
  %263 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i64 0, i64 4
  %264 = bitcast i8** %263 to i32**
  %265 = bitcast i8** %19 to %struct.ihipStream_t**
  %266 = bitcast %struct.dim3* %16 to i64*
  %267 = getelementptr inbounds %struct.dim3, %struct.dim3* %16, i64 0, i32 2
  %268 = bitcast %struct.dim3* %17 to i64*
  %269 = getelementptr inbounds %struct.dim3, %struct.dim3* %17, i64 0, i32 2
  %270 = icmp sgt i32 %7, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %233
  %272 = getelementptr inbounds float, float* %236, i64 %36
  br label %294

273:                                              ; preds = %311, %233
  %274 = phi float* [ %235, %233 ], [ %296, %311 ]
  %275 = call i32 @putchar(i32 10)
  %276 = call i32 @hipDeviceSynchronize()
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %282, label %278

278:                                              ; preds = %273
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %280 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %276)
  %281 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %279, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 357, i32 %276, i8* %280, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0)) #23
  call void @exit(i32 1) #24
  unreachable

282:                                              ; preds = %273
  %283 = bitcast float* %0 to i8*
  %284 = bitcast float* %274 to i8*
  %285 = call i32 @hipMemcpy(i8* %283, i8* %284, i64 %208, i32 2)
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %291, label %287

287:                                              ; preds = %282
  %288 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %289 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %285)
  %290 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %288, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 361, i32 %285, i8* %289, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.22, i64 0, i64 0)) #23
  call void @exit(i32 1) #24
  unreachable

291:                                              ; preds = %282
  %292 = load float*, float** %23, align 8, !tbaa !3
  %293 = icmp eq float* %292, null
  br i1 %293, label %322, label %314

294:                                              ; preds = %271, %311
  %295 = phi float* [ %296, %311 ], [ %235, %271 ]
  %296 = phi float* [ %295, %311 ], [ %272, %271 ]
  %297 = phi i32 [ %312, %311 ], [ 0, %271 ]
  %298 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i32 %297)
  %299 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @str.106, i64 0, i64 0))
  %300 = call i32 @__hipPushCallConfiguration(i64 %241, i32 1, i64 %244, i32 1, i64 0, %struct.ihipStream_t* null)
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %311

302:                                              ; preds = %294
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %245)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %246)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %247)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %248)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %249)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %250)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %251)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %252)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %253)
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %254)
  store float* %296, float** %11, align 8, !tbaa !3
  store float* %295, float** %12, align 8, !tbaa !3
  store i32 %3, i32* %13, align 4, !tbaa !7
  store i32 %4, i32* %14, align 4, !tbaa !7
  store i32 %5, i32* %15, align 4, !tbaa !7
  store float** %11, float*** %256, align 16
  store float** %12, float*** %258, align 8
  store i32* %13, i32** %260, align 16
  store i32* %14, i32** %262, align 8
  store i32* %15, i32** %264, align 16
  %303 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %16, %struct.dim3* nonnull %17, i64* nonnull %18, i8** nonnull %19)
  %304 = load i64, i64* %18, align 8
  %305 = load %struct.ihipStream_t*, %struct.ihipStream_t** %265, align 8
  %306 = load i64, i64* %266, align 8
  %307 = load i32, i32* %267, align 8
  %308 = load i64, i64* %268, align 8
  %309 = load i32, i32* %269, align 8
  %310 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, i32, i32, i32)** @_Z23FiniteDifferencesKernelPfPKfiii to i8*), i64 %306, i32 %307, i64 %308, i32 %309, i8** nonnull %255, i64 %304, %struct.ihipStream_t* %305)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %245)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %246)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %247)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %248)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %249)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %250)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %251)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %252)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %253)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %254)
  br label %311

311:                                              ; preds = %302, %294
  %312 = add nuw nsw i32 %297, 1
  %313 = icmp eq i32 %312, %7
  br i1 %313, label %273, label %294, !llvm.loop !21

314:                                              ; preds = %291
  %315 = bitcast float* %292 to i8*
  %316 = call i32 @hipFree(i8* nonnull %315)
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %322, label %318

318:                                              ; preds = %314
  %319 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %320 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %316)
  %321 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %319, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 391, i32 %316, i8* %320, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0)) #23
  call void @exit(i32 1) #24
  unreachable

322:                                              ; preds = %314, %291
  %323 = load float*, float** %22, align 8, !tbaa !3
  %324 = icmp eq float* %323, null
  br i1 %324, label %333, label %325

325:                                              ; preds = %322
  %326 = bitcast float* %323 to i8*
  %327 = call i32 @hipFree(i8* nonnull %326)
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %333, label %329

329:                                              ; preds = %325
  %330 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %331 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %327)
  %332 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %330, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 395, i32 %327, i8* %331, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0)) #23
  call void @exit(i32 1) #24
  unreachable

333:                                              ; preds = %325, %322
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %174) #22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #22
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %32) #22
  ret i1 true
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #9

declare dso_local i32 @hipSetDevice(i32) local_unnamed_addr #0

declare dso_local i32 @hipMalloc(i8**, i64) local_unnamed_addr #0

declare dso_local i32 @hipFuncGetAttributes(%struct.hipFuncAttributes*, i8*) local_unnamed_addr #0

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #0

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #0

declare dso_local i32 @hipDeviceSynchronize() local_unnamed_addr #0

declare dso_local i32 @hipFree(i8*) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z18generateRandomDataPfiiiff(float* nocapture writeonly %0, i32 %1, i32 %2, i32 %3, float %4, float %5) local_unnamed_addr #10 {
  tail call void @srand(i32 0) #22
  %7 = fsub contract float %5, %4
  %8 = icmp slt i32 %1, 1
  %9 = icmp slt i32 %3, 1
  %10 = icmp slt i32 %2, 1
  %11 = select i1 %9, i1 true, i1 %10
  %12 = select i1 %11, i1 true, i1 %8
  br i1 %12, label %36, label %13

13:                                               ; preds = %6, %33
  %14 = phi i32 [ %34, %33 ], [ 0, %6 ]
  %15 = phi float* [ %27, %33 ], [ %0, %6 ]
  br label %16

16:                                               ; preds = %30, %13
  %17 = phi i32 [ 0, %13 ], [ %31, %30 ]
  %18 = phi float* [ %15, %13 ], [ %27, %30 ]
  br label %19

19:                                               ; preds = %19, %16
  %20 = phi i32 [ 0, %16 ], [ %28, %19 ]
  %21 = phi float* [ %18, %16 ], [ %27, %19 ]
  %22 = tail call i32 @rand() #22
  %23 = sitofp i32 %22 to float
  %24 = fmul contract float %23, 0x3E00000000000000
  %25 = fmul contract float %7, %24
  %26 = fadd contract float %25, %4
  store float %26, float* %21, align 4, !tbaa !22
  %27 = getelementptr inbounds float, float* %21, i64 1
  %28 = add nuw nsw i32 %20, 1
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %30, label %19, !llvm.loop !24

30:                                               ; preds = %19
  %31 = add nuw nsw i32 %17, 1
  %32 = icmp eq i32 %31, %2
  br i1 %32, label %33, label %16, !llvm.loop !25

33:                                               ; preds = %30
  %34 = add nuw nsw i32 %14, 1
  %35 = icmp eq i32 %34, %3
  br i1 %35, label %36, label %13, !llvm.loop !26

36:                                               ; preds = %33, %6
  ret void
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable writeonly
define dso_local void @_Z19generatePatternDataPfiiiff(float* nocapture writeonly %0, i32 %1, i32 %2, i32 %3, float %4, float %5) local_unnamed_addr #11 {
  %7 = sitofp i32 %3 to float
  %8 = fsub contract float %5, %4
  %9 = icmp slt i32 %1, 1
  %10 = icmp slt i32 %3, 1
  %11 = icmp slt i32 %2, 1
  %12 = select i1 %10, i1 true, i1 %11
  %13 = select i1 %12, i1 true, i1 %9
  br i1 %13, label %120, label %14

14:                                               ; preds = %6
  %15 = add i32 %1, -1
  %16 = zext i32 %15 to i64
  %17 = add nuw nsw i64 %16, 1
  %18 = and i64 %17, 8589934584
  %19 = add nsw i64 %18, -8
  %20 = lshr exact i64 %19, 3
  %21 = add nuw nsw i64 %20, 1
  %22 = icmp ult i32 %15, 7
  %23 = and i64 %17, 8589934584
  %24 = trunc i64 %23 to i32
  %25 = and i64 %21, 7
  %26 = icmp ult i64 %19, 56
  %27 = and i64 %21, 4611686018427387896
  %28 = icmp eq i64 %25, 0
  %29 = icmp eq i64 %17, %23
  br label %30

30:                                               ; preds = %14, %117
  %31 = phi i32 [ %118, %117 ], [ 0, %14 ]
  %32 = phi float* [ %114, %117 ], [ %0, %14 ]
  %33 = sitofp i32 %31 to float
  %34 = fdiv contract float %33, %7
  %35 = fmul contract float %8, %34
  %36 = fadd contract float %35, %4
  %37 = insertelement <4 x float> poison, float %36, i64 0
  %38 = shufflevector <4 x float> %37, <4 x float> poison, <4 x i32> zeroinitializer
  %39 = insertelement <4 x float> poison, float %36, i64 0
  %40 = shufflevector <4 x float> %39, <4 x float> poison, <4 x i32> zeroinitializer
  br label %41

41:                                               ; preds = %113, %30
  %42 = phi i32 [ 0, %30 ], [ %115, %113 ]
  %43 = phi float* [ %32, %30 ], [ %114, %113 ]
  br i1 %22, label %104, label %44

44:                                               ; preds = %41
  %45 = getelementptr float, float* %43, i64 %23
  br i1 %26, label %91, label %46

46:                                               ; preds = %44, %46
  %47 = phi i64 [ %88, %46 ], [ 0, %44 ]
  %48 = phi i64 [ %89, %46 ], [ 0, %44 ]
  %49 = getelementptr float, float* %43, i64 %47
  %50 = bitcast float* %49 to <4 x float>*
  store <4 x float> %38, <4 x float>* %50, align 4, !tbaa !22
  %51 = getelementptr float, float* %49, i64 4
  %52 = bitcast float* %51 to <4 x float>*
  store <4 x float> %40, <4 x float>* %52, align 4, !tbaa !22
  %53 = or i64 %47, 8
  %54 = getelementptr float, float* %43, i64 %53
  %55 = bitcast float* %54 to <4 x float>*
  store <4 x float> %38, <4 x float>* %55, align 4, !tbaa !22
  %56 = getelementptr float, float* %54, i64 4
  %57 = bitcast float* %56 to <4 x float>*
  store <4 x float> %40, <4 x float>* %57, align 4, !tbaa !22
  %58 = or i64 %47, 16
  %59 = getelementptr float, float* %43, i64 %58
  %60 = bitcast float* %59 to <4 x float>*
  store <4 x float> %38, <4 x float>* %60, align 4, !tbaa !22
  %61 = getelementptr float, float* %59, i64 4
  %62 = bitcast float* %61 to <4 x float>*
  store <4 x float> %40, <4 x float>* %62, align 4, !tbaa !22
  %63 = or i64 %47, 24
  %64 = getelementptr float, float* %43, i64 %63
  %65 = bitcast float* %64 to <4 x float>*
  store <4 x float> %38, <4 x float>* %65, align 4, !tbaa !22
  %66 = getelementptr float, float* %64, i64 4
  %67 = bitcast float* %66 to <4 x float>*
  store <4 x float> %40, <4 x float>* %67, align 4, !tbaa !22
  %68 = or i64 %47, 32
  %69 = getelementptr float, float* %43, i64 %68
  %70 = bitcast float* %69 to <4 x float>*
  store <4 x float> %38, <4 x float>* %70, align 4, !tbaa !22
  %71 = getelementptr float, float* %69, i64 4
  %72 = bitcast float* %71 to <4 x float>*
  store <4 x float> %40, <4 x float>* %72, align 4, !tbaa !22
  %73 = or i64 %47, 40
  %74 = getelementptr float, float* %43, i64 %73
  %75 = bitcast float* %74 to <4 x float>*
  store <4 x float> %38, <4 x float>* %75, align 4, !tbaa !22
  %76 = getelementptr float, float* %74, i64 4
  %77 = bitcast float* %76 to <4 x float>*
  store <4 x float> %40, <4 x float>* %77, align 4, !tbaa !22
  %78 = or i64 %47, 48
  %79 = getelementptr float, float* %43, i64 %78
  %80 = bitcast float* %79 to <4 x float>*
  store <4 x float> %38, <4 x float>* %80, align 4, !tbaa !22
  %81 = getelementptr float, float* %79, i64 4
  %82 = bitcast float* %81 to <4 x float>*
  store <4 x float> %40, <4 x float>* %82, align 4, !tbaa !22
  %83 = or i64 %47, 56
  %84 = getelementptr float, float* %43, i64 %83
  %85 = bitcast float* %84 to <4 x float>*
  store <4 x float> %38, <4 x float>* %85, align 4, !tbaa !22
  %86 = getelementptr float, float* %84, i64 4
  %87 = bitcast float* %86 to <4 x float>*
  store <4 x float> %40, <4 x float>* %87, align 4, !tbaa !22
  %88 = add nuw i64 %47, 64
  %89 = add nuw i64 %48, 8
  %90 = icmp eq i64 %89, %27
  br i1 %90, label %91, label %46, !llvm.loop !27

91:                                               ; preds = %46, %44
  %92 = phi i64 [ 0, %44 ], [ %88, %46 ]
  br i1 %28, label %103, label %93

93:                                               ; preds = %91, %93
  %94 = phi i64 [ %100, %93 ], [ %92, %91 ]
  %95 = phi i64 [ %101, %93 ], [ 0, %91 ]
  %96 = getelementptr float, float* %43, i64 %94
  %97 = bitcast float* %96 to <4 x float>*
  store <4 x float> %38, <4 x float>* %97, align 4, !tbaa !22
  %98 = getelementptr float, float* %96, i64 4
  %99 = bitcast float* %98 to <4 x float>*
  store <4 x float> %40, <4 x float>* %99, align 4, !tbaa !22
  %100 = add nuw i64 %94, 8
  %101 = add i64 %95, 1
  %102 = icmp eq i64 %101, %25
  br i1 %102, label %103, label %93, !llvm.loop !29

103:                                              ; preds = %93, %91
  br i1 %29, label %113, label %104

104:                                              ; preds = %41, %103
  %105 = phi i32 [ 0, %41 ], [ %24, %103 ]
  %106 = phi float* [ %43, %41 ], [ %45, %103 ]
  br label %107

107:                                              ; preds = %104, %107
  %108 = phi i32 [ %111, %107 ], [ %105, %104 ]
  %109 = phi float* [ %110, %107 ], [ %106, %104 ]
  store float %36, float* %109, align 4, !tbaa !22
  %110 = getelementptr inbounds float, float* %109, i64 1
  %111 = add nuw nsw i32 %108, 1
  %112 = icmp eq i32 %111, %1
  br i1 %112, label %113, label %107, !llvm.loop !31

113:                                              ; preds = %107, %103
  %114 = phi float* [ %45, %103 ], [ %110, %107 ]
  %115 = add nuw nsw i32 %42, 1
  %116 = icmp eq i32 %115, %2
  br i1 %116, label %117, label %41, !llvm.loop !33

117:                                              ; preds = %113
  %118 = add nuw nsw i32 %31, 1
  %119 = icmp eq i32 %118, %3
  br i1 %119, label %120, label %30, !llvm.loop !34

120:                                              ; preds = %117, %6
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local zeroext i1 @_Z13fdtdReferencePfPKfS1_iiiii(float* nocapture %0, float* nocapture readonly %1, float* nocapture readonly %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) local_unnamed_addr #10 {
  %9 = shl i32 %6, 1
  %10 = add i32 %9, %3
  %11 = add nsw i32 %9, %4
  %12 = add nsw i32 %9, %5
  %13 = mul nsw i32 %10, %11
  %14 = mul nsw i32 %13, %12
  %15 = sext i32 %14 to i64
  %16 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.107, i64 0, i64 0))
  %17 = tail call noalias align 16 i8* @calloc(i64 %15, i64 4) #22
  %18 = bitcast i8* %17 to float*
  %19 = and i32 %7, 1
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, float* %18, float* %0
  %22 = select i1 %20, float* %0, float* %18
  %23 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @str.108, i64 0, i64 0))
  %24 = sub nsw i32 0, %6
  %25 = add i32 %6, %5
  %26 = add i32 %6, %4
  %27 = add i32 %6, %3
  %28 = icmp slt i32 %6, 1
  %29 = icmp sgt i32 %27, %24
  %30 = icmp sgt i32 %26, %24
  %31 = icmp sgt i32 %7, 0
  br i1 %31, label %32, label %807

32:                                               ; preds = %8
  %33 = icmp sgt i32 %25, %24
  br i1 %33, label %34, label %810

34:                                               ; preds = %32
  br i1 %30, label %35, label %802

35:                                               ; preds = %34
  br i1 %29, label %36, label %797

36:                                               ; preds = %35
  %37 = sext i32 %10 to i64
  %38 = sext i32 %13 to i64
  %39 = add i32 %6, 1
  %40 = zext i32 %39 to i64
  %41 = add i32 %9, %3
  %42 = add i32 %41, -1
  %43 = zext i32 %42 to i64
  %44 = add nuw nsw i64 %43, 1
  %45 = zext i32 %42 to i64
  %46 = add nuw nsw i64 %45, 1
  %47 = zext i32 %42 to i64
  %48 = add nuw nsw i64 %47, 1
  %49 = add i32 %9, %3
  %50 = add i32 %49, -1
  %51 = zext i32 %50 to i64
  %52 = add nuw nsw i64 %51, 1
  %53 = zext i32 %50 to i64
  %54 = add nuw nsw i64 %53, 1
  %55 = zext i32 %50 to i64
  %56 = add nuw nsw i64 %55, 1
  %57 = add i32 %9, %3
  %58 = add i32 %57, -1
  %59 = zext i32 %58 to i64
  %60 = add nuw nsw i64 %59, 1
  %61 = zext i32 %58 to i64
  %62 = add nuw nsw i64 %61, 1
  %63 = and i64 %62, 8589934584
  %64 = add nsw i64 %63, -8
  %65 = lshr exact i64 %64, 3
  %66 = add nuw nsw i64 %65, 1
  %67 = add i32 %6, %3
  %68 = add i32 %6, %3
  %69 = add i32 %6, %3
  %70 = add i32 %6, %3
  %71 = add i32 %6, %3
  %72 = add i32 %6, %3
  %73 = add i32 %6, %3
  %74 = add i32 %6, %3
  %75 = icmp ult i32 %58, 7
  %76 = and i64 %62, 8589934584
  %77 = trunc i64 %76 to i32
  %78 = sub i32 %77, %6
  %79 = and i64 %66, 3
  %80 = icmp ult i64 %64, 24
  %81 = and i64 %66, 4611686018427387900
  %82 = icmp eq i64 %79, 0
  %83 = icmp eq i64 %62, %76
  %84 = icmp ult i32 %50, 7
  %85 = and i64 %56, 8589934584
  %86 = trunc i64 %85 to i32
  %87 = sub i32 %86, %6
  %88 = and i64 %66, 3
  %89 = icmp ult i64 %64, 24
  %90 = and i64 %66, 4611686018427387900
  %91 = icmp eq i64 %88, 0
  %92 = icmp eq i64 %56, %85
  %93 = icmp ult i32 %50, 7
  %94 = and i64 %52, 8589934584
  %95 = trunc i64 %94 to i32
  %96 = sub i32 %95, %6
  %97 = and i64 %66, 3
  %98 = icmp ult i64 %64, 24
  %99 = and i64 %66, 4611686018427387900
  %100 = icmp eq i64 %97, 0
  %101 = icmp eq i64 %52, %94
  %102 = icmp ult i32 %42, 7
  %103 = and i64 %46, 8589934584
  %104 = trunc i64 %103 to i32
  %105 = sub i32 %104, %6
  %106 = and i64 %66, 3
  %107 = icmp ult i64 %64, 24
  %108 = and i64 %66, 4611686018427387900
  %109 = icmp eq i64 %106, 0
  %110 = icmp eq i64 %46, %103
  %111 = and i32 %10, 1
  %112 = icmp eq i32 %111, 0
  %113 = icmp slt i32 %6, 1
  %114 = icmp slt i32 %24, %3
  %115 = select i1 %113, i1 %114, i1 false
  %116 = sub i32 1, %6
  %117 = icmp eq i32 %58, 0
  br label %118

118:                                              ; preds = %36, %509
  %119 = phi i32 [ %510, %509 ], [ 0, %36 ]
  %120 = phi float* [ %121, %509 ], [ %22, %36 ]
  %121 = phi float* [ %120, %509 ], [ %21, %36 ]
  %122 = phi float* [ %121, %509 ], [ %1, %36 ]
  %123 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i32 %119)
  br label %124

124:                                              ; preds = %512, %118
  %125 = phi i32 [ %24, %118 ], [ %515, %512 ]
  %126 = phi float* [ %121, %118 ], [ %514, %512 ]
  %127 = phi float* [ %122, %118 ], [ %513, %512 ]
  %128 = icmp sgt i32 %125, -1
  %129 = icmp slt i32 %125, %5
  %130 = and i1 %129, %128
  br i1 %130, label %131, label %517

131:                                              ; preds = %124, %378
  %132 = phi i32 [ %381, %378 ], [ %24, %124 ]
  %133 = phi float* [ %380, %378 ], [ %126, %124 ]
  %134 = phi float* [ %379, %378 ], [ %127, %124 ]
  %135 = icmp sgt i32 %132, -1
  br i1 %135, label %271, label %136

136:                                              ; preds = %131
  br i1 %93, label %214, label %137

137:                                              ; preds = %136
  %138 = getelementptr float, float* %133, i64 %48
  %139 = getelementptr float, float* %134, i64 %48
  %140 = icmp ult float* %133, %139
  %141 = icmp ult float* %134, %138
  %142 = and i1 %140, %141
  br i1 %142, label %214, label %143

143:                                              ; preds = %137
  %144 = getelementptr float, float* %133, i64 %94
  %145 = getelementptr float, float* %134, i64 %94
  br i1 %98, label %195, label %146

146:                                              ; preds = %143, %146
  %147 = phi i64 [ %192, %146 ], [ 0, %143 ]
  %148 = phi i64 [ %193, %146 ], [ 0, %143 ]
  %149 = getelementptr float, float* %133, i64 %147
  %150 = getelementptr float, float* %134, i64 %147
  %151 = bitcast float* %150 to <4 x float>*
  %152 = load <4 x float>, <4 x float>* %151, align 4, !tbaa !22, !alias.scope !35
  %153 = getelementptr float, float* %150, i64 4
  %154 = bitcast float* %153 to <4 x float>*
  %155 = load <4 x float>, <4 x float>* %154, align 4, !tbaa !22, !alias.scope !35
  %156 = bitcast float* %149 to <4 x float>*
  store <4 x float> %152, <4 x float>* %156, align 4, !tbaa !22, !alias.scope !38, !noalias !35
  %157 = getelementptr float, float* %149, i64 4
  %158 = bitcast float* %157 to <4 x float>*
  store <4 x float> %155, <4 x float>* %158, align 4, !tbaa !22, !alias.scope !38, !noalias !35
  %159 = or i64 %147, 8
  %160 = getelementptr float, float* %133, i64 %159
  %161 = getelementptr float, float* %134, i64 %159
  %162 = bitcast float* %161 to <4 x float>*
  %163 = load <4 x float>, <4 x float>* %162, align 4, !tbaa !22, !alias.scope !35
  %164 = getelementptr float, float* %161, i64 4
  %165 = bitcast float* %164 to <4 x float>*
  %166 = load <4 x float>, <4 x float>* %165, align 4, !tbaa !22, !alias.scope !35
  %167 = bitcast float* %160 to <4 x float>*
  store <4 x float> %163, <4 x float>* %167, align 4, !tbaa !22, !alias.scope !38, !noalias !35
  %168 = getelementptr float, float* %160, i64 4
  %169 = bitcast float* %168 to <4 x float>*
  store <4 x float> %166, <4 x float>* %169, align 4, !tbaa !22, !alias.scope !38, !noalias !35
  %170 = or i64 %147, 16
  %171 = getelementptr float, float* %133, i64 %170
  %172 = getelementptr float, float* %134, i64 %170
  %173 = bitcast float* %172 to <4 x float>*
  %174 = load <4 x float>, <4 x float>* %173, align 4, !tbaa !22, !alias.scope !35
  %175 = getelementptr float, float* %172, i64 4
  %176 = bitcast float* %175 to <4 x float>*
  %177 = load <4 x float>, <4 x float>* %176, align 4, !tbaa !22, !alias.scope !35
  %178 = bitcast float* %171 to <4 x float>*
  store <4 x float> %174, <4 x float>* %178, align 4, !tbaa !22, !alias.scope !38, !noalias !35
  %179 = getelementptr float, float* %171, i64 4
  %180 = bitcast float* %179 to <4 x float>*
  store <4 x float> %177, <4 x float>* %180, align 4, !tbaa !22, !alias.scope !38, !noalias !35
  %181 = or i64 %147, 24
  %182 = getelementptr float, float* %133, i64 %181
  %183 = getelementptr float, float* %134, i64 %181
  %184 = bitcast float* %183 to <4 x float>*
  %185 = load <4 x float>, <4 x float>* %184, align 4, !tbaa !22, !alias.scope !35
  %186 = getelementptr float, float* %183, i64 4
  %187 = bitcast float* %186 to <4 x float>*
  %188 = load <4 x float>, <4 x float>* %187, align 4, !tbaa !22, !alias.scope !35
  %189 = bitcast float* %182 to <4 x float>*
  store <4 x float> %185, <4 x float>* %189, align 4, !tbaa !22, !alias.scope !38, !noalias !35
  %190 = getelementptr float, float* %182, i64 4
  %191 = bitcast float* %190 to <4 x float>*
  store <4 x float> %188, <4 x float>* %191, align 4, !tbaa !22, !alias.scope !38, !noalias !35
  %192 = add nuw i64 %147, 32
  %193 = add i64 %148, 4
  %194 = icmp eq i64 %193, %99
  br i1 %194, label %195, label %146, !llvm.loop !40

195:                                              ; preds = %146, %143
  %196 = phi i64 [ 0, %143 ], [ %192, %146 ]
  br i1 %100, label %213, label %197

197:                                              ; preds = %195, %197
  %198 = phi i64 [ %210, %197 ], [ %196, %195 ]
  %199 = phi i64 [ %211, %197 ], [ 0, %195 ]
  %200 = getelementptr float, float* %133, i64 %198
  %201 = getelementptr float, float* %134, i64 %198
  %202 = bitcast float* %201 to <4 x float>*
  %203 = load <4 x float>, <4 x float>* %202, align 4, !tbaa !22, !alias.scope !35
  %204 = getelementptr float, float* %201, i64 4
  %205 = bitcast float* %204 to <4 x float>*
  %206 = load <4 x float>, <4 x float>* %205, align 4, !tbaa !22, !alias.scope !35
  %207 = bitcast float* %200 to <4 x float>*
  store <4 x float> %203, <4 x float>* %207, align 4, !tbaa !22, !alias.scope !38, !noalias !35
  %208 = getelementptr float, float* %200, i64 4
  %209 = bitcast float* %208 to <4 x float>*
  store <4 x float> %206, <4 x float>* %209, align 4, !tbaa !22, !alias.scope !38, !noalias !35
  %210 = add nuw i64 %198, 8
  %211 = add i64 %199, 1
  %212 = icmp eq i64 %211, %97
  br i1 %212, label %213, label %197, !llvm.loop !41

213:                                              ; preds = %197, %195
  br i1 %101, label %378, label %214

214:                                              ; preds = %137, %136, %213
  %215 = phi i32 [ %24, %137 ], [ %24, %136 ], [ %96, %213 ]
  %216 = phi float* [ %133, %137 ], [ %133, %136 ], [ %144, %213 ]
  %217 = phi float* [ %134, %137 ], [ %134, %136 ], [ %145, %213 ]
  %218 = sub i32 %71, %215
  %219 = xor i32 %215, -1
  %220 = add i32 %72, %219
  %221 = and i32 %218, 7
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %234, label %223

223:                                              ; preds = %214, %223
  %224 = phi i32 [ %231, %223 ], [ %215, %214 ]
  %225 = phi float* [ %229, %223 ], [ %216, %214 ]
  %226 = phi float* [ %230, %223 ], [ %217, %214 ]
  %227 = phi i32 [ %232, %223 ], [ 0, %214 ]
  %228 = load float, float* %226, align 4, !tbaa !22
  store float %228, float* %225, align 4, !tbaa !22
  %229 = getelementptr inbounds float, float* %225, i64 1
  %230 = getelementptr inbounds float, float* %226, i64 1
  %231 = add nsw i32 %224, 1
  %232 = add i32 %227, 1
  %233 = icmp eq i32 %232, %221
  br i1 %233, label %234, label %223, !llvm.loop !42

234:                                              ; preds = %223, %214
  %235 = phi float* [ undef, %214 ], [ %229, %223 ]
  %236 = phi float* [ undef, %214 ], [ %230, %223 ]
  %237 = phi i32 [ %215, %214 ], [ %231, %223 ]
  %238 = phi float* [ %216, %214 ], [ %229, %223 ]
  %239 = phi float* [ %217, %214 ], [ %230, %223 ]
  %240 = icmp ult i32 %220, 7
  br i1 %240, label %378, label %383

241:                                              ; preds = %371, %241
  %242 = phi i32 [ %269, %241 ], [ %374, %371 ]
  %243 = phi float* [ %267, %241 ], [ %375, %371 ]
  %244 = phi float* [ %268, %241 ], [ %376, %371 ]
  %245 = load float, float* %244, align 4, !tbaa !22
  store float %245, float* %243, align 4, !tbaa !22
  %246 = getelementptr inbounds float, float* %243, i64 1
  %247 = getelementptr inbounds float, float* %244, i64 1
  %248 = load float, float* %247, align 4, !tbaa !22
  store float %248, float* %246, align 4, !tbaa !22
  %249 = getelementptr inbounds float, float* %243, i64 2
  %250 = getelementptr inbounds float, float* %244, i64 2
  %251 = load float, float* %250, align 4, !tbaa !22
  store float %251, float* %249, align 4, !tbaa !22
  %252 = getelementptr inbounds float, float* %243, i64 3
  %253 = getelementptr inbounds float, float* %244, i64 3
  %254 = load float, float* %253, align 4, !tbaa !22
  store float %254, float* %252, align 4, !tbaa !22
  %255 = getelementptr inbounds float, float* %243, i64 4
  %256 = getelementptr inbounds float, float* %244, i64 4
  %257 = load float, float* %256, align 4, !tbaa !22
  store float %257, float* %255, align 4, !tbaa !22
  %258 = getelementptr inbounds float, float* %243, i64 5
  %259 = getelementptr inbounds float, float* %244, i64 5
  %260 = load float, float* %259, align 4, !tbaa !22
  store float %260, float* %258, align 4, !tbaa !22
  %261 = getelementptr inbounds float, float* %243, i64 6
  %262 = getelementptr inbounds float, float* %244, i64 6
  %263 = load float, float* %262, align 4, !tbaa !22
  store float %263, float* %261, align 4, !tbaa !22
  %264 = getelementptr inbounds float, float* %243, i64 7
  %265 = getelementptr inbounds float, float* %244, i64 7
  %266 = load float, float* %265, align 4, !tbaa !22
  store float %266, float* %264, align 4, !tbaa !22
  %267 = getelementptr inbounds float, float* %243, i64 8
  %268 = getelementptr inbounds float, float* %244, i64 8
  %269 = add nsw i32 %242, 8
  %270 = icmp eq i32 %269, %27
  br i1 %270, label %378, label %241, !llvm.loop !43

271:                                              ; preds = %131
  %272 = icmp slt i32 %132, %4
  br i1 %272, label %413, label %273

273:                                              ; preds = %271
  br i1 %102, label %351, label %274

274:                                              ; preds = %273
  %275 = getelementptr float, float* %133, i64 %44
  %276 = getelementptr float, float* %134, i64 %44
  %277 = icmp ult float* %133, %276
  %278 = icmp ult float* %134, %275
  %279 = and i1 %277, %278
  br i1 %279, label %351, label %280

280:                                              ; preds = %274
  %281 = getelementptr float, float* %133, i64 %103
  %282 = getelementptr float, float* %134, i64 %103
  br i1 %107, label %332, label %283

283:                                              ; preds = %280, %283
  %284 = phi i64 [ %329, %283 ], [ 0, %280 ]
  %285 = phi i64 [ %330, %283 ], [ 0, %280 ]
  %286 = getelementptr float, float* %133, i64 %284
  %287 = getelementptr float, float* %134, i64 %284
  %288 = bitcast float* %287 to <4 x float>*
  %289 = load <4 x float>, <4 x float>* %288, align 4, !tbaa !22, !alias.scope !44
  %290 = getelementptr float, float* %287, i64 4
  %291 = bitcast float* %290 to <4 x float>*
  %292 = load <4 x float>, <4 x float>* %291, align 4, !tbaa !22, !alias.scope !44
  %293 = bitcast float* %286 to <4 x float>*
  store <4 x float> %289, <4 x float>* %293, align 4, !tbaa !22, !alias.scope !47, !noalias !44
  %294 = getelementptr float, float* %286, i64 4
  %295 = bitcast float* %294 to <4 x float>*
  store <4 x float> %292, <4 x float>* %295, align 4, !tbaa !22, !alias.scope !47, !noalias !44
  %296 = or i64 %284, 8
  %297 = getelementptr float, float* %133, i64 %296
  %298 = getelementptr float, float* %134, i64 %296
  %299 = bitcast float* %298 to <4 x float>*
  %300 = load <4 x float>, <4 x float>* %299, align 4, !tbaa !22, !alias.scope !44
  %301 = getelementptr float, float* %298, i64 4
  %302 = bitcast float* %301 to <4 x float>*
  %303 = load <4 x float>, <4 x float>* %302, align 4, !tbaa !22, !alias.scope !44
  %304 = bitcast float* %297 to <4 x float>*
  store <4 x float> %300, <4 x float>* %304, align 4, !tbaa !22, !alias.scope !47, !noalias !44
  %305 = getelementptr float, float* %297, i64 4
  %306 = bitcast float* %305 to <4 x float>*
  store <4 x float> %303, <4 x float>* %306, align 4, !tbaa !22, !alias.scope !47, !noalias !44
  %307 = or i64 %284, 16
  %308 = getelementptr float, float* %133, i64 %307
  %309 = getelementptr float, float* %134, i64 %307
  %310 = bitcast float* %309 to <4 x float>*
  %311 = load <4 x float>, <4 x float>* %310, align 4, !tbaa !22, !alias.scope !44
  %312 = getelementptr float, float* %309, i64 4
  %313 = bitcast float* %312 to <4 x float>*
  %314 = load <4 x float>, <4 x float>* %313, align 4, !tbaa !22, !alias.scope !44
  %315 = bitcast float* %308 to <4 x float>*
  store <4 x float> %311, <4 x float>* %315, align 4, !tbaa !22, !alias.scope !47, !noalias !44
  %316 = getelementptr float, float* %308, i64 4
  %317 = bitcast float* %316 to <4 x float>*
  store <4 x float> %314, <4 x float>* %317, align 4, !tbaa !22, !alias.scope !47, !noalias !44
  %318 = or i64 %284, 24
  %319 = getelementptr float, float* %133, i64 %318
  %320 = getelementptr float, float* %134, i64 %318
  %321 = bitcast float* %320 to <4 x float>*
  %322 = load <4 x float>, <4 x float>* %321, align 4, !tbaa !22, !alias.scope !44
  %323 = getelementptr float, float* %320, i64 4
  %324 = bitcast float* %323 to <4 x float>*
  %325 = load <4 x float>, <4 x float>* %324, align 4, !tbaa !22, !alias.scope !44
  %326 = bitcast float* %319 to <4 x float>*
  store <4 x float> %322, <4 x float>* %326, align 4, !tbaa !22, !alias.scope !47, !noalias !44
  %327 = getelementptr float, float* %319, i64 4
  %328 = bitcast float* %327 to <4 x float>*
  store <4 x float> %325, <4 x float>* %328, align 4, !tbaa !22, !alias.scope !47, !noalias !44
  %329 = add nuw i64 %284, 32
  %330 = add i64 %285, 4
  %331 = icmp eq i64 %330, %108
  br i1 %331, label %332, label %283, !llvm.loop !49

332:                                              ; preds = %283, %280
  %333 = phi i64 [ 0, %280 ], [ %329, %283 ]
  br i1 %109, label %350, label %334

334:                                              ; preds = %332, %334
  %335 = phi i64 [ %347, %334 ], [ %333, %332 ]
  %336 = phi i64 [ %348, %334 ], [ 0, %332 ]
  %337 = getelementptr float, float* %133, i64 %335
  %338 = getelementptr float, float* %134, i64 %335
  %339 = bitcast float* %338 to <4 x float>*
  %340 = load <4 x float>, <4 x float>* %339, align 4, !tbaa !22, !alias.scope !44
  %341 = getelementptr float, float* %338, i64 4
  %342 = bitcast float* %341 to <4 x float>*
  %343 = load <4 x float>, <4 x float>* %342, align 4, !tbaa !22, !alias.scope !44
  %344 = bitcast float* %337 to <4 x float>*
  store <4 x float> %340, <4 x float>* %344, align 4, !tbaa !22, !alias.scope !47, !noalias !44
  %345 = getelementptr float, float* %337, i64 4
  %346 = bitcast float* %345 to <4 x float>*
  store <4 x float> %343, <4 x float>* %346, align 4, !tbaa !22, !alias.scope !47, !noalias !44
  %347 = add nuw i64 %335, 8
  %348 = add i64 %336, 1
  %349 = icmp eq i64 %348, %106
  br i1 %349, label %350, label %334, !llvm.loop !50

350:                                              ; preds = %334, %332
  br i1 %110, label %378, label %351

351:                                              ; preds = %274, %273, %350
  %352 = phi i32 [ %24, %274 ], [ %24, %273 ], [ %105, %350 ]
  %353 = phi float* [ %133, %274 ], [ %133, %273 ], [ %281, %350 ]
  %354 = phi float* [ %134, %274 ], [ %134, %273 ], [ %282, %350 ]
  %355 = sub i32 %73, %352
  %356 = xor i32 %352, -1
  %357 = add i32 %74, %356
  %358 = and i32 %355, 7
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %371, label %360

360:                                              ; preds = %351, %360
  %361 = phi i32 [ %368, %360 ], [ %352, %351 ]
  %362 = phi float* [ %366, %360 ], [ %353, %351 ]
  %363 = phi float* [ %367, %360 ], [ %354, %351 ]
  %364 = phi i32 [ %369, %360 ], [ 0, %351 ]
  %365 = load float, float* %363, align 4, !tbaa !22
  store float %365, float* %362, align 4, !tbaa !22
  %366 = getelementptr inbounds float, float* %362, i64 1
  %367 = getelementptr inbounds float, float* %363, i64 1
  %368 = add nsw i32 %361, 1
  %369 = add i32 %364, 1
  %370 = icmp eq i32 %369, %358
  br i1 %370, label %371, label %360, !llvm.loop !51

371:                                              ; preds = %360, %351
  %372 = phi float* [ undef, %351 ], [ %366, %360 ]
  %373 = phi float* [ undef, %351 ], [ %367, %360 ]
  %374 = phi i32 [ %352, %351 ], [ %368, %360 ]
  %375 = phi float* [ %353, %351 ], [ %366, %360 ]
  %376 = phi float* [ %354, %351 ], [ %367, %360 ]
  %377 = icmp ult i32 %357, 7
  br i1 %377, label %378, label %241

378:                                              ; preds = %234, %383, %371, %241, %474, %424, %503, %213, %350
  %379 = phi float* [ %282, %350 ], [ %145, %213 ], [ %426, %424 ], [ %506, %503 ], [ %477, %474 ], [ %373, %371 ], [ %268, %241 ], [ %236, %234 ], [ %410, %383 ]
  %380 = phi float* [ %281, %350 ], [ %144, %213 ], [ %425, %424 ], [ %505, %503 ], [ %476, %474 ], [ %372, %371 ], [ %267, %241 ], [ %235, %234 ], [ %409, %383 ]
  %381 = add nsw i32 %132, 1
  %382 = icmp eq i32 %381, %26
  br i1 %382, label %512, label %131, !llvm.loop !52

383:                                              ; preds = %234, %383
  %384 = phi i32 [ %411, %383 ], [ %237, %234 ]
  %385 = phi float* [ %409, %383 ], [ %238, %234 ]
  %386 = phi float* [ %410, %383 ], [ %239, %234 ]
  %387 = load float, float* %386, align 4, !tbaa !22
  store float %387, float* %385, align 4, !tbaa !22
  %388 = getelementptr inbounds float, float* %385, i64 1
  %389 = getelementptr inbounds float, float* %386, i64 1
  %390 = load float, float* %389, align 4, !tbaa !22
  store float %390, float* %388, align 4, !tbaa !22
  %391 = getelementptr inbounds float, float* %385, i64 2
  %392 = getelementptr inbounds float, float* %386, i64 2
  %393 = load float, float* %392, align 4, !tbaa !22
  store float %393, float* %391, align 4, !tbaa !22
  %394 = getelementptr inbounds float, float* %385, i64 3
  %395 = getelementptr inbounds float, float* %386, i64 3
  %396 = load float, float* %395, align 4, !tbaa !22
  store float %396, float* %394, align 4, !tbaa !22
  %397 = getelementptr inbounds float, float* %385, i64 4
  %398 = getelementptr inbounds float, float* %386, i64 4
  %399 = load float, float* %398, align 4, !tbaa !22
  store float %399, float* %397, align 4, !tbaa !22
  %400 = getelementptr inbounds float, float* %385, i64 5
  %401 = getelementptr inbounds float, float* %386, i64 5
  %402 = load float, float* %401, align 4, !tbaa !22
  store float %402, float* %400, align 4, !tbaa !22
  %403 = getelementptr inbounds float, float* %385, i64 6
  %404 = getelementptr inbounds float, float* %386, i64 6
  %405 = load float, float* %404, align 4, !tbaa !22
  store float %405, float* %403, align 4, !tbaa !22
  %406 = getelementptr inbounds float, float* %385, i64 7
  %407 = getelementptr inbounds float, float* %386, i64 7
  %408 = load float, float* %407, align 4, !tbaa !22
  store float %408, float* %406, align 4, !tbaa !22
  %409 = getelementptr inbounds float, float* %385, i64 8
  %410 = getelementptr inbounds float, float* %386, i64 8
  %411 = add nsw i32 %384, 8
  %412 = icmp eq i32 %411, %27
  br i1 %412, label %378, label %383, !llvm.loop !53

413:                                              ; preds = %271
  br i1 %28, label %414, label %430

414:                                              ; preds = %413
  br i1 %112, label %424, label %415

415:                                              ; preds = %414
  %416 = load float, float* %134, align 4, !tbaa !22
  br i1 %115, label %417, label %420

417:                                              ; preds = %415
  %418 = load float, float* %2, align 4, !tbaa !22
  %419 = fmul contract float %416, %418
  br label %420

420:                                              ; preds = %417, %415
  %421 = phi float [ %419, %417 ], [ %416, %415 ]
  store float %421, float* %133, align 4, !tbaa !22
  %422 = getelementptr inbounds float, float* %133, i64 1
  %423 = getelementptr inbounds float, float* %134, i64 1
  br label %424

424:                                              ; preds = %420, %414
  %425 = phi float* [ undef, %414 ], [ %422, %420 ]
  %426 = phi float* [ undef, %414 ], [ %423, %420 ]
  %427 = phi i32 [ %24, %414 ], [ %116, %420 ]
  %428 = phi float* [ %133, %414 ], [ %422, %420 ]
  %429 = phi float* [ %134, %414 ], [ %423, %420 ]
  br i1 %117, label %378, label %480

430:                                              ; preds = %413, %474
  %431 = phi i32 [ %478, %474 ], [ %24, %413 ]
  %432 = phi float* [ %476, %474 ], [ %133, %413 ]
  %433 = phi float* [ %477, %474 ], [ %134, %413 ]
  %434 = icmp sgt i32 %431, -1
  %435 = icmp slt i32 %431, %3
  %436 = select i1 %434, i1 %435, i1 false
  %437 = load float, float* %433, align 4, !tbaa !22
  br i1 %436, label %438, label %474

438:                                              ; preds = %430
  %439 = load float, float* %2, align 4, !tbaa !22
  %440 = fmul contract float %437, %439
  br label %441

441:                                              ; preds = %441, %438
  %442 = phi i64 [ %472, %441 ], [ 1, %438 ]
  %443 = phi float [ %471, %441 ], [ %440, %438 ]
  %444 = getelementptr inbounds float, float* %2, i64 %442
  %445 = load float, float* %444, align 4, !tbaa !22
  %446 = getelementptr inbounds float, float* %433, i64 %442
  %447 = load float, float* %446, align 4, !tbaa !22
  %448 = sub nsw i64 0, %442
  %449 = getelementptr inbounds float, float* %433, i64 %448
  %450 = load float, float* %449, align 4, !tbaa !22
  %451 = fadd contract float %447, %450
  %452 = fmul contract float %445, %451
  %453 = fadd contract float %443, %452
  %454 = mul nsw i64 %442, %37
  %455 = getelementptr inbounds float, float* %433, i64 %454
  %456 = load float, float* %455, align 4, !tbaa !22
  %457 = sub nsw i64 0, %454
  %458 = getelementptr inbounds float, float* %433, i64 %457
  %459 = load float, float* %458, align 4, !tbaa !22
  %460 = fadd contract float %456, %459
  %461 = fmul contract float %445, %460
  %462 = fadd contract float %453, %461
  %463 = mul nsw i64 %442, %38
  %464 = getelementptr inbounds float, float* %433, i64 %463
  %465 = load float, float* %464, align 4, !tbaa !22
  %466 = sub nsw i64 0, %463
  %467 = getelementptr inbounds float, float* %433, i64 %466
  %468 = load float, float* %467, align 4, !tbaa !22
  %469 = fadd contract float %465, %468
  %470 = fmul contract float %445, %469
  %471 = fadd contract float %462, %470
  %472 = add nuw nsw i64 %442, 1
  %473 = icmp eq i64 %472, %40
  br i1 %473, label %474, label %441, !llvm.loop !54

474:                                              ; preds = %441, %430
  %475 = phi float [ %437, %430 ], [ %471, %441 ]
  store float %475, float* %432, align 4, !tbaa !22
  %476 = getelementptr inbounds float, float* %432, i64 1
  %477 = getelementptr inbounds float, float* %433, i64 1
  %478 = add nsw i32 %431, 1
  %479 = icmp eq i32 %478, %27
  br i1 %479, label %378, label %430, !llvm.loop !55

480:                                              ; preds = %424, %503
  %481 = phi i32 [ %507, %503 ], [ %427, %424 ]
  %482 = phi float* [ %505, %503 ], [ %428, %424 ]
  %483 = phi float* [ %506, %503 ], [ %429, %424 ]
  %484 = icmp sgt i32 %481, -1
  %485 = icmp slt i32 %481, %3
  %486 = select i1 %484, i1 %485, i1 false
  %487 = load float, float* %483, align 4, !tbaa !22
  br i1 %486, label %488, label %491

488:                                              ; preds = %480
  %489 = load float, float* %2, align 4, !tbaa !22
  %490 = fmul contract float %487, %489
  br label %491

491:                                              ; preds = %480, %488
  %492 = phi float [ %490, %488 ], [ %487, %480 ]
  store float %492, float* %482, align 4, !tbaa !22
  %493 = getelementptr inbounds float, float* %482, i64 1
  %494 = getelementptr inbounds float, float* %483, i64 1
  %495 = add nsw i32 %481, 1
  %496 = icmp sgt i32 %481, -2
  %497 = icmp slt i32 %495, %3
  %498 = select i1 %496, i1 %497, i1 false
  %499 = load float, float* %494, align 4, !tbaa !22
  br i1 %498, label %500, label %503

500:                                              ; preds = %491
  %501 = load float, float* %2, align 4, !tbaa !22
  %502 = fmul contract float %499, %501
  br label %503

503:                                              ; preds = %500, %491
  %504 = phi float [ %502, %500 ], [ %499, %491 ]
  store float %504, float* %493, align 4, !tbaa !22
  %505 = getelementptr inbounds float, float* %482, i64 2
  %506 = getelementptr inbounds float, float* %483, i64 2
  %507 = add nsw i32 %481, 2
  %508 = icmp eq i32 %507, %27
  br i1 %508, label %378, label %480, !llvm.loop !55

509:                                              ; preds = %512
  %510 = add nuw nsw i32 %119, 1
  %511 = icmp eq i32 %510, %7
  br i1 %511, label %807, label %118, !llvm.loop !56

512:                                              ; preds = %762, %378
  %513 = phi float* [ %379, %378 ], [ %763, %762 ]
  %514 = phi float* [ %380, %378 ], [ %764, %762 ]
  %515 = add nsw i32 %125, 1
  %516 = icmp eq i32 %515, %25
  br i1 %516, label %509, label %124, !llvm.loop !57

517:                                              ; preds = %124, %762
  %518 = phi i32 [ %765, %762 ], [ %24, %124 ]
  %519 = phi float* [ %764, %762 ], [ %126, %124 ]
  %520 = phi float* [ %763, %762 ], [ %127, %124 ]
  %521 = icmp sgt i32 %518, -1
  br i1 %521, label %627, label %522

522:                                              ; preds = %517
  br i1 %75, label %600, label %523

523:                                              ; preds = %522
  %524 = getelementptr float, float* %519, i64 %60
  %525 = getelementptr float, float* %520, i64 %60
  %526 = icmp ult float* %519, %525
  %527 = icmp ult float* %520, %524
  %528 = and i1 %526, %527
  br i1 %528, label %600, label %529

529:                                              ; preds = %523
  %530 = getelementptr float, float* %519, i64 %76
  %531 = getelementptr float, float* %520, i64 %76
  br i1 %80, label %581, label %532

532:                                              ; preds = %529, %532
  %533 = phi i64 [ %578, %532 ], [ 0, %529 ]
  %534 = phi i64 [ %579, %532 ], [ 0, %529 ]
  %535 = getelementptr float, float* %519, i64 %533
  %536 = getelementptr float, float* %520, i64 %533
  %537 = bitcast float* %536 to <4 x float>*
  %538 = load <4 x float>, <4 x float>* %537, align 4, !tbaa !22, !alias.scope !58
  %539 = getelementptr float, float* %536, i64 4
  %540 = bitcast float* %539 to <4 x float>*
  %541 = load <4 x float>, <4 x float>* %540, align 4, !tbaa !22, !alias.scope !58
  %542 = bitcast float* %535 to <4 x float>*
  store <4 x float> %538, <4 x float>* %542, align 4, !tbaa !22, !alias.scope !61, !noalias !58
  %543 = getelementptr float, float* %535, i64 4
  %544 = bitcast float* %543 to <4 x float>*
  store <4 x float> %541, <4 x float>* %544, align 4, !tbaa !22, !alias.scope !61, !noalias !58
  %545 = or i64 %533, 8
  %546 = getelementptr float, float* %519, i64 %545
  %547 = getelementptr float, float* %520, i64 %545
  %548 = bitcast float* %547 to <4 x float>*
  %549 = load <4 x float>, <4 x float>* %548, align 4, !tbaa !22, !alias.scope !58
  %550 = getelementptr float, float* %547, i64 4
  %551 = bitcast float* %550 to <4 x float>*
  %552 = load <4 x float>, <4 x float>* %551, align 4, !tbaa !22, !alias.scope !58
  %553 = bitcast float* %546 to <4 x float>*
  store <4 x float> %549, <4 x float>* %553, align 4, !tbaa !22, !alias.scope !61, !noalias !58
  %554 = getelementptr float, float* %546, i64 4
  %555 = bitcast float* %554 to <4 x float>*
  store <4 x float> %552, <4 x float>* %555, align 4, !tbaa !22, !alias.scope !61, !noalias !58
  %556 = or i64 %533, 16
  %557 = getelementptr float, float* %519, i64 %556
  %558 = getelementptr float, float* %520, i64 %556
  %559 = bitcast float* %558 to <4 x float>*
  %560 = load <4 x float>, <4 x float>* %559, align 4, !tbaa !22, !alias.scope !58
  %561 = getelementptr float, float* %558, i64 4
  %562 = bitcast float* %561 to <4 x float>*
  %563 = load <4 x float>, <4 x float>* %562, align 4, !tbaa !22, !alias.scope !58
  %564 = bitcast float* %557 to <4 x float>*
  store <4 x float> %560, <4 x float>* %564, align 4, !tbaa !22, !alias.scope !61, !noalias !58
  %565 = getelementptr float, float* %557, i64 4
  %566 = bitcast float* %565 to <4 x float>*
  store <4 x float> %563, <4 x float>* %566, align 4, !tbaa !22, !alias.scope !61, !noalias !58
  %567 = or i64 %533, 24
  %568 = getelementptr float, float* %519, i64 %567
  %569 = getelementptr float, float* %520, i64 %567
  %570 = bitcast float* %569 to <4 x float>*
  %571 = load <4 x float>, <4 x float>* %570, align 4, !tbaa !22, !alias.scope !58
  %572 = getelementptr float, float* %569, i64 4
  %573 = bitcast float* %572 to <4 x float>*
  %574 = load <4 x float>, <4 x float>* %573, align 4, !tbaa !22, !alias.scope !58
  %575 = bitcast float* %568 to <4 x float>*
  store <4 x float> %571, <4 x float>* %575, align 4, !tbaa !22, !alias.scope !61, !noalias !58
  %576 = getelementptr float, float* %568, i64 4
  %577 = bitcast float* %576 to <4 x float>*
  store <4 x float> %574, <4 x float>* %577, align 4, !tbaa !22, !alias.scope !61, !noalias !58
  %578 = add nuw i64 %533, 32
  %579 = add i64 %534, 4
  %580 = icmp eq i64 %579, %81
  br i1 %580, label %581, label %532, !llvm.loop !63

581:                                              ; preds = %532, %529
  %582 = phi i64 [ 0, %529 ], [ %578, %532 ]
  br i1 %82, label %599, label %583

583:                                              ; preds = %581, %583
  %584 = phi i64 [ %596, %583 ], [ %582, %581 ]
  %585 = phi i64 [ %597, %583 ], [ 0, %581 ]
  %586 = getelementptr float, float* %519, i64 %584
  %587 = getelementptr float, float* %520, i64 %584
  %588 = bitcast float* %587 to <4 x float>*
  %589 = load <4 x float>, <4 x float>* %588, align 4, !tbaa !22, !alias.scope !58
  %590 = getelementptr float, float* %587, i64 4
  %591 = bitcast float* %590 to <4 x float>*
  %592 = load <4 x float>, <4 x float>* %591, align 4, !tbaa !22, !alias.scope !58
  %593 = bitcast float* %586 to <4 x float>*
  store <4 x float> %589, <4 x float>* %593, align 4, !tbaa !22, !alias.scope !61, !noalias !58
  %594 = getelementptr float, float* %586, i64 4
  %595 = bitcast float* %594 to <4 x float>*
  store <4 x float> %592, <4 x float>* %595, align 4, !tbaa !22, !alias.scope !61, !noalias !58
  %596 = add nuw i64 %584, 8
  %597 = add i64 %585, 1
  %598 = icmp eq i64 %597, %79
  br i1 %598, label %599, label %583, !llvm.loop !64

599:                                              ; preds = %583, %581
  br i1 %83, label %762, label %600

600:                                              ; preds = %523, %522, %599
  %601 = phi i32 [ %24, %523 ], [ %24, %522 ], [ %78, %599 ]
  %602 = phi float* [ %519, %523 ], [ %519, %522 ], [ %530, %599 ]
  %603 = phi float* [ %520, %523 ], [ %520, %522 ], [ %531, %599 ]
  %604 = sub i32 %67, %601
  %605 = xor i32 %601, -1
  %606 = add i32 %68, %605
  %607 = and i32 %604, 7
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %620, label %609

609:                                              ; preds = %600, %609
  %610 = phi i32 [ %617, %609 ], [ %601, %600 ]
  %611 = phi float* [ %615, %609 ], [ %602, %600 ]
  %612 = phi float* [ %616, %609 ], [ %603, %600 ]
  %613 = phi i32 [ %618, %609 ], [ 0, %600 ]
  %614 = load float, float* %612, align 4, !tbaa !22
  store float %614, float* %611, align 4, !tbaa !22
  %615 = getelementptr inbounds float, float* %611, i64 1
  %616 = getelementptr inbounds float, float* %612, i64 1
  %617 = add nsw i32 %610, 1
  %618 = add i32 %613, 1
  %619 = icmp eq i32 %618, %607
  br i1 %619, label %620, label %609, !llvm.loop !65

620:                                              ; preds = %609, %600
  %621 = phi float* [ undef, %600 ], [ %615, %609 ]
  %622 = phi float* [ undef, %600 ], [ %616, %609 ]
  %623 = phi i32 [ %601, %600 ], [ %617, %609 ]
  %624 = phi float* [ %602, %600 ], [ %615, %609 ]
  %625 = phi float* [ %603, %600 ], [ %616, %609 ]
  %626 = icmp ult i32 %606, 7
  br i1 %626, label %762, label %767

627:                                              ; preds = %517
  br i1 %84, label %705, label %628

628:                                              ; preds = %627
  %629 = getelementptr float, float* %519, i64 %54
  %630 = getelementptr float, float* %520, i64 %54
  %631 = icmp ult float* %519, %630
  %632 = icmp ult float* %520, %629
  %633 = and i1 %631, %632
  br i1 %633, label %705, label %634

634:                                              ; preds = %628
  %635 = getelementptr float, float* %519, i64 %85
  %636 = getelementptr float, float* %520, i64 %85
  br i1 %89, label %686, label %637

637:                                              ; preds = %634, %637
  %638 = phi i64 [ %683, %637 ], [ 0, %634 ]
  %639 = phi i64 [ %684, %637 ], [ 0, %634 ]
  %640 = getelementptr float, float* %519, i64 %638
  %641 = getelementptr float, float* %520, i64 %638
  %642 = bitcast float* %641 to <4 x float>*
  %643 = load <4 x float>, <4 x float>* %642, align 4, !tbaa !22, !alias.scope !66
  %644 = getelementptr float, float* %641, i64 4
  %645 = bitcast float* %644 to <4 x float>*
  %646 = load <4 x float>, <4 x float>* %645, align 4, !tbaa !22, !alias.scope !66
  %647 = bitcast float* %640 to <4 x float>*
  store <4 x float> %643, <4 x float>* %647, align 4, !tbaa !22, !alias.scope !69, !noalias !66
  %648 = getelementptr float, float* %640, i64 4
  %649 = bitcast float* %648 to <4 x float>*
  store <4 x float> %646, <4 x float>* %649, align 4, !tbaa !22, !alias.scope !69, !noalias !66
  %650 = or i64 %638, 8
  %651 = getelementptr float, float* %519, i64 %650
  %652 = getelementptr float, float* %520, i64 %650
  %653 = bitcast float* %652 to <4 x float>*
  %654 = load <4 x float>, <4 x float>* %653, align 4, !tbaa !22, !alias.scope !66
  %655 = getelementptr float, float* %652, i64 4
  %656 = bitcast float* %655 to <4 x float>*
  %657 = load <4 x float>, <4 x float>* %656, align 4, !tbaa !22, !alias.scope !66
  %658 = bitcast float* %651 to <4 x float>*
  store <4 x float> %654, <4 x float>* %658, align 4, !tbaa !22, !alias.scope !69, !noalias !66
  %659 = getelementptr float, float* %651, i64 4
  %660 = bitcast float* %659 to <4 x float>*
  store <4 x float> %657, <4 x float>* %660, align 4, !tbaa !22, !alias.scope !69, !noalias !66
  %661 = or i64 %638, 16
  %662 = getelementptr float, float* %519, i64 %661
  %663 = getelementptr float, float* %520, i64 %661
  %664 = bitcast float* %663 to <4 x float>*
  %665 = load <4 x float>, <4 x float>* %664, align 4, !tbaa !22, !alias.scope !66
  %666 = getelementptr float, float* %663, i64 4
  %667 = bitcast float* %666 to <4 x float>*
  %668 = load <4 x float>, <4 x float>* %667, align 4, !tbaa !22, !alias.scope !66
  %669 = bitcast float* %662 to <4 x float>*
  store <4 x float> %665, <4 x float>* %669, align 4, !tbaa !22, !alias.scope !69, !noalias !66
  %670 = getelementptr float, float* %662, i64 4
  %671 = bitcast float* %670 to <4 x float>*
  store <4 x float> %668, <4 x float>* %671, align 4, !tbaa !22, !alias.scope !69, !noalias !66
  %672 = or i64 %638, 24
  %673 = getelementptr float, float* %519, i64 %672
  %674 = getelementptr float, float* %520, i64 %672
  %675 = bitcast float* %674 to <4 x float>*
  %676 = load <4 x float>, <4 x float>* %675, align 4, !tbaa !22, !alias.scope !66
  %677 = getelementptr float, float* %674, i64 4
  %678 = bitcast float* %677 to <4 x float>*
  %679 = load <4 x float>, <4 x float>* %678, align 4, !tbaa !22, !alias.scope !66
  %680 = bitcast float* %673 to <4 x float>*
  store <4 x float> %676, <4 x float>* %680, align 4, !tbaa !22, !alias.scope !69, !noalias !66
  %681 = getelementptr float, float* %673, i64 4
  %682 = bitcast float* %681 to <4 x float>*
  store <4 x float> %679, <4 x float>* %682, align 4, !tbaa !22, !alias.scope !69, !noalias !66
  %683 = add nuw i64 %638, 32
  %684 = add i64 %639, 4
  %685 = icmp eq i64 %684, %90
  br i1 %685, label %686, label %637, !llvm.loop !71

686:                                              ; preds = %637, %634
  %687 = phi i64 [ 0, %634 ], [ %683, %637 ]
  br i1 %91, label %704, label %688

688:                                              ; preds = %686, %688
  %689 = phi i64 [ %701, %688 ], [ %687, %686 ]
  %690 = phi i64 [ %702, %688 ], [ 0, %686 ]
  %691 = getelementptr float, float* %519, i64 %689
  %692 = getelementptr float, float* %520, i64 %689
  %693 = bitcast float* %692 to <4 x float>*
  %694 = load <4 x float>, <4 x float>* %693, align 4, !tbaa !22, !alias.scope !66
  %695 = getelementptr float, float* %692, i64 4
  %696 = bitcast float* %695 to <4 x float>*
  %697 = load <4 x float>, <4 x float>* %696, align 4, !tbaa !22, !alias.scope !66
  %698 = bitcast float* %691 to <4 x float>*
  store <4 x float> %694, <4 x float>* %698, align 4, !tbaa !22, !alias.scope !69, !noalias !66
  %699 = getelementptr float, float* %691, i64 4
  %700 = bitcast float* %699 to <4 x float>*
  store <4 x float> %697, <4 x float>* %700, align 4, !tbaa !22, !alias.scope !69, !noalias !66
  %701 = add nuw i64 %689, 8
  %702 = add i64 %690, 1
  %703 = icmp eq i64 %702, %88
  br i1 %703, label %704, label %688, !llvm.loop !72

704:                                              ; preds = %688, %686
  br i1 %92, label %762, label %705

705:                                              ; preds = %628, %627, %704
  %706 = phi i32 [ %24, %628 ], [ %24, %627 ], [ %87, %704 ]
  %707 = phi float* [ %519, %628 ], [ %519, %627 ], [ %635, %704 ]
  %708 = phi float* [ %520, %628 ], [ %520, %627 ], [ %636, %704 ]
  %709 = sub i32 %69, %706
  %710 = xor i32 %706, -1
  %711 = add i32 %70, %710
  %712 = and i32 %709, 7
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %725, label %714

714:                                              ; preds = %705, %714
  %715 = phi i32 [ %722, %714 ], [ %706, %705 ]
  %716 = phi float* [ %720, %714 ], [ %707, %705 ]
  %717 = phi float* [ %721, %714 ], [ %708, %705 ]
  %718 = phi i32 [ %723, %714 ], [ 0, %705 ]
  %719 = load float, float* %717, align 4, !tbaa !22
  store float %719, float* %716, align 4, !tbaa !22
  %720 = getelementptr inbounds float, float* %716, i64 1
  %721 = getelementptr inbounds float, float* %717, i64 1
  %722 = add nsw i32 %715, 1
  %723 = add i32 %718, 1
  %724 = icmp eq i32 %723, %712
  br i1 %724, label %725, label %714, !llvm.loop !73

725:                                              ; preds = %714, %705
  %726 = phi float* [ undef, %705 ], [ %720, %714 ]
  %727 = phi float* [ undef, %705 ], [ %721, %714 ]
  %728 = phi i32 [ %706, %705 ], [ %722, %714 ]
  %729 = phi float* [ %707, %705 ], [ %720, %714 ]
  %730 = phi float* [ %708, %705 ], [ %721, %714 ]
  %731 = icmp ult i32 %711, 7
  br i1 %731, label %762, label %732

732:                                              ; preds = %725, %732
  %733 = phi i32 [ %760, %732 ], [ %728, %725 ]
  %734 = phi float* [ %758, %732 ], [ %729, %725 ]
  %735 = phi float* [ %759, %732 ], [ %730, %725 ]
  %736 = load float, float* %735, align 4, !tbaa !22
  store float %736, float* %734, align 4, !tbaa !22
  %737 = getelementptr inbounds float, float* %734, i64 1
  %738 = getelementptr inbounds float, float* %735, i64 1
  %739 = load float, float* %738, align 4, !tbaa !22
  store float %739, float* %737, align 4, !tbaa !22
  %740 = getelementptr inbounds float, float* %734, i64 2
  %741 = getelementptr inbounds float, float* %735, i64 2
  %742 = load float, float* %741, align 4, !tbaa !22
  store float %742, float* %740, align 4, !tbaa !22
  %743 = getelementptr inbounds float, float* %734, i64 3
  %744 = getelementptr inbounds float, float* %735, i64 3
  %745 = load float, float* %744, align 4, !tbaa !22
  store float %745, float* %743, align 4, !tbaa !22
  %746 = getelementptr inbounds float, float* %734, i64 4
  %747 = getelementptr inbounds float, float* %735, i64 4
  %748 = load float, float* %747, align 4, !tbaa !22
  store float %748, float* %746, align 4, !tbaa !22
  %749 = getelementptr inbounds float, float* %734, i64 5
  %750 = getelementptr inbounds float, float* %735, i64 5
  %751 = load float, float* %750, align 4, !tbaa !22
  store float %751, float* %749, align 4, !tbaa !22
  %752 = getelementptr inbounds float, float* %734, i64 6
  %753 = getelementptr inbounds float, float* %735, i64 6
  %754 = load float, float* %753, align 4, !tbaa !22
  store float %754, float* %752, align 4, !tbaa !22
  %755 = getelementptr inbounds float, float* %734, i64 7
  %756 = getelementptr inbounds float, float* %735, i64 7
  %757 = load float, float* %756, align 4, !tbaa !22
  store float %757, float* %755, align 4, !tbaa !22
  %758 = getelementptr inbounds float, float* %734, i64 8
  %759 = getelementptr inbounds float, float* %735, i64 8
  %760 = add nsw i32 %733, 8
  %761 = icmp eq i32 %760, %27
  br i1 %761, label %762, label %732, !llvm.loop !74

762:                                              ; preds = %620, %767, %725, %732, %599, %704
  %763 = phi float* [ %636, %704 ], [ %531, %599 ], [ %727, %725 ], [ %759, %732 ], [ %622, %620 ], [ %794, %767 ]
  %764 = phi float* [ %635, %704 ], [ %530, %599 ], [ %726, %725 ], [ %758, %732 ], [ %621, %620 ], [ %793, %767 ]
  %765 = add nsw i32 %518, 1
  %766 = icmp eq i32 %765, %26
  br i1 %766, label %512, label %517, !llvm.loop !52

767:                                              ; preds = %620, %767
  %768 = phi i32 [ %795, %767 ], [ %623, %620 ]
  %769 = phi float* [ %793, %767 ], [ %624, %620 ]
  %770 = phi float* [ %794, %767 ], [ %625, %620 ]
  %771 = load float, float* %770, align 4, !tbaa !22
  store float %771, float* %769, align 4, !tbaa !22
  %772 = getelementptr inbounds float, float* %769, i64 1
  %773 = getelementptr inbounds float, float* %770, i64 1
  %774 = load float, float* %773, align 4, !tbaa !22
  store float %774, float* %772, align 4, !tbaa !22
  %775 = getelementptr inbounds float, float* %769, i64 2
  %776 = getelementptr inbounds float, float* %770, i64 2
  %777 = load float, float* %776, align 4, !tbaa !22
  store float %777, float* %775, align 4, !tbaa !22
  %778 = getelementptr inbounds float, float* %769, i64 3
  %779 = getelementptr inbounds float, float* %770, i64 3
  %780 = load float, float* %779, align 4, !tbaa !22
  store float %780, float* %778, align 4, !tbaa !22
  %781 = getelementptr inbounds float, float* %769, i64 4
  %782 = getelementptr inbounds float, float* %770, i64 4
  %783 = load float, float* %782, align 4, !tbaa !22
  store float %783, float* %781, align 4, !tbaa !22
  %784 = getelementptr inbounds float, float* %769, i64 5
  %785 = getelementptr inbounds float, float* %770, i64 5
  %786 = load float, float* %785, align 4, !tbaa !22
  store float %786, float* %784, align 4, !tbaa !22
  %787 = getelementptr inbounds float, float* %769, i64 6
  %788 = getelementptr inbounds float, float* %770, i64 6
  %789 = load float, float* %788, align 4, !tbaa !22
  store float %789, float* %787, align 4, !tbaa !22
  %790 = getelementptr inbounds float, float* %769, i64 7
  %791 = getelementptr inbounds float, float* %770, i64 7
  %792 = load float, float* %791, align 4, !tbaa !22
  store float %792, float* %790, align 4, !tbaa !22
  %793 = getelementptr inbounds float, float* %769, i64 8
  %794 = getelementptr inbounds float, float* %770, i64 8
  %795 = add nsw i32 %768, 8
  %796 = icmp eq i32 %795, %27
  br i1 %796, label %762, label %767, !llvm.loop !75

797:                                              ; preds = %35, %797
  %798 = phi i32 [ %800, %797 ], [ 0, %35 ]
  %799 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i32 %798)
  %800 = add nuw nsw i32 %798, 1
  %801 = icmp eq i32 %800, %7
  br i1 %801, label %807, label %797, !llvm.loop !56

802:                                              ; preds = %34, %802
  %803 = phi i32 [ %805, %802 ], [ 0, %34 ]
  %804 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i32 %803)
  %805 = add nuw nsw i32 %803, 1
  %806 = icmp eq i32 %805, %7
  br i1 %806, label %807, label %802, !llvm.loop !56

807:                                              ; preds = %810, %802, %797, %509, %8
  %808 = tail call i32 @putchar(i32 10)
  %809 = icmp eq i8* %17, null
  br i1 %809, label %816, label %815

810:                                              ; preds = %32, %810
  %811 = phi i32 [ %813, %810 ], [ 0, %32 ]
  %812 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i32 %811)
  %813 = add nuw nsw i32 %811, 1
  %814 = icmp eq i32 %813, %7
  br i1 %814, label %807, label %810, !llvm.loop !56

815:                                              ; preds = %807
  tail call void @free(i8* nonnull %17) #22
  br label %816

816:                                              ; preds = %815, %807
  ret i1 true
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local zeroext i1 @_Z11compareDataPKfS0_iiiif(float* nocapture readonly %0, float* nocapture readonly %1, i32 %2, i32 %3, i32 %4, i32 %5, float %6) local_unnamed_addr #14 {
  %8 = sub nsw i32 0, %5
  %9 = add i32 %5, %4
  %10 = add i32 %5, %3
  %11 = add i32 %5, %2
  %12 = icmp sle i32 %11, %8
  %13 = icmp sle i32 %9, %8
  %14 = icmp sle i32 %10, %8
  %15 = select i1 %13, i1 true, i1 %14
  %16 = select i1 %15, i1 true, i1 %12
  br i1 %16, label %118, label %17

17:                                               ; preds = %7
  %18 = shl i32 %5, 1
  %19 = add i32 %18, %2
  %20 = add i32 %19, -1
  %21 = zext i32 %20 to i64
  %22 = add nuw nsw i64 %21, 1
  %23 = add i32 %18, %3
  %24 = add i32 %23, -1
  %25 = and i32 %23, 7
  %26 = icmp eq i32 %25, 0
  %27 = icmp ult i32 %24, 7
  br label %28

28:                                               ; preds = %17, %108
  %29 = phi i1 [ %112, %108 ], [ true, %17 ]
  %30 = phi i32 [ %111, %108 ], [ %8, %17 ]
  %31 = phi float* [ %110, %108 ], [ %0, %17 ]
  %32 = phi float* [ %109, %108 ], [ %1, %17 ]
  %33 = icmp sgt i32 %30, -1
  %34 = icmp slt i32 %30, %4
  %35 = and i1 %34, %33
  br i1 %35, label %75, label %36

36:                                               ; preds = %28
  br i1 %26, label %47, label %37

37:                                               ; preds = %36, %37
  %38 = phi i32 [ %44, %37 ], [ %8, %36 ]
  %39 = phi float* [ %42, %37 ], [ %31, %36 ]
  %40 = phi float* [ %43, %37 ], [ %32, %36 ]
  %41 = phi i32 [ %45, %37 ], [ 0, %36 ]
  %42 = getelementptr float, float* %39, i64 %22
  %43 = getelementptr float, float* %40, i64 %22
  %44 = add nsw i32 %38, 1
  %45 = add i32 %41, 1
  %46 = icmp eq i32 %45, %25
  br i1 %46, label %47, label %37, !llvm.loop !76

47:                                               ; preds = %37, %36
  %48 = phi float* [ undef, %36 ], [ %42, %37 ]
  %49 = phi float* [ undef, %36 ], [ %43, %37 ]
  %50 = phi i32 [ %8, %36 ], [ %44, %37 ]
  %51 = phi float* [ %31, %36 ], [ %42, %37 ]
  %52 = phi float* [ %32, %36 ], [ %43, %37 ]
  br i1 %27, label %108, label %53

53:                                               ; preds = %47, %53
  %54 = phi i32 [ %73, %53 ], [ %50, %47 ]
  %55 = phi float* [ %71, %53 ], [ %51, %47 ]
  %56 = phi float* [ %72, %53 ], [ %52, %47 ]
  %57 = getelementptr float, float* %55, i64 %22
  %58 = getelementptr float, float* %56, i64 %22
  %59 = getelementptr float, float* %57, i64 %22
  %60 = getelementptr float, float* %58, i64 %22
  %61 = getelementptr float, float* %59, i64 %22
  %62 = getelementptr float, float* %60, i64 %22
  %63 = getelementptr float, float* %61, i64 %22
  %64 = getelementptr float, float* %62, i64 %22
  %65 = getelementptr float, float* %63, i64 %22
  %66 = getelementptr float, float* %64, i64 %22
  %67 = getelementptr float, float* %65, i64 %22
  %68 = getelementptr float, float* %66, i64 %22
  %69 = getelementptr float, float* %67, i64 %22
  %70 = getelementptr float, float* %68, i64 %22
  %71 = getelementptr float, float* %69, i64 %22
  %72 = getelementptr float, float* %70, i64 %22
  %73 = add nsw i32 %54, 8
  %74 = icmp eq i32 %73, %10
  br i1 %74, label %108, label %53, !llvm.loop !77

75:                                               ; preds = %28, %82
  %76 = phi i32 [ %85, %82 ], [ %8, %28 ]
  %77 = phi float* [ %83, %82 ], [ %31, %28 ]
  %78 = phi float* [ %84, %82 ], [ %32, %28 ]
  %79 = icmp sgt i32 %76, -1
  %80 = icmp slt i32 %76, %3
  %81 = select i1 %79, i1 %80, i1 false
  br i1 %81, label %87, label %82

82:                                               ; preds = %103, %75
  %83 = getelementptr float, float* %77, i64 %22
  %84 = getelementptr float, float* %78, i64 %22
  %85 = add i32 %76, 1
  %86 = icmp eq i32 %85, %10
  br i1 %86, label %108, label %75, !llvm.loop !77

87:                                               ; preds = %75, %103
  %88 = phi i32 [ %106, %103 ], [ %8, %75 ]
  %89 = phi float* [ %104, %103 ], [ %77, %75 ]
  %90 = phi float* [ %105, %103 ], [ %78, %75 ]
  %91 = icmp sgt i32 %88, -1
  %92 = icmp slt i32 %88, %2
  %93 = select i1 %91, i1 %92, i1 false
  br i1 %93, label %94, label %103

94:                                               ; preds = %87
  %95 = load float, float* %90, align 4, !tbaa !22
  %96 = load float, float* %89, align 4, !tbaa !22
  %97 = fsub contract float %95, %96
  %98 = tail call contract float @llvm.fabs.f32(float %97) #22
  %99 = fcmp contract une float %95, 0.000000e+00
  %100 = select i1 %99, float %95, float 1.000000e+00
  %101 = fdiv contract float %98, %100
  %102 = fcmp contract ogt float %101, %6
  br i1 %102, label %114, label %103

103:                                              ; preds = %94, %87
  %104 = getelementptr inbounds float, float* %89, i64 1
  %105 = getelementptr inbounds float, float* %90, i64 1
  %106 = add i32 %88, 1
  %107 = icmp eq i32 %106, %11
  br i1 %107, label %82, label %87, !llvm.loop !78

108:                                              ; preds = %47, %53, %82
  %109 = phi float* [ %84, %82 ], [ %49, %47 ], [ %72, %53 ]
  %110 = phi float* [ %83, %82 ], [ %48, %47 ], [ %71, %53 ]
  %111 = add i32 %30, 1
  %112 = icmp slt i32 %111, %9
  %113 = icmp eq i32 %111, %9
  br i1 %113, label %118, label %28, !llvm.loop !79

114:                                              ; preds = %94
  %115 = fpext float %96 to double
  %116 = fpext float %95 to double
  %117 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @.str.28, i64 0, i64 0), i32 %88, i32 %76, i32 %30, double %115, double %116)
  br label %118

118:                                              ; preds = %108, %7, %114
  %119 = phi i1 [ %29, %114 ], [ false, %7 ], [ %112, %108 ]
  %120 = xor i1 %119, true
  ret i1 %120
}

; Function Attrs: mustprogress norecurse noreturn uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #15 {
  %3 = load i8*, i8** %1, align 8, !tbaa !3
  %4 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i8* %3)
  %5 = icmp sgt i32 %0, 1
  br i1 %5, label %6, label %54

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
  %21 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %12) #25
  %22 = trunc i64 %21 to i32
  %23 = add i32 %22, -1
  %24 = icmp sgt i32 %23, %20
  %25 = shl i64 %14, 32
  %26 = ashr exact i64 %25, 32
  %27 = select i1 %24, i64 %26, i64 0
  %28 = getelementptr inbounds i8, i8* %12, i64 %27
  %29 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %28, i32 61) #25
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %28) #25
  br label %37

33:                                               ; preds = %19
  %34 = ptrtoint i8* %29 to i64
  %35 = ptrtoint i8* %28 to i64
  %36 = sub i64 %34, %35
  br label %37

37:                                               ; preds = %33, %31
  %38 = phi i64 [ %32, %31 ], [ %36, %33 ]
  %39 = trunc i64 %38 to i32
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = tail call i32 @strncasecmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i64 4) #25
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %37
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i8 [ %10, %44 ], [ 1, %41 ]
  %47 = add nuw nsw i64 %9, 1
  %48 = icmp eq i64 %47, %7
  br i1 %48, label %49, label %8, !llvm.loop !17

49:                                               ; preds = %45
  %50 = and i8 %46, 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @str.109, i64 0, i64 0))
  tail call void @_Z8showHelpiPPKc(i32 %0, i8** nonnull %1)
  br label %58

54:                                               ; preds = %2, %49
  %55 = tail call zeroext i1 @_Z7runTestiPPKc(i32 %0, i8** nonnull %1)
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  br label %58

58:                                               ; preds = %54, %52
  %59 = phi i32 [ 0, %52 ], [ %57, %54 ]
  tail call void @exit(i32 %59) #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z8showHelpiPPKc(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #4 {
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %80

4:                                                ; preds = %2
  %5 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !80
  %6 = getelementptr i8, i8* %5, i64 -24
  %7 = bitcast i8* %6 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %8
  %10 = getelementptr inbounds i8, i8* %9, i64 240
  %11 = bitcast i8* %10 to %"class.std::ctype"**
  %12 = load %"class.std::ctype"*, %"class.std::ctype"** %11, align 8, !tbaa !82
  %13 = icmp eq %"class.std::ctype"* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %12, i64 0, i32 8
  %17 = load i8, i8* %16, align 8, !tbaa !85
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %12, i64 0, i32 9, i64 10
  %21 = load i8, i8* %20, align 1, !tbaa !14
  br label %28

22:                                               ; preds = %15
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %12)
  %23 = bitcast %"class.std::ctype"* %12 to i8 (%"class.std::ctype"*, i8)***
  %24 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %23, align 8, !tbaa !80
  %25 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %24, i64 6
  %26 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %25, align 8
  %27 = tail call signext i8 %26(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %12, i8 signext 10)
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi i8 [ %21, %19 ], [ %27, %22 ]
  %30 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %29)
  %31 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %30)
  %32 = load i8*, i8** %1, align 8, !tbaa !3
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = bitcast %"class.std::basic_ostream"* %31 to i8**
  %36 = load i8*, i8** %35, align 8, !tbaa !80
  %37 = getelementptr i8, i8* %36, i64 -24
  %38 = bitcast i8* %37 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = bitcast %"class.std::basic_ostream"* %31 to i8*
  %41 = getelementptr inbounds i8, i8* %40, i64 %39
  %42 = bitcast i8* %41 to %"class.std::basic_ios"*
  %43 = getelementptr inbounds i8, i8* %41, i64 32
  %44 = bitcast i8* %43 to i32*
  %45 = load i32, i32* %44, align 8, !tbaa !87
  %46 = or i32 %45, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %42, i32 %46)
  br label %50

47:                                               ; preds = %28
  %48 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %32) #22
  %49 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %31, i8* nonnull %32, i64 %48)
  br label %50

50:                                               ; preds = %34, %47
  %51 = bitcast %"class.std::basic_ostream"* %31 to i8**
  %52 = bitcast %"class.std::basic_ostream"* %31 to i8*
  %53 = load i8*, i8** %51, align 8, !tbaa !80
  %54 = getelementptr i8, i8* %53, i64 -24
  %55 = bitcast i8* %54 to i64*
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i8, i8* %52, i64 %56
  %58 = getelementptr inbounds i8, i8* %57, i64 240
  %59 = bitcast i8* %58 to %"class.std::ctype"**
  %60 = load %"class.std::ctype"*, %"class.std::ctype"** %59, align 8, !tbaa !82
  %61 = icmp eq %"class.std::ctype"* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

63:                                               ; preds = %50
  %64 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %60, i64 0, i32 8
  %65 = load i8, i8* %64, align 8, !tbaa !85
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %60, i64 0, i32 9, i64 10
  %69 = load i8, i8* %68, align 1, !tbaa !14
  br label %76

70:                                               ; preds = %63
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %60)
  %71 = bitcast %"class.std::ctype"* %60 to i8 (%"class.std::ctype"*, i8)***
  %72 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %71, align 8, !tbaa !80
  %73 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %72, i64 6
  %74 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %73, align 8
  %75 = tail call signext i8 %74(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %60, i8 signext 10)
  br label %76

76:                                               ; preds = %67, %70
  %77 = phi i8 [ %69, %67 ], [ %75, %70 ]
  %78 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %31, i8 signext %77)
  %79 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %78)
  br label %80

80:                                               ; preds = %76, %2
  %81 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !80
  %82 = getelementptr i8, i8* %81, i64 -24
  %83 = bitcast i8* %82 to i64*
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %84
  %86 = getelementptr inbounds i8, i8* %85, i64 240
  %87 = bitcast i8* %86 to %"class.std::ctype"**
  %88 = load %"class.std::ctype"*, %"class.std::ctype"** %87, align 8, !tbaa !82
  %89 = icmp eq %"class.std::ctype"* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

91:                                               ; preds = %80
  %92 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %88, i64 0, i32 8
  %93 = load i8, i8* %92, align 8, !tbaa !85
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %88, i64 0, i32 9, i64 10
  %97 = load i8, i8* %96, align 1, !tbaa !14
  br label %104

98:                                               ; preds = %91
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %88)
  %99 = bitcast %"class.std::ctype"* %88 to i8 (%"class.std::ctype"*, i8)***
  %100 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %99, align 8, !tbaa !80
  %101 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %100, i64 6
  %102 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %101, align 8
  %103 = tail call signext i8 %102(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %88, i8 signext 10)
  br label %104

104:                                              ; preds = %95, %98
  %105 = phi i8 [ %97, %95 ], [ %103, %98 ]
  %106 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %105)
  %107 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %106)
  %108 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %107, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i64 7)
  %109 = bitcast %"class.std::basic_ostream"* %107 to i8**
  %110 = load i8*, i8** %109, align 8, !tbaa !80
  %111 = getelementptr i8, i8* %110, i64 -24
  %112 = bitcast i8* %111 to i64*
  %113 = load i64, i64* %112, align 8
  %114 = bitcast %"class.std::basic_ostream"* %107 to i8*
  %115 = getelementptr inbounds i8, i8* %114, i64 %113
  %116 = getelementptr inbounds i8, i8* %115, i64 240
  %117 = bitcast i8* %116 to %"class.std::ctype"**
  %118 = load %"class.std::ctype"*, %"class.std::ctype"** %117, align 8, !tbaa !82
  %119 = icmp eq %"class.std::ctype"* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %104
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

121:                                              ; preds = %104
  %122 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %118, i64 0, i32 8
  %123 = load i8, i8* %122, align 8, !tbaa !85
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %118, i64 0, i32 9, i64 10
  %127 = load i8, i8* %126, align 1, !tbaa !14
  br label %134

128:                                              ; preds = %121
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %118)
  %129 = bitcast %"class.std::ctype"* %118 to i8 (%"class.std::ctype"*, i8)***
  %130 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %129, align 8, !tbaa !80
  %131 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %130, i64 6
  %132 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %131, align 8
  %133 = tail call signext i8 %132(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %118, i8 signext 10)
  br label %134

134:                                              ; preds = %125, %128
  %135 = phi i8 [ %127, %125 ], [ %133, %128 ]
  %136 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %107, i8 signext %135)
  %137 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %136)
  %138 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !80
  %139 = getelementptr i8, i8* %138, i64 -24
  %140 = bitcast i8* %139 to i64*
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %141
  %143 = getelementptr inbounds i8, i8* %142, i64 24
  %144 = bitcast i8* %143 to i32*
  %145 = load i32, i32* %144, align 8, !tbaa !93
  %146 = and i32 %145, -177
  %147 = or i32 %146, 32
  store i32 %147, i32* %144, align 8, !tbaa !94
  %148 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i64 4)
  %149 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !80
  %150 = getelementptr i8, i8* %149, i64 -24
  %151 = bitcast i8* %150 to i64*
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %152
  %154 = getelementptr inbounds i8, i8* %153, i64 16
  %155 = bitcast i8* %154 to i64*
  store i64 20, i64* %155, align 8, !tbaa !95
  %156 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0), i64 17)
  %157 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i64 0, i64 0), i64 35)
  %158 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !80
  %159 = getelementptr i8, i8* %158, i64 -24
  %160 = bitcast i8* %159 to i64*
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %161
  %163 = getelementptr inbounds i8, i8* %162, i64 240
  %164 = bitcast i8* %163 to %"class.std::ctype"**
  %165 = load %"class.std::ctype"*, %"class.std::ctype"** %164, align 8, !tbaa !82
  %166 = icmp eq %"class.std::ctype"* %165, null
  br i1 %166, label %167, label %168

167:                                              ; preds = %134
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

168:                                              ; preds = %134
  %169 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %165, i64 0, i32 8
  %170 = load i8, i8* %169, align 8, !tbaa !85
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %165, i64 0, i32 9, i64 10
  %174 = load i8, i8* %173, align 1, !tbaa !14
  br label %181

175:                                              ; preds = %168
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %165)
  %176 = bitcast %"class.std::ctype"* %165 to i8 (%"class.std::ctype"*, i8)***
  %177 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %176, align 8, !tbaa !80
  %178 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %177, i64 6
  %179 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %178, align 8
  %180 = tail call signext i8 %179(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %165, i8 signext 10)
  br label %181

181:                                              ; preds = %172, %175
  %182 = phi i8 [ %174, %172 ], [ %180, %175 ]
  %183 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %182)
  %184 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %183)
  %185 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i64 4)
  %186 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !80
  %187 = getelementptr i8, i8* %186, i64 -24
  %188 = bitcast i8* %187 to i64*
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %189
  %191 = getelementptr inbounds i8, i8* %190, i64 16
  %192 = bitcast i8* %191 to i64*
  store i64 20, i64* %192, align 8, !tbaa !95
  %193 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0), i64 10)
  %194 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.37, i64 0, i64 0), i64 58)
  %195 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !80
  %196 = getelementptr i8, i8* %195, i64 -24
  %197 = bitcast i8* %196 to i64*
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %198
  %200 = getelementptr inbounds i8, i8* %199, i64 240
  %201 = bitcast i8* %200 to %"class.std::ctype"**
  %202 = load %"class.std::ctype"*, %"class.std::ctype"** %201, align 8, !tbaa !82
  %203 = icmp eq %"class.std::ctype"* %202, null
  br i1 %203, label %204, label %205

204:                                              ; preds = %181
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

205:                                              ; preds = %181
  %206 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %202, i64 0, i32 8
  %207 = load i8, i8* %206, align 8, !tbaa !85
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %202, i64 0, i32 9, i64 10
  %211 = load i8, i8* %210, align 1, !tbaa !14
  br label %218

212:                                              ; preds = %205
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %202)
  %213 = bitcast %"class.std::ctype"* %202 to i8 (%"class.std::ctype"*, i8)***
  %214 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %213, align 8, !tbaa !80
  %215 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %214, i64 6
  %216 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %215, align 8
  %217 = tail call signext i8 %216(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %202, i8 signext 10)
  br label %218

218:                                              ; preds = %209, %212
  %219 = phi i8 [ %211, %209 ], [ %217, %212 ]
  %220 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %219)
  %221 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %220)
  %222 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i64 4)
  %223 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !80
  %224 = getelementptr i8, i8* %223, i64 -24
  %225 = bitcast i8* %224 to i64*
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %226
  %228 = getelementptr inbounds i8, i8* %227, i64 16
  %229 = bitcast i8* %228 to i64*
  store i64 20, i64* %229, align 8, !tbaa !95
  %230 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0), i64 10)
  %231 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.39, i64 0, i64 0), i64 58)
  %232 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !80
  %233 = getelementptr i8, i8* %232, i64 -24
  %234 = bitcast i8* %233 to i64*
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %235
  %237 = getelementptr inbounds i8, i8* %236, i64 240
  %238 = bitcast i8* %237 to %"class.std::ctype"**
  %239 = load %"class.std::ctype"*, %"class.std::ctype"** %238, align 8, !tbaa !82
  %240 = icmp eq %"class.std::ctype"* %239, null
  br i1 %240, label %241, label %242

241:                                              ; preds = %218
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

242:                                              ; preds = %218
  %243 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %239, i64 0, i32 8
  %244 = load i8, i8* %243, align 8, !tbaa !85
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %242
  %247 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %239, i64 0, i32 9, i64 10
  %248 = load i8, i8* %247, align 1, !tbaa !14
  br label %255

249:                                              ; preds = %242
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %239)
  %250 = bitcast %"class.std::ctype"* %239 to i8 (%"class.std::ctype"*, i8)***
  %251 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %250, align 8, !tbaa !80
  %252 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %251, i64 6
  %253 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %252, align 8
  %254 = tail call signext i8 %253(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %239, i8 signext 10)
  br label %255

255:                                              ; preds = %246, %249
  %256 = phi i8 [ %248, %246 ], [ %254, %249 ]
  %257 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %256)
  %258 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %257)
  %259 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i64 4)
  %260 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !80
  %261 = getelementptr i8, i8* %260, i64 -24
  %262 = bitcast i8* %261 to i64*
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %263
  %265 = getelementptr inbounds i8, i8* %264, i64 16
  %266 = bitcast i8* %265 to i64*
  store i64 20, i64* %266, align 8, !tbaa !95
  %267 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0), i64 10)
  %268 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([59 x i8], [59 x i8]* @.str.41, i64 0, i64 0), i64 58)
  %269 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !80
  %270 = getelementptr i8, i8* %269, i64 -24
  %271 = bitcast i8* %270 to i64*
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %272
  %274 = getelementptr inbounds i8, i8* %273, i64 240
  %275 = bitcast i8* %274 to %"class.std::ctype"**
  %276 = load %"class.std::ctype"*, %"class.std::ctype"** %275, align 8, !tbaa !82
  %277 = icmp eq %"class.std::ctype"* %276, null
  br i1 %277, label %278, label %279

278:                                              ; preds = %255
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

279:                                              ; preds = %255
  %280 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %276, i64 0, i32 8
  %281 = load i8, i8* %280, align 8, !tbaa !85
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %286, label %283

283:                                              ; preds = %279
  %284 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %276, i64 0, i32 9, i64 10
  %285 = load i8, i8* %284, align 1, !tbaa !14
  br label %292

286:                                              ; preds = %279
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %276)
  %287 = bitcast %"class.std::ctype"* %276 to i8 (%"class.std::ctype"*, i8)***
  %288 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %287, align 8, !tbaa !80
  %289 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %288, i64 6
  %290 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %289, align 8
  %291 = tail call signext i8 %290(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %276, i8 signext 10)
  br label %292

292:                                              ; preds = %283, %286
  %293 = phi i8 [ %285, %283 ], [ %291, %286 ]
  %294 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %293)
  %295 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %294)
  %296 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i64 4)
  %297 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !80
  %298 = getelementptr i8, i8* %297, i64 -24
  %299 = bitcast i8* %298 to i64*
  %300 = load i64, i64* %299, align 8
  %301 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %300
  %302 = getelementptr inbounds i8, i8* %301, i64 16
  %303 = bitcast i8* %302 to i64*
  store i64 20, i64* %303, align 8, !tbaa !95
  %304 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i64 0, i64 0), i64 12)
  %305 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.43, i64 0, i64 0), i64 25)
  %306 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !80
  %307 = getelementptr i8, i8* %306, i64 -24
  %308 = bitcast i8* %307 to i64*
  %309 = load i64, i64* %308, align 8
  %310 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %309
  %311 = getelementptr inbounds i8, i8* %310, i64 240
  %312 = bitcast i8* %311 to %"class.std::ctype"**
  %313 = load %"class.std::ctype"*, %"class.std::ctype"** %312, align 8, !tbaa !82
  %314 = icmp eq %"class.std::ctype"* %313, null
  br i1 %314, label %315, label %316

315:                                              ; preds = %292
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

316:                                              ; preds = %292
  %317 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %313, i64 0, i32 8
  %318 = load i8, i8* %317, align 8, !tbaa !85
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %323, label %320

320:                                              ; preds = %316
  %321 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %313, i64 0, i32 9, i64 10
  %322 = load i8, i8* %321, align 1, !tbaa !14
  br label %329

323:                                              ; preds = %316
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %313)
  %324 = bitcast %"class.std::ctype"* %313 to i8 (%"class.std::ctype"*, i8)***
  %325 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %324, align 8, !tbaa !80
  %326 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %325, i64 6
  %327 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %326, align 8
  %328 = tail call signext i8 %327(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %313, i8 signext 10)
  br label %329

329:                                              ; preds = %320, %323
  %330 = phi i8 [ %322, %320 ], [ %328, %323 ]
  %331 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %330)
  %332 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %331)
  %333 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i64 4)
  %334 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !80
  %335 = getelementptr i8, i8* %334, i64 -24
  %336 = bitcast i8* %335 to i64*
  %337 = load i64, i64* %336, align 8
  %338 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %337
  %339 = getelementptr inbounds i8, i8* %338, i64 16
  %340 = bitcast i8* %339 to i64*
  store i64 20, i64* %340, align 8, !tbaa !95
  %341 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0), i64 15)
  %342 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.45, i64 0, i64 0), i64 27)
  %343 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !80
  %344 = getelementptr i8, i8* %343, i64 -24
  %345 = bitcast i8* %344 to i64*
  %346 = load i64, i64* %345, align 8
  %347 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %346
  %348 = getelementptr inbounds i8, i8* %347, i64 240
  %349 = bitcast i8* %348 to %"class.std::ctype"**
  %350 = load %"class.std::ctype"*, %"class.std::ctype"** %349, align 8, !tbaa !82
  %351 = icmp eq %"class.std::ctype"* %350, null
  br i1 %351, label %352, label %353

352:                                              ; preds = %329
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

353:                                              ; preds = %329
  %354 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %350, i64 0, i32 8
  %355 = load i8, i8* %354, align 8, !tbaa !85
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %360, label %357

357:                                              ; preds = %353
  %358 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %350, i64 0, i32 9, i64 10
  %359 = load i8, i8* %358, align 1, !tbaa !14
  br label %366

360:                                              ; preds = %353
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %350)
  %361 = bitcast %"class.std::ctype"* %350 to i8 (%"class.std::ctype"*, i8)***
  %362 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %361, align 8, !tbaa !80
  %363 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %362, i64 6
  %364 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %363, align 8
  %365 = tail call signext i8 %364(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %350, i8 signext 10)
  br label %366

366:                                              ; preds = %357, %360
  %367 = phi i8 [ %359, %357 ], [ %365, %360 ]
  %368 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %367)
  %369 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %368)
  %370 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i64 4)
  %371 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !80
  %372 = getelementptr i8, i8* %371, i64 -24
  %373 = bitcast i8* %372 to i64*
  %374 = load i64, i64* %373, align 8
  %375 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %374
  %376 = getelementptr inbounds i8, i8* %375, i64 16
  %377 = bitcast i8* %376 to i64*
  store i64 20, i64* %377, align 8, !tbaa !95
  %378 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0), i64 16)
  %379 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.47, i64 0, i64 0), i64 35)
  %380 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !80
  %381 = getelementptr i8, i8* %380, i64 -24
  %382 = bitcast i8* %381 to i64*
  %383 = load i64, i64* %382, align 8
  %384 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %383
  %385 = getelementptr inbounds i8, i8* %384, i64 240
  %386 = bitcast i8* %385 to %"class.std::ctype"**
  %387 = load %"class.std::ctype"*, %"class.std::ctype"** %386, align 8, !tbaa !82
  %388 = icmp eq %"class.std::ctype"* %387, null
  br i1 %388, label %389, label %390

389:                                              ; preds = %366
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

390:                                              ; preds = %366
  %391 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %387, i64 0, i32 8
  %392 = load i8, i8* %391, align 8, !tbaa !85
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %397, label %394

394:                                              ; preds = %390
  %395 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %387, i64 0, i32 9, i64 10
  %396 = load i8, i8* %395, align 1, !tbaa !14
  br label %403

397:                                              ; preds = %390
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %387)
  %398 = bitcast %"class.std::ctype"* %387 to i8 (%"class.std::ctype"*, i8)***
  %399 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %398, align 8, !tbaa !80
  %400 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %399, i64 6
  %401 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %400, align 8
  %402 = tail call signext i8 %401(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %387, i8 signext 10)
  br label %403

403:                                              ; preds = %394, %397
  %404 = phi i8 [ %396, %394 ], [ %402, %397 ]
  %405 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %404)
  %406 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %405)
  %407 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !80
  %408 = getelementptr i8, i8* %407, i64 -24
  %409 = bitcast i8* %408 to i64*
  %410 = load i64, i64* %409, align 8
  %411 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %410
  %412 = getelementptr inbounds i8, i8* %411, i64 240
  %413 = bitcast i8* %412 to %"class.std::ctype"**
  %414 = load %"class.std::ctype"*, %"class.std::ctype"** %413, align 8, !tbaa !82
  %415 = icmp eq %"class.std::ctype"* %414, null
  br i1 %415, label %416, label %417

416:                                              ; preds = %403
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

417:                                              ; preds = %403
  %418 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %414, i64 0, i32 8
  %419 = load i8, i8* %418, align 8, !tbaa !85
  %420 = icmp eq i8 %419, 0
  br i1 %420, label %424, label %421

421:                                              ; preds = %417
  %422 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %414, i64 0, i32 9, i64 10
  %423 = load i8, i8* %422, align 1, !tbaa !14
  br label %430

424:                                              ; preds = %417
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %414)
  %425 = bitcast %"class.std::ctype"* %414 to i8 (%"class.std::ctype"*, i8)***
  %426 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %425, align 8, !tbaa !80
  %427 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %426, i64 6
  %428 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %427, align 8
  %429 = tail call signext i8 %428(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %414, i8 signext 10)
  br label %430

430:                                              ; preds = %421, %424
  %431 = phi i8 [ %423, %421 ], [ %429, %424 ]
  %432 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %431)
  %433 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %432)
  %434 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i64 4)
  %435 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !80
  %436 = getelementptr i8, i8* %435, i64 -24
  %437 = bitcast i8* %436 to i64*
  %438 = load i64, i64* %437, align 8
  %439 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %438
  %440 = getelementptr inbounds i8, i8* %439, i64 16
  %441 = bitcast i8* %440 to i64*
  store i64 20, i64* %441, align 8, !tbaa !95
  %442 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i64 0, i64 0), i64 10)
  %443 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i64 0, i64 0), i64 23)
  %444 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !80
  %445 = getelementptr i8, i8* %444, i64 -24
  %446 = bitcast i8* %445 to i64*
  %447 = load i64, i64* %446, align 8
  %448 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %447
  %449 = getelementptr inbounds i8, i8* %448, i64 240
  %450 = bitcast i8* %449 to %"class.std::ctype"**
  %451 = load %"class.std::ctype"*, %"class.std::ctype"** %450, align 8, !tbaa !82
  %452 = icmp eq %"class.std::ctype"* %451, null
  br i1 %452, label %453, label %454

453:                                              ; preds = %430
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

454:                                              ; preds = %430
  %455 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %451, i64 0, i32 8
  %456 = load i8, i8* %455, align 8, !tbaa !85
  %457 = icmp eq i8 %456, 0
  br i1 %457, label %461, label %458

458:                                              ; preds = %454
  %459 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %451, i64 0, i32 9, i64 10
  %460 = load i8, i8* %459, align 1, !tbaa !14
  br label %467

461:                                              ; preds = %454
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %451)
  %462 = bitcast %"class.std::ctype"* %451 to i8 (%"class.std::ctype"*, i8)***
  %463 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %462, align 8, !tbaa !80
  %464 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %463, i64 6
  %465 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %464, align 8
  %466 = tail call signext i8 %465(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %451, i8 signext 10)
  br label %467

467:                                              ; preds = %458, %461
  %468 = phi i8 [ %460, %458 ], [ %466, %461 ]
  %469 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %468)
  %470 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %469)
  %471 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !80
  %472 = getelementptr i8, i8* %471, i64 -24
  %473 = bitcast i8* %472 to i64*
  %474 = load i64, i64* %473, align 8
  %475 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %474
  %476 = getelementptr inbounds i8, i8* %475, i64 240
  %477 = bitcast i8* %476 to %"class.std::ctype"**
  %478 = load %"class.std::ctype"*, %"class.std::ctype"** %477, align 8, !tbaa !82
  %479 = icmp eq %"class.std::ctype"* %478, null
  br i1 %479, label %480, label %481

480:                                              ; preds = %467
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

481:                                              ; preds = %467
  %482 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %478, i64 0, i32 8
  %483 = load i8, i8* %482, align 8, !tbaa !85
  %484 = icmp eq i8 %483, 0
  br i1 %484, label %488, label %485

485:                                              ; preds = %481
  %486 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %478, i64 0, i32 9, i64 10
  %487 = load i8, i8* %486, align 1, !tbaa !14
  br label %494

488:                                              ; preds = %481
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %478)
  %489 = bitcast %"class.std::ctype"* %478 to i8 (%"class.std::ctype"*, i8)***
  %490 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %489, align 8, !tbaa !80
  %491 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %490, i64 6
  %492 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %491, align 8
  %493 = tail call signext i8 %492(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %478, i8 signext 10)
  br label %494

494:                                              ; preds = %485, %488
  %495 = phi i8 [ %487, %485 ], [ %493, %488 ]
  %496 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %495)
  %497 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %496)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local zeroext i1 @_Z7runTestiPPKc(i32 %0, i8** %1) local_unnamed_addr #4 {
  %3 = alloca i64, align 8
  %4 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #22
  %5 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @str.110, i64 0, i64 0))
  %6 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @str.111, i64 0, i64 0))
  %7 = call zeroext i1 @_Z28getTargetDeviceGlobalMemSizePmiPPKc(i64* nonnull %3, i32 %0, i8** %1)
  %8 = load i64, i64* %3, align 8, !tbaa !13
  %9 = lshr i64 %8, 1
  store i64 %9, i64* %3, align 8, !tbaa !13
  %10 = uitofp i64 %9 to double
  %11 = fmul contract double %10, 1.250000e-01
  %12 = tail call contract double @pow(double %11, double 0x3FD5555555555555) #22
  %13 = tail call contract double @llvm.floor.f64(double %12)
  %14 = fptosi double %13 to i32
  %15 = sdiv i32 %14, 32
  %16 = shl nsw i32 %15, 5
  %17 = add nsw i32 %16, -8
  %18 = icmp slt i32 %14, 128
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([89 x i8], [89 x i8]* @.str.52, i64 0, i64 0), i32 %17, i32 96, i32 376)
  tail call void @exit(i32 1) #24
  unreachable

21:                                               ; preds = %2
  %22 = icmp slt i32 %17, 376
  %23 = select i1 %22, i32 %17, i32 376
  %24 = icmp sgt i32 %0, 1
  br i1 %24, label %25, label %1222

25:                                               ; preds = %21
  %26 = zext i32 %0 to i64
  br label %27

27:                                               ; preds = %64, %25
  %28 = phi i64 [ 1, %25 ], [ %66, %64 ]
  %29 = phi i8 [ 0, %25 ], [ %65, %64 ]
  %30 = getelementptr inbounds i8*, i8** %1, i64 %28
  %31 = load i8*, i8** %30, align 8, !tbaa !3
  br label %32

32:                                               ; preds = %32, %27
  %33 = phi i64 [ %37, %32 ], [ 0, %27 ]
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1, !tbaa !14
  %36 = icmp eq i8 %35, 45
  %37 = add nuw i64 %33, 1
  br i1 %36, label %32, label %38, !llvm.loop !15

38:                                               ; preds = %32
  %39 = trunc i64 %33 to i32
  %40 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %31) #25
  %41 = trunc i64 %40 to i32
  %42 = add i32 %41, -1
  %43 = icmp sgt i32 %42, %39
  %44 = shl i64 %33, 32
  %45 = ashr exact i64 %44, 32
  %46 = select i1 %43, i64 %45, i64 0
  %47 = getelementptr inbounds i8, i8* %31, i64 %46
  %48 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %47, i32 61) #25
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %47) #25
  br label %56

52:                                               ; preds = %38
  %53 = ptrtoint i8* %48 to i64
  %54 = ptrtoint i8* %47 to i64
  %55 = sub i64 %53, %54
  br label %56

56:                                               ; preds = %52, %50
  %57 = phi i64 [ %51, %50 ], [ %55, %52 ]
  %58 = trunc i64 %57 to i32
  %59 = icmp eq i32 %58, 6
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = tail call i32 @strncasecmp(i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), i64 6) #25
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60, %56
  br label %64

64:                                               ; preds = %63, %60
  %65 = phi i8 [ %29, %63 ], [ 1, %60 ]
  %66 = add nuw nsw i64 %28, 1
  %67 = icmp eq i64 %66, %26
  br i1 %67, label %68, label %27, !llvm.loop !17

68:                                               ; preds = %64
  %69 = and i8 %65, 1
  %70 = icmp eq i8 %69, 0
  %71 = icmp slt i32 %23, 248
  %72 = select i1 %71, i32 %17, i32 248
  %73 = select i1 %70, i32 %23, i32 %72
  br label %74

74:                                               ; preds = %111, %68
  %75 = phi i64 [ 1, %68 ], [ %113, %111 ]
  %76 = phi i8 [ 0, %68 ], [ %112, %111 ]
  %77 = getelementptr inbounds i8*, i8** %1, i64 %75
  %78 = load i8*, i8** %77, align 8, !tbaa !3
  br label %79

79:                                               ; preds = %79, %74
  %80 = phi i64 [ %84, %79 ], [ 0, %74 ]
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1, !tbaa !14
  %83 = icmp eq i8 %82, 45
  %84 = add nuw i64 %80, 1
  br i1 %83, label %79, label %85, !llvm.loop !15

85:                                               ; preds = %79
  %86 = trunc i64 %80 to i32
  %87 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %78) #25
  %88 = trunc i64 %87 to i32
  %89 = add i32 %88, -1
  %90 = icmp sgt i32 %89, %86
  %91 = shl i64 %80, 32
  %92 = ashr exact i64 %91, 32
  %93 = select i1 %90, i64 %92, i64 0
  %94 = getelementptr inbounds i8, i8* %78, i64 %93
  %95 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %94, i32 61) #25
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %85
  %98 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %94) #25
  br label %103

99:                                               ; preds = %85
  %100 = ptrtoint i8* %95 to i64
  %101 = ptrtoint i8* %94 to i64
  %102 = sub i64 %100, %101
  br label %103

103:                                              ; preds = %99, %97
  %104 = phi i64 [ %98, %97 ], [ %102, %99 ]
  %105 = trunc i64 %104 to i32
  %106 = icmp eq i32 %105, 4
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = tail call i32 @strncasecmp(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i64 4) #25
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %107, %103
  br label %111

111:                                              ; preds = %110, %107
  %112 = phi i8 [ %76, %110 ], [ 1, %107 ]
  %113 = add nuw nsw i64 %75, 1
  %114 = icmp eq i64 %113, %26
  br i1 %114, label %115, label %74, !llvm.loop !17

115:                                              ; preds = %111
  %116 = and i8 %112, 1
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %302, label %118

118:                                              ; preds = %115, %154
  %119 = phi i64 [ %157, %154 ], [ 1, %115 ]
  %120 = phi i8 [ %156, %154 ], [ 0, %115 ]
  %121 = phi i32 [ %155, %154 ], [ -1, %115 ]
  %122 = getelementptr inbounds i8*, i8** %1, i64 %119
  %123 = load i8*, i8** %122, align 8, !tbaa !3
  br label %124

124:                                              ; preds = %124, %118
  %125 = phi i64 [ %129, %124 ], [ 0, %118 ]
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8, i8* %126, align 1, !tbaa !14
  %128 = icmp eq i8 %127, 45
  %129 = add nuw i64 %125, 1
  br i1 %128, label %124, label %130, !llvm.loop !15

130:                                              ; preds = %124
  %131 = trunc i64 %125 to i32
  %132 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %123) #25
  %133 = trunc i64 %132 to i32
  %134 = add i32 %133, -1
  %135 = icmp sgt i32 %134, %131
  %136 = shl i64 %125, 32
  %137 = ashr exact i64 %136, 32
  %138 = select i1 %135, i64 %137, i64 0
  %139 = getelementptr inbounds i8, i8* %123, i64 %138
  %140 = tail call i32 @strncasecmp(i8* %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i64 4) #25
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %130
  %143 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %139) #25
  %144 = trunc i64 %143 to i32
  %145 = icmp sgt i32 %144, 4
  br i1 %145, label %146, label %154

146:                                              ; preds = %142
  %147 = getelementptr inbounds i8, i8* %139, i64 4
  %148 = load i8, i8* %147, align 1, !tbaa !14
  %149 = icmp eq i8 %148, 61
  %150 = select i1 %149, i64 5, i64 4
  %151 = getelementptr inbounds i8, i8* %139, i64 %150
  %152 = tail call i64 @strtol(i8* nocapture nonnull %151, i8** null, i32 10) #22
  %153 = trunc i64 %152 to i32
  br label %154

154:                                              ; preds = %146, %142, %130
  %155 = phi i32 [ %153, %146 ], [ 0, %142 ], [ %121, %130 ]
  %156 = phi i8 [ 1, %146 ], [ 1, %142 ], [ %120, %130 ]
  %157 = add nuw nsw i64 %119, 1
  %158 = icmp eq i64 %157, %26
  br i1 %158, label %159, label %118, !llvm.loop !18

159:                                              ; preds = %154
  %160 = and i8 %156, 1
  %161 = icmp ne i8 %160, 0
  %162 = icmp sgt i32 %155, 96
  %163 = select i1 %161, i1 %162, i1 false
  br i1 %163, label %164, label %210

164:                                              ; preds = %159, %200
  %165 = phi i64 [ %203, %200 ], [ 1, %159 ]
  %166 = phi i8 [ %202, %200 ], [ 0, %159 ]
  %167 = phi i32 [ %201, %200 ], [ -1, %159 ]
  %168 = getelementptr inbounds i8*, i8** %1, i64 %165
  %169 = load i8*, i8** %168, align 8, !tbaa !3
  br label %170

170:                                              ; preds = %170, %164
  %171 = phi i64 [ %175, %170 ], [ 0, %164 ]
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = load i8, i8* %172, align 1, !tbaa !14
  %174 = icmp eq i8 %173, 45
  %175 = add nuw i64 %171, 1
  br i1 %174, label %170, label %176, !llvm.loop !15

176:                                              ; preds = %170
  %177 = trunc i64 %171 to i32
  %178 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %169) #25
  %179 = trunc i64 %178 to i32
  %180 = add i32 %179, -1
  %181 = icmp sgt i32 %180, %177
  %182 = shl i64 %171, 32
  %183 = ashr exact i64 %182, 32
  %184 = select i1 %181, i64 %183, i64 0
  %185 = getelementptr inbounds i8, i8* %169, i64 %184
  %186 = tail call i32 @strncasecmp(i8* %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i64 4) #25
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %200

188:                                              ; preds = %176
  %189 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %185) #25
  %190 = trunc i64 %189 to i32
  %191 = icmp sgt i32 %190, 4
  br i1 %191, label %192, label %200

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %185, i64 4
  %194 = load i8, i8* %193, align 1, !tbaa !14
  %195 = icmp eq i8 %194, 61
  %196 = select i1 %195, i64 5, i64 4
  %197 = getelementptr inbounds i8, i8* %185, i64 %196
  %198 = tail call i64 @strtol(i8* nocapture nonnull %197, i8** null, i32 10) #22
  %199 = trunc i64 %198 to i32
  br label %200

200:                                              ; preds = %192, %188, %176
  %201 = phi i32 [ %199, %192 ], [ 0, %188 ], [ %167, %176 ]
  %202 = phi i8 [ 1, %192 ], [ 1, %188 ], [ %166, %176 ]
  %203 = add nuw nsw i64 %165, 1
  %204 = icmp eq i64 %203, %26
  br i1 %204, label %205, label %164, !llvm.loop !18

205:                                              ; preds = %200
  %206 = and i8 %202, 1
  %207 = icmp ne i8 %206, 0
  %208 = icmp sgt i32 %201, 376
  %209 = select i1 %207, i1 %208, i1 false
  br i1 %209, label %302, label %210

210:                                              ; preds = %159, %205
  br label %211

211:                                              ; preds = %210, %247
  %212 = phi i64 [ %250, %247 ], [ 1, %210 ]
  %213 = phi i8 [ %249, %247 ], [ 0, %210 ]
  %214 = phi i32 [ %248, %247 ], [ -1, %210 ]
  %215 = getelementptr inbounds i8*, i8** %1, i64 %212
  %216 = load i8*, i8** %215, align 8, !tbaa !3
  br label %217

217:                                              ; preds = %217, %211
  %218 = phi i64 [ %222, %217 ], [ 0, %211 ]
  %219 = getelementptr inbounds i8, i8* %216, i64 %218
  %220 = load i8, i8* %219, align 1, !tbaa !14
  %221 = icmp eq i8 %220, 45
  %222 = add nuw i64 %218, 1
  br i1 %221, label %217, label %223, !llvm.loop !15

223:                                              ; preds = %217
  %224 = trunc i64 %218 to i32
  %225 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %216) #25
  %226 = trunc i64 %225 to i32
  %227 = add i32 %226, -1
  %228 = icmp sgt i32 %227, %224
  %229 = shl i64 %218, 32
  %230 = ashr exact i64 %229, 32
  %231 = select i1 %228, i64 %230, i64 0
  %232 = getelementptr inbounds i8, i8* %216, i64 %231
  %233 = tail call i32 @strncasecmp(i8* %232, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i64 4) #25
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %247

235:                                              ; preds = %223
  %236 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %232) #25
  %237 = trunc i64 %236 to i32
  %238 = icmp sgt i32 %237, 4
  br i1 %238, label %239, label %247

239:                                              ; preds = %235
  %240 = getelementptr inbounds i8, i8* %232, i64 4
  %241 = load i8, i8* %240, align 1, !tbaa !14
  %242 = icmp eq i8 %241, 61
  %243 = select i1 %242, i64 5, i64 4
  %244 = getelementptr inbounds i8, i8* %232, i64 %243
  %245 = tail call i64 @strtol(i8* nocapture nonnull %244, i8** null, i32 10) #22
  %246 = trunc i64 %245 to i32
  br label %247

247:                                              ; preds = %239, %235, %223
  %248 = phi i32 [ %246, %239 ], [ 0, %235 ], [ %214, %223 ]
  %249 = phi i8 [ 1, %239 ], [ 1, %235 ], [ %213, %223 ]
  %250 = add nuw nsw i64 %212, 1
  %251 = icmp eq i64 %250, %26
  br i1 %251, label %252, label %211, !llvm.loop !18

252:                                              ; preds = %247
  %253 = and i8 %249, 1
  %254 = icmp ne i8 %253, 0
  %255 = icmp sgt i32 %248, 96
  %256 = select i1 %254, i1 %255, i1 false
  br i1 %256, label %257, label %302

257:                                              ; preds = %252, %293
  %258 = phi i64 [ %296, %293 ], [ 1, %252 ]
  %259 = phi i8 [ %295, %293 ], [ 0, %252 ]
  %260 = phi i32 [ %294, %293 ], [ -1, %252 ]
  %261 = getelementptr inbounds i8*, i8** %1, i64 %258
  %262 = load i8*, i8** %261, align 8, !tbaa !3
  br label %263

263:                                              ; preds = %263, %257
  %264 = phi i64 [ %268, %263 ], [ 0, %257 ]
  %265 = getelementptr inbounds i8, i8* %262, i64 %264
  %266 = load i8, i8* %265, align 1, !tbaa !14
  %267 = icmp eq i8 %266, 45
  %268 = add nuw i64 %264, 1
  br i1 %267, label %263, label %269, !llvm.loop !15

269:                                              ; preds = %263
  %270 = trunc i64 %264 to i32
  %271 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %262) #25
  %272 = trunc i64 %271 to i32
  %273 = add i32 %272, -1
  %274 = icmp sgt i32 %273, %270
  %275 = shl i64 %264, 32
  %276 = ashr exact i64 %275, 32
  %277 = select i1 %274, i64 %276, i64 0
  %278 = getelementptr inbounds i8, i8* %262, i64 %277
  %279 = tail call i32 @strncasecmp(i8* %278, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i64 4) #25
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %293

281:                                              ; preds = %269
  %282 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %278) #25
  %283 = trunc i64 %282 to i32
  %284 = icmp sgt i32 %283, 4
  br i1 %284, label %285, label %293

285:                                              ; preds = %281
  %286 = getelementptr inbounds i8, i8* %278, i64 4
  %287 = load i8, i8* %286, align 1, !tbaa !14
  %288 = icmp eq i8 %287, 61
  %289 = select i1 %288, i64 5, i64 4
  %290 = getelementptr inbounds i8, i8* %278, i64 %289
  %291 = tail call i64 @strtol(i8* nocapture nonnull %290, i8** null, i32 10) #22
  %292 = trunc i64 %291 to i32
  br label %293

293:                                              ; preds = %285, %281, %269
  %294 = phi i32 [ %292, %285 ], [ 0, %281 ], [ %260, %269 ]
  %295 = phi i8 [ 1, %285 ], [ 1, %281 ], [ %259, %269 ]
  %296 = add nuw nsw i64 %258, 1
  %297 = icmp eq i64 %296, %26
  br i1 %297, label %298, label %257, !llvm.loop !18

298:                                              ; preds = %293
  %299 = and i8 %295, 1
  %300 = icmp eq i8 %299, 0
  %301 = select i1 %300, i32 0, i32 %294
  br label %302

302:                                              ; preds = %115, %298, %252, %205
  %303 = phi i32 [ %73, %115 ], [ %301, %298 ], [ 96, %252 ], [ 376, %205 ]
  br label %304

304:                                              ; preds = %341, %302
  %305 = phi i64 [ 1, %302 ], [ %343, %341 ]
  %306 = phi i8 [ 0, %302 ], [ %342, %341 ]
  %307 = getelementptr inbounds i8*, i8** %1, i64 %305
  %308 = load i8*, i8** %307, align 8, !tbaa !3
  br label %309

309:                                              ; preds = %309, %304
  %310 = phi i64 [ %314, %309 ], [ 0, %304 ]
  %311 = getelementptr inbounds i8, i8* %308, i64 %310
  %312 = load i8, i8* %311, align 1, !tbaa !14
  %313 = icmp eq i8 %312, 45
  %314 = add nuw i64 %310, 1
  br i1 %313, label %309, label %315, !llvm.loop !15

315:                                              ; preds = %309
  %316 = trunc i64 %310 to i32
  %317 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %308) #25
  %318 = trunc i64 %317 to i32
  %319 = add i32 %318, -1
  %320 = icmp sgt i32 %319, %316
  %321 = shl i64 %310, 32
  %322 = ashr exact i64 %321, 32
  %323 = select i1 %320, i64 %322, i64 0
  %324 = getelementptr inbounds i8, i8* %308, i64 %323
  %325 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %324, i32 61) #25
  %326 = icmp eq i8* %325, null
  br i1 %326, label %327, label %329

327:                                              ; preds = %315
  %328 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %324) #25
  br label %333

329:                                              ; preds = %315
  %330 = ptrtoint i8* %325 to i64
  %331 = ptrtoint i8* %324 to i64
  %332 = sub i64 %330, %331
  br label %333

333:                                              ; preds = %329, %327
  %334 = phi i64 [ %328, %327 ], [ %332, %329 ]
  %335 = trunc i64 %334 to i32
  %336 = icmp eq i32 %335, 4
  br i1 %336, label %337, label %340

337:                                              ; preds = %333
  %338 = tail call i32 @strncasecmp(i8* %324, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i64 4) #25
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %341, label %340

340:                                              ; preds = %337, %333
  br label %341

341:                                              ; preds = %340, %337
  %342 = phi i8 [ %306, %340 ], [ 1, %337 ]
  %343 = add nuw nsw i64 %305, 1
  %344 = icmp eq i64 %343, %26
  br i1 %344, label %345, label %304, !llvm.loop !17

345:                                              ; preds = %341
  %346 = and i8 %342, 1
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %532, label %348

348:                                              ; preds = %345, %384
  %349 = phi i64 [ %387, %384 ], [ 1, %345 ]
  %350 = phi i8 [ %386, %384 ], [ 0, %345 ]
  %351 = phi i32 [ %385, %384 ], [ -1, %345 ]
  %352 = getelementptr inbounds i8*, i8** %1, i64 %349
  %353 = load i8*, i8** %352, align 8, !tbaa !3
  br label %354

354:                                              ; preds = %354, %348
  %355 = phi i64 [ %359, %354 ], [ 0, %348 ]
  %356 = getelementptr inbounds i8, i8* %353, i64 %355
  %357 = load i8, i8* %356, align 1, !tbaa !14
  %358 = icmp eq i8 %357, 45
  %359 = add nuw i64 %355, 1
  br i1 %358, label %354, label %360, !llvm.loop !15

360:                                              ; preds = %354
  %361 = trunc i64 %355 to i32
  %362 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %353) #25
  %363 = trunc i64 %362 to i32
  %364 = add i32 %363, -1
  %365 = icmp sgt i32 %364, %361
  %366 = shl i64 %355, 32
  %367 = ashr exact i64 %366, 32
  %368 = select i1 %365, i64 %367, i64 0
  %369 = getelementptr inbounds i8, i8* %353, i64 %368
  %370 = tail call i32 @strncasecmp(i8* %369, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i64 4) #25
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %384

372:                                              ; preds = %360
  %373 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %369) #25
  %374 = trunc i64 %373 to i32
  %375 = icmp sgt i32 %374, 4
  br i1 %375, label %376, label %384

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, i8* %369, i64 4
  %378 = load i8, i8* %377, align 1, !tbaa !14
  %379 = icmp eq i8 %378, 61
  %380 = select i1 %379, i64 5, i64 4
  %381 = getelementptr inbounds i8, i8* %369, i64 %380
  %382 = tail call i64 @strtol(i8* nocapture nonnull %381, i8** null, i32 10) #22
  %383 = trunc i64 %382 to i32
  br label %384

384:                                              ; preds = %376, %372, %360
  %385 = phi i32 [ %383, %376 ], [ 0, %372 ], [ %351, %360 ]
  %386 = phi i8 [ 1, %376 ], [ 1, %372 ], [ %350, %360 ]
  %387 = add nuw nsw i64 %349, 1
  %388 = icmp eq i64 %387, %26
  br i1 %388, label %389, label %348, !llvm.loop !18

389:                                              ; preds = %384
  %390 = and i8 %386, 1
  %391 = icmp ne i8 %390, 0
  %392 = icmp sgt i32 %385, 96
  %393 = select i1 %391, i1 %392, i1 false
  br i1 %393, label %394, label %440

394:                                              ; preds = %389, %430
  %395 = phi i64 [ %433, %430 ], [ 1, %389 ]
  %396 = phi i8 [ %432, %430 ], [ 0, %389 ]
  %397 = phi i32 [ %431, %430 ], [ -1, %389 ]
  %398 = getelementptr inbounds i8*, i8** %1, i64 %395
  %399 = load i8*, i8** %398, align 8, !tbaa !3
  br label %400

400:                                              ; preds = %400, %394
  %401 = phi i64 [ %405, %400 ], [ 0, %394 ]
  %402 = getelementptr inbounds i8, i8* %399, i64 %401
  %403 = load i8, i8* %402, align 1, !tbaa !14
  %404 = icmp eq i8 %403, 45
  %405 = add nuw i64 %401, 1
  br i1 %404, label %400, label %406, !llvm.loop !15

406:                                              ; preds = %400
  %407 = trunc i64 %401 to i32
  %408 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %399) #25
  %409 = trunc i64 %408 to i32
  %410 = add i32 %409, -1
  %411 = icmp sgt i32 %410, %407
  %412 = shl i64 %401, 32
  %413 = ashr exact i64 %412, 32
  %414 = select i1 %411, i64 %413, i64 0
  %415 = getelementptr inbounds i8, i8* %399, i64 %414
  %416 = tail call i32 @strncasecmp(i8* %415, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i64 4) #25
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %430

418:                                              ; preds = %406
  %419 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %415) #25
  %420 = trunc i64 %419 to i32
  %421 = icmp sgt i32 %420, 4
  br i1 %421, label %422, label %430

422:                                              ; preds = %418
  %423 = getelementptr inbounds i8, i8* %415, i64 4
  %424 = load i8, i8* %423, align 1, !tbaa !14
  %425 = icmp eq i8 %424, 61
  %426 = select i1 %425, i64 5, i64 4
  %427 = getelementptr inbounds i8, i8* %415, i64 %426
  %428 = tail call i64 @strtol(i8* nocapture nonnull %427, i8** null, i32 10) #22
  %429 = trunc i64 %428 to i32
  br label %430

430:                                              ; preds = %422, %418, %406
  %431 = phi i32 [ %429, %422 ], [ 0, %418 ], [ %397, %406 ]
  %432 = phi i8 [ 1, %422 ], [ 1, %418 ], [ %396, %406 ]
  %433 = add nuw nsw i64 %395, 1
  %434 = icmp eq i64 %433, %26
  br i1 %434, label %435, label %394, !llvm.loop !18

435:                                              ; preds = %430
  %436 = and i8 %432, 1
  %437 = icmp ne i8 %436, 0
  %438 = icmp sgt i32 %431, 376
  %439 = select i1 %437, i1 %438, i1 false
  br i1 %439, label %532, label %440

440:                                              ; preds = %435, %389
  br label %441

441:                                              ; preds = %440, %477
  %442 = phi i64 [ %480, %477 ], [ 1, %440 ]
  %443 = phi i8 [ %479, %477 ], [ 0, %440 ]
  %444 = phi i32 [ %478, %477 ], [ -1, %440 ]
  %445 = getelementptr inbounds i8*, i8** %1, i64 %442
  %446 = load i8*, i8** %445, align 8, !tbaa !3
  br label %447

447:                                              ; preds = %447, %441
  %448 = phi i64 [ %452, %447 ], [ 0, %441 ]
  %449 = getelementptr inbounds i8, i8* %446, i64 %448
  %450 = load i8, i8* %449, align 1, !tbaa !14
  %451 = icmp eq i8 %450, 45
  %452 = add nuw i64 %448, 1
  br i1 %451, label %447, label %453, !llvm.loop !15

453:                                              ; preds = %447
  %454 = trunc i64 %448 to i32
  %455 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %446) #25
  %456 = trunc i64 %455 to i32
  %457 = add i32 %456, -1
  %458 = icmp sgt i32 %457, %454
  %459 = shl i64 %448, 32
  %460 = ashr exact i64 %459, 32
  %461 = select i1 %458, i64 %460, i64 0
  %462 = getelementptr inbounds i8, i8* %446, i64 %461
  %463 = tail call i32 @strncasecmp(i8* %462, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i64 4) #25
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %465, label %477

465:                                              ; preds = %453
  %466 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %462) #25
  %467 = trunc i64 %466 to i32
  %468 = icmp sgt i32 %467, 4
  br i1 %468, label %469, label %477

469:                                              ; preds = %465
  %470 = getelementptr inbounds i8, i8* %462, i64 4
  %471 = load i8, i8* %470, align 1, !tbaa !14
  %472 = icmp eq i8 %471, 61
  %473 = select i1 %472, i64 5, i64 4
  %474 = getelementptr inbounds i8, i8* %462, i64 %473
  %475 = tail call i64 @strtol(i8* nocapture nonnull %474, i8** null, i32 10) #22
  %476 = trunc i64 %475 to i32
  br label %477

477:                                              ; preds = %469, %465, %453
  %478 = phi i32 [ %476, %469 ], [ 0, %465 ], [ %444, %453 ]
  %479 = phi i8 [ 1, %469 ], [ 1, %465 ], [ %443, %453 ]
  %480 = add nuw nsw i64 %442, 1
  %481 = icmp eq i64 %480, %26
  br i1 %481, label %482, label %441, !llvm.loop !18

482:                                              ; preds = %477
  %483 = and i8 %479, 1
  %484 = icmp ne i8 %483, 0
  %485 = icmp sgt i32 %478, 96
  %486 = select i1 %484, i1 %485, i1 false
  br i1 %486, label %487, label %532

487:                                              ; preds = %482, %523
  %488 = phi i64 [ %526, %523 ], [ 1, %482 ]
  %489 = phi i8 [ %525, %523 ], [ 0, %482 ]
  %490 = phi i32 [ %524, %523 ], [ -1, %482 ]
  %491 = getelementptr inbounds i8*, i8** %1, i64 %488
  %492 = load i8*, i8** %491, align 8, !tbaa !3
  br label %493

493:                                              ; preds = %493, %487
  %494 = phi i64 [ %498, %493 ], [ 0, %487 ]
  %495 = getelementptr inbounds i8, i8* %492, i64 %494
  %496 = load i8, i8* %495, align 1, !tbaa !14
  %497 = icmp eq i8 %496, 45
  %498 = add nuw i64 %494, 1
  br i1 %497, label %493, label %499, !llvm.loop !15

499:                                              ; preds = %493
  %500 = trunc i64 %494 to i32
  %501 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %492) #25
  %502 = trunc i64 %501 to i32
  %503 = add i32 %502, -1
  %504 = icmp sgt i32 %503, %500
  %505 = shl i64 %494, 32
  %506 = ashr exact i64 %505, 32
  %507 = select i1 %504, i64 %506, i64 0
  %508 = getelementptr inbounds i8, i8* %492, i64 %507
  %509 = tail call i32 @strncasecmp(i8* %508, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i64 4) #25
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %511, label %523

511:                                              ; preds = %499
  %512 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %508) #25
  %513 = trunc i64 %512 to i32
  %514 = icmp sgt i32 %513, 4
  br i1 %514, label %515, label %523

515:                                              ; preds = %511
  %516 = getelementptr inbounds i8, i8* %508, i64 4
  %517 = load i8, i8* %516, align 1, !tbaa !14
  %518 = icmp eq i8 %517, 61
  %519 = select i1 %518, i64 5, i64 4
  %520 = getelementptr inbounds i8, i8* %508, i64 %519
  %521 = tail call i64 @strtol(i8* nocapture nonnull %520, i8** null, i32 10) #22
  %522 = trunc i64 %521 to i32
  br label %523

523:                                              ; preds = %515, %511, %499
  %524 = phi i32 [ %522, %515 ], [ 0, %511 ], [ %490, %499 ]
  %525 = phi i8 [ 1, %515 ], [ 1, %511 ], [ %489, %499 ]
  %526 = add nuw nsw i64 %488, 1
  %527 = icmp eq i64 %526, %26
  br i1 %527, label %528, label %487, !llvm.loop !18

528:                                              ; preds = %523
  %529 = and i8 %525, 1
  %530 = icmp eq i8 %529, 0
  %531 = select i1 %530, i32 0, i32 %524
  br label %532

532:                                              ; preds = %345, %528, %482, %435
  %533 = phi i32 [ %73, %345 ], [ 376, %435 ], [ %531, %528 ], [ 96, %482 ]
  br label %534

534:                                              ; preds = %571, %532
  %535 = phi i64 [ 1, %532 ], [ %573, %571 ]
  %536 = phi i8 [ 0, %532 ], [ %572, %571 ]
  %537 = getelementptr inbounds i8*, i8** %1, i64 %535
  %538 = load i8*, i8** %537, align 8, !tbaa !3
  br label %539

539:                                              ; preds = %539, %534
  %540 = phi i64 [ %544, %539 ], [ 0, %534 ]
  %541 = getelementptr inbounds i8, i8* %538, i64 %540
  %542 = load i8, i8* %541, align 1, !tbaa !14
  %543 = icmp eq i8 %542, 45
  %544 = add nuw i64 %540, 1
  br i1 %543, label %539, label %545, !llvm.loop !15

545:                                              ; preds = %539
  %546 = trunc i64 %540 to i32
  %547 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %538) #25
  %548 = trunc i64 %547 to i32
  %549 = add i32 %548, -1
  %550 = icmp sgt i32 %549, %546
  %551 = shl i64 %540, 32
  %552 = ashr exact i64 %551, 32
  %553 = select i1 %550, i64 %552, i64 0
  %554 = getelementptr inbounds i8, i8* %538, i64 %553
  %555 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %554, i32 61) #25
  %556 = icmp eq i8* %555, null
  br i1 %556, label %557, label %559

557:                                              ; preds = %545
  %558 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %554) #25
  br label %563

559:                                              ; preds = %545
  %560 = ptrtoint i8* %555 to i64
  %561 = ptrtoint i8* %554 to i64
  %562 = sub i64 %560, %561
  br label %563

563:                                              ; preds = %559, %557
  %564 = phi i64 [ %558, %557 ], [ %562, %559 ]
  %565 = trunc i64 %564 to i32
  %566 = icmp eq i32 %565, 4
  br i1 %566, label %567, label %570

567:                                              ; preds = %563
  %568 = tail call i32 @strncasecmp(i8* %554, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0), i64 4) #25
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %571, label %570

570:                                              ; preds = %567, %563
  br label %571

571:                                              ; preds = %570, %567
  %572 = phi i8 [ %536, %570 ], [ 1, %567 ]
  %573 = add nuw nsw i64 %535, 1
  %574 = icmp eq i64 %573, %26
  br i1 %574, label %575, label %534, !llvm.loop !17

575:                                              ; preds = %571
  %576 = and i8 %572, 1
  %577 = icmp eq i8 %576, 0
  br i1 %577, label %762, label %578

578:                                              ; preds = %575, %614
  %579 = phi i64 [ %617, %614 ], [ 1, %575 ]
  %580 = phi i8 [ %616, %614 ], [ 0, %575 ]
  %581 = phi i32 [ %615, %614 ], [ -1, %575 ]
  %582 = getelementptr inbounds i8*, i8** %1, i64 %579
  %583 = load i8*, i8** %582, align 8, !tbaa !3
  br label %584

584:                                              ; preds = %584, %578
  %585 = phi i64 [ %589, %584 ], [ 0, %578 ]
  %586 = getelementptr inbounds i8, i8* %583, i64 %585
  %587 = load i8, i8* %586, align 1, !tbaa !14
  %588 = icmp eq i8 %587, 45
  %589 = add nuw i64 %585, 1
  br i1 %588, label %584, label %590, !llvm.loop !15

590:                                              ; preds = %584
  %591 = trunc i64 %585 to i32
  %592 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %583) #25
  %593 = trunc i64 %592 to i32
  %594 = add i32 %593, -1
  %595 = icmp sgt i32 %594, %591
  %596 = shl i64 %585, 32
  %597 = ashr exact i64 %596, 32
  %598 = select i1 %595, i64 %597, i64 0
  %599 = getelementptr inbounds i8, i8* %583, i64 %598
  %600 = tail call i32 @strncasecmp(i8* %599, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0), i64 4) #25
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %602, label %614

602:                                              ; preds = %590
  %603 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %599) #25
  %604 = trunc i64 %603 to i32
  %605 = icmp sgt i32 %604, 4
  br i1 %605, label %606, label %614

606:                                              ; preds = %602
  %607 = getelementptr inbounds i8, i8* %599, i64 4
  %608 = load i8, i8* %607, align 1, !tbaa !14
  %609 = icmp eq i8 %608, 61
  %610 = select i1 %609, i64 5, i64 4
  %611 = getelementptr inbounds i8, i8* %599, i64 %610
  %612 = tail call i64 @strtol(i8* nocapture nonnull %611, i8** null, i32 10) #22
  %613 = trunc i64 %612 to i32
  br label %614

614:                                              ; preds = %606, %602, %590
  %615 = phi i32 [ %613, %606 ], [ 0, %602 ], [ %581, %590 ]
  %616 = phi i8 [ 1, %606 ], [ 1, %602 ], [ %580, %590 ]
  %617 = add nuw nsw i64 %579, 1
  %618 = icmp eq i64 %617, %26
  br i1 %618, label %619, label %578, !llvm.loop !18

619:                                              ; preds = %614
  %620 = and i8 %616, 1
  %621 = icmp ne i8 %620, 0
  %622 = icmp sgt i32 %615, 96
  %623 = select i1 %621, i1 %622, i1 false
  br i1 %623, label %624, label %670

624:                                              ; preds = %619, %660
  %625 = phi i64 [ %663, %660 ], [ 1, %619 ]
  %626 = phi i8 [ %662, %660 ], [ 0, %619 ]
  %627 = phi i32 [ %661, %660 ], [ -1, %619 ]
  %628 = getelementptr inbounds i8*, i8** %1, i64 %625
  %629 = load i8*, i8** %628, align 8, !tbaa !3
  br label %630

630:                                              ; preds = %630, %624
  %631 = phi i64 [ %635, %630 ], [ 0, %624 ]
  %632 = getelementptr inbounds i8, i8* %629, i64 %631
  %633 = load i8, i8* %632, align 1, !tbaa !14
  %634 = icmp eq i8 %633, 45
  %635 = add nuw i64 %631, 1
  br i1 %634, label %630, label %636, !llvm.loop !15

636:                                              ; preds = %630
  %637 = trunc i64 %631 to i32
  %638 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %629) #25
  %639 = trunc i64 %638 to i32
  %640 = add i32 %639, -1
  %641 = icmp sgt i32 %640, %637
  %642 = shl i64 %631, 32
  %643 = ashr exact i64 %642, 32
  %644 = select i1 %641, i64 %643, i64 0
  %645 = getelementptr inbounds i8, i8* %629, i64 %644
  %646 = tail call i32 @strncasecmp(i8* %645, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0), i64 4) #25
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %648, label %660

648:                                              ; preds = %636
  %649 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %645) #25
  %650 = trunc i64 %649 to i32
  %651 = icmp sgt i32 %650, 4
  br i1 %651, label %652, label %660

652:                                              ; preds = %648
  %653 = getelementptr inbounds i8, i8* %645, i64 4
  %654 = load i8, i8* %653, align 1, !tbaa !14
  %655 = icmp eq i8 %654, 61
  %656 = select i1 %655, i64 5, i64 4
  %657 = getelementptr inbounds i8, i8* %645, i64 %656
  %658 = tail call i64 @strtol(i8* nocapture nonnull %657, i8** null, i32 10) #22
  %659 = trunc i64 %658 to i32
  br label %660

660:                                              ; preds = %652, %648, %636
  %661 = phi i32 [ %659, %652 ], [ 0, %648 ], [ %627, %636 ]
  %662 = phi i8 [ 1, %652 ], [ 1, %648 ], [ %626, %636 ]
  %663 = add nuw nsw i64 %625, 1
  %664 = icmp eq i64 %663, %26
  br i1 %664, label %665, label %624, !llvm.loop !18

665:                                              ; preds = %660
  %666 = and i8 %662, 1
  %667 = icmp ne i8 %666, 0
  %668 = icmp sgt i32 %661, 376
  %669 = select i1 %667, i1 %668, i1 false
  br i1 %669, label %762, label %670

670:                                              ; preds = %665, %619
  br label %671

671:                                              ; preds = %670, %707
  %672 = phi i64 [ %710, %707 ], [ 1, %670 ]
  %673 = phi i8 [ %709, %707 ], [ 0, %670 ]
  %674 = phi i32 [ %708, %707 ], [ -1, %670 ]
  %675 = getelementptr inbounds i8*, i8** %1, i64 %672
  %676 = load i8*, i8** %675, align 8, !tbaa !3
  br label %677

677:                                              ; preds = %677, %671
  %678 = phi i64 [ %682, %677 ], [ 0, %671 ]
  %679 = getelementptr inbounds i8, i8* %676, i64 %678
  %680 = load i8, i8* %679, align 1, !tbaa !14
  %681 = icmp eq i8 %680, 45
  %682 = add nuw i64 %678, 1
  br i1 %681, label %677, label %683, !llvm.loop !15

683:                                              ; preds = %677
  %684 = trunc i64 %678 to i32
  %685 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %676) #25
  %686 = trunc i64 %685 to i32
  %687 = add i32 %686, -1
  %688 = icmp sgt i32 %687, %684
  %689 = shl i64 %678, 32
  %690 = ashr exact i64 %689, 32
  %691 = select i1 %688, i64 %690, i64 0
  %692 = getelementptr inbounds i8, i8* %676, i64 %691
  %693 = tail call i32 @strncasecmp(i8* %692, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0), i64 4) #25
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %695, label %707

695:                                              ; preds = %683
  %696 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %692) #25
  %697 = trunc i64 %696 to i32
  %698 = icmp sgt i32 %697, 4
  br i1 %698, label %699, label %707

699:                                              ; preds = %695
  %700 = getelementptr inbounds i8, i8* %692, i64 4
  %701 = load i8, i8* %700, align 1, !tbaa !14
  %702 = icmp eq i8 %701, 61
  %703 = select i1 %702, i64 5, i64 4
  %704 = getelementptr inbounds i8, i8* %692, i64 %703
  %705 = tail call i64 @strtol(i8* nocapture nonnull %704, i8** null, i32 10) #22
  %706 = trunc i64 %705 to i32
  br label %707

707:                                              ; preds = %699, %695, %683
  %708 = phi i32 [ %706, %699 ], [ 0, %695 ], [ %674, %683 ]
  %709 = phi i8 [ 1, %699 ], [ 1, %695 ], [ %673, %683 ]
  %710 = add nuw nsw i64 %672, 1
  %711 = icmp eq i64 %710, %26
  br i1 %711, label %712, label %671, !llvm.loop !18

712:                                              ; preds = %707
  %713 = and i8 %709, 1
  %714 = icmp ne i8 %713, 0
  %715 = icmp sgt i32 %708, 96
  %716 = select i1 %714, i1 %715, i1 false
  br i1 %716, label %717, label %762

717:                                              ; preds = %712, %753
  %718 = phi i64 [ %756, %753 ], [ 1, %712 ]
  %719 = phi i8 [ %755, %753 ], [ 0, %712 ]
  %720 = phi i32 [ %754, %753 ], [ -1, %712 ]
  %721 = getelementptr inbounds i8*, i8** %1, i64 %718
  %722 = load i8*, i8** %721, align 8, !tbaa !3
  br label %723

723:                                              ; preds = %723, %717
  %724 = phi i64 [ %728, %723 ], [ 0, %717 ]
  %725 = getelementptr inbounds i8, i8* %722, i64 %724
  %726 = load i8, i8* %725, align 1, !tbaa !14
  %727 = icmp eq i8 %726, 45
  %728 = add nuw i64 %724, 1
  br i1 %727, label %723, label %729, !llvm.loop !15

729:                                              ; preds = %723
  %730 = trunc i64 %724 to i32
  %731 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %722) #25
  %732 = trunc i64 %731 to i32
  %733 = add i32 %732, -1
  %734 = icmp sgt i32 %733, %730
  %735 = shl i64 %724, 32
  %736 = ashr exact i64 %735, 32
  %737 = select i1 %734, i64 %736, i64 0
  %738 = getelementptr inbounds i8, i8* %722, i64 %737
  %739 = tail call i32 @strncasecmp(i8* %738, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0), i64 4) #25
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %741, label %753

741:                                              ; preds = %729
  %742 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %738) #25
  %743 = trunc i64 %742 to i32
  %744 = icmp sgt i32 %743, 4
  br i1 %744, label %745, label %753

745:                                              ; preds = %741
  %746 = getelementptr inbounds i8, i8* %738, i64 4
  %747 = load i8, i8* %746, align 1, !tbaa !14
  %748 = icmp eq i8 %747, 61
  %749 = select i1 %748, i64 5, i64 4
  %750 = getelementptr inbounds i8, i8* %738, i64 %749
  %751 = tail call i64 @strtol(i8* nocapture nonnull %750, i8** null, i32 10) #22
  %752 = trunc i64 %751 to i32
  br label %753

753:                                              ; preds = %745, %741, %729
  %754 = phi i32 [ %752, %745 ], [ 0, %741 ], [ %720, %729 ]
  %755 = phi i8 [ 1, %745 ], [ 1, %741 ], [ %719, %729 ]
  %756 = add nuw nsw i64 %718, 1
  %757 = icmp eq i64 %756, %26
  br i1 %757, label %758, label %717, !llvm.loop !18

758:                                              ; preds = %753
  %759 = and i8 %755, 1
  %760 = icmp eq i8 %759, 0
  %761 = select i1 %760, i32 0, i32 %754
  br label %762

762:                                              ; preds = %575, %758, %712, %665
  %763 = phi i32 [ %73, %575 ], [ 376, %665 ], [ %761, %758 ], [ 96, %712 ]
  br label %764

764:                                              ; preds = %801, %762
  %765 = phi i64 [ 1, %762 ], [ %803, %801 ]
  %766 = phi i8 [ 0, %762 ], [ %802, %801 ]
  %767 = getelementptr inbounds i8*, i8** %1, i64 %765
  %768 = load i8*, i8** %767, align 8, !tbaa !3
  br label %769

769:                                              ; preds = %769, %764
  %770 = phi i64 [ %774, %769 ], [ 0, %764 ]
  %771 = getelementptr inbounds i8, i8* %768, i64 %770
  %772 = load i8, i8* %771, align 1, !tbaa !14
  %773 = icmp eq i8 %772, 45
  %774 = add nuw i64 %770, 1
  br i1 %773, label %769, label %775, !llvm.loop !15

775:                                              ; preds = %769
  %776 = trunc i64 %770 to i32
  %777 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %768) #25
  %778 = trunc i64 %777 to i32
  %779 = add i32 %778, -1
  %780 = icmp sgt i32 %779, %776
  %781 = shl i64 %770, 32
  %782 = ashr exact i64 %781, 32
  %783 = select i1 %780, i64 %782, i64 0
  %784 = getelementptr inbounds i8, i8* %768, i64 %783
  %785 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %784, i32 61) #25
  %786 = icmp eq i8* %785, null
  br i1 %786, label %787, label %789

787:                                              ; preds = %775
  %788 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %784) #25
  br label %793

789:                                              ; preds = %775
  %790 = ptrtoint i8* %785 to i64
  %791 = ptrtoint i8* %784 to i64
  %792 = sub i64 %790, %791
  br label %793

793:                                              ; preds = %789, %787
  %794 = phi i64 [ %788, %787 ], [ %792, %789 ]
  %795 = trunc i64 %794 to i32
  %796 = icmp eq i32 %795, 6
  br i1 %796, label %797, label %800

797:                                              ; preds = %793
  %798 = tail call i32 @strncasecmp(i8* %784, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i64 6) #25
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %801, label %800

800:                                              ; preds = %797, %793
  br label %801

801:                                              ; preds = %800, %797
  %802 = phi i8 [ %766, %800 ], [ 1, %797 ]
  %803 = add nuw nsw i64 %765, 1
  %804 = icmp eq i64 %803, %26
  br i1 %804, label %805, label %764, !llvm.loop !17

805:                                              ; preds = %801
  %806 = and i8 %802, 1
  %807 = icmp eq i8 %806, 0
  br i1 %807, label %992, label %808

808:                                              ; preds = %805, %844
  %809 = phi i64 [ %847, %844 ], [ 1, %805 ]
  %810 = phi i8 [ %846, %844 ], [ 0, %805 ]
  %811 = phi i32 [ %845, %844 ], [ -1, %805 ]
  %812 = getelementptr inbounds i8*, i8** %1, i64 %809
  %813 = load i8*, i8** %812, align 8, !tbaa !3
  br label %814

814:                                              ; preds = %814, %808
  %815 = phi i64 [ %819, %814 ], [ 0, %808 ]
  %816 = getelementptr inbounds i8, i8* %813, i64 %815
  %817 = load i8, i8* %816, align 1, !tbaa !14
  %818 = icmp eq i8 %817, 45
  %819 = add nuw i64 %815, 1
  br i1 %818, label %814, label %820, !llvm.loop !15

820:                                              ; preds = %814
  %821 = trunc i64 %815 to i32
  %822 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %813) #25
  %823 = trunc i64 %822 to i32
  %824 = add i32 %823, -1
  %825 = icmp sgt i32 %824, %821
  %826 = shl i64 %815, 32
  %827 = ashr exact i64 %826, 32
  %828 = select i1 %825, i64 %827, i64 0
  %829 = getelementptr inbounds i8, i8* %813, i64 %828
  %830 = tail call i32 @strncasecmp(i8* %829, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i64 6) #25
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %832, label %844

832:                                              ; preds = %820
  %833 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %829) #25
  %834 = trunc i64 %833 to i32
  %835 = icmp sgt i32 %834, 6
  br i1 %835, label %836, label %844

836:                                              ; preds = %832
  %837 = getelementptr inbounds i8, i8* %829, i64 6
  %838 = load i8, i8* %837, align 1, !tbaa !14
  %839 = icmp eq i8 %838, 61
  %840 = select i1 %839, i64 7, i64 6
  %841 = getelementptr inbounds i8, i8* %829, i64 %840
  %842 = tail call i64 @strtol(i8* nocapture nonnull %841, i8** null, i32 10) #22
  %843 = trunc i64 %842 to i32
  br label %844

844:                                              ; preds = %836, %832, %820
  %845 = phi i32 [ %843, %836 ], [ 0, %832 ], [ %811, %820 ]
  %846 = phi i8 [ 1, %836 ], [ 1, %832 ], [ %810, %820 ]
  %847 = add nuw nsw i64 %809, 1
  %848 = icmp eq i64 %847, %26
  br i1 %848, label %849, label %808, !llvm.loop !18

849:                                              ; preds = %844
  %850 = and i8 %846, 1
  %851 = icmp ne i8 %850, 0
  %852 = icmp sgt i32 %845, 4
  %853 = select i1 %851, i1 %852, i1 false
  br i1 %853, label %854, label %900

854:                                              ; preds = %849, %890
  %855 = phi i64 [ %893, %890 ], [ 1, %849 ]
  %856 = phi i8 [ %892, %890 ], [ 0, %849 ]
  %857 = phi i32 [ %891, %890 ], [ -1, %849 ]
  %858 = getelementptr inbounds i8*, i8** %1, i64 %855
  %859 = load i8*, i8** %858, align 8, !tbaa !3
  br label %860

860:                                              ; preds = %860, %854
  %861 = phi i64 [ %865, %860 ], [ 0, %854 ]
  %862 = getelementptr inbounds i8, i8* %859, i64 %861
  %863 = load i8, i8* %862, align 1, !tbaa !14
  %864 = icmp eq i8 %863, 45
  %865 = add nuw i64 %861, 1
  br i1 %864, label %860, label %866, !llvm.loop !15

866:                                              ; preds = %860
  %867 = trunc i64 %861 to i32
  %868 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %859) #25
  %869 = trunc i64 %868 to i32
  %870 = add i32 %869, -1
  %871 = icmp sgt i32 %870, %867
  %872 = shl i64 %861, 32
  %873 = ashr exact i64 %872, 32
  %874 = select i1 %871, i64 %873, i64 0
  %875 = getelementptr inbounds i8, i8* %859, i64 %874
  %876 = tail call i32 @strncasecmp(i8* %875, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i64 6) #25
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %878, label %890

878:                                              ; preds = %866
  %879 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %875) #25
  %880 = trunc i64 %879 to i32
  %881 = icmp sgt i32 %880, 6
  br i1 %881, label %882, label %890

882:                                              ; preds = %878
  %883 = getelementptr inbounds i8, i8* %875, i64 6
  %884 = load i8, i8* %883, align 1, !tbaa !14
  %885 = icmp eq i8 %884, 61
  %886 = select i1 %885, i64 7, i64 6
  %887 = getelementptr inbounds i8, i8* %875, i64 %886
  %888 = tail call i64 @strtol(i8* nocapture nonnull %887, i8** null, i32 10) #22
  %889 = trunc i64 %888 to i32
  br label %890

890:                                              ; preds = %882, %878, %866
  %891 = phi i32 [ %889, %882 ], [ 0, %878 ], [ %857, %866 ]
  %892 = phi i8 [ 1, %882 ], [ 1, %878 ], [ %856, %866 ]
  %893 = add nuw nsw i64 %855, 1
  %894 = icmp eq i64 %893, %26
  br i1 %894, label %895, label %854, !llvm.loop !18

895:                                              ; preds = %890
  %896 = and i8 %892, 1
  %897 = icmp ne i8 %896, 0
  %898 = icmp sgt i32 %891, 4
  %899 = select i1 %897, i1 %898, i1 false
  br i1 %899, label %992, label %900

900:                                              ; preds = %895, %849
  br label %901

901:                                              ; preds = %900, %937
  %902 = phi i64 [ %940, %937 ], [ 1, %900 ]
  %903 = phi i8 [ %939, %937 ], [ 0, %900 ]
  %904 = phi i32 [ %938, %937 ], [ -1, %900 ]
  %905 = getelementptr inbounds i8*, i8** %1, i64 %902
  %906 = load i8*, i8** %905, align 8, !tbaa !3
  br label %907

907:                                              ; preds = %907, %901
  %908 = phi i64 [ %912, %907 ], [ 0, %901 ]
  %909 = getelementptr inbounds i8, i8* %906, i64 %908
  %910 = load i8, i8* %909, align 1, !tbaa !14
  %911 = icmp eq i8 %910, 45
  %912 = add nuw i64 %908, 1
  br i1 %911, label %907, label %913, !llvm.loop !15

913:                                              ; preds = %907
  %914 = trunc i64 %908 to i32
  %915 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %906) #25
  %916 = trunc i64 %915 to i32
  %917 = add i32 %916, -1
  %918 = icmp sgt i32 %917, %914
  %919 = shl i64 %908, 32
  %920 = ashr exact i64 %919, 32
  %921 = select i1 %918, i64 %920, i64 0
  %922 = getelementptr inbounds i8, i8* %906, i64 %921
  %923 = tail call i32 @strncasecmp(i8* %922, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i64 6) #25
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %925, label %937

925:                                              ; preds = %913
  %926 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %922) #25
  %927 = trunc i64 %926 to i32
  %928 = icmp sgt i32 %927, 6
  br i1 %928, label %929, label %937

929:                                              ; preds = %925
  %930 = getelementptr inbounds i8, i8* %922, i64 6
  %931 = load i8, i8* %930, align 1, !tbaa !14
  %932 = icmp eq i8 %931, 61
  %933 = select i1 %932, i64 7, i64 6
  %934 = getelementptr inbounds i8, i8* %922, i64 %933
  %935 = tail call i64 @strtol(i8* nocapture nonnull %934, i8** null, i32 10) #22
  %936 = trunc i64 %935 to i32
  br label %937

937:                                              ; preds = %929, %925, %913
  %938 = phi i32 [ %936, %929 ], [ 0, %925 ], [ %904, %913 ]
  %939 = phi i8 [ 1, %929 ], [ 1, %925 ], [ %903, %913 ]
  %940 = add nuw nsw i64 %902, 1
  %941 = icmp eq i64 %940, %26
  br i1 %941, label %942, label %901, !llvm.loop !18

942:                                              ; preds = %937
  %943 = and i8 %939, 1
  %944 = icmp ne i8 %943, 0
  %945 = icmp sgt i32 %938, 4
  %946 = select i1 %944, i1 %945, i1 false
  br i1 %946, label %947, label %992

947:                                              ; preds = %942, %983
  %948 = phi i64 [ %986, %983 ], [ 1, %942 ]
  %949 = phi i8 [ %985, %983 ], [ 0, %942 ]
  %950 = phi i32 [ %984, %983 ], [ -1, %942 ]
  %951 = getelementptr inbounds i8*, i8** %1, i64 %948
  %952 = load i8*, i8** %951, align 8, !tbaa !3
  br label %953

953:                                              ; preds = %953, %947
  %954 = phi i64 [ %958, %953 ], [ 0, %947 ]
  %955 = getelementptr inbounds i8, i8* %952, i64 %954
  %956 = load i8, i8* %955, align 1, !tbaa !14
  %957 = icmp eq i8 %956, 45
  %958 = add nuw i64 %954, 1
  br i1 %957, label %953, label %959, !llvm.loop !15

959:                                              ; preds = %953
  %960 = trunc i64 %954 to i32
  %961 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %952) #25
  %962 = trunc i64 %961 to i32
  %963 = add i32 %962, -1
  %964 = icmp sgt i32 %963, %960
  %965 = shl i64 %954, 32
  %966 = ashr exact i64 %965, 32
  %967 = select i1 %964, i64 %966, i64 0
  %968 = getelementptr inbounds i8, i8* %952, i64 %967
  %969 = tail call i32 @strncasecmp(i8* %968, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i64 6) #25
  %970 = icmp eq i32 %969, 0
  br i1 %970, label %971, label %983

971:                                              ; preds = %959
  %972 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %968) #25
  %973 = trunc i64 %972 to i32
  %974 = icmp sgt i32 %973, 6
  br i1 %974, label %975, label %983

975:                                              ; preds = %971
  %976 = getelementptr inbounds i8, i8* %968, i64 6
  %977 = load i8, i8* %976, align 1, !tbaa !14
  %978 = icmp eq i8 %977, 61
  %979 = select i1 %978, i64 7, i64 6
  %980 = getelementptr inbounds i8, i8* %968, i64 %979
  %981 = tail call i64 @strtol(i8* nocapture nonnull %980, i8** null, i32 10) #22
  %982 = trunc i64 %981 to i32
  br label %983

983:                                              ; preds = %975, %971, %959
  %984 = phi i32 [ %982, %975 ], [ 0, %971 ], [ %950, %959 ]
  %985 = phi i8 [ 1, %975 ], [ 1, %971 ], [ %949, %959 ]
  %986 = add nuw nsw i64 %948, 1
  %987 = icmp eq i64 %986, %26
  br i1 %987, label %988, label %947, !llvm.loop !18

988:                                              ; preds = %983
  %989 = and i8 %985, 1
  %990 = icmp eq i8 %989, 0
  %991 = select i1 %990, i32 0, i32 %984
  br label %992

992:                                              ; preds = %805, %988, %942, %895
  %993 = phi i32 [ 4, %805 ], [ 4, %895 ], [ %991, %988 ], [ 4, %942 ]
  br label %994

994:                                              ; preds = %1031, %992
  %995 = phi i64 [ 1, %992 ], [ %1033, %1031 ]
  %996 = phi i8 [ 0, %992 ], [ %1032, %1031 ]
  %997 = getelementptr inbounds i8*, i8** %1, i64 %995
  %998 = load i8*, i8** %997, align 8, !tbaa !3
  br label %999

999:                                              ; preds = %999, %994
  %1000 = phi i64 [ %1004, %999 ], [ 0, %994 ]
  %1001 = getelementptr inbounds i8, i8* %998, i64 %1000
  %1002 = load i8, i8* %1001, align 1, !tbaa !14
  %1003 = icmp eq i8 %1002, 45
  %1004 = add nuw i64 %1000, 1
  br i1 %1003, label %999, label %1005, !llvm.loop !15

1005:                                             ; preds = %999
  %1006 = trunc i64 %1000 to i32
  %1007 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %998) #25
  %1008 = trunc i64 %1007 to i32
  %1009 = add i32 %1008, -1
  %1010 = icmp sgt i32 %1009, %1006
  %1011 = shl i64 %1000, 32
  %1012 = ashr exact i64 %1011, 32
  %1013 = select i1 %1010, i64 %1012, i64 0
  %1014 = getelementptr inbounds i8, i8* %998, i64 %1013
  %1015 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %1014, i32 61) #25
  %1016 = icmp eq i8* %1015, null
  br i1 %1016, label %1017, label %1019

1017:                                             ; preds = %1005
  %1018 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1014) #25
  br label %1023

1019:                                             ; preds = %1005
  %1020 = ptrtoint i8* %1015 to i64
  %1021 = ptrtoint i8* %1014 to i64
  %1022 = sub i64 %1020, %1021
  br label %1023

1023:                                             ; preds = %1019, %1017
  %1024 = phi i64 [ %1018, %1017 ], [ %1022, %1019 ]
  %1025 = trunc i64 %1024 to i32
  %1026 = icmp eq i32 %1025, 9
  br i1 %1026, label %1027, label %1030

1027:                                             ; preds = %1023
  %1028 = tail call i32 @strncasecmp(i8* %1014, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i64 0, i64 0), i64 9) #25
  %1029 = icmp eq i32 %1028, 0
  br i1 %1029, label %1031, label %1030

1030:                                             ; preds = %1027, %1023
  br label %1031

1031:                                             ; preds = %1030, %1027
  %1032 = phi i8 [ %996, %1030 ], [ 1, %1027 ]
  %1033 = add nuw nsw i64 %995, 1
  %1034 = icmp eq i64 %1033, %26
  br i1 %1034, label %1035, label %994, !llvm.loop !17

1035:                                             ; preds = %1031
  %1036 = and i8 %1032, 1
  %1037 = icmp eq i8 %1036, 0
  br i1 %1037, label %1222, label %1038

1038:                                             ; preds = %1035, %1074
  %1039 = phi i64 [ %1077, %1074 ], [ 1, %1035 ]
  %1040 = phi i8 [ %1076, %1074 ], [ 0, %1035 ]
  %1041 = phi i32 [ %1075, %1074 ], [ -1, %1035 ]
  %1042 = getelementptr inbounds i8*, i8** %1, i64 %1039
  %1043 = load i8*, i8** %1042, align 8, !tbaa !3
  br label %1044

1044:                                             ; preds = %1044, %1038
  %1045 = phi i64 [ %1049, %1044 ], [ 0, %1038 ]
  %1046 = getelementptr inbounds i8, i8* %1043, i64 %1045
  %1047 = load i8, i8* %1046, align 1, !tbaa !14
  %1048 = icmp eq i8 %1047, 45
  %1049 = add nuw i64 %1045, 1
  br i1 %1048, label %1044, label %1050, !llvm.loop !15

1050:                                             ; preds = %1044
  %1051 = trunc i64 %1045 to i32
  %1052 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1043) #25
  %1053 = trunc i64 %1052 to i32
  %1054 = add i32 %1053, -1
  %1055 = icmp sgt i32 %1054, %1051
  %1056 = shl i64 %1045, 32
  %1057 = ashr exact i64 %1056, 32
  %1058 = select i1 %1055, i64 %1057, i64 0
  %1059 = getelementptr inbounds i8, i8* %1043, i64 %1058
  %1060 = tail call i32 @strncasecmp(i8* %1059, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i64 0, i64 0), i64 9) #25
  %1061 = icmp eq i32 %1060, 0
  br i1 %1061, label %1062, label %1074

1062:                                             ; preds = %1050
  %1063 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1059) #25
  %1064 = trunc i64 %1063 to i32
  %1065 = icmp sgt i32 %1064, 9
  br i1 %1065, label %1066, label %1074

1066:                                             ; preds = %1062
  %1067 = getelementptr inbounds i8, i8* %1059, i64 9
  %1068 = load i8, i8* %1067, align 1, !tbaa !14
  %1069 = icmp eq i8 %1068, 61
  %1070 = select i1 %1069, i64 10, i64 9
  %1071 = getelementptr inbounds i8, i8* %1059, i64 %1070
  %1072 = tail call i64 @strtol(i8* nocapture nonnull %1071, i8** null, i32 10) #22
  %1073 = trunc i64 %1072 to i32
  br label %1074

1074:                                             ; preds = %1066, %1062, %1050
  %1075 = phi i32 [ %1073, %1066 ], [ 0, %1062 ], [ %1041, %1050 ]
  %1076 = phi i8 [ 1, %1066 ], [ 1, %1062 ], [ %1040, %1050 ]
  %1077 = add nuw nsw i64 %1039, 1
  %1078 = icmp eq i64 %1077, %26
  br i1 %1078, label %1079, label %1038, !llvm.loop !18

1079:                                             ; preds = %1074
  %1080 = and i8 %1076, 1
  %1081 = icmp ne i8 %1080, 0
  %1082 = icmp sgt i32 %1075, 1
  %1083 = select i1 %1081, i1 %1082, i1 false
  br i1 %1083, label %1084, label %1130

1084:                                             ; preds = %1079, %1120
  %1085 = phi i64 [ %1123, %1120 ], [ 1, %1079 ]
  %1086 = phi i8 [ %1122, %1120 ], [ 0, %1079 ]
  %1087 = phi i32 [ %1121, %1120 ], [ -1, %1079 ]
  %1088 = getelementptr inbounds i8*, i8** %1, i64 %1085
  %1089 = load i8*, i8** %1088, align 8, !tbaa !3
  br label %1090

1090:                                             ; preds = %1090, %1084
  %1091 = phi i64 [ %1095, %1090 ], [ 0, %1084 ]
  %1092 = getelementptr inbounds i8, i8* %1089, i64 %1091
  %1093 = load i8, i8* %1092, align 1, !tbaa !14
  %1094 = icmp eq i8 %1093, 45
  %1095 = add nuw i64 %1091, 1
  br i1 %1094, label %1090, label %1096, !llvm.loop !15

1096:                                             ; preds = %1090
  %1097 = trunc i64 %1091 to i32
  %1098 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1089) #25
  %1099 = trunc i64 %1098 to i32
  %1100 = add i32 %1099, -1
  %1101 = icmp sgt i32 %1100, %1097
  %1102 = shl i64 %1091, 32
  %1103 = ashr exact i64 %1102, 32
  %1104 = select i1 %1101, i64 %1103, i64 0
  %1105 = getelementptr inbounds i8, i8* %1089, i64 %1104
  %1106 = tail call i32 @strncasecmp(i8* %1105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i64 0, i64 0), i64 9) #25
  %1107 = icmp eq i32 %1106, 0
  br i1 %1107, label %1108, label %1120

1108:                                             ; preds = %1096
  %1109 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1105) #25
  %1110 = trunc i64 %1109 to i32
  %1111 = icmp sgt i32 %1110, 9
  br i1 %1111, label %1112, label %1120

1112:                                             ; preds = %1108
  %1113 = getelementptr inbounds i8, i8* %1105, i64 9
  %1114 = load i8, i8* %1113, align 1, !tbaa !14
  %1115 = icmp eq i8 %1114, 61
  %1116 = select i1 %1115, i64 10, i64 9
  %1117 = getelementptr inbounds i8, i8* %1105, i64 %1116
  %1118 = tail call i64 @strtol(i8* nocapture nonnull %1117, i8** null, i32 10) #22
  %1119 = trunc i64 %1118 to i32
  br label %1120

1120:                                             ; preds = %1112, %1108, %1096
  %1121 = phi i32 [ %1119, %1112 ], [ 0, %1108 ], [ %1087, %1096 ]
  %1122 = phi i8 [ 1, %1112 ], [ 1, %1108 ], [ %1086, %1096 ]
  %1123 = add nuw nsw i64 %1085, 1
  %1124 = icmp eq i64 %1123, %26
  br i1 %1124, label %1125, label %1084, !llvm.loop !18

1125:                                             ; preds = %1120
  %1126 = and i8 %1122, 1
  %1127 = icmp ne i8 %1126, 0
  %1128 = icmp sgt i32 %1121, 10
  %1129 = select i1 %1127, i1 %1128, i1 false
  br i1 %1129, label %1222, label %1130

1130:                                             ; preds = %1125, %1079
  br label %1131

1131:                                             ; preds = %1130, %1167
  %1132 = phi i64 [ %1170, %1167 ], [ 1, %1130 ]
  %1133 = phi i8 [ %1169, %1167 ], [ 0, %1130 ]
  %1134 = phi i32 [ %1168, %1167 ], [ -1, %1130 ]
  %1135 = getelementptr inbounds i8*, i8** %1, i64 %1132
  %1136 = load i8*, i8** %1135, align 8, !tbaa !3
  br label %1137

1137:                                             ; preds = %1137, %1131
  %1138 = phi i64 [ %1142, %1137 ], [ 0, %1131 ]
  %1139 = getelementptr inbounds i8, i8* %1136, i64 %1138
  %1140 = load i8, i8* %1139, align 1, !tbaa !14
  %1141 = icmp eq i8 %1140, 45
  %1142 = add nuw i64 %1138, 1
  br i1 %1141, label %1137, label %1143, !llvm.loop !15

1143:                                             ; preds = %1137
  %1144 = trunc i64 %1138 to i32
  %1145 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1136) #25
  %1146 = trunc i64 %1145 to i32
  %1147 = add i32 %1146, -1
  %1148 = icmp sgt i32 %1147, %1144
  %1149 = shl i64 %1138, 32
  %1150 = ashr exact i64 %1149, 32
  %1151 = select i1 %1148, i64 %1150, i64 0
  %1152 = getelementptr inbounds i8, i8* %1136, i64 %1151
  %1153 = tail call i32 @strncasecmp(i8* %1152, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i64 0, i64 0), i64 9) #25
  %1154 = icmp eq i32 %1153, 0
  br i1 %1154, label %1155, label %1167

1155:                                             ; preds = %1143
  %1156 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1152) #25
  %1157 = trunc i64 %1156 to i32
  %1158 = icmp sgt i32 %1157, 9
  br i1 %1158, label %1159, label %1167

1159:                                             ; preds = %1155
  %1160 = getelementptr inbounds i8, i8* %1152, i64 9
  %1161 = load i8, i8* %1160, align 1, !tbaa !14
  %1162 = icmp eq i8 %1161, 61
  %1163 = select i1 %1162, i64 10, i64 9
  %1164 = getelementptr inbounds i8, i8* %1152, i64 %1163
  %1165 = tail call i64 @strtol(i8* nocapture nonnull %1164, i8** null, i32 10) #22
  %1166 = trunc i64 %1165 to i32
  br label %1167

1167:                                             ; preds = %1159, %1155, %1143
  %1168 = phi i32 [ %1166, %1159 ], [ 0, %1155 ], [ %1134, %1143 ]
  %1169 = phi i8 [ 1, %1159 ], [ 1, %1155 ], [ %1133, %1143 ]
  %1170 = add nuw nsw i64 %1132, 1
  %1171 = icmp eq i64 %1170, %26
  br i1 %1171, label %1172, label %1131, !llvm.loop !18

1172:                                             ; preds = %1167
  %1173 = and i8 %1169, 1
  %1174 = icmp ne i8 %1173, 0
  %1175 = icmp sgt i32 %1168, 1
  %1176 = select i1 %1174, i1 %1175, i1 false
  br i1 %1176, label %1177, label %1222

1177:                                             ; preds = %1172, %1213
  %1178 = phi i64 [ %1216, %1213 ], [ 1, %1172 ]
  %1179 = phi i8 [ %1215, %1213 ], [ 0, %1172 ]
  %1180 = phi i32 [ %1214, %1213 ], [ -1, %1172 ]
  %1181 = getelementptr inbounds i8*, i8** %1, i64 %1178
  %1182 = load i8*, i8** %1181, align 8, !tbaa !3
  br label %1183

1183:                                             ; preds = %1183, %1177
  %1184 = phi i64 [ %1188, %1183 ], [ 0, %1177 ]
  %1185 = getelementptr inbounds i8, i8* %1182, i64 %1184
  %1186 = load i8, i8* %1185, align 1, !tbaa !14
  %1187 = icmp eq i8 %1186, 45
  %1188 = add nuw i64 %1184, 1
  br i1 %1187, label %1183, label %1189, !llvm.loop !15

1189:                                             ; preds = %1183
  %1190 = trunc i64 %1184 to i32
  %1191 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1182) #25
  %1192 = trunc i64 %1191 to i32
  %1193 = add i32 %1192, -1
  %1194 = icmp sgt i32 %1193, %1190
  %1195 = shl i64 %1184, 32
  %1196 = ashr exact i64 %1195, 32
  %1197 = select i1 %1194, i64 %1196, i64 0
  %1198 = getelementptr inbounds i8, i8* %1182, i64 %1197
  %1199 = tail call i32 @strncasecmp(i8* %1198, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i64 0, i64 0), i64 9) #25
  %1200 = icmp eq i32 %1199, 0
  br i1 %1200, label %1201, label %1213

1201:                                             ; preds = %1189
  %1202 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1198) #25
  %1203 = trunc i64 %1202 to i32
  %1204 = icmp sgt i32 %1203, 9
  br i1 %1204, label %1205, label %1213

1205:                                             ; preds = %1201
  %1206 = getelementptr inbounds i8, i8* %1198, i64 9
  %1207 = load i8, i8* %1206, align 1, !tbaa !14
  %1208 = icmp eq i8 %1207, 61
  %1209 = select i1 %1208, i64 10, i64 9
  %1210 = getelementptr inbounds i8, i8* %1198, i64 %1209
  %1211 = tail call i64 @strtol(i8* nocapture nonnull %1210, i8** null, i32 10) #22
  %1212 = trunc i64 %1211 to i32
  br label %1213

1213:                                             ; preds = %1205, %1201, %1189
  %1214 = phi i32 [ %1212, %1205 ], [ 0, %1201 ], [ %1180, %1189 ]
  %1215 = phi i8 [ 1, %1205 ], [ 1, %1201 ], [ %1179, %1189 ]
  %1216 = add nuw nsw i64 %1178, 1
  %1217 = icmp eq i64 %1216, %26
  br i1 %1217, label %1218, label %1177, !llvm.loop !18

1218:                                             ; preds = %1213
  %1219 = and i8 %1215, 1
  %1220 = icmp eq i8 %1219, 0
  %1221 = select i1 %1220, i32 0, i32 %1214
  br label %1222

1222:                                             ; preds = %21, %1125, %1172, %1218, %1035
  %1223 = phi i32 [ %303, %1035 ], [ %303, %1125 ], [ %303, %1218 ], [ %303, %1172 ], [ %23, %21 ]
  %1224 = phi i32 [ %533, %1035 ], [ %533, %1125 ], [ %533, %1218 ], [ %533, %1172 ], [ %23, %21 ]
  %1225 = phi i32 [ %763, %1035 ], [ %763, %1125 ], [ %763, %1218 ], [ %763, %1172 ], [ %23, %21 ]
  %1226 = phi i32 [ %993, %1035 ], [ %993, %1125 ], [ %993, %1218 ], [ %993, %1172 ], [ 4, %21 ]
  %1227 = phi i32 [ 5, %1035 ], [ 10, %1125 ], [ %1221, %1218 ], [ 1, %1172 ], [ 5, %21 ]
  %1228 = shl nsw i32 %1226, 1
  %1229 = add nsw i32 %1228, %1223
  %1230 = add nsw i32 %1228, %1224
  %1231 = add nsw i32 %1228, %1225
  %1232 = mul nsw i32 %1229, %1230
  %1233 = mul nsw i32 %1232, %1231
  %1234 = sext i32 %1233 to i64
  %1235 = tail call noalias align 16 i8* @calloc(i64 %1234, i64 4) #22
  %1236 = bitcast i8* %1235 to float*
  %1237 = shl nsw i64 %1234, 2
  %1238 = tail call noalias align 16 i8* @malloc(i64 %1237) #22
  %1239 = bitcast i8* %1238 to float*
  %1240 = add i32 %1226, 1
  %1241 = sext i32 %1240 to i64
  %1242 = shl nsw i64 %1241, 2
  %1243 = tail call noalias align 16 i8* @malloc(i64 %1242) #22
  %1244 = bitcast i8* %1243 to float*
  %1245 = icmp slt i32 %1226, 0
  br i1 %1245, label %1320, label %1246

1246:                                             ; preds = %1222
  %1247 = zext i32 %1240 to i64
  %1248 = icmp ult i32 %1240, 8
  br i1 %1248, label %1318, label %1249

1249:                                             ; preds = %1246
  %1250 = and i64 %1247, 4294967288
  %1251 = add nsw i64 %1250, -8
  %1252 = lshr exact i64 %1251, 3
  %1253 = add nuw nsw i64 %1252, 1
  %1254 = and i64 %1253, 7
  %1255 = icmp ult i64 %1251, 56
  br i1 %1255, label %1303, label %1256

1256:                                             ; preds = %1249
  %1257 = and i64 %1253, 4611686018427387896
  br label %1258

1258:                                             ; preds = %1258, %1256
  %1259 = phi i64 [ 0, %1256 ], [ %1300, %1258 ]
  %1260 = phi i64 [ 0, %1256 ], [ %1301, %1258 ]
  %1261 = getelementptr inbounds float, float* %1244, i64 %1259
  %1262 = bitcast float* %1261 to <4 x float>*
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>, <4 x float>* %1262, align 16, !tbaa !22
  %1263 = getelementptr inbounds float, float* %1261, i64 4
  %1264 = bitcast float* %1263 to <4 x float>*
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>, <4 x float>* %1264, align 16, !tbaa !22
  %1265 = or i64 %1259, 8
  %1266 = getelementptr inbounds float, float* %1244, i64 %1265
  %1267 = bitcast float* %1266 to <4 x float>*
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>, <4 x float>* %1267, align 16, !tbaa !22
  %1268 = getelementptr inbounds float, float* %1266, i64 4
  %1269 = bitcast float* %1268 to <4 x float>*
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>, <4 x float>* %1269, align 16, !tbaa !22
  %1270 = or i64 %1259, 16
  %1271 = getelementptr inbounds float, float* %1244, i64 %1270
  %1272 = bitcast float* %1271 to <4 x float>*
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>, <4 x float>* %1272, align 16, !tbaa !22
  %1273 = getelementptr inbounds float, float* %1271, i64 4
  %1274 = bitcast float* %1273 to <4 x float>*
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>, <4 x float>* %1274, align 16, !tbaa !22
  %1275 = or i64 %1259, 24
  %1276 = getelementptr inbounds float, float* %1244, i64 %1275
  %1277 = bitcast float* %1276 to <4 x float>*
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>, <4 x float>* %1277, align 16, !tbaa !22
  %1278 = getelementptr inbounds float, float* %1276, i64 4
  %1279 = bitcast float* %1278 to <4 x float>*
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>, <4 x float>* %1279, align 16, !tbaa !22
  %1280 = or i64 %1259, 32
  %1281 = getelementptr inbounds float, float* %1244, i64 %1280
  %1282 = bitcast float* %1281 to <4 x float>*
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>, <4 x float>* %1282, align 16, !tbaa !22
  %1283 = getelementptr inbounds float, float* %1281, i64 4
  %1284 = bitcast float* %1283 to <4 x float>*
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>, <4 x float>* %1284, align 16, !tbaa !22
  %1285 = or i64 %1259, 40
  %1286 = getelementptr inbounds float, float* %1244, i64 %1285
  %1287 = bitcast float* %1286 to <4 x float>*
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>, <4 x float>* %1287, align 16, !tbaa !22
  %1288 = getelementptr inbounds float, float* %1286, i64 4
  %1289 = bitcast float* %1288 to <4 x float>*
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>, <4 x float>* %1289, align 16, !tbaa !22
  %1290 = or i64 %1259, 48
  %1291 = getelementptr inbounds float, float* %1244, i64 %1290
  %1292 = bitcast float* %1291 to <4 x float>*
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>, <4 x float>* %1292, align 16, !tbaa !22
  %1293 = getelementptr inbounds float, float* %1291, i64 4
  %1294 = bitcast float* %1293 to <4 x float>*
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>, <4 x float>* %1294, align 16, !tbaa !22
  %1295 = or i64 %1259, 56
  %1296 = getelementptr inbounds float, float* %1244, i64 %1295
  %1297 = bitcast float* %1296 to <4 x float>*
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>, <4 x float>* %1297, align 16, !tbaa !22
  %1298 = getelementptr inbounds float, float* %1296, i64 4
  %1299 = bitcast float* %1298 to <4 x float>*
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>, <4 x float>* %1299, align 16, !tbaa !22
  %1300 = add nuw i64 %1259, 64
  %1301 = add nuw i64 %1260, 8
  %1302 = icmp eq i64 %1301, %1257
  br i1 %1302, label %1303, label %1258, !llvm.loop !96

1303:                                             ; preds = %1258, %1249
  %1304 = phi i64 [ 0, %1249 ], [ %1300, %1258 ]
  %1305 = icmp eq i64 %1254, 0
  br i1 %1305, label %1316, label %1306

1306:                                             ; preds = %1303, %1306
  %1307 = phi i64 [ %1313, %1306 ], [ %1304, %1303 ]
  %1308 = phi i64 [ %1314, %1306 ], [ 0, %1303 ]
  %1309 = getelementptr inbounds float, float* %1244, i64 %1307
  %1310 = bitcast float* %1309 to <4 x float>*
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>, <4 x float>* %1310, align 16, !tbaa !22
  %1311 = getelementptr inbounds float, float* %1309, i64 4
  %1312 = bitcast float* %1311 to <4 x float>*
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>, <4 x float>* %1312, align 16, !tbaa !22
  %1313 = add nuw i64 %1307, 8
  %1314 = add i64 %1308, 1
  %1315 = icmp eq i64 %1314, %1254
  br i1 %1315, label %1316, label %1306, !llvm.loop !97

1316:                                             ; preds = %1306, %1303
  %1317 = icmp eq i64 %1250, %1247
  br i1 %1317, label %1320, label %1318

1318:                                             ; preds = %1246, %1316
  %1319 = phi i64 [ 0, %1246 ], [ %1250, %1316 ]
  br label %1361

1320:                                             ; preds = %1361, %1316, %1222
  %1321 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.112, i64 0, i64 0))
  tail call void @srand(i32 0) #22
  %1322 = icmp slt i32 %1229, 1
  %1323 = icmp slt i32 %1231, 1
  %1324 = icmp slt i32 %1230, 1
  %1325 = select i1 %1323, i1 true, i1 %1324
  %1326 = select i1 %1325, i1 true, i1 %1322
  br i1 %1326, label %1349, label %1327

1327:                                             ; preds = %1320, %1346
  %1328 = phi i32 [ %1347, %1346 ], [ 0, %1320 ]
  %1329 = phi float* [ %1340, %1346 ], [ %1239, %1320 ]
  br label %1330

1330:                                             ; preds = %1343, %1327
  %1331 = phi i32 [ 0, %1327 ], [ %1344, %1343 ]
  %1332 = phi float* [ %1329, %1327 ], [ %1340, %1343 ]
  br label %1333

1333:                                             ; preds = %1333, %1330
  %1334 = phi i32 [ 0, %1330 ], [ %1341, %1333 ]
  %1335 = phi float* [ %1332, %1330 ], [ %1340, %1333 ]
  %1336 = tail call i32 @rand() #22
  %1337 = sitofp i32 %1336 to float
  %1338 = fmul contract float %1337, 0x3E00000000000000
  %1339 = fadd contract float %1338, 0.000000e+00
  store float %1339, float* %1335, align 4, !tbaa !22
  %1340 = getelementptr inbounds float, float* %1335, i64 1
  %1341 = add nuw nsw i32 %1334, 1
  %1342 = icmp eq i32 %1341, %1229
  br i1 %1342, label %1343, label %1333, !llvm.loop !24

1343:                                             ; preds = %1333
  %1344 = add nuw nsw i32 %1331, 1
  %1345 = icmp eq i32 %1344, %1230
  br i1 %1345, label %1346, label %1330, !llvm.loop !25

1346:                                             ; preds = %1343
  %1347 = add nuw nsw i32 %1328, 1
  %1348 = icmp eq i32 %1347, %1231
  br i1 %1348, label %1349, label %1327, !llvm.loop !26

1349:                                             ; preds = %1346, %1320
  %1350 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([82 x i8], [82 x i8]* @.str.60, i64 0, i64 0), i32 %1223, i32 %1224, i32 %1225, i32 %1226, i32 %1227)
  %1351 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @str.113, i64 0, i64 0))
  %1352 = tail call zeroext i1 @_Z13fdtdReferencePfPKfS1_iiiii(float* %1236, float* %1239, float* %1244, i32 %1223, i32 %1224, i32 %1225, i32 %1226, i32 %1227)
  %1353 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @str.114, i64 0, i64 0))
  %1354 = tail call noalias align 16 i8* @calloc(i64 %1234, i64 4) #22
  %1355 = bitcast i8* %1354 to float*
  %1356 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @str.115, i64 0, i64 0))
  %1357 = tail call zeroext i1 @_Z7fdtdGPUPfPKfS1_iiiiiiPPKc(float* %1355, float* %1239, float* %1244, i32 %1223, i32 %1224, i32 %1225, i32 %1226, i32 %1227, i32 %0, i8** %1)
  %1358 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @str.116, i64 0, i64 0))
  %1359 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str.65, i64 0, i64 0), double 0x3F1A36E2E0000000)
  %1360 = tail call zeroext i1 @_Z11compareDataPKfS0_iiiif(float* %1355, float* %1236, i32 %1223, i32 %1224, i32 %1225, i32 %1226, float 0x3F1A36E2E0000000)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #22
  ret i1 %1360

1361:                                             ; preds = %1318, %1361
  %1362 = phi i64 [ %1364, %1361 ], [ %1319, %1318 ]
  %1363 = getelementptr inbounds float, float* %1244, i64 %1362
  store float 0x3FB99999A0000000, float* %1363, align 4, !tbaa !22
  %1364 = add nuw nsw i64 %1362, 1
  %1365 = icmp eq i64 %1364, %1247
  br i1 %1365, label %1320, label %1361, !llvm.loop !98
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local double @pow(double, double) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #17

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_Z13gpuDeviceIniti(i32 %0) local_unnamed_addr #7 comdat {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #22
  %7 = call i32 @hipGetDeviceCount(i32* nonnull %2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %11 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %7)
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.71, i64 0, i64 0), i32 999, i32 %7, i8* %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.75, i64 0, i64 0)) #23
  call void @exit(i32 1) #24
  unreachable

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4, !tbaa !7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %18 = call i64 @fwrite(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.76, i64 0, i64 0), i64 56, i64 1, %struct._IO_FILE* %17) #23
  call void @exit(i32 1) #24
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
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.77, i64 0, i64 0), i32 %27) #23
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.78, i64 0, i64 0), i32 %21) #23
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %32 = call i32 @fputc(i32 10, %struct._IO_FILE* %31)
  %33 = sub nsw i32 0, %21
  br label %84

34:                                               ; preds = %19
  %35 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %35) #22
  store i32 -1, i32* %3, align 4, !tbaa !7
  %36 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %36) #22
  store i32 0, i32* %4, align 4, !tbaa !7
  %37 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %37) #22
  store i32 0, i32* %5, align 4, !tbaa !7
  %38 = call i32 @hipDeviceGetAttribute(i32* nonnull %3, i32 33, i32 %21)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %42 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %38)
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.71, i64 0, i64 0), i32 1025, i32 %38, i8* %42, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.79, i64 0, i64 0)) #23
  call void @exit(i32 1) #24
  unreachable

44:                                               ; preds = %34
  %45 = call i32 @hipDeviceGetAttribute(i32* nonnull %4, i32 36, i32 %21)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %49 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %45)
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.71, i64 0, i64 0), i32 1026, i32 %45, i8* %49, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.72, i64 0, i64 0)) #23
  call void @exit(i32 1) #24
  unreachable

51:                                               ; preds = %44
  %52 = call i32 @hipDeviceGetAttribute(i32* nonnull %5, i32 37, i32 %21)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %56 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %52)
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.71, i64 0, i64 0), i32 1027, i32 %52, i8* %56, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.73, i64 0, i64 0)) #23
  call void @exit(i32 1) #24
  unreachable

58:                                               ; preds = %51
  %59 = load i32, i32* %3, align 4, !tbaa !7
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %63 = call i64 @fwrite(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.80, i64 0, i64 0), i64 90, i64 1, %struct._IO_FILE* %62) #23
  br label %82

64:                                               ; preds = %58
  %65 = load i32, i32* %4, align 4, !tbaa !7
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %69 = call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.81, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %68) #23
  call void @exit(i32 1) #24
  unreachable

70:                                               ; preds = %64
  %71 = call i32 @hipSetDevice(i32 %21)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %75 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %71)
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.71, i64 0, i64 0), i32 1040, i32 %71, i8* %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.70, i64 0, i64 0)) #23
  call void @exit(i32 1) #24
  unreachable

77:                                               ; preds = %70
  %78 = load i32, i32* %4, align 4, !tbaa !7
  %79 = load i32, i32* %5, align 4, !tbaa !7
  %80 = call i8* @_Z22_ConvertSMVer2ArchNameii(i32 %78, i32 %79)
  %81 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @.str.82, i64 0, i64 0), i32 %21, i8* %80)
  br label %82

82:                                               ; preds = %77, %61
  %83 = phi i32 [ -1, %61 ], [ %21, %77 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %37) #22
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %36) #22
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %35) #22
  br label %84

84:                                               ; preds = %82, %23
  %85 = phi i32 [ %33, %23 ], [ %83, %82 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #22
  ret i32 %85
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_Z23gpuGetMaxGflopsDeviceIdv() local_unnamed_addr #7 comdat {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #22
  store i32 0, i32* %1, align 4, !tbaa !7
  %8 = call i32 @hipGetDeviceCount(i32* nonnull %1)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %12 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %8)
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.71, i64 0, i64 0), i32 1092, i32 %8, i8* %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.75, i64 0, i64 0)) #23
  call void @exit(i32 1) #24
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
  %26 = call i64 @fwrite(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.83, i64 0, i64 0), i64 66, i64 1, %struct._IO_FILE* %25) #23
  call void @exit(i32 1) #24
  unreachable

27:                                               ; preds = %17, %92
  %28 = phi i32 [ %96, %92 ], [ 0, %17 ]
  %29 = phi i64 [ %95, %92 ], [ 0, %17 ]
  %30 = phi i32 [ %94, %92 ], [ 0, %17 ]
  %31 = phi i32 [ %93, %92 ], [ 0, %17 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #22
  store i32 -1, i32* %2, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #22
  store i32 0, i32* %3, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #22
  store i32 0, i32* %4, align 4, !tbaa !7
  %32 = call i32 @hipDeviceGetAttribute(i32* nonnull %2, i32 33, i32 %28)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %36 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %32)
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.71, i64 0, i64 0), i32 1106, i32 %32, i8* %36, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.84, i64 0, i64 0)) #23
  call void @exit(i32 1) #24
  unreachable

38:                                               ; preds = %27
  %39 = call i32 @hipDeviceGetAttribute(i32* nonnull %3, i32 36, i32 %28)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %43 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %39)
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.71, i64 0, i64 0), i32 1107, i32 %39, i8* %43, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.85, i64 0, i64 0)) #23
  call void @exit(i32 1) #24
  unreachable

45:                                               ; preds = %38
  %46 = call i32 @hipDeviceGetAttribute(i32* nonnull %4, i32 37, i32 %28)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %50 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %46)
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.71, i64 0, i64 0), i32 1108, i32 %46, i8* %50, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.86, i64 0, i64 0)) #23
  call void @exit(i32 1) #24
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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #22
  store i32 0, i32* %5, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #22
  store i32 0, i32* %6, align 4, !tbaa !7
  %65 = call i32 @hipDeviceGetAttribute(i32* nonnull %5, i32 32, i32 %28)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %69 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %65)
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.71, i64 0, i64 0), i32 1120, i32 %65, i8* %69, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.87, i64 0, i64 0)) #23
  call void @exit(i32 1) #24
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
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.88, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.71, i64 0, i64 0), i32 1129, i32 %72, i8* %77) #23
  call void @exit(i32 1) #24
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
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #22
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #22
  br label %92

90:                                               ; preds = %52
  %91 = add nsw i32 %30, 1
  br label %92

92:                                               ; preds = %90, %79
  %93 = phi i32 [ %88, %79 ], [ %31, %90 ]
  %94 = phi i32 [ %30, %79 ], [ %91, %90 ]
  %95 = phi i64 [ %89, %79 ], [ %29, %90 ]
  %96 = add nuw nsw i32 %28, 1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #22
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #22
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #22
  %97 = load i32, i32* %1, align 4, !tbaa !7
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %27, label %99, !llvm.loop !99

99:                                               ; preds = %92, %17
  %100 = phi i32 [ 0, %17 ], [ %93, %92 ]
  %101 = phi i32 [ 0, %17 ], [ %94, %92 ]
  %102 = phi i32 [ %15, %17 ], [ %97, %92 ]
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %106 = call i64 @fwrite(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.89, i64 0, i64 0), i64 80, i64 1, %struct._IO_FILE* %105) #23
  call void @exit(i32 1) #24
  unreachable

107:                                              ; preds = %99
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #22
  ret i32 %100
}

declare dso_local i32 @hipDeviceGetAttribute(i32*, i32, i32) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i8* @_Z22_ConvertSMVer2ArchNameii(i32 %0, i32 %1) local_unnamed_addr #7 comdat {
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
  %25 = load i8*, i8** %24, align 8, !tbaa !100
  br label %28

26:                                               ; preds = %2
  %27 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([63 x i8], [63 x i8]* @.str.101, i64 0, i64 0), i32 %0, i32 %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i8* [ %25, %22 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i64 0, i64 0), %26 ]
  ret i8* %29
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_Z19_ConvertSMVer2Coresii(i32 %0, i32 %1) local_unnamed_addr #7 comdat {
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
  %25 = load i32, i32* %24, align 4, !tbaa !102
  br label %28

26:                                               ; preds = %2
  %27 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([69 x i8], [69 x i8]* @.str.90, i64 0, i64 0), i32 %0, i32 %1, i32 128)
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i32 [ %25, %22 ], [ 128, %26 ]
  ret i32 %29
}

; Function Attrs: mustprogress uwtable
define internal fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %0) unnamed_addr #4 {
  %2 = tail call i8* @hipGetErrorName(i32 %0)
  ret i8* %2
}

declare dso_local i8* @hipGetErrorName(i32) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #18

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncasecmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #20

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.ceil.f32(float) #17

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #17

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

declare dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264), i32) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8 signext) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: noreturn
declare dso_local void @_ZSt16__throw_bad_castv() local_unnamed_addr #21

declare dso_local void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570)) local_unnamed_addr #0

declare dso_local i32 @hipMemcpyToSymbol(i8*, i8*, i64, i64, i32) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_fdtd3d.cpp() #8 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #22
  ret void
}

declare dso_local i32 @__hipRegisterFunction(i8**, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32*) local_unnamed_addr

declare dso_local void @__hipRegisterVar(i8**, i8*, i8*, i8*, i32, i64, i32, i32) local_unnamed_addr

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
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (float*, float*, i32, i32, i32)** @_Z23FiniteDifferencesKernelPfPKfiii to i8*), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  tail call void @__hipRegisterVar(i8** %7, i8* bitcast ([5 x float]* @stencil to i8*), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i64 0, i64 0), i32 0, i64 20, i32 1, i32 0)
  %9 = tail call i32 @atexit(void (i8*)* nonnull @__hip_module_dtor)
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
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress norecurse noreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nounwind }
attributes #23 = { cold }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind readonly willreturn }
attributes #26 = { noreturn }

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
!9 = !{!10, !11, i64 256}
!10 = !{!"_ZTS15hipDeviceProp_t", !5, i64 0, !11, i64 256, !11, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !5, i64 284, !5, i64 296, !8, i64 308, !8, i64 312, !8, i64 316, !11, i64 320, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !8, i64 348, !8, i64 352, !12, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !8, i64 372, !11, i64 376, !8, i64 384, !8, i64 388, !8, i64 392, !5, i64 396, !8, i64 652, !8, i64 656, !8, i64 660, !8, i64 664, !8, i64 668, !5, i64 672, !5, i64 680, !4, i64 696, !4, i64 704, !11, i64 712, !11, i64 720, !11, i64 728, !8, i64 736, !8, i64 740, !8, i64 744, !8, i64 748, !8, i64 752, !8, i64 756, !8, i64 760, !8, i64 764, !8, i64 768, !8, i64 772, !8, i64 776, !8, i64 780, !8, i64 784, !8, i64 788}
!11 = !{!"long", !5, i64 0}
!12 = !{!"_ZTS15hipDeviceArch_t", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 2, !8, i64 2, !8, i64 2}
!13 = !{!11, !11, i64 0}
!14 = !{!5, !5, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = !{!20, !8, i64 28}
!20 = !{!"_ZTS17hipFuncAttributes", !8, i64 0, !8, i64 4, !11, i64 8, !11, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !11, i64 48}
!21 = distinct !{!21, !16}
!22 = !{!23, !23, i64 0}
!23 = !{!"float", !5, i64 0}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16, !28}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = distinct !{!31, !16, !32, !28}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = distinct !{!33, !16}
!34 = distinct !{!34, !16}
!35 = !{!36}
!36 = distinct !{!36, !37}
!37 = distinct !{!37, !"LVerDomain"}
!38 = !{!39}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !16, !28}
!41 = distinct !{!41, !30}
!42 = distinct !{!42, !30}
!43 = distinct !{!43, !16, !28}
!44 = !{!45}
!45 = distinct !{!45, !46}
!46 = distinct !{!46, !"LVerDomain"}
!47 = !{!48}
!48 = distinct !{!48, !46}
!49 = distinct !{!49, !16, !28}
!50 = distinct !{!50, !30}
!51 = distinct !{!51, !30}
!52 = distinct !{!52, !16}
!53 = distinct !{!53, !16, !28}
!54 = distinct !{!54, !16}
!55 = distinct !{!55, !16}
!56 = distinct !{!56, !16}
!57 = distinct !{!57, !16}
!58 = !{!59}
!59 = distinct !{!59, !60}
!60 = distinct !{!60, !"LVerDomain"}
!61 = !{!62}
!62 = distinct !{!62, !60}
!63 = distinct !{!63, !16, !28}
!64 = distinct !{!64, !30}
!65 = distinct !{!65, !30}
!66 = !{!67}
!67 = distinct !{!67, !68}
!68 = distinct !{!68, !"LVerDomain"}
!69 = !{!70}
!70 = distinct !{!70, !68}
!71 = distinct !{!71, !16, !28}
!72 = distinct !{!72, !30}
!73 = distinct !{!73, !30}
!74 = distinct !{!74, !16, !28}
!75 = distinct !{!75, !16, !28}
!76 = distinct !{!76, !30}
!77 = distinct !{!77, !16}
!78 = distinct !{!78, !16}
!79 = distinct !{!79, !16}
!80 = !{!81, !81, i64 0}
!81 = !{!"vtable pointer", !6, i64 0}
!82 = !{!83, !4, i64 240}
!83 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !4, i64 216, !5, i64 224, !84, i64 225, !4, i64 232, !4, i64 240, !4, i64 248, !4, i64 256}
!84 = !{!"bool", !5, i64 0}
!85 = !{!86, !5, i64 56}
!86 = !{!"_ZTSSt5ctypeIcE", !4, i64 16, !84, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!87 = !{!88, !90, i64 32}
!88 = !{!"_ZTSSt8ios_base", !11, i64 8, !11, i64 16, !89, i64 24, !90, i64 28, !90, i64 32, !4, i64 40, !91, i64 48, !5, i64 64, !8, i64 192, !4, i64 200, !92, i64 208}
!89 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!90 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!91 = !{!"_ZTSNSt8ios_base6_WordsE", !4, i64 0, !11, i64 8}
!92 = !{!"_ZTSSt6locale", !4, i64 0}
!93 = !{!88, !89, i64 24}
!94 = !{!89, !89, i64 0}
!95 = !{!88, !11, i64 16}
!96 = distinct !{!96, !16, !28}
!97 = distinct !{!97, !30}
!98 = distinct !{!98, !16, !32, !28}
!99 = distinct !{!99, !16}
!100 = !{!101, !4, i64 8}
!101 = !{!"_ZTSZ22_ConvertSMVer2ArchNameiiE13sSMtoArchName", !8, i64 0, !4, i64 8}
!102 = !{!103, !8, i64 4}
!103 = !{!"_ZTSZ19_ConvertSMVer2CoresiiE10sSMtoCores", !8, i64 0, !8, i64 4}
