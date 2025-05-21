; ModuleID = 'histogram.cpp'
source_filename = "histogram.cpp"
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
%struct.hipDeviceProp_t = type { [256 x i8], i64, i64, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.hipDeviceArch_t, i32, i32, i32, i32, i64, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32*, i32*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hipDeviceArch_t = type { i32 }
%class.StopWatchLinux = type { %class.StopWatchInterface, %struct.timeval, float, float, i8, i32 }
%class.StopWatchInterface = type { i32 (...)** }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

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
@_Z18histogram256KernelPjS_j = dso_local constant void (i32*, i32*, i32)* @_Z33__device_stub__histogram256KernelPjS_j, align 8
@_Z23mergeHistogram256KernelPjS_j = dso_local constant void (i32*, i32*, i32)* @_Z38__device_stub__mergeHistogram256KernelPjS_j, align 8
@_ZL19d_PartialHistograms = internal global i32* null, align 8
@.str = private unnamed_addr constant [110 x i8] c"hipMalloc( (void **)&d_PartialHistograms, PARTIAL_HISTOGRAM256_COUNT * HISTOGRAM256_BIN_COUNT * sizeof(uint))\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"histogram.cpp\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"hipFree(d_PartialHistograms)\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"byteCount % sizeof(uint) == 0\00", align 1
@__PRETTY_FUNCTION__.histogram256 = private unnamed_addr constant [40 x i8] c"void histogram256(uint *, void *, uint)\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"histogram256Kernel() execution failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"mergeHistogram256Kernel() execution failed\0A\00", align 1
@_Z17histogram64KernelPjP15HIP_vector_typeIjLj4EEj = dso_local constant void (i32*, %struct.HIP_vector_type*, i32)* @_Z32__device_stub__histogram64KernelPjP15HIP_vector_typeIjLj4EEj, align 8
@_Z22mergeHistogram64KernelPjS_j = dso_local constant void (i32*, i32*, i32)* @_Z37__device_stub__mergeHistogram64KernelPjS_j, align 8
@.str.6 = private unnamed_addr constant [112 x i8] c"hipMalloc( (void **)&d_PartialHistograms, MAX_PARTIAL_HISTOGRAM64_COUNT * HISTOGRAM64_BIN_COUNT * sizeof(uint))\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"byteCount % sizeof(data_t) == 0\00", align 1
@__PRETTY_FUNCTION__.histogram64 = private unnamed_addr constant [39 x i8] c"void histogram64(uint *, void *, uint)\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"histogramCount <= MAX_PARTIAL_HISTOGRAM64_COUNT\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"histogram64Kernel() execution failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"mergeHistogram64() execution failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"sizeof(uint) == 4 && (byteCount % 4) == 0\00", align 1
@__PRETTY_FUNCTION__.histogram64CPU = private unnamed_addr constant [42 x i8] c"void histogram64CPU(uint *, void *, uint)\00", align 1
@__PRETTY_FUNCTION__.histogram256CPU = private unnamed_addr constant [43 x i8] c"void histogram256CPU(uint *, void *, uint)\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"[%s] - Starting...\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"hipGetDeviceProperties(&deviceProp, dev)\00", align 1
@.str.14 = private unnamed_addr constant [57 x i8] c"CUDA device [%s] has %d Multi-Processors, Compute %d.%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"sizemult\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"hipMalloc((void **)&d_Data, byteCount)\00", align 1
@.str.21 = private unnamed_addr constant [72 x i8] c"hipMalloc((void **)&d_Histogram, HISTOGRAM256_BIN_COUNT * sizeof(uint))\00", align 1
@.str.22 = private unnamed_addr constant [60 x i8] c"hipMemcpy(d_Data, h_Data, byteCount, hipMemcpyHostToDevice)\00", align 1
@.str.24 = private unnamed_addr constant [57 x i8] c"Running 64-bin GPU histogram for %u bytes (%u runs)...\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [55 x i8] c"histogram64() time (average) : %.5f sec, %.4f MB/sec\0A\0A\00", align 1
@.str.26 = private unnamed_addr constant [103 x i8] c"histogram64, Throughput = %.4f MB/s, Time = %.5f s, Size = %u Bytes, NumDevsUsed = %u, Workgroup = %u\0A\00", align 1
@.str.29 = private unnamed_addr constant [100 x i8] c"hipMemcpy(h_HistogramGPU, d_Histogram, HISTOGRAM64_BIN_COUNT * sizeof(uint), hipMemcpyDeviceToHost)\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c" ...64-bin histograms match\0A\0A\00", align 1
@.str.33 = private unnamed_addr constant [43 x i8] c" ***64-bin histograms do not match!!!***\0A\0A\00", align 1
@.str.36 = private unnamed_addr constant [58 x i8] c"Running 256-bin GPU histogram for %u bytes (%u runs)...\0A\0A\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"hipDeviceSynchronize()\00", align 1
@.str.38 = private unnamed_addr constant [56 x i8] c"histogram256() time (average) : %.5f sec, %.4f MB/sec\0A\0A\00", align 1
@.str.39 = private unnamed_addr constant [104 x i8] c"histogram256, Throughput = %.4f MB/s, Time = %.5f s, Size = %u Bytes, NumDevsUsed = %u, Workgroup = %u\0A\00", align 1
@.str.40 = private unnamed_addr constant [101 x i8] c"hipMemcpy(h_HistogramGPU, d_Histogram, HISTOGRAM256_BIN_COUNT * sizeof(uint), hipMemcpyDeviceToHost)\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c" ...256-bin histograms match\0A\0A\00", align 1
@.str.44 = private unnamed_addr constant [44 x i8] c" ***256-bin histograms do not match!!!***\0A\0A\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"hipFree(d_Histogram)\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"hipFree(d_Data)\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"%s - Test Summary\0A\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.53 = private unnamed_addr constant [56 x i8] c"%s(%i) : getLastCudaError() CUDA error : %s : (%d) %s.\0A\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"[histogram]\00\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"device=\00", align 1
@.str.57 = private unnamed_addr constant [33 x i8] c"Invalid command line parameter\0A \00", align 1
@.str.59 = private unnamed_addr constant [20 x i8] c"hipSetDevice(devID)\00", align 1
@.str.60 = private unnamed_addr constant [58 x i8] c"/public/home/dtune/zhengh/nvidia_sdk/common/helper_cuda.h\00", align 1
@.str.61 = private unnamed_addr constant [79 x i8] c"hipDeviceGetAttribute(&major, hipDeviceAttributeComputeCapabilityMajor, devID)\00", align 1
@.str.62 = private unnamed_addr constant [79 x i8] c"hipDeviceGetAttribute(&minor, hipDeviceAttributeComputeCapabilityMinor, devID)\00", align 1
@.str.63 = private unnamed_addr constant [52 x i8] c"GPU Device %d: \22%s\22 with compute capability %d.%d\0A\0A\00", align 1
@.str.64 = private unnamed_addr constant [33 x i8] c"hipGetDeviceCount(&device_count)\00", align 1
@.str.65 = private unnamed_addr constant [57 x i8] c"gpuDeviceInit() CUDA error: no devices supporting CUDA.\0A\00", align 1
@.str.67 = private unnamed_addr constant [47 x i8] c">> %d CUDA capable GPU device(s) detected. <<\0A\00", align 1
@.str.68 = private unnamed_addr constant [61 x i8] c">> gpuDeviceInit (-device=%d) is not a valid GPU device. <<\0A\00", align 1
@.str.69 = private unnamed_addr constant [74 x i8] c"hipDeviceGetAttribute(&computeMode, hipDeviceAttributeComputeMode, devID)\00", align 1
@.str.70 = private unnamed_addr constant [91 x i8] c"Error: device is running in <Compute Mode Prohibited>, no threads can use hipSetDevice().\0A\00", align 1
@.str.71 = private unnamed_addr constant [52 x i8] c"gpuDeviceInit(): GPU device does not support CUDA.\0A\00", align 1
@.str.72 = private unnamed_addr constant [39 x i8] c"gpuDeviceInit() CUDA Device [%d]: \22%s\0A\00", align 1
@.str.73 = private unnamed_addr constant [67 x i8] c"gpuGetMaxGflopsDeviceId() CUDA error: no devices supporting CUDA.\0A\00", align 1
@.str.74 = private unnamed_addr constant [83 x i8] c"hipDeviceGetAttribute(&computeMode, hipDeviceAttributeComputeMode, current_device)\00", align 1
@.str.75 = private unnamed_addr constant [88 x i8] c"hipDeviceGetAttribute(&major, hipDeviceAttributeComputeCapabilityMajor, current_device)\00", align 1
@.str.76 = private unnamed_addr constant [88 x i8] c"hipDeviceGetAttribute(&minor, hipDeviceAttributeComputeCapabilityMinor, current_device)\00", align 1
@.str.77 = private unnamed_addr constant [99 x i8] c"hipDeviceGetAttribute(&multiProcessorCount, hipDeviceAttributeMultiprocessorCount, current_device)\00", align 1
@.str.78 = private unnamed_addr constant [34 x i8] c"CUDA error at %s:%d code=%d(%s) \0A\00", align 1
@.str.79 = private unnamed_addr constant [81 x i8] c"gpuGetMaxGflopsDeviceId() CUDA error: all devices have compute mode prohibited.\0A\00", align 1
@__const._Z19_ConvertSMVer2Coresii.nGpuArchCoresPerSM = private unnamed_addr constant [19 x %struct.sSMtoCores] [%struct.sSMtoCores { i32 48, i32 192 }, %struct.sSMtoCores { i32 50, i32 192 }, %struct.sSMtoCores { i32 53, i32 192 }, %struct.sSMtoCores { i32 55, i32 192 }, %struct.sSMtoCores { i32 80, i32 128 }, %struct.sSMtoCores { i32 82, i32 128 }, %struct.sSMtoCores { i32 83, i32 128 }, %struct.sSMtoCores { i32 96, i32 64 }, %struct.sSMtoCores { i32 97, i32 128 }, %struct.sSMtoCores { i32 98, i32 128 }, %struct.sSMtoCores { i32 112, i32 64 }, %struct.sSMtoCores { i32 114, i32 64 }, %struct.sSMtoCores { i32 117, i32 64 }, %struct.sSMtoCores { i32 128, i32 64 }, %struct.sSMtoCores { i32 134, i32 128 }, %struct.sSMtoCores { i32 135, i32 128 }, %struct.sSMtoCores { i32 137, i32 128 }, %struct.sSMtoCores { i32 144, i32 128 }, %struct.sSMtoCores { i32 -1, i32 -1 }], align 16
@.str.80 = private unnamed_addr constant [69 x i8] c"MapSMtoCores for SM %d.%d is undefined.  Default to use %d Cores/SM\0A\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"Kepler\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"Maxwell\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"Pascal\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"Volta\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"Xavier\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"Turing\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"Ampere\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"Ada\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"Hopper\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"Graphics Device\00", align 1
@__const._Z22_ConvertSMVer2ArchNameii.nGpuArchNameSM = private unnamed_addr constant [19 x %struct.sSMtoArchName] [%struct.sSMtoArchName { i32 48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0) }, %struct.sSMtoArchName { i32 50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0) }, %struct.sSMtoArchName { i32 53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0) }, %struct.sSMtoArchName { i32 55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0) }, %struct.sSMtoArchName { i32 80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0) }, %struct.sSMtoArchName { i32 82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0) }, %struct.sSMtoArchName { i32 83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0) }, %struct.sSMtoArchName { i32 96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0) }, %struct.sSMtoArchName { i32 97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0) }, %struct.sSMtoArchName { i32 98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0) }, %struct.sSMtoArchName { i32 112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0) }, %struct.sSMtoArchName { i32 114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0) }, %struct.sSMtoArchName { i32 117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0) }, %struct.sSMtoArchName { i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0) }, %struct.sSMtoArchName { i32 134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0) }, %struct.sSMtoArchName { i32 135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0) }, %struct.sSMtoArchName { i32 137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i32 0, i32 0) }, %struct.sSMtoArchName { i32 144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0) }, %struct.sSMtoArchName { i32 -1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.90, i32 0, i32 0) }], align 16
@.str.91 = private unnamed_addr constant [63 x i8] c"MapSMtoArchName for SM %d.%d is undefined.  Default to use %s\0A\00", align 1
@_ZTV14StopWatchLinux = linkonce_odr dso_local unnamed_addr constant { [9 x i8*] } { [9 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI14StopWatchLinux to i8*), i8* bitcast (void (%class.StopWatchInterface*)* @_ZN18StopWatchInterfaceD2Ev to i8*), i8* bitcast (void (%class.StopWatchLinux*)* @_ZN14StopWatchLinuxD0Ev to i8*), i8* bitcast (void (%class.StopWatchLinux*)* @_ZN14StopWatchLinux5startEv to i8*), i8* bitcast (void (%class.StopWatchLinux*)* @_ZN14StopWatchLinux4stopEv to i8*), i8* bitcast (void (%class.StopWatchLinux*)* @_ZN14StopWatchLinux5resetEv to i8*), i8* bitcast (float (%class.StopWatchLinux*)* @_ZN14StopWatchLinux7getTimeEv to i8*), i8* bitcast (float (%class.StopWatchLinux*)* @_ZN14StopWatchLinux14getAverageTimeEv to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTS14StopWatchLinux = linkonce_odr dso_local constant [17 x i8] c"14StopWatchLinux\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTS18StopWatchInterface = linkonce_odr dso_local constant [21 x i8] c"18StopWatchInterface\00", comdat, align 1
@_ZTI18StopWatchInterface = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @_ZTS18StopWatchInterface, i32 0, i32 0) }, comdat, align 8
@_ZTI14StopWatchLinux = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @_ZTS14StopWatchLinux, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI18StopWatchInterface to i8*) }, comdat, align 8
@.str.92 = private unnamed_addr constant [39 x i8] c"CUDA error at %s:%d code=%d(%s) \22%s\22 \0A\00", align 1
@0 = private unnamed_addr constant [28 x i8] c"_Z18histogram256KernelPjS_j\00", align 1
@1 = private unnamed_addr constant [33 x i8] c"_Z23mergeHistogram256KernelPjS_j\00", align 1
@2 = private unnamed_addr constant [50 x i8] c"_Z17histogram64KernelPjP15HIP_vector_typeIjLj4EEj\00", align 1
@3 = private unnamed_addr constant [32 x i8] c"_Z22mergeHistogram64KernelPjS_j\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_histogram.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]
@str = private unnamed_addr constant [21 x i8] c"Initializing data...\00", align 1
@str.93 = private unnamed_addr constant [26 x i8] c"...allocating CPU memory.\00", align 1
@str.94 = private unnamed_addr constant [25 x i8] c"...generating input data\00", align 1
@str.95 = private unnamed_addr constant [49 x i8] c"...allocating GPU memory and copying input data\0A\00", align 1
@str.96 = private unnamed_addr constant [33 x i8] c"Starting up 64-bin histogram...\0A\00", align 1
@str.99 = private unnamed_addr constant [21 x i8] c" ...histogram64CPU()\00", align 1
@str.100 = private unnamed_addr constant [29 x i8] c" ...comparing the results...\00", align 1
@str.101 = private unnamed_addr constant [36 x i8] c"Shutting down 64-bin histogram...\0A\0A\00", align 1
@str.102 = private unnamed_addr constant [34 x i8] c"Initializing 256-bin histogram...\00", align 1
@str.103 = private unnamed_addr constant [27 x i8] c"\0AValidating GPU results...\00", align 1
@str.104 = private unnamed_addr constant [29 x i8] c" ...reading back GPU results\00", align 1
@str.105 = private unnamed_addr constant [22 x i8] c" ...histogram256CPU()\00", align 1
@str.106 = private unnamed_addr constant [26 x i8] c" ...comparing the results\00", align 1
@str.107 = private unnamed_addr constant [37 x i8] c"Shutting down 256-bin histogram...\0A\0A\00", align 1
@str.108 = private unnamed_addr constant [17 x i8] c"Shutting down...\00", align 1
@str.109 = private unnamed_addr constant [113 x i8] c"\0ANOTE: The CUDA Samples are not meant for performance measurements. Results may vary when GPU Boost is enabled.\0A\00", align 1
@str.110 = private unnamed_addr constant [13 x i8] c"Test failed!\00", align 1
@str.111 = private unnamed_addr constant [12 x i8] c"Test passed\00", align 1
@str.112 = private unnamed_addr constant [11 x i8] c"exiting...\00", align 1

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: norecurse uwtable
define dso_local void @_Z33__device_stub__histogram256KernelPjS_j(i32* %0, i32* %1, i32 %2) #3 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32* %1, i32** %5, align 8, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !7
  %11 = alloca [3 x i8*], align 16
  %12 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %13 = bitcast [3 x i8*]* %11 to i32***
  store i32** %4, i32*** %13, align 16
  %14 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 1
  %15 = bitcast i8** %14 to i32***
  store i32** %5, i32*** %15, align 8
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
  %30 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32)** @_Z18histogram256KernelPjS_j to i8*), i64 %23, i32 %25, i64 %27, i32 %29, i8** nonnull %12, i64 %19, %struct.ihipStream_t* %21)
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: norecurse uwtable
define dso_local void @_Z38__device_stub__mergeHistogram256KernelPjS_j(i32* %0, i32* %1, i32 %2) #3 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32* %1, i32** %5, align 8, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !7
  %11 = alloca [3 x i8*], align 16
  %12 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %13 = bitcast [3 x i8*]* %11 to i32***
  store i32** %4, i32*** %13, align 16
  %14 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 1
  %15 = bitcast i8** %14 to i32***
  store i32** %5, i32*** %15, align 8
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
  %30 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32)** @_Z23mergeHistogram256KernelPjS_j to i8*), i64 %23, i32 %25, i64 %27, i32 %29, i8** nonnull %12, i64 %19, %struct.ihipStream_t* %21)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @initHistogram256() local_unnamed_addr #4 {
  %1 = tail call i32 @hipMalloc(i8** bitcast (i32** @_ZL19d_PartialHistograms to i8**), i64 245760)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %5 = tail call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %1)
  %6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 177, i32 %1, i8* %5, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i64 0, i64 0)) #22
  tail call void @exit(i32 1) #23
  unreachable

7:                                                ; preds = %0
  ret void
}

declare dso_local i32 @hipMalloc(i8**, i64) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @closeHistogram256() local_unnamed_addr #4 {
  %1 = load i8*, i8** bitcast (i32** @_ZL19d_PartialHistograms to i8**), align 8, !tbaa !3
  %2 = tail call i32 @hipFree(i8* %1)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %6 = tail call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %2)
  %7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 182, i32 %2, i8* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)) #22
  tail call void @exit(i32 1) #23
  unreachable

8:                                                ; preds = %0
  ret void
}

declare dso_local i32 @hipFree(i8*) local_unnamed_addr #0

; Function Attrs: uwtable
define dso_local void @histogram256(i32* %0, i8* %1, i32 %2) local_unnamed_addr #5 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [3 x i8*], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.dim3, align 8
  %16 = alloca %struct.dim3, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [3 x i8*], align 16
  %20 = and i32 %2, 3
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  tail call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 186, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.histogram256, i64 0, i64 0)) #23
  unreachable

23:                                               ; preds = %3
  %24 = tail call i32 @__hipPushCallConfiguration(i64 4294967536, i32 1, i64 4294967488, i32 1, i64 0, %struct.ihipStream_t* null)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %23
  %27 = load i32*, i32** @_ZL19d_PartialHistograms, align 8, !tbaa !3
  %28 = lshr i32 %2, 2
  %29 = bitcast i32** %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29)
  %30 = bitcast i32** %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30)
  %31 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %31)
  %32 = bitcast %struct.dim3* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %32)
  %33 = bitcast %struct.dim3* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %33)
  %34 = bitcast i64* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34)
  %35 = bitcast i8** %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %35)
  %36 = bitcast [3 x i8*]* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %36)
  store i32* %27, i32** %12, align 8, !tbaa !3
  %37 = bitcast i32** %13 to i8**
  store i8* %1, i8** %37, align 8, !tbaa !3
  store i32 %28, i32* %14, align 4, !tbaa !7
  %38 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 0
  %39 = bitcast [3 x i8*]* %19 to i32***
  store i32** %12, i32*** %39, align 16
  %40 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 1
  %41 = bitcast i8** %40 to i32***
  store i32** %13, i32*** %41, align 8
  %42 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 2
  %43 = bitcast i8** %42 to i32**
  store i32* %14, i32** %43, align 16
  %44 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %15, %struct.dim3* nonnull %16, i64* nonnull %17, i8** nonnull %18)
  %45 = load i64, i64* %17, align 8
  %46 = bitcast i8** %18 to %struct.ihipStream_t**
  %47 = load %struct.ihipStream_t*, %struct.ihipStream_t** %46, align 8
  %48 = bitcast %struct.dim3* %15 to i64*
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.dim3, %struct.dim3* %15, i64 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = bitcast %struct.dim3* %16 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.dim3, %struct.dim3* %16, i64 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32)** @_Z18histogram256KernelPjS_j to i8*), i64 %49, i32 %51, i64 %53, i32 %55, i8** nonnull %38, i64 %45, %struct.ihipStream_t* %47)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %31)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %32)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %33)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %35)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %36)
  br label %57

57:                                               ; preds = %26, %23
  %58 = call i32 @hipGetLastError()
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %62 = call i8* @hipGetErrorString(i32 %58)
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 190, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %58, i8* %62) #22
  call void @exit(i32 1) #23
  unreachable

64:                                               ; preds = %57
  %65 = call i32 @__hipPushCallConfiguration(i64 4294967552, i32 1, i64 4294967552, i32 1, i64 0, %struct.ihipStream_t* null)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %96

67:                                               ; preds = %64
  %68 = load i32*, i32** @_ZL19d_PartialHistograms, align 8, !tbaa !3
  %69 = bitcast i32** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %69)
  %70 = bitcast i32** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %70)
  %71 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %71)
  %72 = bitcast %struct.dim3* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %72)
  %73 = bitcast %struct.dim3* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %73)
  %74 = bitcast i64* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %74)
  %75 = bitcast i8** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %75)
  %76 = bitcast [3 x i8*]* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %76)
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32* %68, i32** %5, align 8, !tbaa !3
  store i32 240, i32* %6, align 4, !tbaa !7
  %77 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %78 = bitcast [3 x i8*]* %11 to i32***
  store i32** %4, i32*** %78, align 16
  %79 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 1
  %80 = bitcast i8** %79 to i32***
  store i32** %5, i32*** %80, align 8
  %81 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 2
  %82 = bitcast i8** %81 to i32**
  store i32* %6, i32** %82, align 16
  %83 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %7, %struct.dim3* nonnull %8, i64* nonnull %9, i8** nonnull %10)
  %84 = load i64, i64* %9, align 8
  %85 = bitcast i8** %10 to %struct.ihipStream_t**
  %86 = load %struct.ihipStream_t*, %struct.ihipStream_t** %85, align 8
  %87 = bitcast %struct.dim3* %7 to i64*
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.dim3, %struct.dim3* %7, i64 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = bitcast %struct.dim3* %8 to i64*
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.dim3, %struct.dim3* %8, i64 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32)** @_Z23mergeHistogram256KernelPjS_j to i8*), i64 %88, i32 %90, i64 %92, i32 %94, i8** nonnull %77, i64 %84, %struct.ihipStream_t* %86)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %69)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %70)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %71)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %72)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %73)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %74)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %75)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %76)
  br label %96

96:                                               ; preds = %67, %64
  %97 = call i32 @hipGetLastError()
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %101 = call i8* @hipGetErrorString(i32 %97)
  %102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 194, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %97, i8* %101) #22
  call void @exit(i32 1) #23
  unreachable

103:                                              ; preds = %96
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #0

; Function Attrs: norecurse uwtable
define dso_local void @_Z32__device_stub__histogram64KernelPjP15HIP_vector_typeIjLj4EEj(i32* %0, %struct.HIP_vector_type* %1, i32 %2) #3 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.HIP_vector_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8, !tbaa !3
  store %struct.HIP_vector_type* %1, %struct.HIP_vector_type** %5, align 8, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !7
  %11 = alloca [3 x i8*], align 16
  %12 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %13 = bitcast [3 x i8*]* %11 to i32***
  store i32** %4, i32*** %13, align 16
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
  %30 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, %struct.HIP_vector_type*, i32)** @_Z17histogram64KernelPjP15HIP_vector_typeIjLj4EEj to i8*), i64 %23, i32 %25, i64 %27, i32 %29, i8** nonnull %12, i64 %19, %struct.ihipStream_t* %21)
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local void @_Z37__device_stub__mergeHistogram64KernelPjS_j(i32* %0, i32* %1, i32 %2) #3 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32* %1, i32** %5, align 8, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !7
  %11 = alloca [3 x i8*], align 16
  %12 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %13 = bitcast [3 x i8*]* %11 to i32***
  store i32** %4, i32*** %13, align 16
  %14 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 1
  %15 = bitcast i8** %14 to i32***
  store i32** %5, i32*** %15, align 8
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
  %30 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32)** @_Z22mergeHistogram64KernelPjS_j to i8*), i64 %23, i32 %25, i64 %27, i32 %29, i8** nonnull %12, i64 %19, %struct.ihipStream_t* %21)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @initHistogram64() local_unnamed_addr #4 {
  %1 = tail call i32 @hipMalloc(i8** bitcast (i32** @_ZL19d_PartialHistograms to i8**), i64 8388608)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %5 = tail call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %1)
  %6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 330, i32 %1, i8* %5, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.6, i64 0, i64 0)) #22
  tail call void @exit(i32 1) #23
  unreachable

7:                                                ; preds = %0
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @closeHistogram64() local_unnamed_addr #4 {
  %1 = load i8*, i8** bitcast (i32** @_ZL19d_PartialHistograms to i8**), align 8, !tbaa !3
  %2 = tail call i32 @hipFree(i8* %1)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %6 = tail call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %2)
  %7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 335, i32 %2, i8* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)) #22
  tail call void @exit(i32 1) #23
  unreachable

8:                                                ; preds = %0
  ret void
}

; Function Attrs: uwtable
define dso_local void @histogram64(i32* %0, i8* %1, i32 %2) local_unnamed_addr #5 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [3 x i8*], align 16
  %12 = alloca i32*, align 8
  %13 = alloca %struct.HIP_vector_type*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.dim3, align 8
  %16 = alloca %struct.dim3, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [3 x i8*], align 16
  %20 = urem i32 %2, 15360
  %21 = icmp ne i32 %20, 0
  %22 = udiv i32 %2, 15360
  %23 = zext i1 %21 to i32
  %24 = add nuw nsw i32 %22, %23
  %25 = and i32 %2, 15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  tail call void @__assert_fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 350, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.histogram64, i64 0, i64 0)) #23
  unreachable

28:                                               ; preds = %3
  %29 = icmp ult i32 %24, 32769
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  tail call void @__assert_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 351, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.histogram64, i64 0, i64 0)) #23
  unreachable

31:                                               ; preds = %28
  %32 = zext i32 %24 to i64
  %33 = or i64 %32, 4294967296
  %34 = tail call i32 @__hipPushCallConfiguration(i64 %33, i32 1, i64 4294967360, i32 1, i64 0, %struct.ihipStream_t* null)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %31
  %37 = load i32*, i32** @_ZL19d_PartialHistograms, align 8, !tbaa !3
  %38 = lshr i32 %2, 4
  %39 = bitcast i32** %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %39)
  %40 = bitcast %struct.HIP_vector_type** %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40)
  %41 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %41)
  %42 = bitcast %struct.dim3* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %42)
  %43 = bitcast %struct.dim3* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %43)
  %44 = bitcast i64* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %44)
  %45 = bitcast i8** %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45)
  %46 = bitcast [3 x i8*]* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %46)
  store i32* %37, i32** %12, align 8, !tbaa !3
  %47 = bitcast %struct.HIP_vector_type** %13 to i8**
  store i8* %1, i8** %47, align 8, !tbaa !3
  store i32 %38, i32* %14, align 4, !tbaa !7
  %48 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 0
  %49 = bitcast [3 x i8*]* %19 to i32***
  store i32** %12, i32*** %49, align 16
  %50 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 1
  %51 = bitcast i8** %50 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %13, %struct.HIP_vector_type*** %51, align 8
  %52 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 2
  %53 = bitcast i8** %52 to i32**
  store i32* %14, i32** %53, align 16
  %54 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %15, %struct.dim3* nonnull %16, i64* nonnull %17, i8** nonnull %18)
  %55 = load i64, i64* %17, align 8
  %56 = bitcast i8** %18 to %struct.ihipStream_t**
  %57 = load %struct.ihipStream_t*, %struct.ihipStream_t** %56, align 8
  %58 = bitcast %struct.dim3* %15 to i64*
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.dim3, %struct.dim3* %15, i64 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = bitcast %struct.dim3* %16 to i64*
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.dim3, %struct.dim3* %16, i64 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, %struct.HIP_vector_type*, i32)** @_Z17histogram64KernelPjP15HIP_vector_typeIjLj4EEj to i8*), i64 %59, i32 %61, i64 %63, i32 %65, i8** nonnull %48, i64 %55, %struct.ihipStream_t* %57)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %39)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %41)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %42)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %43)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %46)
  br label %67

67:                                               ; preds = %36, %31
  %68 = call i32 @hipGetLastError()
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %72 = call i8* @hipGetErrorString(i32 %68)
  %73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 355, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %68, i8* %72) #22
  call void @exit(i32 1) #23
  unreachable

74:                                               ; preds = %67
  %75 = call i32 @__hipPushCallConfiguration(i64 4294967360, i32 1, i64 4294967552, i32 1, i64 0, %struct.ihipStream_t* null)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %106

77:                                               ; preds = %74
  %78 = load i32*, i32** @_ZL19d_PartialHistograms, align 8, !tbaa !3
  %79 = bitcast i32** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %79)
  %80 = bitcast i32** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %80)
  %81 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %81)
  %82 = bitcast %struct.dim3* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %82)
  %83 = bitcast %struct.dim3* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %83)
  %84 = bitcast i64* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %84)
  %85 = bitcast i8** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %85)
  %86 = bitcast [3 x i8*]* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %86)
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32* %78, i32** %5, align 8, !tbaa !3
  store i32 %24, i32* %6, align 4, !tbaa !7
  %87 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %88 = bitcast [3 x i8*]* %11 to i32***
  store i32** %4, i32*** %88, align 16
  %89 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 1
  %90 = bitcast i8** %89 to i32***
  store i32** %5, i32*** %90, align 8
  %91 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 2
  %92 = bitcast i8** %91 to i32**
  store i32* %6, i32** %92, align 16
  %93 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %7, %struct.dim3* nonnull %8, i64* nonnull %9, i8** nonnull %10)
  %94 = load i64, i64* %9, align 8
  %95 = bitcast i8** %10 to %struct.ihipStream_t**
  %96 = load %struct.ihipStream_t*, %struct.ihipStream_t** %95, align 8
  %97 = bitcast %struct.dim3* %7 to i64*
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.dim3, %struct.dim3* %7, i64 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = bitcast %struct.dim3* %8 to i64*
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.dim3, %struct.dim3* %8, i64 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32)** @_Z22mergeHistogram64KernelPjS_j to i8*), i64 %98, i32 %100, i64 %102, i32 %104, i8** nonnull %87, i64 %94, %struct.ihipStream_t* %96)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %79)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %80)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %81)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %82)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %83)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %84)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %85)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %86)
  br label %106

106:                                              ; preds = %77, %74
  %107 = call i32 @hipGetLastError()
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %111 = call i8* @hipGetErrorString(i32 %107)
  %112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 359, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %107, i8* %111) #22
  call void @exit(i32 1) #23
  unreachable

113:                                              ; preds = %106
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @histogram64CPU(i32* nocapture %0, i8* nocapture readonly %1, i32 %2) local_unnamed_addr #8 {
  %4 = bitcast i32* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(256) %4, i8 0, i64 256, i1 false), !tbaa !7
  %5 = and i32 %2, 3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = lshr i32 %2, 2
  %9 = bitcast i8* %1 to i32*
  %10 = icmp ult i32 %2, 4
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = icmp ugt i32 %8, 1
  %13 = select i1 %12, i32 %8, i32 1
  %14 = zext i32 %13 to i64
  br label %17

15:                                               ; preds = %3
  tail call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 367, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.histogram64CPU, i64 0, i64 0)) #23
  unreachable

16:                                               ; preds = %17, %7
  ret void

17:                                               ; preds = %11, %17
  %18 = phi i64 [ 0, %11 ], [ %44, %17 ]
  %19 = getelementptr inbounds i32, i32* %9, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !7
  %21 = lshr i32 %20, 2
  %22 = and i32 %21, 63
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %0, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !7
  %26 = add i32 %25, 1
  store i32 %26, i32* %24, align 4, !tbaa !7
  %27 = lshr i32 %20, 10
  %28 = and i32 %27, 63
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %0, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !7
  %32 = add i32 %31, 1
  store i32 %32, i32* %30, align 4, !tbaa !7
  %33 = lshr i32 %20, 18
  %34 = and i32 %33, 63
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %0, i64 %35
  %37 = load i32, i32* %36, align 4, !tbaa !7
  %38 = add i32 %37, 1
  store i32 %38, i32* %36, align 4, !tbaa !7
  %39 = lshr i32 %20, 26
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %0, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !7
  %43 = add i32 %42, 1
  store i32 %43, i32* %41, align 4, !tbaa !7
  %44 = add nuw nsw i64 %18, 1
  %45 = icmp eq i64 %44, %14
  br i1 %45, label %16, label %17, !llvm.loop !9
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @histogram256CPU(i32* nocapture %0, i8* nocapture readonly %1, i32 %2) local_unnamed_addr #8 {
  %4 = bitcast i32* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(1024) %4, i8 0, i64 1024, i1 false), !tbaa !7
  %5 = and i32 %2, 3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = lshr i32 %2, 2
  %9 = bitcast i8* %1 to i32*
  %10 = icmp ult i32 %2, 4
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = icmp ugt i32 %8, 1
  %13 = select i1 %12, i32 %8, i32 1
  %14 = zext i32 %13 to i64
  br label %17

15:                                               ; preds = %3
  tail call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 382, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.histogram256CPU, i64 0, i64 0)) #23
  unreachable

16:                                               ; preds = %17, %7
  ret void

17:                                               ; preds = %11, %17
  %18 = phi i64 [ 0, %11 ], [ %43, %17 ]
  %19 = getelementptr inbounds i32, i32* %9, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !7
  %21 = and i32 %20, 255
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %0, i64 %22
  %24 = load i32, i32* %23, align 4, !tbaa !7
  %25 = add i32 %24, 1
  store i32 %25, i32* %23, align 4, !tbaa !7
  %26 = lshr i32 %20, 8
  %27 = and i32 %26, 255
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %0, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !7
  %31 = add i32 %30, 1
  store i32 %31, i32* %29, align 4, !tbaa !7
  %32 = lshr i32 %20, 16
  %33 = and i32 %32, 255
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %0, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !7
  %37 = add i32 %36, 1
  store i32 %37, i32* %35, align 4, !tbaa !7
  %38 = lshr i32 %20, 24
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %0, i64 %39
  %41 = load i32, i32* %40, align 4, !tbaa !7
  %42 = add i32 %41, 1
  store i32 %42, i32* %40, align 4, !tbaa !7
  %43 = add nuw nsw i64 %18, 1
  %44 = icmp eq i64 %43, %14
  br i1 %44, label %16, label %17, !llvm.loop !11
}

; Function Attrs: norecurse noreturn uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #9 personality i32 (...)* @__gxx_personality_v0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hipDeviceProp_t, align 8
  %6 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #24
  %7 = bitcast i32** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #24
  %8 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %5, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 792, i8* nonnull %8) #24
  %9 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %5, i64 0, i32 12
  store i32 0, i32* %9, align 8, !tbaa !12
  %10 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %5, i64 0, i32 13
  store i32 0, i32* %10, align 4, !tbaa !16
  %11 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i64 0, i64 0))
  %12 = tail call i32 @_Z14findCudaDeviceiPPKc(i32 %0, i8** %1)
  %13 = call i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* nonnull %5, i32 %12)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %17 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %13)
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 416, i32 %13, i8* %17, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0)) #22
  call void @exit(i32 1) #23
  unreachable

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %5, i64 0, i32 14
  %21 = load i32, i32* %20, align 8, !tbaa !17
  %22 = load i32, i32* %9, align 8, !tbaa !12
  %23 = load i32, i32* %10, align 4, !tbaa !16
  %24 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([57 x i8], [57 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %8, i32 %21, i32 %22, i32 %23)
  %25 = call noalias nonnull dereferenceable(40) i8* @_Znwm(i64 40) #25
  %26 = bitcast i8* %25 to %class.StopWatchLinux*
  %27 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %26, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [9 x i8*] }, { [9 x i8*] }* @_ZTV14StopWatchLinux, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %27, align 8, !tbaa !18
  %28 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %26, i64 0, i32 1
  %29 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %26, i64 0, i32 5
  store i32 0, i32* %29, align 4, !tbaa !20
  %30 = bitcast %struct.timeval* %28 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(25) %30, i8 0, i64 25, i1 false)
  %31 = getelementptr %class.StopWatchLinux, %class.StopWatchLinux* %26, i64 0, i32 0
  %32 = icmp sgt i32 %0, 1
  br i1 %32, label %33, label %129

33:                                               ; preds = %19
  %34 = zext i32 %0 to i64
  br label %35

35:                                               ; preds = %72, %33
  %36 = phi i64 [ 1, %33 ], [ %74, %72 ]
  %37 = phi i8 [ 0, %33 ], [ %73, %72 ]
  %38 = getelementptr inbounds i8*, i8** %1, i64 %36
  %39 = load i8*, i8** %38, align 8, !tbaa !3
  br label %40

40:                                               ; preds = %40, %35
  %41 = phi i64 [ %45, %40 ], [ 0, %35 ]
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1, !tbaa !25
  %44 = icmp eq i8 %43, 45
  %45 = add nuw i64 %41, 1
  br i1 %44, label %40, label %46, !llvm.loop !26

46:                                               ; preds = %40
  %47 = trunc i64 %41 to i32
  %48 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %39) #26
  %49 = trunc i64 %48 to i32
  %50 = add i32 %49, -1
  %51 = icmp sgt i32 %50, %47
  %52 = shl i64 %41, 32
  %53 = ashr exact i64 %52, 32
  %54 = select i1 %51, i64 %53, i64 0
  %55 = getelementptr inbounds i8, i8* %39, i64 %54
  %56 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %55, i32 61) #26
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %46
  %59 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %55) #26
  br label %64

60:                                               ; preds = %46
  %61 = ptrtoint i8* %56 to i64
  %62 = ptrtoint i8* %55 to i64
  %63 = sub i64 %61, %62
  br label %64

64:                                               ; preds = %60, %58
  %65 = phi i64 [ %59, %58 ], [ %63, %60 ]
  %66 = trunc i64 %65 to i32
  %67 = icmp eq i32 %66, 8
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = call i32 @strncasecmp(i8* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i64 8) #26
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68, %64
  br label %72

72:                                               ; preds = %71, %68
  %73 = phi i8 [ %37, %71 ], [ 1, %68 ]
  %74 = add nuw nsw i64 %36, 1
  %75 = icmp eq i64 %74, %34
  br i1 %75, label %76, label %35, !llvm.loop !27

76:                                               ; preds = %72
  %77 = and i8 %73, 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %129, label %79

79:                                               ; preds = %76, %115
  %80 = phi i64 [ %118, %115 ], [ 1, %76 ]
  %81 = phi i8 [ %117, %115 ], [ 0, %76 ]
  %82 = phi i32 [ %116, %115 ], [ -1, %76 ]
  %83 = getelementptr inbounds i8*, i8** %1, i64 %80
  %84 = load i8*, i8** %83, align 8, !tbaa !3
  br label %85

85:                                               ; preds = %85, %79
  %86 = phi i64 [ %90, %85 ], [ 0, %79 ]
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1, !tbaa !25
  %89 = icmp eq i8 %88, 45
  %90 = add nuw i64 %86, 1
  br i1 %89, label %85, label %91, !llvm.loop !26

91:                                               ; preds = %85
  %92 = trunc i64 %86 to i32
  %93 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %84) #26
  %94 = trunc i64 %93 to i32
  %95 = add i32 %94, -1
  %96 = icmp sgt i32 %95, %92
  %97 = shl i64 %86, 32
  %98 = ashr exact i64 %97, 32
  %99 = select i1 %96, i64 %98, i64 0
  %100 = getelementptr inbounds i8, i8* %84, i64 %99
  %101 = call i32 @strncasecmp(i8* %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i64 8) #26
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %91
  %104 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %100) #26
  %105 = trunc i64 %104 to i32
  %106 = icmp sgt i32 %105, 8
  br i1 %106, label %107, label %115

107:                                              ; preds = %103
  %108 = getelementptr inbounds i8, i8* %100, i64 8
  %109 = load i8, i8* %108, align 1, !tbaa !25
  %110 = icmp eq i8 %109, 61
  %111 = select i1 %110, i64 9, i64 8
  %112 = getelementptr inbounds i8, i8* %100, i64 %111
  %113 = call i64 @strtol(i8* nocapture nonnull %112, i8** null, i32 10) #24
  %114 = trunc i64 %113 to i32
  br label %115

115:                                              ; preds = %107, %103, %91
  %116 = phi i32 [ %114, %107 ], [ 0, %103 ], [ %82, %91 ]
  %117 = phi i8 [ 1, %107 ], [ 1, %103 ], [ %81, %91 ]
  %118 = add nuw nsw i64 %80, 1
  %119 = icmp eq i64 %118, %34
  br i1 %119, label %120, label %79, !llvm.loop !28

120:                                              ; preds = %115
  %121 = and i8 %117, 1
  %122 = icmp eq i8 %121, 0
  %123 = select i1 %122, i32 0, i32 %116
  %124 = icmp ult i32 %123, 10
  %125 = select i1 %124, i32 %123, i32 10
  %126 = icmp ugt i32 %125, 1
  %127 = select i1 %126, i32 %125, i32 1
  %128 = shl nuw nsw i32 %127, 26
  br label %129

129:                                              ; preds = %76, %120, %19
  %130 = phi i32 [ %128, %120 ], [ 67108864, %76 ], [ 67108864, %19 ]
  %131 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str, i64 0, i64 0))
  %132 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @str.93, i64 0, i64 0))
  %133 = zext i32 %130 to i64
  %134 = call noalias align 16 i8* @malloc(i64 %133) #24
  %135 = call noalias align 16 dereferenceable_or_null(1024) i8* @malloc(i64 1024) #24
  %136 = bitcast i8* %135 to i32*
  %137 = call noalias align 16 dereferenceable_or_null(1024) i8* @malloc(i64 1024) #24
  %138 = bitcast i8* %137 to i32*
  %139 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str.94, i64 0, i64 0))
  call void @srand(i32 2009) #24
  br label %238

140:                                              ; preds = %238
  %141 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @str.95, i64 0, i64 0))
  %142 = call i32 @hipMalloc(i8** nonnull %3, i64 %133)
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %140
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %146 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %142)
  %147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %145, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 445, i32 %142, i8* %146, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0)) #22
  call void @exit(i32 1) #23
  unreachable

148:                                              ; preds = %140
  %149 = bitcast i32** %4 to i8**
  %150 = call i32 @hipMalloc(i8** nonnull %149, i64 1024)
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %154 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %150)
  %155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %153, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 447, i32 %150, i8* %154, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.21, i64 0, i64 0)) #22
  call void @exit(i32 1) #23
  unreachable

156:                                              ; preds = %148
  %157 = load i8*, i8** %3, align 8, !tbaa !3
  %158 = call i32 @hipMemcpy(i8* %157, i8* nonnull %134, i64 %133, i32 1)
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %156
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %162 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %158)
  %163 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %161, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 449, i32 %158, i8* %162, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.22, i64 0, i64 0)) #22
  call void @exit(i32 1) #23
  unreachable

164:                                              ; preds = %156
  %165 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @str.96, i64 0, i64 0))
  %166 = call i32 @hipMalloc(i8** bitcast (i32** @_ZL19d_PartialHistograms to i8**), i64 8388608)
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %164
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %170 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %166)
  %171 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %169, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 330, i32 %166, i8* %170, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.6, i64 0, i64 0)) #22
  call void @exit(i32 1) #23
  unreachable

172:                                              ; preds = %164
  %173 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([57 x i8], [57 x i8]* @.str.24, i64 0, i64 0), i32 %130, i32 16)
  %174 = bitcast i8* %25 to void (%class.StopWatchInterface*)***
  %175 = load i32*, i32** %4, align 8, !tbaa !3
  %176 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram64(i32* %175, i8* %176, i32 %130)
  %177 = call i32 @hipDeviceSynchronize()
  %178 = load void (%class.StopWatchInterface*)**, void (%class.StopWatchInterface*)*** %174, align 8, !tbaa !18
  %179 = getelementptr inbounds void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %178, i64 4
  %180 = load void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %179, align 8
  call void %180(%class.StopWatchInterface* nonnull align 8 dereferenceable(8) %31)
  %181 = load void (%class.StopWatchInterface*)**, void (%class.StopWatchInterface*)*** %174, align 8, !tbaa !18
  %182 = getelementptr inbounds void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %181, i64 2
  %183 = load void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %182, align 8
  call void %183(%class.StopWatchInterface* nonnull align 8 dereferenceable(8) %31)
  %184 = load i32*, i32** %4, align 8, !tbaa !3
  %185 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram64(i32* %184, i8* %185, i32 %130)
  %186 = load i32*, i32** %4, align 8, !tbaa !3
  %187 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram64(i32* %186, i8* %187, i32 %130)
  %188 = load i32*, i32** %4, align 8, !tbaa !3
  %189 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram64(i32* %188, i8* %189, i32 %130)
  %190 = load i32*, i32** %4, align 8, !tbaa !3
  %191 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram64(i32* %190, i8* %191, i32 %130)
  %192 = load i32*, i32** %4, align 8, !tbaa !3
  %193 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram64(i32* %192, i8* %193, i32 %130)
  %194 = load i32*, i32** %4, align 8, !tbaa !3
  %195 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram64(i32* %194, i8* %195, i32 %130)
  %196 = load i32*, i32** %4, align 8, !tbaa !3
  %197 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram64(i32* %196, i8* %197, i32 %130)
  %198 = load i32*, i32** %4, align 8, !tbaa !3
  %199 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram64(i32* %198, i8* %199, i32 %130)
  %200 = load i32*, i32** %4, align 8, !tbaa !3
  %201 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram64(i32* %200, i8* %201, i32 %130)
  %202 = load i32*, i32** %4, align 8, !tbaa !3
  %203 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram64(i32* %202, i8* %203, i32 %130)
  %204 = load i32*, i32** %4, align 8, !tbaa !3
  %205 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram64(i32* %204, i8* %205, i32 %130)
  %206 = load i32*, i32** %4, align 8, !tbaa !3
  %207 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram64(i32* %206, i8* %207, i32 %130)
  %208 = load i32*, i32** %4, align 8, !tbaa !3
  %209 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram64(i32* %208, i8* %209, i32 %130)
  %210 = load i32*, i32** %4, align 8, !tbaa !3
  %211 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram64(i32* %210, i8* %211, i32 %130)
  %212 = load i32*, i32** %4, align 8, !tbaa !3
  %213 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram64(i32* %212, i8* %213, i32 %130)
  %214 = load i32*, i32** %4, align 8, !tbaa !3
  %215 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram64(i32* %214, i8* %215, i32 %130)
  %216 = call i32 @hipDeviceSynchronize()
  %217 = load void (%class.StopWatchInterface*)**, void (%class.StopWatchInterface*)*** %174, align 8, !tbaa !18
  %218 = getelementptr inbounds void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %217, i64 3
  %219 = load void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %218, align 8
  call void %219(%class.StopWatchInterface* nonnull align 8 dereferenceable(8) %31)
  %220 = bitcast i8* %25 to float (%class.StopWatchInterface*)***
  %221 = load float (%class.StopWatchInterface*)**, float (%class.StopWatchInterface*)*** %220, align 8, !tbaa !18
  %222 = getelementptr inbounds float (%class.StopWatchInterface*)*, float (%class.StopWatchInterface*)** %221, i64 5
  %223 = load float (%class.StopWatchInterface*)*, float (%class.StopWatchInterface*)** %222, align 8
  %224 = call contract float %223(%class.StopWatchInterface* nonnull align 8 dereferenceable(8) %31)
  %225 = fpext float %224 to double
  %226 = fmul contract double %225, 1.000000e-03
  %227 = fmul contract double %226, 6.250000e-02
  %228 = uitofp i32 %130 to double
  %229 = fmul contract double %228, 0x3EB0C6F7A0B5ED8D
  %230 = fdiv contract double %229, %227
  %231 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([55 x i8], [55 x i8]* @.str.25, i64 0, i64 0), double %227, double %230)
  %232 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([103 x i8], [103 x i8]* @.str.26, i64 0, i64 0), double %230, double %227, i32 %130, i32 1, i32 64)
  %233 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @str.103, i64 0, i64 0))
  %234 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @str.104, i64 0, i64 0))
  %235 = load i8*, i8** %149, align 8, !tbaa !3
  %236 = call i32 @hipMemcpy(i8* %137, i8* %235, i64 256, i32 2)
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %249, label %245

238:                                              ; preds = %129, %238
  %239 = phi i64 [ 0, %129 ], [ %243, %238 ]
  %240 = call i32 @rand() #24
  %241 = trunc i32 %240 to i8
  %242 = getelementptr inbounds i8, i8* %134, i64 %239
  store i8 %241, i8* %242, align 1, !tbaa !25
  %243 = add nuw nsw i64 %239, 1
  %244 = icmp eq i64 %243, %133
  br i1 %244, label %140, label %238, !llvm.loop !29

245:                                              ; preds = %172
  %246 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %247 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %236)
  %248 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %246, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 485, i32 %236, i8* %247, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.29, i64 0, i64 0)) #22
  call void @exit(i32 1) #23
  unreachable

249:                                              ; preds = %172
  %250 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.99, i64 0, i64 0))
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(256) %135, i8 0, i64 256, i1 false) #24, !tbaa !7
  %251 = lshr exact i32 %130, 2
  %252 = bitcast i8* %134 to i32*
  %253 = zext i32 %251 to i64
  br label %254

254:                                              ; preds = %254, %249
  %255 = phi i64 [ 0, %249 ], [ %281, %254 ]
  %256 = getelementptr inbounds i32, i32* %252, i64 %255
  %257 = load i32, i32* %256, align 4, !tbaa !7
  %258 = lshr i32 %257, 2
  %259 = and i32 %258, 63
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %136, i64 %260
  %262 = load i32, i32* %261, align 4, !tbaa !7
  %263 = add i32 %262, 1
  store i32 %263, i32* %261, align 4, !tbaa !7
  %264 = lshr i32 %257, 10
  %265 = and i32 %264, 63
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %136, i64 %266
  %268 = load i32, i32* %267, align 4, !tbaa !7
  %269 = add i32 %268, 1
  store i32 %269, i32* %267, align 4, !tbaa !7
  %270 = lshr i32 %257, 18
  %271 = and i32 %270, 63
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %136, i64 %272
  %274 = load i32, i32* %273, align 4, !tbaa !7
  %275 = add i32 %274, 1
  store i32 %275, i32* %273, align 4, !tbaa !7
  %276 = lshr i32 %257, 26
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %136, i64 %277
  %279 = load i32, i32* %278, align 4, !tbaa !7
  %280 = add i32 %279, 1
  store i32 %280, i32* %278, align 4, !tbaa !7
  %281 = add nuw nsw i64 %255, 1
  %282 = icmp eq i64 %281, %253
  br i1 %282, label %283, label %254, !llvm.loop !9

283:                                              ; preds = %254
  %284 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @str.100, i64 0, i64 0))
  %285 = bitcast i8* %137 to <4 x i32>*
  %286 = load <4 x i32>, <4 x i32>* %285, align 16, !tbaa !7
  %287 = bitcast i8* %135 to <4 x i32>*
  %288 = load <4 x i32>, <4 x i32>* %287, align 16, !tbaa !7
  %289 = icmp ne <4 x i32> %286, %288
  %290 = getelementptr inbounds i32, i32* %138, i64 4
  %291 = bitcast i32* %290 to <4 x i32>*
  %292 = load <4 x i32>, <4 x i32>* %291, align 16, !tbaa !7
  %293 = getelementptr inbounds i32, i32* %136, i64 4
  %294 = bitcast i32* %293 to <4 x i32>*
  %295 = load <4 x i32>, <4 x i32>* %294, align 16, !tbaa !7
  %296 = icmp ne <4 x i32> %292, %295
  %297 = getelementptr inbounds i32, i32* %138, i64 8
  %298 = bitcast i32* %297 to <4 x i32>*
  %299 = load <4 x i32>, <4 x i32>* %298, align 16, !tbaa !7
  %300 = getelementptr inbounds i32, i32* %136, i64 8
  %301 = bitcast i32* %300 to <4 x i32>*
  %302 = load <4 x i32>, <4 x i32>* %301, align 16, !tbaa !7
  %303 = icmp ne <4 x i32> %299, %302
  %304 = getelementptr inbounds i32, i32* %138, i64 12
  %305 = bitcast i32* %304 to <4 x i32>*
  %306 = load <4 x i32>, <4 x i32>* %305, align 16, !tbaa !7
  %307 = getelementptr inbounds i32, i32* %136, i64 12
  %308 = bitcast i32* %307 to <4 x i32>*
  %309 = load <4 x i32>, <4 x i32>* %308, align 16, !tbaa !7
  %310 = icmp ne <4 x i32> %306, %309
  %311 = getelementptr inbounds i32, i32* %138, i64 16
  %312 = bitcast i32* %311 to <4 x i32>*
  %313 = load <4 x i32>, <4 x i32>* %312, align 16, !tbaa !7
  %314 = getelementptr inbounds i32, i32* %136, i64 16
  %315 = bitcast i32* %314 to <4 x i32>*
  %316 = load <4 x i32>, <4 x i32>* %315, align 16, !tbaa !7
  %317 = icmp ne <4 x i32> %313, %316
  %318 = getelementptr inbounds i32, i32* %138, i64 20
  %319 = bitcast i32* %318 to <4 x i32>*
  %320 = load <4 x i32>, <4 x i32>* %319, align 16, !tbaa !7
  %321 = getelementptr inbounds i32, i32* %136, i64 20
  %322 = bitcast i32* %321 to <4 x i32>*
  %323 = load <4 x i32>, <4 x i32>* %322, align 16, !tbaa !7
  %324 = icmp ne <4 x i32> %320, %323
  %325 = getelementptr inbounds i32, i32* %138, i64 24
  %326 = bitcast i32* %325 to <4 x i32>*
  %327 = load <4 x i32>, <4 x i32>* %326, align 16, !tbaa !7
  %328 = getelementptr inbounds i32, i32* %136, i64 24
  %329 = bitcast i32* %328 to <4 x i32>*
  %330 = load <4 x i32>, <4 x i32>* %329, align 16, !tbaa !7
  %331 = icmp ne <4 x i32> %327, %330
  %332 = getelementptr inbounds i32, i32* %138, i64 28
  %333 = bitcast i32* %332 to <4 x i32>*
  %334 = load <4 x i32>, <4 x i32>* %333, align 16, !tbaa !7
  %335 = getelementptr inbounds i32, i32* %136, i64 28
  %336 = bitcast i32* %335 to <4 x i32>*
  %337 = load <4 x i32>, <4 x i32>* %336, align 16, !tbaa !7
  %338 = icmp ne <4 x i32> %334, %337
  %339 = getelementptr inbounds i32, i32* %138, i64 32
  %340 = bitcast i32* %339 to <4 x i32>*
  %341 = load <4 x i32>, <4 x i32>* %340, align 16, !tbaa !7
  %342 = getelementptr inbounds i32, i32* %136, i64 32
  %343 = bitcast i32* %342 to <4 x i32>*
  %344 = load <4 x i32>, <4 x i32>* %343, align 16, !tbaa !7
  %345 = icmp ne <4 x i32> %341, %344
  %346 = getelementptr inbounds i32, i32* %138, i64 36
  %347 = bitcast i32* %346 to <4 x i32>*
  %348 = load <4 x i32>, <4 x i32>* %347, align 16, !tbaa !7
  %349 = getelementptr inbounds i32, i32* %136, i64 36
  %350 = bitcast i32* %349 to <4 x i32>*
  %351 = load <4 x i32>, <4 x i32>* %350, align 16, !tbaa !7
  %352 = icmp ne <4 x i32> %348, %351
  %353 = getelementptr inbounds i32, i32* %138, i64 40
  %354 = bitcast i32* %353 to <4 x i32>*
  %355 = load <4 x i32>, <4 x i32>* %354, align 16, !tbaa !7
  %356 = getelementptr inbounds i32, i32* %136, i64 40
  %357 = bitcast i32* %356 to <4 x i32>*
  %358 = load <4 x i32>, <4 x i32>* %357, align 16, !tbaa !7
  %359 = icmp ne <4 x i32> %355, %358
  %360 = getelementptr inbounds i32, i32* %138, i64 44
  %361 = bitcast i32* %360 to <4 x i32>*
  %362 = load <4 x i32>, <4 x i32>* %361, align 16, !tbaa !7
  %363 = getelementptr inbounds i32, i32* %136, i64 44
  %364 = bitcast i32* %363 to <4 x i32>*
  %365 = load <4 x i32>, <4 x i32>* %364, align 16, !tbaa !7
  %366 = icmp ne <4 x i32> %362, %365
  %367 = getelementptr inbounds i32, i32* %138, i64 48
  %368 = bitcast i32* %367 to <4 x i32>*
  %369 = load <4 x i32>, <4 x i32>* %368, align 16, !tbaa !7
  %370 = getelementptr inbounds i32, i32* %136, i64 48
  %371 = bitcast i32* %370 to <4 x i32>*
  %372 = load <4 x i32>, <4 x i32>* %371, align 16, !tbaa !7
  %373 = icmp ne <4 x i32> %369, %372
  %374 = getelementptr inbounds i32, i32* %138, i64 52
  %375 = bitcast i32* %374 to <4 x i32>*
  %376 = load <4 x i32>, <4 x i32>* %375, align 16, !tbaa !7
  %377 = getelementptr inbounds i32, i32* %136, i64 52
  %378 = bitcast i32* %377 to <4 x i32>*
  %379 = load <4 x i32>, <4 x i32>* %378, align 16, !tbaa !7
  %380 = icmp ne <4 x i32> %376, %379
  %381 = getelementptr inbounds i32, i32* %138, i64 56
  %382 = bitcast i32* %381 to <4 x i32>*
  %383 = load <4 x i32>, <4 x i32>* %382, align 16, !tbaa !7
  %384 = getelementptr inbounds i32, i32* %136, i64 56
  %385 = bitcast i32* %384 to <4 x i32>*
  %386 = load <4 x i32>, <4 x i32>* %385, align 16, !tbaa !7
  %387 = icmp ne <4 x i32> %383, %386
  %388 = getelementptr inbounds i32, i32* %138, i64 60
  %389 = bitcast i32* %388 to <4 x i32>*
  %390 = load <4 x i32>, <4 x i32>* %389, align 16, !tbaa !7
  %391 = getelementptr inbounds i32, i32* %136, i64 60
  %392 = bitcast i32* %391 to <4 x i32>*
  %393 = load <4 x i32>, <4 x i32>* %392, align 16, !tbaa !7
  %394 = icmp ne <4 x i32> %390, %393
  %395 = select <4 x i1> %394, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i1> %387
  %396 = select <4 x i1> %395, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i1> %380
  %397 = select <4 x i1> %396, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i1> %373
  %398 = select <4 x i1> %397, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i1> %366
  %399 = select <4 x i1> %398, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i1> %359
  %400 = select <4 x i1> %399, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i1> %352
  %401 = select <4 x i1> %400, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i1> %345
  %402 = select <4 x i1> %401, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i1> %338
  %403 = select <4 x i1> %402, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i1> %331
  %404 = select <4 x i1> %403, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i1> %324
  %405 = select <4 x i1> %404, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i1> %317
  %406 = select <4 x i1> %405, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i1> %310
  %407 = select <4 x i1> %406, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i1> %303
  %408 = select <4 x i1> %407, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i1> %296
  %409 = select <4 x i1> %408, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i1> %289
  %410 = bitcast <4 x i1> %409 to i4
  %411 = icmp eq i4 %410, 0
  %412 = zext i1 %411 to i32
  %413 = select i1 %411, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.33, i64 0, i64 0)
  %414 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %413)
  %415 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @str.101, i64 0, i64 0))
  %416 = load i8*, i8** bitcast (i32** @_ZL19d_PartialHistograms to i8**), align 8, !tbaa !3
  %417 = call i32 @hipFree(i8* %416)
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %423, label %419

419:                                              ; preds = %283
  %420 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %421 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %417)
  %422 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %420, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 335, i32 %417, i8* %421, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)) #22
  call void @exit(i32 1) #23
  unreachable

423:                                              ; preds = %283
  %424 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @str.102, i64 0, i64 0))
  %425 = call i32 @hipMalloc(i8** bitcast (i32** @_ZL19d_PartialHistograms to i8**), i64 245760)
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %431, label %427

427:                                              ; preds = %423
  %428 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %429 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %425)
  %430 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %428, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 177, i32 %425, i8* %429, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i64 0, i64 0)) #22
  call void @exit(i32 1) #23
  unreachable

431:                                              ; preds = %423
  %432 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([58 x i8], [58 x i8]* @.str.36, i64 0, i64 0), i32 %130, i32 16)
  %433 = load i32*, i32** %4, align 8, !tbaa !3
  %434 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram256(i32* %433, i8* %434, i32 %130)
  %435 = call i32 @hipDeviceSynchronize()
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %1061

437:                                              ; preds = %431
  %438 = load void (%class.StopWatchInterface*)**, void (%class.StopWatchInterface*)*** %174, align 8, !tbaa !18
  %439 = getelementptr inbounds void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %438, i64 4
  %440 = load void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %439, align 8
  call void %440(%class.StopWatchInterface* nonnull align 8 dereferenceable(8) %31)
  %441 = load void (%class.StopWatchInterface*)**, void (%class.StopWatchInterface*)*** %174, align 8, !tbaa !18
  %442 = getelementptr inbounds void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %441, i64 2
  %443 = load void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %442, align 8
  call void %443(%class.StopWatchInterface* nonnull align 8 dereferenceable(8) %31)
  %444 = load i32*, i32** %4, align 8, !tbaa !3
  %445 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram256(i32* %444, i8* %445, i32 %130)
  %446 = load i32*, i32** %4, align 8, !tbaa !3
  %447 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram256(i32* %446, i8* %447, i32 %130)
  %448 = load i32*, i32** %4, align 8, !tbaa !3
  %449 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram256(i32* %448, i8* %449, i32 %130)
  %450 = load i32*, i32** %4, align 8, !tbaa !3
  %451 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram256(i32* %450, i8* %451, i32 %130)
  %452 = load i32*, i32** %4, align 8, !tbaa !3
  %453 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram256(i32* %452, i8* %453, i32 %130)
  %454 = load i32*, i32** %4, align 8, !tbaa !3
  %455 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram256(i32* %454, i8* %455, i32 %130)
  %456 = load i32*, i32** %4, align 8, !tbaa !3
  %457 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram256(i32* %456, i8* %457, i32 %130)
  %458 = load i32*, i32** %4, align 8, !tbaa !3
  %459 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram256(i32* %458, i8* %459, i32 %130)
  %460 = load i32*, i32** %4, align 8, !tbaa !3
  %461 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram256(i32* %460, i8* %461, i32 %130)
  %462 = load i32*, i32** %4, align 8, !tbaa !3
  %463 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram256(i32* %462, i8* %463, i32 %130)
  %464 = load i32*, i32** %4, align 8, !tbaa !3
  %465 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram256(i32* %464, i8* %465, i32 %130)
  %466 = load i32*, i32** %4, align 8, !tbaa !3
  %467 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram256(i32* %466, i8* %467, i32 %130)
  %468 = load i32*, i32** %4, align 8, !tbaa !3
  %469 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram256(i32* %468, i8* %469, i32 %130)
  %470 = load i32*, i32** %4, align 8, !tbaa !3
  %471 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram256(i32* %470, i8* %471, i32 %130)
  %472 = load i32*, i32** %4, align 8, !tbaa !3
  %473 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram256(i32* %472, i8* %473, i32 %130)
  %474 = load i32*, i32** %4, align 8, !tbaa !3
  %475 = load i8*, i8** %3, align 8, !tbaa !3
  call void @histogram256(i32* %474, i8* %475, i32 %130)
  %476 = call i32 @hipDeviceSynchronize()
  %477 = load void (%class.StopWatchInterface*)**, void (%class.StopWatchInterface*)*** %174, align 8, !tbaa !18
  %478 = getelementptr inbounds void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %477, i64 3
  %479 = load void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %478, align 8
  call void %479(%class.StopWatchInterface* nonnull align 8 dereferenceable(8) %31)
  %480 = load float (%class.StopWatchInterface*)**, float (%class.StopWatchInterface*)*** %220, align 8, !tbaa !18
  %481 = getelementptr inbounds float (%class.StopWatchInterface*)*, float (%class.StopWatchInterface*)** %480, i64 5
  %482 = load float (%class.StopWatchInterface*)*, float (%class.StopWatchInterface*)** %481, align 8
  %483 = call contract float %482(%class.StopWatchInterface* nonnull align 8 dereferenceable(8) %31)
  %484 = fpext float %483 to double
  %485 = fmul contract double %484, 1.000000e-03
  %486 = fmul contract double %485, 6.250000e-02
  %487 = fdiv contract double %229, %486
  %488 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([56 x i8], [56 x i8]* @.str.38, i64 0, i64 0), double %486, double %487)
  %489 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([104 x i8], [104 x i8]* @.str.39, i64 0, i64 0), double %487, double %486, i32 %130, i32 1, i32 192)
  %490 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @str.103, i64 0, i64 0))
  %491 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @str.104, i64 0, i64 0))
  %492 = load i8*, i8** %149, align 8, !tbaa !3
  %493 = call i32 @hipMemcpy(i8* %137, i8* %492, i64 1024, i32 2)
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %499, label %495

495:                                              ; preds = %437
  %496 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %497 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %493)
  %498 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %496, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 538, i32 %493, i8* %497, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.40, i64 0, i64 0)) #22
  call void @exit(i32 1) #23
  unreachable

499:                                              ; preds = %437
  %500 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @str.105, i64 0, i64 0))
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(1024) %135, i8 0, i64 1024, i1 false) #24, !tbaa !7
  %501 = zext i32 %251 to i64
  br label %502

502:                                              ; preds = %502, %499
  %503 = phi i64 [ 0, %499 ], [ %528, %502 ]
  %504 = getelementptr inbounds i32, i32* %252, i64 %503
  %505 = load i32, i32* %504, align 4, !tbaa !7
  %506 = and i32 %505, 255
  %507 = zext i32 %506 to i64
  %508 = getelementptr inbounds i32, i32* %136, i64 %507
  %509 = load i32, i32* %508, align 4, !tbaa !7
  %510 = add i32 %509, 1
  store i32 %510, i32* %508, align 4, !tbaa !7
  %511 = lshr i32 %505, 8
  %512 = and i32 %511, 255
  %513 = zext i32 %512 to i64
  %514 = getelementptr inbounds i32, i32* %136, i64 %513
  %515 = load i32, i32* %514, align 4, !tbaa !7
  %516 = add i32 %515, 1
  store i32 %516, i32* %514, align 4, !tbaa !7
  %517 = lshr i32 %505, 16
  %518 = and i32 %517, 255
  %519 = zext i32 %518 to i64
  %520 = getelementptr inbounds i32, i32* %136, i64 %519
  %521 = load i32, i32* %520, align 4, !tbaa !7
  %522 = add i32 %521, 1
  store i32 %522, i32* %520, align 4, !tbaa !7
  %523 = lshr i32 %505, 24
  %524 = zext i32 %523 to i64
  %525 = getelementptr inbounds i32, i32* %136, i64 %524
  %526 = load i32, i32* %525, align 4, !tbaa !7
  %527 = add i32 %526, 1
  store i32 %527, i32* %525, align 4, !tbaa !7
  %528 = add nuw nsw i64 %503, 1
  %529 = icmp eq i64 %528, %501
  br i1 %529, label %530, label %502, !llvm.loop !11

530:                                              ; preds = %502
  %531 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @str.106, i64 0, i64 0))
  %532 = insertelement <4 x i32> poison, i32 %412, i64 0
  %533 = shufflevector <4 x i32> %532, <4 x i32> poison, <4 x i32> zeroinitializer
  %534 = bitcast i8* %137 to <4 x i32>*
  %535 = load <4 x i32>, <4 x i32>* %534, align 16, !tbaa !7
  %536 = getelementptr inbounds i32, i32* %138, i64 4
  %537 = bitcast i32* %536 to <4 x i32>*
  %538 = load <4 x i32>, <4 x i32>* %537, align 16, !tbaa !7
  %539 = bitcast i8* %135 to <4 x i32>*
  %540 = load <4 x i32>, <4 x i32>* %539, align 16, !tbaa !7
  %541 = getelementptr inbounds i32, i32* %136, i64 4
  %542 = bitcast i32* %541 to <4 x i32>*
  %543 = load <4 x i32>, <4 x i32>* %542, align 16, !tbaa !7
  %544 = icmp eq <4 x i32> %535, %540
  %545 = icmp eq <4 x i32> %538, %543
  %546 = getelementptr inbounds i32, i32* %138, i64 8
  %547 = bitcast i32* %546 to <4 x i32>*
  %548 = load <4 x i32>, <4 x i32>* %547, align 16, !tbaa !7
  %549 = getelementptr inbounds i32, i32* %138, i64 12
  %550 = bitcast i32* %549 to <4 x i32>*
  %551 = load <4 x i32>, <4 x i32>* %550, align 16, !tbaa !7
  %552 = getelementptr inbounds i32, i32* %136, i64 8
  %553 = bitcast i32* %552 to <4 x i32>*
  %554 = load <4 x i32>, <4 x i32>* %553, align 16, !tbaa !7
  %555 = getelementptr inbounds i32, i32* %136, i64 12
  %556 = bitcast i32* %555 to <4 x i32>*
  %557 = load <4 x i32>, <4 x i32>* %556, align 16, !tbaa !7
  %558 = icmp eq <4 x i32> %548, %554
  %559 = icmp eq <4 x i32> %551, %557
  %560 = getelementptr inbounds i32, i32* %138, i64 16
  %561 = bitcast i32* %560 to <4 x i32>*
  %562 = load <4 x i32>, <4 x i32>* %561, align 16, !tbaa !7
  %563 = getelementptr inbounds i32, i32* %138, i64 20
  %564 = bitcast i32* %563 to <4 x i32>*
  %565 = load <4 x i32>, <4 x i32>* %564, align 16, !tbaa !7
  %566 = getelementptr inbounds i32, i32* %136, i64 16
  %567 = bitcast i32* %566 to <4 x i32>*
  %568 = load <4 x i32>, <4 x i32>* %567, align 16, !tbaa !7
  %569 = getelementptr inbounds i32, i32* %136, i64 20
  %570 = bitcast i32* %569 to <4 x i32>*
  %571 = load <4 x i32>, <4 x i32>* %570, align 16, !tbaa !7
  %572 = icmp eq <4 x i32> %562, %568
  %573 = icmp eq <4 x i32> %565, %571
  %574 = getelementptr inbounds i32, i32* %138, i64 24
  %575 = bitcast i32* %574 to <4 x i32>*
  %576 = load <4 x i32>, <4 x i32>* %575, align 16, !tbaa !7
  %577 = getelementptr inbounds i32, i32* %138, i64 28
  %578 = bitcast i32* %577 to <4 x i32>*
  %579 = load <4 x i32>, <4 x i32>* %578, align 16, !tbaa !7
  %580 = getelementptr inbounds i32, i32* %136, i64 24
  %581 = bitcast i32* %580 to <4 x i32>*
  %582 = load <4 x i32>, <4 x i32>* %581, align 16, !tbaa !7
  %583 = getelementptr inbounds i32, i32* %136, i64 28
  %584 = bitcast i32* %583 to <4 x i32>*
  %585 = load <4 x i32>, <4 x i32>* %584, align 16, !tbaa !7
  %586 = icmp eq <4 x i32> %576, %582
  %587 = icmp eq <4 x i32> %579, %585
  %588 = getelementptr inbounds i32, i32* %138, i64 32
  %589 = bitcast i32* %588 to <4 x i32>*
  %590 = load <4 x i32>, <4 x i32>* %589, align 16, !tbaa !7
  %591 = getelementptr inbounds i32, i32* %138, i64 36
  %592 = bitcast i32* %591 to <4 x i32>*
  %593 = load <4 x i32>, <4 x i32>* %592, align 16, !tbaa !7
  %594 = getelementptr inbounds i32, i32* %136, i64 32
  %595 = bitcast i32* %594 to <4 x i32>*
  %596 = load <4 x i32>, <4 x i32>* %595, align 16, !tbaa !7
  %597 = getelementptr inbounds i32, i32* %136, i64 36
  %598 = bitcast i32* %597 to <4 x i32>*
  %599 = load <4 x i32>, <4 x i32>* %598, align 16, !tbaa !7
  %600 = icmp eq <4 x i32> %590, %596
  %601 = icmp eq <4 x i32> %593, %599
  %602 = getelementptr inbounds i32, i32* %138, i64 40
  %603 = bitcast i32* %602 to <4 x i32>*
  %604 = load <4 x i32>, <4 x i32>* %603, align 16, !tbaa !7
  %605 = getelementptr inbounds i32, i32* %138, i64 44
  %606 = bitcast i32* %605 to <4 x i32>*
  %607 = load <4 x i32>, <4 x i32>* %606, align 16, !tbaa !7
  %608 = getelementptr inbounds i32, i32* %136, i64 40
  %609 = bitcast i32* %608 to <4 x i32>*
  %610 = load <4 x i32>, <4 x i32>* %609, align 16, !tbaa !7
  %611 = getelementptr inbounds i32, i32* %136, i64 44
  %612 = bitcast i32* %611 to <4 x i32>*
  %613 = load <4 x i32>, <4 x i32>* %612, align 16, !tbaa !7
  %614 = icmp eq <4 x i32> %604, %610
  %615 = icmp eq <4 x i32> %607, %613
  %616 = getelementptr inbounds i32, i32* %138, i64 48
  %617 = bitcast i32* %616 to <4 x i32>*
  %618 = load <4 x i32>, <4 x i32>* %617, align 16, !tbaa !7
  %619 = getelementptr inbounds i32, i32* %138, i64 52
  %620 = bitcast i32* %619 to <4 x i32>*
  %621 = load <4 x i32>, <4 x i32>* %620, align 16, !tbaa !7
  %622 = getelementptr inbounds i32, i32* %136, i64 48
  %623 = bitcast i32* %622 to <4 x i32>*
  %624 = load <4 x i32>, <4 x i32>* %623, align 16, !tbaa !7
  %625 = getelementptr inbounds i32, i32* %136, i64 52
  %626 = bitcast i32* %625 to <4 x i32>*
  %627 = load <4 x i32>, <4 x i32>* %626, align 16, !tbaa !7
  %628 = icmp eq <4 x i32> %618, %624
  %629 = icmp eq <4 x i32> %621, %627
  %630 = getelementptr inbounds i32, i32* %138, i64 56
  %631 = bitcast i32* %630 to <4 x i32>*
  %632 = load <4 x i32>, <4 x i32>* %631, align 16, !tbaa !7
  %633 = getelementptr inbounds i32, i32* %138, i64 60
  %634 = bitcast i32* %633 to <4 x i32>*
  %635 = load <4 x i32>, <4 x i32>* %634, align 16, !tbaa !7
  %636 = getelementptr inbounds i32, i32* %136, i64 56
  %637 = bitcast i32* %636 to <4 x i32>*
  %638 = load <4 x i32>, <4 x i32>* %637, align 16, !tbaa !7
  %639 = getelementptr inbounds i32, i32* %136, i64 60
  %640 = bitcast i32* %639 to <4 x i32>*
  %641 = load <4 x i32>, <4 x i32>* %640, align 16, !tbaa !7
  %642 = icmp eq <4 x i32> %632, %638
  %643 = icmp eq <4 x i32> %635, %641
  %644 = getelementptr inbounds i32, i32* %138, i64 64
  %645 = bitcast i32* %644 to <4 x i32>*
  %646 = load <4 x i32>, <4 x i32>* %645, align 16, !tbaa !7
  %647 = getelementptr inbounds i32, i32* %138, i64 68
  %648 = bitcast i32* %647 to <4 x i32>*
  %649 = load <4 x i32>, <4 x i32>* %648, align 16, !tbaa !7
  %650 = getelementptr inbounds i32, i32* %136, i64 64
  %651 = bitcast i32* %650 to <4 x i32>*
  %652 = load <4 x i32>, <4 x i32>* %651, align 16, !tbaa !7
  %653 = getelementptr inbounds i32, i32* %136, i64 68
  %654 = bitcast i32* %653 to <4 x i32>*
  %655 = load <4 x i32>, <4 x i32>* %654, align 16, !tbaa !7
  %656 = icmp eq <4 x i32> %646, %652
  %657 = icmp eq <4 x i32> %649, %655
  %658 = getelementptr inbounds i32, i32* %138, i64 72
  %659 = bitcast i32* %658 to <4 x i32>*
  %660 = load <4 x i32>, <4 x i32>* %659, align 16, !tbaa !7
  %661 = getelementptr inbounds i32, i32* %138, i64 76
  %662 = bitcast i32* %661 to <4 x i32>*
  %663 = load <4 x i32>, <4 x i32>* %662, align 16, !tbaa !7
  %664 = getelementptr inbounds i32, i32* %136, i64 72
  %665 = bitcast i32* %664 to <4 x i32>*
  %666 = load <4 x i32>, <4 x i32>* %665, align 16, !tbaa !7
  %667 = getelementptr inbounds i32, i32* %136, i64 76
  %668 = bitcast i32* %667 to <4 x i32>*
  %669 = load <4 x i32>, <4 x i32>* %668, align 16, !tbaa !7
  %670 = icmp eq <4 x i32> %660, %666
  %671 = icmp eq <4 x i32> %663, %669
  %672 = getelementptr inbounds i32, i32* %138, i64 80
  %673 = bitcast i32* %672 to <4 x i32>*
  %674 = load <4 x i32>, <4 x i32>* %673, align 16, !tbaa !7
  %675 = getelementptr inbounds i32, i32* %138, i64 84
  %676 = bitcast i32* %675 to <4 x i32>*
  %677 = load <4 x i32>, <4 x i32>* %676, align 16, !tbaa !7
  %678 = getelementptr inbounds i32, i32* %136, i64 80
  %679 = bitcast i32* %678 to <4 x i32>*
  %680 = load <4 x i32>, <4 x i32>* %679, align 16, !tbaa !7
  %681 = getelementptr inbounds i32, i32* %136, i64 84
  %682 = bitcast i32* %681 to <4 x i32>*
  %683 = load <4 x i32>, <4 x i32>* %682, align 16, !tbaa !7
  %684 = icmp eq <4 x i32> %674, %680
  %685 = icmp eq <4 x i32> %677, %683
  %686 = getelementptr inbounds i32, i32* %138, i64 88
  %687 = bitcast i32* %686 to <4 x i32>*
  %688 = load <4 x i32>, <4 x i32>* %687, align 16, !tbaa !7
  %689 = getelementptr inbounds i32, i32* %138, i64 92
  %690 = bitcast i32* %689 to <4 x i32>*
  %691 = load <4 x i32>, <4 x i32>* %690, align 16, !tbaa !7
  %692 = getelementptr inbounds i32, i32* %136, i64 88
  %693 = bitcast i32* %692 to <4 x i32>*
  %694 = load <4 x i32>, <4 x i32>* %693, align 16, !tbaa !7
  %695 = getelementptr inbounds i32, i32* %136, i64 92
  %696 = bitcast i32* %695 to <4 x i32>*
  %697 = load <4 x i32>, <4 x i32>* %696, align 16, !tbaa !7
  %698 = icmp eq <4 x i32> %688, %694
  %699 = icmp eq <4 x i32> %691, %697
  %700 = getelementptr inbounds i32, i32* %138, i64 96
  %701 = bitcast i32* %700 to <4 x i32>*
  %702 = load <4 x i32>, <4 x i32>* %701, align 16, !tbaa !7
  %703 = getelementptr inbounds i32, i32* %138, i64 100
  %704 = bitcast i32* %703 to <4 x i32>*
  %705 = load <4 x i32>, <4 x i32>* %704, align 16, !tbaa !7
  %706 = getelementptr inbounds i32, i32* %136, i64 96
  %707 = bitcast i32* %706 to <4 x i32>*
  %708 = load <4 x i32>, <4 x i32>* %707, align 16, !tbaa !7
  %709 = getelementptr inbounds i32, i32* %136, i64 100
  %710 = bitcast i32* %709 to <4 x i32>*
  %711 = load <4 x i32>, <4 x i32>* %710, align 16, !tbaa !7
  %712 = icmp eq <4 x i32> %702, %708
  %713 = icmp eq <4 x i32> %705, %711
  %714 = getelementptr inbounds i32, i32* %138, i64 104
  %715 = bitcast i32* %714 to <4 x i32>*
  %716 = load <4 x i32>, <4 x i32>* %715, align 16, !tbaa !7
  %717 = getelementptr inbounds i32, i32* %138, i64 108
  %718 = bitcast i32* %717 to <4 x i32>*
  %719 = load <4 x i32>, <4 x i32>* %718, align 16, !tbaa !7
  %720 = getelementptr inbounds i32, i32* %136, i64 104
  %721 = bitcast i32* %720 to <4 x i32>*
  %722 = load <4 x i32>, <4 x i32>* %721, align 16, !tbaa !7
  %723 = getelementptr inbounds i32, i32* %136, i64 108
  %724 = bitcast i32* %723 to <4 x i32>*
  %725 = load <4 x i32>, <4 x i32>* %724, align 16, !tbaa !7
  %726 = icmp eq <4 x i32> %716, %722
  %727 = icmp eq <4 x i32> %719, %725
  %728 = getelementptr inbounds i32, i32* %138, i64 112
  %729 = bitcast i32* %728 to <4 x i32>*
  %730 = load <4 x i32>, <4 x i32>* %729, align 16, !tbaa !7
  %731 = getelementptr inbounds i32, i32* %138, i64 116
  %732 = bitcast i32* %731 to <4 x i32>*
  %733 = load <4 x i32>, <4 x i32>* %732, align 16, !tbaa !7
  %734 = getelementptr inbounds i32, i32* %136, i64 112
  %735 = bitcast i32* %734 to <4 x i32>*
  %736 = load <4 x i32>, <4 x i32>* %735, align 16, !tbaa !7
  %737 = getelementptr inbounds i32, i32* %136, i64 116
  %738 = bitcast i32* %737 to <4 x i32>*
  %739 = load <4 x i32>, <4 x i32>* %738, align 16, !tbaa !7
  %740 = icmp eq <4 x i32> %730, %736
  %741 = icmp eq <4 x i32> %733, %739
  %742 = getelementptr inbounds i32, i32* %138, i64 120
  %743 = bitcast i32* %742 to <4 x i32>*
  %744 = load <4 x i32>, <4 x i32>* %743, align 16, !tbaa !7
  %745 = getelementptr inbounds i32, i32* %138, i64 124
  %746 = bitcast i32* %745 to <4 x i32>*
  %747 = load <4 x i32>, <4 x i32>* %746, align 16, !tbaa !7
  %748 = getelementptr inbounds i32, i32* %136, i64 120
  %749 = bitcast i32* %748 to <4 x i32>*
  %750 = load <4 x i32>, <4 x i32>* %749, align 16, !tbaa !7
  %751 = getelementptr inbounds i32, i32* %136, i64 124
  %752 = bitcast i32* %751 to <4 x i32>*
  %753 = load <4 x i32>, <4 x i32>* %752, align 16, !tbaa !7
  %754 = icmp eq <4 x i32> %744, %750
  %755 = icmp eq <4 x i32> %747, %753
  %756 = getelementptr inbounds i32, i32* %138, i64 128
  %757 = bitcast i32* %756 to <4 x i32>*
  %758 = load <4 x i32>, <4 x i32>* %757, align 16, !tbaa !7
  %759 = getelementptr inbounds i32, i32* %138, i64 132
  %760 = bitcast i32* %759 to <4 x i32>*
  %761 = load <4 x i32>, <4 x i32>* %760, align 16, !tbaa !7
  %762 = getelementptr inbounds i32, i32* %136, i64 128
  %763 = bitcast i32* %762 to <4 x i32>*
  %764 = load <4 x i32>, <4 x i32>* %763, align 16, !tbaa !7
  %765 = getelementptr inbounds i32, i32* %136, i64 132
  %766 = bitcast i32* %765 to <4 x i32>*
  %767 = load <4 x i32>, <4 x i32>* %766, align 16, !tbaa !7
  %768 = icmp eq <4 x i32> %758, %764
  %769 = icmp eq <4 x i32> %761, %767
  %770 = getelementptr inbounds i32, i32* %138, i64 136
  %771 = bitcast i32* %770 to <4 x i32>*
  %772 = load <4 x i32>, <4 x i32>* %771, align 16, !tbaa !7
  %773 = getelementptr inbounds i32, i32* %138, i64 140
  %774 = bitcast i32* %773 to <4 x i32>*
  %775 = load <4 x i32>, <4 x i32>* %774, align 16, !tbaa !7
  %776 = getelementptr inbounds i32, i32* %136, i64 136
  %777 = bitcast i32* %776 to <4 x i32>*
  %778 = load <4 x i32>, <4 x i32>* %777, align 16, !tbaa !7
  %779 = getelementptr inbounds i32, i32* %136, i64 140
  %780 = bitcast i32* %779 to <4 x i32>*
  %781 = load <4 x i32>, <4 x i32>* %780, align 16, !tbaa !7
  %782 = icmp eq <4 x i32> %772, %778
  %783 = icmp eq <4 x i32> %775, %781
  %784 = getelementptr inbounds i32, i32* %138, i64 144
  %785 = bitcast i32* %784 to <4 x i32>*
  %786 = load <4 x i32>, <4 x i32>* %785, align 16, !tbaa !7
  %787 = getelementptr inbounds i32, i32* %138, i64 148
  %788 = bitcast i32* %787 to <4 x i32>*
  %789 = load <4 x i32>, <4 x i32>* %788, align 16, !tbaa !7
  %790 = getelementptr inbounds i32, i32* %136, i64 144
  %791 = bitcast i32* %790 to <4 x i32>*
  %792 = load <4 x i32>, <4 x i32>* %791, align 16, !tbaa !7
  %793 = getelementptr inbounds i32, i32* %136, i64 148
  %794 = bitcast i32* %793 to <4 x i32>*
  %795 = load <4 x i32>, <4 x i32>* %794, align 16, !tbaa !7
  %796 = icmp eq <4 x i32> %786, %792
  %797 = icmp eq <4 x i32> %789, %795
  %798 = getelementptr inbounds i32, i32* %138, i64 152
  %799 = bitcast i32* %798 to <4 x i32>*
  %800 = load <4 x i32>, <4 x i32>* %799, align 16, !tbaa !7
  %801 = getelementptr inbounds i32, i32* %138, i64 156
  %802 = bitcast i32* %801 to <4 x i32>*
  %803 = load <4 x i32>, <4 x i32>* %802, align 16, !tbaa !7
  %804 = getelementptr inbounds i32, i32* %136, i64 152
  %805 = bitcast i32* %804 to <4 x i32>*
  %806 = load <4 x i32>, <4 x i32>* %805, align 16, !tbaa !7
  %807 = getelementptr inbounds i32, i32* %136, i64 156
  %808 = bitcast i32* %807 to <4 x i32>*
  %809 = load <4 x i32>, <4 x i32>* %808, align 16, !tbaa !7
  %810 = icmp eq <4 x i32> %800, %806
  %811 = icmp eq <4 x i32> %803, %809
  %812 = getelementptr inbounds i32, i32* %138, i64 160
  %813 = bitcast i32* %812 to <4 x i32>*
  %814 = load <4 x i32>, <4 x i32>* %813, align 16, !tbaa !7
  %815 = getelementptr inbounds i32, i32* %138, i64 164
  %816 = bitcast i32* %815 to <4 x i32>*
  %817 = load <4 x i32>, <4 x i32>* %816, align 16, !tbaa !7
  %818 = getelementptr inbounds i32, i32* %136, i64 160
  %819 = bitcast i32* %818 to <4 x i32>*
  %820 = load <4 x i32>, <4 x i32>* %819, align 16, !tbaa !7
  %821 = getelementptr inbounds i32, i32* %136, i64 164
  %822 = bitcast i32* %821 to <4 x i32>*
  %823 = load <4 x i32>, <4 x i32>* %822, align 16, !tbaa !7
  %824 = icmp eq <4 x i32> %814, %820
  %825 = icmp eq <4 x i32> %817, %823
  %826 = getelementptr inbounds i32, i32* %138, i64 168
  %827 = bitcast i32* %826 to <4 x i32>*
  %828 = load <4 x i32>, <4 x i32>* %827, align 16, !tbaa !7
  %829 = getelementptr inbounds i32, i32* %138, i64 172
  %830 = bitcast i32* %829 to <4 x i32>*
  %831 = load <4 x i32>, <4 x i32>* %830, align 16, !tbaa !7
  %832 = getelementptr inbounds i32, i32* %136, i64 168
  %833 = bitcast i32* %832 to <4 x i32>*
  %834 = load <4 x i32>, <4 x i32>* %833, align 16, !tbaa !7
  %835 = getelementptr inbounds i32, i32* %136, i64 172
  %836 = bitcast i32* %835 to <4 x i32>*
  %837 = load <4 x i32>, <4 x i32>* %836, align 16, !tbaa !7
  %838 = icmp eq <4 x i32> %828, %834
  %839 = icmp eq <4 x i32> %831, %837
  %840 = getelementptr inbounds i32, i32* %138, i64 176
  %841 = bitcast i32* %840 to <4 x i32>*
  %842 = load <4 x i32>, <4 x i32>* %841, align 16, !tbaa !7
  %843 = getelementptr inbounds i32, i32* %138, i64 180
  %844 = bitcast i32* %843 to <4 x i32>*
  %845 = load <4 x i32>, <4 x i32>* %844, align 16, !tbaa !7
  %846 = getelementptr inbounds i32, i32* %136, i64 176
  %847 = bitcast i32* %846 to <4 x i32>*
  %848 = load <4 x i32>, <4 x i32>* %847, align 16, !tbaa !7
  %849 = getelementptr inbounds i32, i32* %136, i64 180
  %850 = bitcast i32* %849 to <4 x i32>*
  %851 = load <4 x i32>, <4 x i32>* %850, align 16, !tbaa !7
  %852 = icmp eq <4 x i32> %842, %848
  %853 = icmp eq <4 x i32> %845, %851
  %854 = getelementptr inbounds i32, i32* %138, i64 184
  %855 = bitcast i32* %854 to <4 x i32>*
  %856 = load <4 x i32>, <4 x i32>* %855, align 16, !tbaa !7
  %857 = getelementptr inbounds i32, i32* %138, i64 188
  %858 = bitcast i32* %857 to <4 x i32>*
  %859 = load <4 x i32>, <4 x i32>* %858, align 16, !tbaa !7
  %860 = getelementptr inbounds i32, i32* %136, i64 184
  %861 = bitcast i32* %860 to <4 x i32>*
  %862 = load <4 x i32>, <4 x i32>* %861, align 16, !tbaa !7
  %863 = getelementptr inbounds i32, i32* %136, i64 188
  %864 = bitcast i32* %863 to <4 x i32>*
  %865 = load <4 x i32>, <4 x i32>* %864, align 16, !tbaa !7
  %866 = icmp eq <4 x i32> %856, %862
  %867 = icmp eq <4 x i32> %859, %865
  %868 = getelementptr inbounds i32, i32* %138, i64 192
  %869 = bitcast i32* %868 to <4 x i32>*
  %870 = load <4 x i32>, <4 x i32>* %869, align 16, !tbaa !7
  %871 = getelementptr inbounds i32, i32* %138, i64 196
  %872 = bitcast i32* %871 to <4 x i32>*
  %873 = load <4 x i32>, <4 x i32>* %872, align 16, !tbaa !7
  %874 = getelementptr inbounds i32, i32* %136, i64 192
  %875 = bitcast i32* %874 to <4 x i32>*
  %876 = load <4 x i32>, <4 x i32>* %875, align 16, !tbaa !7
  %877 = getelementptr inbounds i32, i32* %136, i64 196
  %878 = bitcast i32* %877 to <4 x i32>*
  %879 = load <4 x i32>, <4 x i32>* %878, align 16, !tbaa !7
  %880 = icmp eq <4 x i32> %870, %876
  %881 = icmp eq <4 x i32> %873, %879
  %882 = getelementptr inbounds i32, i32* %138, i64 200
  %883 = bitcast i32* %882 to <4 x i32>*
  %884 = load <4 x i32>, <4 x i32>* %883, align 16, !tbaa !7
  %885 = getelementptr inbounds i32, i32* %138, i64 204
  %886 = bitcast i32* %885 to <4 x i32>*
  %887 = load <4 x i32>, <4 x i32>* %886, align 16, !tbaa !7
  %888 = getelementptr inbounds i32, i32* %136, i64 200
  %889 = bitcast i32* %888 to <4 x i32>*
  %890 = load <4 x i32>, <4 x i32>* %889, align 16, !tbaa !7
  %891 = getelementptr inbounds i32, i32* %136, i64 204
  %892 = bitcast i32* %891 to <4 x i32>*
  %893 = load <4 x i32>, <4 x i32>* %892, align 16, !tbaa !7
  %894 = icmp eq <4 x i32> %884, %890
  %895 = icmp eq <4 x i32> %887, %893
  %896 = getelementptr inbounds i32, i32* %138, i64 208
  %897 = bitcast i32* %896 to <4 x i32>*
  %898 = load <4 x i32>, <4 x i32>* %897, align 16, !tbaa !7
  %899 = getelementptr inbounds i32, i32* %138, i64 212
  %900 = bitcast i32* %899 to <4 x i32>*
  %901 = load <4 x i32>, <4 x i32>* %900, align 16, !tbaa !7
  %902 = getelementptr inbounds i32, i32* %136, i64 208
  %903 = bitcast i32* %902 to <4 x i32>*
  %904 = load <4 x i32>, <4 x i32>* %903, align 16, !tbaa !7
  %905 = getelementptr inbounds i32, i32* %136, i64 212
  %906 = bitcast i32* %905 to <4 x i32>*
  %907 = load <4 x i32>, <4 x i32>* %906, align 16, !tbaa !7
  %908 = icmp eq <4 x i32> %898, %904
  %909 = icmp eq <4 x i32> %901, %907
  %910 = getelementptr inbounds i32, i32* %138, i64 216
  %911 = bitcast i32* %910 to <4 x i32>*
  %912 = load <4 x i32>, <4 x i32>* %911, align 16, !tbaa !7
  %913 = getelementptr inbounds i32, i32* %138, i64 220
  %914 = bitcast i32* %913 to <4 x i32>*
  %915 = load <4 x i32>, <4 x i32>* %914, align 16, !tbaa !7
  %916 = getelementptr inbounds i32, i32* %136, i64 216
  %917 = bitcast i32* %916 to <4 x i32>*
  %918 = load <4 x i32>, <4 x i32>* %917, align 16, !tbaa !7
  %919 = getelementptr inbounds i32, i32* %136, i64 220
  %920 = bitcast i32* %919 to <4 x i32>*
  %921 = load <4 x i32>, <4 x i32>* %920, align 16, !tbaa !7
  %922 = icmp eq <4 x i32> %912, %918
  %923 = icmp eq <4 x i32> %915, %921
  %924 = getelementptr inbounds i32, i32* %138, i64 224
  %925 = bitcast i32* %924 to <4 x i32>*
  %926 = load <4 x i32>, <4 x i32>* %925, align 16, !tbaa !7
  %927 = getelementptr inbounds i32, i32* %138, i64 228
  %928 = bitcast i32* %927 to <4 x i32>*
  %929 = load <4 x i32>, <4 x i32>* %928, align 16, !tbaa !7
  %930 = getelementptr inbounds i32, i32* %136, i64 224
  %931 = bitcast i32* %930 to <4 x i32>*
  %932 = load <4 x i32>, <4 x i32>* %931, align 16, !tbaa !7
  %933 = getelementptr inbounds i32, i32* %136, i64 228
  %934 = bitcast i32* %933 to <4 x i32>*
  %935 = load <4 x i32>, <4 x i32>* %934, align 16, !tbaa !7
  %936 = icmp eq <4 x i32> %926, %932
  %937 = icmp eq <4 x i32> %929, %935
  %938 = getelementptr inbounds i32, i32* %138, i64 232
  %939 = bitcast i32* %938 to <4 x i32>*
  %940 = load <4 x i32>, <4 x i32>* %939, align 16, !tbaa !7
  %941 = getelementptr inbounds i32, i32* %138, i64 236
  %942 = bitcast i32* %941 to <4 x i32>*
  %943 = load <4 x i32>, <4 x i32>* %942, align 16, !tbaa !7
  %944 = getelementptr inbounds i32, i32* %136, i64 232
  %945 = bitcast i32* %944 to <4 x i32>*
  %946 = load <4 x i32>, <4 x i32>* %945, align 16, !tbaa !7
  %947 = getelementptr inbounds i32, i32* %136, i64 236
  %948 = bitcast i32* %947 to <4 x i32>*
  %949 = load <4 x i32>, <4 x i32>* %948, align 16, !tbaa !7
  %950 = icmp eq <4 x i32> %940, %946
  %951 = icmp eq <4 x i32> %943, %949
  %952 = getelementptr inbounds i32, i32* %138, i64 240
  %953 = bitcast i32* %952 to <4 x i32>*
  %954 = load <4 x i32>, <4 x i32>* %953, align 16, !tbaa !7
  %955 = getelementptr inbounds i32, i32* %138, i64 244
  %956 = bitcast i32* %955 to <4 x i32>*
  %957 = load <4 x i32>, <4 x i32>* %956, align 16, !tbaa !7
  %958 = getelementptr inbounds i32, i32* %136, i64 240
  %959 = bitcast i32* %958 to <4 x i32>*
  %960 = load <4 x i32>, <4 x i32>* %959, align 16, !tbaa !7
  %961 = getelementptr inbounds i32, i32* %136, i64 244
  %962 = bitcast i32* %961 to <4 x i32>*
  %963 = load <4 x i32>, <4 x i32>* %962, align 16, !tbaa !7
  %964 = icmp eq <4 x i32> %954, %960
  %965 = icmp eq <4 x i32> %957, %963
  %966 = getelementptr inbounds i32, i32* %138, i64 248
  %967 = bitcast i32* %966 to <4 x i32>*
  %968 = load <4 x i32>, <4 x i32>* %967, align 16, !tbaa !7
  %969 = getelementptr inbounds i32, i32* %138, i64 252
  %970 = bitcast i32* %969 to <4 x i32>*
  %971 = load <4 x i32>, <4 x i32>* %970, align 16, !tbaa !7
  %972 = getelementptr inbounds i32, i32* %136, i64 248
  %973 = bitcast i32* %972 to <4 x i32>*
  %974 = load <4 x i32>, <4 x i32>* %973, align 16, !tbaa !7
  %975 = getelementptr inbounds i32, i32* %136, i64 252
  %976 = bitcast i32* %975 to <4 x i32>*
  %977 = load <4 x i32>, <4 x i32>* %976, align 16, !tbaa !7
  %978 = icmp eq <4 x i32> %968, %974
  %979 = icmp eq <4 x i32> %971, %977
  %980 = select <4 x i1> %978, <4 x i1> %964, <4 x i1> zeroinitializer
  %981 = select <4 x i1> %980, <4 x i1> %950, <4 x i1> zeroinitializer
  %982 = select <4 x i1> %981, <4 x i1> %936, <4 x i1> zeroinitializer
  %983 = select <4 x i1> %982, <4 x i1> %922, <4 x i1> zeroinitializer
  %984 = select <4 x i1> %983, <4 x i1> %908, <4 x i1> zeroinitializer
  %985 = select <4 x i1> %984, <4 x i1> %894, <4 x i1> zeroinitializer
  %986 = select <4 x i1> %985, <4 x i1> %880, <4 x i1> zeroinitializer
  %987 = select <4 x i1> %986, <4 x i1> %866, <4 x i1> zeroinitializer
  %988 = select <4 x i1> %987, <4 x i1> %852, <4 x i1> zeroinitializer
  %989 = select <4 x i1> %988, <4 x i1> %838, <4 x i1> zeroinitializer
  %990 = select <4 x i1> %989, <4 x i1> %824, <4 x i1> zeroinitializer
  %991 = select <4 x i1> %990, <4 x i1> %810, <4 x i1> zeroinitializer
  %992 = select <4 x i1> %991, <4 x i1> %796, <4 x i1> zeroinitializer
  %993 = select <4 x i1> %992, <4 x i1> %782, <4 x i1> zeroinitializer
  %994 = select <4 x i1> %993, <4 x i1> %768, <4 x i1> zeroinitializer
  %995 = select <4 x i1> %994, <4 x i1> %754, <4 x i1> zeroinitializer
  %996 = select <4 x i1> %995, <4 x i1> %740, <4 x i1> zeroinitializer
  %997 = select <4 x i1> %996, <4 x i1> %726, <4 x i1> zeroinitializer
  %998 = select <4 x i1> %997, <4 x i1> %712, <4 x i1> zeroinitializer
  %999 = select <4 x i1> %998, <4 x i1> %698, <4 x i1> zeroinitializer
  %1000 = select <4 x i1> %999, <4 x i1> %684, <4 x i1> zeroinitializer
  %1001 = select <4 x i1> %1000, <4 x i1> %670, <4 x i1> zeroinitializer
  %1002 = select <4 x i1> %1001, <4 x i1> %656, <4 x i1> zeroinitializer
  %1003 = select <4 x i1> %1002, <4 x i1> %642, <4 x i1> zeroinitializer
  %1004 = select <4 x i1> %1003, <4 x i1> %628, <4 x i1> zeroinitializer
  %1005 = select <4 x i1> %1004, <4 x i1> %614, <4 x i1> zeroinitializer
  %1006 = select <4 x i1> %1005, <4 x i1> %600, <4 x i1> zeroinitializer
  %1007 = select <4 x i1> %1006, <4 x i1> %586, <4 x i1> zeroinitializer
  %1008 = select <4 x i1> %1007, <4 x i1> %572, <4 x i1> zeroinitializer
  %1009 = select <4 x i1> %1008, <4 x i1> %558, <4 x i1> zeroinitializer
  %1010 = select <4 x i1> %1009, <4 x i1> %544, <4 x i1> zeroinitializer
  %1011 = select <4 x i1> %1010, <4 x i32> %533, <4 x i32> zeroinitializer
  %1012 = select <4 x i1> %979, <4 x i1> %965, <4 x i1> zeroinitializer
  %1013 = select <4 x i1> %1012, <4 x i1> %951, <4 x i1> zeroinitializer
  %1014 = select <4 x i1> %1013, <4 x i1> %937, <4 x i1> zeroinitializer
  %1015 = select <4 x i1> %1014, <4 x i1> %923, <4 x i1> zeroinitializer
  %1016 = select <4 x i1> %1015, <4 x i1> %909, <4 x i1> zeroinitializer
  %1017 = select <4 x i1> %1016, <4 x i1> %895, <4 x i1> zeroinitializer
  %1018 = select <4 x i1> %1017, <4 x i1> %881, <4 x i1> zeroinitializer
  %1019 = select <4 x i1> %1018, <4 x i1> %867, <4 x i1> zeroinitializer
  %1020 = select <4 x i1> %1019, <4 x i1> %853, <4 x i1> zeroinitializer
  %1021 = select <4 x i1> %1020, <4 x i1> %839, <4 x i1> zeroinitializer
  %1022 = select <4 x i1> %1021, <4 x i1> %825, <4 x i1> zeroinitializer
  %1023 = select <4 x i1> %1022, <4 x i1> %811, <4 x i1> zeroinitializer
  %1024 = select <4 x i1> %1023, <4 x i1> %797, <4 x i1> zeroinitializer
  %1025 = select <4 x i1> %1024, <4 x i1> %783, <4 x i1> zeroinitializer
  %1026 = select <4 x i1> %1025, <4 x i1> %769, <4 x i1> zeroinitializer
  %1027 = select <4 x i1> %1026, <4 x i1> %755, <4 x i1> zeroinitializer
  %1028 = select <4 x i1> %1027, <4 x i1> %741, <4 x i1> zeroinitializer
  %1029 = select <4 x i1> %1028, <4 x i1> %727, <4 x i1> zeroinitializer
  %1030 = select <4 x i1> %1029, <4 x i1> %713, <4 x i1> zeroinitializer
  %1031 = select <4 x i1> %1030, <4 x i1> %699, <4 x i1> zeroinitializer
  %1032 = select <4 x i1> %1031, <4 x i1> %685, <4 x i1> zeroinitializer
  %1033 = select <4 x i1> %1032, <4 x i1> %671, <4 x i1> zeroinitializer
  %1034 = select <4 x i1> %1033, <4 x i1> %657, <4 x i1> zeroinitializer
  %1035 = select <4 x i1> %1034, <4 x i1> %643, <4 x i1> zeroinitializer
  %1036 = select <4 x i1> %1035, <4 x i1> %629, <4 x i1> zeroinitializer
  %1037 = select <4 x i1> %1036, <4 x i1> %615, <4 x i1> zeroinitializer
  %1038 = select <4 x i1> %1037, <4 x i1> %601, <4 x i1> zeroinitializer
  %1039 = select <4 x i1> %1038, <4 x i1> %587, <4 x i1> zeroinitializer
  %1040 = select <4 x i1> %1039, <4 x i1> %573, <4 x i1> zeroinitializer
  %1041 = select <4 x i1> %1040, <4 x i1> %559, <4 x i1> zeroinitializer
  %1042 = select <4 x i1> %1041, <4 x i1> %545, <4 x i1> zeroinitializer
  %1043 = select <4 x i1> %1042, <4 x i32> %533, <4 x i32> zeroinitializer
  %1044 = insertelement <4 x i32> poison, i32 %412, i64 0
  %1045 = shufflevector <4 x i32> %1044, <4 x i32> poison, <4 x i32> zeroinitializer
  %1046 = icmp eq <4 x i32> %1011, %1045
  %1047 = select <4 x i1> %1046, <4 x i32> %1043, <4 x i32> %1011
  %1048 = insertelement <4 x i32> poison, i32 %412, i64 0
  %1049 = shufflevector <4 x i32> %1048, <4 x i32> poison, <4 x i32> zeroinitializer
  %1050 = icmp ne <4 x i32> %1047, %1049
  %1051 = bitcast <4 x i1> %1050 to i4
  %1052 = icmp ne i4 %1051, 0
  %1053 = xor i1 %411, true
  %1054 = select i1 %1052, i1 true, i1 %1053
  %1055 = select i1 %1054, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i64 0, i64 0)
  %1056 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %1055)
  %1057 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @str.107, i64 0, i64 0))
  %1058 = load i8*, i8** bitcast (i32** @_ZL19d_PartialHistograms to i8**), align 8, !tbaa !3
  %1059 = call i32 @hipFree(i8* %1058)
  %1060 = icmp eq i32 %1059, 0
  br i1 %1060, label %1069, label %1065

1061:                                             ; preds = %431
  %1062 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %1063 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %435)
  %1064 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1062, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 514, i32 %435, i8* %1063, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i64 0, i64 0)) #22
  call void @exit(i32 1) #23
  unreachable

1065:                                             ; preds = %530
  %1066 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %1067 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %1059)
  %1068 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1066, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 182, i32 %1059, i8* %1067, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)) #22
  call void @exit(i32 1) #23
  unreachable

1069:                                             ; preds = %530
  %1070 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @str.108, i64 0, i64 0))
  %1071 = load void (%class.StopWatchInterface*)**, void (%class.StopWatchInterface*)*** %174, align 8, !tbaa !18
  %1072 = getelementptr inbounds void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %1071, i64 1
  %1073 = load void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %1072, align 8
  call void %1073(%class.StopWatchInterface* nonnull align 8 dereferenceable(8) %31) #24
  %1074 = load i8*, i8** %149, align 8, !tbaa !3
  %1075 = call i32 @hipFree(i8* %1074)
  %1076 = icmp eq i32 %1075, 0
  br i1 %1076, label %1081, label %1077

1077:                                             ; preds = %1069
  %1078 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %1079 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %1075)
  %1080 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1078, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 559, i32 %1075, i8* %1079, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i64 0, i64 0)) #22
  call void @exit(i32 1) #23
  unreachable

1081:                                             ; preds = %1069
  %1082 = load i8*, i8** %3, align 8, !tbaa !3
  %1083 = call i32 @hipFree(i8* %1082)
  %1084 = icmp eq i32 %1083, 0
  br i1 %1084, label %1089, label %1085

1085:                                             ; preds = %1081
  %1086 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %1087 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %1083)
  %1088 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1086, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 560, i32 %1083, i8* %1087, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i64 0, i64 0)) #22
  call void @exit(i32 1) #23
  unreachable

1089:                                             ; preds = %1081
  call void @free(i8* nonnull %137) #24
  call void @free(i8* nonnull %135) #24
  call void @free(i8* %134) #24
  %1090 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([113 x i8], [113 x i8]* @str.109, i64 0, i64 0))
  %1091 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i64 0, i64 0))
  br i1 %1054, label %1092, label %1094

1092:                                             ; preds = %1089
  %1093 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.110, i64 0, i64 0))
  call void @exit(i32 1) #23
  unreachable

1094:                                             ; preds = %1089
  %1095 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @str.111, i64 0, i64 0))
  call void @exit(i32 0) #23
  unreachable
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_Z14findCudaDeviceiPPKc(i32 %0, i8** %1) local_unnamed_addr #11 comdat {
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
  %16 = load i8, i8* %15, align 1, !tbaa !25
  %17 = icmp eq i8 %16, 45
  %18 = add nuw i64 %14, 1
  br i1 %17, label %13, label %19, !llvm.loop !26

19:                                               ; preds = %13
  %20 = trunc i64 %14 to i32
  %21 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %12) #26
  %22 = trunc i64 %21 to i32
  %23 = add i32 %22, -1
  %24 = icmp sgt i32 %23, %20
  %25 = shl i64 %14, 32
  %26 = ashr exact i64 %25, 32
  %27 = select i1 %24, i64 %26, i64 0
  %28 = getelementptr inbounds i8, i8* %12, i64 %27
  %29 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %28, i32 61) #26
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %28) #26
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
  %42 = tail call i32 @strncasecmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0), i64 6) #26
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %37
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i8 [ %10, %44 ], [ 1, %41 ]
  %47 = add nuw nsw i64 %9, 1
  %48 = icmp eq i64 %47, %7
  br i1 %48, label %49, label %8, !llvm.loop !27

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
  %61 = load i8, i8* %60, align 1, !tbaa !25
  %62 = icmp eq i8 %61, 45
  %63 = add nuw i64 %59, 1
  br i1 %62, label %58, label %64, !llvm.loop !26

64:                                               ; preds = %58
  %65 = trunc i64 %59 to i32
  %66 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %57) #26
  %67 = trunc i64 %66 to i32
  %68 = add i32 %67, -1
  %69 = icmp sgt i32 %68, %65
  %70 = shl i64 %59, 32
  %71 = ashr exact i64 %70, 32
  %72 = select i1 %69, i64 %71, i64 0
  %73 = getelementptr inbounds i8, i8* %57, i64 %72
  %74 = tail call i32 @strncasecmp(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0), i64 7) #26
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %64
  %77 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %73) #26
  %78 = trunc i64 %77 to i32
  %79 = icmp sgt i32 %78, 7
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = getelementptr inbounds i8, i8* %73, i64 7
  %82 = load i8, i8* %81, align 1, !tbaa !25
  %83 = icmp eq i8 %82, 61
  %84 = select i1 %83, i64 8, i64 7
  %85 = getelementptr inbounds i8, i8* %73, i64 %84
  %86 = tail call i64 @strtol(i8* nocapture nonnull %85, i8** null, i32 10) #24
  %87 = trunc i64 %86 to i32
  br label %88

88:                                               ; preds = %80, %76, %64
  %89 = phi i32 [ %87, %80 ], [ 0, %76 ], [ %55, %64 ]
  %90 = phi i8 [ 1, %80 ], [ 1, %76 ], [ %54, %64 ]
  %91 = add nuw nsw i64 %53, 1
  %92 = icmp eq i64 %91, %7
  br i1 %92, label %93, label %52, !llvm.loop !28

93:                                               ; preds = %88
  %94 = and i8 %90, 1
  %95 = icmp eq i8 %94, 0
  %96 = select i1 %95, i32 0, i32 %89
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.57, i64 0, i64 0))
  tail call void @exit(i32 1) #23
  unreachable

100:                                              ; preds = %93
  %101 = tail call i32 @_Z13gpuDeviceIniti(i32 %96)
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %136

103:                                              ; preds = %100
  %104 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @str.112, i64 0, i64 0))
  tail call void @exit(i32 1) #23
  unreachable

105:                                              ; preds = %2, %49
  %106 = tail call i32 @_Z23gpuGetMaxGflopsDeviceIdv()
  %107 = tail call i32 @hipSetDevice(i32 %106)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %111 = tail call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %107)
  %112 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.60, i64 0, i64 0), i32 1067, i32 %107, i8* %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.59, i64 0, i64 0)) #22
  tail call void @exit(i32 1) #23
  unreachable

113:                                              ; preds = %105
  %114 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %114) #24
  store i32 0, i32* %3, align 4, !tbaa !7
  %115 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %115) #24
  store i32 0, i32* %4, align 4, !tbaa !7
  %116 = call i32 @hipDeviceGetAttribute(i32* nonnull %3, i32 36, i32 %106)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %113
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %120 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %116)
  %121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.60, i64 0, i64 0), i32 1069, i32 %116, i8* %120, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.61, i64 0, i64 0)) #22
  call void @exit(i32 1) #23
  unreachable

122:                                              ; preds = %113
  %123 = call i32 @hipDeviceGetAttribute(i32* nonnull %4, i32 37, i32 %106)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %122
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %127 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %123)
  %128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.60, i64 0, i64 0), i32 1070, i32 %123, i8* %127, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.62, i64 0, i64 0)) #22
  call void @exit(i32 1) #23
  unreachable

129:                                              ; preds = %122
  %130 = load i32, i32* %3, align 4, !tbaa !7
  %131 = load i32, i32* %4, align 4, !tbaa !7
  %132 = call i8* @_Z22_ConvertSMVer2ArchNameii(i32 %130, i32 %131)
  %133 = load i32, i32* %3, align 4, !tbaa !7
  %134 = load i32, i32* %4, align 4, !tbaa !7
  %135 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([52 x i8], [52 x i8]* @.str.63, i64 0, i64 0), i32 %106, i8* %132, i32 %133, i32 %134)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %115) #24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %114) #24
  br label %136

136:                                              ; preds = %100, %129
  %137 = phi i32 [ %101, %100 ], [ %106, %129 ]
  ret i32 %137
}

declare dso_local i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t*, i32) local_unnamed_addr #0

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare dso_local void @srand(i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #1

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #0

declare dso_local i32 @hipDeviceSynchronize() local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #6

declare dso_local i32 @hipGetLastError() local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #10

declare dso_local i8* @hipGetErrorString(i32) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_Z13gpuDeviceIniti(i32 %0) local_unnamed_addr #11 comdat {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #24
  %7 = call i32 @hipGetDeviceCount(i32* nonnull %2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %11 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %7)
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.60, i64 0, i64 0), i32 999, i32 %7, i8* %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.64, i64 0, i64 0)) #22
  call void @exit(i32 1) #23
  unreachable

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4, !tbaa !7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %18 = call i64 @fwrite(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.65, i64 0, i64 0), i64 56, i64 1, %struct._IO_FILE* %17) #22
  call void @exit(i32 1) #23
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
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.67, i64 0, i64 0), i32 %27) #22
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.68, i64 0, i64 0), i32 %21) #22
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %32 = call i32 @fputc(i32 10, %struct._IO_FILE* %31)
  %33 = sub nsw i32 0, %21
  br label %84

34:                                               ; preds = %19
  %35 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %35) #24
  store i32 -1, i32* %3, align 4, !tbaa !7
  %36 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %36) #24
  store i32 0, i32* %4, align 4, !tbaa !7
  %37 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %37) #24
  store i32 0, i32* %5, align 4, !tbaa !7
  %38 = call i32 @hipDeviceGetAttribute(i32* nonnull %3, i32 33, i32 %21)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %42 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %38)
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.60, i64 0, i64 0), i32 1025, i32 %38, i8* %42, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.69, i64 0, i64 0)) #22
  call void @exit(i32 1) #23
  unreachable

44:                                               ; preds = %34
  %45 = call i32 @hipDeviceGetAttribute(i32* nonnull %4, i32 36, i32 %21)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %49 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %45)
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.60, i64 0, i64 0), i32 1026, i32 %45, i8* %49, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.61, i64 0, i64 0)) #22
  call void @exit(i32 1) #23
  unreachable

51:                                               ; preds = %44
  %52 = call i32 @hipDeviceGetAttribute(i32* nonnull %5, i32 37, i32 %21)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %56 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %52)
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.60, i64 0, i64 0), i32 1027, i32 %52, i8* %56, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.62, i64 0, i64 0)) #22
  call void @exit(i32 1) #23
  unreachable

58:                                               ; preds = %51
  %59 = load i32, i32* %3, align 4, !tbaa !7
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %63 = call i64 @fwrite(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.70, i64 0, i64 0), i64 90, i64 1, %struct._IO_FILE* %62) #22
  br label %82

64:                                               ; preds = %58
  %65 = load i32, i32* %4, align 4, !tbaa !7
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %69 = call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.71, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %68) #22
  call void @exit(i32 1) #23
  unreachable

70:                                               ; preds = %64
  %71 = call i32 @hipSetDevice(i32 %21)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %75 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %71)
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.60, i64 0, i64 0), i32 1040, i32 %71, i8* %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.59, i64 0, i64 0)) #22
  call void @exit(i32 1) #23
  unreachable

77:                                               ; preds = %70
  %78 = load i32, i32* %4, align 4, !tbaa !7
  %79 = load i32, i32* %5, align 4, !tbaa !7
  %80 = call i8* @_Z22_ConvertSMVer2ArchNameii(i32 %78, i32 %79)
  %81 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @.str.72, i64 0, i64 0), i32 %21, i8* %80)
  br label %82

82:                                               ; preds = %77, %61
  %83 = phi i32 [ -1, %61 ], [ %21, %77 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %37) #24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %36) #24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %35) #24
  br label %84

84:                                               ; preds = %82, %23
  %85 = phi i32 [ %33, %23 ], [ %83, %82 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #24
  ret i32 %85
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_Z23gpuGetMaxGflopsDeviceIdv() local_unnamed_addr #11 comdat {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #24
  store i32 0, i32* %1, align 4, !tbaa !7
  %8 = call i32 @hipGetDeviceCount(i32* nonnull %1)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %12 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %8)
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.60, i64 0, i64 0), i32 1092, i32 %8, i8* %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.64, i64 0, i64 0)) #22
  call void @exit(i32 1) #23
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
  %26 = call i64 @fwrite(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.73, i64 0, i64 0), i64 66, i64 1, %struct._IO_FILE* %25) #22
  call void @exit(i32 1) #23
  unreachable

27:                                               ; preds = %17, %92
  %28 = phi i32 [ %96, %92 ], [ 0, %17 ]
  %29 = phi i64 [ %95, %92 ], [ 0, %17 ]
  %30 = phi i32 [ %94, %92 ], [ 0, %17 ]
  %31 = phi i32 [ %93, %92 ], [ 0, %17 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #24
  store i32 -1, i32* %2, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #24
  store i32 0, i32* %3, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #24
  store i32 0, i32* %4, align 4, !tbaa !7
  %32 = call i32 @hipDeviceGetAttribute(i32* nonnull %2, i32 33, i32 %28)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %36 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %32)
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.60, i64 0, i64 0), i32 1106, i32 %32, i8* %36, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.74, i64 0, i64 0)) #22
  call void @exit(i32 1) #23
  unreachable

38:                                               ; preds = %27
  %39 = call i32 @hipDeviceGetAttribute(i32* nonnull %3, i32 36, i32 %28)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %43 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %39)
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.60, i64 0, i64 0), i32 1107, i32 %39, i8* %43, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.75, i64 0, i64 0)) #22
  call void @exit(i32 1) #23
  unreachable

45:                                               ; preds = %38
  %46 = call i32 @hipDeviceGetAttribute(i32* nonnull %4, i32 37, i32 %28)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %50 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %46)
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.60, i64 0, i64 0), i32 1108, i32 %46, i8* %50, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.76, i64 0, i64 0)) #22
  call void @exit(i32 1) #23
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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #24
  store i32 0, i32* %5, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #24
  store i32 0, i32* %6, align 4, !tbaa !7
  %65 = call i32 @hipDeviceGetAttribute(i32* nonnull %5, i32 32, i32 %28)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %69 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %65)
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.60, i64 0, i64 0), i32 1120, i32 %65, i8* %69, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.77, i64 0, i64 0)) #22
  call void @exit(i32 1) #23
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
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.60, i64 0, i64 0), i32 1129, i32 %72, i8* %77) #22
  call void @exit(i32 1) #23
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
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #24
  br label %92

90:                                               ; preds = %52
  %91 = add nsw i32 %30, 1
  br label %92

92:                                               ; preds = %90, %79
  %93 = phi i32 [ %88, %79 ], [ %31, %90 ]
  %94 = phi i32 [ %30, %79 ], [ %91, %90 ]
  %95 = phi i64 [ %89, %79 ], [ %29, %90 ]
  %96 = add nuw nsw i32 %28, 1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #24
  %97 = load i32, i32* %1, align 4, !tbaa !7
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %27, label %99, !llvm.loop !30

99:                                               ; preds = %92, %17
  %100 = phi i32 [ 0, %17 ], [ %93, %92 ]
  %101 = phi i32 [ 0, %17 ], [ %94, %92 ]
  %102 = phi i32 [ %15, %17 ], [ %97, %92 ]
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %106 = call i64 @fwrite(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.79, i64 0, i64 0), i64 80, i64 1, %struct._IO_FILE* %105) #22
  call void @exit(i32 1) #23
  unreachable

107:                                              ; preds = %99
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #24
  ret i32 %100
}

declare dso_local i32 @hipSetDevice(i32) local_unnamed_addr #0

declare dso_local i32 @hipDeviceGetAttribute(i32*, i32, i32) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i8* @_Z22_ConvertSMVer2ArchNameii(i32 %0, i32 %1) local_unnamed_addr #11 comdat {
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
  %25 = load i8*, i8** %24, align 8, !tbaa !31
  br label %28

26:                                               ; preds = %2
  %27 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([63 x i8], [63 x i8]* @.str.91, i64 0, i64 0), i32 %0, i32 %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i8* [ %25, %22 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i64 0, i64 0), %26 ]
  ret i8* %29
}

declare dso_local i32 @hipGetDeviceCount(i32*) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_Z19_ConvertSMVer2Coresii(i32 %0, i32 %1) local_unnamed_addr #11 comdat {
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
  %25 = load i32, i32* %24, align 4, !tbaa !33
  br label %28

26:                                               ; preds = %2
  %27 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([69 x i8], [69 x i8]* @.str.80, i64 0, i64 0), i32 %0, i32 %1, i32 128)
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
declare dso_local nonnull i8* @_Znwm(i64) local_unnamed_addr #14

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) local_unnamed_addr #15

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN14StopWatchLinuxD0Ev(%class.StopWatchLinux* nonnull align 8 dereferenceable(40) %0) unnamed_addr #17 comdat align 2 {
  %2 = bitcast %class.StopWatchLinux* %0 to i8*
  tail call void @_ZdlPv(i8* nonnull %2) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14StopWatchLinux5startEv(%class.StopWatchLinux* nonnull align 8 dereferenceable(40) %0) unnamed_addr #18 comdat align 2 {
  %2 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 1
  %3 = tail call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* null) #24
  %4 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 4
  store i8 1, i8* %4, align 8, !tbaa !35
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN14StopWatchLinux4stopEv(%class.StopWatchLinux* nonnull align 8 dereferenceable(40) %0) unnamed_addr #11 comdat align 2 {
  %2 = alloca %struct.timeval, align 8
  %3 = bitcast %struct.timeval* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #24
  %4 = call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* null) #24
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !36
  %7 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 1, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !37
  %9 = sub nsw i64 %6, %8
  %10 = sitofp i64 %9 to double
  %11 = fmul contract double %10, 1.000000e+03
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 1
  %13 = load i64, i64* %12, align 8, !tbaa !38
  %14 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 1, i32 1
  %15 = load i64, i64* %14, align 8, !tbaa !39
  %16 = sub nsw i64 %13, %15
  %17 = sitofp i64 %16 to double
  %18 = fmul contract double %17, 1.000000e-03
  %19 = fadd contract double %11, %18
  %20 = fptrunc double %19 to float
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #24
  %21 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 2
  store float %20, float* %21, align 8, !tbaa !40
  %22 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 3
  %23 = load float, float* %22, align 4, !tbaa !41
  %24 = fadd contract float %23, %20
  store float %24, float* %22, align 4, !tbaa !41
  %25 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 4
  store i8 0, i8* %25, align 8, !tbaa !35
  %26 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 5
  %27 = load i32, i32* %26, align 4, !tbaa !20
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4, !tbaa !20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14StopWatchLinux5resetEv(%class.StopWatchLinux* nonnull align 8 dereferenceable(40) %0) unnamed_addr #18 comdat align 2 {
  %2 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 2
  store float 0.000000e+00, float* %2, align 8, !tbaa !40
  %3 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 3
  store float 0.000000e+00, float* %3, align 4, !tbaa !41
  %4 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 5
  store i32 0, i32* %4, align 4, !tbaa !20
  %5 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 4
  %6 = load i8, i8* %5, align 8, !tbaa !35, !range !42
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 1
  %10 = tail call i32 @gettimeofday(%struct.timeval* nonnull %9, %struct.timezone* null) #24
  br label %11

11:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local float @_ZN14StopWatchLinux7getTimeEv(%class.StopWatchLinux* nonnull align 8 dereferenceable(40) %0) unnamed_addr #18 comdat align 2 {
  %2 = alloca <2 x i64>, align 16
  %3 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 3
  %4 = load float, float* %3, align 4, !tbaa !41
  %5 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 4
  %6 = load i8, i8* %5, align 8, !tbaa !35, !range !42
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = bitcast <2 x i64>* %2 to %struct.timeval*
  %10 = bitcast <2 x i64>* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #24
  %11 = call i32 @gettimeofday(%struct.timeval* nonnull %9, %struct.timezone* null) #24
  %12 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 1, i32 0
  %13 = load <2 x i64>, <2 x i64>* %2, align 16, !tbaa !43
  %14 = bitcast i64* %12 to <2 x i64>*
  %15 = load <2 x i64>, <2 x i64>* %14, align 8, !tbaa !43
  %16 = sub nsw <2 x i64> %13, %15
  %17 = sitofp <2 x i64> %16 to <2 x double>
  %18 = fmul contract <2 x double> %17, <double 1.000000e+03, double 1.000000e-03>
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> <i32 1, i32 undef>
  %20 = fadd contract <2 x double> %18, %19
  %21 = extractelement <2 x double> %20, i64 0
  %22 = fptrunc double %21 to float
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #24
  %23 = fadd contract float %4, %22
  br label %24

24:                                               ; preds = %8, %1
  %25 = phi float [ %23, %8 ], [ %4, %1 ]
  ret float %25
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local float @_ZN14StopWatchLinux14getAverageTimeEv(%class.StopWatchLinux* nonnull align 8 dereferenceable(40) %0) unnamed_addr #18 comdat align 2 {
  %2 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 5
  %3 = load i32, i32* %2, align 4, !tbaa !20
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 3
  %7 = load float, float* %6, align 4, !tbaa !41
  %8 = sitofp i32 %3 to float
  %9 = fdiv contract float %7, %8
  br label %10

10:                                               ; preds = %1, %5
  %11 = phi contract float [ %9, %5 ], [ 0.000000e+00, %1 ]
  ret float %11
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN18StopWatchInterfaceD2Ev(%class.StopWatchInterface* nonnull align 8 dereferenceable(8) %0) unnamed_addr #17 comdat align 2 {
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @gettimeofday(%struct.timeval* nocapture noundef, %struct.timezone* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #19

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncasecmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #20

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #21

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_histogram.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #24
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
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32*, i32*, i32)** @_Z18histogram256KernelPjS_j to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %9 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32*, i32*, i32)** @_Z23mergeHistogram256KernelPjS_j to i8*), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %10 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32*, %struct.HIP_vector_type*, i32)** @_Z17histogram64KernelPjP15HIP_vector_typeIjLj4EEj to i8*), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @2, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @2, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %11 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32*, i32*, i32)** @_Z22mergeHistogram64KernelPjS_j to i8*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @3, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %12 = tail call i32 @atexit(void (i8*)* nonnull @__hip_module_dtor)
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
attributes #4 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { norecurse noreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #17 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { nounwind readonly willreturn }
attributes #27 = { builtin nounwind }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = !{!13, !8, i64 328}
!13 = !{!"_ZTS15hipDeviceProp_t", !5, i64 0, !14, i64 256, !14, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !5, i64 284, !5, i64 296, !8, i64 308, !8, i64 312, !8, i64 316, !14, i64 320, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !8, i64 348, !8, i64 352, !15, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !8, i64 372, !14, i64 376, !8, i64 384, !8, i64 388, !8, i64 392, !5, i64 396, !8, i64 652, !8, i64 656, !8, i64 660, !8, i64 664, !8, i64 668, !5, i64 672, !5, i64 680, !4, i64 696, !4, i64 704, !14, i64 712, !14, i64 720, !14, i64 728, !8, i64 736, !8, i64 740, !8, i64 744, !8, i64 748, !8, i64 752, !8, i64 756, !8, i64 760, !8, i64 764, !8, i64 768, !8, i64 772, !8, i64 776, !8, i64 780, !8, i64 784, !8, i64 788}
!14 = !{!"long", !5, i64 0}
!15 = !{!"_ZTS15hipDeviceArch_t", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 2, !8, i64 2, !8, i64 2}
!16 = !{!13, !8, i64 332}
!17 = !{!13, !8, i64 336}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !6, i64 0}
!20 = !{!21, !8, i64 36}
!21 = !{!"_ZTS14StopWatchLinux", !22, i64 8, !23, i64 24, !23, i64 28, !24, i64 32, !8, i64 36}
!22 = !{!"_ZTS7timeval", !14, i64 0, !14, i64 8}
!23 = !{!"float", !5, i64 0}
!24 = !{!"bool", !5, i64 0}
!25 = !{!5, !5, i64 0}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = !{!32, !4, i64 8}
!32 = !{!"_ZTSZ22_ConvertSMVer2ArchNameiiE13sSMtoArchName", !8, i64 0, !4, i64 8}
!33 = !{!34, !8, i64 4}
!34 = !{!"_ZTSZ19_ConvertSMVer2CoresiiE10sSMtoCores", !8, i64 0, !8, i64 4}
!35 = !{!21, !24, i64 32}
!36 = !{!22, !14, i64 0}
!37 = !{!21, !14, i64 8}
!38 = !{!22, !14, i64 8}
!39 = !{!21, !14, i64 16}
!40 = !{!21, !23, i64 24}
!41 = !{!21, !23, i64 28}
!42 = !{i8 0, i8 2}
!43 = !{!14, !14, i64 0}
