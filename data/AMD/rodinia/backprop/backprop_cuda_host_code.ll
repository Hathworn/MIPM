; ModuleID = 'hip/backprop/backprop_cuda.cu'
source_filename = "hip/backprop/backprop_cuda.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.BPNN = type { i32, i32, i32, float*, float*, float*, float*, float*, float*, float**, float**, float**, float** }
%class.RDTimerCPU = type { %class.RDTimer }
%class.RDTimer = type { i32 (...)**, i8, %"class.std::basic_string", %"class.std::basic_string", i64, i64, float, float }
%"class.std::basic_string" = type { %"struct.std::basic_string<char>::_Alloc_hider" }
%"struct.std::basic_string<char>::_Alloc_hider" = type { i8* }
%"class.std::allocator" = type { i8 }
%class.SimplePerfSerializer = type { %class.PerfSerializer.base, i32, i64, i8*, i64, i8* }
%class.PerfSerializer.base = type <{ i32 (...)**, i8, [7 x i8], %struct._IO_FILE*, %struct._IO_FILE*, i8, [100 x i8], [100 x i8] }>
%class.PerfSerializer = type <{ i32 (...)**, i8, [7 x i8], %struct._IO_FILE*, %struct._IO_FILE*, i8, [100 x i8], [100 x i8], [7 x i8] }>

$_ZN4dim3C2Ejjj = comdat any

$_ZN10RDTimerCPUC2ESs = comdat any

$_ZN7RDTimer5ResetESs = comdat any

$_ZN20SimplePerfSerializerC2EPc = comdat any

$_ZSt3expf = comdat any

$_ZN7RDTimerC2ESs = comdat any

$_ZN10RDTimerCPUD2Ev = comdat any

$_ZN10RDTimerCPUD0Ev = comdat any

$_ZN10RDTimerCPU5StartEv = comdat any

$_ZN10RDTimerCPU4StopEv = comdat any

$_ZN10RDTimerCPU10AccumulateEv = comdat any

$_ZN7RDTimerD2Ev = comdat any

$_ZN7RDTimerD0Ev = comdat any

$_Z8get_timev = comdat any

$_Z12elapsed_timexx = comdat any

$_ZN7RDTimer5ResetEv = comdat any

$_ZN14PerfSerializerC2EPc = comdat any

$_ZN20SimplePerfSerializerD2Ev = comdat any

$_ZN20SimplePerfSerializerD0Ev = comdat any

$_ZN20SimplePerfSerializer9SerializeEPK7RDTimer = comdat any

$_ZN14PerfSerializerD2Ev = comdat any

$_ZN14PerfSerializerD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNK7RDTimer4TypeEv = comdat any

$_ZNK7RDTimer3MsgEv = comdat any

$_ZNK7RDTimer12AccumulatingEv = comdat any

$_ZNK7RDTimer4TimeEv = comdat any

$_ZTV10RDTimerCPU = comdat any

$_ZTS10RDTimerCPU = comdat any

$_ZTS7RDTimer = comdat any

$_ZTI7RDTimer = comdat any

$_ZTI10RDTimerCPU = comdat any

$_ZTV7RDTimer = comdat any

$_ZTV20SimplePerfSerializer = comdat any

$_ZTS20SimplePerfSerializer = comdat any

$_ZTS14PerfSerializer = comdat any

$_ZTI14PerfSerializer = comdat any

$_ZTI20SimplePerfSerializer = comdat any

$_ZTV14PerfSerializer = comdat any

$__hip_gpubin_handle = comdat any

@_Z22bpnn_layerforward_CUDAPfS_S_S_ii = constant void (float*, float*, float*, float*, i32, i32)* @_Z37__device_stub__bpnn_layerforward_CUDAPfS_S_S_ii, align 8
@_Z24bpnn_adjust_weights_cudaPfiS_iS_S_ = constant void (float*, i32, float*, i32, float*, float*)* @_Z39__device_stub__bpnn_adjust_weights_cudaPfiS_iS_S_, align 8
@num_threads = dso_local global i32 0, align 4
@num_blocks = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Overall CPU Time\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"./backprop\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Malloc Time\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Performing GPU computation\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"CPU to GPU Transfer Time\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"COMPUTE:Kernel Execution Time\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"bpnn kernel error: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"GPU to CPU Transfer Time\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Malloc Time 2\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"time CPU to GPU memory copy = %fs\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"time GPU to CPU memory copy back = %fs\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"time GPU malloc = %fs\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"time kernel = %fs\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Overall CPU time = %fs\0A\00", align 1
@_ZTV10RDTimerCPU = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI10RDTimerCPU to i8*), i8* bitcast (void (%class.RDTimerCPU*)* @_ZN10RDTimerCPUD2Ev to i8*), i8* bitcast (void (%class.RDTimerCPU*)* @_ZN10RDTimerCPUD0Ev to i8*), i8* bitcast (void (%class.RDTimerCPU*)* @_ZN10RDTimerCPU5StartEv to i8*), i8* bitcast (float (%class.RDTimerCPU*)* @_ZN10RDTimerCPU4StopEv to i8*), i8* bitcast (float (%class.RDTimerCPU*)* @_ZN10RDTimerCPU10AccumulateEv to i8*)] }, comdat, align 8
@.str.15 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS10RDTimerCPU = linkonce_odr dso_local constant [13 x i8] c"10RDTimerCPU\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS7RDTimer = linkonce_odr dso_local constant [9 x i8] c"7RDTimer\00", comdat, align 1
@_ZTI7RDTimer = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_ZTS7RDTimer, i32 0, i32 0) }, comdat, align 8
@_ZTI10RDTimerCPU = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @_ZTS10RDTimerCPU, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7RDTimer to i8*) }, comdat, align 8
@_ZTV7RDTimer = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI7RDTimer to i8*), i8* bitcast (void (%class.RDTimer*)* @_ZN7RDTimerD2Ev to i8*), i8* bitcast (void (%class.RDTimer*)* @_ZN7RDTimerD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.16 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@_ZTV20SimplePerfSerializer = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI20SimplePerfSerializer to i8*), i8* bitcast (void (%class.SimplePerfSerializer*)* @_ZN20SimplePerfSerializerD2Ev to i8*), i8* bitcast (void (%class.SimplePerfSerializer*)* @_ZN20SimplePerfSerializerD0Ev to i8*), i8* bitcast (void (%class.SimplePerfSerializer*, %class.RDTimer*)* @_ZN20SimplePerfSerializer9SerializeEPK7RDTimer to i8*)] }, comdat, align 8
@_ZTS20SimplePerfSerializer = linkonce_odr dso_local constant [23 x i8] c"20SimplePerfSerializer\00", comdat, align 1
@_ZTS14PerfSerializer = linkonce_odr dso_local constant [17 x i8] c"14PerfSerializer\00", comdat, align 1
@_ZTI14PerfSerializer = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @_ZTS14PerfSerializer, i32 0, i32 0) }, comdat, align 8
@_ZTI20SimplePerfSerializer = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @_ZTS20SimplePerfSerializer, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI14PerfSerializer to i8*) }, comdat, align 8
@_ZTV14PerfSerializer = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI14PerfSerializer to i8*), i8* bitcast (void (%class.PerfSerializer*)* @_ZN14PerfSerializerD2Ev to i8*), i8* bitcast (void (%class.PerfSerializer*)* @_ZN14PerfSerializerD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.17 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c".perf\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c".perf.tmp\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.20 = private unnamed_addr constant [13 x i8] c"File exists\0A\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"Could not open 1\0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"Could not open\00", align 1
@_ZTIPKc = external constant i8*
@.str.24 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"Could not open 2\0A\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"Could not open 3\0A\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"Opened file %s for performance log\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"did not specify file\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"Closed performance log 1\0A\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"Closed performance log 2\0A\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"COPYING FILE: %s to %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"mv %s %s\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"malformed line\0A\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"malformed line\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"incompatible platform type\0A\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"incompatible platform type\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"malformed line, second token\0A\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"malformed malformed line, second token\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"incompatible message:%s,%s\0A\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"incompatible incompatible message\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"malformed line, third token\0A\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"malformed line, third token\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"ACCUM\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"ONEOFF\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"incompatible timer type\0A\00", align 1
@.str.47 = private unnamed_addr constant [37 x i8] c"incompatible incompatible timer type\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"malformed line forth token\0A\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"malformed line forth token\00", align 1
@.str.50 = private unnamed_addr constant [66 x i8] c"INFO: number of trials so far not found. Old format. Will update\0A\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"%s, %s, %s, %f, %d\0A\00", align 1
@0 = private unnamed_addr constant [37 x i8] c"_Z22bpnn_layerforward_CUDAPfS_S_S_ii\00", align 1
@1 = private unnamed_addr constant [39 x i8] c"_Z24bpnn_adjust_weights_cudaPfiS_iS_S_\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z37__device_stub__bpnn_layerforward_CUDAPfS_S_S_ii(float* noundef %0, float* noundef %1, float* noundef %2, float* noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dim3, align 8
  %14 = alloca %struct.dim3, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca { i64, i32 }, align 8
  %18 = alloca { i64, i32 }, align 8
  store float* %0, float** %7, align 8
  store float* %1, float** %8, align 8
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = alloca i8*, i64 6, align 16
  %20 = bitcast float** %7 to i8*
  %21 = getelementptr i8*, i8** %19, i32 0
  store i8* %20, i8** %21, align 8
  %22 = bitcast float** %8 to i8*
  %23 = getelementptr i8*, i8** %19, i32 1
  store i8* %22, i8** %23, align 8
  %24 = bitcast float** %9 to i8*
  %25 = getelementptr i8*, i8** %19, i32 2
  store i8* %24, i8** %25, align 8
  %26 = bitcast float** %10 to i8*
  %27 = getelementptr i8*, i8** %19, i32 3
  store i8* %26, i8** %27, align 8
  %28 = bitcast i32* %11 to i8*
  %29 = getelementptr i8*, i8** %19, i32 4
  store i8* %28, i8** %29, align 8
  %30 = bitcast i32* %12 to i8*
  %31 = getelementptr i8*, i8** %19, i32 5
  store i8* %30, i8** %31, align 8
  %32 = call i32 @__hipPopCallConfiguration(%struct.dim3* %13, %struct.dim3* %14, i64* %15, i8** %16)
  %33 = load i64, i64* %15, align 8
  %34 = load i8*, i8** %16, align 8
  %35 = bitcast { i64, i32 }* %17 to i8*
  %36 = bitcast %struct.dim3* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 12, i1 false)
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = bitcast { i64, i32 }* %18 to i8*
  %42 = bitcast %struct.dim3* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 12, i1 false)
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = bitcast i8* %34 to %struct.ihipStream_t*
  %48 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (float*, float*, float*, float*, i32, i32)** @_Z22bpnn_layerforward_CUDAPfS_S_S_ii to i8*), i64 %38, i32 %40, i64 %44, i32 %46, i8** noundef %19, i64 noundef %33, %struct.ihipStream_t* noundef %47)
  br label %49

49:                                               ; preds = %6
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z39__device_stub__bpnn_adjust_weights_cudaPfiS_iS_S_(float* noundef %0, i32 noundef %1, float* noundef %2, i32 noundef %3, float* noundef %4, float* noundef %5) #0 {
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca %struct.dim3, align 8
  %14 = alloca %struct.dim3, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca { i64, i32 }, align 8
  %18 = alloca { i64, i32 }, align 8
  store float* %0, float** %7, align 8
  store i32 %1, i32* %8, align 4
  store float* %2, float** %9, align 8
  store i32 %3, i32* %10, align 4
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  %19 = alloca i8*, i64 6, align 16
  %20 = bitcast float** %7 to i8*
  %21 = getelementptr i8*, i8** %19, i32 0
  store i8* %20, i8** %21, align 8
  %22 = bitcast i32* %8 to i8*
  %23 = getelementptr i8*, i8** %19, i32 1
  store i8* %22, i8** %23, align 8
  %24 = bitcast float** %9 to i8*
  %25 = getelementptr i8*, i8** %19, i32 2
  store i8* %24, i8** %25, align 8
  %26 = bitcast i32* %10 to i8*
  %27 = getelementptr i8*, i8** %19, i32 3
  store i8* %26, i8** %27, align 8
  %28 = bitcast float** %11 to i8*
  %29 = getelementptr i8*, i8** %19, i32 4
  store i8* %28, i8** %29, align 8
  %30 = bitcast float** %12 to i8*
  %31 = getelementptr i8*, i8** %19, i32 5
  store i8* %30, i8** %31, align 8
  %32 = call i32 @__hipPopCallConfiguration(%struct.dim3* %13, %struct.dim3* %14, i64* %15, i8** %16)
  %33 = load i64, i64* %15, align 8
  %34 = load i8*, i8** %16, align 8
  %35 = bitcast { i64, i32 }* %17 to i8*
  %36 = bitcast %struct.dim3* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 12, i1 false)
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = bitcast { i64, i32 }* %18 to i8*
  %42 = bitcast %struct.dim3* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 12, i1 false)
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = bitcast i8* %34 to %struct.ihipStream_t*
  %48 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (float*, i32, float*, i32, float*, float*)** @_Z24bpnn_adjust_weights_cudaPfiS_iS_S_ to i8*), i64 %38, i32 %40, i64 %44, i32 %46, i8** noundef %19, i64 noundef %33, %struct.ihipStream_t* noundef %47)
  br label %49

49:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef double @_Z7gettimev() #2 {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @gettimeofday(%struct.timeval* noundef %1, %struct.timezone* noundef null) #16
  %3 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = sitofp i64 %4 to double
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = sitofp i64 %7 to double
  %9 = fmul contract double %8, 0x3EB0C6F7A0B5ED8D
  %10 = fadd contract double %5, %9
  ret double %10
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* noundef, %struct.timezone* noundef) #3

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i8**, i8*** %4, align 8
  %7 = call i32 @setup(i32 noundef %5, i8** noundef %6)
  ret i32 0
}

declare i32 @setup(i32 noundef, i8** noundef) #5

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @bpnn_train_cuda(%struct.BPNN* noundef %0, float* noundef %1, float* noundef %2) #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %struct.BPNN*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca float, align 4
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca %struct.dim3, align 4
  %24 = alloca %struct.dim3, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca %class.RDTimerCPU*, align 8
  %35 = alloca %"class.std::basic_string", align 8
  %36 = alloca %"class.std::allocator", align 1
  %37 = alloca i8*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i1, align 1
  %40 = alloca %"class.std::basic_string", align 8
  %41 = alloca %"class.std::allocator", align 1
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca %class.SimplePerfSerializer*, align 8
  %45 = alloca %class.RDTimerCPU*, align 8
  %46 = alloca %"class.std::basic_string", align 8
  %47 = alloca %"class.std::allocator", align 1
  %48 = alloca i1, align 1
  %49 = alloca %"class.std::basic_string", align 8
  %50 = alloca %"class.std::allocator", align 1
  %51 = alloca %"class.std::basic_string", align 8
  %52 = alloca %"class.std::allocator", align 1
  %53 = alloca %"class.std::basic_string", align 8
  %54 = alloca %"class.std::allocator", align 1
  %55 = alloca %struct.dim3, align 4
  %56 = alloca %struct.dim3, align 4
  %57 = alloca { i64, i32 }, align 4
  %58 = alloca { i64, i32 }, align 4
  %59 = alloca i32, align 4
  %60 = alloca %"class.std::basic_string", align 8
  %61 = alloca %"class.std::allocator", align 1
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca %"class.std::basic_string", align 8
  %65 = alloca %"class.std::allocator", align 1
  %66 = alloca %"class.std::basic_string", align 8
  %67 = alloca %"class.std::allocator", align 1
  %68 = alloca %"class.std::basic_string", align 8
  %69 = alloca %"class.std::allocator", align 1
  %70 = alloca %struct.dim3, align 4
  %71 = alloca %struct.dim3, align 4
  %72 = alloca { i64, i32 }, align 4
  %73 = alloca { i64, i32 }, align 4
  %74 = alloca %"class.std::basic_string", align 8
  %75 = alloca %"class.std::allocator", align 1
  store %struct.BPNN* %0, %struct.BPNN** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %76 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %77 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %7, align 4
  %79 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %80 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %8, align 4
  %82 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %83 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %85 = load i32, i32* %7, align 4
  %86 = sdiv i32 %85, 16
  store i32 %86, i32* @num_blocks, align 4
  %87 = load i32, i32* @num_blocks, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %23, i32 noundef 1, i32 noundef %87, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %24, i32 noundef 16, i32 noundef 16, i32 noundef 1)
  %88 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 56) #17
  store i1 true, i1* %39, align 1
  %89 = bitcast i8* %88 to %class.RDTimerCPU*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %36) #16
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %35, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %36)
          to label %90 unwind label %170

90:                                               ; preds = %3
  invoke void @_ZN10RDTimerCPUC2ESs(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %89, %"class.std::basic_string"* noundef %35)
          to label %91 unwind label %174

91:                                               ; preds = %90
  store i1 false, i1* %39, align 1
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %35) #16
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %36) #16
  store %class.RDTimerCPU* %89, %class.RDTimerCPU** %34, align 8
  %92 = load %class.RDTimerCPU*, %class.RDTimerCPU** %34, align 8
  %93 = bitcast %class.RDTimerCPU* %92 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %41) #16
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %40, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %41)
          to label %94 unwind label %182

94:                                               ; preds = %91
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %93, %"class.std::basic_string"* noundef %40)
          to label %95 unwind label %186

95:                                               ; preds = %94
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %40) #16
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %41) #16
  %96 = load %class.RDTimerCPU*, %class.RDTimerCPU** %34, align 8
  %97 = bitcast %class.RDTimerCPU* %96 to void (%class.RDTimerCPU*)***
  %98 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %97, align 8
  %99 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %98, i64 2
  %100 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %99, align 8
  call void %100(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %96)
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  %105 = mul nsw i32 %102, %104
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 4
  %108 = call noalias i8* @malloc(i64 noundef %107) #18
  %109 = bitcast i8* %108 to float*
  store float* %109, float** %21, align 8
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  %114 = mul nsw i32 %111, %113
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 4
  %117 = call noalias i8* @malloc(i64 noundef %116) #18
  %118 = bitcast i8* %117 to float*
  store float* %118, float** %22, align 8
  %119 = load i32, i32* @num_blocks, align 4
  %120 = mul i32 %119, 16
  %121 = zext i32 %120 to i64
  %122 = mul i64 %121, 4
  %123 = call noalias i8* @malloc(i64 noundef %122) #18
  %124 = bitcast i8* %123 to float*
  store float* %124, float** %16, align 8
  store i32 0, i32* %42, align 4
  br label %125

125:                                              ; preds = %192, %95
  %126 = load i32, i32* %42, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp sle i32 %126, %127
  br i1 %128, label %129, label %195

129:                                              ; preds = %125
  store i32 0, i32* %43, align 4
  br label %130

130:                                              ; preds = %167, %129
  %131 = load i32, i32* %43, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp sle i32 %131, %132
  br i1 %133, label %134, label %191

134:                                              ; preds = %130
  %135 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %136 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %135, i32 0, i32 9
  %137 = load float**, float*** %136, align 8
  %138 = load i32, i32* %42, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float*, float** %137, i64 %139
  %141 = load float*, float** %140, align 8
  %142 = load i32, i32* %43, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds float, float* %141, i64 %143
  %145 = load float, float* %144, align 4
  %146 = load float*, float** %21, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %146, i64 %148
  store float %145, float* %149, align 4
  %150 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %151 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %150, i32 0, i32 11
  %152 = load float**, float*** %151, align 8
  %153 = load i32, i32* %42, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds float*, float** %152, i64 %154
  %156 = load float*, float** %155, align 8
  %157 = load i32, i32* %43, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds float, float* %156, i64 %158
  %160 = load float, float* %159, align 4
  %161 = load float*, float** %22, align 8
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds float, float* %161, i64 %163
  store float %160, float* %164, align 4
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %12, align 4
  br label %167

167:                                              ; preds = %134
  %168 = load i32, i32* %43, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %43, align 4
  br label %130, !llvm.loop !6

170:                                              ; preds = %3
  %171 = landingpad { i8*, i32 }
          cleanup
  %172 = extractvalue { i8*, i32 } %171, 0
  store i8* %172, i8** %37, align 8
  %173 = extractvalue { i8*, i32 } %171, 1
  store i32 %173, i32* %38, align 4
  br label %178

174:                                              ; preds = %90
  %175 = landingpad { i8*, i32 }
          cleanup
  %176 = extractvalue { i8*, i32 } %175, 0
  store i8* %176, i8** %37, align 8
  %177 = extractvalue { i8*, i32 } %175, 1
  store i32 %177, i32* %38, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %35) #16
  br label %178

178:                                              ; preds = %174, %170
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %36) #16
  %179 = load i1, i1* %39, align 1
  br i1 %179, label %180, label %181

180:                                              ; preds = %178
  call void @_ZdlPv(i8* noundef %88) #19
  br label %181

181:                                              ; preds = %180, %178
  br label %853

182:                                              ; preds = %91
  %183 = landingpad { i8*, i32 }
          cleanup
  %184 = extractvalue { i8*, i32 } %183, 0
  store i8* %184, i8** %37, align 8
  %185 = extractvalue { i8*, i32 } %183, 1
  store i32 %185, i32* %38, align 4
  br label %190

186:                                              ; preds = %94
  %187 = landingpad { i8*, i32 }
          cleanup
  %188 = extractvalue { i8*, i32 } %187, 0
  store i8* %188, i8** %37, align 8
  %189 = extractvalue { i8*, i32 } %187, 1
  store i32 %189, i32* %38, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %40) #16
  br label %190

190:                                              ; preds = %186, %182
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %41) #16
  br label %853

191:                                              ; preds = %130
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %42, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %42, align 4
  br label %125, !llvm.loop !8

195:                                              ; preds = %125
  %196 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 272) #17
  %197 = bitcast i8* %196 to %class.SimplePerfSerializer*
  invoke void @_ZN20SimplePerfSerializerC2EPc(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %197, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
          to label %198 unwind label %333

198:                                              ; preds = %195
  store %class.SimplePerfSerializer* %197, %class.SimplePerfSerializer** %44, align 8
  %199 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 56) #17
  store i1 true, i1* %48, align 1
  %200 = bitcast i8* %199 to %class.RDTimerCPU*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %47) #16
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %46, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %47)
          to label %201 unwind label %337

201:                                              ; preds = %198
  invoke void @_ZN10RDTimerCPUC2ESs(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %200, %"class.std::basic_string"* noundef %46)
          to label %202 unwind label %341

202:                                              ; preds = %201
  store i1 false, i1* %48, align 1
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %46) #16
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %47) #16
  store %class.RDTimerCPU* %200, %class.RDTimerCPU** %45, align 8
  %203 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %204 = bitcast %class.RDTimerCPU* %203 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %50) #16
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %49, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %50)
          to label %205 unwind label %349

205:                                              ; preds = %202
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %204, %"class.std::basic_string"* noundef %49)
          to label %206 unwind label %353

206:                                              ; preds = %205
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %49) #16
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %50) #16
  %207 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %208 = bitcast %class.RDTimerCPU* %207 to void (%class.RDTimerCPU*)***
  %209 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %208, align 8
  %210 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %209, i64 2
  %211 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %210, align 8
  call void %211(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %207)
  %212 = bitcast float** %14 to i8**
  %213 = load i32, i32* %7, align 4
  %214 = add nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = mul i64 %215, 4
  %217 = call i32 @hipMalloc(i8** noundef %212, i64 noundef %216)
  %218 = bitcast float** %15 to i8**
  %219 = load i32, i32* %8, align 4
  %220 = add nsw i32 %219, 1
  %221 = sext i32 %220 to i64
  %222 = mul i64 %221, 4
  %223 = call i32 @hipMalloc(i8** noundef %218, i64 noundef %222)
  %224 = bitcast float** %13 to i8**
  %225 = load i32, i32* %7, align 4
  %226 = add nsw i32 %225, 1
  %227 = load i32, i32* %8, align 4
  %228 = add nsw i32 %227, 1
  %229 = mul nsw i32 %226, %228
  %230 = sext i32 %229 to i64
  %231 = mul i64 %230, 4
  %232 = call i32 @hipMalloc(i8** noundef %224, i64 noundef %231)
  %233 = bitcast float** %17 to i8**
  %234 = load i32, i32* @num_blocks, align 4
  %235 = mul i32 %234, 16
  %236 = zext i32 %235 to i64
  %237 = mul i64 %236, 4
  %238 = call i32 @hipMalloc(i8** noundef %233, i64 noundef %237)
  %239 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %240 = bitcast %class.RDTimerCPU* %239 to float (%class.RDTimerCPU*)***
  %241 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %240, align 8
  %242 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %241, i64 3
  %243 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %242, align 8
  %244 = call contract noundef float %243(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %239)
  store float %244, float* %25, align 4
  %245 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %44, align 8
  %246 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %247 = bitcast %class.RDTimerCPU* %246 to %class.RDTimer*
  %248 = bitcast %class.SimplePerfSerializer* %245 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %249 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %248, align 8
  %250 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %249, i64 2
  %251 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %250, align 8
  call void %251(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %245, %class.RDTimer* noundef %247)
  %252 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %253 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %254 = bitcast %class.RDTimerCPU* %253 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %52) #16
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %51, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %52)
          to label %255 unwind label %358

255:                                              ; preds = %206
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %254, %"class.std::basic_string"* noundef %51)
          to label %256 unwind label %362

256:                                              ; preds = %255
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %51) #16
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %52) #16
  %257 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %258 = bitcast %class.RDTimerCPU* %257 to void (%class.RDTimerCPU*)***
  %259 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %258, align 8
  %260 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %259, i64 2
  %261 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %260, align 8
  call void %261(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %257)
  %262 = load float*, float** %14, align 8
  %263 = bitcast float* %262 to i8*
  %264 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %265 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %264, i32 0, i32 3
  %266 = load float*, float** %265, align 8
  %267 = bitcast float* %266 to i8*
  %268 = load i32, i32* %7, align 4
  %269 = add nsw i32 %268, 1
  %270 = sext i32 %269 to i64
  %271 = mul i64 %270, 4
  %272 = call i32 @hipMemcpy(i8* noundef %263, i8* noundef %267, i64 noundef %271, i32 noundef 1)
  %273 = load float*, float** %13, align 8
  %274 = bitcast float* %273 to i8*
  %275 = load float*, float** %21, align 8
  %276 = bitcast float* %275 to i8*
  %277 = load i32, i32* %7, align 4
  %278 = add nsw i32 %277, 1
  %279 = load i32, i32* %8, align 4
  %280 = add nsw i32 %279, 1
  %281 = mul nsw i32 %278, %280
  %282 = sext i32 %281 to i64
  %283 = mul i64 %282, 4
  %284 = call i32 @hipMemcpy(i8* noundef %274, i8* noundef %276, i64 noundef %283, i32 noundef 1)
  %285 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %286 = bitcast %class.RDTimerCPU* %285 to float (%class.RDTimerCPU*)***
  %287 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %286, align 8
  %288 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %287, i64 3
  %289 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %288, align 8
  %290 = call contract noundef float %289(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %285)
  store float %290, float* %26, align 4
  %291 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %44, align 8
  %292 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %293 = bitcast %class.RDTimerCPU* %292 to %class.RDTimer*
  %294 = bitcast %class.SimplePerfSerializer* %291 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %295 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %294, align 8
  %296 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %295, i64 2
  %297 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %296, align 8
  call void %297(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %291, %class.RDTimer* noundef %293)
  %298 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %299 = bitcast %class.RDTimerCPU* %298 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %54) #16
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %53, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %54)
          to label %300 unwind label %367

300:                                              ; preds = %256
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %299, %"class.std::basic_string"* noundef %53)
          to label %301 unwind label %371

301:                                              ; preds = %300
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %53) #16
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %54) #16
  %302 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %303 = bitcast %class.RDTimerCPU* %302 to void (%class.RDTimerCPU*)***
  %304 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %303, align 8
  %305 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %304, i64 2
  %306 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %305, align 8
  call void %306(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %302)
  br label %307

307:                                              ; preds = %301
  %308 = bitcast %struct.dim3* %55 to i8*
  %309 = bitcast %struct.dim3* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %308, i8* align 4 %309, i64 12, i1 false)
  %310 = bitcast %struct.dim3* %56 to i8*
  %311 = bitcast %struct.dim3* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %310, i8* align 4 %311, i64 12, i1 false)
  %312 = bitcast { i64, i32 }* %57 to i8*
  %313 = bitcast %struct.dim3* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %312, i8* align 4 %313, i64 12, i1 false)
  %314 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %57, i32 0, i32 0
  %315 = load i64, i64* %314, align 4
  %316 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %57, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = bitcast { i64, i32 }* %58 to i8*
  %319 = bitcast %struct.dim3* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %318, i8* align 4 %319, i64 12, i1 false)
  %320 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %58, i32 0, i32 0
  %321 = load i64, i64* %320, align 4
  %322 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %58, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @__hipPushCallConfiguration(i64 %315, i32 %317, i64 %321, i32 %323, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %376, label %326

326:                                              ; preds = %307
  %327 = load float*, float** %14, align 8
  %328 = load float*, float** %15, align 8
  %329 = load float*, float** %13, align 8
  %330 = load float*, float** %17, align 8
  %331 = load i32, i32* %7, align 4
  %332 = load i32, i32* %8, align 4
  call void @_Z37__device_stub__bpnn_layerforward_CUDAPfS_S_S_ii(float* noundef %327, float* noundef %328, float* noundef %329, float* noundef %330, i32 noundef %331, i32 noundef %332)
  br label %376

333:                                              ; preds = %195
  %334 = landingpad { i8*, i32 }
          cleanup
  %335 = extractvalue { i8*, i32 } %334, 0
  store i8* %335, i8** %37, align 8
  %336 = extractvalue { i8*, i32 } %334, 1
  store i32 %336, i32* %38, align 4
  call void @_ZdlPv(i8* noundef %196) #19
  br label %853

337:                                              ; preds = %198
  %338 = landingpad { i8*, i32 }
          cleanup
  %339 = extractvalue { i8*, i32 } %338, 0
  store i8* %339, i8** %37, align 8
  %340 = extractvalue { i8*, i32 } %338, 1
  store i32 %340, i32* %38, align 4
  br label %345

341:                                              ; preds = %201
  %342 = landingpad { i8*, i32 }
          cleanup
  %343 = extractvalue { i8*, i32 } %342, 0
  store i8* %343, i8** %37, align 8
  %344 = extractvalue { i8*, i32 } %342, 1
  store i32 %344, i32* %38, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %46) #16
  br label %345

345:                                              ; preds = %341, %337
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %47) #16
  %346 = load i1, i1* %48, align 1
  br i1 %346, label %347, label %348

347:                                              ; preds = %345
  call void @_ZdlPv(i8* noundef %199) #19
  br label %348

348:                                              ; preds = %347, %345
  br label %853

349:                                              ; preds = %202
  %350 = landingpad { i8*, i32 }
          cleanup
  %351 = extractvalue { i8*, i32 } %350, 0
  store i8* %351, i8** %37, align 8
  %352 = extractvalue { i8*, i32 } %350, 1
  store i32 %352, i32* %38, align 4
  br label %357

353:                                              ; preds = %205
  %354 = landingpad { i8*, i32 }
          cleanup
  %355 = extractvalue { i8*, i32 } %354, 0
  store i8* %355, i8** %37, align 8
  %356 = extractvalue { i8*, i32 } %354, 1
  store i32 %356, i32* %38, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %49) #16
  br label %357

357:                                              ; preds = %353, %349
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %50) #16
  br label %853

358:                                              ; preds = %206
  %359 = landingpad { i8*, i32 }
          cleanup
  %360 = extractvalue { i8*, i32 } %359, 0
  store i8* %360, i8** %37, align 8
  %361 = extractvalue { i8*, i32 } %359, 1
  store i32 %361, i32* %38, align 4
  br label %366

362:                                              ; preds = %255
  %363 = landingpad { i8*, i32 }
          cleanup
  %364 = extractvalue { i8*, i32 } %363, 0
  store i8* %364, i8** %37, align 8
  %365 = extractvalue { i8*, i32 } %363, 1
  store i32 %365, i32* %38, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %51) #16
  br label %366

366:                                              ; preds = %362, %358
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %52) #16
  br label %853

367:                                              ; preds = %256
  %368 = landingpad { i8*, i32 }
          cleanup
  %369 = extractvalue { i8*, i32 } %368, 0
  store i8* %369, i8** %37, align 8
  %370 = extractvalue { i8*, i32 } %368, 1
  store i32 %370, i32* %38, align 4
  br label %375

371:                                              ; preds = %300
  %372 = landingpad { i8*, i32 }
          cleanup
  %373 = extractvalue { i8*, i32 } %372, 0
  store i8* %373, i8** %37, align 8
  %374 = extractvalue { i8*, i32 } %372, 1
  store i32 %374, i32* %38, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %53) #16
  br label %375

375:                                              ; preds = %371, %367
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %54) #16
  br label %853

376:                                              ; preds = %326, %307
  br label %377

377:                                              ; preds = %376
  %378 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %379 = bitcast %class.RDTimerCPU* %378 to float (%class.RDTimerCPU*)***
  %380 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %379, align 8
  %381 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %380, i64 3
  %382 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %381, align 8
  %383 = call contract noundef float %382(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %378)
  store float %383, float* %27, align 4
  %384 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %44, align 8
  %385 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %386 = bitcast %class.RDTimerCPU* %385 to %class.RDTimer*
  %387 = bitcast %class.SimplePerfSerializer* %384 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %388 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %387, align 8
  %389 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %388, i64 2
  %390 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %389, align 8
  call void %390(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %384, %class.RDTimer* noundef %386)
  %391 = call i32 @hipDeviceSynchronize()
  %392 = call i32 @hipGetLastError()
  store i32 %392, i32* %59, align 4
  %393 = load i32, i32* %59, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %399

395:                                              ; preds = %377
  %396 = load i32, i32* %59, align 4
  %397 = call i8* @hipGetErrorString(i32 noundef %396)
  %398 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* noundef %397)
  call void @exit(i32 noundef 1) #20
  unreachable

399:                                              ; preds = %377
  %400 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %401 = bitcast %class.RDTimerCPU* %400 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %61) #16
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %60, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %61)
          to label %402 unwind label %456

402:                                              ; preds = %399
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %401, %"class.std::basic_string"* noundef %60)
          to label %403 unwind label %460

403:                                              ; preds = %402
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %60) #16
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %61) #16
  %404 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %405 = bitcast %class.RDTimerCPU* %404 to void (%class.RDTimerCPU*)***
  %406 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %405, align 8
  %407 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %406, i64 2
  %408 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %407, align 8
  call void %408(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %404)
  %409 = load float*, float** %16, align 8
  %410 = bitcast float* %409 to i8*
  %411 = load float*, float** %17, align 8
  %412 = bitcast float* %411 to i8*
  %413 = load i32, i32* @num_blocks, align 4
  %414 = mul i32 %413, 16
  %415 = zext i32 %414 to i64
  %416 = mul i64 %415, 4
  %417 = call i32 @hipMemcpy(i8* noundef %410, i8* noundef %412, i64 noundef %416, i32 noundef 2)
  %418 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %419 = bitcast %class.RDTimerCPU* %418 to float (%class.RDTimerCPU*)***
  %420 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %419, align 8
  %421 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %420, i64 3
  %422 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %421, align 8
  %423 = call contract noundef float %422(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %418)
  store float %423, float* %28, align 4
  %424 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %44, align 8
  %425 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %426 = bitcast %class.RDTimerCPU* %425 to %class.RDTimer*
  %427 = bitcast %class.SimplePerfSerializer* %424 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %428 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %427, align 8
  %429 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %428, i64 2
  %430 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %429, align 8
  call void %430(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %424, %class.RDTimer* noundef %426)
  store i32 1, i32* %62, align 4
  br label %431

431:                                              ; preds = %490, %403
  %432 = load i32, i32* %62, align 4
  %433 = load i32, i32* %8, align 4
  %434 = icmp sle i32 %432, %433
  br i1 %434, label %435, label %493

435:                                              ; preds = %431
  store float 0.000000e+00, float* %20, align 4
  store i32 0, i32* %63, align 4
  br label %436

436:                                              ; preds = %453, %435
  %437 = load i32, i32* %63, align 4
  %438 = load i32, i32* @num_blocks, align 4
  %439 = icmp ult i32 %437, %438
  br i1 %439, label %440, label %465

440:                                              ; preds = %436
  %441 = load float*, float** %16, align 8
  %442 = load i32, i32* %63, align 4
  %443 = load i32, i32* %8, align 4
  %444 = mul nsw i32 %442, %443
  %445 = load i32, i32* %62, align 4
  %446 = add nsw i32 %444, %445
  %447 = sub nsw i32 %446, 1
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds float, float* %441, i64 %448
  %450 = load float, float* %449, align 4
  %451 = load float, float* %20, align 4
  %452 = fadd contract float %451, %450
  store float %452, float* %20, align 4
  br label %453

453:                                              ; preds = %440
  %454 = load i32, i32* %63, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %63, align 4
  br label %436, !llvm.loop !9

456:                                              ; preds = %399
  %457 = landingpad { i8*, i32 }
          cleanup
  %458 = extractvalue { i8*, i32 } %457, 0
  store i8* %458, i8** %37, align 8
  %459 = extractvalue { i8*, i32 } %457, 1
  store i32 %459, i32* %38, align 4
  br label %464

460:                                              ; preds = %402
  %461 = landingpad { i8*, i32 }
          cleanup
  %462 = extractvalue { i8*, i32 } %461, 0
  store i8* %462, i8** %37, align 8
  %463 = extractvalue { i8*, i32 } %461, 1
  store i32 %463, i32* %38, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %60) #16
  br label %464

464:                                              ; preds = %460, %456
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %61) #16
  br label %853

465:                                              ; preds = %436
  %466 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %467 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %466, i32 0, i32 9
  %468 = load float**, float*** %467, align 8
  %469 = getelementptr inbounds float*, float** %468, i64 0
  %470 = load float*, float** %469, align 8
  %471 = load i32, i32* %62, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds float, float* %470, i64 %472
  %474 = load float, float* %473, align 4
  %475 = load float, float* %20, align 4
  %476 = fadd contract float %475, %474
  store float %476, float* %20, align 4
  %477 = load float, float* %20, align 4
  %478 = fneg contract float %477
  %479 = call contract noundef float @_ZSt3expf(float noundef %478)
  %480 = fpext float %479 to double
  %481 = fadd contract double 1.000000e+00, %480
  %482 = fdiv contract double 1.000000e+00, %481
  %483 = fptrunc double %482 to float
  %484 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %485 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %484, i32 0, i32 4
  %486 = load float*, float** %485, align 8
  %487 = load i32, i32* %62, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds float, float* %486, i64 %488
  store float %483, float* %489, align 4
  br label %490

490:                                              ; preds = %465
  %491 = load i32, i32* %62, align 4
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %62, align 4
  br label %431, !llvm.loop !10

493:                                              ; preds = %431
  %494 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %495 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %494, i32 0, i32 4
  %496 = load float*, float** %495, align 8
  %497 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %498 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %497, i32 0, i32 5
  %499 = load float*, float** %498, align 8
  %500 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %501 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %500, i32 0, i32 10
  %502 = load float**, float*** %501, align 8
  %503 = load i32, i32* %8, align 4
  %504 = load i32, i32* %9, align 4
  call void @bpnn_layerforward(float* noundef %496, float* noundef %499, float** noundef %502, i32 noundef %503, i32 noundef %504)
  %505 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %506 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %505, i32 0, i32 7
  %507 = load float*, float** %506, align 8
  %508 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %509 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %508, i32 0, i32 8
  %510 = load float*, float** %509, align 8
  %511 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %512 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %511, i32 0, i32 5
  %513 = load float*, float** %512, align 8
  %514 = load i32, i32* %9, align 4
  call void @bpnn_output_error(float* noundef %507, float* noundef %510, float* noundef %513, i32 noundef %514, float* noundef %10)
  %515 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %516 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %515, i32 0, i32 6
  %517 = load float*, float** %516, align 8
  %518 = load i32, i32* %8, align 4
  %519 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %520 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %519, i32 0, i32 7
  %521 = load float*, float** %520, align 8
  %522 = load i32, i32* %9, align 4
  %523 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %524 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %523, i32 0, i32 10
  %525 = load float**, float*** %524, align 8
  %526 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %527 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %526, i32 0, i32 4
  %528 = load float*, float** %527, align 8
  call void @bpnn_hidden_error(float* noundef %517, i32 noundef %518, float* noundef %521, i32 noundef %522, float** noundef %525, float* noundef %528, float* noundef %11)
  %529 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %530 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %529, i32 0, i32 7
  %531 = load float*, float** %530, align 8
  %532 = load i32, i32* %9, align 4
  %533 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %534 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %533, i32 0, i32 4
  %535 = load float*, float** %534, align 8
  %536 = load i32, i32* %8, align 4
  %537 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %538 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %537, i32 0, i32 10
  %539 = load float**, float*** %538, align 8
  %540 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %541 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %540, i32 0, i32 12
  %542 = load float**, float*** %541, align 8
  call void @bpnn_adjust_weights(float* noundef %531, i32 noundef %532, float* noundef %535, i32 noundef %536, float** noundef %539, float** noundef %542)
  %543 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %544 = bitcast %class.RDTimerCPU* %543 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %65) #16
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %64, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %65)
          to label %545 unwind label %673

545:                                              ; preds = %493
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %544, %"class.std::basic_string"* noundef %64)
          to label %546 unwind label %677

546:                                              ; preds = %545
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %64) #16
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %65) #16
  %547 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %548 = bitcast %class.RDTimerCPU* %547 to void (%class.RDTimerCPU*)***
  %549 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %548, align 8
  %550 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %549, i64 2
  %551 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %550, align 8
  call void %551(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %547)
  %552 = bitcast float** %18 to i8**
  %553 = load i32, i32* %8, align 4
  %554 = add nsw i32 %553, 1
  %555 = sext i32 %554 to i64
  %556 = mul i64 %555, 4
  %557 = call i32 @hipMalloc(i8** noundef %552, i64 noundef %556)
  %558 = bitcast float** %19 to i8**
  %559 = load i32, i32* %7, align 4
  %560 = add nsw i32 %559, 1
  %561 = load i32, i32* %8, align 4
  %562 = add nsw i32 %561, 1
  %563 = mul nsw i32 %560, %562
  %564 = sext i32 %563 to i64
  %565 = mul i64 %564, 4
  %566 = call i32 @hipMalloc(i8** noundef %558, i64 noundef %565)
  %567 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %568 = bitcast %class.RDTimerCPU* %567 to float (%class.RDTimerCPU*)***
  %569 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %568, align 8
  %570 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %569, i64 3
  %571 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %570, align 8
  %572 = call contract noundef float %571(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %567)
  store float %572, float* %29, align 4
  %573 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %44, align 8
  %574 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %575 = bitcast %class.RDTimerCPU* %574 to %class.RDTimer*
  %576 = bitcast %class.SimplePerfSerializer* %573 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %577 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %576, align 8
  %578 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %577, i64 2
  %579 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %578, align 8
  call void %579(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %573, %class.RDTimer* noundef %575)
  %580 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %581 = bitcast %class.RDTimerCPU* %580 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %67) #16
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %66, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %67)
          to label %582 unwind label %682

582:                                              ; preds = %546
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %581, %"class.std::basic_string"* noundef %66)
          to label %583 unwind label %686

583:                                              ; preds = %582
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %66) #16
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %67) #16
  %584 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %585 = bitcast %class.RDTimerCPU* %584 to void (%class.RDTimerCPU*)***
  %586 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %585, align 8
  %587 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %586, i64 2
  %588 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %587, align 8
  call void %588(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %584)
  %589 = load float*, float** %18, align 8
  %590 = bitcast float* %589 to i8*
  %591 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %592 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %591, i32 0, i32 6
  %593 = load float*, float** %592, align 8
  %594 = bitcast float* %593 to i8*
  %595 = load i32, i32* %8, align 4
  %596 = add nsw i32 %595, 1
  %597 = sext i32 %596 to i64
  %598 = mul i64 %597, 4
  %599 = call i32 @hipMemcpy(i8* noundef %590, i8* noundef %594, i64 noundef %598, i32 noundef 1)
  %600 = load float*, float** %19, align 8
  %601 = bitcast float* %600 to i8*
  %602 = load float*, float** %22, align 8
  %603 = bitcast float* %602 to i8*
  %604 = load i32, i32* %7, align 4
  %605 = add nsw i32 %604, 1
  %606 = load i32, i32* %8, align 4
  %607 = add nsw i32 %606, 1
  %608 = mul nsw i32 %605, %607
  %609 = sext i32 %608 to i64
  %610 = mul i64 %609, 4
  %611 = call i32 @hipMemcpy(i8* noundef %601, i8* noundef %603, i64 noundef %610, i32 noundef 1)
  %612 = load float*, float** %13, align 8
  %613 = bitcast float* %612 to i8*
  %614 = load float*, float** %21, align 8
  %615 = bitcast float* %614 to i8*
  %616 = load i32, i32* %7, align 4
  %617 = add nsw i32 %616, 1
  %618 = load i32, i32* %8, align 4
  %619 = add nsw i32 %618, 1
  %620 = mul nsw i32 %617, %619
  %621 = sext i32 %620 to i64
  %622 = mul i64 %621, 4
  %623 = call i32 @hipMemcpy(i8* noundef %613, i8* noundef %615, i64 noundef %622, i32 noundef 1)
  %624 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %625 = bitcast %class.RDTimerCPU* %624 to float (%class.RDTimerCPU*)***
  %626 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %625, align 8
  %627 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %626, i64 3
  %628 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %627, align 8
  %629 = call contract noundef float %628(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %624)
  store float %629, float* %30, align 4
  %630 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %44, align 8
  %631 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %632 = bitcast %class.RDTimerCPU* %631 to %class.RDTimer*
  %633 = bitcast %class.SimplePerfSerializer* %630 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %634 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %633, align 8
  %635 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %634, i64 2
  %636 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %635, align 8
  call void %636(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %630, %class.RDTimer* noundef %632)
  %637 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %638 = bitcast %class.RDTimerCPU* %637 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %69) #16
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %68, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %69)
          to label %639 unwind label %691

639:                                              ; preds = %583
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %638, %"class.std::basic_string"* noundef %68)
          to label %640 unwind label %695

640:                                              ; preds = %639
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %68) #16
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %69) #16
  %641 = call i32 @hipDeviceSynchronize()
  %642 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %643 = bitcast %class.RDTimerCPU* %642 to void (%class.RDTimerCPU*)***
  %644 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %643, align 8
  %645 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %644, i64 2
  %646 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %645, align 8
  call void %646(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %642)
  br label %647

647:                                              ; preds = %640
  %648 = bitcast %struct.dim3* %70 to i8*
  %649 = bitcast %struct.dim3* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %648, i8* align 4 %649, i64 12, i1 false)
  %650 = bitcast %struct.dim3* %71 to i8*
  %651 = bitcast %struct.dim3* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %650, i8* align 4 %651, i64 12, i1 false)
  %652 = bitcast { i64, i32 }* %72 to i8*
  %653 = bitcast %struct.dim3* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %652, i8* align 4 %653, i64 12, i1 false)
  %654 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %72, i32 0, i32 0
  %655 = load i64, i64* %654, align 4
  %656 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %72, i32 0, i32 1
  %657 = load i32, i32* %656, align 4
  %658 = bitcast { i64, i32 }* %73 to i8*
  %659 = bitcast %struct.dim3* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %658, i8* align 4 %659, i64 12, i1 false)
  %660 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %73, i32 0, i32 0
  %661 = load i64, i64* %660, align 4
  %662 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %73, i32 0, i32 1
  %663 = load i32, i32* %662, align 4
  %664 = call i32 @__hipPushCallConfiguration(i64 %655, i32 %657, i64 %661, i32 %663, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %665 = icmp ne i32 %664, 0
  br i1 %665, label %700, label %666

666:                                              ; preds = %647
  %667 = load float*, float** %18, align 8
  %668 = load i32, i32* %8, align 4
  %669 = load float*, float** %14, align 8
  %670 = load i32, i32* %7, align 4
  %671 = load float*, float** %13, align 8
  %672 = load float*, float** %19, align 8
  call void @_Z39__device_stub__bpnn_adjust_weights_cudaPfiS_iS_S_(float* noundef %667, i32 noundef %668, float* noundef %669, i32 noundef %670, float* noundef %671, float* noundef %672)
  br label %700

673:                                              ; preds = %493
  %674 = landingpad { i8*, i32 }
          cleanup
  %675 = extractvalue { i8*, i32 } %674, 0
  store i8* %675, i8** %37, align 8
  %676 = extractvalue { i8*, i32 } %674, 1
  store i32 %676, i32* %38, align 4
  br label %681

677:                                              ; preds = %545
  %678 = landingpad { i8*, i32 }
          cleanup
  %679 = extractvalue { i8*, i32 } %678, 0
  store i8* %679, i8** %37, align 8
  %680 = extractvalue { i8*, i32 } %678, 1
  store i32 %680, i32* %38, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %64) #16
  br label %681

681:                                              ; preds = %677, %673
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %65) #16
  br label %853

682:                                              ; preds = %546
  %683 = landingpad { i8*, i32 }
          cleanup
  %684 = extractvalue { i8*, i32 } %683, 0
  store i8* %684, i8** %37, align 8
  %685 = extractvalue { i8*, i32 } %683, 1
  store i32 %685, i32* %38, align 4
  br label %690

686:                                              ; preds = %582
  %687 = landingpad { i8*, i32 }
          cleanup
  %688 = extractvalue { i8*, i32 } %687, 0
  store i8* %688, i8** %37, align 8
  %689 = extractvalue { i8*, i32 } %687, 1
  store i32 %689, i32* %38, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %66) #16
  br label %690

690:                                              ; preds = %686, %682
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %67) #16
  br label %853

691:                                              ; preds = %583
  %692 = landingpad { i8*, i32 }
          cleanup
  %693 = extractvalue { i8*, i32 } %692, 0
  store i8* %693, i8** %37, align 8
  %694 = extractvalue { i8*, i32 } %692, 1
  store i32 %694, i32* %38, align 4
  br label %699

695:                                              ; preds = %639
  %696 = landingpad { i8*, i32 }
          cleanup
  %697 = extractvalue { i8*, i32 } %696, 0
  store i8* %697, i8** %37, align 8
  %698 = extractvalue { i8*, i32 } %696, 1
  store i32 %698, i32* %38, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %68) #16
  br label %699

699:                                              ; preds = %695, %691
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %69) #16
  br label %853

700:                                              ; preds = %666, %647
  br label %701

701:                                              ; preds = %700
  %702 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %703 = bitcast %class.RDTimerCPU* %702 to float (%class.RDTimerCPU*)***
  %704 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %703, align 8
  %705 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %704, i64 3
  %706 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %705, align 8
  %707 = call contract noundef float %706(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %702)
  store float %707, float* %31, align 4
  %708 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %44, align 8
  %709 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %710 = bitcast %class.RDTimerCPU* %709 to %class.RDTimer*
  %711 = bitcast %class.SimplePerfSerializer* %708 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %712 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %711, align 8
  %713 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %712, i64 2
  %714 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %713, align 8
  call void %714(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %708, %class.RDTimer* noundef %710)
  %715 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %716 = bitcast %class.RDTimerCPU* %715 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %75) #16
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %74, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %75)
          to label %717 unwind label %844

717:                                              ; preds = %701
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %716, %"class.std::basic_string"* noundef %74)
          to label %718 unwind label %848

718:                                              ; preds = %717
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %74) #16
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %75) #16
  %719 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %720 = bitcast %class.RDTimerCPU* %719 to void (%class.RDTimerCPU*)***
  %721 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %720, align 8
  %722 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %721, i64 2
  %723 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %722, align 8
  call void %723(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %719)
  %724 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %725 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %724, i32 0, i32 3
  %726 = load float*, float** %725, align 8
  %727 = bitcast float* %726 to i8*
  %728 = load float*, float** %14, align 8
  %729 = bitcast float* %728 to i8*
  %730 = load i32, i32* %7, align 4
  %731 = add nsw i32 %730, 1
  %732 = sext i32 %731 to i64
  %733 = mul i64 %732, 4
  %734 = call i32 @hipMemcpy(i8* noundef %727, i8* noundef %729, i64 noundef %733, i32 noundef 2)
  %735 = load float*, float** %21, align 8
  %736 = bitcast float* %735 to i8*
  %737 = load float*, float** %13, align 8
  %738 = bitcast float* %737 to i8*
  %739 = load i32, i32* %7, align 4
  %740 = add nsw i32 %739, 1
  %741 = load i32, i32* %8, align 4
  %742 = add nsw i32 %741, 1
  %743 = mul nsw i32 %740, %742
  %744 = sext i32 %743 to i64
  %745 = mul i64 %744, 4
  %746 = call i32 @hipMemcpy(i8* noundef %736, i8* noundef %738, i64 noundef %745, i32 noundef 2)
  %747 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %748 = bitcast %class.RDTimerCPU* %747 to float (%class.RDTimerCPU*)***
  %749 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %748, align 8
  %750 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %749, i64 3
  %751 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %750, align 8
  %752 = call contract noundef float %751(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %747)
  store float %752, float* %32, align 4
  %753 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %44, align 8
  %754 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %755 = bitcast %class.RDTimerCPU* %754 to %class.RDTimer*
  %756 = bitcast %class.SimplePerfSerializer* %753 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %757 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %756, align 8
  %758 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %757, i64 2
  %759 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %758, align 8
  call void %759(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %753, %class.RDTimer* noundef %755)
  %760 = load %class.RDTimerCPU*, %class.RDTimerCPU** %34, align 8
  %761 = bitcast %class.RDTimerCPU* %760 to float (%class.RDTimerCPU*)***
  %762 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %761, align 8
  %763 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %762, i64 3
  %764 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %763, align 8
  %765 = call contract noundef float %764(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %760)
  store float %765, float* %33, align 4
  %766 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %44, align 8
  %767 = load %class.RDTimerCPU*, %class.RDTimerCPU** %34, align 8
  %768 = bitcast %class.RDTimerCPU* %767 to %class.RDTimer*
  %769 = bitcast %class.SimplePerfSerializer* %766 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %770 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %769, align 8
  %771 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %770, i64 2
  %772 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %771, align 8
  call void %772(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %766, %class.RDTimer* noundef %768)
  %773 = load float, float* %26, align 4
  %774 = load float, float* %30, align 4
  %775 = fadd contract float %773, %774
  %776 = fpext float %775 to double
  %777 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), double noundef %776)
  %778 = load float, float* %28, align 4
  %779 = load float, float* %32, align 4
  %780 = fadd contract float %778, %779
  %781 = fpext float %780 to double
  %782 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), double noundef %781)
  %783 = load float, float* %25, align 4
  %784 = load float, float* %29, align 4
  %785 = fadd contract float %783, %784
  %786 = fpext float %785 to double
  %787 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), double noundef %786)
  %788 = load float, float* %27, align 4
  %789 = load float, float* %31, align 4
  %790 = fadd contract float %788, %789
  %791 = fpext float %790 to double
  %792 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), double noundef %791)
  %793 = load float, float* %33, align 4
  %794 = fpext float %793 to double
  %795 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), double noundef %794)
  %796 = load %class.RDTimerCPU*, %class.RDTimerCPU** %45, align 8
  %797 = icmp eq %class.RDTimerCPU* %796, null
  br i1 %797, label %803, label %798

798:                                              ; preds = %718
  %799 = bitcast %class.RDTimerCPU* %796 to void (%class.RDTimerCPU*)***
  %800 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %799, align 8
  %801 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %800, i64 1
  %802 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %801, align 8
  call void %802(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %796) #16
  br label %803

803:                                              ; preds = %798, %718
  %804 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %44, align 8
  %805 = icmp eq %class.SimplePerfSerializer* %804, null
  br i1 %805, label %811, label %806

806:                                              ; preds = %803
  %807 = bitcast %class.SimplePerfSerializer* %804 to void (%class.SimplePerfSerializer*)***
  %808 = load void (%class.SimplePerfSerializer*)**, void (%class.SimplePerfSerializer*)*** %807, align 8
  %809 = getelementptr inbounds void (%class.SimplePerfSerializer*)*, void (%class.SimplePerfSerializer*)** %808, i64 1
  %810 = load void (%class.SimplePerfSerializer*)*, void (%class.SimplePerfSerializer*)** %809, align 8
  call void %810(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %804) #16
  br label %811

811:                                              ; preds = %806, %803
  %812 = load %class.RDTimerCPU*, %class.RDTimerCPU** %34, align 8
  %813 = icmp eq %class.RDTimerCPU* %812, null
  br i1 %813, label %819, label %814

814:                                              ; preds = %811
  %815 = bitcast %class.RDTimerCPU* %812 to void (%class.RDTimerCPU*)***
  %816 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %815, align 8
  %817 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %816, i64 1
  %818 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %817, align 8
  call void %818(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %812) #16
  br label %819

819:                                              ; preds = %814, %811
  %820 = load float*, float** %14, align 8
  %821 = bitcast float* %820 to i8*
  %822 = call i32 @hipFree(i8* noundef %821)
  %823 = load float*, float** %15, align 8
  %824 = bitcast float* %823 to i8*
  %825 = call i32 @hipFree(i8* noundef %824)
  %826 = load float*, float** %13, align 8
  %827 = bitcast float* %826 to i8*
  %828 = call i32 @hipFree(i8* noundef %827)
  %829 = load float*, float** %17, align 8
  %830 = bitcast float* %829 to i8*
  %831 = call i32 @hipFree(i8* noundef %830)
  %832 = load float*, float** %19, align 8
  %833 = bitcast float* %832 to i8*
  %834 = call i32 @hipFree(i8* noundef %833)
  %835 = load float*, float** %18, align 8
  %836 = bitcast float* %835 to i8*
  %837 = call i32 @hipFree(i8* noundef %836)
  %838 = load float*, float** %16, align 8
  %839 = bitcast float* %838 to i8*
  call void @free(i8* noundef %839) #16
  %840 = load float*, float** %21, align 8
  %841 = bitcast float* %840 to i8*
  call void @free(i8* noundef %841) #16
  %842 = load float*, float** %22, align 8
  %843 = bitcast float* %842 to i8*
  call void @free(i8* noundef %843) #16
  ret void

844:                                              ; preds = %701
  %845 = landingpad { i8*, i32 }
          cleanup
  %846 = extractvalue { i8*, i32 } %845, 0
  store i8* %846, i8** %37, align 8
  %847 = extractvalue { i8*, i32 } %845, 1
  store i32 %847, i32* %38, align 4
  br label %852

848:                                              ; preds = %717
  %849 = landingpad { i8*, i32 }
          cleanup
  %850 = extractvalue { i8*, i32 } %849, 0
  store i8* %850, i8** %37, align 8
  %851 = extractvalue { i8*, i32 } %849, 1
  store i32 %851, i32* %38, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %74) #16
  br label %852

852:                                              ; preds = %848, %844
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %75) #16
  br label %853

853:                                              ; preds = %852, %699, %690, %681, %464, %375, %366, %357, %348, %333, %190, %181
  %854 = load i8*, i8** %37, align 8
  %855 = load i32, i32* %38, align 4
  %856 = insertvalue { i8*, i32 } undef, i8* %854, 0
  %857 = insertvalue { i8*, i32 } %856, i32 %855, 1
  resume { i8*, i32 } %857
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #7 comdat align 2 {
  %5 = alloca %struct.dim3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dim3* %0, %struct.dim3** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.dim3*, %struct.dim3** %5, align 8
  %10 = getelementptr inbounds %struct.dim3, %struct.dim3* %9, i32 0, i32 0
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.dim3, %struct.dim3* %9, i32 0, i32 1
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.dim3, %struct.dim3* %9, i32 0, i32 2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %14, align 4
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) #8

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #3

declare void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i8* noundef, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10RDTimerCPUC2ESs(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0, %"class.std::basic_string"* noundef %1) unnamed_addr #9 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.RDTimerCPU*, align 8
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %class.RDTimerCPU* %0, %class.RDTimerCPU** %3, align 8
  %7 = load %class.RDTimerCPU*, %class.RDTimerCPU** %3, align 8
  %8 = bitcast %class.RDTimerCPU* %7 to %class.RDTimer*
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %4, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %1)
  invoke void @_ZN7RDTimerC2ESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %8, %"class.std::basic_string"* noundef %4)
          to label %9 unwind label %15

9:                                                ; preds = %2
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %4) #16
  %10 = bitcast %class.RDTimerCPU* %7 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV10RDTimerCPU, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %10, align 8
  %11 = bitcast %class.RDTimerCPU* %7 to %class.RDTimer*
  %12 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %11, i32 0, i32 3
  %13 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSEPKc(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
          to label %14 unwind label %19

14:                                               ; preds = %9
  ret void

15:                                               ; preds = %2
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  store i8* %17, i8** %5, align 8
  %18 = extractvalue { i8*, i32 } %16, 1
  store i32 %18, i32* %6, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %4) #16
  br label %24

19:                                               ; preds = %9
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = extractvalue { i8*, i32 } %20, 0
  store i8* %21, i8** %5, align 8
  %22 = extractvalue { i8*, i32 } %20, 1
  store i32 %22, i32* %6, align 4
  %23 = bitcast %class.RDTimerCPU* %7 to %class.RDTimer*
  call void @_ZN7RDTimerD2Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %23) #16
  br label %24

24:                                               ; preds = %19, %15
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = insertvalue { i8*, i32 } undef, i8* %25, 0
  %28 = insertvalue { i8*, i32 } %27, i32 %26, 1
  resume { i8*, i32 } %28
}

; Function Attrs: nounwind
declare void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) #10

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0, %"class.std::basic_string"* noundef %1) #6 comdat align 2 {
  %3 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %3, align 8
  %4 = load %class.RDTimer*, %class.RDTimer** %3, align 8
  %5 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %4, i32 0, i32 2
  %6 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %5, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %1)
  call void @_ZN7RDTimer5ResetEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %4)
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #11

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN20SimplePerfSerializerC2EPc(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %0, i8* noundef %1) unnamed_addr #9 comdat align 2 {
  %3 = alloca %class.SimplePerfSerializer*, align 8
  %4 = alloca i8*, align 8
  store %class.SimplePerfSerializer* %0, %class.SimplePerfSerializer** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %3, align 8
  %6 = bitcast %class.SimplePerfSerializer* %5 to %class.PerfSerializer*
  %7 = load i8*, i8** %4, align 8
  call void @_ZN14PerfSerializerC2EPc(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %6, i8* noundef %7)
  %8 = bitcast %class.SimplePerfSerializer* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV20SimplePerfSerializer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %8, align 8
  %9 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %5, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %5, i32 0, i32 2
  store i64 -1, i64* %10, align 8
  %11 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %5, i32 0, i32 3
  store i8* null, i8** %11, align 8
  %12 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %5, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %5, i32 0, i32 5
  store i8* null, i8** %13, align 8
  ret void
}

declare i32 @hipMalloc(i8** noundef, i64 noundef) #5

declare i32 @printf(i8* noundef, ...) #5

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #5

declare i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) #5

declare i32 @hipDeviceSynchronize() #5

declare i32 @hipGetLastError() #5

declare i8* @hipGetErrorString(i32 noundef) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #12

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_ZSt3expf(float noundef %0) #2 comdat {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = call contract float @expf(float noundef %3) #16
  ret float %4
}

declare void @bpnn_layerforward(float* noundef, float* noundef, float** noundef, i32 noundef, i32 noundef) #5

declare void @bpnn_output_error(float* noundef, float* noundef, float* noundef, i32 noundef, float* noundef) #5

declare void @bpnn_hidden_error(float* noundef, i32 noundef, float* noundef, i32 noundef, float** noundef, float* noundef, float* noundef) #5

declare void @bpnn_adjust_weights(float* noundef, i32 noundef, float* noundef, i32 noundef, float** noundef, float** noundef) #5

declare i32 @hipFree(i8* noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

declare void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimerC2ESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0, %"class.std::basic_string"* noundef %1) unnamed_addr #9 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.RDTimer*, align 8
  %4 = alloca %"class.std::allocator", align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %class.RDTimer* %0, %class.RDTimer** %3, align 8
  %7 = load %class.RDTimer*, %class.RDTimer** %3, align 8
  %8 = bitcast %class.RDTimer* %7 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV7RDTimer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %8, align 8
  %9 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %7, i32 0, i32 1
  store i8 0, i8* %9, align 8
  %10 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %7, i32 0, i32 2
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %10, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %1)
  %11 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %7, i32 0, i32 3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #16
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %11, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4)
          to label %12 unwind label %17

12:                                               ; preds = %2
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #16
  %13 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %7, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %7, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %7, i32 0, i32 6
  store float 0.000000e+00, float* %15, align 8
  %16 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %7, i32 0, i32 7
  store float 0.000000e+00, float* %16, align 4
  ret void

17:                                               ; preds = %2
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  store i8* %19, i8** %5, align 8
  %20 = extractvalue { i8*, i32 } %18, 1
  store i32 %20, i32* %6, align 4
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %10) #16
  br label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %25 = insertvalue { i8*, i32 } %24, i32 %23, 1
  resume { i8*, i32 } %25
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSEPKc(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10RDTimerCPUD2Ev(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca %class.RDTimerCPU*, align 8
  store %class.RDTimerCPU* %0, %class.RDTimerCPU** %2, align 8
  %3 = load %class.RDTimerCPU*, %class.RDTimerCPU** %2, align 8
  %4 = bitcast %class.RDTimerCPU* %3 to %class.RDTimer*
  call void @_ZN7RDTimerD2Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %4) #16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10RDTimerCPUD0Ev(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca %class.RDTimerCPU*, align 8
  store %class.RDTimerCPU* %0, %class.RDTimerCPU** %2, align 8
  %3 = load %class.RDTimerCPU*, %class.RDTimerCPU** %2, align 8
  call void @_ZN10RDTimerCPUD2Ev(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %3) #16
  %4 = bitcast %class.RDTimerCPU* %3 to i8*
  call void @_ZdlPv(i8* noundef %4) #19
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10RDTimerCPU5StartEv(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %class.RDTimerCPU*, align 8
  store %class.RDTimerCPU* %0, %class.RDTimerCPU** %2, align 8
  %3 = load %class.RDTimerCPU*, %class.RDTimerCPU** %2, align 8
  %4 = call noundef i64 @_Z8get_timev()
  %5 = bitcast %class.RDTimerCPU* %3 to %class.RDTimer*
  %6 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %5, i32 0, i32 4
  store i64 %4, i64* %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef float @_ZN10RDTimerCPU4StopEv(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %class.RDTimerCPU*, align 8
  %3 = alloca i64, align 8
  store %class.RDTimerCPU* %0, %class.RDTimerCPU** %2, align 8
  %4 = load %class.RDTimerCPU*, %class.RDTimerCPU** %2, align 8
  %5 = call noundef i64 @_Z8get_timev()
  store i64 %5, i64* %3, align 8
  %6 = bitcast %class.RDTimerCPU* %4 to %class.RDTimer*
  %7 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call contract noundef float @_Z12elapsed_timexx(i64 noundef %8, i64 noundef %9)
  %11 = bitcast %class.RDTimerCPU* %4 to %class.RDTimer*
  %12 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %11, i32 0, i32 6
  store float %10, float* %12, align 8
  %13 = bitcast %class.RDTimerCPU* %4 to %class.RDTimer*
  %14 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %13, i32 0, i32 6
  %15 = load float, float* %14, align 8
  ret float %15
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef float @_ZN10RDTimerCPU10AccumulateEv(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca %class.RDTimerCPU*, align 8
  %3 = alloca float, align 4
  store %class.RDTimerCPU* %0, %class.RDTimerCPU** %2, align 8
  %4 = load %class.RDTimerCPU*, %class.RDTimerCPU** %2, align 8
  %5 = bitcast %class.RDTimerCPU* %4 to %class.RDTimer*
  %6 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %5, i32 0, i32 1
  store i8 1, i8* %6, align 8
  %7 = bitcast %class.RDTimerCPU* %4 to float (%class.RDTimerCPU*)***
  %8 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %7, align 8
  %9 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %8, i64 3
  %10 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %9, align 8
  %11 = call contract noundef float %10(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %4)
  store float %11, float* %3, align 4
  %12 = load float, float* %3, align 4
  %13 = bitcast %class.RDTimerCPU* %4 to %class.RDTimer*
  %14 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %13, i32 0, i32 7
  %15 = load float, float* %14, align 4
  %16 = fadd contract float %15, %12
  store float %16, float* %14, align 4
  %17 = bitcast %class.RDTimerCPU* %4 to %class.RDTimer*
  %18 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %17, i32 0, i32 7
  %19 = load float, float* %18, align 4
  ret float %19
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimerD2Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %2, align 8
  %3 = load %class.RDTimer*, %class.RDTimer** %2, align 8
  %4 = bitcast %class.RDTimer* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV7RDTimer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  %5 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 3
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %5) #16
  %6 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 2
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %6) #16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimerD0Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %2, align 8
  %3 = load %class.RDTimer*, %class.RDTimer** %2, align 8
  call void @llvm.trap() #20
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #13

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_Z8get_timev() #2 comdat {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @gettimeofday(%struct.timeval* noundef %1, %struct.timezone* noundef null) #16
  %3 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = mul nsw i64 %4, 1000000
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %5, %7
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_Z12elapsed_timexx(i64 noundef %0, i64 noundef %1) #2 comdat {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = sub nsw i64 %5, %6
  %8 = sitofp i64 %7 to float
  %9 = fdiv contract float %8, 1.000000e+06
  ret float %9
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimer5ResetEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) #2 comdat align 2 {
  %2 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %2, align 8
  %3 = load %class.RDTimer*, %class.RDTimer** %2, align 8
  %4 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 1
  store i8 0, i8* %4, align 8
  %5 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 7
  store float 0.000000e+00, float* %5, align 4
  %6 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 6
  store float 0.000000e+00, float* %6, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN14PerfSerializerC2EPc(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %0, i8* noundef %1) unnamed_addr #9 comdat align 2 {
  %3 = alloca %class.PerfSerializer*, align 8
  %4 = alloca i8*, align 8
  store %class.PerfSerializer* %0, %class.PerfSerializer** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %class.PerfSerializer*, %class.PerfSerializer** %3, align 8
  %6 = bitcast %class.PerfSerializer* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV14PerfSerializer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %6, align 8
  %7 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 1
  store i8 1, i8* %7, align 8
  %8 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  store %struct._IO_FILE* null, %struct._IO_FILE** %8, align 8
  %9 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %9, align 8
  %10 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 5
  store i8 0, i8* %10, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %81

13:                                               ; preds = %2
  %14 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %15, i64 noundef 100, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* noundef %16, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #16
  %18 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 7
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %18, i64 0, i64 0
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %19, i64 noundef 100, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* noundef %20, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0)) #16
  %22 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0
  %24 = call i32 @access(i8* noundef %23, i32 noundef 0) #16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %13
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  %29 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %29, i64 0, i64 0
  %31 = call %struct._IO_FILE* @fopen(i8* noundef %30, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  %32 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  store %struct._IO_FILE* %31, %struct._IO_FILE** %32, align 8
  %33 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %33, align 8
  %35 = icmp eq %struct._IO_FILE* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0))
  %39 = call i8* @__cxa_allocate_exception(i64 8) #16
  %40 = bitcast i8* %39 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i8** %40, align 16
  call void @__cxa_throw(i8* %39, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #21
  unreachable

41:                                               ; preds = %26
  %42 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 7
  %43 = getelementptr inbounds [100 x i8], [100 x i8]* %42, i64 0, i64 0
  %44 = call %struct._IO_FILE* @fopen(i8* noundef %43, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  %45 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  store %struct._IO_FILE* %44, %struct._IO_FILE** %45, align 8
  %46 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %46, align 8
  %48 = icmp eq %struct._IO_FILE* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0))
  %52 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %52, align 8
  %54 = call i32 @fclose(%struct._IO_FILE* noundef %53)
  %55 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  store %struct._IO_FILE* null, %struct._IO_FILE** %55, align 8
  %56 = call i8* @__cxa_allocate_exception(i64 8) #16
  %57 = bitcast i8* %56 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i8** %57, align 16
  call void @__cxa_throw(i8* %56, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #21
  unreachable

58:                                               ; preds = %41
  %59 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 5
  store i8 0, i8* %59, align 8
  br label %76

60:                                               ; preds = %13
  %61 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  store %struct._IO_FILE* null, %struct._IO_FILE** %61, align 8
  %62 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %63 = getelementptr inbounds [100 x i8], [100 x i8]* %62, i64 0, i64 0
  %64 = call %struct._IO_FILE* @fopen(i8* noundef %63, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  %65 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  store %struct._IO_FILE* %64, %struct._IO_FILE** %65, align 8
  %66 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %66, align 8
  %68 = icmp eq %struct._IO_FILE* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0))
  %72 = call i8* @__cxa_allocate_exception(i64 8) #16
  %73 = bitcast i8* %72 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i8** %73, align 16
  call void @__cxa_throw(i8* %72, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #21
  unreachable

74:                                               ; preds = %60
  %75 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 5
  store i8 1, i8* %75, align 8
  br label %76

76:                                               ; preds = %74, %58
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %78 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %79 = getelementptr inbounds [100 x i8], [100 x i8]* %78, i64 0, i64 0
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %77, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i64 0, i64 0), i8* noundef %79)
  br label %84

81:                                               ; preds = %2
  %82 = call i8* @__cxa_allocate_exception(i64 8) #16
  %83 = bitcast i8* %82 to i8**
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), i8** %83, align 16
  call void @__cxa_throw(i8* %82, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #21
  unreachable

84:                                               ; preds = %76
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN20SimplePerfSerializerD2Ev(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca %class.SimplePerfSerializer*, align 8
  store %class.SimplePerfSerializer* %0, %class.SimplePerfSerializer** %2, align 8
  %3 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %2, align 8
  %4 = bitcast %class.SimplePerfSerializer* %3 to %class.PerfSerializer*
  call void @_ZN14PerfSerializerD2Ev(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %4) #16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN20SimplePerfSerializerD0Ev(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca %class.SimplePerfSerializer*, align 8
  store %class.SimplePerfSerializer* %0, %class.SimplePerfSerializer** %2, align 8
  %3 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %2, align 8
  call void @_ZN20SimplePerfSerializerD2Ev(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %3) #16
  %4 = bitcast %class.SimplePerfSerializer* %3 to i8*
  call void @_ZdlPv(i8* noundef %4) #19
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN20SimplePerfSerializer9SerializeEPK7RDTimer(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %0, %class.RDTimer* noundef %1) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.SimplePerfSerializer*, align 8
  %4 = alloca %class.RDTimer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca %"class.std::basic_string", align 8
  %8 = alloca %"class.std::basic_string", align 8
  %9 = alloca %"class.std::basic_string", align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %"class.std::basic_string", align 8
  %13 = alloca %"class.std::basic_string", align 8
  store %class.SimplePerfSerializer* %0, %class.SimplePerfSerializer** %3, align 8
  store %class.RDTimer* %1, %class.RDTimer** %4, align 8
  %14 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %3, align 8
  store i32 0, i32* %5, align 4
  store float 0.000000e+00, float* %6, align 4
  %15 = bitcast %class.SimplePerfSerializer* %14 to %class.PerfSerializer*
  %16 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %15, i32 0, i32 5
  %17 = load i8, i8* %16, align 8
  %18 = trunc i8 %17 to i1
  %19 = zext i1 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %150

21:                                               ; preds = %2
  %22 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 3
  %23 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 4
  %24 = bitcast %class.SimplePerfSerializer* %14 to %class.PerfSerializer*
  %25 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %24, i32 0, i32 3
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %25, align 8
  %27 = call i64 @getline(i8** noundef %22, i64* noundef %23, %struct._IO_FILE* noundef %26)
  %28 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 2
  store i64 %27, i64* %28, align 8
  %29 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 3
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @strtok(i8* noundef %30, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #16
  %32 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0))
  %39 = call i8* @__cxa_allocate_exception(i64 8) #16
  %40 = bitcast i8* %39 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i8** %40, align 16
  call void @__cxa_throw(i8* %39, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #21
  unreachable

41:                                               ; preds = %21
  %42 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %43 = load i8*, i8** %42, align 8
  %44 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  call void @_ZNK7RDTimer4TypeEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %7, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %44)
  %45 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %7) #16
  %46 = call i32 @strcmp(i8* noundef %43, i8* noundef %45) #22
  %47 = icmp ne i32 %46, 0
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %7) #16
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i64 0, i64 0))
  %51 = call i8* @__cxa_allocate_exception(i64 8) #16
  %52 = bitcast i8* %51 to i8**
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0), i8** %52, align 16
  call void @__cxa_throw(i8* %51, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #21
  unreachable

53:                                               ; preds = %41
  %54 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #16
  %55 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %54, i8** %55, align 8
  %56 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %57 = load i8*, i8** %56, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %60, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i64 0, i64 0))
  %62 = call i8* @__cxa_allocate_exception(i64 8) #16
  %63 = bitcast i8* %62 to i8**
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i8** %63, align 16
  call void @__cxa_throw(i8* %62, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #21
  unreachable

64:                                               ; preds = %53
  %65 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  call void @_ZNK7RDTimer3MsgEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %8, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %68)
  %69 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %8) #16
  %70 = call i32 @strcmp(i8* noundef %67, i8* noundef %69) #22
  %71 = icmp ne i32 %70, 0
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %8) #16
  br i1 %71, label %72, label %86

72:                                               ; preds = %64
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %74 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %75 = load i8*, i8** %74, align 8
  %76 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  call void @_ZNK7RDTimer3MsgEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %9, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %76)
  %77 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %9) #16
  %78 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %73, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i64 0, i64 0), i8* noundef %75, i8* noundef %77)
          to label %79 unwind label %82

79:                                               ; preds = %72
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %9) #16
  %80 = call i8* @__cxa_allocate_exception(i64 8) #16
  %81 = bitcast i8* %80 to i8**
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i64 0, i64 0), i8** %81, align 16
  call void @__cxa_throw(i8* %80, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #21
  unreachable

82:                                               ; preds = %72
  %83 = landingpad { i8*, i32 }
          cleanup
  %84 = extractvalue { i8*, i32 } %83, 0
  store i8* %84, i8** %10, align 8
  %85 = extractvalue { i8*, i32 } %83, 1
  store i32 %85, i32* %11, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %9) #16
  br label %187

86:                                               ; preds = %64
  %87 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #16
  %88 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %87, i8** %88, align 8
  %89 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %90 = load i8*, i8** %89, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %93, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.42, i64 0, i64 0))
  %95 = call i8* @__cxa_allocate_exception(i64 8) #16
  %96 = bitcast i8* %95 to i8**
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i8** %96, align 16
  call void @__cxa_throw(i8* %95, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #21
  unreachable

97:                                               ; preds = %86
  %98 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  %102 = call noundef zeroext i1 @_ZNK7RDTimer12AccumulatingEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %101)
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0)
  %105 = call i32 @strcmp(i8* noundef %100, i8* noundef %104) #22
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %97
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %108, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i64 0, i64 0))
  %110 = call i8* @__cxa_allocate_exception(i64 8) #16
  %111 = bitcast i8* %110 to i8**
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.47, i64 0, i64 0), i8** %111, align 16
  call void @__cxa_throw(i8* %110, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #21
  unreachable

112:                                              ; preds = %97
  %113 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #16
  %114 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %113, i8** %114, align 8
  %115 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %116 = load i8*, i8** %115, align 8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %119, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i64 0, i64 0))
  %121 = call i8* @__cxa_allocate_exception(i64 8) #16
  %122 = bitcast i8* %121 to i8**
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i64 0, i64 0), i8** %122, align 16
  call void @__cxa_throw(i8* %121, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #21
  unreachable

123:                                              ; preds = %112
  %124 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %125 = load i8*, i8** %124, align 8
  %126 = call contract double @atof(i8* noundef %125) #22
  %127 = fptrunc double %126 to float
  store float %127, float* %6, align 4
  %128 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #16
  %129 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %128, i8** %129, align 8
  %130 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %131 = load i8*, i8** %130, align 8
  %132 = icmp eq i8* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %123
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %134, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.50, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %123
  %137 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @atoi(i8* noundef %142) #22
  store i32 %143, i32* %5, align 4
  br label %145

144:                                              ; preds = %136
  store i32 1, i32* %5, align 4
  br label %145

145:                                              ; preds = %144, %140
  %146 = load i32, i32* %5, align 4
  %147 = sitofp i32 %146 to float
  %148 = load float, float* %6, align 4
  %149 = fmul contract float %148, %147
  store float %149, float* %6, align 4
  br label %150

150:                                              ; preds = %145, %2
  %151 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  %152 = call contract noundef float @_ZNK7RDTimer4TimeEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %151)
  %153 = load float, float* %6, align 4
  %154 = fadd contract float %152, %153
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 %155, 1
  %157 = sitofp i32 %156 to float
  %158 = fdiv contract float %154, %157
  store float %158, float* %6, align 4
  %159 = bitcast %class.SimplePerfSerializer* %14 to %class.PerfSerializer*
  %160 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %159, i32 0, i32 4
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** %160, align 8
  %162 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  call void @_ZNK7RDTimer4TypeEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %12, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %162)
  %163 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12) #16
  %164 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  invoke void @_ZNK7RDTimer3MsgEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %13, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %164)
          to label %165 unwind label %178

165:                                              ; preds = %150
  %166 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %13) #16
  %167 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  %168 = invoke noundef zeroext i1 @_ZNK7RDTimer12AccumulatingEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %167)
          to label %169 unwind label %182

169:                                              ; preds = %165
  %170 = zext i1 %168 to i64
  %171 = select i1 %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0)
  %172 = load float, float* %6, align 4
  %173 = fpext float %172 to double
  %174 = load i32, i32* %5, align 4
  %175 = add nsw i32 %174, 1
  %176 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %161, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i64 0, i64 0), i8* noundef %163, i8* noundef %166, i8* noundef %171, double noundef %173, i32 noundef %175)
          to label %177 unwind label %182

177:                                              ; preds = %169
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %13) #16
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12) #16
  ret void

178:                                              ; preds = %150
  %179 = landingpad { i8*, i32 }
          cleanup
  %180 = extractvalue { i8*, i32 } %179, 0
  store i8* %180, i8** %10, align 8
  %181 = extractvalue { i8*, i32 } %179, 1
  store i32 %181, i32* %11, align 4
  br label %186

182:                                              ; preds = %169, %165
  %183 = landingpad { i8*, i32 }
          cleanup
  %184 = extractvalue { i8*, i32 } %183, 0
  store i8* %184, i8** %10, align 8
  %185 = extractvalue { i8*, i32 } %183, 1
  store i32 %185, i32* %11, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %13) #16
  br label %186

186:                                              ; preds = %182, %178
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12) #16
  br label %187

187:                                              ; preds = %186, %82
  %188 = load i8*, i8** %10, align 8
  %189 = load i32, i32* %11, align 4
  %190 = insertvalue { i8*, i32 } undef, i8* %188, 0
  %191 = insertvalue { i8*, i32 } %190, i32 %189, 1
  resume { i8*, i32 } %191
}

; Function Attrs: nounwind
declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #3

; Function Attrs: nounwind
declare i32 @access(i8* noundef, i32 noundef) #3

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #5

declare %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #5

declare i8* @__cxa_allocate_exception(i64)

declare void @__cxa_throw(i8*, i8*, i8*)

declare i32 @fclose(%struct._IO_FILE* noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN14PerfSerializerD2Ev(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %0) unnamed_addr #7 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.PerfSerializer*, align 8
  %3 = alloca [200 x i8], align 16
  store %class.PerfSerializer* %0, %class.PerfSerializer** %2, align 8
  %4 = load %class.PerfSerializer*, %class.PerfSerializer** %2, align 8
  %5 = bitcast %class.PerfSerializer* %4 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV14PerfSerializer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %5, align 8
  %6 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %8 = icmp ne %struct._IO_FILE* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %12 = invoke i32 @fclose(%struct._IO_FILE* noundef %11)
          to label %13 unwind label %53

13:                                               ; preds = %9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0))
          to label %16 unwind label %53

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16, %1
  %18 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %20 = icmp ne %struct._IO_FILE* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 4
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  %24 = invoke i32 @fclose(%struct._IO_FILE* noundef %23)
          to label %25 unwind label %53

25:                                               ; preds = %21
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0))
          to label %28 unwind label %53

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %28, %17
  %30 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 5
  %31 = load i8, i8* %30, align 8
  %32 = trunc i8 %31 to i1
  %33 = zext i1 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %29
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 7
  %38 = getelementptr inbounds [100 x i8], [100 x i8]* %37, i64 0, i64 0
  %39 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 6
  %40 = getelementptr inbounds [100 x i8], [100 x i8]* %39, i64 0, i64 0
  %41 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i64 0, i64 0), i8* noundef %38, i8* noundef %40)
          to label %42 unwind label %53

42:                                               ; preds = %35
  %43 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %44 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 7
  %45 = getelementptr inbounds [100 x i8], [100 x i8]* %44, i64 0, i64 0
  %46 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 6
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %46, i64 0, i64 0
  %48 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %43, i64 noundef 200, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), i8* noundef %45, i8* noundef %47) #16
  %49 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %50 = invoke i32 @system(i8* noundef %49)
          to label %51 unwind label %53

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %29
  ret void

53:                                               ; preds = %42, %35, %25, %21, %13, %9
  %54 = landingpad { i8*, i32 }
          catch i8* null
  %55 = extractvalue { i8*, i32 } %54, 0
  call void @__clang_call_terminate(i8* %55) #20
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN14PerfSerializerD0Ev(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %0) unnamed_addr #7 comdat align 2 {
  %2 = alloca %class.PerfSerializer*, align 8
  store %class.PerfSerializer* %0, %class.PerfSerializer** %2, align 8
  %3 = load %class.PerfSerializer*, %class.PerfSerializer** %2, align 8
  call void @llvm.trap() #20
  unreachable
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #14 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #16
  call void @_ZSt9terminatev() #20
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

declare i32 @system(i8* noundef) #5

declare i64 @getline(i8** noundef, i64* noundef, %struct._IO_FILE* noundef) #5

; Function Attrs: nounwind
declare i8* @strtok(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #15

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK7RDTimer4TypeEv(%"class.std::basic_string"* noalias sret(%"class.std::basic_string") align 8 %0, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %1) #6 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca %class.RDTimer*, align 8
  %5 = bitcast %"class.std::basic_string"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store %class.RDTimer* %1, %class.RDTimer** %4, align 8
  %6 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  %7 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %6, i32 0, i32 3
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %7)
  ret void
}

; Function Attrs: nounwind
declare noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK7RDTimer3MsgEv(%"class.std::basic_string"* noalias sret(%"class.std::basic_string") align 8 %0, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %1) #6 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca %class.RDTimer*, align 8
  %5 = bitcast %"class.std::basic_string"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store %class.RDTimer* %1, %class.RDTimer** %4, align 8
  %6 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  %7 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %6, i32 0, i32 2
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %7)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7RDTimer12AccumulatingEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) #2 comdat align 2 {
  %2 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %2, align 8
  %3 = load %class.RDTimer*, %class.RDTimer** %2, align 8
  %4 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 1
  %5 = load i8, i8* %4, align 8
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: nounwind readonly willreturn
declare double @atof(i8* noundef) #15

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #15

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_ZNK7RDTimer4TimeEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) #2 comdat align 2 {
  %2 = alloca float, align 4
  %3 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %3, align 8
  %4 = load %class.RDTimer*, %class.RDTimer** %3, align 8
  %5 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %4, i32 0, i32 1
  %6 = load i8, i8* %5, align 8
  %7 = trunc i8 %6 to i1
  %8 = zext i1 %7 to i32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %4, i32 0, i32 6
  %12 = load float, float* %11, align 8
  store float %12, float* %2, align 4
  br label %16

13:                                               ; preds = %1
  %14 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %4, i32 0, i32 7
  %15 = load float, float* %14, align 4
  store float %15, float* %2, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = load float, float* %2, align 4
  ret float %17
}

; Function Attrs: nounwind
declare float @expf(float noundef) #3

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (float*, float*, float*, float*, i32, i32)** @_Z22bpnn_layerforward_CUDAPfS_S_S_ii to i8*), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %3 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (float*, i32, float*, i32, float*, float*)** @_Z24bpnn_adjust_weights_cudaPfiS_iS_S_ to i8*), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  ret void
}

declare i32 @__hipRegisterFunction(i8**, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32*)

declare void @__hipRegisterVar(i8**, i8*, i8*, i8*, i32, i64, i32, i32)

declare void @__hipRegisterManagedVar(i8**, i8*, i8*, i8*, i64, i32)

declare void @__hipRegisterSurface(i8**, i8*, i8*, i8*, i32, i32)

declare void @__hipRegisterTexture(i8**, i8*, i8*, i8*, i32, i32, i32)

declare i8** @__hipRegisterFatBinary(i8*)

define internal void @__hip_module_ctor() {
  %1 = load i8**, i8*** @__hip_gpubin_handle, align 8
  %2 = icmp eq i8** %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i8** @__hipRegisterFatBinary(i8* bitcast ({ i32, i32, i8*, i8* }* @__hip_fatbin_wrapper to i8*))
  store i8** %4, i8*** @__hip_gpubin_handle, align 8
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i8**, i8*** @__hip_gpubin_handle, align 8
  call void @__hip_register_globals(i8** %6)
  %7 = call i32 @atexit(void ()* @__hip_module_dtor)
  ret void
}

declare void @__hipUnregisterFatBinary(i8**)

define internal void @__hip_module_dtor() {
  %1 = load i8**, i8*** @__hip_gpubin_handle, align 8
  %2 = icmp ne i8** %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @__hipUnregisterFatBinary(i8** %1)
  store i8** null, i8*** @__hip_gpubin_handle, align 8
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

declare i32 @atexit(void ()*)

attributes #0 = { noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nounwind willreturn }
attributes #2 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { noinline noreturn nounwind }
attributes #15 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { noreturn }
attributes #22 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 1be90618e508074abc746ab4963d7ad92710d6c5)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
