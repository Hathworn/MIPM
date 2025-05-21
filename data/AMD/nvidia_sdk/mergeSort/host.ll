; ModuleID = 'main.cpp'
source_filename = "main.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sSMtoCores = type { i32, i32 }
%struct.sSMtoArchName = type { i32, i8* }
%class.StopWatchLinux = type { %class.StopWatchInterface, %struct.timeval, float, float, i8, i32 }
%class.StopWatchInterface = type { i32 (...)** }
%struct.timeval = type { i64, i64 }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque
%struct.timezone = type { i32, i32 }

$_Z14findCudaDeviceiPPKc = comdat any

$_Z5checkI10hipError_tEvT_PKcS3_i = comdat any

$_Z52__device_stub__bitonicMergeElementaryIntervalsKernelILj1EEvPjS0_S0_S0_S0_S0_jj = comdat any

$_Z52__device_stub__bitonicMergeElementaryIntervalsKernelILj0EEvPjS0_S0_S0_S0_S0_jj = comdat any

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

$_Z36__device_stub__mergeSortSharedKernelILj1EEvPjS0_S0_S0_j = comdat any

$_Z36__device_stub__mergeSortSharedKernelILj0EEvPjS0_S0_S0_j = comdat any

$_Z40__device_stub__generateSampleRanksKernelILj1EEvPjS0_S0_jjj = comdat any

$_Z40__device_stub__generateSampleRanksKernelILj0EEvPjS0_S0_jjj = comdat any

$_Z45__device_stub__mergeElementaryIntervalsKernelILj1EEvPjS0_S0_S0_S0_S0_jj = comdat any

$_Z45__device_stub__mergeElementaryIntervalsKernelILj0EEvPjS0_S0_S0_S0_S0_jj = comdat any

$_Z37bitonicMergeElementaryIntervalsKernelILj1EEvPjS0_S0_S0_S0_S0_jj = comdat any

$_Z37bitonicMergeElementaryIntervalsKernelILj0EEvPjS0_S0_S0_S0_S0_jj = comdat any

$_ZTV14StopWatchLinux = comdat any

$_ZTS14StopWatchLinux = comdat any

$_ZTS18StopWatchInterface = comdat any

$_ZTI18StopWatchInterface = comdat any

$_ZTI14StopWatchLinux = comdat any

$_Z21mergeSortSharedKernelILj1EEvPjS0_S0_S0_j = comdat any

$_Z21mergeSortSharedKernelILj0EEvPjS0_S0_S0_j = comdat any

$_Z25generateSampleRanksKernelILj1EEvPjS0_S0_jjj = comdat any

$_Z25generateSampleRanksKernelILj0EEvPjS0_S0_jjj = comdat any

$_Z30mergeElementaryIntervalsKernelILj1EEvPjS0_S0_S0_S0_S0_jj = comdat any

$_Z30mergeElementaryIntervalsKernelILj0EEvPjS0_S0_S0_S0_S0_jj = comdat any

$__hip_gpubin_handle = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [17 x i8] c"%s Starting...\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"hipMalloc((void **)&d_DstKey, N * sizeof(uint))\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"main.cpp\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"hipMalloc((void **)&d_DstVal, N * sizeof(uint))\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"hipMalloc((void **)&d_BufKey, N * sizeof(uint))\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"hipMalloc((void **)&d_BufVal, N * sizeof(uint))\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"hipMalloc((void **)&d_SrcKey, N * sizeof(uint))\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"hipMalloc((void **)&d_SrcVal, N * sizeof(uint))\00", align 1
@.str.10 = private unnamed_addr constant [71 x i8] c"hipMemcpy(d_SrcKey, h_SrcKey, N * sizeof(uint), hipMemcpyHostToDevice)\00", align 1
@.str.11 = private unnamed_addr constant [71 x i8] c"hipMemcpy(d_SrcVal, h_SrcVal, N * sizeof(uint), hipMemcpyHostToDevice)\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"hipDeviceSynchronize()\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Time: %f ms\0A\00", align 1
@.str.17 = private unnamed_addr constant [71 x i8] c"hipMemcpy(h_DstKey, d_DstKey, N * sizeof(uint), hipMemcpyDeviceToHost)\00", align 1
@.str.18 = private unnamed_addr constant [71 x i8] c"hipMemcpy(h_DstVal, d_DstVal, N * sizeof(uint), hipMemcpyDeviceToHost)\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"hipFree(d_SrcVal)\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"hipFree(d_SrcKey)\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"hipFree(d_BufVal)\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"hipFree(d_BufKey)\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"hipFree(d_DstVal)\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"hipFree(d_DstKey)\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"...inspecting keys array: \00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.29 = private unnamed_addr constant [64 x i8] c"***Set %u source/result key arrays are not limited properly***\0A\00", align 1
@.str.30 = private unnamed_addr constant [57 x i8] c"***Set %u source/result keys histograms do not match***\0A\00", align 1
@.str.31 = private unnamed_addr constant [55 x i8] c"***Set %u result key array is not ordered properly***\0A\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"...inspecting keys and values array: \00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"***corrupted!!!***\0A\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"...stability property: stable!\0A\00", align 1
@.str.36 = private unnamed_addr constant [35 x i8] c"...stability property: NOT stable\0A\00", align 1
@_Z23bitonicSortSharedKernelPjS_S_S_jj = dso_local constant void (i32*, i32*, i32*, i32*, i32, i32)* @_Z38__device_stub__bitonicSortSharedKernelPjS_S_S_jj, align 8
@.str.37 = private unnamed_addr constant [28 x i8] c"factorizationRemainder == 1\00", align 1
@__PRETTY_FUNCTION__.bitonicSortShared = private unnamed_addr constant [73 x i8] c"void bitonicSortShared(uint *, uint *, uint *, uint *, uint, uint, uint)\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"arrayLength <= 1024U\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"(batchSize * arrayLength) % 1024U == 0\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"bitonicSortSharedKernel<<<>>> failed!\0A\00", align 1
@_Z37bitonicMergeElementaryIntervalsKernelILj1EEvPjS0_S0_S0_S0_S0_jj = linkonce_odr dso_local constant void (i32*, i32*, i32*, i32*, i32*, i32*, i32, i32)* @_Z52__device_stub__bitonicMergeElementaryIntervalsKernelILj1EEvPjS0_S0_S0_S0_S0_jj, comdat, align 8
@.str.41 = private unnamed_addr constant [42 x i8] c"mergeElementaryIntervalsKernel<1> failed\0A\00", align 1
@_Z37bitonicMergeElementaryIntervalsKernelILj0EEvPjS0_S0_S0_S0_S0_jj = linkonce_odr dso_local constant void (i32*, i32*, i32*, i32*, i32*, i32*, i32, i32)* @_Z52__device_stub__bitonicMergeElementaryIntervalsKernelILj0EEvPjS0_S0_S0_S0_S0_jj, comdat, align 8
@.str.42 = private unnamed_addr constant [42 x i8] c"mergeElementaryIntervalsKernel<0> failed\0A\00", align 1
@_ZL8d_RanksA = internal global i32* null, align 8
@.str.43 = private unnamed_addr constant [63 x i8] c"hipMalloc((void **)&d_RanksA, MAX_SAMPLE_COUNT * sizeof(uint))\00", align 1
@_ZL8d_RanksB = internal global i32* null, align 8
@.str.44 = private unnamed_addr constant [63 x i8] c"hipMalloc((void **)&d_RanksB, MAX_SAMPLE_COUNT * sizeof(uint))\00", align 1
@_ZL9d_LimitsA = internal global i32* null, align 8
@.str.45 = private unnamed_addr constant [64 x i8] c"hipMalloc((void **)&d_LimitsA, MAX_SAMPLE_COUNT * sizeof(uint))\00", align 1
@_ZL9d_LimitsB = internal global i32* null, align 8
@.str.46 = private unnamed_addr constant [64 x i8] c"hipMalloc((void **)&d_LimitsB, MAX_SAMPLE_COUNT * sizeof(uint))\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"N <= (128 * MAX_SAMPLE_COUNT)\00", align 1
@__PRETTY_FUNCTION__.mergeSort = private unnamed_addr constant [75 x i8] c"void mergeSort(uint *, uint *, uint *, uint *, uint *, uint *, uint, uint)\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"N % 1024U == 0\00", align 1
@.str.49 = private unnamed_addr constant [140 x i8] c"hipMemcpy( okey + (N - lastSegmentElements), ikey + (N - lastSegmentElements), lastSegmentElements * sizeof(uint), hipMemcpyDeviceToDevice)\00", align 1
@.str.50 = private unnamed_addr constant [140 x i8] c"hipMemcpy( oval + (N - lastSegmentElements), ival + (N - lastSegmentElements), lastSegmentElements * sizeof(uint), hipMemcpyDeviceToDevice)\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"hipFree(d_RanksA)\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"hipFree(d_RanksB)\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"hipFree(d_LimitsB)\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"hipFree(d_LimitsA)\00", align 1
@_Z26mergeRanksAndIndicesKernelPjS_jjj = dso_local constant void (i32*, i32*, i32, i32, i32)* @_Z41__device_stub__mergeRanksAndIndicesKernelPjS_jjj, align 8
@.str.55 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"device=\00", align 1
@.str.57 = private unnamed_addr constant [33 x i8] c"Invalid command line parameter\0A \00", align 1
@.str.59 = private unnamed_addr constant [20 x i8] c"hipSetDevice(devID)\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"./helper_cuda.h\00", align 1
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
@.str.92 = private unnamed_addr constant [56 x i8] c"%s(%i) : getLastCudaError() CUDA error : %s : (%d) %s.\0A\00", align 1
@_Z21mergeSortSharedKernelILj1EEvPjS0_S0_S0_j = linkonce_odr dso_local constant void (i32*, i32*, i32*, i32*, i32)* @_Z36__device_stub__mergeSortSharedKernelILj1EEvPjS0_S0_S0_j, comdat, align 8
@.str.95 = private unnamed_addr constant [33 x i8] c"mergeSortShared<1><<<>>> failed\0A\00", align 1
@_Z21mergeSortSharedKernelILj0EEvPjS0_S0_S0_j = linkonce_odr dso_local constant void (i32*, i32*, i32*, i32*, i32)* @_Z36__device_stub__mergeSortSharedKernelILj0EEvPjS0_S0_S0_j, comdat, align 8
@.str.96 = private unnamed_addr constant [33 x i8] c"mergeSortShared<0><<<>>> failed\0A\00", align 1
@_Z25generateSampleRanksKernelILj1EEvPjS0_S0_jjj = linkonce_odr dso_local constant void (i32*, i32*, i32*, i32, i32, i32)* @_Z40__device_stub__generateSampleRanksKernelILj1EEvPjS0_S0_jjj, comdat, align 8
@.str.97 = private unnamed_addr constant [44 x i8] c"generateSampleRanksKernel<1U><<<>>> failed\0A\00", align 1
@_Z25generateSampleRanksKernelILj0EEvPjS0_S0_jjj = linkonce_odr dso_local constant void (i32*, i32*, i32*, i32, i32, i32)* @_Z40__device_stub__generateSampleRanksKernelILj0EEvPjS0_S0_jjj, comdat, align 8
@.str.98 = private unnamed_addr constant [44 x i8] c"generateSampleRanksKernel<0U><<<>>> failed\0A\00", align 1
@.str.99 = private unnamed_addr constant [44 x i8] c"mergeRanksAndIndicesKernel(A)<<<>>> failed\0A\00", align 1
@.str.100 = private unnamed_addr constant [44 x i8] c"mergeRanksAndIndicesKernel(B)<<<>>> failed\0A\00", align 1
@_Z30mergeElementaryIntervalsKernelILj1EEvPjS0_S0_S0_S0_S0_jj = linkonce_odr dso_local constant void (i32*, i32*, i32*, i32*, i32*, i32*, i32, i32)* @_Z45__device_stub__mergeElementaryIntervalsKernelILj1EEvPjS0_S0_S0_S0_S0_jj, comdat, align 8
@_Z30mergeElementaryIntervalsKernelILj0EEvPjS0_S0_S0_S0_S0_jj = linkonce_odr dso_local constant void (i32*, i32*, i32*, i32*, i32*, i32*, i32, i32)* @_Z45__device_stub__mergeElementaryIntervalsKernelILj0EEvPjS0_S0_S0_S0_S0_jj, comdat, align 8
@.str.101 = private unnamed_addr constant [39 x i8] c"CUDA error at %s:%d code=%d(%s) \22%s\22 \0A\00", align 1
@0 = private unnamed_addr constant [38 x i8] c"_Z23bitonicSortSharedKernelPjS_S_S_jj\00", align 1
@1 = private unnamed_addr constant [38 x i8] c"_Z26mergeRanksAndIndicesKernelPjS_jjj\00", align 1
@2 = private unnamed_addr constant [45 x i8] c"_Z21mergeSortSharedKernelILj1EEvPjS0_S0_S0_j\00", align 1
@3 = private unnamed_addr constant [45 x i8] c"_Z21mergeSortSharedKernelILj0EEvPjS0_S0_S0_j\00", align 1
@4 = private unnamed_addr constant [48 x i8] c"_Z25generateSampleRanksKernelILj1EEvPjS0_S0_jjj\00", align 1
@5 = private unnamed_addr constant [48 x i8] c"_Z25generateSampleRanksKernelILj0EEvPjS0_S0_jjj\00", align 1
@6 = private unnamed_addr constant [61 x i8] c"_Z30mergeElementaryIntervalsKernelILj1EEvPjS0_S0_S0_S0_S0_jj\00", align 1
@7 = private unnamed_addr constant [61 x i8] c"_Z30mergeElementaryIntervalsKernelILj0EEvPjS0_S0_S0_S0_S0_jj\00", align 1
@8 = private unnamed_addr constant [68 x i8] c"_Z37bitonicMergeElementaryIntervalsKernelILj1EEvPjS0_S0_S0_S0_S0_jj\00", align 1
@9 = private unnamed_addr constant [68 x i8] c"_Z37bitonicMergeElementaryIntervalsKernelILj0EEvPjS0_S0_S0_S0_S0_jj\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_main.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]
@str = private unnamed_addr constant [44 x i8] c"Allocating and initializing host arrays...\0A\00", align 1
@str.102 = private unnamed_addr constant [44 x i8] c"Allocating and initializing CUDA arrays...\0A\00", align 1
@str.103 = private unnamed_addr constant [31 x i8] c"Initializing GPU merge sort...\00", align 1
@str.104 = private unnamed_addr constant [26 x i8] c"Running GPU merge sort...\00", align 1
@str.105 = private unnamed_addr constant [39 x i8] c"Reading back GPU merge sort results...\00", align 1
@str.106 = private unnamed_addr constant [26 x i8] c"Inspecting the results...\00", align 1
@str.107 = private unnamed_addr constant [17 x i8] c"Shutting down...\00", align 1
@str.108 = private unnamed_addr constant [11 x i8] c"exiting...\00", align 1
@str.110 = private unnamed_addr constant [51 x i8] c"validateSortedKeys(): arrays too short, exiting...\00", align 1
@str.111 = private unnamed_addr constant [3 x i8] c"OK\00", align 1

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #3 personality i32 (...)* @__gxx_personality_v0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = bitcast i32** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #23
  %10 = bitcast i32** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #23
  %11 = bitcast i32** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #23
  %12 = bitcast i32** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #23
  %13 = bitcast i32** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #23
  %14 = bitcast i32** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #23
  %15 = load i8*, i8** %1, align 8, !tbaa !3
  %16 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = tail call i32 @_Z14findCudaDeviceiPPKc(i32 %0, i8** nonnull %1)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #23
  ret i32 1

20:                                               ; preds = %2
  %21 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @str, i64 0, i64 0))
  %22 = tail call noalias nonnull dereferenceable(40) i8* @_Znwm(i64 40) #24
  %23 = bitcast i8* %22 to %class.StopWatchLinux*
  %24 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %23, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [9 x i8*] }, { [9 x i8*] }* @_ZTV14StopWatchLinux, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %24, align 8, !tbaa !7
  %25 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %23, i64 0, i32 1
  %26 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %23, i64 0, i32 5
  store i32 0, i32* %26, align 4, !tbaa !9
  %27 = bitcast %struct.timeval* %25 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(25) %27, i8 0, i64 25, i1 false)
  %28 = tail call noalias align 16 dereferenceable_or_null(16777216) i8* @malloc(i64 16777216) #23
  %29 = bitcast i8* %28 to i32*
  %30 = tail call noalias align 16 dereferenceable_or_null(16777216) i8* @malloc(i64 16777216) #23
  %31 = tail call noalias align 16 dereferenceable_or_null(16777216) i8* @malloc(i64 16777216) #23
  %32 = tail call noalias align 16 dereferenceable_or_null(16777216) i8* @malloc(i64 16777216) #23
  tail call void @srand(i32 2009) #23
  br label %140

33:                                               ; preds = %140
  %34 = bitcast i8* %30 to i32*
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi i64 [ 0, %33 ], [ %64, %35 ]
  %37 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %33 ], [ %65, %35 ]
  %38 = add <4 x i32> %37, <i32 4, i32 4, i32 4, i32 4>
  %39 = getelementptr inbounds i32, i32* %34, i64 %36
  %40 = bitcast i32* %39 to <4 x i32>*
  store <4 x i32> %37, <4 x i32>* %40, align 16, !tbaa !16
  %41 = getelementptr inbounds i32, i32* %39, i64 4
  %42 = bitcast i32* %41 to <4 x i32>*
  store <4 x i32> %38, <4 x i32>* %42, align 16, !tbaa !16
  %43 = or i64 %36, 8
  %44 = add <4 x i32> %37, <i32 8, i32 8, i32 8, i32 8>
  %45 = add <4 x i32> %37, <i32 12, i32 12, i32 12, i32 12>
  %46 = getelementptr inbounds i32, i32* %34, i64 %43
  %47 = bitcast i32* %46 to <4 x i32>*
  store <4 x i32> %44, <4 x i32>* %47, align 16, !tbaa !16
  %48 = getelementptr inbounds i32, i32* %46, i64 4
  %49 = bitcast i32* %48 to <4 x i32>*
  store <4 x i32> %45, <4 x i32>* %49, align 16, !tbaa !16
  %50 = or i64 %36, 16
  %51 = add <4 x i32> %37, <i32 16, i32 16, i32 16, i32 16>
  %52 = add <4 x i32> %37, <i32 20, i32 20, i32 20, i32 20>
  %53 = getelementptr inbounds i32, i32* %34, i64 %50
  %54 = bitcast i32* %53 to <4 x i32>*
  store <4 x i32> %51, <4 x i32>* %54, align 16, !tbaa !16
  %55 = getelementptr inbounds i32, i32* %53, i64 4
  %56 = bitcast i32* %55 to <4 x i32>*
  store <4 x i32> %52, <4 x i32>* %56, align 16, !tbaa !16
  %57 = or i64 %36, 24
  %58 = add <4 x i32> %37, <i32 24, i32 24, i32 24, i32 24>
  %59 = add <4 x i32> %37, <i32 28, i32 28, i32 28, i32 28>
  %60 = getelementptr inbounds i32, i32* %34, i64 %57
  %61 = bitcast i32* %60 to <4 x i32>*
  store <4 x i32> %58, <4 x i32>* %61, align 16, !tbaa !16
  %62 = getelementptr inbounds i32, i32* %60, i64 4
  %63 = bitcast i32* %62 to <4 x i32>*
  store <4 x i32> %59, <4 x i32>* %63, align 16, !tbaa !16
  %64 = add nuw nsw i64 %36, 32
  %65 = add <4 x i32> %37, <i32 32, i32 32, i32 32, i32 32>
  %66 = icmp eq i64 %64, 4194304
  br i1 %66, label %67, label %35, !llvm.loop !17

67:                                               ; preds = %35
  %68 = getelementptr %class.StopWatchLinux, %class.StopWatchLinux* %23, i64 0, i32 0
  %69 = bitcast i8* %31 to i32*
  %70 = bitcast i8* %32 to i32*
  %71 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @str.102, i64 0, i64 0))
  %72 = bitcast i32** %7 to i8**
  %73 = call i32 @hipMalloc(i8** nonnull %72, i64 16777216)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %73, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 297)
  %74 = bitcast i32** %8 to i8**
  %75 = call i32 @hipMalloc(i8** nonnull %74, i64 16777216)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %75, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 298)
  %76 = bitcast i32** %5 to i8**
  %77 = call i32 @hipMalloc(i8** nonnull %76, i64 16777216)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %77, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 299)
  %78 = bitcast i32** %6 to i8**
  %79 = call i32 @hipMalloc(i8** nonnull %78, i64 16777216)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %79, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 300)
  %80 = bitcast i32** %3 to i8**
  %81 = call i32 @hipMalloc(i8** nonnull %80, i64 16777216)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %81, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 301)
  %82 = bitcast i32** %4 to i8**
  %83 = call i32 @hipMalloc(i8** nonnull %82, i64 16777216)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %83, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 302)
  %84 = load i8*, i8** %80, align 8, !tbaa !3
  %85 = call i32 @hipMemcpy(i8* %84, i8* %28, i64 16777216, i32 1)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %85, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 304)
  %86 = load i8*, i8** %82, align 8, !tbaa !3
  %87 = call i32 @hipMemcpy(i8* %86, i8* nonnull %30, i64 16777216, i32 1)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %87, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 306)
  %88 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @str.103, i64 0, i64 0))
  call void @initMergeSort()
  %89 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @str.104, i64 0, i64 0))
  %90 = call i32 @hipDeviceSynchronize()
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 312)
  %91 = bitcast i8* %22 to void (%class.StopWatchInterface*)***
  call void @_ZN14StopWatchLinux5resetEv(%class.StopWatchLinux* nonnull align 8 dereferenceable(8) %23)
  %92 = load void (%class.StopWatchInterface*)**, void (%class.StopWatchInterface*)*** %91, align 8, !tbaa !7
  %93 = getelementptr inbounds void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %92, i64 2
  %94 = load void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %93, align 8
  call void %94(%class.StopWatchInterface* nonnull align 8 dereferenceable(8) %68)
  %95 = load i32*, i32** %7, align 8, !tbaa !3
  %96 = load i32*, i32** %8, align 8, !tbaa !3
  %97 = load i32*, i32** %5, align 8, !tbaa !3
  %98 = load i32*, i32** %6, align 8, !tbaa !3
  %99 = load i32*, i32** %3, align 8, !tbaa !3
  %100 = load i32*, i32** %4, align 8, !tbaa !3
  call void @mergeSort(i32* %95, i32* %96, i32* %97, i32* %98, i32* %99, i32* %100, i32 4194304, i32 1)
  %101 = call i32 @hipDeviceSynchronize()
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 316)
  %102 = load void (%class.StopWatchInterface*)**, void (%class.StopWatchInterface*)*** %91, align 8, !tbaa !7
  %103 = getelementptr inbounds void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %102, i64 3
  %104 = load void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %103, align 8
  call void %104(%class.StopWatchInterface* nonnull align 8 dereferenceable(8) %68)
  %105 = bitcast i8* %22 to float (%class.StopWatchInterface*)***
  %106 = load float (%class.StopWatchInterface*)**, float (%class.StopWatchInterface*)*** %105, align 8, !tbaa !7
  %107 = getelementptr inbounds float (%class.StopWatchInterface*)*, float (%class.StopWatchInterface*)** %106, i64 5
  %108 = load float (%class.StopWatchInterface*)*, float (%class.StopWatchInterface*)** %107, align 8
  %109 = call contract float %108(%class.StopWatchInterface* nonnull align 8 dereferenceable(8) %68)
  %110 = fpext float %109 to double
  %111 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), double %110)
  %112 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @str.105, i64 0, i64 0))
  %113 = load i8*, i8** %72, align 8, !tbaa !3
  %114 = call i32 @hipMemcpy(i8* %31, i8* %113, i64 16777216, i32 2)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %114, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 322)
  %115 = load i8*, i8** %74, align 8, !tbaa !3
  %116 = call i32 @hipMemcpy(i8* %32, i8* %115, i64 16777216, i32 2)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %116, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 324)
  %117 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @str.106, i64 0, i64 0))
  %118 = call i32 @validateSortedKeys(i32* %69, i32* %29, i32 1, i32 4194304, i32 65536, i32 1)
  %119 = call i32 @validateSortedValues(i32* %69, i32* %70, i32* %29, i32 1, i32 4194304)
  %120 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @str.107, i64 0, i64 0))
  call void @closeMergeSort()
  %121 = load void (%class.StopWatchInterface*)**, void (%class.StopWatchInterface*)*** %91, align 8, !tbaa !7
  %122 = getelementptr inbounds void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %121, i64 1
  %123 = load void (%class.StopWatchInterface*)*, void (%class.StopWatchInterface*)** %122, align 8
  call void %123(%class.StopWatchInterface* nonnull align 8 dereferenceable(8) %68) #23
  %124 = load i8*, i8** %82, align 8, !tbaa !3
  %125 = call i32 @hipFree(i8* %124)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %125, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 334)
  %126 = load i8*, i8** %80, align 8, !tbaa !3
  %127 = call i32 @hipFree(i8* %126)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %127, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 335)
  %128 = load i8*, i8** %78, align 8, !tbaa !3
  %129 = call i32 @hipFree(i8* %128)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %129, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 336)
  %130 = load i8*, i8** %76, align 8, !tbaa !3
  %131 = call i32 @hipFree(i8* %130)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %131, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 337)
  %132 = load i8*, i8** %74, align 8, !tbaa !3
  %133 = call i32 @hipFree(i8* %132)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %133, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 338)
  %134 = load i8*, i8** %72, align 8, !tbaa !3
  %135 = call i32 @hipFree(i8* %134)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %135, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 339)
  call void @free(i8* %32) #23
  call void @free(i8* %31) #23
  call void @free(i8* nonnull %30) #23
  call void @free(i8* %28) #23
  %136 = icmp eq i32 %118, 0
  %137 = icmp eq i32 %119, 0
  %138 = select i1 %136, i1 true, i1 %137
  %139 = zext i1 %138 to i32
  call void @exit(i32 %139) #25
  unreachable

140:                                              ; preds = %20, %140
  %141 = phi i64 [ 0, %20 ], [ %145, %140 ]
  %142 = tail call i32 @rand() #23
  %143 = and i32 %142, 65535
  %144 = getelementptr inbounds i32, i32* %29, i64 %141
  store i32 %143, i32* %144, align 4, !tbaa !16
  %145 = add nuw nsw i64 %141, 1
  %146 = icmp eq i64 %145, 4194304
  br i1 %146, label %33, label %140, !llvm.loop !20
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_Z14findCudaDeviceiPPKc(i32 %0, i8** %1) local_unnamed_addr #6 comdat {
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
  %16 = load i8, i8* %15, align 1, !tbaa !21
  %17 = icmp eq i8 %16, 45
  %18 = add nuw i64 %14, 1
  br i1 %17, label %13, label %19, !llvm.loop !22

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
  br i1 %48, label %49, label %8, !llvm.loop !23

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
  %61 = load i8, i8* %60, align 1, !tbaa !21
  %62 = icmp eq i8 %61, 45
  %63 = add nuw i64 %59, 1
  br i1 %62, label %58, label %64, !llvm.loop !22

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
  %82 = load i8, i8* %81, align 1, !tbaa !21
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
  br i1 %92, label %93, label %52, !llvm.loop !24

93:                                               ; preds = %88
  %94 = and i8 %90, 1
  %95 = icmp eq i8 %94, 0
  %96 = select i1 %95, i32 0, i32 %89
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.57, i64 0, i64 0))
  tail call void @exit(i32 1) #25
  unreachable

100:                                              ; preds = %93
  %101 = tail call i32 @_Z13gpuDeviceIniti(i32 %96)
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %136

103:                                              ; preds = %100
  %104 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @str.108, i64 0, i64 0))
  tail call void @exit(i32 1) #25
  unreachable

105:                                              ; preds = %2, %49
  %106 = tail call i32 @_Z23gpuGetMaxGflopsDeviceIdv()
  %107 = tail call i32 @hipSetDevice(i32 %106)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %111 = tail call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %107)
  %112 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0), i32 1067, i32 %107, i8* %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.59, i64 0, i64 0)) #27
  tail call void @exit(i32 1) #25
  unreachable

113:                                              ; preds = %105
  %114 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %114) #23
  store i32 0, i32* %3, align 4, !tbaa !16
  %115 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %115) #23
  store i32 0, i32* %4, align 4, !tbaa !16
  %116 = call i32 @hipDeviceGetAttribute(i32* nonnull %3, i32 36, i32 %106)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %113
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %120 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %116)
  %121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0), i32 1069, i32 %116, i8* %120, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.61, i64 0, i64 0)) #27
  call void @exit(i32 1) #25
  unreachable

122:                                              ; preds = %113
  %123 = call i32 @hipDeviceGetAttribute(i32* nonnull %4, i32 37, i32 %106)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %122
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %127 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %123)
  %128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0), i32 1070, i32 %123, i8* %127, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.62, i64 0, i64 0)) #27
  call void @exit(i32 1) #25
  unreachable

129:                                              ; preds = %122
  %130 = load i32, i32* %3, align 4, !tbaa !16
  %131 = load i32, i32* %4, align 4, !tbaa !16
  %132 = call i8* @_Z22_ConvertSMVer2ArchNameii(i32 %130, i32 %131)
  %133 = load i32, i32* %3, align 4, !tbaa !16
  %134 = load i32, i32* %4, align 4, !tbaa !16
  %135 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([52 x i8], [52 x i8]* @.str.63, i64 0, i64 0), i32 %106, i8* %132, i32 %133, i32 %134)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %115) #23
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %114) #23
  br label %136

136:                                              ; preds = %100, %129
  %137 = phi i32 [ %101, %100 ], [ %106, %129 ]
  ret i32 %137
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare dso_local void @srand(i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable writeonly
define dso_local void @fillValues(i32* nocapture writeonly %0, i32 %1) local_unnamed_addr #8 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %71, label %4

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = icmp ult i32 %1, 8
  br i1 %6, label %69, label %7

7:                                                ; preds = %4
  %8 = and i64 %5, 4294967288
  %9 = add nsw i64 %8, -8
  %10 = lshr exact i64 %9, 3
  %11 = add nuw nsw i64 %10, 1
  %12 = and i64 %11, 3
  %13 = icmp ult i64 %9, 24
  br i1 %13, label %50, label %14

14:                                               ; preds = %7
  %15 = and i64 %11, 4611686018427387900
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %46, %16 ]
  %18 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %14 ], [ %47, %16 ]
  %19 = phi i64 [ 0, %14 ], [ %48, %16 ]
  %20 = add <4 x i32> %18, <i32 4, i32 4, i32 4, i32 4>
  %21 = getelementptr inbounds i32, i32* %0, i64 %17
  %22 = bitcast i32* %21 to <4 x i32>*
  store <4 x i32> %18, <4 x i32>* %22, align 4, !tbaa !16
  %23 = getelementptr inbounds i32, i32* %21, i64 4
  %24 = bitcast i32* %23 to <4 x i32>*
  store <4 x i32> %20, <4 x i32>* %24, align 4, !tbaa !16
  %25 = or i64 %17, 8
  %26 = add <4 x i32> %18, <i32 8, i32 8, i32 8, i32 8>
  %27 = add <4 x i32> %18, <i32 12, i32 12, i32 12, i32 12>
  %28 = getelementptr inbounds i32, i32* %0, i64 %25
  %29 = bitcast i32* %28 to <4 x i32>*
  store <4 x i32> %26, <4 x i32>* %29, align 4, !tbaa !16
  %30 = getelementptr inbounds i32, i32* %28, i64 4
  %31 = bitcast i32* %30 to <4 x i32>*
  store <4 x i32> %27, <4 x i32>* %31, align 4, !tbaa !16
  %32 = or i64 %17, 16
  %33 = add <4 x i32> %18, <i32 16, i32 16, i32 16, i32 16>
  %34 = add <4 x i32> %18, <i32 20, i32 20, i32 20, i32 20>
  %35 = getelementptr inbounds i32, i32* %0, i64 %32
  %36 = bitcast i32* %35 to <4 x i32>*
  store <4 x i32> %33, <4 x i32>* %36, align 4, !tbaa !16
  %37 = getelementptr inbounds i32, i32* %35, i64 4
  %38 = bitcast i32* %37 to <4 x i32>*
  store <4 x i32> %34, <4 x i32>* %38, align 4, !tbaa !16
  %39 = or i64 %17, 24
  %40 = add <4 x i32> %18, <i32 24, i32 24, i32 24, i32 24>
  %41 = add <4 x i32> %18, <i32 28, i32 28, i32 28, i32 28>
  %42 = getelementptr inbounds i32, i32* %0, i64 %39
  %43 = bitcast i32* %42 to <4 x i32>*
  store <4 x i32> %40, <4 x i32>* %43, align 4, !tbaa !16
  %44 = getelementptr inbounds i32, i32* %42, i64 4
  %45 = bitcast i32* %44 to <4 x i32>*
  store <4 x i32> %41, <4 x i32>* %45, align 4, !tbaa !16
  %46 = add nuw i64 %17, 32
  %47 = add <4 x i32> %18, <i32 32, i32 32, i32 32, i32 32>
  %48 = add i64 %19, 4
  %49 = icmp eq i64 %48, %15
  br i1 %49, label %50, label %16, !llvm.loop !25

50:                                               ; preds = %16, %7
  %51 = phi i64 [ 0, %7 ], [ %46, %16 ]
  %52 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %7 ], [ %47, %16 ]
  %53 = icmp eq i64 %12, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %50, %54
  %55 = phi i64 [ %63, %54 ], [ %51, %50 ]
  %56 = phi <4 x i32> [ %64, %54 ], [ %52, %50 ]
  %57 = phi i64 [ %65, %54 ], [ 0, %50 ]
  %58 = add <4 x i32> %56, <i32 4, i32 4, i32 4, i32 4>
  %59 = getelementptr inbounds i32, i32* %0, i64 %55
  %60 = bitcast i32* %59 to <4 x i32>*
  store <4 x i32> %56, <4 x i32>* %60, align 4, !tbaa !16
  %61 = getelementptr inbounds i32, i32* %59, i64 4
  %62 = bitcast i32* %61 to <4 x i32>*
  store <4 x i32> %58, <4 x i32>* %62, align 4, !tbaa !16
  %63 = add nuw i64 %55, 8
  %64 = add <4 x i32> %56, <i32 8, i32 8, i32 8, i32 8>
  %65 = add i64 %57, 1
  %66 = icmp eq i64 %65, %12
  br i1 %66, label %67, label %54, !llvm.loop !26

67:                                               ; preds = %54, %50
  %68 = icmp eq i64 %8, %5
  br i1 %68, label %71, label %69

69:                                               ; preds = %4, %67
  %70 = phi i64 [ 0, %4 ], [ %8, %67 ]
  br label %72

71:                                               ; preds = %72, %67, %2
  ret void

72:                                               ; preds = %69, %72
  %73 = phi i64 [ %76, %72 ], [ %70, %69 ]
  %74 = getelementptr inbounds i32, i32* %0, i64 %73
  %75 = trunc i64 %73 to i32
  store i32 %75, i32* %74, align 4, !tbaa !16
  %76 = add nuw nsw i64 %73, 1
  %77 = icmp eq i64 %76, %5
  br i1 %77, label %71, label %72, !llvm.loop !28
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %0, i8* %1, i8* %2, i32 %3) local_unnamed_addr #9 comdat {
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %8 = tail call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %0)
  %9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.101, i64 0, i64 0), i8* %2, i32 %3, i32 %0, i8* %8, i8* %1) #27
  tail call void @exit(i32 1) #25
  unreachable

10:                                               ; preds = %4
  ret void
}

declare dso_local i32 @hipMalloc(i8**, i64) local_unnamed_addr #0

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @initMergeSort() local_unnamed_addr #9 {
  %1 = tail call i32 @hipMalloc(i8** bitcast (i32** @_ZL8d_RanksA to i8**), i64 131072)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %5 = tail call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %1)
  %6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 695, i32 %1, i8* %5, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.43, i64 0, i64 0)) #27
  tail call void @exit(i32 1) #25
  unreachable

7:                                                ; preds = %0
  %8 = tail call i32 @hipMalloc(i8** bitcast (i32** @_ZL8d_RanksB to i8**), i64 131072)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %12 = tail call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %8)
  %13 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 697, i32 %8, i8* %12, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.44, i64 0, i64 0)) #27
  tail call void @exit(i32 1) #25
  unreachable

14:                                               ; preds = %7
  %15 = tail call i32 @hipMalloc(i8** bitcast (i32** @_ZL9d_LimitsA to i8**), i64 131072)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %19 = tail call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %15)
  %20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 699, i32 %15, i8* %19, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.45, i64 0, i64 0)) #27
  tail call void @exit(i32 1) #25
  unreachable

21:                                               ; preds = %14
  %22 = tail call i32 @hipMalloc(i8** bitcast (i32** @_ZL9d_LimitsB to i8**), i64 131072)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %26 = tail call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %22)
  %27 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 701, i32 %22, i8* %26, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.46, i64 0, i64 0)) #27
  tail call void @exit(i32 1) #25
  unreachable

28:                                               ; preds = %21
  ret void
}

declare dso_local i32 @hipDeviceSynchronize() local_unnamed_addr #0

; Function Attrs: uwtable
define dso_local void @mergeSort(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6, i32 %7) local_unnamed_addr #10 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.dim3, align 8
  %18 = alloca %struct.dim3, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca [8 x i8*], align 16
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.dim3, align 8
  %31 = alloca %struct.dim3, align 8
  %32 = alloca i64, align 8
  %33 = alloca i8*, align 8
  %34 = alloca [8 x i8*], align 16
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca %struct.dim3, align 8
  %41 = alloca %struct.dim3, align 8
  %42 = alloca i64, align 8
  %43 = alloca i8*, align 8
  %44 = alloca [5 x i8*], align 16
  %45 = alloca i32*, align 8
  %46 = alloca i32*, align 8
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca %struct.dim3, align 8
  %51 = alloca %struct.dim3, align 8
  %52 = alloca i64, align 8
  %53 = alloca i8*, align 8
  %54 = alloca [5 x i8*], align 16
  %55 = alloca i32*, align 8
  %56 = alloca i32*, align 8
  %57 = alloca i32*, align 8
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca %struct.dim3, align 8
  %62 = alloca %struct.dim3, align 8
  %63 = alloca i64, align 8
  %64 = alloca i8*, align 8
  %65 = alloca [6 x i8*], align 16
  %66 = alloca i32*, align 8
  %67 = alloca i32*, align 8
  %68 = alloca i32*, align 8
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca i32, align 4
  %72 = alloca %struct.dim3, align 8
  %73 = alloca %struct.dim3, align 8
  %74 = alloca i64, align 8
  %75 = alloca i8*, align 8
  %76 = alloca [6 x i8*], align 16
  %77 = alloca i32*, align 8
  %78 = alloca i32*, align 8
  %79 = alloca i32*, align 8
  %80 = alloca i32*, align 8
  %81 = alloca i32, align 4
  %82 = alloca %struct.dim3, align 8
  %83 = alloca %struct.dim3, align 8
  %84 = alloca i64, align 8
  %85 = alloca i8*, align 8
  %86 = alloca [5 x i8*], align 16
  %87 = alloca i32*, align 8
  %88 = alloca i32*, align 8
  %89 = alloca i32*, align 8
  %90 = alloca i32*, align 8
  %91 = alloca i32, align 4
  %92 = alloca %struct.dim3, align 8
  %93 = alloca %struct.dim3, align 8
  %94 = alloca i64, align 8
  %95 = alloca i8*, align 8
  %96 = alloca [5 x i8*], align 16
  %97 = icmp ugt i32 %6, 1024
  br i1 %97, label %109, label %101

98:                                               ; preds = %109
  %99 = and i32 %113, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %8, %98
  br label %102

102:                                              ; preds = %98, %101
  %103 = phi i1 [ true, %101 ], [ false, %98 ]
  %104 = phi i32* [ %0, %101 ], [ %2, %98 ]
  %105 = select i1 %103, i32* %1, i32* %3
  %106 = select i1 %103, i32* %2, i32* %0
  %107 = select i1 %103, i32* %3, i32* %1
  %108 = icmp ult i32 %6, 4194305
  br i1 %108, label %116, label %115

109:                                              ; preds = %8, %109
  %110 = phi i32 [ %113, %109 ], [ 0, %8 ]
  %111 = phi i32 [ %112, %109 ], [ 1024, %8 ]
  %112 = shl i32 %111, 1
  %113 = add i32 %110, 1
  %114 = icmp ult i32 %112, %6
  br i1 %114, label %109, label %98, !llvm.loop !30

115:                                              ; preds = %102
  tail call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 726, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @__PRETTY_FUNCTION__.mergeSort, i64 0, i64 0)) #25
  unreachable

116:                                              ; preds = %102
  %117 = and i32 %6, 1023
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  tail call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 727, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @__PRETTY_FUNCTION__.mergeSort, i64 0, i64 0)) #25
  unreachable

120:                                              ; preds = %116
  %121 = lshr i32 %6, 10
  %122 = icmp eq i32 %7, 0
  %123 = zext i32 %121 to i64
  %124 = or i64 %123, 4294967296
  %125 = tail call i32 @__hipPushCallConfiguration(i64 %124, i32 1, i64 4294967808, i32 1, i64 0, %struct.ihipStream_t* null)
  %126 = icmp eq i32 %125, 0
  br i1 %122, label %169, label %127

127:                                              ; preds = %120
  br i1 %126, label %128, label %162

128:                                              ; preds = %127
  %129 = bitcast i32** %87 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %129)
  %130 = bitcast i32** %88 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %130)
  %131 = bitcast i32** %89 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %131)
  %132 = bitcast i32** %90 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %132)
  %133 = bitcast i32* %91 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %133)
  %134 = bitcast %struct.dim3* %92 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %134)
  %135 = bitcast %struct.dim3* %93 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %135)
  %136 = bitcast i64* %94 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %136)
  %137 = bitcast i8** %95 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %137)
  %138 = bitcast [5 x i8*]* %96 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %138)
  store i32* %104, i32** %87, align 8, !tbaa !3
  store i32* %105, i32** %88, align 8, !tbaa !3
  store i32* %4, i32** %89, align 8, !tbaa !3
  store i32* %5, i32** %90, align 8, !tbaa !3
  store i32 1024, i32* %91, align 4, !tbaa !16
  %139 = getelementptr inbounds [5 x i8*], [5 x i8*]* %96, i64 0, i64 0
  %140 = bitcast [5 x i8*]* %96 to i32***
  store i32** %87, i32*** %140, align 16
  %141 = getelementptr inbounds [5 x i8*], [5 x i8*]* %96, i64 0, i64 1
  %142 = bitcast i8** %141 to i32***
  store i32** %88, i32*** %142, align 8
  %143 = getelementptr inbounds [5 x i8*], [5 x i8*]* %96, i64 0, i64 2
  %144 = bitcast i8** %143 to i32***
  store i32** %89, i32*** %144, align 16
  %145 = getelementptr inbounds [5 x i8*], [5 x i8*]* %96, i64 0, i64 3
  %146 = bitcast i8** %145 to i32***
  store i32** %90, i32*** %146, align 8
  %147 = getelementptr inbounds [5 x i8*], [5 x i8*]* %96, i64 0, i64 4
  %148 = bitcast i8** %147 to i32**
  store i32* %91, i32** %148, align 16
  %149 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %92, %struct.dim3* nonnull %93, i64* nonnull %94, i8** nonnull %95)
  %150 = load i64, i64* %94, align 8
  %151 = bitcast i8** %95 to %struct.ihipStream_t**
  %152 = load %struct.ihipStream_t*, %struct.ihipStream_t** %151, align 8
  %153 = bitcast %struct.dim3* %92 to i64*
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.dim3, %struct.dim3* %92, i64 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = bitcast %struct.dim3* %93 to i64*
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.dim3, %struct.dim3* %93, i64 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32*, i32*, i32)** @_Z21mergeSortSharedKernelILj1EEvPjS0_S0_S0_j to i8*), i64 %154, i32 %156, i64 %158, i32 %160, i8** nonnull %139, i64 %150, %struct.ihipStream_t* %152)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %129)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %130)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %131)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %132)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %133)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %134)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %135)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %136)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %137)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %138)
  br label %162

162:                                              ; preds = %128, %127
  %163 = call i32 @hipGetLastError()
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %211, label %165

165:                                              ; preds = %162
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %167 = call i8* @hipGetErrorString(i32 %163)
  %168 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %166, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 789, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.95, i64 0, i64 0), i32 %163, i8* %167) #27
  call void @exit(i32 1) #25
  unreachable

169:                                              ; preds = %120
  br i1 %126, label %170, label %204

170:                                              ; preds = %169
  %171 = bitcast i32** %77 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %171)
  %172 = bitcast i32** %78 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %172)
  %173 = bitcast i32** %79 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %173)
  %174 = bitcast i32** %80 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %174)
  %175 = bitcast i32* %81 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %175)
  %176 = bitcast %struct.dim3* %82 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %176)
  %177 = bitcast %struct.dim3* %83 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %177)
  %178 = bitcast i64* %84 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %178)
  %179 = bitcast i8** %85 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %179)
  %180 = bitcast [5 x i8*]* %86 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %180)
  store i32* %104, i32** %77, align 8, !tbaa !3
  store i32* %105, i32** %78, align 8, !tbaa !3
  store i32* %4, i32** %79, align 8, !tbaa !3
  store i32* %5, i32** %80, align 8, !tbaa !3
  store i32 1024, i32* %81, align 4, !tbaa !16
  %181 = getelementptr inbounds [5 x i8*], [5 x i8*]* %86, i64 0, i64 0
  %182 = bitcast [5 x i8*]* %86 to i32***
  store i32** %77, i32*** %182, align 16
  %183 = getelementptr inbounds [5 x i8*], [5 x i8*]* %86, i64 0, i64 1
  %184 = bitcast i8** %183 to i32***
  store i32** %78, i32*** %184, align 8
  %185 = getelementptr inbounds [5 x i8*], [5 x i8*]* %86, i64 0, i64 2
  %186 = bitcast i8** %185 to i32***
  store i32** %79, i32*** %186, align 16
  %187 = getelementptr inbounds [5 x i8*], [5 x i8*]* %86, i64 0, i64 3
  %188 = bitcast i8** %187 to i32***
  store i32** %80, i32*** %188, align 8
  %189 = getelementptr inbounds [5 x i8*], [5 x i8*]* %86, i64 0, i64 4
  %190 = bitcast i8** %189 to i32**
  store i32* %81, i32** %190, align 16
  %191 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %82, %struct.dim3* nonnull %83, i64* nonnull %84, i8** nonnull %85)
  %192 = load i64, i64* %84, align 8
  %193 = bitcast i8** %85 to %struct.ihipStream_t**
  %194 = load %struct.ihipStream_t*, %struct.ihipStream_t** %193, align 8
  %195 = bitcast %struct.dim3* %82 to i64*
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds %struct.dim3, %struct.dim3* %82, i64 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = bitcast %struct.dim3* %83 to i64*
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds %struct.dim3, %struct.dim3* %83, i64 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32*, i32*, i32)** @_Z21mergeSortSharedKernelILj0EEvPjS0_S0_S0_j to i8*), i64 %196, i32 %198, i64 %200, i32 %202, i8** nonnull %181, i64 %192, %struct.ihipStream_t* %194)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %171)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %172)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %173)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %174)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %175)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %176)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %177)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %178)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %179)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %180)
  br label %204

204:                                              ; preds = %170, %169
  %205 = call i32 @hipGetLastError()
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %204
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %209 = call i8* @hipGetErrorString(i32 %205)
  %210 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %208, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 793, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.96, i64 0, i64 0), i32 %205, i8* %209) #27
  call void @exit(i32 1) #25
  unreachable

211:                                              ; preds = %162, %204
  %212 = bitcast i32** %66 to i8*
  %213 = bitcast i32** %67 to i8*
  %214 = bitcast i32** %68 to i8*
  %215 = bitcast i32* %69 to i8*
  %216 = bitcast i32* %70 to i8*
  %217 = bitcast i32* %71 to i8*
  %218 = bitcast %struct.dim3* %72 to i8*
  %219 = bitcast %struct.dim3* %73 to i8*
  %220 = bitcast i64* %74 to i8*
  %221 = bitcast i8** %75 to i8*
  %222 = bitcast [6 x i8*]* %76 to i8*
  %223 = getelementptr inbounds [6 x i8*], [6 x i8*]* %76, i64 0, i64 0
  %224 = bitcast [6 x i8*]* %76 to i32***
  %225 = getelementptr inbounds [6 x i8*], [6 x i8*]* %76, i64 0, i64 1
  %226 = bitcast i8** %225 to i32***
  %227 = getelementptr inbounds [6 x i8*], [6 x i8*]* %76, i64 0, i64 2
  %228 = bitcast i8** %227 to i32***
  %229 = getelementptr inbounds [6 x i8*], [6 x i8*]* %76, i64 0, i64 3
  %230 = bitcast i8** %229 to i32**
  %231 = getelementptr inbounds [6 x i8*], [6 x i8*]* %76, i64 0, i64 4
  %232 = bitcast i8** %231 to i32**
  %233 = getelementptr inbounds [6 x i8*], [6 x i8*]* %76, i64 0, i64 5
  %234 = bitcast i8** %233 to i32**
  %235 = bitcast i8** %75 to %struct.ihipStream_t**
  %236 = bitcast %struct.dim3* %72 to i64*
  %237 = getelementptr inbounds %struct.dim3, %struct.dim3* %72, i64 0, i32 2
  %238 = bitcast %struct.dim3* %73 to i64*
  %239 = getelementptr inbounds %struct.dim3, %struct.dim3* %73, i64 0, i32 2
  %240 = bitcast i32** %55 to i8*
  %241 = bitcast i32** %56 to i8*
  %242 = bitcast i32** %57 to i8*
  %243 = bitcast i32* %58 to i8*
  %244 = bitcast i32* %59 to i8*
  %245 = bitcast i32* %60 to i8*
  %246 = bitcast %struct.dim3* %61 to i8*
  %247 = bitcast %struct.dim3* %62 to i8*
  %248 = bitcast i64* %63 to i8*
  %249 = bitcast i8** %64 to i8*
  %250 = bitcast [6 x i8*]* %65 to i8*
  %251 = getelementptr inbounds [6 x i8*], [6 x i8*]* %65, i64 0, i64 0
  %252 = bitcast [6 x i8*]* %65 to i32***
  %253 = getelementptr inbounds [6 x i8*], [6 x i8*]* %65, i64 0, i64 1
  %254 = bitcast i8** %253 to i32***
  %255 = getelementptr inbounds [6 x i8*], [6 x i8*]* %65, i64 0, i64 2
  %256 = bitcast i8** %255 to i32***
  %257 = getelementptr inbounds [6 x i8*], [6 x i8*]* %65, i64 0, i64 3
  %258 = bitcast i8** %257 to i32**
  %259 = getelementptr inbounds [6 x i8*], [6 x i8*]* %65, i64 0, i64 4
  %260 = bitcast i8** %259 to i32**
  %261 = getelementptr inbounds [6 x i8*], [6 x i8*]* %65, i64 0, i64 5
  %262 = bitcast i8** %261 to i32**
  %263 = bitcast i8** %64 to %struct.ihipStream_t**
  %264 = bitcast %struct.dim3* %61 to i64*
  %265 = getelementptr inbounds %struct.dim3, %struct.dim3* %61, i64 0, i32 2
  %266 = bitcast %struct.dim3* %62 to i64*
  %267 = getelementptr inbounds %struct.dim3, %struct.dim3* %62, i64 0, i32 2
  %268 = bitcast i32** %45 to i8*
  %269 = bitcast i32** %46 to i8*
  %270 = bitcast i32* %47 to i8*
  %271 = bitcast i32* %48 to i8*
  %272 = bitcast i32* %49 to i8*
  %273 = bitcast %struct.dim3* %50 to i8*
  %274 = bitcast %struct.dim3* %51 to i8*
  %275 = bitcast i64* %52 to i8*
  %276 = bitcast i8** %53 to i8*
  %277 = bitcast [5 x i8*]* %54 to i8*
  %278 = getelementptr inbounds [5 x i8*], [5 x i8*]* %54, i64 0, i64 0
  %279 = bitcast [5 x i8*]* %54 to i32***
  %280 = getelementptr inbounds [5 x i8*], [5 x i8*]* %54, i64 0, i64 1
  %281 = bitcast i8** %280 to i32***
  %282 = getelementptr inbounds [5 x i8*], [5 x i8*]* %54, i64 0, i64 2
  %283 = bitcast i8** %282 to i32**
  %284 = getelementptr inbounds [5 x i8*], [5 x i8*]* %54, i64 0, i64 3
  %285 = bitcast i8** %284 to i32**
  %286 = getelementptr inbounds [5 x i8*], [5 x i8*]* %54, i64 0, i64 4
  %287 = bitcast i8** %286 to i32**
  %288 = bitcast i8** %53 to %struct.ihipStream_t**
  %289 = bitcast %struct.dim3* %50 to i64*
  %290 = getelementptr inbounds %struct.dim3, %struct.dim3* %50, i64 0, i32 2
  %291 = bitcast %struct.dim3* %51 to i64*
  %292 = getelementptr inbounds %struct.dim3, %struct.dim3* %51, i64 0, i32 2
  %293 = bitcast i32** %35 to i8*
  %294 = bitcast i32** %36 to i8*
  %295 = bitcast i32* %37 to i8*
  %296 = bitcast i32* %38 to i8*
  %297 = bitcast i32* %39 to i8*
  %298 = bitcast %struct.dim3* %40 to i8*
  %299 = bitcast %struct.dim3* %41 to i8*
  %300 = bitcast i64* %42 to i8*
  %301 = bitcast i8** %43 to i8*
  %302 = bitcast [5 x i8*]* %44 to i8*
  %303 = getelementptr inbounds [5 x i8*], [5 x i8*]* %44, i64 0, i64 0
  %304 = bitcast [5 x i8*]* %44 to i32***
  %305 = getelementptr inbounds [5 x i8*], [5 x i8*]* %44, i64 0, i64 1
  %306 = bitcast i8** %305 to i32***
  %307 = getelementptr inbounds [5 x i8*], [5 x i8*]* %44, i64 0, i64 2
  %308 = bitcast i8** %307 to i32**
  %309 = getelementptr inbounds [5 x i8*], [5 x i8*]* %44, i64 0, i64 3
  %310 = bitcast i8** %309 to i32**
  %311 = getelementptr inbounds [5 x i8*], [5 x i8*]* %44, i64 0, i64 4
  %312 = bitcast i8** %311 to i32**
  %313 = bitcast i8** %43 to %struct.ihipStream_t**
  %314 = bitcast %struct.dim3* %40 to i64*
  %315 = getelementptr inbounds %struct.dim3, %struct.dim3* %40, i64 0, i32 2
  %316 = bitcast %struct.dim3* %41 to i64*
  %317 = getelementptr inbounds %struct.dim3, %struct.dim3* %41, i64 0, i32 2
  %318 = and i32 %6, 127
  %319 = icmp ne i32 %318, 0
  %320 = lshr i32 %6, 7
  %321 = zext i1 %319 to i32
  %322 = add nuw nsw i32 %320, %321
  %323 = bitcast i32** %22 to i8*
  %324 = bitcast i32** %23 to i8*
  %325 = bitcast i32** %24 to i8*
  %326 = bitcast i32** %25 to i8*
  %327 = bitcast i32** %26 to i8*
  %328 = bitcast i32** %27 to i8*
  %329 = bitcast i32* %28 to i8*
  %330 = bitcast i32* %29 to i8*
  %331 = bitcast %struct.dim3* %30 to i8*
  %332 = bitcast %struct.dim3* %31 to i8*
  %333 = bitcast i64* %32 to i8*
  %334 = bitcast i8** %33 to i8*
  %335 = bitcast [8 x i8*]* %34 to i8*
  %336 = getelementptr inbounds [8 x i8*], [8 x i8*]* %34, i64 0, i64 0
  %337 = bitcast [8 x i8*]* %34 to i32***
  %338 = getelementptr inbounds [8 x i8*], [8 x i8*]* %34, i64 0, i64 1
  %339 = bitcast i8** %338 to i32***
  %340 = getelementptr inbounds [8 x i8*], [8 x i8*]* %34, i64 0, i64 2
  %341 = bitcast i8** %340 to i32***
  %342 = getelementptr inbounds [8 x i8*], [8 x i8*]* %34, i64 0, i64 3
  %343 = bitcast i8** %342 to i32***
  %344 = getelementptr inbounds [8 x i8*], [8 x i8*]* %34, i64 0, i64 4
  %345 = bitcast i8** %344 to i32***
  %346 = getelementptr inbounds [8 x i8*], [8 x i8*]* %34, i64 0, i64 5
  %347 = bitcast i8** %346 to i32***
  %348 = getelementptr inbounds [8 x i8*], [8 x i8*]* %34, i64 0, i64 6
  %349 = bitcast i8** %348 to i32**
  %350 = getelementptr inbounds [8 x i8*], [8 x i8*]* %34, i64 0, i64 7
  %351 = bitcast i8** %350 to i32**
  %352 = bitcast i8** %33 to %struct.ihipStream_t**
  %353 = bitcast %struct.dim3* %30 to i64*
  %354 = getelementptr inbounds %struct.dim3, %struct.dim3* %30, i64 0, i32 2
  %355 = bitcast %struct.dim3* %31 to i64*
  %356 = getelementptr inbounds %struct.dim3, %struct.dim3* %31, i64 0, i32 2
  %357 = bitcast i32** %9 to i8*
  %358 = bitcast i32** %10 to i8*
  %359 = bitcast i32** %11 to i8*
  %360 = bitcast i32** %12 to i8*
  %361 = bitcast i32** %13 to i8*
  %362 = bitcast i32** %14 to i8*
  %363 = bitcast i32* %15 to i8*
  %364 = bitcast i32* %16 to i8*
  %365 = bitcast %struct.dim3* %17 to i8*
  %366 = bitcast %struct.dim3* %18 to i8*
  %367 = bitcast i64* %19 to i8*
  %368 = bitcast i8** %20 to i8*
  %369 = bitcast [8 x i8*]* %21 to i8*
  %370 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 0
  %371 = bitcast [8 x i8*]* %21 to i32***
  %372 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 1
  %373 = bitcast i8** %372 to i32***
  %374 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 2
  %375 = bitcast i8** %374 to i32***
  %376 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 3
  %377 = bitcast i8** %376 to i32***
  %378 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 4
  %379 = bitcast i8** %378 to i32***
  %380 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 5
  %381 = bitcast i8** %380 to i32***
  %382 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 6
  %383 = bitcast i8** %382 to i32**
  %384 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 7
  %385 = bitcast i8** %384 to i32**
  %386 = bitcast i8** %20 to %struct.ihipStream_t**
  %387 = bitcast %struct.dim3* %17 to i64*
  %388 = getelementptr inbounds %struct.dim3, %struct.dim3* %17, i64 0, i32 2
  %389 = bitcast %struct.dim3* %18 to i64*
  %390 = getelementptr inbounds %struct.dim3, %struct.dim3* %18, i64 0, i32 2
  br i1 %97, label %392, label %391

391:                                              ; preds = %561, %211
  ret void

392:                                              ; preds = %211, %561
  %393 = phi i32 [ %398, %561 ], [ 1024, %211 ]
  %394 = phi i32* [ %396, %561 ], [ %107, %211 ]
  %395 = phi i32* [ %397, %561 ], [ %106, %211 ]
  %396 = phi i32* [ %394, %561 ], [ %105, %211 ]
  %397 = phi i32* [ %395, %561 ], [ %104, %211 ]
  %398 = shl i32 %393, 1
  %399 = urem i32 %6, %398
  %400 = load i32*, i32** @_ZL8d_RanksA, align 8, !tbaa !3
  %401 = load i32*, i32** @_ZL8d_RanksB, align 8, !tbaa !3
  %402 = icmp ugt i32 %399, %393
  %403 = select i1 %402, i32 %398, i32 0
  %404 = sub i32 %6, %399
  %405 = add i32 %403, %404
  %406 = lshr i32 %405, 8
  %407 = and i32 %405, 65280
  %408 = icmp ne i32 %407, 0
  %409 = lshr i32 %405, 16
  %410 = zext i1 %408 to i32
  %411 = add nuw nsw i32 %409, %410
  %412 = zext i32 %411 to i64
  %413 = or i64 %412, 4294967296
  %414 = call i32 @__hipPushCallConfiguration(i64 %413, i32 1, i64 4294967552, i32 1, i64 0, %struct.ihipStream_t* null)
  %415 = icmp eq i32 %414, 0
  br i1 %122, label %433, label %416

416:                                              ; preds = %392
  br i1 %415, label %417, label %426

417:                                              ; preds = %416
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %212)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %213)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %214)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %215)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %216)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %217)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %218)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %219)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %220)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %221)
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %222)
  store i32* %400, i32** %66, align 8, !tbaa !3
  store i32* %401, i32** %67, align 8, !tbaa !3
  store i32* %397, i32** %68, align 8, !tbaa !3
  store i32 %393, i32* %69, align 4, !tbaa !16
  store i32 %6, i32* %70, align 4, !tbaa !16
  store i32 %406, i32* %71, align 4, !tbaa !16
  store i32** %66, i32*** %224, align 16
  store i32** %67, i32*** %226, align 8
  store i32** %68, i32*** %228, align 16
  store i32* %69, i32** %230, align 8
  store i32* %70, i32** %232, align 16
  store i32* %71, i32** %234, align 8
  %418 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %72, %struct.dim3* nonnull %73, i64* nonnull %74, i8** nonnull %75)
  %419 = load i64, i64* %74, align 8
  %420 = load %struct.ihipStream_t*, %struct.ihipStream_t** %235, align 8
  %421 = load i64, i64* %236, align 8
  %422 = load i32, i32* %237, align 8
  %423 = load i64, i64* %238, align 8
  %424 = load i32, i32* %239, align 8
  %425 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32*, i32, i32, i32)** @_Z25generateSampleRanksKernelILj1EEvPjS0_S0_jjj to i8*), i64 %421, i32 %422, i64 %423, i32 %424, i8** nonnull %223, i64 %419, %struct.ihipStream_t* %420)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %212)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %213)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %214)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %215)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %216)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %217)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %218)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %219)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %220)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %221)
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %222)
  br label %426

426:                                              ; preds = %417, %416
  %427 = call i32 @hipGetLastError()
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %450, label %429

429:                                              ; preds = %426
  %430 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %431 = call i8* @hipGetErrorString(i32 %427)
  %432 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %430, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 808, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.97, i64 0, i64 0), i32 %427, i8* %431) #27
  call void @exit(i32 1) #25
  unreachable

433:                                              ; preds = %392
  br i1 %415, label %434, label %443

434:                                              ; preds = %433
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %240)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %241)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %242)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %243)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %244)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %245)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %246)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %247)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %248)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %249)
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %250)
  store i32* %400, i32** %55, align 8, !tbaa !3
  store i32* %401, i32** %56, align 8, !tbaa !3
  store i32* %397, i32** %57, align 8, !tbaa !3
  store i32 %393, i32* %58, align 4, !tbaa !16
  store i32 %6, i32* %59, align 4, !tbaa !16
  store i32 %406, i32* %60, align 4, !tbaa !16
  store i32** %55, i32*** %252, align 16
  store i32** %56, i32*** %254, align 8
  store i32** %57, i32*** %256, align 16
  store i32* %58, i32** %258, align 8
  store i32* %59, i32** %260, align 16
  store i32* %60, i32** %262, align 8
  %435 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %61, %struct.dim3* nonnull %62, i64* nonnull %63, i8** nonnull %64)
  %436 = load i64, i64* %63, align 8
  %437 = load %struct.ihipStream_t*, %struct.ihipStream_t** %263, align 8
  %438 = load i64, i64* %264, align 8
  %439 = load i32, i32* %265, align 8
  %440 = load i64, i64* %266, align 8
  %441 = load i32, i32* %267, align 8
  %442 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32*, i32, i32, i32)** @_Z25generateSampleRanksKernelILj0EEvPjS0_S0_jjj to i8*), i64 %438, i32 %439, i64 %440, i32 %441, i8** nonnull %251, i64 %436, %struct.ihipStream_t* %437)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %240)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %241)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %242)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %243)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %244)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %245)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %246)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %247)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %248)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %249)
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %250)
  br label %443

443:                                              ; preds = %434, %433
  %444 = call i32 @hipGetLastError()
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %450, label %446

446:                                              ; preds = %443
  %447 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %448 = call i8* @hipGetErrorString(i32 %444)
  %449 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %447, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 812, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.98, i64 0, i64 0), i32 %444, i8* %448) #27
  call void @exit(i32 1) #25
  unreachable

450:                                              ; preds = %426, %443
  %451 = load i32*, i32** @_ZL9d_LimitsA, align 8, !tbaa !3
  %452 = load i32*, i32** @_ZL9d_LimitsB, align 8, !tbaa !3
  %453 = load i32*, i32** @_ZL8d_RanksA, align 8, !tbaa !3
  %454 = load i32*, i32** @_ZL8d_RanksB, align 8, !tbaa !3
  %455 = call i32 @__hipPushCallConfiguration(i64 %413, i32 1, i64 4294967552, i32 1, i64 0, %struct.ihipStream_t* null)
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %457, label %466

457:                                              ; preds = %450
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %268)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %269)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %270)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %271)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %272)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %273)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %274)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %275)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %276)
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %277)
  store i32* %451, i32** %45, align 8, !tbaa !3
  store i32* %453, i32** %46, align 8, !tbaa !3
  store i32 %393, i32* %47, align 4, !tbaa !16
  store i32 %6, i32* %48, align 4, !tbaa !16
  store i32 %406, i32* %49, align 4, !tbaa !16
  store i32** %45, i32*** %279, align 16
  store i32** %46, i32*** %281, align 8
  store i32* %47, i32** %283, align 16
  store i32* %48, i32** %285, align 8
  store i32* %49, i32** %287, align 16
  %458 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %50, %struct.dim3* nonnull %51, i64* nonnull %52, i8** nonnull %53)
  %459 = load i64, i64* %52, align 8
  %460 = load %struct.ihipStream_t*, %struct.ihipStream_t** %288, align 8
  %461 = load i64, i64* %289, align 8
  %462 = load i32, i32* %290, align 8
  %463 = load i64, i64* %291, align 8
  %464 = load i32, i32* %292, align 8
  %465 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32, i32, i32)** @_Z26mergeRanksAndIndicesKernelPjS_jjj to i8*), i64 %461, i32 %462, i64 %463, i32 %464, i8** nonnull %278, i64 %459, %struct.ihipStream_t* %460)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %268)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %269)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %270)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %271)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %272)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %273)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %274)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %275)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %276)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %277)
  br label %466

466:                                              ; preds = %457, %450
  %467 = call i32 @hipGetLastError()
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %473, label %469

469:                                              ; preds = %466
  %470 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %471 = call i8* @hipGetErrorString(i32 %467)
  %472 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %470, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 863, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.99, i64 0, i64 0), i32 %467, i8* %471) #27
  call void @exit(i32 1) #25
  unreachable

473:                                              ; preds = %466
  %474 = call i32 @__hipPushCallConfiguration(i64 %413, i32 1, i64 4294967552, i32 1, i64 0, %struct.ihipStream_t* null)
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %476, label %485

476:                                              ; preds = %473
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %293)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %294)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %295)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %296)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %297)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %298)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %299)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %300)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %301)
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %302)
  store i32* %452, i32** %35, align 8, !tbaa !3
  store i32* %454, i32** %36, align 8, !tbaa !3
  store i32 %393, i32* %37, align 4, !tbaa !16
  store i32 %6, i32* %38, align 4, !tbaa !16
  store i32 %406, i32* %39, align 4, !tbaa !16
  store i32** %35, i32*** %304, align 16
  store i32** %36, i32*** %306, align 8
  store i32* %37, i32** %308, align 16
  store i32* %38, i32** %310, align 8
  store i32* %39, i32** %312, align 16
  %477 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %40, %struct.dim3* nonnull %41, i64* nonnull %42, i8** nonnull %43)
  %478 = load i64, i64* %42, align 8
  %479 = load %struct.ihipStream_t*, %struct.ihipStream_t** %313, align 8
  %480 = load i64, i64* %314, align 8
  %481 = load i32, i32* %315, align 8
  %482 = load i64, i64* %316, align 8
  %483 = load i32, i32* %317, align 8
  %484 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32, i32, i32)** @_Z26mergeRanksAndIndicesKernelPjS_jjj to i8*), i64 %480, i32 %481, i64 %482, i32 %483, i8** nonnull %303, i64 %478, %struct.ihipStream_t* %479)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %293)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %294)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %295)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %296)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %297)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %298)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %299)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %300)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %301)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %302)
  br label %485

485:                                              ; preds = %476, %473
  %486 = call i32 @hipGetLastError()
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %492, label %488

488:                                              ; preds = %485
  %489 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %490 = call i8* @hipGetErrorString(i32 %486)
  %491 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %489, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 867, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.100, i64 0, i64 0), i32 %486, i8* %490) #27
  call void @exit(i32 1) #25
  unreachable

492:                                              ; preds = %485
  %493 = load i32*, i32** @_ZL9d_LimitsA, align 8, !tbaa !3
  %494 = load i32*, i32** @_ZL9d_LimitsB, align 8, !tbaa !3
  %495 = lshr i32 %404, 7
  %496 = select i1 %402, i32 %322, i32 %495
  %497 = zext i32 %496 to i64
  %498 = or i64 %497, 4294967296
  %499 = call i32 @__hipPushCallConfiguration(i64 %498, i32 1, i64 4294967424, i32 1, i64 0, %struct.ihipStream_t* null)
  %500 = icmp eq i32 %499, 0
  br i1 %122, label %518, label %501

501:                                              ; preds = %492
  br i1 %500, label %502, label %511

502:                                              ; preds = %501
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %323)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %324)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %325)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %326)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %327)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %328)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %329)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %330)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %331)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %332)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %333)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %334)
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %335)
  store i32* %395, i32** %22, align 8, !tbaa !3
  store i32* %394, i32** %23, align 8, !tbaa !3
  store i32* %397, i32** %24, align 8, !tbaa !3
  store i32* %396, i32** %25, align 8, !tbaa !3
  store i32* %493, i32** %26, align 8, !tbaa !3
  store i32* %494, i32** %27, align 8, !tbaa !3
  store i32 %393, i32* %28, align 4, !tbaa !16
  store i32 %6, i32* %29, align 4, !tbaa !16
  store i32** %22, i32*** %337, align 16
  store i32** %23, i32*** %339, align 8
  store i32** %24, i32*** %341, align 16
  store i32** %25, i32*** %343, align 8
  store i32** %26, i32*** %345, align 16
  store i32** %27, i32*** %347, align 8
  store i32* %28, i32** %349, align 16
  store i32* %29, i32** %351, align 8
  %503 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %30, %struct.dim3* nonnull %31, i64* nonnull %32, i8** nonnull %33)
  %504 = load i64, i64* %32, align 8
  %505 = load %struct.ihipStream_t*, %struct.ihipStream_t** %352, align 8
  %506 = load i64, i64* %353, align 8
  %507 = load i32, i32* %354, align 8
  %508 = load i64, i64* %355, align 8
  %509 = load i32, i32* %356, align 8
  %510 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, i32, i32)** @_Z30mergeElementaryIntervalsKernelILj1EEvPjS0_S0_S0_S0_S0_jj to i8*), i64 %506, i32 %507, i64 %508, i32 %509, i8** nonnull %336, i64 %504, %struct.ihipStream_t* %505)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %323)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %324)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %325)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %326)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %327)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %328)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %329)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %330)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %331)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %332)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %333)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %334)
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %335)
  br label %511

511:                                              ; preds = %502, %501
  %512 = call i32 @hipGetLastError()
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %535, label %514

514:                                              ; preds = %511
  %515 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %516 = call i8* @hipGetErrorString(i32 %512)
  %517 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %515, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 992, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.41, i64 0, i64 0), i32 %512, i8* %516) #27
  call void @exit(i32 1) #25
  unreachable

518:                                              ; preds = %492
  br i1 %500, label %519, label %528

519:                                              ; preds = %518
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %357)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %358)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %359)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %360)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %361)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %362)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %363)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %364)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %365)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %366)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %367)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %368)
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %369)
  store i32* %395, i32** %9, align 8, !tbaa !3
  store i32* %394, i32** %10, align 8, !tbaa !3
  store i32* %397, i32** %11, align 8, !tbaa !3
  store i32* %396, i32** %12, align 8, !tbaa !3
  store i32* %493, i32** %13, align 8, !tbaa !3
  store i32* %494, i32** %14, align 8, !tbaa !3
  store i32 %393, i32* %15, align 4, !tbaa !16
  store i32 %6, i32* %16, align 4, !tbaa !16
  store i32** %9, i32*** %371, align 16
  store i32** %10, i32*** %373, align 8
  store i32** %11, i32*** %375, align 16
  store i32** %12, i32*** %377, align 8
  store i32** %13, i32*** %379, align 16
  store i32** %14, i32*** %381, align 8
  store i32* %15, i32** %383, align 16
  store i32* %16, i32** %385, align 8
  %520 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %17, %struct.dim3* nonnull %18, i64* nonnull %19, i8** nonnull %20)
  %521 = load i64, i64* %19, align 8
  %522 = load %struct.ihipStream_t*, %struct.ihipStream_t** %386, align 8
  %523 = load i64, i64* %387, align 8
  %524 = load i32, i32* %388, align 8
  %525 = load i64, i64* %389, align 8
  %526 = load i32, i32* %390, align 8
  %527 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, i32, i32)** @_Z30mergeElementaryIntervalsKernelILj0EEvPjS0_S0_S0_S0_S0_jj to i8*), i64 %523, i32 %524, i64 %525, i32 %526, i8** nonnull %370, i64 %521, %struct.ihipStream_t* %522)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %357)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %358)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %359)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %360)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %361)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %362)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %363)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %364)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %365)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %366)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %367)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %368)
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %369)
  br label %528

528:                                              ; preds = %519, %518
  %529 = call i32 @hipGetLastError()
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %535, label %531

531:                                              ; preds = %528
  %532 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %533 = call i8* @hipGetErrorString(i32 %529)
  %534 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %532, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 997, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.42, i64 0, i64 0), i32 %529, i8* %533) #27
  call void @exit(i32 1) #25
  unreachable

535:                                              ; preds = %511, %528
  br i1 %402, label %561, label %536

536:                                              ; preds = %535
  %537 = zext i32 %404 to i64
  %538 = getelementptr inbounds i32, i32* %395, i64 %537
  %539 = bitcast i32* %538 to i8*
  %540 = getelementptr inbounds i32, i32* %397, i64 %537
  %541 = bitcast i32* %540 to i8*
  %542 = zext i32 %399 to i64
  %543 = shl nuw nsw i64 %542, 2
  %544 = call i32 @hipMemcpy(i8* %539, i8* %541, i64 %543, i32 3)
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %550, label %546

546:                                              ; preds = %536
  %547 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %548 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %544)
  %549 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %547, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 749, i32 %544, i8* %548, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.49, i64 0, i64 0)) #27
  call void @exit(i32 1) #25
  unreachable

550:                                              ; preds = %536
  %551 = getelementptr inbounds i32, i32* %394, i64 %537
  %552 = bitcast i32* %551 to i8*
  %553 = getelementptr inbounds i32, i32* %396, i64 %537
  %554 = bitcast i32* %553 to i8*
  %555 = call i32 @hipMemcpy(i8* %552, i8* %554, i64 %543, i32 3)
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %561, label %557

557:                                              ; preds = %550
  %558 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %559 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %555)
  %560 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %558, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 752, i32 %555, i8* %559, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.50, i64 0, i64 0)) #27
  call void @exit(i32 1) #25
  unreachable

561:                                              ; preds = %550, %535
  %562 = icmp ult i32 %398, %6
  br i1 %562, label %392, label %391, !llvm.loop !31
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @validateSortedKeys(i32* nocapture readonly %0, i32* nocapture readonly %1, i32 %2, i32 %3, i32 %4, i32 %5) local_unnamed_addr #11 {
  %7 = icmp ult i32 %3, 2
  br i1 %7, label %137, label %8

8:                                                ; preds = %6
  %9 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0))
  %10 = zext i32 %4 to i64
  %11 = shl nuw nsw i64 %10, 2
  %12 = tail call noalias align 16 i8* @malloc(i64 %11) #23
  %13 = bitcast i8* %12 to i32*
  %14 = tail call noalias align 16 i8* @malloc(i64 %11) #23
  %15 = bitcast i8* %14 to i32*
  %16 = zext i32 %3 to i64
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %134, label %18

18:                                               ; preds = %8
  %19 = icmp eq i32 %5, 0
  %20 = add i32 %3, -1
  %21 = zext i32 %20 to i64
  br i1 %19, label %22, label %72

22:                                               ; preds = %18, %67
  %23 = phi i32 [ %68, %67 ], [ 0, %18 ]
  %24 = phi i32* [ %70, %67 ], [ %0, %18 ]
  %25 = phi i32* [ %69, %67 ], [ %1, %18 ]
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 %11, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 %11, i1 false)
  br label %36

26:                                               ; preds = %28
  %27 = icmp eq i64 %35, %10
  br i1 %27, label %56, label %28, !llvm.loop !32

28:                                               ; preds = %45, %26
  %29 = phi i64 [ %35, %26 ], [ 0, %45 ]
  %30 = getelementptr inbounds i32, i32* %13, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !16
  %32 = getelementptr inbounds i32, i32* %15, i64 %29
  %33 = load i32, i32* %32, align 4, !tbaa !16
  %34 = icmp eq i32 %31, %33
  %35 = add nuw nsw i64 %29, 1
  br i1 %34, label %26, label %126

36:                                               ; preds = %45, %22
  %37 = phi i64 [ %54, %45 ], [ 0, %22 ]
  %38 = getelementptr inbounds i32, i32* %25, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !16
  %40 = icmp ult i32 %39, %4
  br i1 %40, label %41, label %122

41:                                               ; preds = %36
  %42 = getelementptr inbounds i32, i32* %24, i64 %37
  %43 = load i32, i32* %42, align 4, !tbaa !16
  %44 = icmp ult i32 %43, %4
  br i1 %44, label %45, label %122

45:                                               ; preds = %41
  %46 = zext i32 %39 to i64
  %47 = getelementptr inbounds i32, i32* %13, i64 %46
  %48 = load i32, i32* %47, align 4, !tbaa !16
  %49 = add i32 %48, 1
  store i32 %49, i32* %47, align 4, !tbaa !16
  %50 = zext i32 %43 to i64
  %51 = getelementptr inbounds i32, i32* %15, i64 %50
  %52 = load i32, i32* %51, align 4, !tbaa !16
  %53 = add i32 %52, 1
  store i32 %53, i32* %51, align 4, !tbaa !16
  %54 = add nuw nsw i64 %37, 1
  %55 = icmp eq i64 %54, %16
  br i1 %55, label %28, label %36, !llvm.loop !33

56:                                               ; preds = %26
  %57 = load i32, i32* %24, align 4, !tbaa !16
  br label %58

58:                                               ; preds = %65, %56
  %59 = phi i32 [ %63, %65 ], [ %57, %56 ]
  %60 = phi i64 [ %61, %65 ], [ 0, %56 ]
  %61 = add nuw nsw i64 %60, 1
  %62 = getelementptr inbounds i32, i32* %24, i64 %61
  %63 = load i32, i32* %62, align 4, !tbaa !16
  %64 = icmp ult i32 %59, %63
  br i1 %64, label %130, label %65

65:                                               ; preds = %58
  %66 = icmp eq i64 %61, %21
  br i1 %66, label %67, label %58, !llvm.loop !34

67:                                               ; preds = %65
  %68 = add nuw i32 %23, 1
  %69 = getelementptr inbounds i32, i32* %25, i64 %16
  %70 = getelementptr inbounds i32, i32* %24, i64 %16
  %71 = icmp eq i32 %68, %2
  br i1 %71, label %134, label %22, !llvm.loop !35

72:                                               ; preds = %18, %117
  %73 = phi i32 [ %118, %117 ], [ 0, %18 ]
  %74 = phi i32* [ %120, %117 ], [ %0, %18 ]
  %75 = phi i32* [ %119, %117 ], [ %1, %18 ]
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 %11, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 %11, i1 false)
  br label %95

76:                                               ; preds = %87
  %77 = icmp eq i64 %94, %10
  br i1 %77, label %115, label %87, !llvm.loop !32

78:                                               ; preds = %115, %85
  %79 = phi i32 [ %116, %115 ], [ %83, %85 ]
  %80 = phi i64 [ 0, %115 ], [ %81, %85 ]
  %81 = add nuw nsw i64 %80, 1
  %82 = getelementptr inbounds i32, i32* %74, i64 %81
  %83 = load i32, i32* %82, align 4, !tbaa !16
  %84 = icmp ugt i32 %79, %83
  br i1 %84, label %130, label %85

85:                                               ; preds = %78
  %86 = icmp eq i64 %81, %21
  br i1 %86, label %117, label %78, !llvm.loop !34

87:                                               ; preds = %104, %76
  %88 = phi i64 [ %94, %76 ], [ 0, %104 ]
  %89 = getelementptr inbounds i32, i32* %13, i64 %88
  %90 = load i32, i32* %89, align 4, !tbaa !16
  %91 = getelementptr inbounds i32, i32* %15, i64 %88
  %92 = load i32, i32* %91, align 4, !tbaa !16
  %93 = icmp eq i32 %90, %92
  %94 = add nuw nsw i64 %88, 1
  br i1 %93, label %76, label %126

95:                                               ; preds = %104, %72
  %96 = phi i64 [ %113, %104 ], [ 0, %72 ]
  %97 = getelementptr inbounds i32, i32* %75, i64 %96
  %98 = load i32, i32* %97, align 4, !tbaa !16
  %99 = icmp ult i32 %98, %4
  br i1 %99, label %100, label %122

100:                                              ; preds = %95
  %101 = getelementptr inbounds i32, i32* %74, i64 %96
  %102 = load i32, i32* %101, align 4, !tbaa !16
  %103 = icmp ult i32 %102, %4
  br i1 %103, label %104, label %122

104:                                              ; preds = %100
  %105 = zext i32 %98 to i64
  %106 = getelementptr inbounds i32, i32* %13, i64 %105
  %107 = load i32, i32* %106, align 4, !tbaa !16
  %108 = add i32 %107, 1
  store i32 %108, i32* %106, align 4, !tbaa !16
  %109 = zext i32 %102 to i64
  %110 = getelementptr inbounds i32, i32* %15, i64 %109
  %111 = load i32, i32* %110, align 4, !tbaa !16
  %112 = add i32 %111, 1
  store i32 %112, i32* %110, align 4, !tbaa !16
  %113 = add nuw nsw i64 %96, 1
  %114 = icmp eq i64 %113, %16
  br i1 %114, label %87, label %95, !llvm.loop !33

115:                                              ; preds = %76
  %116 = load i32, i32* %74, align 4, !tbaa !16
  br label %78

117:                                              ; preds = %85
  %118 = add nuw i32 %73, 1
  %119 = getelementptr inbounds i32, i32* %75, i64 %16
  %120 = getelementptr inbounds i32, i32* %74, i64 %16
  %121 = icmp eq i32 %118, %2
  br i1 %121, label %134, label %72, !llvm.loop !35

122:                                              ; preds = %100, %95, %41, %36
  %123 = phi i32 [ %23, %36 ], [ %23, %41 ], [ %73, %95 ], [ %73, %100 ]
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %125 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %124, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.29, i64 0, i64 0), i32 %123) #27
  br label %134

126:                                              ; preds = %87, %28
  %127 = phi i32 [ %23, %28 ], [ %73, %87 ]
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %129 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.30, i64 0, i64 0), i32 %127) #27
  br label %134

130:                                              ; preds = %78, %58
  %131 = phi i32 [ %23, %58 ], [ %73, %78 ]
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %133 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %132, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.31, i64 0, i64 0), i32 %131) #27
  br label %134

134:                                              ; preds = %117, %67, %8, %122, %126, %130
  %135 = phi i1 [ true, %122 ], [ true, %126 ], [ true, %130 ], [ false, %8 ], [ false, %67 ], [ false, %117 ]
  %136 = phi i32 [ 0, %122 ], [ 0, %126 ], [ 0, %130 ], [ 1, %8 ], [ 1, %67 ], [ 1, %117 ]
  tail call void @free(i8* %14) #23
  tail call void @free(i8* %12) #23
  br i1 %135, label %141, label %137

137:                                              ; preds = %134, %6
  %138 = phi i8* [ getelementptr inbounds ([51 x i8], [51 x i8]* @str.110, i64 0, i64 0), %6 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @str.111, i64 0, i64 0), %134 ]
  %139 = phi i32 [ 1, %6 ], [ %136, %134 ]
  %140 = tail call i32 @puts(i8* nonnull dereferenceable(1) %138)
  br label %141

141:                                              ; preds = %137, %134
  %142 = phi i32 [ 0, %134 ], [ %139, %137 ]
  ret i32 %142
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local i32 @validateSortedValues(i32* nocapture readonly %0, i32* nocapture readonly %1, i32* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #12 {
  %6 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i64 0, i64 0))
  %7 = zext i32 %4 to i64
  %8 = icmp eq i32 %3, 0
  %9 = icmp eq i32 %4, 0
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %52, label %11

11:                                               ; preds = %5
  %12 = add i32 %4, -1
  %13 = zext i32 %12 to i64
  br label %14

14:                                               ; preds = %11, %47
  %15 = phi i32 [ %48, %47 ], [ 0, %11 ]
  %16 = phi i32 [ %45, %47 ], [ 1, %11 ]
  %17 = phi i32 [ %32, %47 ], [ 1, %11 ]
  %18 = phi i32* [ %49, %47 ], [ %0, %11 ]
  %19 = phi i32* [ %50, %47 ], [ %1, %11 ]
  br label %20

20:                                               ; preds = %14, %44
  %21 = phi i64 [ 0, %14 ], [ %34, %44 ]
  %22 = phi i32 [ %16, %14 ], [ %45, %44 ]
  %23 = phi i32 [ %17, %14 ], [ %32, %44 ]
  %24 = getelementptr inbounds i32, i32* %18, i64 %21
  %25 = load i32, i32* %24, align 4, !tbaa !16
  %26 = getelementptr inbounds i32, i32* %19, i64 %21
  %27 = load i32, i32* %26, align 4, !tbaa !16
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %2, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !16
  %31 = icmp eq i32 %25, %30
  %32 = select i1 %31, i32 %23, i32 0
  %33 = icmp ult i64 %21, %13
  %34 = add nuw nsw i64 %21, 1
  br i1 %33, label %35, label %44

35:                                               ; preds = %20
  %36 = getelementptr inbounds i32, i32* %18, i64 %34
  %37 = load i32, i32* %36, align 4, !tbaa !16
  %38 = icmp eq i32 %25, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = getelementptr inbounds i32, i32* %19, i64 %34
  %41 = load i32, i32* %40, align 4, !tbaa !16
  %42 = icmp ugt i32 %27, %41
  %43 = select i1 %42, i32 0, i32 %22
  br label %44

44:                                               ; preds = %20, %39, %35
  %45 = phi i32 [ %43, %39 ], [ %22, %35 ], [ %22, %20 ]
  %46 = icmp eq i64 %34, %7
  br i1 %46, label %47, label %20, !llvm.loop !36

47:                                               ; preds = %44
  %48 = add nuw i32 %15, 1
  %49 = getelementptr inbounds i32, i32* %18, i64 %7
  %50 = getelementptr inbounds i32, i32* %19, i64 %7
  %51 = icmp eq i32 %48, %3
  br i1 %51, label %54, label %14, !llvm.loop !37

52:                                               ; preds = %5
  %53 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @str.111, i64 0, i64 0))
  br label %61

54:                                               ; preds = %47
  %55 = icmp eq i32 %32, 0
  %56 = select i1 %55, i32 0, i32 %23
  %57 = select i1 %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)
  %58 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %57)
  %59 = icmp eq i32 %45, 0
  %60 = select i1 %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.35, i64 0, i64 0)
  br label %61

61:                                               ; preds = %54, %52
  %62 = phi i32 [ 1, %52 ], [ %56, %54 ]
  %63 = phi i8* [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.35, i64 0, i64 0), %52 ], [ %60, %54 ]
  %64 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %63)
  ret i32 %62
}

; Function Attrs: mustprogress uwtable
define dso_local void @closeMergeSort() local_unnamed_addr #9 {
  %1 = load i8*, i8** bitcast (i32** @_ZL8d_RanksA to i8**), align 8, !tbaa !3
  %2 = tail call i32 @hipFree(i8* %1)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %6 = tail call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %2)
  %7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 767, i32 %2, i8* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i64 0, i64 0)) #27
  tail call void @exit(i32 1) #25
  unreachable

8:                                                ; preds = %0
  %9 = load i8*, i8** bitcast (i32** @_ZL8d_RanksB to i8**), align 8, !tbaa !3
  %10 = tail call i32 @hipFree(i8* %9)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %14 = tail call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %10)
  %15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 768, i32 %10, i8* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i64 0, i64 0)) #27
  tail call void @exit(i32 1) #25
  unreachable

16:                                               ; preds = %8
  %17 = load i8*, i8** bitcast (i32** @_ZL9d_LimitsB to i8**), align 8, !tbaa !3
  %18 = tail call i32 @hipFree(i8* %17)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %22 = tail call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %18)
  %23 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 769, i32 %18, i8* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i64 0, i64 0)) #27
  tail call void @exit(i32 1) #25
  unreachable

24:                                               ; preds = %16
  %25 = load i8*, i8** bitcast (i32** @_ZL9d_LimitsA to i8**), align 8, !tbaa !3
  %26 = tail call i32 @hipFree(i8* %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %30 = tail call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %26)
  %31 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 770, i32 %26, i8* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i64 0, i64 0)) #27
  tail call void @exit(i32 1) #25
  unreachable

32:                                               ; preds = %24
  ret void
}

declare dso_local i32 @hipFree(i8*) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #14

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: norecurse uwtable
define dso_local void @_Z38__device_stub__bitonicSortSharedKernelPjS_S_S_jj(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5) #3 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dim3, align 8
  %14 = alloca %struct.dim3, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8, !tbaa !3
  store i32* %1, i32** %8, align 8, !tbaa !3
  store i32* %2, i32** %9, align 8, !tbaa !3
  store i32* %3, i32** %10, align 8, !tbaa !3
  store i32 %4, i32* %11, align 4, !tbaa !16
  store i32 %5, i32* %12, align 4, !tbaa !16
  %17 = alloca [6 x i8*], align 16
  %18 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 0
  %19 = bitcast [6 x i8*]* %17 to i32***
  store i32** %7, i32*** %19, align 16
  %20 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 1
  %21 = bitcast i8** %20 to i32***
  store i32** %8, i32*** %21, align 8
  %22 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 2
  %23 = bitcast i8** %22 to i32***
  store i32** %9, i32*** %23, align 16
  %24 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 3
  %25 = bitcast i8** %24 to i32***
  store i32** %10, i32*** %25, align 8
  %26 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 4
  %27 = bitcast i8** %26 to i32**
  store i32* %11, i32** %27, align 16
  %28 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 5
  %29 = bitcast i8** %28 to i32**
  store i32* %12, i32** %29, align 8
  %30 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %13, %struct.dim3* nonnull %14, i64* nonnull %15, i8** nonnull %16)
  %31 = load i64, i64* %15, align 8
  %32 = bitcast i8** %16 to %struct.ihipStream_t**
  %33 = load %struct.ihipStream_t*, %struct.ihipStream_t** %32, align 8
  %34 = bitcast %struct.dim3* %13 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.dim3, %struct.dim3* %13, i64 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = bitcast %struct.dim3* %14 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.dim3, %struct.dim3* %14, i64 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32*, i32*, i32, i32)** @_Z23bitonicSortSharedKernelPjS_S_S_jj to i8*), i64 %35, i32 %37, i64 %39, i32 %41, i8** nonnull %18, i64 %31, %struct.ihipStream_t* %33)
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable writeonly
define dso_local i32 @factorRadix2(i32* nocapture writeonly %0, i32 %1) local_unnamed_addr #8 {
  %3 = icmp eq i32 %1, 0
  store i32 0, i32* %0, align 4, !tbaa !16
  br i1 %3, label %9, label %4

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %8, %4 ], [ %1, %2 ]
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  %8 = lshr i32 %5, 1
  br i1 %7, label %4, label %9, !llvm.loop !38

9:                                                ; preds = %4, %2
  %10 = phi i32 [ 0, %2 ], [ %5, %4 ]
  ret i32 %10
}

; Function Attrs: uwtable
define dso_local void @bitonicSortShared(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #10 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dim3, align 8
  %15 = alloca %struct.dim3, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca [6 x i8*], align 16
  %19 = icmp ult i32 %5, 2
  br i1 %19, label %86, label %20

20:                                               ; preds = %7, %20
  %21 = phi i32 [ %24, %20 ], [ %5, %7 ]
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  %24 = lshr i32 %21, 1
  br i1 %23, label %20, label %25, !llvm.loop !38

25:                                               ; preds = %20
  %26 = icmp eq i32 %21, 1
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  tail call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 540, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.bitonicSortShared, i64 0, i64 0)) #25
  unreachable

28:                                               ; preds = %25
  %29 = mul i32 %5, %4
  %30 = lshr i32 %29, 10
  %31 = icmp ult i32 %5, 1025
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 545, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.bitonicSortShared, i64 0, i64 0)) #25
  unreachable

33:                                               ; preds = %28
  %34 = and i32 %29, 1023
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @__assert_fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 546, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.bitonicSortShared, i64 0, i64 0)) #25
  unreachable

37:                                               ; preds = %33
  %38 = zext i32 %30 to i64
  %39 = or i64 %38, 4294967296
  %40 = tail call i32 @__hipPushCallConfiguration(i64 %39, i32 1, i64 4294967808, i32 1, i64 0, %struct.ihipStream_t* null)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %79

42:                                               ; preds = %37
  %43 = bitcast i32** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %43)
  %44 = bitcast i32** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %44)
  %45 = bitcast i32** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45)
  %46 = bitcast i32** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %46)
  %47 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %47)
  %48 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %48)
  %49 = bitcast %struct.dim3* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %49)
  %50 = bitcast %struct.dim3* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %50)
  %51 = bitcast i64* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %51)
  %52 = bitcast i8** %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %52)
  %53 = bitcast [6 x i8*]* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %53)
  store i32* %0, i32** %8, align 8, !tbaa !3
  store i32* %1, i32** %9, align 8, !tbaa !3
  store i32* %2, i32** %10, align 8, !tbaa !3
  store i32* %3, i32** %11, align 8, !tbaa !3
  store i32 %5, i32* %12, align 4, !tbaa !16
  store i32 %6, i32* %13, align 4, !tbaa !16
  %54 = getelementptr inbounds [6 x i8*], [6 x i8*]* %18, i64 0, i64 0
  %55 = bitcast [6 x i8*]* %18 to i32***
  store i32** %8, i32*** %55, align 16
  %56 = getelementptr inbounds [6 x i8*], [6 x i8*]* %18, i64 0, i64 1
  %57 = bitcast i8** %56 to i32***
  store i32** %9, i32*** %57, align 8
  %58 = getelementptr inbounds [6 x i8*], [6 x i8*]* %18, i64 0, i64 2
  %59 = bitcast i8** %58 to i32***
  store i32** %10, i32*** %59, align 16
  %60 = getelementptr inbounds [6 x i8*], [6 x i8*]* %18, i64 0, i64 3
  %61 = bitcast i8** %60 to i32***
  store i32** %11, i32*** %61, align 8
  %62 = getelementptr inbounds [6 x i8*], [6 x i8*]* %18, i64 0, i64 4
  %63 = bitcast i8** %62 to i32**
  store i32* %12, i32** %63, align 16
  %64 = getelementptr inbounds [6 x i8*], [6 x i8*]* %18, i64 0, i64 5
  %65 = bitcast i8** %64 to i32**
  store i32* %13, i32** %65, align 8
  %66 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %14, %struct.dim3* nonnull %15, i64* nonnull %16, i8** nonnull %17)
  %67 = load i64, i64* %16, align 8
  %68 = bitcast i8** %17 to %struct.ihipStream_t**
  %69 = load %struct.ihipStream_t*, %struct.ihipStream_t** %68, align 8
  %70 = bitcast %struct.dim3* %14 to i64*
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.dim3, %struct.dim3* %14, i64 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = bitcast %struct.dim3* %15 to i64*
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.dim3, %struct.dim3* %15, i64 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32*, i32*, i32, i32)** @_Z23bitonicSortSharedKernelPjS_S_S_jj to i8*), i64 %71, i32 %73, i64 %75, i32 %77, i8** nonnull %54, i64 %67, %struct.ihipStream_t* %69)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %46)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %47)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %48)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %49)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %50)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %51)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %52)
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %53)
  br label %79

79:                                               ; preds = %42, %37
  %80 = call i32 @hipGetLastError()
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %84 = call i8* @hipGetErrorString(i32 %80)
  %85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 550, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i64 0, i64 0), i32 %80, i8* %84) #27
  call void @exit(i32 1) #25
  unreachable

86:                                               ; preds = %79, %7
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #14

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #0

; Function Attrs: uwtable
define dso_local void @bitonicMergeElementaryIntervals(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8) local_unnamed_addr #10 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.dim3, align 8
  %19 = alloca %struct.dim3, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca [8 x i8*], align 16
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.dim3, align 8
  %32 = alloca %struct.dim3, align 8
  %33 = alloca i64, align 8
  %34 = alloca i8*, align 8
  %35 = alloca [8 x i8*], align 16
  %36 = shl i32 %6, 1
  %37 = urem i32 %7, %36
  %38 = icmp ugt i32 %37, %6
  br i1 %38, label %39, label %45

39:                                               ; preds = %9
  %40 = and i32 %7, 127
  %41 = icmp ne i32 %40, 0
  %42 = lshr i32 %7, 7
  %43 = zext i1 %41 to i32
  %44 = add nuw nsw i32 %42, %43
  br label %48

45:                                               ; preds = %9
  %46 = sub i32 %7, %37
  %47 = lshr i32 %46, 7
  br label %48

48:                                               ; preds = %45, %39
  %49 = phi i32 [ %44, %39 ], [ %47, %45 ]
  %50 = icmp eq i32 %8, 0
  %51 = zext i32 %49 to i64
  %52 = or i64 %51, 4294967296
  %53 = tail call i32 @__hipPushCallConfiguration(i64 %52, i32 1, i64 4294967424, i32 1, i64 0, %struct.ihipStream_t* null)
  %54 = icmp eq i32 %53, 0
  br i1 %50, label %106, label %55

55:                                               ; preds = %48
  br i1 %54, label %56, label %99

56:                                               ; preds = %55
  %57 = bitcast i32** %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %57)
  %58 = bitcast i32** %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %58)
  %59 = bitcast i32** %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %59)
  %60 = bitcast i32** %26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %60)
  %61 = bitcast i32** %27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %61)
  %62 = bitcast i32** %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %62)
  %63 = bitcast i32* %29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %63)
  %64 = bitcast i32* %30 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %64)
  %65 = bitcast %struct.dim3* %31 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %65)
  %66 = bitcast %struct.dim3* %32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %66)
  %67 = bitcast i64* %33 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %67)
  %68 = bitcast i8** %34 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %68)
  %69 = bitcast [8 x i8*]* %35 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %69)
  store i32* %0, i32** %23, align 8, !tbaa !3
  store i32* %1, i32** %24, align 8, !tbaa !3
  store i32* %2, i32** %25, align 8, !tbaa !3
  store i32* %3, i32** %26, align 8, !tbaa !3
  store i32* %4, i32** %27, align 8, !tbaa !3
  store i32* %5, i32** %28, align 8, !tbaa !3
  store i32 %6, i32* %29, align 4, !tbaa !16
  store i32 %7, i32* %30, align 4, !tbaa !16
  %70 = getelementptr inbounds [8 x i8*], [8 x i8*]* %35, i64 0, i64 0
  %71 = bitcast [8 x i8*]* %35 to i32***
  store i32** %23, i32*** %71, align 16
  %72 = getelementptr inbounds [8 x i8*], [8 x i8*]* %35, i64 0, i64 1
  %73 = bitcast i8** %72 to i32***
  store i32** %24, i32*** %73, align 8
  %74 = getelementptr inbounds [8 x i8*], [8 x i8*]* %35, i64 0, i64 2
  %75 = bitcast i8** %74 to i32***
  store i32** %25, i32*** %75, align 16
  %76 = getelementptr inbounds [8 x i8*], [8 x i8*]* %35, i64 0, i64 3
  %77 = bitcast i8** %76 to i32***
  store i32** %26, i32*** %77, align 8
  %78 = getelementptr inbounds [8 x i8*], [8 x i8*]* %35, i64 0, i64 4
  %79 = bitcast i8** %78 to i32***
  store i32** %27, i32*** %79, align 16
  %80 = getelementptr inbounds [8 x i8*], [8 x i8*]* %35, i64 0, i64 5
  %81 = bitcast i8** %80 to i32***
  store i32** %28, i32*** %81, align 8
  %82 = getelementptr inbounds [8 x i8*], [8 x i8*]* %35, i64 0, i64 6
  %83 = bitcast i8** %82 to i32**
  store i32* %29, i32** %83, align 16
  %84 = getelementptr inbounds [8 x i8*], [8 x i8*]* %35, i64 0, i64 7
  %85 = bitcast i8** %84 to i32**
  store i32* %30, i32** %85, align 8
  %86 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %31, %struct.dim3* nonnull %32, i64* nonnull %33, i8** nonnull %34)
  %87 = load i64, i64* %33, align 8
  %88 = bitcast i8** %34 to %struct.ihipStream_t**
  %89 = load %struct.ihipStream_t*, %struct.ihipStream_t** %88, align 8
  %90 = bitcast %struct.dim3* %31 to i64*
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.dim3, %struct.dim3* %31, i64 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = bitcast %struct.dim3* %32 to i64*
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.dim3, %struct.dim3* %32, i64 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, i32, i32)** @_Z37bitonicMergeElementaryIntervalsKernelILj1EEvPjS0_S0_S0_S0_S0_jj to i8*), i64 %91, i32 %93, i64 %95, i32 %97, i8** nonnull %70, i64 %87, %struct.ihipStream_t* %89)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %57)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %59)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %61)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %62)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %63)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %64)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %65)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %66)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %68)
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %69)
  br label %99

99:                                               ; preds = %56, %55
  %100 = call i32 @hipGetLastError()
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %157, label %102

102:                                              ; preds = %99
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %104 = call i8* @hipGetErrorString(i32 %100)
  %105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 682, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.41, i64 0, i64 0), i32 %100, i8* %104) #27
  call void @exit(i32 1) #25
  unreachable

106:                                              ; preds = %48
  br i1 %54, label %107, label %150

107:                                              ; preds = %106
  %108 = bitcast i32** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %108)
  %109 = bitcast i32** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %109)
  %110 = bitcast i32** %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %110)
  %111 = bitcast i32** %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %111)
  %112 = bitcast i32** %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %112)
  %113 = bitcast i32** %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %113)
  %114 = bitcast i32* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %114)
  %115 = bitcast i32* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %115)
  %116 = bitcast %struct.dim3* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %116)
  %117 = bitcast %struct.dim3* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %117)
  %118 = bitcast i64* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %118)
  %119 = bitcast i8** %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %119)
  %120 = bitcast [8 x i8*]* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %120)
  store i32* %0, i32** %10, align 8, !tbaa !3
  store i32* %1, i32** %11, align 8, !tbaa !3
  store i32* %2, i32** %12, align 8, !tbaa !3
  store i32* %3, i32** %13, align 8, !tbaa !3
  store i32* %4, i32** %14, align 8, !tbaa !3
  store i32* %5, i32** %15, align 8, !tbaa !3
  store i32 %6, i32* %16, align 4, !tbaa !16
  store i32 %7, i32* %17, align 4, !tbaa !16
  %121 = getelementptr inbounds [8 x i8*], [8 x i8*]* %22, i64 0, i64 0
  %122 = bitcast [8 x i8*]* %22 to i32***
  store i32** %10, i32*** %122, align 16
  %123 = getelementptr inbounds [8 x i8*], [8 x i8*]* %22, i64 0, i64 1
  %124 = bitcast i8** %123 to i32***
  store i32** %11, i32*** %124, align 8
  %125 = getelementptr inbounds [8 x i8*], [8 x i8*]* %22, i64 0, i64 2
  %126 = bitcast i8** %125 to i32***
  store i32** %12, i32*** %126, align 16
  %127 = getelementptr inbounds [8 x i8*], [8 x i8*]* %22, i64 0, i64 3
  %128 = bitcast i8** %127 to i32***
  store i32** %13, i32*** %128, align 8
  %129 = getelementptr inbounds [8 x i8*], [8 x i8*]* %22, i64 0, i64 4
  %130 = bitcast i8** %129 to i32***
  store i32** %14, i32*** %130, align 16
  %131 = getelementptr inbounds [8 x i8*], [8 x i8*]* %22, i64 0, i64 5
  %132 = bitcast i8** %131 to i32***
  store i32** %15, i32*** %132, align 8
  %133 = getelementptr inbounds [8 x i8*], [8 x i8*]* %22, i64 0, i64 6
  %134 = bitcast i8** %133 to i32**
  store i32* %16, i32** %134, align 16
  %135 = getelementptr inbounds [8 x i8*], [8 x i8*]* %22, i64 0, i64 7
  %136 = bitcast i8** %135 to i32**
  store i32* %17, i32** %136, align 8
  %137 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %18, %struct.dim3* nonnull %19, i64* nonnull %20, i8** nonnull %21)
  %138 = load i64, i64* %20, align 8
  %139 = bitcast i8** %21 to %struct.ihipStream_t**
  %140 = load %struct.ihipStream_t*, %struct.ihipStream_t** %139, align 8
  %141 = bitcast %struct.dim3* %18 to i64*
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.dim3, %struct.dim3* %18, i64 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = bitcast %struct.dim3* %19 to i64*
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.dim3, %struct.dim3* %19, i64 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, i32, i32)** @_Z37bitonicMergeElementaryIntervalsKernelILj0EEvPjS0_S0_S0_S0_S0_jj to i8*), i64 %142, i32 %144, i64 %146, i32 %148, i8** nonnull %121, i64 %138, %struct.ihipStream_t* %140)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %108)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %109)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %110)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %111)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %113)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %114)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %115)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %116)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %117)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %118)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %119)
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %120)
  br label %150

150:                                              ; preds = %107, %106
  %151 = call i32 @hipGetLastError()
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %150
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %155 = call i8* @hipGetErrorString(i32 %151)
  %156 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %154, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.42, i64 0, i64 0), i32 %151, i8* %155) #27
  call void @exit(i32 1) #25
  unreachable

157:                                              ; preds = %150, %99
  ret void
}

; Function Attrs: norecurse uwtable
define linkonce_odr dso_local void @_Z52__device_stub__bitonicMergeElementaryIntervalsKernelILj1EEvPjS0_S0_S0_S0_S0_jj(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6, i32 %7) #3 comdat {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.dim3, align 8
  %18 = alloca %struct.dim3, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8, !tbaa !3
  store i32* %1, i32** %10, align 8, !tbaa !3
  store i32* %2, i32** %11, align 8, !tbaa !3
  store i32* %3, i32** %12, align 8, !tbaa !3
  store i32* %4, i32** %13, align 8, !tbaa !3
  store i32* %5, i32** %14, align 8, !tbaa !3
  store i32 %6, i32* %15, align 4, !tbaa !16
  store i32 %7, i32* %16, align 4, !tbaa !16
  %21 = alloca [8 x i8*], align 16
  %22 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 0
  %23 = bitcast [8 x i8*]* %21 to i32***
  store i32** %9, i32*** %23, align 16
  %24 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 1
  %25 = bitcast i8** %24 to i32***
  store i32** %10, i32*** %25, align 8
  %26 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 2
  %27 = bitcast i8** %26 to i32***
  store i32** %11, i32*** %27, align 16
  %28 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 3
  %29 = bitcast i8** %28 to i32***
  store i32** %12, i32*** %29, align 8
  %30 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 4
  %31 = bitcast i8** %30 to i32***
  store i32** %13, i32*** %31, align 16
  %32 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 5
  %33 = bitcast i8** %32 to i32***
  store i32** %14, i32*** %33, align 8
  %34 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 6
  %35 = bitcast i8** %34 to i32**
  store i32* %15, i32** %35, align 16
  %36 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 7
  %37 = bitcast i8** %36 to i32**
  store i32* %16, i32** %37, align 8
  %38 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %17, %struct.dim3* nonnull %18, i64* nonnull %19, i8** nonnull %20)
  %39 = load i64, i64* %19, align 8
  %40 = bitcast i8** %20 to %struct.ihipStream_t**
  %41 = load %struct.ihipStream_t*, %struct.ihipStream_t** %40, align 8
  %42 = bitcast %struct.dim3* %17 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.dim3, %struct.dim3* %17, i64 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = bitcast %struct.dim3* %18 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.dim3, %struct.dim3* %18, i64 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, i32, i32)** @_Z37bitonicMergeElementaryIntervalsKernelILj1EEvPjS0_S0_S0_S0_S0_jj to i8*), i64 %43, i32 %45, i64 %47, i32 %49, i8** nonnull %22, i64 %39, %struct.ihipStream_t* %41)
  ret void
}

; Function Attrs: norecurse uwtable
define linkonce_odr dso_local void @_Z52__device_stub__bitonicMergeElementaryIntervalsKernelILj0EEvPjS0_S0_S0_S0_S0_jj(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6, i32 %7) #3 comdat {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.dim3, align 8
  %18 = alloca %struct.dim3, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8, !tbaa !3
  store i32* %1, i32** %10, align 8, !tbaa !3
  store i32* %2, i32** %11, align 8, !tbaa !3
  store i32* %3, i32** %12, align 8, !tbaa !3
  store i32* %4, i32** %13, align 8, !tbaa !3
  store i32* %5, i32** %14, align 8, !tbaa !3
  store i32 %6, i32* %15, align 4, !tbaa !16
  store i32 %7, i32* %16, align 4, !tbaa !16
  %21 = alloca [8 x i8*], align 16
  %22 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 0
  %23 = bitcast [8 x i8*]* %21 to i32***
  store i32** %9, i32*** %23, align 16
  %24 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 1
  %25 = bitcast i8** %24 to i32***
  store i32** %10, i32*** %25, align 8
  %26 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 2
  %27 = bitcast i8** %26 to i32***
  store i32** %11, i32*** %27, align 16
  %28 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 3
  %29 = bitcast i8** %28 to i32***
  store i32** %12, i32*** %29, align 8
  %30 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 4
  %31 = bitcast i8** %30 to i32***
  store i32** %13, i32*** %31, align 16
  %32 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 5
  %33 = bitcast i8** %32 to i32***
  store i32** %14, i32*** %33, align 8
  %34 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 6
  %35 = bitcast i8** %34 to i32**
  store i32* %15, i32** %35, align 16
  %36 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 7
  %37 = bitcast i8** %36 to i32**
  store i32* %16, i32** %37, align 8
  %38 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %17, %struct.dim3* nonnull %18, i64* nonnull %19, i8** nonnull %20)
  %39 = load i64, i64* %19, align 8
  %40 = bitcast i8** %20 to %struct.ihipStream_t**
  %41 = load %struct.ihipStream_t*, %struct.ihipStream_t** %40, align 8
  %42 = bitcast %struct.dim3* %17 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.dim3, %struct.dim3* %17, i64 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = bitcast %struct.dim3* %18 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.dim3, %struct.dim3* %18, i64 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, i32, i32)** @_Z37bitonicMergeElementaryIntervalsKernelILj0EEvPjS0_S0_S0_S0_S0_jj to i8*), i64 %43, i32 %45, i64 %47, i32 %49, i8** nonnull %22, i64 %39, %struct.ihipStream_t* %41)
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local void @_Z41__device_stub__mergeRanksAndIndicesKernelPjS_jjj(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #3 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8, !tbaa !3
  store i32* %1, i32** %7, align 8, !tbaa !3
  store i32 %2, i32* %8, align 4, !tbaa !16
  store i32 %3, i32* %9, align 4, !tbaa !16
  store i32 %4, i32* %10, align 4, !tbaa !16
  %15 = alloca [5 x i8*], align 16
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 0
  %17 = bitcast [5 x i8*]* %15 to i32***
  store i32** %6, i32*** %17, align 16
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 1
  %19 = bitcast i8** %18 to i32***
  store i32** %7, i32*** %19, align 8
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
  %38 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32, i32, i32)** @_Z26mergeRanksAndIndicesKernelPjS_jjj to i8*), i64 %31, i32 %33, i64 %35, i32 %37, i8** nonnull %16, i64 %27, %struct.ihipStream_t* %29)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_Z13gpuDeviceIniti(i32 %0) local_unnamed_addr #6 comdat {
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
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0), i32 999, i32 %7, i8* %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.64, i64 0, i64 0)) #27
  call void @exit(i32 1) #25
  unreachable

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4, !tbaa !16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %18 = call i64 @fwrite(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.65, i64 0, i64 0), i64 56, i64 1, %struct._IO_FILE* %17) #27
  call void @exit(i32 1) #25
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
  %27 = load i32, i32* %2, align 4, !tbaa !16
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.67, i64 0, i64 0), i32 %27) #27
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.68, i64 0, i64 0), i32 %21) #27
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %32 = call i32 @fputc(i32 10, %struct._IO_FILE* %31)
  %33 = sub nsw i32 0, %21
  br label %84

34:                                               ; preds = %19
  %35 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %35) #23
  store i32 -1, i32* %3, align 4, !tbaa !16
  %36 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %36) #23
  store i32 0, i32* %4, align 4, !tbaa !16
  %37 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %37) #23
  store i32 0, i32* %5, align 4, !tbaa !16
  %38 = call i32 @hipDeviceGetAttribute(i32* nonnull %3, i32 33, i32 %21)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %42 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %38)
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0), i32 1025, i32 %38, i8* %42, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.69, i64 0, i64 0)) #27
  call void @exit(i32 1) #25
  unreachable

44:                                               ; preds = %34
  %45 = call i32 @hipDeviceGetAttribute(i32* nonnull %4, i32 36, i32 %21)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %49 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %45)
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0), i32 1026, i32 %45, i8* %49, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.61, i64 0, i64 0)) #27
  call void @exit(i32 1) #25
  unreachable

51:                                               ; preds = %44
  %52 = call i32 @hipDeviceGetAttribute(i32* nonnull %5, i32 37, i32 %21)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %56 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %52)
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0), i32 1027, i32 %52, i8* %56, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.62, i64 0, i64 0)) #27
  call void @exit(i32 1) #25
  unreachable

58:                                               ; preds = %51
  %59 = load i32, i32* %3, align 4, !tbaa !16
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %63 = call i64 @fwrite(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.70, i64 0, i64 0), i64 90, i64 1, %struct._IO_FILE* %62) #27
  br label %82

64:                                               ; preds = %58
  %65 = load i32, i32* %4, align 4, !tbaa !16
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %69 = call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.71, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %68) #27
  call void @exit(i32 1) #25
  unreachable

70:                                               ; preds = %64
  %71 = call i32 @hipSetDevice(i32 %21)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %75 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %71)
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0), i32 1040, i32 %71, i8* %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.59, i64 0, i64 0)) #27
  call void @exit(i32 1) #25
  unreachable

77:                                               ; preds = %70
  %78 = load i32, i32* %4, align 4, !tbaa !16
  %79 = load i32, i32* %5, align 4, !tbaa !16
  %80 = call i8* @_Z22_ConvertSMVer2ArchNameii(i32 %78, i32 %79)
  %81 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @.str.72, i64 0, i64 0), i32 %21, i8* %80)
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
define linkonce_odr dso_local i32 @_Z23gpuGetMaxGflopsDeviceIdv() local_unnamed_addr #6 comdat {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #23
  store i32 0, i32* %1, align 4, !tbaa !16
  %8 = call i32 @hipGetDeviceCount(i32* nonnull %1)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %12 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %8)
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0), i32 1092, i32 %8, i8* %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.64, i64 0, i64 0)) #27
  call void @exit(i32 1) #25
  unreachable

14:                                               ; preds = %0
  %15 = load i32, i32* %1, align 4, !tbaa !16
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
  %26 = call i64 @fwrite(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.73, i64 0, i64 0), i64 66, i64 1, %struct._IO_FILE* %25) #27
  call void @exit(i32 1) #25
  unreachable

27:                                               ; preds = %17, %92
  %28 = phi i32 [ %96, %92 ], [ 0, %17 ]
  %29 = phi i64 [ %95, %92 ], [ 0, %17 ]
  %30 = phi i32 [ %94, %92 ], [ 0, %17 ]
  %31 = phi i32 [ %93, %92 ], [ 0, %17 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #23
  store i32 -1, i32* %2, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #23
  store i32 0, i32* %3, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #23
  store i32 0, i32* %4, align 4, !tbaa !16
  %32 = call i32 @hipDeviceGetAttribute(i32* nonnull %2, i32 33, i32 %28)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %36 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %32)
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0), i32 1106, i32 %32, i8* %36, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.74, i64 0, i64 0)) #27
  call void @exit(i32 1) #25
  unreachable

38:                                               ; preds = %27
  %39 = call i32 @hipDeviceGetAttribute(i32* nonnull %3, i32 36, i32 %28)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %43 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %39)
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0), i32 1107, i32 %39, i8* %43, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.75, i64 0, i64 0)) #27
  call void @exit(i32 1) #25
  unreachable

45:                                               ; preds = %38
  %46 = call i32 @hipDeviceGetAttribute(i32* nonnull %4, i32 37, i32 %28)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %50 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %46)
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0), i32 1108, i32 %46, i8* %50, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.76, i64 0, i64 0)) #27
  call void @exit(i32 1) #25
  unreachable

52:                                               ; preds = %45
  %53 = load i32, i32* %2, align 4, !tbaa !16
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %90, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %3, align 4, !tbaa !16
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
  store i32 0, i32* %5, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #23
  store i32 0, i32* %6, align 4, !tbaa !16
  %65 = call i32 @hipDeviceGetAttribute(i32* nonnull %5, i32 32, i32 %28)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %69 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %65)
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0), i32 1120, i32 %65, i8* %69, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.77, i64 0, i64 0)) #27
  call void @exit(i32 1) #25
  unreachable

71:                                               ; preds = %63
  %72 = call i32 @hipDeviceGetAttribute(i32* nonnull %6, i32 29, i32 %28)
  switch i32 %72, label %75 [
    i32 0, label %73
    i32 1, label %79
  ]

73:                                               ; preds = %71
  %74 = load i32, i32* %6, align 4, !tbaa !16
  br label %79

75:                                               ; preds = %71
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %77 = call fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %72)
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0), i32 1129, i32 %72, i8* %77) #27
  call void @exit(i32 1) #25
  unreachable

79:                                               ; preds = %71, %73
  %80 = phi i32 [ %74, %73 ], [ %72, %71 ]
  %81 = load i32, i32* %5, align 4, !tbaa !16
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
  %97 = load i32, i32* %1, align 4, !tbaa !16
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %27, label %99, !llvm.loop !39

99:                                               ; preds = %92, %17
  %100 = phi i32 [ 0, %17 ], [ %93, %92 ]
  %101 = phi i32 [ 0, %17 ], [ %94, %92 ]
  %102 = phi i32 [ %15, %17 ], [ %97, %92 ]
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %106 = call i64 @fwrite(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.79, i64 0, i64 0), i64 80, i64 1, %struct._IO_FILE* %105) #27
  call void @exit(i32 1) #25
  unreachable

107:                                              ; preds = %99
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #23
  ret i32 %100
}

declare dso_local i32 @hipSetDevice(i32) local_unnamed_addr #0

declare dso_local i32 @hipDeviceGetAttribute(i32*, i32, i32) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i8* @_Z22_ConvertSMVer2ArchNameii(i32 %0, i32 %1) local_unnamed_addr #6 comdat {
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
  %25 = load i8*, i8** %24, align 8, !tbaa !40
  br label %28

26:                                               ; preds = %2
  %27 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([63 x i8], [63 x i8]* @.str.91, i64 0, i64 0), i32 %0, i32 %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i8* [ %25, %22 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i64 0, i64 0), %26 ]
  ret i8* %29
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #16

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncasecmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #18

declare dso_local i32 @hipGetDeviceCount(i32*) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_Z19_ConvertSMVer2Coresii(i32 %0, i32 %1) local_unnamed_addr #6 comdat {
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
  %25 = load i32, i32* %24, align 4, !tbaa !42
  br label %28

26:                                               ; preds = %2
  %27 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([69 x i8], [69 x i8]* @.str.80, i64 0, i64 0), i32 %0, i32 %1, i32 128)
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i32 [ %25, %22 ], [ 128, %26 ]
  ret i32 %29
}

; Function Attrs: mustprogress uwtable
define internal fastcc i8* @_ZL17_cudaGetErrorEnum10hipError_t(i32 %0) unnamed_addr #9 {
  %2 = tail call i8* @hipGetErrorName(i32 %0)
  ret i8* %2
}

declare dso_local i8* @hipGetErrorName(i32) local_unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) local_unnamed_addr #19

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN14StopWatchLinuxD0Ev(%class.StopWatchLinux* nonnull align 8 dereferenceable(40) %0) unnamed_addr #21 comdat align 2 {
  %2 = bitcast %class.StopWatchLinux* %0 to i8*
  tail call void @_ZdlPv(i8* nonnull %2) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14StopWatchLinux5startEv(%class.StopWatchLinux* nonnull align 8 dereferenceable(40) %0) unnamed_addr #22 comdat align 2 {
  %2 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 1
  %3 = tail call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* null) #23
  %4 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 4
  store i8 1, i8* %4, align 8, !tbaa !44
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN14StopWatchLinux4stopEv(%class.StopWatchLinux* nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %struct.timeval, align 8
  %3 = bitcast %struct.timeval* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #23
  %4 = call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* null) #23
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 1, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !46
  %9 = sub nsw i64 %6, %8
  %10 = sitofp i64 %9 to double
  %11 = fmul contract double %10, 1.000000e+03
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 1
  %13 = load i64, i64* %12, align 8, !tbaa !47
  %14 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 1, i32 1
  %15 = load i64, i64* %14, align 8, !tbaa !48
  %16 = sub nsw i64 %13, %15
  %17 = sitofp i64 %16 to double
  %18 = fmul contract double %17, 1.000000e-03
  %19 = fadd contract double %11, %18
  %20 = fptrunc double %19 to float
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #23
  %21 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 2
  store float %20, float* %21, align 8, !tbaa !49
  %22 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 3
  %23 = load float, float* %22, align 4, !tbaa !50
  %24 = fadd contract float %23, %20
  store float %24, float* %22, align 4, !tbaa !50
  %25 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 4
  store i8 0, i8* %25, align 8, !tbaa !44
  %26 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 5
  %27 = load i32, i32* %26, align 4, !tbaa !9
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4, !tbaa !9
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14StopWatchLinux5resetEv(%class.StopWatchLinux* nonnull align 8 dereferenceable(40) %0) unnamed_addr #22 comdat align 2 {
  %2 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 2
  store float 0.000000e+00, float* %2, align 8, !tbaa !49
  %3 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 3
  store float 0.000000e+00, float* %3, align 4, !tbaa !50
  %4 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 5
  store i32 0, i32* %4, align 4, !tbaa !9
  %5 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 4
  %6 = load i8, i8* %5, align 8, !tbaa !44, !range !51
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
define linkonce_odr dso_local float @_ZN14StopWatchLinux7getTimeEv(%class.StopWatchLinux* nonnull align 8 dereferenceable(40) %0) unnamed_addr #22 comdat align 2 {
  %2 = alloca <2 x i64>, align 16
  %3 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 3
  %4 = load float, float* %3, align 4, !tbaa !50
  %5 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 4
  %6 = load i8, i8* %5, align 8, !tbaa !44, !range !51
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = bitcast <2 x i64>* %2 to %struct.timeval*
  %10 = bitcast <2 x i64>* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #23
  %11 = call i32 @gettimeofday(%struct.timeval* nonnull %9, %struct.timezone* null) #23
  %12 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 1, i32 0
  %13 = load <2 x i64>, <2 x i64>* %2, align 16, !tbaa !52
  %14 = bitcast i64* %12 to <2 x i64>*
  %15 = load <2 x i64>, <2 x i64>* %14, align 8, !tbaa !52
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
define linkonce_odr dso_local float @_ZN14StopWatchLinux14getAverageTimeEv(%class.StopWatchLinux* nonnull align 8 dereferenceable(40) %0) unnamed_addr #22 comdat align 2 {
  %2 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 5
  %3 = load i32, i32* %2, align 4, !tbaa !9
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.StopWatchLinux, %class.StopWatchLinux* %0, i64 0, i32 3
  %7 = load float, float* %6, align 4, !tbaa !50
  %8 = sitofp i32 %3 to float
  %9 = fdiv contract float %7, %8
  br label %10

10:                                               ; preds = %1, %5
  %11 = phi contract float [ %9, %5 ], [ 0.000000e+00, %1 ]
  ret float %11
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN18StopWatchInterfaceD2Ev(%class.StopWatchInterface* nonnull align 8 dereferenceable(8) %0) unnamed_addr #21 comdat align 2 {
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @gettimeofday(%struct.timeval* nocapture noundef, %struct.timezone* nocapture noundef) local_unnamed_addr #5

declare dso_local i32 @hipGetLastError() local_unnamed_addr #0

declare dso_local i8* @hipGetErrorString(i32) local_unnamed_addr #0

; Function Attrs: norecurse uwtable
define linkonce_odr dso_local void @_Z36__device_stub__mergeSortSharedKernelILj1EEvPjS0_S0_S0_j(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #3 comdat {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8, !tbaa !3
  store i32* %1, i32** %7, align 8, !tbaa !3
  store i32* %2, i32** %8, align 8, !tbaa !3
  store i32* %3, i32** %9, align 8, !tbaa !3
  store i32 %4, i32* %10, align 4, !tbaa !16
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
  %23 = bitcast i8** %22 to i32***
  store i32** %9, i32*** %23, align 8
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
  %38 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32*, i32*, i32)** @_Z21mergeSortSharedKernelILj1EEvPjS0_S0_S0_j to i8*), i64 %31, i32 %33, i64 %35, i32 %37, i8** nonnull %16, i64 %27, %struct.ihipStream_t* %29)
  ret void
}

; Function Attrs: norecurse uwtable
define linkonce_odr dso_local void @_Z36__device_stub__mergeSortSharedKernelILj0EEvPjS0_S0_S0_j(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #3 comdat {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8, !tbaa !3
  store i32* %1, i32** %7, align 8, !tbaa !3
  store i32* %2, i32** %8, align 8, !tbaa !3
  store i32* %3, i32** %9, align 8, !tbaa !3
  store i32 %4, i32* %10, align 4, !tbaa !16
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
  %23 = bitcast i8** %22 to i32***
  store i32** %9, i32*** %23, align 8
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
  %38 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32*, i32*, i32)** @_Z21mergeSortSharedKernelILj0EEvPjS0_S0_S0_j to i8*), i64 %31, i32 %33, i64 %35, i32 %37, i8** nonnull %16, i64 %27, %struct.ihipStream_t* %29)
  ret void
}

; Function Attrs: norecurse uwtable
define linkonce_odr dso_local void @_Z40__device_stub__generateSampleRanksKernelILj1EEvPjS0_S0_jjj(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5) #3 comdat {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dim3, align 8
  %14 = alloca %struct.dim3, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8, !tbaa !3
  store i32* %1, i32** %8, align 8, !tbaa !3
  store i32* %2, i32** %9, align 8, !tbaa !3
  store i32 %3, i32* %10, align 4, !tbaa !16
  store i32 %4, i32* %11, align 4, !tbaa !16
  store i32 %5, i32* %12, align 4, !tbaa !16
  %17 = alloca [6 x i8*], align 16
  %18 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 0
  %19 = bitcast [6 x i8*]* %17 to i32***
  store i32** %7, i32*** %19, align 16
  %20 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 1
  %21 = bitcast i8** %20 to i32***
  store i32** %8, i32*** %21, align 8
  %22 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 2
  %23 = bitcast i8** %22 to i32***
  store i32** %9, i32*** %23, align 16
  %24 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 3
  %25 = bitcast i8** %24 to i32**
  store i32* %10, i32** %25, align 8
  %26 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 4
  %27 = bitcast i8** %26 to i32**
  store i32* %11, i32** %27, align 16
  %28 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 5
  %29 = bitcast i8** %28 to i32**
  store i32* %12, i32** %29, align 8
  %30 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %13, %struct.dim3* nonnull %14, i64* nonnull %15, i8** nonnull %16)
  %31 = load i64, i64* %15, align 8
  %32 = bitcast i8** %16 to %struct.ihipStream_t**
  %33 = load %struct.ihipStream_t*, %struct.ihipStream_t** %32, align 8
  %34 = bitcast %struct.dim3* %13 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.dim3, %struct.dim3* %13, i64 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = bitcast %struct.dim3* %14 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.dim3, %struct.dim3* %14, i64 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32*, i32, i32, i32)** @_Z25generateSampleRanksKernelILj1EEvPjS0_S0_jjj to i8*), i64 %35, i32 %37, i64 %39, i32 %41, i8** nonnull %18, i64 %31, %struct.ihipStream_t* %33)
  ret void
}

; Function Attrs: norecurse uwtable
define linkonce_odr dso_local void @_Z40__device_stub__generateSampleRanksKernelILj0EEvPjS0_S0_jjj(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5) #3 comdat {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dim3, align 8
  %14 = alloca %struct.dim3, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8, !tbaa !3
  store i32* %1, i32** %8, align 8, !tbaa !3
  store i32* %2, i32** %9, align 8, !tbaa !3
  store i32 %3, i32* %10, align 4, !tbaa !16
  store i32 %4, i32* %11, align 4, !tbaa !16
  store i32 %5, i32* %12, align 4, !tbaa !16
  %17 = alloca [6 x i8*], align 16
  %18 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 0
  %19 = bitcast [6 x i8*]* %17 to i32***
  store i32** %7, i32*** %19, align 16
  %20 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 1
  %21 = bitcast i8** %20 to i32***
  store i32** %8, i32*** %21, align 8
  %22 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 2
  %23 = bitcast i8** %22 to i32***
  store i32** %9, i32*** %23, align 16
  %24 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 3
  %25 = bitcast i8** %24 to i32**
  store i32* %10, i32** %25, align 8
  %26 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 4
  %27 = bitcast i8** %26 to i32**
  store i32* %11, i32** %27, align 16
  %28 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 5
  %29 = bitcast i8** %28 to i32**
  store i32* %12, i32** %29, align 8
  %30 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %13, %struct.dim3* nonnull %14, i64* nonnull %15, i8** nonnull %16)
  %31 = load i64, i64* %15, align 8
  %32 = bitcast i8** %16 to %struct.ihipStream_t**
  %33 = load %struct.ihipStream_t*, %struct.ihipStream_t** %32, align 8
  %34 = bitcast %struct.dim3* %13 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.dim3, %struct.dim3* %13, i64 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = bitcast %struct.dim3* %14 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.dim3, %struct.dim3* %14, i64 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32*, i32, i32, i32)** @_Z25generateSampleRanksKernelILj0EEvPjS0_S0_jjj to i8*), i64 %35, i32 %37, i64 %39, i32 %41, i8** nonnull %18, i64 %31, %struct.ihipStream_t* %33)
  ret void
}

; Function Attrs: norecurse uwtable
define linkonce_odr dso_local void @_Z45__device_stub__mergeElementaryIntervalsKernelILj1EEvPjS0_S0_S0_S0_S0_jj(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6, i32 %7) #3 comdat {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.dim3, align 8
  %18 = alloca %struct.dim3, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8, !tbaa !3
  store i32* %1, i32** %10, align 8, !tbaa !3
  store i32* %2, i32** %11, align 8, !tbaa !3
  store i32* %3, i32** %12, align 8, !tbaa !3
  store i32* %4, i32** %13, align 8, !tbaa !3
  store i32* %5, i32** %14, align 8, !tbaa !3
  store i32 %6, i32* %15, align 4, !tbaa !16
  store i32 %7, i32* %16, align 4, !tbaa !16
  %21 = alloca [8 x i8*], align 16
  %22 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 0
  %23 = bitcast [8 x i8*]* %21 to i32***
  store i32** %9, i32*** %23, align 16
  %24 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 1
  %25 = bitcast i8** %24 to i32***
  store i32** %10, i32*** %25, align 8
  %26 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 2
  %27 = bitcast i8** %26 to i32***
  store i32** %11, i32*** %27, align 16
  %28 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 3
  %29 = bitcast i8** %28 to i32***
  store i32** %12, i32*** %29, align 8
  %30 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 4
  %31 = bitcast i8** %30 to i32***
  store i32** %13, i32*** %31, align 16
  %32 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 5
  %33 = bitcast i8** %32 to i32***
  store i32** %14, i32*** %33, align 8
  %34 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 6
  %35 = bitcast i8** %34 to i32**
  store i32* %15, i32** %35, align 16
  %36 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 7
  %37 = bitcast i8** %36 to i32**
  store i32* %16, i32** %37, align 8
  %38 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %17, %struct.dim3* nonnull %18, i64* nonnull %19, i8** nonnull %20)
  %39 = load i64, i64* %19, align 8
  %40 = bitcast i8** %20 to %struct.ihipStream_t**
  %41 = load %struct.ihipStream_t*, %struct.ihipStream_t** %40, align 8
  %42 = bitcast %struct.dim3* %17 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.dim3, %struct.dim3* %17, i64 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = bitcast %struct.dim3* %18 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.dim3, %struct.dim3* %18, i64 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, i32, i32)** @_Z30mergeElementaryIntervalsKernelILj1EEvPjS0_S0_S0_S0_S0_jj to i8*), i64 %43, i32 %45, i64 %47, i32 %49, i8** nonnull %22, i64 %39, %struct.ihipStream_t* %41)
  ret void
}

; Function Attrs: norecurse uwtable
define linkonce_odr dso_local void @_Z45__device_stub__mergeElementaryIntervalsKernelILj0EEvPjS0_S0_S0_S0_S0_jj(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6, i32 %7) #3 comdat {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.dim3, align 8
  %18 = alloca %struct.dim3, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8, !tbaa !3
  store i32* %1, i32** %10, align 8, !tbaa !3
  store i32* %2, i32** %11, align 8, !tbaa !3
  store i32* %3, i32** %12, align 8, !tbaa !3
  store i32* %4, i32** %13, align 8, !tbaa !3
  store i32* %5, i32** %14, align 8, !tbaa !3
  store i32 %6, i32* %15, align 4, !tbaa !16
  store i32 %7, i32* %16, align 4, !tbaa !16
  %21 = alloca [8 x i8*], align 16
  %22 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 0
  %23 = bitcast [8 x i8*]* %21 to i32***
  store i32** %9, i32*** %23, align 16
  %24 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 1
  %25 = bitcast i8** %24 to i32***
  store i32** %10, i32*** %25, align 8
  %26 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 2
  %27 = bitcast i8** %26 to i32***
  store i32** %11, i32*** %27, align 16
  %28 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 3
  %29 = bitcast i8** %28 to i32***
  store i32** %12, i32*** %29, align 8
  %30 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 4
  %31 = bitcast i8** %30 to i32***
  store i32** %13, i32*** %31, align 16
  %32 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 5
  %33 = bitcast i8** %32 to i32***
  store i32** %14, i32*** %33, align 8
  %34 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 6
  %35 = bitcast i8** %34 to i32**
  store i32* %15, i32** %35, align 16
  %36 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 7
  %37 = bitcast i8** %36 to i32**
  store i32* %16, i32** %37, align 8
  %38 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %17, %struct.dim3* nonnull %18, i64* nonnull %19, i8** nonnull %20)
  %39 = load i64, i64* %19, align 8
  %40 = bitcast i8** %20 to %struct.ihipStream_t**
  %41 = load %struct.ihipStream_t*, %struct.ihipStream_t** %40, align 8
  %42 = bitcast %struct.dim3* %17 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.dim3, %struct.dim3* %17, i64 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = bitcast %struct.dim3* %18 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.dim3, %struct.dim3* %18, i64 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, i32, i32)** @_Z30mergeElementaryIntervalsKernelILj0EEvPjS0_S0_S0_S0_S0_jj to i8*), i64 %43, i32 %45, i64 %47, i32 %49, i8** nonnull %22, i64 %39, %struct.ihipStream_t* %41)
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_main.cpp() #10 section ".text.startup" {
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
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32*, i32*, i32*, i32*, i32, i32)** @_Z23bitonicSortSharedKernelPjS_S_S_jj to i8*), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %9 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32*, i32*, i32, i32, i32)** @_Z26mergeRanksAndIndicesKernelPjS_jjj to i8*), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %10 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32*, i32*, i32*, i32*, i32)** @_Z21mergeSortSharedKernelILj1EEvPjS0_S0_S0_j to i8*), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @2, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @2, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %11 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32*, i32*, i32*, i32*, i32)** @_Z21mergeSortSharedKernelILj0EEvPjS0_S0_S0_j to i8*), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @3, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @3, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %12 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32*, i32*, i32*, i32, i32, i32)** @_Z25generateSampleRanksKernelILj1EEvPjS0_S0_jjj to i8*), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @4, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @4, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %13 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32*, i32*, i32*, i32, i32, i32)** @_Z25generateSampleRanksKernelILj0EEvPjS0_S0_jjj to i8*), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @5, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @5, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %14 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, i32, i32)** @_Z30mergeElementaryIntervalsKernelILj1EEvPjS0_S0_S0_S0_S0_jj to i8*), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @6, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @6, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %15 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, i32, i32)** @_Z30mergeElementaryIntervalsKernelILj0EEvPjS0_S0_S0_S0_S0_jj to i8*), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @7, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @7, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %16 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, i32, i32)** @_Z37bitonicMergeElementaryIntervalsKernelILj1EEvPjS0_S0_S0_S0_S0_jj to i8*), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @8, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @8, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %17 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, i32, i32)** @_Z37bitonicMergeElementaryIntervalsKernelILj0EEvPjS0_S0_S0_S0_S0_jj to i8*), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @9, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @9, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %18 = tail call i32 @atexit(void (i8*)* nonnull @__hip_module_dtor)
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
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #16 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nounwind }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind readonly willreturn }
attributes #27 = { cold }
attributes #28 = { builtin nounwind }

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
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !15, i64 36}
!10 = !{!"_ZTS14StopWatchLinux", !11, i64 8, !13, i64 24, !13, i64 28, !14, i64 32, !15, i64 36}
!11 = !{!"_ZTS7timeval", !12, i64 0, !12, i64 8}
!12 = !{!"long", !5, i64 0}
!13 = !{!"float", !5, i64 0}
!14 = !{!"bool", !5, i64 0}
!15 = !{!"int", !5, i64 0}
!16 = !{!15, !15, i64 0}
!17 = distinct !{!17, !18, !19}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = distinct !{!20, !18}
!21 = !{!5, !5, i64 0}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !18, !19}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = distinct !{!28, !18, !29, !19}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = distinct !{!30, !18}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !18}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18}
!38 = distinct !{!38, !18}
!39 = distinct !{!39, !18}
!40 = !{!41, !4, i64 8}
!41 = !{!"_ZTSZ22_ConvertSMVer2ArchNameiiE13sSMtoArchName", !15, i64 0, !4, i64 8}
!42 = !{!43, !15, i64 4}
!43 = !{!"_ZTSZ19_ConvertSMVer2CoresiiE10sSMtoCores", !15, i64 0, !15, i64 4}
!44 = !{!10, !14, i64 32}
!45 = !{!11, !12, i64 0}
!46 = !{!10, !12, i64 8}
!47 = !{!11, !12, i64 8}
!48 = !{!10, !12, i64 16}
!49 = !{!10, !13, i64 24}
!50 = !{!10, !13, i64 28}
!51 = !{i8 0, i8 2}
!52 = !{!12, !12, i64 0}
