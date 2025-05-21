; ModuleID = 'scan.cpp'
source_filename = "scan.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct.HIP_vector_type = type { %struct.HIP_vector_base }
%struct.HIP_vector_base = type { %union.anon }
%union.anon = type { <4 x i32> }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sSMtoCores = type { i32, i32 }
%struct.sSMtoArchName = type { i32, i8* }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque
%class.StopWatchLinux = type { %class.StopWatchInterface, %struct.timeval, float, float, i8, i32 }
%class.StopWatchInterface = type { i32 (...)** }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

$_Z5checkI10hipError_tEvT_PKcS3_i = comdat any

$_Z14findCudaDeviceiPPKc = comdat any

$_Z13gpuDeviceIniti = comdat any

$_Z23gpuGetMaxGflopsDeviceIdv = comdat any

$_Z22_ConvertSMVer2ArchNameii = comdat any

$_Z19_ConvertSMVer2Coresii = comdat any

$_ZN14StopWatchLinuxD0Ev = comdat any

$_ZN14StopWatchLinux5startEv = comdat any

$_ZN14StopWatchLinux4stopEv = comdat any

$_ZN14StopWatchLinux5resetEv = comdat any

$_ZN14StopWatchLinux7getTimeEv = comdat any

$_ZN14StopWatchLinux14getAverageTimeEv = comdat any

$_ZN18StopWatchInterfaceD2Ev = comdat any

$_ZTV14StopWatchLinux = comdat any

$_ZTS14StopWatchLinux = comdat any

$_ZTS18StopWatchInterface = comdat any

$_ZTI18StopWatchInterface = comdat any

$_ZTI14StopWatchLinux = comdat any

$__hip_gpubin_handle = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@MAX_BATCH_ELEMENTS = dso_local local_unnamed_addr constant i32 67108864, align 4
@MIN_SHORT_ARRAY_SIZE = dso_local local_unnamed_addr constant i32 4, align 4
@MAX_SHORT_ARRAY_SIZE = dso_local local_unnamed_addr constant i32 1024, align 4
@MIN_LARGE_ARRAY_SIZE = dso_local local_unnamed_addr constant i32 2048, align 4
@MAX_LARGE_ARRAY_SIZE = dso_local local_unnamed_addr constant i32 262144, align 4
@_Z19scanExclusiveSharedP15HIP_vector_typeIjLj4EES1_j = dso_local constant void (%struct.HIP_vector_type*, %struct.HIP_vector_type*, i32)* @_Z34__device_stub__scanExclusiveSharedP15HIP_vector_typeIjLj4EES1_j, align 8
@_Z20scanExclusiveShared2PjS_S_jj = dso_local constant void (i32*, i32*, i32*, i32, i32)* @_Z35__device_stub__scanExclusiveShared2PjS_S_jj, align 8
@_Z13uniformUpdateP15HIP_vector_typeIjLj4EEPj = dso_local constant void (%struct.HIP_vector_type*, i32*)* @_Z28__device_stub__uniformUpdateP15HIP_vector_typeIjLj4EEPj, align 8
@_ZL5d_Buf = internal global i32* null, align 8
@.str = private unnamed_addr constant [89 x i8] c"hipMalloc((void **)&d_Buf, (MAX_BATCH_ELEMENTS / (4 * THREADBLOCK_SIZE)) * sizeof(uint))\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"scan.cpp\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"hipFree(d_Buf)\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"%s Starting...\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"hipMalloc((void **)&d_Input, N * sizeof(uint))\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"hipMalloc((void **)&d_Output, N * sizeof(uint))\00", align 1
@.str.9 = private unnamed_addr constant [69 x i8] c"hipMemcpy(d_Input, h_Input, N * sizeof(uint), hipMemcpyHostToDevice)\00", align 1
@.str.11 = private unnamed_addr constant [69 x i8] c"*** Running GPU scan for short arrays (%d identical iterations)...\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"Running scan for %u elements (%u arrays)...\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"hipDeviceSynchronize()\00", align 1
@.str.16 = private unnamed_addr constant [74 x i8] c"hipMemcpy(h_OutputGPU, d_Output, N * sizeof(uint), hipMemcpyDeviceToHost)\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c" ...Results %s\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"Match\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"DON'T Match !!!\00", align 1
@.str.23 = private unnamed_addr constant [106 x i8] c"scan, Throughput = %.4f MElements/s, Time = %.5f s, Size = %u Elements, NumDevsUsed = %u, Workgroup = %u\0A\00", align 1
@.str.24 = private unnamed_addr constant [68 x i8] c"***Running GPU scan for large arrays (%u identical iterations)...\0A\0A\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"hipFree(d_Output)\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"hipFree(d_Input)\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"factorizationRemainder == 1\00", align 1
@__PRETTY_FUNCTION__.scanExclusiveShort = private unnamed_addr constant [54 x i8] c"size_t scanExclusiveShort(uint *, uint *, uint, uint)\00", align 1
@.str.30 = private unnamed_addr constant [79 x i8] c"(arrayLength >= MIN_SHORT_ARRAY_SIZE) && (arrayLength <= MAX_SHORT_ARRAY_SIZE)\00", align 1
@.str.31 = private unnamed_addr constant [48 x i8] c"(batchSize * arrayLength) <= MAX_BATCH_ELEMENTS\00", align 1
@.str.32 = private unnamed_addr constant [43 x i8] c"(batchSize * arrayLength) % (4 * 256) == 0\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"scanExclusiveShared() execution FAILED\0A\00", align 1
@__PRETTY_FUNCTION__.scanExclusiveLarge = private unnamed_addr constant [54 x i8] c"size_t scanExclusiveLarge(uint *, uint *, uint, uint)\00", align 1
@.str.34 = private unnamed_addr constant [79 x i8] c"(arrayLength >= MIN_LARGE_ARRAY_SIZE) && (arrayLength <= MAX_LARGE_ARRAY_SIZE)\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"scanExclusiveShared2() execution FAILED\0A\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"uniformUpdate() execution FAILED\0A\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"device=\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"Invalid command line parameter\0A \00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"hipSetDevice(devID)\00", align 1
@.str.42 = private unnamed_addr constant [58 x i8] c"/public/home/dtune/zhengh/nvidia_sdk/common/helper_cuda.h\00", align 1
@.str.43 = private unnamed_addr constant [79 x i8] c"hipDeviceGetAttribute(&major, hipDeviceAttributeComputeCapabilityMajor, devID)\00", align 1
@.str.44 = private unnamed_addr constant [79 x i8] c"hipDeviceGetAttribute(&minor, hipDeviceAttributeComputeCapabilityMinor, devID)\00", align 1
@.str.45 = private unnamed_addr constant [52 x i8] c"GPU Device %d: \22%s\22 with compute capability %d.%d\0A\0A\00", align 1
@.str.46 = private unnamed_addr constant [33 x i8] c"hipGetDeviceCount(&device_count)\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.47 = private unnamed_addr constant [57 x i8] c"gpuDeviceInit() CUDA error: no devices supporting CUDA.\0A\00", align 1
@.str.48 = private unnamed_addr constant [47 x i8] c">> %d CUDA capable GPU device(s) detected. <<\0A\00", align 1
@.str.49 = private unnamed_addr constant [61 x i8] c">> gpuDeviceInit (-device=%d) is not a valid GPU device. <<\0A\00", align 1
@.str.50 = private unnamed_addr constant [74 x i8] c"hipDeviceGetAttribute(&computeMode, hipDeviceAttributeComputeMode, devID)\00", align 1
@.str.51 = private unnamed_addr constant [91 x i8] c"Error: device is running in <Compute Mode Prohibited>, no threads can use hipSetDevice().\0A\00", align 1
@.str.52 = private unnamed_addr constant [52 x i8] c"gpuDeviceInit(): GPU device does not support CUDA.\0A\00", align 1
@.str.53 = private unnamed_addr constant [39 x i8] c"gpuDeviceInit() CUDA Device [%d]: \22%s\0A\00", align 1
@.str.54 = private unnamed_addr constant [67 x i8] c"gpuGetMaxGflopsDeviceId() CUDA error: no devices supporting CUDA.\0A\00", align 1
@.str.55 = private unnamed_addr constant [83 x i8] c"hipDeviceGetAttribute(&computeMode, hipDeviceAttributeComputeMode, current_device)\00", align 1
@.str.56 = private unnamed_addr constant [88 x i8] c"hipDeviceGetAttribute(&major, hipDeviceAttributeComputeCapabilityMajor, current_device)\00", align 1
@.str.57 = private unnamed_addr constant [88 x i8] c"hipDeviceGetAttribute(&minor, hipDeviceAttributeComputeCapabilityMinor, current_device)\00", align 1
@.str.58 = private unnamed_addr constant [99 x i8] c"hipDeviceGetAttribute(&multiProcessorCount, hipDeviceAttributeMultiprocessorCount, current_device)\00", align 1
@.str.59 = private unnamed_addr constant [34 x i8] c"CUDA error at %s:%d code=%d(%s) \0A\00", align 1
@.str.60 = private unnamed_addr constant [81 x i8] c"gpuGetMaxGflopsDeviceId() CUDA error: all devices have compute mode prohibited.\0A\00", align 1
@__const._Z19_ConvertSMVer2Coresii.nGpuArchCoresPerSM = private unnamed_addr constant [19 x %struct.sSMtoCores] [%struct.sSMtoCores { i32 48, i32 192 }, %struct.sSMtoCores { i32 50, i32 192 }, %struct.sSMtoCores { i32 53, i32 192 }, %struct.sSMtoCores { i32 55, i32 192 }, %struct.sSMtoCores { i32 80, i32 128 }, %struct.sSMtoCores { i32 82, i32 128 }, %struct.sSMtoCores { i32 83, i32 128 }, %struct.sSMtoCores { i32 96, i32 64 }, %struct.sSMtoCores { i32 97, i32 128 }, %struct.sSMtoCores { i32 98, i32 128 }, %struct.sSMtoCores { i32 112, i32 64 }, %struct.sSMtoCores { i32 114, i32 64 }, %struct.sSMtoCores { i32 117, i32 64 }, %struct.sSMtoCores { i32 128, i32 64 }, %struct.sSMtoCores { i32 134, i32 128 }, %struct.sSMtoCores { i32 135, i32 128 }, %struct.sSMtoCores { i32 137, i32 128 }, %struct.sSMtoCores { i32 144, i32 128 }, %struct.sSMtoCores { i32 -1, i32 -1 }], align 16
@.str.61 = private unnamed_addr constant [69 x i8] c"MapSMtoCores for SM %d.%d is undefined.  Default to use %d Cores/SM\0A\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"Kepler\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"Maxwell\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"Pascal\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"Volta\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"Xavier\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"Turing\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"Ampere\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"Ada\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"Hopper\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"Graphics Device\00", align 1
@__const._Z22_ConvertSMVer2ArchNameii.nGpuArchNameSM = private unnamed_addr constant [19 x %struct.sSMtoArchName] [%struct.sSMtoArchName { i32 48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0) }, %struct.sSMtoArchName { i32 50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0) }, %struct.sSMtoArchName { i32 53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0) }, %struct.sSMtoArchName { i32 55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0) }, %struct.sSMtoArchName { i32 80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0) }, %struct.sSMtoArchName { i32 82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0) }, %struct.sSMtoArchName { i32 83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0) }, %struct.sSMtoArchName { i32 96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0) }, %struct.sSMtoArchName { i32 97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0) }, %struct.sSMtoArchName { i32 98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0) }, %struct.sSMtoArchName { i32 112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0) }, %struct.sSMtoArchName { i32 114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0) }, %struct.sSMtoArchName { i32 117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0) }, %struct.sSMtoArchName { i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0) }, %struct.sSMtoArchName { i32 134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0) }, %struct.sSMtoArchName { i32 135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0) }, %struct.sSMtoArchName { i32 137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0) }, %struct.sSMtoArchName { i32 144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0) }, %struct.sSMtoArchName { i32 -1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i32 0, i32 0) }], align 16
@.str.72 = private unnamed_addr constant [63 x i8] c"MapSMtoArchName for SM %d.%d is undefined.  Default to use %s\0A\00", align 1
@_ZTV14StopWatchLinux = linkonce_odr dso_local unnamed_addr constant { [9 x i8*] } { [9 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI14StopWatchLinux to i8*), i8* bitcast (void (%class.StopWatchInterface*)* @_ZN18StopWatchInterfaceD2Ev to i8*), i8* bitcast (void (%class.StopWatchLinux*)* @_ZN14StopWatchLinuxD0Ev to i8*), i8* bitcast (void (%class.StopWatchLinux*)* @_ZN14StopWatchLinux5startEv to i8*), i8* bitcast (void (%class.StopWatchLinux*)* @_ZN14StopWatchLinux4stopEv to i8*), i8* bitcast (void (%class.StopWatchLinux*)* @_ZN14StopWatchLinux5resetEv to i8*), i8* bitcast (float (%class.StopWatchLinux*)* @_ZN14StopWatchLinux7getTimeEv to i8*), i8* bitcast (float (%class.StopWatchLinux*)* @_ZN14StopWatchLinux14getAverageTimeEv to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTS14StopWatchLinux = linkonce_odr dso_local constant [17 x i8] c"14StopWatchLinux\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTS18StopWatchInterface = linkonce_odr dso_local constant [21 x i8] c"18StopWatchInterface\00", comdat, align 1
@_ZTI18StopWatchInterface = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @_ZTS18StopWatchInterface, i32 0, i32 0) }, comdat, align 8
@_ZTI14StopWatchLinux = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @_ZTS14StopWatchLinux, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI18StopWatchInterface to i8*) }, comdat, align 8
@.str.73 = private unnamed_addr constant [56 x i8] c"%s(%i) : getLastCudaError() CUDA error : %s : (%d) %s.\0A\00", align 1
@.str.74 = private unnamed_addr constant [39 x i8] c"CUDA error at %s:%d code=%d(%s) \22%s\22 \0A\00", align 1
@0 = private unnamed_addr constant [53 x i8] c"_Z19scanExclusiveSharedP15HIP_vector_typeIjLj4EES1_j\00", align 1
@1 = private unnamed_addr constant [33 x i8] c"_Z20scanExclusiveShared2PjS_S_jj\00", align 1
@2 = private unnamed_addr constant [45 x i8] c"_Z13uniformUpdateP15HIP_vector_typeIjLj4EEPj\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_scan.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]
@str = private unnamed_addr constant [43 x i8] c"Allocating and initializing host arrays...\00", align 1
@str.75 = private unnamed_addr constant [43 x i8] c"Allocating and initializing CUDA arrays...\00", align 1
@str.76 = private unnamed_addr constant [29 x i8] c"Initializing CUDA-C scan...\0A\00", align 1
@str.77 = private unnamed_addr constant [17 x i8] c"Shutting down...\00", align 1
@str.80 = private unnamed_addr constant [23 x i8] c"...scanExclusiveHost()\00", align 1
@str.82 = private unnamed_addr constant [26 x i8] c"Validating the results...\00", align 1
@str.83 = private unnamed_addr constant [28 x i8] c"...reading back GPU results\00", align 1
@str.84 = private unnamed_addr constant [24 x i8] c" ...scanExclusiveHost()\00", align 1
@str.85 = private unnamed_addr constant [26 x i8] c" ...comparing the results\00", align 1
@str.86 = private unnamed_addr constant [11 x i8] c"exiting...\00", align 1

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: norecurse uwtable
define dso_local void @_Z34__device_stub__scanExclusiveSharedP15HIP_vector_typeIjLj4EES1_j(%struct.HIP_vector_type* %0, %struct.HIP_vector_type* %1, i32 %2) #3 {
  %4 = alloca %struct.HIP_vector_type*, align 8
  %5 = alloca %struct.HIP_vector_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.HIP_vector_type* %0, %struct.HIP_vector_type** %4, align 8, !tbaa !3
  store %struct.HIP_vector_type* %1, %struct.HIP_vector_type** %5, align 8, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !7
  %11 = alloca [3 x i8*], align 16
  %12 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %13 = bitcast [3 x i8*]* %11 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %4, %struct.HIP_vector_type*** %13, align 16
  %14 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 1
  %15 = bitcast i8** %14 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %5, %struct.HIP_vector_type*** %15, align 8
  %16 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 2
  %17 = bitcast i8** %16 to i32**
  store i32* %6, i32** %17, align 16
  %18 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %7, %struct.dim3* nonnull %8, i64* nonnull %9, i8** nonnull %10)
  %19 = load i64, i64* %9, align 8
  %20 = bitcast i8** %10 to %struct.ihipStream_t**
  %21 = load %struct.ihipStream_t*, %struct.ihipStream_t** %20, align 8
  %22 = bitcast %struct.dim3* %7 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.dim3, %struct.dim3* %7, i64 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = bitcast %struct.dim3* %8 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.dim3, %struct.dim3* %8, i64 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @hipLaunchKernel(i8* bitcast (void (%struct.HIP_vector_type*, %struct.HIP_vector_type*, i32)** @_Z19scanExclusiveSharedP15HIP_vector_typeIjLj4EES1_j to i8*), i64 %23, i32 %25, i64 %27, i32 %29, i8** nonnull %12, i64 %19, %struct.ihipStream_t* %21)
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: norecurse uwtable
define dso_local void @_Z35__device_stub__scanExclusiveShared2PjS_S_jj(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4) #3 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8, !tbaa !3
  store i32* %1, i32** %7, align 8, !tbaa !3
  store i32* %2, i32** %8, align 8, !tbaa !3
  store i32 %3, i32* %9, align 4, !tbaa !7
  store i32 %4, i32* %10, align 4, !tbaa !7
  %15 = alloca [5 x i8*], align 16
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 0
  %17 = bitcast [5 x i8*]* %15 to i32***
  store i32** %6, i32*** %17, align 16
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 1
  %19 = bitcast i8** %18 to i32***
  store i32** %7, i32*** %19, align 8
  %20 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 2
  %21 = bitcast i8** %20 to i32***
  store i32** %8, i32*** %21, align 16
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
  %38 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32*, i32, i32)** @_Z20scanExclusiveShared2PjS_S_jj to i8*), i64 %31, i32 %33, i64 %35, i32 %37, i8** nonnull %16, i64 %27, %struct.ihipStream_t* %29)
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local void @_Z28__device_stub__uniformUpdateP15HIP_vector_typeIjLj4EEPj(%struct.HIP_vector_type* %0, i32* %1) #3 {
  %3 = alloca %struct.HIP_vector_type*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dim3, align 8
  %6 = alloca %struct.dim3, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.HIP_vector_type* %0, %struct.HIP_vector_type** %3, align 8, !tbaa !3
  store i32* %1, i32** %4, align 8, !tbaa !3
  %9 = alloca [2 x i8*], align 16
  %10 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %11 = bitcast [2 x i8*]* %9 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %3, %struct.HIP_vector_type*** %11, align 16
  %12 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 1
  %13 = bitcast i8** %12 to i32***
  store i32** %4, i32*** %13, align 8
  %14 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %5, %struct.dim3* nonnull %6, i64* nonnull %7, i8** nonnull %8)
  %15 = load i64, i64* %7, align 8
  %16 = bitcast i8** %8 to %struct.ihipStream_t**
  %17 = load %struct.ihipStream_t*, %struct.ihipStream_t** %16, align 8
  %18 = bitcast %struct.dim3* %5 to i64*
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.dim3, %struct.dim3* %5, i64 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = bitcast %struct.dim3* %6 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.dim3, %struct.dim3* %6, i64 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @hipLaunchKernel(i8* bitcast (void (%struct.HIP_vector_type*, i32*)** @_Z13uniformUpdateP15HIP_vector_typeIjLj4EEPj to i8*), i64 %19, i32 %21, i64 %23, i32 %25, i8** nonnull %10, i64 %15, %struct.ihipStream_t* %17)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @initScan() local_unnamed_addr #4 {
  %1 = tail call i32 @hipMalloc(i8** bitcast (i32** @_ZL5d_Buf to i8**), i64 262144)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %5 = tail call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %1)
  %6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 197, i32 %1, i8* %5, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0)) #21
  tail call void @exit(i32 1) #22
  unreachable

7:                                                ; preds = %0
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %0, i8* %1, i8* %2, i32 %3) local_unnamed_addr #4 comdat {
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %8 = tail call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %0)
  %9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i8* %2, i32 %3, i32 %0, i8* %8, i8* %1) #21
  tail call void @exit(i32 1) #22
  unreachable

10:                                               ; preds = %4
  ret void
}

declare dso_local i32 @hipMalloc(i8**, i64) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @closeScan() local_unnamed_addr #4 {
  %1 = load i8*, i8** bitcast (i32** @_ZL5d_Buf to i8**), align 8, !tbaa !3
  %2 = tail call i32 @hipFree(i8* %1)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %6 = tail call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %2)
  %7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 202, i32 %2, i8* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)) #21
  tail call void @exit(i32 1) #22
  unreachable

8:                                                ; preds = %0
  ret void
}

declare dso_local i32 @hipFree(i8*) local_unnamed_addr #0

; Function Attrs: norecurse noreturn uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #5 personality i32 (...)* @__gxx_personality_v0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = load i8*, i8** %1, align 8, !tbaa !3
  %6 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %5)
  %7 = tail call i32 @_Z14findCudaDeviceiPPKc(i32 %0, i8** nonnull %1)
  %8 = bitcast i32** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #23
  %9 = bitcast i32** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #23
  %10 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([43 x i8], [43 x i8]* @str, i64 0, i64 0))
  %11 = tail call noalias nonnull dereferenceable(40) i8* @_Znwm(i64 40) #24
  %12 = bitcast i8* %11 to %class.StopWatchLinux*
  %13 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %12, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [9 x i8*] }, { [9 x i8*] }* @_ZTV14StopWatchLinux, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %13, align 8, !tbaa !9
  %14 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %12, i64 0, i32 1
  %15 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %12, i64 0, i32 5
  store i32 0, i32* %15, align 4, !tbaa !11
  %16 = bitcast %struct.timeval* %14 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(25) %16, i8 0, i64 25, i1 false)
  %17 = tail call noalias align 16 dereferenceable_or_null(27262976) i8* @malloc(i64 27262976) #23
  %18 = bitcast i8* %17 to i32*
  %19 = tail call noalias align 16 dereferenceable_or_null(27262976) i8* @malloc(i64 27262976) #23
  %20 = tail call noalias align 16 dereferenceable_or_null(27262976) i8* @malloc(i64 27262976) #23
  tail call void @srand(i32 2009) #23
  br label %21

21:                                               ; preds = %2, %21
  %22 = phi i64 [ 0, %2 ], [ %26, %21 ]
  %23 = tail call i32 @rand() #23
  %24 = srem i32 %23, 1000
  %25 = getelementptr inbounds i32, i32* %18, i64 %22
  store i32 %24, i32* %25, align 4, !tbaa !7
  %26 = add nuw nsw i64 %22, 1
  %27 = icmp eq i64 %26, 6815744
  br i1 %27, label %28, label %21, !llvm.loop !17

28:                                               ; preds = %21
  %29 = bitcast i8* %19 to i32*
  %30 = load i32, i32* %18, align 16, !tbaa !7
  %31 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %30)
  %32 = getelementptr inbounds i32, i32* %18, i64 1
  %33 = load i32, i32* %32, align 4, !tbaa !7
  %34 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %33)
  %35 = getelementptr inbounds i32, i32* %18, i64 2
  %36 = load i32, i32* %35, align 8, !tbaa !7
  %37 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %36)
  %38 = getelementptr inbounds i32, i32* %18, i64 3
  %39 = load i32, i32* %38, align 4, !tbaa !7
  %40 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %39)
  %41 = getelementptr inbounds i32, i32* %18, i64 4
  %42 = load i32, i32* %41, align 16, !tbaa !7
  %43 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %42)
  %44 = getelementptr inbounds i32, i32* %18, i64 5
  %45 = load i32, i32* %44, align 4, !tbaa !7
  %46 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %45)
  %47 = getelementptr inbounds i32, i32* %18, i64 6
  %48 = load i32, i32* %47, align 8, !tbaa !7
  %49 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %48)
  %50 = getelementptr inbounds i32, i32* %18, i64 7
  %51 = load i32, i32* %50, align 4, !tbaa !7
  %52 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %51)
  %53 = getelementptr inbounds i32, i32* %18, i64 8
  %54 = load i32, i32* %53, align 16, !tbaa !7
  %55 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %54)
  %56 = getelementptr inbounds i32, i32* %18, i64 9
  %57 = load i32, i32* %56, align 4, !tbaa !7
  %58 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  %59 = getelementptr inbounds i32, i32* %18, i64 10
  %60 = load i32, i32* %59, align 8, !tbaa !7
  %61 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %60)
  %62 = getelementptr inbounds i32, i32* %18, i64 11
  %63 = load i32, i32* %62, align 4, !tbaa !7
  %64 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %63)
  %65 = getelementptr inbounds i32, i32* %18, i64 12
  %66 = load i32, i32* %65, align 16, !tbaa !7
  %67 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  %68 = getelementptr inbounds i32, i32* %18, i64 13
  %69 = load i32, i32* %68, align 4, !tbaa !7
  %70 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %69)
  %71 = getelementptr inbounds i32, i32* %18, i64 14
  %72 = load i32, i32* %71, align 8, !tbaa !7
  %73 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  %74 = getelementptr inbounds i32, i32* %18, i64 15
  %75 = load i32, i32* %74, align 4, !tbaa !7
  %76 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  %77 = getelementptr inbounds i32, i32* %18, i64 16
  %78 = load i32, i32* %77, align 16, !tbaa !7
  %79 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  %80 = getelementptr inbounds i32, i32* %18, i64 17
  %81 = load i32, i32* %80, align 4, !tbaa !7
  %82 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  %83 = getelementptr inbounds i32, i32* %18, i64 18
  %84 = load i32, i32* %83, align 8, !tbaa !7
  %85 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %84)
  %86 = getelementptr inbounds i32, i32* %18, i64 19
  %87 = load i32, i32* %86, align 4, !tbaa !7
  %88 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  %89 = getelementptr %class.StopWatchLinux, %class.StopWatchLinux* %12, i64 0, i32 0
  %90 = bitcast i8* %20 to i32*
  %91 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([43 x i8], [43 x i8]* @str.75, i64 0, i64 0))
  %92 = bitcast i32** %3 to i8**
  %93 = call i32 @hipMalloc(i8** nonnull %92, i64 27262976)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %28
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %97 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %93)
  %98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 247, i32 %93, i8* %97, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0)) #21
  call void @exit(i32 1) #22
  unreachable

99:                                               ; preds = %28
  %100 = bitcast i32** %4 to i8**
  %101 = call i32 @hipMalloc(i8** nonnull %100, i64 27262976)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %105 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %101)
  %106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 248, i32 %101, i8* %105, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0)) #21
  call void @exit(i32 1) #22
  unreachable

107:                                              ; preds = %99
  %108 = load i8*, i8** %92, align 8, !tbaa !3
  %109 = call i32 @hipMemcpy(i8* %108, i8* nonnull %17, i64 27262976, i32 1)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %113 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %109)
  %114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 250, i32 %109, i8* %113, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0)) #21
  call void @exit(i32 1) #22
  unreachable

115:                                              ; preds = %107
  %116 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @str.76, i64 0, i64 0))
  %117 = call i32 @hipMalloc(i8** bitcast (i32** @_ZL5d_Buf to i8**), i64 262144)
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %121 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %117)
  %122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %120, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 197, i32 %117, i8* %121, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0)) #21
  call void @exit(i32 1) #22
  unreachable

123:                                              ; preds = %115
  %124 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([69 x i8], [69 x i8]* @.str.11, i64 0, i64 0), i32 100)
  %125 = bitcast i8* %11 to void (%class.StopWatchInterface*)***
  %126 = bitcast i8* %11 to float (%class.StopWatchInterface*)***
  br label %149

127:                                              ; preds = %311, %303
  %128 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([68 x i8], [68 x i8]* @.str.24, i64 0, i64 0), i32 100)
  %129 = getelementptr inbounds i32, i32* %29, i64 2045
  %130 = getelementptr inbounds i32, i32* %29, i64 2046
  %131 = getelementptr inbounds i32, i32* %29, i64 2047
  %132 = getelementptr inbounds i32, i32* %29, i64 2048
  %133 = getelementptr inbounds i32, i32* %29, i64 2049
  %134 = getelementptr inbounds i32, i32* %29, i64 2050
  %135 = getelementptr inbounds i32, i32* %29, i64 2051
  %136 = getelementptr inbounds i32, i32* %29, i64 2052
  %137 = getelementptr inbounds i32, i32* %29, i64 2053
  %138 = getelementptr inbounds i32, i32* %29, i64 2054
  %139 = getelementptr inbounds i32, i32* %29, i64 4090
  %140 = getelementptr inbounds i32, i32* %29, i64 4091
  %141 = getelementptr inbounds i32, i32* %29, i64 4092
  %142 = getelementptr inbounds i32, i32* %29, i64 4093
  %143 = getelementptr inbounds i32, i32* %29, i64 4094
  %144 = getelementptr inbounds i32, i32* %29, i64 4095
  %145 = getelementptr inbounds i32, i32* %29, i64 4096
  %146 = getelementptr inbounds i32, i32* %29, i64 4097
  %147 = getelementptr inbounds i32, i32* %29, i64 4098
  %148 = getelementptr inbounds i32, i32* %29, i64 4099
  br label %325

149:                                              ; preds = %123, %311
  %150 = phi i32 [ 4, %123 ], [ %312, %311 ]
  %151 = phi i32 [ 1, %123 ], [ %301, %311 ]
  %152 = udiv i32 6815744, %150
  %153 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i32 %150, i32 %152)
  %154 = call i32 @hipDeviceSynchronize()
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %149
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %158 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %154)
  %159 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %157, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 266, i32 %154, i8* %158, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0)) #21
  call void @exit(i32 1) #22
  unreachable

160:                                              ; preds = %149
  %161 = load void (%class.StopWatchInterface*)**, void (%class.StopWatchInterface*)*** %125, align 8, !tbaa !9
  %162 = getelementptr inbounds void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %161, i64 4
  %163 = load void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %162, align 8
  call void %163(%class.StopWatchInterface* nonnull align 8 dereferenceable(8) %89)
  %164 = load void (%class.StopWatchInterface*)**, void (%class.StopWatchInterface*)*** %125, align 8, !tbaa !9
  %165 = getelementptr inbounds void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %164, i64 2
  %166 = load void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %165, align 8
  call void %166(%class.StopWatchInterface* nonnull align 8 dereferenceable(8) %89)
  br label %252

167:                                              ; preds = %252
  %168 = call i32 @hipDeviceSynchronize()
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %167
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %172 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %168)
  %173 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %171, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 275, i32 %168, i8* %172, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0)) #21
  call void @exit(i32 1) #22
  unreachable

174:                                              ; preds = %167
  %175 = load void (%class.StopWatchInterface*)**, void (%class.StopWatchInterface*)*** %125, align 8, !tbaa !9
  %176 = getelementptr inbounds void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %175, i64 3
  %177 = load void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %176, align 8
  call void %177(%class.StopWatchInterface* nonnull align 8 dereferenceable(8) %89)
  %178 = load float (%class.StopWatchInterface*)**, float (%class.StopWatchInterface*)*** %126, align 8, !tbaa !9
  %179 = getelementptr inbounds float (%class.StopWatchInterface*)*, float (%class.StopWatchInterface*)** %178, i64 5
  %180 = load float (%class.StopWatchInterface*)*, float (%class.StopWatchInterface*)** %179, align 8
  %181 = call contract float %180(%class.StopWatchInterface* nonnull align 8 dereferenceable(8) %89)
  %182 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @str.82, i64 0, i64 0))
  %183 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @str.83, i64 0, i64 0))
  %184 = load i8*, i8** %100, align 8, !tbaa !3
  %185 = call i32 @hipMemcpy(i8* %20, i8* %184, i64 27262976, i32 2)
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %174
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %189 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %185)
  %190 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %188, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 282, i32 %185, i8* %189, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.16, i64 0, i64 0)) #21
  call void @exit(i32 1) #22
  unreachable

191:                                              ; preds = %174
  %192 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @str.84, i64 0, i64 0))
  %193 = zext i32 %150 to i64
  %194 = icmp eq i32 %150, 4
  %195 = add nsw i64 %193, -4
  br label %196

196:                                              ; preds = %191, %242
  %197 = phi i32 [ %243, %242 ], [ 0, %191 ]
  %198 = phi i32* [ %245, %242 ], [ %29, %191 ]
  %199 = phi i32* [ %244, %242 ], [ %18, %191 ]
  store i32 0, i32* %198, align 4, !tbaa !7
  br i1 %194, label %227, label %200

200:                                              ; preds = %196, %200
  %201 = phi i32 [ %222, %200 ], [ 0, %196 ]
  %202 = phi i64 [ %224, %200 ], [ 1, %196 ]
  %203 = phi i64 [ %225, %200 ], [ 0, %196 ]
  %204 = add nsw i64 %202, -1
  %205 = getelementptr inbounds i32, i32* %199, i64 %204
  %206 = load i32, i32* %205, align 4, !tbaa !7
  %207 = add i32 %206, %201
  %208 = getelementptr inbounds i32, i32* %198, i64 %202
  store i32 %207, i32* %208, align 4, !tbaa !7
  %209 = add nuw nsw i64 %202, 1
  %210 = getelementptr inbounds i32, i32* %199, i64 %202
  %211 = load i32, i32* %210, align 4, !tbaa !7
  %212 = add i32 %211, %207
  %213 = getelementptr inbounds i32, i32* %198, i64 %209
  store i32 %212, i32* %213, align 4, !tbaa !7
  %214 = add nuw nsw i64 %202, 2
  %215 = getelementptr inbounds i32, i32* %199, i64 %209
  %216 = load i32, i32* %215, align 4, !tbaa !7
  %217 = add i32 %216, %212
  %218 = getelementptr inbounds i32, i32* %198, i64 %214
  store i32 %217, i32* %218, align 4, !tbaa !7
  %219 = add nuw nsw i64 %202, 3
  %220 = getelementptr inbounds i32, i32* %199, i64 %214
  %221 = load i32, i32* %220, align 4, !tbaa !7
  %222 = add i32 %221, %217
  %223 = getelementptr inbounds i32, i32* %198, i64 %219
  store i32 %222, i32* %223, align 4, !tbaa !7
  %224 = add nuw nsw i64 %202, 4
  %225 = add nuw i64 %203, 4
  %226 = icmp eq i64 %225, %195
  br i1 %226, label %227, label %200, !llvm.loop !19

227:                                              ; preds = %196, %200
  %228 = phi i32 [ 0, %196 ], [ %222, %200 ]
  %229 = phi i64 [ 1, %196 ], [ %224, %200 ]
  br label %230

230:                                              ; preds = %230, %227
  %231 = phi i32 [ %228, %227 ], [ %237, %230 ]
  %232 = phi i64 [ %229, %227 ], [ %239, %230 ]
  %233 = phi i64 [ 0, %227 ], [ %240, %230 ]
  %234 = add nsw i64 %232, -1
  %235 = getelementptr inbounds i32, i32* %199, i64 %234
  %236 = load i32, i32* %235, align 4, !tbaa !7
  %237 = add i32 %236, %231
  %238 = getelementptr inbounds i32, i32* %198, i64 %232
  store i32 %237, i32* %238, align 4, !tbaa !7
  %239 = add nuw nsw i64 %232, 1
  %240 = add i64 %233, 1
  %241 = icmp eq i64 %240, 3
  br i1 %241, label %242, label %230, !llvm.loop !20

242:                                              ; preds = %230
  %243 = add nuw nsw i32 %197, 1
  %244 = getelementptr inbounds i32, i32* %199, i64 %193
  %245 = getelementptr inbounds i32, i32* %198, i64 %193
  %246 = icmp eq i32 %243, %152
  br i1 %246, label %247, label %196, !llvm.loop !22

247:                                              ; preds = %242
  %248 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @str.85, i64 0, i64 0))
  %249 = load i32, i32* %29, align 16, !tbaa !7
  %250 = load i32, i32* %90, align 16, !tbaa !7
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %259, label %294

252:                                              ; preds = %160, %252
  %253 = phi i32 [ 0, %160 ], [ %257, %252 ]
  %254 = load i32*, i32** %4, align 8, !tbaa !3
  %255 = load i32*, i32** %3, align 8, !tbaa !3
  %256 = call i64 @scanExclusiveShort(i32* %254, i32* %255, i32 %152, i32 %150)
  %257 = add nuw nsw i32 %253, 1
  %258 = icmp eq i32 %257, 100
  br i1 %258, label %167, label %252, !llvm.loop !23

259:                                              ; preds = %247, %284
  %260 = phi i64 [ %282, %284 ], [ 0, %247 ]
  %261 = or i64 %260, 1
  %262 = getelementptr inbounds i32, i32* %29, i64 %261
  %263 = load i32, i32* %262, align 4, !tbaa !7
  %264 = getelementptr inbounds i32, i32* %90, i64 %261
  %265 = load i32, i32* %264, align 4, !tbaa !7
  %266 = icmp eq i32 %263, %265
  br i1 %266, label %267, label %294, !llvm.loop !24

267:                                              ; preds = %259
  %268 = or i64 %260, 2
  %269 = getelementptr inbounds i32, i32* %29, i64 %268
  %270 = load i32, i32* %269, align 8, !tbaa !7
  %271 = getelementptr inbounds i32, i32* %90, i64 %268
  %272 = load i32, i32* %271, align 8, !tbaa !7
  %273 = icmp eq i32 %270, %272
  br i1 %273, label %274, label %294, !llvm.loop !24

274:                                              ; preds = %267
  %275 = or i64 %260, 3
  %276 = getelementptr inbounds i32, i32* %29, i64 %275
  %277 = load i32, i32* %276, align 4, !tbaa !7
  %278 = getelementptr inbounds i32, i32* %90, i64 %275
  %279 = load i32, i32* %278, align 4, !tbaa !7
  %280 = icmp eq i32 %277, %279
  br i1 %280, label %281, label %294, !llvm.loop !24

281:                                              ; preds = %274
  %282 = add nuw nsw i64 %260, 4
  %283 = icmp eq i64 %282, 6815744
  br i1 %283, label %292, label %284, !llvm.loop !24

284:                                              ; preds = %281
  %285 = getelementptr inbounds i32, i32* %29, i64 %282
  %286 = load i32, i32* %285, align 16, !tbaa !7
  %287 = getelementptr inbounds i32, i32* %90, i64 %282
  %288 = load i32, i32* %287, align 16, !tbaa !7
  %289 = icmp eq i32 %286, %288
  br i1 %289, label %259, label %290, !llvm.loop !24

290:                                              ; preds = %284
  %291 = icmp ult i64 %275, 6815743
  br label %294

292:                                              ; preds = %281
  %293 = icmp ult i64 %275, 6815743
  br label %294

294:                                              ; preds = %290, %292, %274, %267, %259, %247
  %295 = phi i1 [ true, %247 ], [ %291, %290 ], [ %293, %292 ], [ true, %274 ], [ true, %267 ], [ true, %259 ]
  %296 = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), %247 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), %290 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), %292 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), %274 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), %267 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), %259 ]
  %297 = xor i1 %295, true
  %298 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* nonnull %296)
  %299 = icmp ne i32 %151, 0
  %300 = select i1 %299, i1 %297, i1 false
  %301 = zext i1 %300 to i32
  %302 = icmp eq i32 %150, 1024
  br i1 %302, label %303, label %311

303:                                              ; preds = %294
  %304 = fpext float %181 to double
  %305 = fmul contract double %304, 1.000000e-03
  %306 = fdiv contract double %305, 1.000000e+02
  %307 = call i32 @putchar(i32 10)
  %308 = fdiv contract double 1.024000e-03, %306
  %309 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([106 x i8], [106 x i8]* @.str.23, i64 0, i64 0), double %308, double %306, i32 1024, i32 1, i32 256)
  %310 = call i32 @putchar(i32 10)
  br label %127

311:                                              ; preds = %294
  %312 = shl i32 %150, 1
  %313 = icmp ult i32 %312, 1025
  br i1 %313, label %149, label %127, !llvm.loop !25

314:                                              ; preds = %522, %514
  %315 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @str.77, i64 0, i64 0))
  call void @closeScan()
  %316 = load i8*, i8** %100, align 8, !tbaa !3
  %317 = call i32 @hipFree(i8* %316)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %317, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 386)
  %318 = load i8*, i8** %92, align 8, !tbaa !3
  %319 = call i32 @hipFree(i8* %318)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %319, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 387)
  %320 = load void (%class.StopWatchInterface*)**, void (%class.StopWatchInterface*)*** %125, align 8, !tbaa !9
  %321 = getelementptr inbounds void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %320, i64 1
  %322 = load void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %321, align 8
  call void %322(%class.StopWatchInterface* nonnull align 8 dereferenceable(8) %89) #23
  %323 = xor i1 %512, true
  %324 = zext i1 %323 to i32
  call void @exit(i32 %324) #22
  unreachable

325:                                              ; preds = %127, %522
  %326 = phi i32 [ 2048, %127 ], [ %524, %522 ]
  %327 = phi i32 [ %301, %127 ], [ %523, %522 ]
  %328 = udiv i32 6815744, %326
  %329 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i32 %326, i32 %328)
  %330 = call i32 @hipDeviceSynchronize()
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %336, label %332

332:                                              ; preds = %325
  %333 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %334 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %330)
  %335 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %333, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 327, i32 %330, i8* %334, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0)) #21
  call void @exit(i32 1) #22
  unreachable

336:                                              ; preds = %325
  %337 = load void (%class.StopWatchInterface*)**, void (%class.StopWatchInterface*)*** %125, align 8, !tbaa !9
  %338 = getelementptr inbounds void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %337, i64 4
  %339 = load void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %338, align 8
  call void %339(%class.StopWatchInterface* nonnull align 8 dereferenceable(8) %89)
  %340 = load void (%class.StopWatchInterface*)**, void (%class.StopWatchInterface*)*** %125, align 8, !tbaa !9
  %341 = getelementptr inbounds void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %340, i64 2
  %342 = load void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %341, align 8
  call void %342(%class.StopWatchInterface* nonnull align 8 dereferenceable(8) %89)
  br label %464

343:                                              ; preds = %464
  %344 = call i32 @hipDeviceSynchronize()
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %350, label %346

346:                                              ; preds = %343
  %347 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %348 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %344)
  %349 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %347, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 336, i32 %344, i8* %348, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0)) #21
  call void @exit(i32 1) #22
  unreachable

350:                                              ; preds = %343
  %351 = load void (%class.StopWatchInterface*)**, void (%class.StopWatchInterface*)*** %125, align 8, !tbaa !9
  %352 = getelementptr inbounds void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %351, i64 3
  %353 = load void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %352, align 8
  call void %353(%class.StopWatchInterface* nonnull align 8 dereferenceable(8) %89)
  %354 = load float (%class.StopWatchInterface*)**, float (%class.StopWatchInterface*)*** %126, align 8, !tbaa !9
  %355 = getelementptr inbounds float (%class.StopWatchInterface*)*, float (%class.StopWatchInterface*)** %354, i64 5
  %356 = load float (%class.StopWatchInterface*)*, float (%class.StopWatchInterface*)** %355, align 8
  %357 = call contract float %356(%class.StopWatchInterface* nonnull align 8 dereferenceable(8) %89)
  %358 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @str.82, i64 0, i64 0))
  %359 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @str.83, i64 0, i64 0))
  %360 = load i8*, i8** %100, align 8, !tbaa !3
  %361 = call i32 @hipMemcpy(i8* %20, i8* %360, i64 27262976, i32 2)
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %367, label %363

363:                                              ; preds = %350
  %364 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %365 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %361)
  %366 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %364, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 343, i32 %361, i8* %365, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.16, i64 0, i64 0)) #21
  call void @exit(i32 1) #22
  unreachable

367:                                              ; preds = %350
  %368 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @str.80, i64 0, i64 0))
  %369 = zext i32 %326 to i64
  %370 = add nsw i64 %369, -4
  br label %371

371:                                              ; preds = %367, %414
  %372 = phi i32 [ %415, %414 ], [ 0, %367 ]
  %373 = phi i32* [ %417, %414 ], [ %29, %367 ]
  %374 = phi i32* [ %416, %414 ], [ %18, %367 ]
  store i32 0, i32* %373, align 4, !tbaa !7
  br label %375

375:                                              ; preds = %375, %371
  %376 = phi i32 [ 0, %371 ], [ %397, %375 ]
  %377 = phi i64 [ 1, %371 ], [ %399, %375 ]
  %378 = phi i64 [ 0, %371 ], [ %400, %375 ]
  %379 = add nsw i64 %377, -1
  %380 = getelementptr inbounds i32, i32* %374, i64 %379
  %381 = load i32, i32* %380, align 4, !tbaa !7
  %382 = add i32 %381, %376
  %383 = getelementptr inbounds i32, i32* %373, i64 %377
  store i32 %382, i32* %383, align 4, !tbaa !7
  %384 = add nuw nsw i64 %377, 1
  %385 = getelementptr inbounds i32, i32* %374, i64 %377
  %386 = load i32, i32* %385, align 4, !tbaa !7
  %387 = add i32 %386, %382
  %388 = getelementptr inbounds i32, i32* %373, i64 %384
  store i32 %387, i32* %388, align 4, !tbaa !7
  %389 = add nuw nsw i64 %377, 2
  %390 = getelementptr inbounds i32, i32* %374, i64 %384
  %391 = load i32, i32* %390, align 4, !tbaa !7
  %392 = add i32 %391, %387
  %393 = getelementptr inbounds i32, i32* %373, i64 %389
  store i32 %392, i32* %393, align 4, !tbaa !7
  %394 = add nuw nsw i64 %377, 3
  %395 = getelementptr inbounds i32, i32* %374, i64 %389
  %396 = load i32, i32* %395, align 4, !tbaa !7
  %397 = add i32 %396, %392
  %398 = getelementptr inbounds i32, i32* %373, i64 %394
  store i32 %397, i32* %398, align 4, !tbaa !7
  %399 = add nuw nsw i64 %377, 4
  %400 = add nuw nsw i64 %378, 4
  %401 = icmp eq i64 %400, %370
  br i1 %401, label %402, label %375, !llvm.loop !19

402:                                              ; preds = %375, %402
  %403 = phi i32 [ %409, %402 ], [ %397, %375 ]
  %404 = phi i64 [ %411, %402 ], [ %399, %375 ]
  %405 = phi i64 [ %412, %402 ], [ 0, %375 ]
  %406 = add nsw i64 %404, -1
  %407 = getelementptr inbounds i32, i32* %374, i64 %406
  %408 = load i32, i32* %407, align 4, !tbaa !7
  %409 = add i32 %408, %403
  %410 = getelementptr inbounds i32, i32* %373, i64 %404
  store i32 %409, i32* %410, align 4, !tbaa !7
  %411 = add nuw nsw i64 %404, 1
  %412 = add i64 %405, 1
  %413 = icmp eq i64 %412, 3
  br i1 %413, label %414, label %402, !llvm.loop !26

414:                                              ; preds = %402
  %415 = add nuw nsw i32 %372, 1
  %416 = getelementptr inbounds i32, i32* %374, i64 %369
  %417 = getelementptr inbounds i32, i32* %373, i64 %369
  %418 = icmp eq i32 %415, %328
  br i1 %418, label %419, label %371, !llvm.loop !22

419:                                              ; preds = %414
  %420 = load i32, i32* %129, align 4, !tbaa !7
  %421 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %420)
  %422 = load i32, i32* %130, align 8, !tbaa !7
  %423 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %422)
  %424 = load i32, i32* %131, align 4, !tbaa !7
  %425 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %424)
  %426 = load i32, i32* %132, align 16, !tbaa !7
  %427 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %426)
  %428 = load i32, i32* %133, align 4, !tbaa !7
  %429 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %428)
  %430 = load i32, i32* %134, align 8, !tbaa !7
  %431 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %430)
  %432 = load i32, i32* %135, align 4, !tbaa !7
  %433 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %432)
  %434 = load i32, i32* %136, align 16, !tbaa !7
  %435 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %434)
  %436 = load i32, i32* %137, align 4, !tbaa !7
  %437 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %436)
  %438 = load i32, i32* %138, align 8, !tbaa !7
  %439 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %438)
  %440 = load i32, i32* %139, align 8, !tbaa !7
  %441 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %440)
  %442 = load i32, i32* %140, align 4, !tbaa !7
  %443 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %442)
  %444 = load i32, i32* %141, align 16, !tbaa !7
  %445 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %444)
  %446 = load i32, i32* %142, align 4, !tbaa !7
  %447 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %446)
  %448 = load i32, i32* %143, align 8, !tbaa !7
  %449 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %448)
  %450 = load i32, i32* %144, align 4, !tbaa !7
  %451 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %450)
  %452 = load i32, i32* %145, align 16, !tbaa !7
  %453 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %452)
  %454 = load i32, i32* %146, align 4, !tbaa !7
  %455 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %454)
  %456 = load i32, i32* %147, align 8, !tbaa !7
  %457 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %456)
  %458 = load i32, i32* %148, align 4, !tbaa !7
  %459 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %458)
  %460 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @str.85, i64 0, i64 0))
  %461 = load i32, i32* %29, align 16, !tbaa !7
  %462 = load i32, i32* %90, align 16, !tbaa !7
  %463 = icmp eq i32 %461, %462
  br i1 %463, label %471, label %506

464:                                              ; preds = %336, %464
  %465 = phi i32 [ 0, %336 ], [ %469, %464 ]
  %466 = load i32*, i32** %4, align 8, !tbaa !3
  %467 = load i32*, i32** %3, align 8, !tbaa !3
  %468 = call i64 @scanExclusiveLarge(i32* %466, i32* %467, i32 %328, i32 %326)
  %469 = add nuw nsw i32 %465, 1
  %470 = icmp eq i32 %469, 100
  br i1 %470, label %343, label %464, !llvm.loop !27

471:                                              ; preds = %419, %496
  %472 = phi i64 [ %494, %496 ], [ 0, %419 ]
  %473 = or i64 %472, 1
  %474 = getelementptr inbounds i32, i32* %29, i64 %473
  %475 = load i32, i32* %474, align 4, !tbaa !7
  %476 = getelementptr inbounds i32, i32* %90, i64 %473
  %477 = load i32, i32* %476, align 4, !tbaa !7
  %478 = icmp eq i32 %475, %477
  br i1 %478, label %479, label %506, !llvm.loop !28

479:                                              ; preds = %471
  %480 = or i64 %472, 2
  %481 = getelementptr inbounds i32, i32* %29, i64 %480
  %482 = load i32, i32* %481, align 8, !tbaa !7
  %483 = getelementptr inbounds i32, i32* %90, i64 %480
  %484 = load i32, i32* %483, align 8, !tbaa !7
  %485 = icmp eq i32 %482, %484
  br i1 %485, label %486, label %506, !llvm.loop !28

486:                                              ; preds = %479
  %487 = or i64 %472, 3
  %488 = getelementptr inbounds i32, i32* %29, i64 %487
  %489 = load i32, i32* %488, align 4, !tbaa !7
  %490 = getelementptr inbounds i32, i32* %90, i64 %487
  %491 = load i32, i32* %490, align 4, !tbaa !7
  %492 = icmp eq i32 %489, %491
  br i1 %492, label %493, label %506, !llvm.loop !28

493:                                              ; preds = %486
  %494 = add nuw nsw i64 %472, 4
  %495 = icmp eq i64 %494, 6815744
  br i1 %495, label %504, label %496, !llvm.loop !28

496:                                              ; preds = %493
  %497 = getelementptr inbounds i32, i32* %29, i64 %494
  %498 = load i32, i32* %497, align 16, !tbaa !7
  %499 = getelementptr inbounds i32, i32* %90, i64 %494
  %500 = load i32, i32* %499, align 16, !tbaa !7
  %501 = icmp eq i32 %498, %500
  br i1 %501, label %471, label %502, !llvm.loop !28

502:                                              ; preds = %496
  %503 = icmp ult i64 %487, 6815743
  br label %506

504:                                              ; preds = %493
  %505 = icmp ult i64 %487, 6815743
  br label %506

506:                                              ; preds = %502, %504, %486, %479, %471, %419
  %507 = phi i1 [ true, %419 ], [ %503, %502 ], [ %505, %504 ], [ true, %486 ], [ true, %479 ], [ true, %471 ]
  %508 = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), %419 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), %502 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), %504 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), %486 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), %479 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), %471 ]
  %509 = xor i1 %507, true
  %510 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* nonnull %508)
  %511 = icmp ne i32 %327, 0
  %512 = select i1 %511, i1 %509, i1 false
  %513 = icmp eq i32 %326, 262144
  br i1 %513, label %514, label %522

514:                                              ; preds = %506
  %515 = fpext float %357 to double
  %516 = fmul contract double %515, 1.000000e-03
  %517 = fdiv contract double %516, 1.000000e+02
  %518 = call i32 @putchar(i32 10)
  %519 = fdiv contract double 2.621440e-01, %517
  %520 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([106 x i8], [106 x i8]* @.str.23, i64 0, i64 0), double %519, double %517, i32 262144, i32 1, i32 256)
  %521 = call i32 @putchar(i32 10)
  br label %314

522:                                              ; preds = %506
  %523 = zext i1 %512 to i32
  %524 = shl i32 %326, 1
  %525 = icmp ult i32 %524, 262145
  br i1 %525, label %325, label %314, !llvm.loop !29
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #6

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
  %16 = load i8, i8* %15, align 1, !tbaa !30
  %17 = icmp eq i8 %16, 45
  %18 = add nuw i64 %14, 1
  br i1 %17, label %13, label %19, !llvm.loop !31

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
  %42 = tail call i32 @strncasecmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i64 6) #25
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %37
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i8 [ %10, %44 ], [ 1, %41 ]
  %47 = add nuw nsw i64 %9, 1
  %48 = icmp eq i64 %47, %7
  br i1 %48, label %49, label %8, !llvm.loop !32

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
  %61 = load i8, i8* %60, align 1, !tbaa !30
  %62 = icmp eq i8 %61, 45
  %63 = add nuw i64 %59, 1
  br i1 %62, label %58, label %64, !llvm.loop !31

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
  %74 = tail call i32 @strncasecmp(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0), i64 7) #25
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %64
  %77 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %73) #25
  %78 = trunc i64 %77 to i32
  %79 = icmp sgt i32 %78, 7
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = getelementptr inbounds i8, i8* %73, i64 7
  %82 = load i8, i8* %81, align 1, !tbaa !30
  %83 = icmp eq i8 %82, 61
  %84 = select i1 %83, i64 8, i64 7
  %85 = getelementptr inbounds i8, i8* %73, i64 %84
  %86 = tail call i64 @strtol(i8* nocapture nonnull %85, i8** null, i32 10) #23
  %87 = trunc i64 %86 to i32
  br label %88

88:                                               ; preds = %80, %76, %64
  %89 = phi i32 [ %87, %80 ], [ 0, %76 ], [ %55, %64 ]
  %90 = phi i8 [ 1, %80 ], [ 1, %76 ], [ %54, %64 ]
  %91 = add nuw nsw i64 %53, 1
  %92 = icmp eq i64 %91, %7
  br i1 %92, label %93, label %52, !llvm.loop !33

93:                                               ; preds = %88
  %94 = and i8 %90, 1
  %95 = icmp eq i8 %94, 0
  %96 = select i1 %95, i32 0, i32 %89
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i64 0, i64 0))
  tail call void @exit(i32 1) #22
  unreachable

100:                                              ; preds = %93
  %101 = tail call i32 @_Z13gpuDeviceIniti(i32 %96)
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %136

103:                                              ; preds = %100
  %104 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @str.86, i64 0, i64 0))
  tail call void @exit(i32 1) #22
  unreachable

105:                                              ; preds = %2, %49
  %106 = tail call i32 @_Z23gpuGetMaxGflopsDeviceIdv()
  %107 = tail call i32 @hipSetDevice(i32 %106)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %111 = tail call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %107)
  %112 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.42, i64 0, i64 0), i32 1067, i32 %107, i8* %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0)) #21
  tail call void @exit(i32 1) #22
  unreachable

113:                                              ; preds = %105
  %114 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %114) #23
  store i32 0, i32* %3, align 4, !tbaa !7
  %115 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %115) #23
  store i32 0, i32* %4, align 4, !tbaa !7
  %116 = call i32 @hipDeviceGetAttribute(i32* nonnull %3, i32 36, i32 %106)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %113
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %120 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %116)
  %121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.42, i64 0, i64 0), i32 1069, i32 %116, i8* %120, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.43, i64 0, i64 0)) #21
  call void @exit(i32 1) #22
  unreachable

122:                                              ; preds = %113
  %123 = call i32 @hipDeviceGetAttribute(i32* nonnull %4, i32 37, i32 %106)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %122
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %127 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %123)
  %128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.42, i64 0, i64 0), i32 1070, i32 %123, i8* %127, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.44, i64 0, i64 0)) #21
  call void @exit(i32 1) #22
  unreachable

129:                                              ; preds = %122
  %130 = load i32, i32* %3, align 4, !tbaa !7
  %131 = load i32, i32* %4, align 4, !tbaa !7
  %132 = call i8* @_Z22_ConvertSMVer2ArchNameii(i32 %130, i32 %131)
  %133 = load i32, i32* %3, align 4, !tbaa !7
  %134 = load i32, i32* %4, align 4, !tbaa !7
  %135 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([52 x i8], [52 x i8]* @.str.45, i64 0, i64 0), i32 %106, i8* %132, i32 %133, i32 %134)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %115) #23
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %114) #23
  br label %136

136:                                              ; preds = %100, %129
  %137 = phi i32 [ %101, %100 ], [ %106, %129 ]
  ret i32 %137
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #8

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare dso_local void @srand(i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #8

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #0

declare dso_local i32 @hipDeviceSynchronize() local_unnamed_addr #0

; Function Attrs: uwtable
define dso_local i64 @scanExclusiveShort(i32* %0, i32* %1, i32 %2, i32 %3) local_unnamed_addr #10 {
  %5 = alloca %struct.HIP_vector_type*, align 8
  %6 = alloca %struct.HIP_vector_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dim3, align 8
  %9 = alloca %struct.dim3, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [3 x i8*], align 16
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %4
  %15 = and i32 %3, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14, %17
  %18 = phi i32 [ %19, %17 ], [ %3, %14 ]
  %19 = lshr i32 %18, 1
  %20 = and i32 %18, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %17, label %22, !llvm.loop !34

22:                                               ; preds = %17, %14
  %23 = phi i32 [ %3, %14 ], [ %19, %17 ]
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %26, label %25

25:                                               ; preds = %4, %22
  tail call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 411, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.scanExclusiveShort, i64 0, i64 0)) #22
  unreachable

26:                                               ; preds = %22
  %27 = add i32 %3, -4
  %28 = icmp ult i32 %27, 1021
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @__assert_fail(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 415, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.scanExclusiveShort, i64 0, i64 0)) #22
  unreachable

30:                                               ; preds = %26
  %31 = mul i32 %3, %2
  %32 = icmp ult i32 %31, 67108865
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 418, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.scanExclusiveShort, i64 0, i64 0)) #22
  unreachable

34:                                               ; preds = %30
  %35 = and i32 %31, 1023
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void @__assert_fail(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 421, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.scanExclusiveShort, i64 0, i64 0)) #22
  unreachable

38:                                               ; preds = %34
  %39 = lshr i32 %31, 10
  %40 = zext i32 %39 to i64
  %41 = or i64 %40, 4294967296
  %42 = tail call i32 @__hipPushCallConfiguration(i64 %41, i32 1, i64 4294967552, i32 1, i64 0, %struct.ihipStream_t* null)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %38
  %45 = bitcast %struct.HIP_vector_type** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45)
  %46 = bitcast %struct.HIP_vector_type** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %46)
  %47 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %47)
  %48 = bitcast %struct.dim3* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %48)
  %49 = bitcast %struct.dim3* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %49)
  %50 = bitcast i64* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50)
  %51 = bitcast i8** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %51)
  %52 = bitcast [3 x i8*]* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %52)
  %53 = bitcast %struct.HIP_vector_type** %5 to i32**
  store i32* %0, i32** %53, align 8, !tbaa !3
  %54 = bitcast %struct.HIP_vector_type** %6 to i32**
  store i32* %1, i32** %54, align 8, !tbaa !3
  store i32 %3, i32* %7, align 4, !tbaa !7
  %55 = getelementptr inbounds [3 x i8*], [3 x i8*]* %12, i64 0, i64 0
  %56 = bitcast [3 x i8*]* %12 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %5, %struct.HIP_vector_type*** %56, align 16
  %57 = getelementptr inbounds [3 x i8*], [3 x i8*]* %12, i64 0, i64 1
  %58 = bitcast i8** %57 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %6, %struct.HIP_vector_type*** %58, align 8
  %59 = getelementptr inbounds [3 x i8*], [3 x i8*]* %12, i64 0, i64 2
  %60 = bitcast i8** %59 to i32**
  store i32* %7, i32** %60, align 16
  %61 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %8, %struct.dim3* nonnull %9, i64* nonnull %10, i8** nonnull %11)
  %62 = load i64, i64* %10, align 8
  %63 = bitcast i8** %11 to %struct.ihipStream_t**
  %64 = load %struct.ihipStream_t*, %struct.ihipStream_t** %63, align 8
  %65 = bitcast %struct.dim3* %8 to i64*
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.dim3, %struct.dim3* %8, i64 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = bitcast %struct.dim3* %9 to i64*
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.dim3, %struct.dim3* %9, i64 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @hipLaunchKernel(i8* bitcast (void (%struct.HIP_vector_type*, %struct.HIP_vector_type*, i32)** @_Z19scanExclusiveSharedP15HIP_vector_typeIjLj4EES1_j to i8*), i64 %66, i32 %68, i64 %70, i32 %72, i8** nonnull %55, i64 %62, %struct.ihipStream_t* %64)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %46)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %47)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %48)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %49)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %51)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %52)
  br label %74

74:                                               ; preds = %44, %38
  %75 = call i32 @hipGetLastError()
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %79 = call i8* @hipGetErrorString(i32 %75)
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.73, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 426, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i32 %75, i8* %79) #21
  call void @exit(i32 1) #22
  unreachable

81:                                               ; preds = %74
  ret i64 256
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @scanExclusiveHost(i32* nocapture %0, i32* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #11 {
  %5 = zext i32 %3 to i64
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %82, label %7

7:                                                ; preds = %4
  %8 = icmp ugt i32 %3, 1
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = add i32 %2, -1
  %11 = and i32 %2, 7
  %12 = icmp ult i32 %10, 7
  br i1 %12, label %73, label %13

13:                                               ; preds = %9
  %14 = and i32 %2, -8
  br label %83

15:                                               ; preds = %7
  %16 = add nsw i64 %5, -1
  %17 = add nsw i64 %5, -2
  %18 = and i64 %16, 3
  %19 = icmp ult i64 %17, 3
  %20 = and i64 %16, -4
  %21 = icmp eq i64 %18, 0
  br label %22

22:                                               ; preds = %15, %68
  %23 = phi i32 [ %69, %68 ], [ 0, %15 ]
  %24 = phi i32* [ %71, %68 ], [ %0, %15 ]
  %25 = phi i32* [ %70, %68 ], [ %1, %15 ]
  store i32 0, i32* %24, align 4, !tbaa !7
  br i1 %19, label %53, label %26

26:                                               ; preds = %22, %26
  %27 = phi i32 [ %48, %26 ], [ 0, %22 ]
  %28 = phi i64 [ %50, %26 ], [ 1, %22 ]
  %29 = phi i64 [ %51, %26 ], [ 0, %22 ]
  %30 = add nsw i64 %28, -1
  %31 = getelementptr inbounds i32, i32* %25, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !7
  %33 = add i32 %27, %32
  %34 = getelementptr inbounds i32, i32* %24, i64 %28
  store i32 %33, i32* %34, align 4, !tbaa !7
  %35 = add nuw nsw i64 %28, 1
  %36 = getelementptr inbounds i32, i32* %25, i64 %28
  %37 = load i32, i32* %36, align 4, !tbaa !7
  %38 = add i32 %33, %37
  %39 = getelementptr inbounds i32, i32* %24, i64 %35
  store i32 %38, i32* %39, align 4, !tbaa !7
  %40 = add nuw nsw i64 %28, 2
  %41 = getelementptr inbounds i32, i32* %25, i64 %35
  %42 = load i32, i32* %41, align 4, !tbaa !7
  %43 = add i32 %38, %42
  %44 = getelementptr inbounds i32, i32* %24, i64 %40
  store i32 %43, i32* %44, align 4, !tbaa !7
  %45 = add nuw nsw i64 %28, 3
  %46 = getelementptr inbounds i32, i32* %25, i64 %40
  %47 = load i32, i32* %46, align 4, !tbaa !7
  %48 = add i32 %43, %47
  %49 = getelementptr inbounds i32, i32* %24, i64 %45
  store i32 %48, i32* %49, align 4, !tbaa !7
  %50 = add nuw nsw i64 %28, 4
  %51 = add nuw i64 %29, 4
  %52 = icmp eq i64 %51, %20
  br i1 %52, label %53, label %26, !llvm.loop !19

53:                                               ; preds = %26, %22
  %54 = phi i32 [ 0, %22 ], [ %48, %26 ]
  %55 = phi i64 [ 1, %22 ], [ %50, %26 ]
  br i1 %21, label %68, label %56

56:                                               ; preds = %53, %56
  %57 = phi i32 [ %63, %56 ], [ %54, %53 ]
  %58 = phi i64 [ %65, %56 ], [ %55, %53 ]
  %59 = phi i64 [ %66, %56 ], [ 0, %53 ]
  %60 = add nsw i64 %58, -1
  %61 = getelementptr inbounds i32, i32* %25, i64 %60
  %62 = load i32, i32* %61, align 4, !tbaa !7
  %63 = add i32 %57, %62
  %64 = getelementptr inbounds i32, i32* %24, i64 %58
  store i32 %63, i32* %64, align 4, !tbaa !7
  %65 = add nuw nsw i64 %58, 1
  %66 = add i64 %59, 1
  %67 = icmp eq i64 %66, %18
  br i1 %67, label %68, label %56, !llvm.loop !35

68:                                               ; preds = %56, %53
  %69 = add nuw i32 %23, 1
  %70 = getelementptr inbounds i32, i32* %25, i64 %5
  %71 = getelementptr inbounds i32, i32* %24, i64 %5
  %72 = icmp eq i32 %69, %2
  br i1 %72, label %82, label %22, !llvm.loop !22

73:                                               ; preds = %83, %9
  %74 = phi i32* [ %0, %9 ], [ %93, %83 ]
  %75 = icmp eq i32 %11, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %73, %76
  %77 = phi i32* [ %79, %76 ], [ %74, %73 ]
  %78 = phi i32 [ %80, %76 ], [ 0, %73 ]
  store i32 0, i32* %77, align 4, !tbaa !7
  %79 = getelementptr inbounds i32, i32* %77, i64 %5
  %80 = add i32 %78, 1
  %81 = icmp eq i32 %80, %11
  br i1 %81, label %82, label %76, !llvm.loop !36

82:                                               ; preds = %73, %76, %68, %4
  ret void

83:                                               ; preds = %83, %13
  %84 = phi i32* [ %0, %13 ], [ %93, %83 ]
  %85 = phi i32 [ 0, %13 ], [ %94, %83 ]
  store i32 0, i32* %84, align 4, !tbaa !7
  %86 = getelementptr inbounds i32, i32* %84, i64 %5
  store i32 0, i32* %86, align 4, !tbaa !7
  %87 = getelementptr inbounds i32, i32* %86, i64 %5
  store i32 0, i32* %87, align 4, !tbaa !7
  %88 = getelementptr inbounds i32, i32* %87, i64 %5
  store i32 0, i32* %88, align 4, !tbaa !7
  %89 = getelementptr inbounds i32, i32* %88, i64 %5
  store i32 0, i32* %89, align 4, !tbaa !7
  %90 = getelementptr inbounds i32, i32* %89, i64 %5
  store i32 0, i32* %90, align 4, !tbaa !7
  %91 = getelementptr inbounds i32, i32* %90, i64 %5
  store i32 0, i32* %91, align 4, !tbaa !7
  %92 = getelementptr inbounds i32, i32* %91, i64 %5
  store i32 0, i32* %92, align 4, !tbaa !7
  %93 = getelementptr inbounds i32, i32* %92, i64 %5
  %94 = add i32 %85, 8
  %95 = icmp eq i32 %94, %14
  br i1 %95, label %73, label %83, !llvm.loop !22
}

; Function Attrs: uwtable
define dso_local i64 @scanExclusiveLarge(i32* %0, i32* %1, i32 %2, i32 %3) local_unnamed_addr #10 {
  %5 = alloca %struct.HIP_vector_type*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [2 x i8*], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.dim3, align 8
  %18 = alloca %struct.dim3, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca [5 x i8*], align 16
  %22 = alloca %struct.HIP_vector_type*, align 8
  %23 = alloca %struct.HIP_vector_type*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.dim3, align 8
  %26 = alloca %struct.dim3, align 8
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca [3 x i8*], align 16
  %30 = icmp eq i32 %3, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %4
  %32 = and i32 %3, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31, %34
  %35 = phi i32 [ %36, %34 ], [ %3, %31 ]
  %36 = lshr i32 %35, 1
  %37 = and i32 %35, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %34, label %39, !llvm.loop !34

39:                                               ; preds = %34, %31
  %40 = phi i32 [ %3, %31 ], [ %36, %34 ]
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %43, label %42

42:                                               ; preds = %4, %39
  tail call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 436, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.scanExclusiveLarge, i64 0, i64 0)) #22
  unreachable

43:                                               ; preds = %39
  %44 = add i32 %3, -2048
  %45 = icmp ult i32 %44, 260097
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void @__assert_fail(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 440, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.scanExclusiveLarge, i64 0, i64 0)) #22
  unreachable

47:                                               ; preds = %43
  %48 = mul i32 %3, %2
  %49 = icmp ult i32 %48, 67108865
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 443, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.scanExclusiveLarge, i64 0, i64 0)) #22
  unreachable

51:                                               ; preds = %47
  %52 = lshr i32 %48, 10
  %53 = zext i32 %52 to i64
  %54 = or i64 %53, 4294967296
  %55 = tail call i32 @__hipPushCallConfiguration(i64 %54, i32 1, i64 4294967552, i32 1, i64 0, %struct.ihipStream_t* null)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %87

57:                                               ; preds = %51
  %58 = bitcast %struct.HIP_vector_type** %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %58)
  %59 = bitcast %struct.HIP_vector_type** %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %59)
  %60 = bitcast i32* %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %60)
  %61 = bitcast %struct.dim3* %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %61)
  %62 = bitcast %struct.dim3* %26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %62)
  %63 = bitcast i64* %27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %63)
  %64 = bitcast i8** %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %64)
  %65 = bitcast [3 x i8*]* %29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %65)
  %66 = bitcast %struct.HIP_vector_type** %22 to i32**
  store i32* %0, i32** %66, align 8, !tbaa !3
  %67 = bitcast %struct.HIP_vector_type** %23 to i32**
  store i32* %1, i32** %67, align 8, !tbaa !3
  store i32 1024, i32* %24, align 4, !tbaa !7
  %68 = getelementptr inbounds [3 x i8*], [3 x i8*]* %29, i64 0, i64 0
  %69 = bitcast [3 x i8*]* %29 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %22, %struct.HIP_vector_type*** %69, align 16
  %70 = getelementptr inbounds [3 x i8*], [3 x i8*]* %29, i64 0, i64 1
  %71 = bitcast i8** %70 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %23, %struct.HIP_vector_type*** %71, align 8
  %72 = getelementptr inbounds [3 x i8*], [3 x i8*]* %29, i64 0, i64 2
  %73 = bitcast i8** %72 to i32**
  store i32* %24, i32** %73, align 16
  %74 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %25, %struct.dim3* nonnull %26, i64* nonnull %27, i8** nonnull %28)
  %75 = load i64, i64* %27, align 8
  %76 = bitcast i8** %28 to %struct.ihipStream_t**
  %77 = load %struct.ihipStream_t*, %struct.ihipStream_t** %76, align 8
  %78 = bitcast %struct.dim3* %25 to i64*
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.dim3, %struct.dim3* %25, i64 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = bitcast %struct.dim3* %26 to i64*
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.dim3, %struct.dim3* %26, i64 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @hipLaunchKernel(i8* bitcast (void (%struct.HIP_vector_type*, %struct.HIP_vector_type*, i32)** @_Z19scanExclusiveSharedP15HIP_vector_typeIjLj4EES1_j to i8*), i64 %79, i32 %81, i64 %83, i32 %85, i8** nonnull %68, i64 %75, %struct.ihipStream_t* %77)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %59)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %60)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %61)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %62)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %63)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %64)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %65)
  br label %87

87:                                               ; preds = %57, %51
  %88 = call i32 @hipGetLastError()
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %92 = call i8* @hipGetErrorString(i32 %88)
  %93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.73, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 448, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i32 %88, i8* %92) #21
  call void @exit(i32 1) #22
  unreachable

94:                                               ; preds = %87
  %95 = and i32 %48, 261120
  %96 = icmp ne i32 %95, 0
  %97 = lshr i32 %48, 18
  %98 = zext i1 %96 to i32
  %99 = add nuw nsw i32 %97, %98
  %100 = zext i32 %99 to i64
  %101 = or i64 %100, 4294967296
  %102 = call i32 @__hipPushCallConfiguration(i64 %101, i32 1, i64 4294967552, i32 1, i64 0, %struct.ihipStream_t* null)
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %140

104:                                              ; preds = %94
  %105 = load i32*, i32** @_ZL5d_Buf, align 8, !tbaa !3
  %106 = lshr i32 %3, 10
  %107 = bitcast i32** %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %107)
  %108 = bitcast i32** %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %108)
  %109 = bitcast i32** %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %109)
  %110 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %110)
  %111 = bitcast i32* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %111)
  %112 = bitcast %struct.dim3* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %112)
  %113 = bitcast %struct.dim3* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %113)
  %114 = bitcast i64* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %114)
  %115 = bitcast i8** %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %115)
  %116 = bitcast [5 x i8*]* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %116)
  store i32* %105, i32** %12, align 8, !tbaa !3
  store i32* %0, i32** %13, align 8, !tbaa !3
  store i32* %1, i32** %14, align 8, !tbaa !3
  store i32 %52, i32* %15, align 4, !tbaa !7
  store i32 %106, i32* %16, align 4, !tbaa !7
  %117 = getelementptr inbounds [5 x i8*], [5 x i8*]* %21, i64 0, i64 0
  %118 = bitcast [5 x i8*]* %21 to i32***
  store i32** %12, i32*** %118, align 16
  %119 = getelementptr inbounds [5 x i8*], [5 x i8*]* %21, i64 0, i64 1
  %120 = bitcast i8** %119 to i32***
  store i32** %13, i32*** %120, align 8
  %121 = getelementptr inbounds [5 x i8*], [5 x i8*]* %21, i64 0, i64 2
  %122 = bitcast i8** %121 to i32***
  store i32** %14, i32*** %122, align 16
  %123 = getelementptr inbounds [5 x i8*], [5 x i8*]* %21, i64 0, i64 3
  %124 = bitcast i8** %123 to i32**
  store i32* %15, i32** %124, align 8
  %125 = getelementptr inbounds [5 x i8*], [5 x i8*]* %21, i64 0, i64 4
  %126 = bitcast i8** %125 to i32**
  store i32* %16, i32** %126, align 16
  %127 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %17, %struct.dim3* nonnull %18, i64* nonnull %19, i8** nonnull %20)
  %128 = load i64, i64* %19, align 8
  %129 = bitcast i8** %20 to %struct.ihipStream_t**
  %130 = load %struct.ihipStream_t*, %struct.ihipStream_t** %129, align 8
  %131 = bitcast %struct.dim3* %17 to i64*
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.dim3, %struct.dim3* %17, i64 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = bitcast %struct.dim3* %18 to i64*
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.dim3, %struct.dim3* %18, i64 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32*, i32, i32)** @_Z20scanExclusiveShared2PjS_S_jj to i8*), i64 %132, i32 %134, i64 %136, i32 %138, i8** nonnull %117, i64 %128, %struct.ihipStream_t* %130)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %107)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %108)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %109)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %110)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %111)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %112)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %113)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %114)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %115)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %116)
  br label %140

140:                                              ; preds = %104, %94
  %141 = call i32 @hipGetLastError()
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %145 = call i8* @hipGetErrorString(i32 %141)
  %146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %144, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.73, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 459, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.35, i64 0, i64 0), i32 %141, i8* %145) #21
  call void @exit(i32 1) #22
  unreachable

147:                                              ; preds = %140
  %148 = call i32 @__hipPushCallConfiguration(i64 %54, i32 1, i64 4294967552, i32 1, i64 0, %struct.ihipStream_t* null)
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %177

150:                                              ; preds = %147
  %151 = load i32*, i32** @_ZL5d_Buf, align 8, !tbaa !3
  %152 = bitcast %struct.HIP_vector_type** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %152)
  %153 = bitcast i32** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %153)
  %154 = bitcast %struct.dim3* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %154)
  %155 = bitcast %struct.dim3* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %155)
  %156 = bitcast i64* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %156)
  %157 = bitcast i8** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %157)
  %158 = bitcast [2 x i8*]* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %158)
  %159 = bitcast %struct.HIP_vector_type** %5 to i32**
  store i32* %0, i32** %159, align 8, !tbaa !3
  store i32* %151, i32** %6, align 8, !tbaa !3
  %160 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %161 = bitcast [2 x i8*]* %11 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %5, %struct.HIP_vector_type*** %161, align 16
  %162 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 1
  %163 = bitcast i8** %162 to i32***
  store i32** %6, i32*** %163, align 8
  %164 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %7, %struct.dim3* nonnull %8, i64* nonnull %9, i8** nonnull %10)
  %165 = load i64, i64* %9, align 8
  %166 = bitcast i8** %10 to %struct.ihipStream_t**
  %167 = load %struct.ihipStream_t*, %struct.ihipStream_t** %166, align 8
  %168 = bitcast %struct.dim3* %7 to i64*
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.dim3, %struct.dim3* %7, i64 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = bitcast %struct.dim3* %8 to i64*
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.dim3, %struct.dim3* %8, i64 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @hipLaunchKernel(i8* bitcast (void (%struct.HIP_vector_type*, i32*)** @_Z13uniformUpdateP15HIP_vector_typeIjLj4EEPj to i8*), i64 %169, i32 %171, i64 %173, i32 %175, i8** nonnull %160, i64 %165, %struct.ihipStream_t* %167)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %152)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %153)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %154)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %155)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %156)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %157)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %158)
  br label %177

177:                                              ; preds = %150, %147
  %178 = call i32 @hipGetLastError()
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %177
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %182 = call i8* @hipGetErrorString(i32 %178)
  %183 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %181, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.73, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 463, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i64 0, i64 0), i32 %178, i8* %182) #21
  call void @exit(i32 1) #22
  unreachable

184:                                              ; preds = %177
  ret i64 256
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #12

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_Z13gpuDeviceIniti(i32 %0) local_unnamed_addr #7 comdat {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #23
  %7 = call i32 @hipGetDeviceCount(i32* nonnull %2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %11 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %7)
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.42, i64 0, i64 0), i32 999, i32 %7, i8* %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i64 0, i64 0)) #21
  call void @exit(i32 1) #22
  unreachable

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4, !tbaa !7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %18 = call i64 @fwrite(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.47, i64 0, i64 0), i64 56, i64 1, %struct._IO_FILE* %17) #21
  call void @exit(i32 1) #22
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
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.48, i64 0, i64 0), i32 %27) #21
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.49, i64 0, i64 0), i32 %21) #21
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %32 = call i32 @fputc(i32 10, %struct._IO_FILE* %31)
  %33 = sub nsw i32 0, %21
  br label %84

34:                                               ; preds = %19
  %35 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %35) #23
  store i32 -1, i32* %3, align 4, !tbaa !7
  %36 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %36) #23
  store i32 0, i32* %4, align 4, !tbaa !7
  %37 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %37) #23
  store i32 0, i32* %5, align 4, !tbaa !7
  %38 = call i32 @hipDeviceGetAttribute(i32* nonnull %3, i32 33, i32 %21)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %42 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %38)
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.42, i64 0, i64 0), i32 1025, i32 %38, i8* %42, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.50, i64 0, i64 0)) #21
  call void @exit(i32 1) #22
  unreachable

44:                                               ; preds = %34
  %45 = call i32 @hipDeviceGetAttribute(i32* nonnull %4, i32 36, i32 %21)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %49 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %45)
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.42, i64 0, i64 0), i32 1026, i32 %45, i8* %49, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.43, i64 0, i64 0)) #21
  call void @exit(i32 1) #22
  unreachable

51:                                               ; preds = %44
  %52 = call i32 @hipDeviceGetAttribute(i32* nonnull %5, i32 37, i32 %21)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %56 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %52)
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.42, i64 0, i64 0), i32 1027, i32 %52, i8* %56, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.44, i64 0, i64 0)) #21
  call void @exit(i32 1) #22
  unreachable

58:                                               ; preds = %51
  %59 = load i32, i32* %3, align 4, !tbaa !7
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %63 = call i64 @fwrite(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.51, i64 0, i64 0), i64 90, i64 1, %struct._IO_FILE* %62) #21
  br label %82

64:                                               ; preds = %58
  %65 = load i32, i32* %4, align 4, !tbaa !7
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %69 = call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.52, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %68) #21
  call void @exit(i32 1) #22
  unreachable

70:                                               ; preds = %64
  %71 = call i32 @hipSetDevice(i32 %21)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %75 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %71)
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.42, i64 0, i64 0), i32 1040, i32 %71, i8* %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0)) #21
  call void @exit(i32 1) #22
  unreachable

77:                                               ; preds = %70
  %78 = load i32, i32* %4, align 4, !tbaa !7
  %79 = load i32, i32* %5, align 4, !tbaa !7
  %80 = call i8* @_Z22_ConvertSMVer2ArchNameii(i32 %78, i32 %79)
  %81 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @.str.53, i64 0, i64 0), i32 %21, i8* %80)
  br label %82

82:                                               ; preds = %77, %61
  %83 = phi i32 [ -1, %61 ], [ %21, %77 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %37) #23
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %36) #23
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %35) #23
  br label %84

84:                                               ; preds = %82, %23
  %85 = phi i32 [ %33, %23 ], [ %83, %82 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #23
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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #23
  store i32 0, i32* %1, align 4, !tbaa !7
  %8 = call i32 @hipGetDeviceCount(i32* nonnull %1)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %12 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %8)
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.42, i64 0, i64 0), i32 1092, i32 %8, i8* %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.46, i64 0, i64 0)) #21
  call void @exit(i32 1) #22
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
  %26 = call i64 @fwrite(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.54, i64 0, i64 0), i64 66, i64 1, %struct._IO_FILE* %25) #21
  call void @exit(i32 1) #22
  unreachable

27:                                               ; preds = %17, %92
  %28 = phi i32 [ %96, %92 ], [ 0, %17 ]
  %29 = phi i64 [ %95, %92 ], [ 0, %17 ]
  %30 = phi i32 [ %94, %92 ], [ 0, %17 ]
  %31 = phi i32 [ %93, %92 ], [ 0, %17 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #23
  store i32 -1, i32* %2, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #23
  store i32 0, i32* %3, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #23
  store i32 0, i32* %4, align 4, !tbaa !7
  %32 = call i32 @hipDeviceGetAttribute(i32* nonnull %2, i32 33, i32 %28)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %36 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %32)
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.42, i64 0, i64 0), i32 1106, i32 %32, i8* %36, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.55, i64 0, i64 0)) #21
  call void @exit(i32 1) #22
  unreachable

38:                                               ; preds = %27
  %39 = call i32 @hipDeviceGetAttribute(i32* nonnull %3, i32 36, i32 %28)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %43 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %39)
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.42, i64 0, i64 0), i32 1107, i32 %39, i8* %43, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.56, i64 0, i64 0)) #21
  call void @exit(i32 1) #22
  unreachable

45:                                               ; preds = %38
  %46 = call i32 @hipDeviceGetAttribute(i32* nonnull %4, i32 37, i32 %28)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %50 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %46)
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.42, i64 0, i64 0), i32 1108, i32 %46, i8* %50, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.57, i64 0, i64 0)) #21
  call void @exit(i32 1) #22
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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #23
  store i32 0, i32* %5, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #23
  store i32 0, i32* %6, align 4, !tbaa !7
  %65 = call i32 @hipDeviceGetAttribute(i32* nonnull %5, i32 32, i32 %28)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %69 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %65)
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.42, i64 0, i64 0), i32 1120, i32 %65, i8* %69, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.58, i64 0, i64 0)) #21
  call void @exit(i32 1) #22
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
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.42, i64 0, i64 0), i32 1129, i32 %72, i8* %77) #21
  call void @exit(i32 1) #22
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
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #23
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #23
  br label %92

90:                                               ; preds = %52
  %91 = add nsw i32 %30, 1
  br label %92

92:                                               ; preds = %90, %79
  %93 = phi i32 [ %88, %79 ], [ %31, %90 ]
  %94 = phi i32 [ %30, %79 ], [ %91, %90 ]
  %95 = phi i64 [ %89, %79 ], [ %29, %90 ]
  %96 = add nuw nsw i32 %28, 1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #23
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #23
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #23
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
  %106 = call i64 @fwrite(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.60, i64 0, i64 0), i64 80, i64 1, %struct._IO_FILE* %105) #21
  call void @exit(i32 1) #22
  unreachable

107:                                              ; preds = %99
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #23
  ret i32 %100
}

declare dso_local i32 @hipSetDevice(i32) local_unnamed_addr #0

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
  %25 = load i8*, i8** %24, align 8, !tbaa !38
  br label %28

26:                                               ; preds = %2
  %27 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([63 x i8], [63 x i8]* @.str.72, i64 0, i64 0), i32 %0, i32 %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i8* [ %25, %22 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0), %26 ]
  ret i8* %29
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncasecmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #15

declare dso_local i32 @hipGetDeviceCount(i32*) local_unnamed_addr #0

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
  %25 = load i32, i32* %24, align 4, !tbaa !40
  br label %28

26:                                               ; preds = %2
  %27 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([69 x i8], [69 x i8]* @.str.61, i64 0, i64 0), i32 %0, i32 %1, i32 128)
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

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) local_unnamed_addr #16

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) local_unnamed_addr #17

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN14StopWatchLinuxD0Ev(%class.StopWatchLinux* nonnull align 8 dereferenceable(40) %0) unnamed_addr #19 comdat align 2 {
  %2 = bitcast %class.StopWatchLinux* %0 to i8*
  tail call void @_ZdlPv(i8* nonnull %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14StopWatchLinux5startEv(%class.StopWatchLinux* nonnull align 8 dereferenceable(40) %0) unnamed_addr #20 comdat align 2 {
  %2 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 1
  %3 = tail call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* null) #23
  %4 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 4
  store i8 1, i8* %4, align 8, !tbaa !42
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN14StopWatchLinux4stopEv(%class.StopWatchLinux* nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca %struct.timeval, align 8
  %3 = bitcast %struct.timeval* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #23
  %4 = call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* null) #23
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !43
  %7 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 1, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !44
  %9 = sub nsw i64 %6, %8
  %10 = sitofp i64 %9 to double
  %11 = fmul contract double %10, 1.000000e+03
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 1
  %13 = load i64, i64* %12, align 8, !tbaa !45
  %14 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 1, i32 1
  %15 = load i64, i64* %14, align 8, !tbaa !46
  %16 = sub nsw i64 %13, %15
  %17 = sitofp i64 %16 to double
  %18 = fmul contract double %17, 1.000000e-03
  %19 = fadd contract double %11, %18
  %20 = fptrunc double %19 to float
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #23
  %21 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 2
  store float %20, float* %21, align 8, !tbaa !47
  %22 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 3
  %23 = load float, float* %22, align 4, !tbaa !48
  %24 = fadd contract float %23, %20
  store float %24, float* %22, align 4, !tbaa !48
  %25 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 4
  store i8 0, i8* %25, align 8, !tbaa !42
  %26 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 5
  %27 = load i32, i32* %26, align 4, !tbaa !11
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4, !tbaa !11
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14StopWatchLinux5resetEv(%class.StopWatchLinux* nonnull align 8 dereferenceable(40) %0) unnamed_addr #20 comdat align 2 {
  %2 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 2
  store float 0.000000e+00, float* %2, align 8, !tbaa !47
  %3 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 3
  store float 0.000000e+00, float* %3, align 4, !tbaa !48
  %4 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 5
  store i32 0, i32* %4, align 4, !tbaa !11
  %5 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 4
  %6 = load i8, i8* %5, align 8, !tbaa !42, !range !49
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 1
  %10 = tail call i32 @gettimeofday(%struct.timeval* nonnull %9, %struct.timezone* null) #23
  br label %11

11:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local float @_ZN14StopWatchLinux7getTimeEv(%class.StopWatchLinux* nonnull align 8 dereferenceable(40) %0) unnamed_addr #20 comdat align 2 {
  %2 = alloca <2 x i64>, align 16
  %3 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 3
  %4 = load float, float* %3, align 4, !tbaa !48
  %5 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 4
  %6 = load i8, i8* %5, align 8, !tbaa !42, !range !49
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = bitcast <2 x i64>* %2 to %struct.timeval*
  %10 = bitcast <2 x i64>* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #23
  %11 = call i32 @gettimeofday(%struct.timeval* nonnull %9, %struct.timezone* null) #23
  %12 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 1, i32 0
  %13 = load <2 x i64>, <2 x i64>* %2, align 16, !tbaa !50
  %14 = bitcast i64* %12 to <2 x i64>*
  %15 = load <2 x i64>, <2 x i64>* %14, align 8, !tbaa !50
  %16 = sub nsw <2 x i64> %13, %15
  %17 = sitofp <2 x i64> %16 to <2 x double>
  %18 = fmul contract <2 x double> %17, <double 1.000000e+03, double 1.000000e-03>
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> <i32 1, i32 undef>
  %20 = fadd contract <2 x double> %18, %19
  %21 = extractelement <2 x double> %20, i64 0
  %22 = fptrunc double %21 to float
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #23
  %23 = fadd contract float %4, %22
  br label %24

24:                                               ; preds = %8, %1
  %25 = phi float [ %23, %8 ], [ %4, %1 ]
  ret float %25
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local float @_ZN14StopWatchLinux14getAverageTimeEv(%class.StopWatchLinux* nonnull align 8 dereferenceable(40) %0) unnamed_addr #20 comdat align 2 {
  %2 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 5
  %3 = load i32, i32* %2, align 4, !tbaa !11
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 3
  %7 = load float, float* %6, align 4, !tbaa !48
  %8 = sitofp i32 %3 to float
  %9 = fdiv contract float %7, %8
  br label %10

10:                                               ; preds = %1, %5
  %11 = phi contract float [ %9, %5 ], [ 0.000000e+00, %1 ]
  ret float %11
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN18StopWatchInterfaceD2Ev(%class.StopWatchInterface* nonnull align 8 dereferenceable(8) %0) unnamed_addr #19 comdat align 2 {
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @gettimeofday(%struct.timeval* nocapture noundef, %struct.timezone* nocapture noundef) local_unnamed_addr #6

declare dso_local i32 @hipGetLastError() local_unnamed_addr #0

declare dso_local i8* @hipGetErrorString(i32) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_scan.cpp() #10 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #23
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
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (%struct.HIP_vector_type*, %struct.HIP_vector_type*, i32)** @_Z19scanExclusiveSharedP15HIP_vector_typeIjLj4EES1_j to i8*), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %9 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32*, i32*, i32*, i32, i32)** @_Z20scanExclusiveShared2PjS_S_jj to i8*), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %10 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (%struct.HIP_vector_type*, i32*)** @_Z13uniformUpdateP15HIP_vector_typeIjLj4EEPj to i8*), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @2, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @2, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %11 = tail call i32 @atexit(void (i8*)* nonnull @__hip_module_dtor)
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
attributes #5 = { norecurse noreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #9 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #19 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { nounwind readonly willreturn }
attributes #26 = { builtin nounwind }

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
!10 = !{!"vtable pointer", !6, i64 0}
!11 = !{!12, !8, i64 36}
!12 = !{!"_ZTS14StopWatchLinux", !13, i64 8, !15, i64 24, !15, i64 28, !16, i64 32, !8, i64 36}
!13 = !{!"_ZTS7timeval", !14, i64 0, !14, i64 8}
!14 = !{!"long", !5, i64 0}
!15 = !{!"float", !5, i64 0}
!16 = !{!"bool", !5, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !18}
!26 = distinct !{!26, !21}
!27 = distinct !{!27, !18}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, !18}
!30 = !{!5, !5, i64 0}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !21}
!36 = distinct !{!36, !21}
!37 = distinct !{!37, !18}
!38 = !{!39, !4, i64 8}
!39 = !{!"_ZTSZ22_ConvertSMVer2ArchNameiiE13sSMtoArchName", !8, i64 0, !4, i64 8}
!40 = !{!41, !8, i64 4}
!41 = !{!"_ZTSZ19_ConvertSMVer2CoresiiE10sSMtoCores", !8, i64 0, !8, i64 4}
!42 = !{!12, !16, i64 32}
!43 = !{!13, !14, i64 0}
!44 = !{!12, !14, i64 8}
!45 = !{!13, !14, i64 8}
!46 = !{!12, !14, i64 16}
!47 = !{!12, !15, i64 24}
!48 = !{!12, !15, i64 28}
!49 = !{i8 0, i8 2}
!50 = !{!14, !14, i64 0}
