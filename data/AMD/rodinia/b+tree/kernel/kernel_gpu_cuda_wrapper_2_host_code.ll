; ModuleID = 'hip/b+tree/kernel/kernel_gpu_cuda_wrapper_2.cu'
source_filename = "hip/b+tree/kernel/kernel_gpu_cuda_wrapper_2.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knode = type { i32, [257 x i32], [257 x i32], i8, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque
%class.SimplePerfSerializer = type { %class.PerfSerializer.base, i32, i64, i8*, i64, i8* }
%class.PerfSerializer.base = type <{ i32 (...)**, i8, [7 x i8], %struct._IO_FILE*, %struct._IO_FILE*, i8, [100 x i8], [100 x i8] }>
%class.RDTimerCPU = type { %class.RDTimer }
%class.RDTimer = type { i32 (...)**, i8, %"class.std::basic_string", %"class.std::basic_string", i64, i64, float, float }
%"class.std::basic_string" = type { %"struct.std::basic_string<char>::_Alloc_hider" }
%"struct.std::basic_string<char>::_Alloc_hider" = type { i8* }
%"class.std::allocator" = type { i8 }
%class.PerfSerializer = type <{ i32 (...)**, i8, [7 x i8], %struct._IO_FILE*, %struct._IO_FILE*, i8, [100 x i8], [100 x i8], [7 x i8] }>
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

$_ZN20SimplePerfSerializerC2EPc = comdat any

$_ZN10RDTimerCPUC2ESs = comdat any

$_ZN7RDTimer5ResetESs = comdat any

$_ZN4dim3C2Ejjj = comdat any

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

$_ZTV20SimplePerfSerializer = comdat any

$_ZTS20SimplePerfSerializer = comdat any

$_ZTS14PerfSerializer = comdat any

$_ZTI14PerfSerializer = comdat any

$_ZTI20SimplePerfSerializer = comdat any

$_ZTV14PerfSerializer = comdat any

$_ZTV10RDTimerCPU = comdat any

$_ZTS10RDTimerCPU = comdat any

$_ZTS7RDTimer = comdat any

$_ZTI7RDTimer = comdat any

$_ZTI10RDTimerCPU = comdat any

$_ZTV7RDTimer = comdat any

$__hip_gpubin_handle = comdat any

@findRangeK = constant void (i64, %struct.knode*, i64, i64*, i64*, i64*, i64*, i32*, i32*, i32*, i32*)* @__device_stub__findRangeK, align 8
@.str = private unnamed_addr constant [75 x i8] c"# of blocks = %d, # of threads/block = %d (ensure that device can handle)\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"./b+tree_2\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Malloc Time\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"hipMalloc  recordsD\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"hipMalloc  currKnodeD\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"hipMalloc  offsetD\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"hipMalloc  lastKnodeD\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"hipMalloc  offset_2D\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"hipMalloc startD\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"hipMalloc endD\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"hipMalloc ansDStart\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"hipMalloc ansDLength\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"CPU to GPU Transfer Time\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"hipMalloc hipMemcpy memD\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"hipMalloc hipMemcpy currKnodeD\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"hipMalloc hipMemcpy offsetD\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"hipMalloc hipMemcpy lastKnodeD\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"hipMalloc hipMemcpy offset_2D\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"hipMemcpy startD\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"hipMemcpy endD\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"hipMemcpy ansDStart\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"hipMemcpy ansDLength\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"COMPUTE:Kernel Execution Time\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"findRangeK\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"GPU to CPU Transfer Time\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"time CPU to GPU memory copy = %lfs\0A\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"time GPU to CPU memory copy back = %lfs\0A\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"time GPU malloc = %lfs\0A\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"time kernel = %lfs\0A\00", align 1
@_ZTV20SimplePerfSerializer = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI20SimplePerfSerializer to i8*), i8* bitcast (void (%class.SimplePerfSerializer*)* @_ZN20SimplePerfSerializerD2Ev to i8*), i8* bitcast (void (%class.SimplePerfSerializer*)* @_ZN20SimplePerfSerializerD0Ev to i8*), i8* bitcast (void (%class.SimplePerfSerializer*, %class.RDTimer*)* @_ZN20SimplePerfSerializer9SerializeEPK7RDTimer to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS20SimplePerfSerializer = linkonce_odr dso_local constant [23 x i8] c"20SimplePerfSerializer\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS14PerfSerializer = linkonce_odr dso_local constant [17 x i8] c"14PerfSerializer\00", comdat, align 1
@_ZTI14PerfSerializer = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @_ZTS14PerfSerializer, i32 0, i32 0) }, comdat, align 8
@_ZTI20SimplePerfSerializer = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @_ZTS20SimplePerfSerializer, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI14PerfSerializer to i8*) }, comdat, align 8
@_ZTV14PerfSerializer = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI14PerfSerializer to i8*), i8* bitcast (void (%class.PerfSerializer*)* @_ZN14PerfSerializerD2Ev to i8*), i8* bitcast (void (%class.PerfSerializer*)* @_ZN14PerfSerializerD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.30 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c".perf\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c".perf.tmp\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.33 = private unnamed_addr constant [13 x i8] c"File exists\0A\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"Could not open 1\0A\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"Could not open\00", align 1
@_ZTIPKc = external constant i8*
@.str.37 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"Could not open 2\0A\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"Could not open 3\0A\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"Opened file %s for performance log\0A\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"did not specify file\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"Closed performance log 1\0A\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"Closed performance log 2\0A\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"COPYING FILE: %s to %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"mv %s %s\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"malformed line\0A\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"malformed line\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"incompatible platform type\0A\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"incompatible platform type\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"malformed line, second token\0A\00", align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"malformed malformed line, second token\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"incompatible message:%s,%s\0A\00", align 1
@.str.54 = private unnamed_addr constant [34 x i8] c"incompatible incompatible message\00", align 1
@.str.55 = private unnamed_addr constant [29 x i8] c"malformed line, third token\0A\00", align 1
@.str.56 = private unnamed_addr constant [28 x i8] c"malformed line, third token\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"ACCUM\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"ONEOFF\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"incompatible timer type\0A\00", align 1
@.str.60 = private unnamed_addr constant [37 x i8] c"incompatible incompatible timer type\00", align 1
@.str.61 = private unnamed_addr constant [28 x i8] c"malformed line forth token\0A\00", align 1
@.str.62 = private unnamed_addr constant [27 x i8] c"malformed line forth token\00", align 1
@.str.63 = private unnamed_addr constant [66 x i8] c"INFO: number of trials so far not found. Old format. Will update\0A\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"%s, %s, %s, %f, %d\0A\00", align 1
@_ZTV10RDTimerCPU = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI10RDTimerCPU to i8*), i8* bitcast (void (%class.RDTimerCPU*)* @_ZN10RDTimerCPUD2Ev to i8*), i8* bitcast (void (%class.RDTimerCPU*)* @_ZN10RDTimerCPUD0Ev to i8*), i8* bitcast (void (%class.RDTimerCPU*)* @_ZN10RDTimerCPU5StartEv to i8*), i8* bitcast (float (%class.RDTimerCPU*)* @_ZN10RDTimerCPU4StopEv to i8*), i8* bitcast (float (%class.RDTimerCPU*)* @_ZN10RDTimerCPU10AccumulateEv to i8*)] }, comdat, align 8
@.str.65 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@_ZTS10RDTimerCPU = linkonce_odr dso_local constant [13 x i8] c"10RDTimerCPU\00", comdat, align 1
@_ZTS7RDTimer = linkonce_odr dso_local constant [9 x i8] c"7RDTimer\00", comdat, align 1
@_ZTI7RDTimer = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_ZTS7RDTimer, i32 0, i32 0) }, comdat, align 8
@_ZTI10RDTimerCPU = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @_ZTS10RDTimerCPU, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7RDTimer to i8*) }, comdat, align 8
@_ZTV7RDTimer = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI7RDTimer to i8*), i8* bitcast (void (%class.RDTimer*)* @_ZN7RDTimerD2Ev to i8*), i8* bitcast (void (%class.RDTimer*)* @_ZN7RDTimerD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.66 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @__device_stub__findRangeK(i64 noundef %0, %struct.knode* noundef %1, i64 noundef %2, i64* noundef %3, i64* noundef %4, i64* noundef %5, i64* noundef %6, i32* noundef %7, i32* noundef %8, i32* noundef %9, i32* noundef %10) #0 {
  %12 = alloca i64, align 8
  %13 = alloca %struct.knode*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.dim3, align 8
  %24 = alloca %struct.dim3, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca { i64, i32 }, align 8
  %28 = alloca { i64, i32 }, align 8
  store i64 %0, i64* %12, align 8
  store %struct.knode* %1, %struct.knode** %13, align 8
  store i64 %2, i64* %14, align 8
  store i64* %3, i64** %15, align 8
  store i64* %4, i64** %16, align 8
  store i64* %5, i64** %17, align 8
  store i64* %6, i64** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %29 = alloca i8*, i64 11, align 16
  %30 = bitcast i64* %12 to i8*
  %31 = getelementptr i8*, i8** %29, i32 0
  store i8* %30, i8** %31, align 8
  %32 = bitcast %struct.knode** %13 to i8*
  %33 = getelementptr i8*, i8** %29, i32 1
  store i8* %32, i8** %33, align 8
  %34 = bitcast i64* %14 to i8*
  %35 = getelementptr i8*, i8** %29, i32 2
  store i8* %34, i8** %35, align 8
  %36 = bitcast i64** %15 to i8*
  %37 = getelementptr i8*, i8** %29, i32 3
  store i8* %36, i8** %37, align 8
  %38 = bitcast i64** %16 to i8*
  %39 = getelementptr i8*, i8** %29, i32 4
  store i8* %38, i8** %39, align 8
  %40 = bitcast i64** %17 to i8*
  %41 = getelementptr i8*, i8** %29, i32 5
  store i8* %40, i8** %41, align 8
  %42 = bitcast i64** %18 to i8*
  %43 = getelementptr i8*, i8** %29, i32 6
  store i8* %42, i8** %43, align 8
  %44 = bitcast i32** %19 to i8*
  %45 = getelementptr i8*, i8** %29, i32 7
  store i8* %44, i8** %45, align 8
  %46 = bitcast i32** %20 to i8*
  %47 = getelementptr i8*, i8** %29, i32 8
  store i8* %46, i8** %47, align 8
  %48 = bitcast i32** %21 to i8*
  %49 = getelementptr i8*, i8** %29, i32 9
  store i8* %48, i8** %49, align 8
  %50 = bitcast i32** %22 to i8*
  %51 = getelementptr i8*, i8** %29, i32 10
  store i8* %50, i8** %51, align 8
  %52 = call i32 @__hipPopCallConfiguration(%struct.dim3* %23, %struct.dim3* %24, i64* %25, i8** %26)
  %53 = load i64, i64* %25, align 8
  %54 = load i8*, i8** %26, align 8
  %55 = bitcast { i64, i32 }* %27 to i8*
  %56 = bitcast %struct.dim3* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 12, i1 false)
  %57 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %27, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %27, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = bitcast { i64, i32 }* %28 to i8*
  %62 = bitcast %struct.dim3* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 12, i1 false)
  %63 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = bitcast i8* %54 to %struct.ihipStream_t*
  %68 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i64, %struct.knode*, i64, i64*, i64*, i64*, i64*, i32*, i32*, i32*, i32*)** @findRangeK to i8*), i64 %58, i32 %60, i64 %64, i32 %66, i8** noundef %29, i64 noundef %53, %struct.ihipStream_t* noundef %67)
  br label %69

69:                                               ; preds = %11
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @kernel_gpu_cuda_wrapper_2(%struct.knode* noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i64* noundef %6, i64* noundef %7, i64* noundef %8, i64* noundef %9, i32* noundef %10, i32* noundef %11, i32* noundef %12, i32* noundef %13) #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %15 = alloca %struct.knode*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca %class.SimplePerfSerializer*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i32, align 4
  %38 = alloca %class.RDTimerCPU*, align 8
  %39 = alloca %"class.std::basic_string", align 8
  %40 = alloca %"class.std::allocator", align 1
  %41 = alloca i1, align 1
  %42 = alloca %"class.std::basic_string", align 8
  %43 = alloca %"class.std::allocator", align 1
  %44 = alloca %struct.knode*, align 8
  %45 = alloca i64*, align 8
  %46 = alloca i64*, align 8
  %47 = alloca i64*, align 8
  %48 = alloca i64*, align 8
  %49 = alloca i32*, align 8
  %50 = alloca i32*, align 8
  %51 = alloca i32*, align 8
  %52 = alloca i32*, align 8
  %53 = alloca %"class.std::basic_string", align 8
  %54 = alloca %"class.std::allocator", align 1
  %55 = alloca %"class.std::basic_string", align 8
  %56 = alloca %"class.std::allocator", align 1
  %57 = alloca %struct.dim3, align 4
  %58 = alloca %struct.dim3, align 4
  %59 = alloca { i64, i32 }, align 4
  %60 = alloca { i64, i32 }, align 4
  %61 = alloca %"class.std::basic_string", align 8
  %62 = alloca %"class.std::allocator", align 1
  store %struct.knode* %0, %struct.knode** %15, align 8
  store i64 %1, i64* %16, align 8
  store i64 %2, i64* %17, align 8
  store i32 %3, i32* %18, align 4
  store i64 %4, i64* %19, align 8
  store i32 %5, i32* %20, align 4
  store i64* %6, i64** %21, align 8
  store i64* %7, i64** %22, align 8
  store i64* %8, i64** %23, align 8
  store i64* %9, i64** %24, align 8
  store i32* %10, i32** %25, align 8
  store i32* %11, i32** %26, align 8
  store i32* %12, i32** %27, align 8
  store i32* %13, i32** %28, align 8
  %63 = call i32 @hipDeviceSynchronize()
  %64 = load i32, i32* %20, align 4
  store i32 %64, i32* %29, align 4
  %65 = load i32, i32* %18, align 4
  %66 = icmp slt i32 %65, 1024
  br i1 %66, label %67, label %69

67:                                               ; preds = %14
  %68 = load i32, i32* %18, align 4
  br label %70

69:                                               ; preds = %14
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 1024, %69 ]
  store i32 %71, i32* %30, align 4
  %72 = load i32, i32* %29, align 4
  %73 = load i32, i32* %30, align 4
  %74 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 noundef %72, i32 noundef %73)
  %75 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 272) #13
  %76 = bitcast i8* %75 to %class.SimplePerfSerializer*
  invoke void @_ZN20SimplePerfSerializerC2EPc(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %76, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
          to label %77 unwind label %277

77:                                               ; preds = %70
  store %class.SimplePerfSerializer* %76, %class.SimplePerfSerializer** %35, align 8
  %78 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 56) #13
  store i1 true, i1* %41, align 1
  %79 = bitcast i8* %78 to %class.RDTimerCPU*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %40) #14
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %39, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %40)
          to label %80 unwind label %281

80:                                               ; preds = %77
  invoke void @_ZN10RDTimerCPUC2ESs(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %79, %"class.std::basic_string"* noundef %39)
          to label %81 unwind label %285

81:                                               ; preds = %80
  store i1 false, i1* %41, align 1
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %39) #14
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %40) #14
  store %class.RDTimerCPU* %79, %class.RDTimerCPU** %38, align 8
  %82 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %83 = bitcast %class.RDTimerCPU* %82 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %43) #14
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %42, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %43)
          to label %84 unwind label %293

84:                                               ; preds = %81
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %83, %"class.std::basic_string"* noundef %42)
          to label %85 unwind label %297

85:                                               ; preds = %84
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %42) #14
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %43) #14
  %86 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %87 = bitcast %class.RDTimerCPU* %86 to void (%class.RDTimerCPU*)***
  %88 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %87, align 8
  %89 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %88, i64 2
  %90 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %89, align 8
  call void %90(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %86)
  %91 = bitcast %struct.knode** %44 to i8**
  %92 = load i64, i64* %17, align 8
  %93 = call i32 @hipMalloc(i8** noundef %91, i64 noundef %92)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %94 = bitcast i64** %45 to i8**
  %95 = load i32, i32* %20, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 8
  %98 = call i32 @hipMalloc(i8** noundef %94, i64 noundef %97)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %99 = bitcast i64** %46 to i8**
  %100 = load i32, i32* %20, align 4
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 8
  %103 = call i32 @hipMalloc(i8** noundef %99, i64 noundef %102)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %104 = bitcast i64** %47 to i8**
  %105 = load i32, i32* %20, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 8
  %108 = call i32 @hipMalloc(i8** noundef %104, i64 noundef %107)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %109 = bitcast i64** %48 to i8**
  %110 = load i32, i32* %20, align 4
  %111 = sext i32 %110 to i64
  %112 = mul i64 %111, 8
  %113 = call i32 @hipMalloc(i8** noundef %109, i64 noundef %112)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %114 = bitcast i32** %49 to i8**
  %115 = load i32, i32* %20, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 %116, 4
  %118 = call i32 @hipMalloc(i8** noundef %114, i64 noundef %117)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %119 = bitcast i32** %50 to i8**
  %120 = load i32, i32* %20, align 4
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 4
  %123 = call i32 @hipMalloc(i8** noundef %119, i64 noundef %122)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %124 = bitcast i32** %51 to i8**
  %125 = load i32, i32* %20, align 4
  %126 = sext i32 %125 to i64
  %127 = mul i64 %126, 4
  %128 = call i32 @hipMalloc(i8** noundef %124, i64 noundef %127)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %129 = bitcast i32** %52 to i8**
  %130 = load i32, i32* %20, align 4
  %131 = sext i32 %130 to i64
  %132 = mul i64 %131, 4
  %133 = call i32 @hipMalloc(i8** noundef %129, i64 noundef %132)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %134 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %135 = bitcast %class.RDTimerCPU* %134 to float (%class.RDTimerCPU*)***
  %136 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %135, align 8
  %137 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %136, i64 3
  %138 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %137, align 8
  %139 = call contract noundef float %138(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %134)
  store float %139, float* %31, align 4
  %140 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %35, align 8
  %141 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %142 = bitcast %class.RDTimerCPU* %141 to %class.RDTimer*
  %143 = bitcast %class.SimplePerfSerializer* %140 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %144 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %143, align 8
  %145 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %144, i64 2
  %146 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %145, align 8
  call void %146(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %140, %class.RDTimer* noundef %142)
  %147 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %148 = bitcast %class.RDTimerCPU* %147 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %54) #14
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %53, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %54)
          to label %149 unwind label %302

149:                                              ; preds = %85
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %148, %"class.std::basic_string"* noundef %53)
          to label %150 unwind label %306

150:                                              ; preds = %149
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %53) #14
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %54) #14
  %151 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %152 = bitcast %class.RDTimerCPU* %151 to void (%class.RDTimerCPU*)***
  %153 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %152, align 8
  %154 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %153, i64 2
  %155 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %154, align 8
  call void %155(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %151)
  %156 = load %struct.knode*, %struct.knode** %44, align 8
  %157 = bitcast %struct.knode* %156 to i8*
  %158 = load %struct.knode*, %struct.knode** %15, align 8
  %159 = bitcast %struct.knode* %158 to i8*
  %160 = load i64, i64* %17, align 8
  %161 = call i32 @hipMemcpy(i8* noundef %157, i8* noundef %159, i64 noundef %160, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  %162 = load i64*, i64** %45, align 8
  %163 = bitcast i64* %162 to i8*
  %164 = load i64*, i64** %21, align 8
  %165 = bitcast i64* %164 to i8*
  %166 = load i32, i32* %20, align 4
  %167 = sext i32 %166 to i64
  %168 = mul i64 %167, 8
  %169 = call i32 @hipMemcpy(i8* noundef %163, i8* noundef %165, i64 noundef %168, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0))
  %170 = load i64*, i64** %46, align 8
  %171 = bitcast i64* %170 to i8*
  %172 = load i64*, i64** %22, align 8
  %173 = bitcast i64* %172 to i8*
  %174 = load i32, i32* %20, align 4
  %175 = sext i32 %174 to i64
  %176 = mul i64 %175, 8
  %177 = call i32 @hipMemcpy(i8* noundef %171, i8* noundef %173, i64 noundef %176, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %178 = load i64*, i64** %47, align 8
  %179 = bitcast i64* %178 to i8*
  %180 = load i64*, i64** %23, align 8
  %181 = bitcast i64* %180 to i8*
  %182 = load i32, i32* %20, align 4
  %183 = sext i32 %182 to i64
  %184 = mul i64 %183, 8
  %185 = call i32 @hipMemcpy(i8* noundef %179, i8* noundef %181, i64 noundef %184, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  %186 = load i64*, i64** %48, align 8
  %187 = bitcast i64* %186 to i8*
  %188 = load i64*, i64** %24, align 8
  %189 = bitcast i64* %188 to i8*
  %190 = load i32, i32* %20, align 4
  %191 = sext i32 %190 to i64
  %192 = mul i64 %191, 8
  %193 = call i32 @hipMemcpy(i8* noundef %187, i8* noundef %189, i64 noundef %192, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  %194 = load i32*, i32** %49, align 8
  %195 = bitcast i32* %194 to i8*
  %196 = load i32*, i32** %25, align 8
  %197 = bitcast i32* %196 to i8*
  %198 = load i32, i32* %20, align 4
  %199 = sext i32 %198 to i64
  %200 = mul i64 %199, 4
  %201 = call i32 @hipMemcpy(i8* noundef %195, i8* noundef %197, i64 noundef %200, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %202 = load i32*, i32** %50, align 8
  %203 = bitcast i32* %202 to i8*
  %204 = load i32*, i32** %26, align 8
  %205 = bitcast i32* %204 to i8*
  %206 = load i32, i32* %20, align 4
  %207 = sext i32 %206 to i64
  %208 = mul i64 %207, 4
  %209 = call i32 @hipMemcpy(i8* noundef %203, i8* noundef %205, i64 noundef %208, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  %210 = load i32*, i32** %51, align 8
  %211 = bitcast i32* %210 to i8*
  %212 = load i32*, i32** %27, align 8
  %213 = bitcast i32* %212 to i8*
  %214 = load i32, i32* %20, align 4
  %215 = sext i32 %214 to i64
  %216 = mul i64 %215, 4
  %217 = call i32 @hipMemcpy(i8* noundef %211, i8* noundef %213, i64 noundef %216, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0))
  %218 = load i32*, i32** %52, align 8
  %219 = bitcast i32* %218 to i8*
  %220 = load i32*, i32** %28, align 8
  %221 = bitcast i32* %220 to i8*
  %222 = load i32, i32* %20, align 4
  %223 = sext i32 %222 to i64
  %224 = mul i64 %223, 4
  %225 = call i32 @hipMemcpy(i8* noundef %219, i8* noundef %221, i64 noundef %224, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0))
  %226 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %227 = bitcast %class.RDTimerCPU* %226 to float (%class.RDTimerCPU*)***
  %228 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %227, align 8
  %229 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %228, i64 3
  %230 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %229, align 8
  %231 = call contract noundef float %230(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %226)
  store float %231, float* %32, align 4
  %232 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %35, align 8
  %233 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %234 = bitcast %class.RDTimerCPU* %233 to %class.RDTimer*
  %235 = bitcast %class.SimplePerfSerializer* %232 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %236 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %235, align 8
  %237 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %236, i64 2
  %238 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %237, align 8
  call void %238(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %232, %class.RDTimer* noundef %234)
  %239 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %240 = bitcast %class.RDTimerCPU* %239 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %56) #14
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %55, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %56)
          to label %241 unwind label %311

241:                                              ; preds = %150
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %240, %"class.std::basic_string"* noundef %55)
          to label %242 unwind label %315

242:                                              ; preds = %241
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %55) #14
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %56) #14
  %243 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %244 = bitcast %class.RDTimerCPU* %243 to void (%class.RDTimerCPU*)***
  %245 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %244, align 8
  %246 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %245, i64 2
  %247 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %246, align 8
  call void %247(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %243)
  br label %248

248:                                              ; preds = %242
  %249 = load i32, i32* %29, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %57, i32 noundef %249, i32 noundef 1, i32 noundef 1)
  %250 = load i32, i32* %30, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %58, i32 noundef %250, i32 noundef 1, i32 noundef 1)
  %251 = bitcast { i64, i32 }* %59 to i8*
  %252 = bitcast %struct.dim3* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %251, i8* align 4 %252, i64 12, i1 false)
  %253 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %59, i32 0, i32 0
  %254 = load i64, i64* %253, align 4
  %255 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %59, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = bitcast { i64, i32 }* %60 to i8*
  %258 = bitcast %struct.dim3* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %257, i8* align 4 %258, i64 12, i1 false)
  %259 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %60, i32 0, i32 0
  %260 = load i64, i64* %259, align 4
  %261 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %60, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @__hipPushCallConfiguration(i64 %254, i32 %256, i64 %260, i32 %262, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %320, label %265

265:                                              ; preds = %248
  %266 = load i64, i64* %19, align 8
  %267 = load %struct.knode*, %struct.knode** %44, align 8
  %268 = load i64, i64* %16, align 8
  %269 = load i64*, i64** %45, align 8
  %270 = load i64*, i64** %46, align 8
  %271 = load i64*, i64** %47, align 8
  %272 = load i64*, i64** %48, align 8
  %273 = load i32*, i32** %49, align 8
  %274 = load i32*, i32** %50, align 8
  %275 = load i32*, i32** %51, align 8
  %276 = load i32*, i32** %52, align 8
  call void @__device_stub__findRangeK(i64 noundef %266, %struct.knode* noundef %267, i64 noundef %268, i64* noundef %269, i64* noundef %270, i64* noundef %271, i64* noundef %272, i32* noundef %273, i32* noundef %274, i32* noundef %275, i32* noundef %276)
  br label %320

277:                                              ; preds = %70
  %278 = landingpad { i8*, i32 }
          cleanup
  %279 = extractvalue { i8*, i32 } %278, 0
  store i8* %279, i8** %36, align 8
  %280 = extractvalue { i8*, i32 } %278, 1
  store i32 %280, i32* %37, align 4
  call void @_ZdlPv(i8* noundef %75) #15
  br label %438

281:                                              ; preds = %77
  %282 = landingpad { i8*, i32 }
          cleanup
  %283 = extractvalue { i8*, i32 } %282, 0
  store i8* %283, i8** %36, align 8
  %284 = extractvalue { i8*, i32 } %282, 1
  store i32 %284, i32* %37, align 4
  br label %289

285:                                              ; preds = %80
  %286 = landingpad { i8*, i32 }
          cleanup
  %287 = extractvalue { i8*, i32 } %286, 0
  store i8* %287, i8** %36, align 8
  %288 = extractvalue { i8*, i32 } %286, 1
  store i32 %288, i32* %37, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %39) #14
  br label %289

289:                                              ; preds = %285, %281
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %40) #14
  %290 = load i1, i1* %41, align 1
  br i1 %290, label %291, label %292

291:                                              ; preds = %289
  call void @_ZdlPv(i8* noundef %78) #15
  br label %292

292:                                              ; preds = %291, %289
  br label %438

293:                                              ; preds = %81
  %294 = landingpad { i8*, i32 }
          cleanup
  %295 = extractvalue { i8*, i32 } %294, 0
  store i8* %295, i8** %36, align 8
  %296 = extractvalue { i8*, i32 } %294, 1
  store i32 %296, i32* %37, align 4
  br label %301

297:                                              ; preds = %84
  %298 = landingpad { i8*, i32 }
          cleanup
  %299 = extractvalue { i8*, i32 } %298, 0
  store i8* %299, i8** %36, align 8
  %300 = extractvalue { i8*, i32 } %298, 1
  store i32 %300, i32* %37, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %42) #14
  br label %301

301:                                              ; preds = %297, %293
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %43) #14
  br label %438

302:                                              ; preds = %85
  %303 = landingpad { i8*, i32 }
          cleanup
  %304 = extractvalue { i8*, i32 } %303, 0
  store i8* %304, i8** %36, align 8
  %305 = extractvalue { i8*, i32 } %303, 1
  store i32 %305, i32* %37, align 4
  br label %310

306:                                              ; preds = %149
  %307 = landingpad { i8*, i32 }
          cleanup
  %308 = extractvalue { i8*, i32 } %307, 0
  store i8* %308, i8** %36, align 8
  %309 = extractvalue { i8*, i32 } %307, 1
  store i32 %309, i32* %37, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %53) #14
  br label %310

310:                                              ; preds = %306, %302
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %54) #14
  br label %438

311:                                              ; preds = %150
  %312 = landingpad { i8*, i32 }
          cleanup
  %313 = extractvalue { i8*, i32 } %312, 0
  store i8* %313, i8** %36, align 8
  %314 = extractvalue { i8*, i32 } %312, 1
  store i32 %314, i32* %37, align 4
  br label %319

315:                                              ; preds = %241
  %316 = landingpad { i8*, i32 }
          cleanup
  %317 = extractvalue { i8*, i32 } %316, 0
  store i8* %317, i8** %36, align 8
  %318 = extractvalue { i8*, i32 } %316, 1
  store i32 %318, i32* %37, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %55) #14
  br label %319

319:                                              ; preds = %315, %311
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %56) #14
  br label %438

320:                                              ; preds = %265, %248
  br label %321

321:                                              ; preds = %320
  %322 = call i32 @hipDeviceSynchronize()
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0))
  %323 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %324 = bitcast %class.RDTimerCPU* %323 to float (%class.RDTimerCPU*)***
  %325 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %324, align 8
  %326 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %325, i64 3
  %327 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %326, align 8
  %328 = call contract noundef float %327(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %323)
  store float %328, float* %33, align 4
  %329 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %35, align 8
  %330 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %331 = bitcast %class.RDTimerCPU* %330 to %class.RDTimer*
  %332 = bitcast %class.SimplePerfSerializer* %329 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %333 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %332, align 8
  %334 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %333, i64 2
  %335 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %334, align 8
  call void %335(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %329, %class.RDTimer* noundef %331)
  %336 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %337 = bitcast %class.RDTimerCPU* %336 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %62) #14
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %61, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %62)
          to label %338 unwind label %429

338:                                              ; preds = %321
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %337, %"class.std::basic_string"* noundef %61)
          to label %339 unwind label %433

339:                                              ; preds = %338
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %61) #14
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %62) #14
  %340 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %341 = bitcast %class.RDTimerCPU* %340 to void (%class.RDTimerCPU*)***
  %342 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %341, align 8
  %343 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %342, i64 2
  %344 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %343, align 8
  call void %344(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %340)
  %345 = load i32*, i32** %27, align 8
  %346 = bitcast i32* %345 to i8*
  %347 = load i32*, i32** %51, align 8
  %348 = bitcast i32* %347 to i8*
  %349 = load i32, i32* %20, align 4
  %350 = sext i32 %349 to i64
  %351 = mul i64 %350, 4
  %352 = call i32 @hipMemcpy(i8* noundef %346, i8* noundef %348, i64 noundef %351, i32 noundef 2)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0))
  %353 = load i32*, i32** %28, align 8
  %354 = bitcast i32* %353 to i8*
  %355 = load i32*, i32** %52, align 8
  %356 = bitcast i32* %355 to i8*
  %357 = load i32, i32* %20, align 4
  %358 = sext i32 %357 to i64
  %359 = mul i64 %358, 4
  %360 = call i32 @hipMemcpy(i8* noundef %354, i8* noundef %356, i64 noundef %359, i32 noundef 2)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0))
  %361 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %362 = bitcast %class.RDTimerCPU* %361 to float (%class.RDTimerCPU*)***
  %363 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %362, align 8
  %364 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %363, i64 3
  %365 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %364, align 8
  %366 = call contract noundef float %365(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %361)
  store float %366, float* %34, align 4
  %367 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %35, align 8
  %368 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %369 = bitcast %class.RDTimerCPU* %368 to %class.RDTimer*
  %370 = bitcast %class.SimplePerfSerializer* %367 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %371 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %370, align 8
  %372 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %371, i64 2
  %373 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %372, align 8
  call void %373(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %367, %class.RDTimer* noundef %369)
  %374 = load float, float* %32, align 4
  %375 = fpext float %374 to double
  %376 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0), double noundef %375)
  %377 = load float, float* %34, align 4
  %378 = fpext float %377 to double
  %379 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i64 0, i64 0), double noundef %378)
  %380 = load float, float* %31, align 4
  %381 = fpext float %380 to double
  %382 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0), double noundef %381)
  %383 = load float, float* %33, align 4
  %384 = fpext float %383 to double
  %385 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0), double noundef %384)
  %386 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %387 = icmp eq %class.RDTimerCPU* %386, null
  br i1 %387, label %393, label %388

388:                                              ; preds = %339
  %389 = bitcast %class.RDTimerCPU* %386 to void (%class.RDTimerCPU*)***
  %390 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %389, align 8
  %391 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %390, i64 1
  %392 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %391, align 8
  call void %392(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %386) #14
  br label %393

393:                                              ; preds = %388, %339
  %394 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %35, align 8
  %395 = icmp eq %class.SimplePerfSerializer* %394, null
  br i1 %395, label %401, label %396

396:                                              ; preds = %393
  %397 = bitcast %class.SimplePerfSerializer* %394 to void (%class.SimplePerfSerializer*)***
  %398 = load void (%class.SimplePerfSerializer*)**, void (%class.SimplePerfSerializer*)*** %397, align 8
  %399 = getelementptr inbounds void (%class.SimplePerfSerializer*)*, void (%class.SimplePerfSerializer*)** %398, i64 1
  %400 = load void (%class.SimplePerfSerializer*)*, void (%class.SimplePerfSerializer*)** %399, align 8
  call void %400(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %394) #14
  br label %401

401:                                              ; preds = %396, %393
  %402 = load %struct.knode*, %struct.knode** %44, align 8
  %403 = bitcast %struct.knode* %402 to i8*
  %404 = call i32 @hipFree(i8* noundef %403)
  %405 = load i64*, i64** %45, align 8
  %406 = bitcast i64* %405 to i8*
  %407 = call i32 @hipFree(i8* noundef %406)
  %408 = load i64*, i64** %46, align 8
  %409 = bitcast i64* %408 to i8*
  %410 = call i32 @hipFree(i8* noundef %409)
  %411 = load i64*, i64** %47, align 8
  %412 = bitcast i64* %411 to i8*
  %413 = call i32 @hipFree(i8* noundef %412)
  %414 = load i64*, i64** %48, align 8
  %415 = bitcast i64* %414 to i8*
  %416 = call i32 @hipFree(i8* noundef %415)
  %417 = load i32*, i32** %49, align 8
  %418 = bitcast i32* %417 to i8*
  %419 = call i32 @hipFree(i8* noundef %418)
  %420 = load i32*, i32** %50, align 8
  %421 = bitcast i32* %420 to i8*
  %422 = call i32 @hipFree(i8* noundef %421)
  %423 = load i32*, i32** %51, align 8
  %424 = bitcast i32* %423 to i8*
  %425 = call i32 @hipFree(i8* noundef %424)
  %426 = load i32*, i32** %52, align 8
  %427 = bitcast i32* %426 to i8*
  %428 = call i32 @hipFree(i8* noundef %427)
  ret void

429:                                              ; preds = %321
  %430 = landingpad { i8*, i32 }
          cleanup
  %431 = extractvalue { i8*, i32 } %430, 0
  store i8* %431, i8** %36, align 8
  %432 = extractvalue { i8*, i32 } %430, 1
  store i32 %432, i32* %37, align 4
  br label %437

433:                                              ; preds = %338
  %434 = landingpad { i8*, i32 }
          cleanup
  %435 = extractvalue { i8*, i32 } %434, 0
  store i8* %435, i8** %36, align 8
  %436 = extractvalue { i8*, i32 } %434, 1
  store i32 %436, i32* %37, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %61) #14
  br label %437

437:                                              ; preds = %433, %429
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %62) #14
  br label %438

438:                                              ; preds = %437, %319, %310, %301, %292, %277
  %439 = load i8*, i8** %36, align 8
  %440 = load i32, i32* %37, align 4
  %441 = insertvalue { i8*, i32 } undef, i8* %439, 0
  %442 = insertvalue { i8*, i32 } %441, i32 %440, 1
  resume { i8*, i32 } %442
}

declare i32 @hipDeviceSynchronize() #3

declare i32 @printf(i8* noundef, ...) #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) #4

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN20SimplePerfSerializerC2EPc(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %0, i8* noundef %1) unnamed_addr #5 comdat align 2 {
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

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) #6

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #7

declare void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i8* noundef, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #3

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10RDTimerCPUC2ESs(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0, %"class.std::basic_string"* noundef %1) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %4) #14
  %10 = bitcast %class.RDTimerCPU* %7 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV10RDTimerCPU, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %10, align 8
  %11 = bitcast %class.RDTimerCPU* %7 to %class.RDTimer*
  %12 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %11, i32 0, i32 3
  %13 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSEPKc(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0))
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
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %4) #14
  br label %24

19:                                               ; preds = %9
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = extractvalue { i8*, i32 } %20, 0
  store i8* %21, i8** %5, align 8
  %22 = extractvalue { i8*, i32 } %20, 1
  store i32 %22, i32* %6, align 4
  %23 = bitcast %class.RDTimerCPU* %7 to %class.RDTimer*
  call void @_ZN7RDTimerD2Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %23) #14
  br label %24

24:                                               ; preds = %19, %15
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = insertvalue { i8*, i32 } undef, i8* %25, 0
  %28 = insertvalue { i8*, i32 } %27, i32 %26, 1
  resume { i8*, i32 } %28
}

; Function Attrs: nounwind
declare void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #7

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0, %"class.std::basic_string"* noundef %1) #2 comdat align 2 {
  %3 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %3, align 8
  %4 = load %class.RDTimer*, %class.RDTimer** %3, align 8
  %5 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %4, i32 0, i32 2
  %6 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %5, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %1)
  call void @_ZN7RDTimer5ResetEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %4)
  ret void
}

declare i32 @hipMalloc(i8** noundef, i64 noundef) #3

declare void @checkCUDAError(i8* noundef) #3

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #3

declare i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #8 comdat align 2 {
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

declare i32 @hipFree(i8* noundef) #3

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN14PerfSerializerC2EPc(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %0, i8* noundef %1) unnamed_addr #5 comdat align 2 {
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
  %17 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %15, i64 noundef 100, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i8* noundef %16, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0)) #14
  %18 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 7
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %18, i64 0, i64 0
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %19, i64 noundef 100, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i8* noundef %20, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0)) #14
  %22 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0
  %24 = call i32 @access(i8* noundef %23, i32 noundef 0) #14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %13
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0))
  %29 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %29, i64 0, i64 0
  %31 = call %struct._IO_FILE* @fopen(i8* noundef %30, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0))
  %32 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  store %struct._IO_FILE* %31, %struct._IO_FILE** %32, align 8
  %33 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %33, align 8
  %35 = icmp eq %struct._IO_FILE* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i64 0, i64 0))
  %39 = call i8* @__cxa_allocate_exception(i64 8) #14
  %40 = bitcast i8* %39 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i8** %40, align 16
  call void @__cxa_throw(i8* %39, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #16
  unreachable

41:                                               ; preds = %26
  %42 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 7
  %43 = getelementptr inbounds [100 x i8], [100 x i8]* %42, i64 0, i64 0
  %44 = call %struct._IO_FILE* @fopen(i8* noundef %43, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  %45 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  store %struct._IO_FILE* %44, %struct._IO_FILE** %45, align 8
  %46 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %46, align 8
  %48 = icmp eq %struct._IO_FILE* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i64 0, i64 0))
  %52 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %52, align 8
  %54 = call i32 @fclose(%struct._IO_FILE* noundef %53)
  %55 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  store %struct._IO_FILE* null, %struct._IO_FILE** %55, align 8
  %56 = call i8* @__cxa_allocate_exception(i64 8) #14
  %57 = bitcast i8* %56 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i8** %57, align 16
  call void @__cxa_throw(i8* %56, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #16
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
  %64 = call %struct._IO_FILE* @fopen(i8* noundef %63, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  %65 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  store %struct._IO_FILE* %64, %struct._IO_FILE** %65, align 8
  %66 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %66, align 8
  %68 = icmp eq %struct._IO_FILE* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i64 0, i64 0))
  %72 = call i8* @__cxa_allocate_exception(i64 8) #14
  %73 = bitcast i8* %72 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i8** %73, align 16
  call void @__cxa_throw(i8* %72, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #16
  unreachable

74:                                               ; preds = %60
  %75 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 5
  store i8 1, i8* %75, align 8
  br label %76

76:                                               ; preds = %74, %58
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %78 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %79 = getelementptr inbounds [100 x i8], [100 x i8]* %78, i64 0, i64 0
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %77, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.40, i64 0, i64 0), i8* noundef %79)
  br label %84

81:                                               ; preds = %2
  %82 = call i8* @__cxa_allocate_exception(i64 8) #14
  %83 = bitcast i8* %82 to i8**
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i64 0, i64 0), i8** %83, align 16
  call void @__cxa_throw(i8* %82, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #16
  unreachable

84:                                               ; preds = %76
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN20SimplePerfSerializerD2Ev(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #8 comdat align 2 {
  %2 = alloca %class.SimplePerfSerializer*, align 8
  store %class.SimplePerfSerializer* %0, %class.SimplePerfSerializer** %2, align 8
  %3 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %2, align 8
  %4 = bitcast %class.SimplePerfSerializer* %3 to %class.PerfSerializer*
  call void @_ZN14PerfSerializerD2Ev(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %4) #14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN20SimplePerfSerializerD0Ev(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #8 comdat align 2 {
  %2 = alloca %class.SimplePerfSerializer*, align 8
  store %class.SimplePerfSerializer* %0, %class.SimplePerfSerializer** %2, align 8
  %3 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %2, align 8
  call void @_ZN20SimplePerfSerializerD2Ev(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %3) #14
  %4 = bitcast %class.SimplePerfSerializer* %3 to i8*
  call void @_ZdlPv(i8* noundef %4) #15
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN20SimplePerfSerializer9SerializeEPK7RDTimer(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %0, %class.RDTimer* noundef %1) unnamed_addr #2 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %31 = call i8* @strtok(i8* noundef %30, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)) #14
  %32 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i64 0, i64 0))
  %39 = call i8* @__cxa_allocate_exception(i64 8) #14
  %40 = bitcast i8* %39 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0), i8** %40, align 16
  call void @__cxa_throw(i8* %39, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #16
  unreachable

41:                                               ; preds = %21
  %42 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %43 = load i8*, i8** %42, align 8
  %44 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  call void @_ZNK7RDTimer4TypeEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %7, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %44)
  %45 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %7) #14
  %46 = call i32 @strcmp(i8* noundef %43, i8* noundef %45) #17
  %47 = icmp ne i32 %46, 0
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %7) #14
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.49, i64 0, i64 0))
  %51 = call i8* @__cxa_allocate_exception(i64 8) #14
  %52 = bitcast i8* %51 to i8**
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i8** %52, align 16
  call void @__cxa_throw(i8* %51, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #16
  unreachable

53:                                               ; preds = %41
  %54 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)) #14
  %55 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %54, i8** %55, align 8
  %56 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %57 = load i8*, i8** %56, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %60, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i64 0, i64 0))
  %62 = call i8* @__cxa_allocate_exception(i64 8) #14
  %63 = bitcast i8* %62 to i8**
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.52, i64 0, i64 0), i8** %63, align 16
  call void @__cxa_throw(i8* %62, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #16
  unreachable

64:                                               ; preds = %53
  %65 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  call void @_ZNK7RDTimer3MsgEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %8, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %68)
  %69 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %8) #14
  %70 = call i32 @strcmp(i8* noundef %67, i8* noundef %69) #17
  %71 = icmp ne i32 %70, 0
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %8) #14
  br i1 %71, label %72, label %86

72:                                               ; preds = %64
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %74 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %75 = load i8*, i8** %74, align 8
  %76 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  call void @_ZNK7RDTimer3MsgEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %9, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %76)
  %77 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %9) #14
  %78 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %73, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.53, i64 0, i64 0), i8* noundef %75, i8* noundef %77)
          to label %79 unwind label %82

79:                                               ; preds = %72
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %9) #14
  %80 = call i8* @__cxa_allocate_exception(i64 8) #14
  %81 = bitcast i8* %80 to i8**
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.54, i64 0, i64 0), i8** %81, align 16
  call void @__cxa_throw(i8* %80, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #16
  unreachable

82:                                               ; preds = %72
  %83 = landingpad { i8*, i32 }
          cleanup
  %84 = extractvalue { i8*, i32 } %83, 0
  store i8* %84, i8** %10, align 8
  %85 = extractvalue { i8*, i32 } %83, 1
  store i32 %85, i32* %11, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %9) #14
  br label %187

86:                                               ; preds = %64
  %87 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)) #14
  %88 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %87, i8** %88, align 8
  %89 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %90 = load i8*, i8** %89, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %93, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.55, i64 0, i64 0))
  %95 = call i8* @__cxa_allocate_exception(i64 8) #14
  %96 = bitcast i8* %95 to i8**
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.56, i64 0, i64 0), i8** %96, align 16
  call void @__cxa_throw(i8* %95, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #16
  unreachable

97:                                               ; preds = %86
  %98 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  %102 = call noundef zeroext i1 @_ZNK7RDTimer12AccumulatingEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %101)
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0)
  %105 = call i32 @strcmp(i8* noundef %100, i8* noundef %104) #17
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %97
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %108, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.59, i64 0, i64 0))
  %110 = call i8* @__cxa_allocate_exception(i64 8) #14
  %111 = bitcast i8* %110 to i8**
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.60, i64 0, i64 0), i8** %111, align 16
  call void @__cxa_throw(i8* %110, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #16
  unreachable

112:                                              ; preds = %97
  %113 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)) #14
  %114 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %113, i8** %114, align 8
  %115 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %116 = load i8*, i8** %115, align 8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %119, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.61, i64 0, i64 0))
  %121 = call i8* @__cxa_allocate_exception(i64 8) #14
  %122 = bitcast i8* %121 to i8**
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0), i8** %122, align 16
  call void @__cxa_throw(i8* %121, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #16
  unreachable

123:                                              ; preds = %112
  %124 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %125 = load i8*, i8** %124, align 8
  %126 = call contract double @atof(i8* noundef %125) #17
  %127 = fptrunc double %126 to float
  store float %127, float* %6, align 4
  %128 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)) #14
  %129 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %128, i8** %129, align 8
  %130 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %131 = load i8*, i8** %130, align 8
  %132 = icmp eq i8* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %123
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %134, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.63, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %123
  %137 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @atoi(i8* noundef %142) #17
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
  %163 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12) #14
  %164 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  invoke void @_ZNK7RDTimer3MsgEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %13, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %164)
          to label %165 unwind label %178

165:                                              ; preds = %150
  %166 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %13) #14
  %167 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  %168 = invoke noundef zeroext i1 @_ZNK7RDTimer12AccumulatingEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %167)
          to label %169 unwind label %182

169:                                              ; preds = %165
  %170 = zext i1 %168 to i64
  %171 = select i1 %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0)
  %172 = load float, float* %6, align 4
  %173 = fpext float %172 to double
  %174 = load i32, i32* %5, align 4
  %175 = add nsw i32 %174, 1
  %176 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %161, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i64 0, i64 0), i8* noundef %163, i8* noundef %166, i8* noundef %171, double noundef %173, i32 noundef %175)
          to label %177 unwind label %182

177:                                              ; preds = %169
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %13) #14
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12) #14
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
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %13) #14
  br label %186

186:                                              ; preds = %182, %178
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12) #14
  br label %187

187:                                              ; preds = %186, %82
  %188 = load i8*, i8** %10, align 8
  %189 = load i32, i32* %11, align 4
  %190 = insertvalue { i8*, i32 } undef, i8* %188, 0
  %191 = insertvalue { i8*, i32 } %190, i32 %189, 1
  resume { i8*, i32 } %191
}

; Function Attrs: nounwind
declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #7

; Function Attrs: nounwind
declare i32 @access(i8* noundef, i32 noundef) #7

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

declare i8* @__cxa_allocate_exception(i64)

declare void @__cxa_throw(i8*, i8*, i8*)

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN14PerfSerializerD2Ev(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %0) unnamed_addr #8 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %15 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i64 0, i64 0))
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
  %27 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.43, i64 0, i64 0))
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
  %41 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.44, i64 0, i64 0), i8* noundef %38, i8* noundef %40)
          to label %42 unwind label %53

42:                                               ; preds = %35
  %43 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %44 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 7
  %45 = getelementptr inbounds [100 x i8], [100 x i8]* %44, i64 0, i64 0
  %46 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 6
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %46, i64 0, i64 0
  %48 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %43, i64 noundef 200, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0), i8* noundef %45, i8* noundef %47) #14
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
  call void @__clang_call_terminate(i8* %55) #18
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN14PerfSerializerD0Ev(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %0) unnamed_addr #8 comdat align 2 {
  %2 = alloca %class.PerfSerializer*, align 8
  store %class.PerfSerializer* %0, %class.PerfSerializer** %2, align 8
  %3 = load %class.PerfSerializer*, %class.PerfSerializer** %2, align 8
  call void @llvm.trap() #18
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #9 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #14
  call void @_ZSt9terminatev() #18
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

declare i32 @system(i8* noundef) #3

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #10

declare i64 @getline(i8** noundef, i64* noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: nounwind
declare i8* @strtok(i8* noundef, i8* noundef) #7

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #11

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK7RDTimer4TypeEv(%"class.std::basic_string"* noalias sret(%"class.std::basic_string") align 8 %0, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %1) #2 comdat align 2 {
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
declare noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) #7

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK7RDTimer3MsgEv(%"class.std::basic_string"* noalias sret(%"class.std::basic_string") align 8 %0, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %1) #2 comdat align 2 {
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
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7RDTimer12AccumulatingEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) #12 comdat align 2 {
  %2 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %2, align 8
  %3 = load %class.RDTimer*, %class.RDTimer** %2, align 8
  %4 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 1
  %5 = load i8, i8* %4, align 8
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: nounwind readonly willreturn
declare double @atof(i8* noundef) #11

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #11

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_ZNK7RDTimer4TimeEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) #12 comdat align 2 {
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

declare void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimerC2ESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0, %"class.std::basic_string"* noundef %1) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #14
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %11, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4)
          to label %12 unwind label %17

12:                                               ; preds = %2
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #14
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
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #14
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %10) #14
  br label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %25 = insertvalue { i8*, i32 } %24, i32 %23, 1
  resume { i8*, i32 } %25
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSEPKc(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10RDTimerCPUD2Ev(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 {
  %2 = alloca %class.RDTimerCPU*, align 8
  store %class.RDTimerCPU* %0, %class.RDTimerCPU** %2, align 8
  %3 = load %class.RDTimerCPU*, %class.RDTimerCPU** %2, align 8
  %4 = bitcast %class.RDTimerCPU* %3 to %class.RDTimer*
  call void @_ZN7RDTimerD2Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %4) #14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10RDTimerCPUD0Ev(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 {
  %2 = alloca %class.RDTimerCPU*, align 8
  store %class.RDTimerCPU* %0, %class.RDTimerCPU** %2, align 8
  %3 = load %class.RDTimerCPU*, %class.RDTimerCPU** %2, align 8
  call void @_ZN10RDTimerCPUD2Ev(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %3) #14
  %4 = bitcast %class.RDTimerCPU* %3 to i8*
  call void @_ZdlPv(i8* noundef %4) #15
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10RDTimerCPU5StartEv(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 comdat align 2 {
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
define linkonce_odr dso_local noundef float @_ZN10RDTimerCPU4StopEv(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 comdat align 2 {
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
define linkonce_odr dso_local noundef float @_ZN10RDTimerCPU10AccumulateEv(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 comdat align 2 {
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
define linkonce_odr dso_local void @_ZN7RDTimerD2Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 {
  %2 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %2, align 8
  %3 = load %class.RDTimer*, %class.RDTimer** %2, align 8
  %4 = bitcast %class.RDTimer* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV7RDTimer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  %5 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 3
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %5) #14
  %6 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 2
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %6) #14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimerD0Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 {
  %2 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %2, align 8
  %3 = load %class.RDTimer*, %class.RDTimer** %2, align 8
  call void @llvm.trap() #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_Z8get_timev() #12 comdat {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @gettimeofday(%struct.timeval* noundef %1, %struct.timezone* noundef null) #14
  %3 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = mul nsw i64 %4, 1000000
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %5, %7
  ret i64 %8
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* noundef, %struct.timezone* noundef) #7

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_Z12elapsed_timexx(i64 noundef %0, i64 noundef %1) #12 comdat {
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

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimer5ResetEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) #12 comdat align 2 {
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

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i64, %struct.knode*, i64, i64*, i64*, i64*, i64*, i32*, i32*, i32*, i32*)** @findRangeK to i8*), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
attributes #2 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind }
attributes #10 = { cold noreturn nounwind }
attributes #11 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 1be90618e508074abc746ab4963d7ad92710d6c5)"}
