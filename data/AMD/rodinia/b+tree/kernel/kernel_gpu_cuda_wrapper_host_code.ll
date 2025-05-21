; ModuleID = 'hip/b+tree/kernel/kernel_gpu_cuda_wrapper.cu'
source_filename = "hip/b+tree/kernel/kernel_gpu_cuda_wrapper.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knode = type { i32, [257 x i32], [257 x i32], i8, i32 }
%struct.record = type { i32 }
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

@findK = constant void (i64, %struct.knode*, i64, %struct.record*, i64*, i64*, i32*, %struct.record*)* @__device_stub__findK, align 8
@.str = private unnamed_addr constant [75 x i8] c"# of blocks = %d, # of threads/block = %d (ensure that device can handle)\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"./b+tree_1\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Malloc Time\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"hipMalloc  recordsD\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"hipMalloc  currKnodeD\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"hipMalloc  offsetD\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"hipMalloc  keysD\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"hipMalloc ansD\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"CPU to GPU Transfer Time\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"hipMalloc hipMemcpy memD\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"hipMalloc hipMemcpy currKnodeD\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"hipMalloc hipMemcpy offsetD\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"hipMalloc hipMemcpy keysD\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"hipMalloc hipMemcpy ansD\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"COMPUTE:Kernel Execution Time\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"findK\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"GPU to CPU Transfer Time\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"hipMemcpy ansD\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"time CPU to GPU memory copy = %lfs\0A\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"time GPU to CPU memory copy back = %lfs\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"time GPU malloc = %lfs\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"time kernel = %lfs\0A\00", align 1
@_ZTV20SimplePerfSerializer = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI20SimplePerfSerializer to i8*), i8* bitcast (void (%class.SimplePerfSerializer*)* @_ZN20SimplePerfSerializerD2Ev to i8*), i8* bitcast (void (%class.SimplePerfSerializer*)* @_ZN20SimplePerfSerializerD0Ev to i8*), i8* bitcast (void (%class.SimplePerfSerializer*, %class.RDTimer*)* @_ZN20SimplePerfSerializer9SerializeEPK7RDTimer to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS20SimplePerfSerializer = linkonce_odr dso_local constant [23 x i8] c"20SimplePerfSerializer\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS14PerfSerializer = linkonce_odr dso_local constant [17 x i8] c"14PerfSerializer\00", comdat, align 1
@_ZTI14PerfSerializer = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @_ZTS14PerfSerializer, i32 0, i32 0) }, comdat, align 8
@_ZTI20SimplePerfSerializer = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @_ZTS20SimplePerfSerializer, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI14PerfSerializer to i8*) }, comdat, align 8
@_ZTV14PerfSerializer = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI14PerfSerializer to i8*), i8* bitcast (void (%class.PerfSerializer*)* @_ZN14PerfSerializerD2Ev to i8*), i8* bitcast (void (%class.PerfSerializer*)* @_ZN14PerfSerializerD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.23 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c".perf\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c".perf.tmp\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.26 = private unnamed_addr constant [13 x i8] c"File exists\0A\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"Could not open 1\0A\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"Could not open\00", align 1
@_ZTIPKc = external constant i8*
@.str.30 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"Could not open 2\0A\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"Could not open 3\0A\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"Opened file %s for performance log\0A\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"did not specify file\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"Closed performance log 1\0A\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"Closed performance log 2\0A\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"COPYING FILE: %s to %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"mv %s %s\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"malformed line\0A\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"malformed line\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"incompatible platform type\0A\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"incompatible platform type\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"malformed line, second token\0A\00", align 1
@.str.45 = private unnamed_addr constant [39 x i8] c"malformed malformed line, second token\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"incompatible message:%s,%s\0A\00", align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"incompatible incompatible message\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"malformed line, third token\0A\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"malformed line, third token\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"ACCUM\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"ONEOFF\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"incompatible timer type\0A\00", align 1
@.str.53 = private unnamed_addr constant [37 x i8] c"incompatible incompatible timer type\00", align 1
@.str.54 = private unnamed_addr constant [28 x i8] c"malformed line forth token\0A\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"malformed line forth token\00", align 1
@.str.56 = private unnamed_addr constant [66 x i8] c"INFO: number of trials so far not found. Old format. Will update\0A\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"%s, %s, %s, %f, %d\0A\00", align 1
@_ZTV10RDTimerCPU = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI10RDTimerCPU to i8*), i8* bitcast (void (%class.RDTimerCPU*)* @_ZN10RDTimerCPUD2Ev to i8*), i8* bitcast (void (%class.RDTimerCPU*)* @_ZN10RDTimerCPUD0Ev to i8*), i8* bitcast (void (%class.RDTimerCPU*)* @_ZN10RDTimerCPU5StartEv to i8*), i8* bitcast (float (%class.RDTimerCPU*)* @_ZN10RDTimerCPU4StopEv to i8*), i8* bitcast (float (%class.RDTimerCPU*)* @_ZN10RDTimerCPU10AccumulateEv to i8*)] }, comdat, align 8
@.str.58 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@_ZTS10RDTimerCPU = linkonce_odr dso_local constant [13 x i8] c"10RDTimerCPU\00", comdat, align 1
@_ZTS7RDTimer = linkonce_odr dso_local constant [9 x i8] c"7RDTimer\00", comdat, align 1
@_ZTI7RDTimer = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_ZTS7RDTimer, i32 0, i32 0) }, comdat, align 8
@_ZTI10RDTimerCPU = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @_ZTS10RDTimerCPU, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7RDTimer to i8*) }, comdat, align 8
@_ZTV7RDTimer = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI7RDTimer to i8*), i8* bitcast (void (%class.RDTimer*)* @_ZN7RDTimerD2Ev to i8*), i8* bitcast (void (%class.RDTimer*)* @_ZN7RDTimerD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.59 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @__device_stub__findK(i64 noundef %0, %struct.knode* noundef %1, i64 noundef %2, %struct.record* noundef %3, i64* noundef %4, i64* noundef %5, i32* noundef %6, %struct.record* noundef %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.knode*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.record*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.record*, align 8
  %17 = alloca %struct.dim3, align 8
  %18 = alloca %struct.dim3, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca { i64, i32 }, align 8
  %22 = alloca { i64, i32 }, align 8
  store i64 %0, i64* %9, align 8
  store %struct.knode* %1, %struct.knode** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.record* %3, %struct.record** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.record* %7, %struct.record** %16, align 8
  %23 = alloca i8*, i64 8, align 16
  %24 = bitcast i64* %9 to i8*
  %25 = getelementptr i8*, i8** %23, i32 0
  store i8* %24, i8** %25, align 8
  %26 = bitcast %struct.knode** %10 to i8*
  %27 = getelementptr i8*, i8** %23, i32 1
  store i8* %26, i8** %27, align 8
  %28 = bitcast i64* %11 to i8*
  %29 = getelementptr i8*, i8** %23, i32 2
  store i8* %28, i8** %29, align 8
  %30 = bitcast %struct.record** %12 to i8*
  %31 = getelementptr i8*, i8** %23, i32 3
  store i8* %30, i8** %31, align 8
  %32 = bitcast i64** %13 to i8*
  %33 = getelementptr i8*, i8** %23, i32 4
  store i8* %32, i8** %33, align 8
  %34 = bitcast i64** %14 to i8*
  %35 = getelementptr i8*, i8** %23, i32 5
  store i8* %34, i8** %35, align 8
  %36 = bitcast i32** %15 to i8*
  %37 = getelementptr i8*, i8** %23, i32 6
  store i8* %36, i8** %37, align 8
  %38 = bitcast %struct.record** %16 to i8*
  %39 = getelementptr i8*, i8** %23, i32 7
  store i8* %38, i8** %39, align 8
  %40 = call i32 @__hipPopCallConfiguration(%struct.dim3* %17, %struct.dim3* %18, i64* %19, i8** %20)
  %41 = load i64, i64* %19, align 8
  %42 = load i8*, i8** %20, align 8
  %43 = bitcast { i64, i32 }* %21 to i8*
  %44 = bitcast %struct.dim3* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 12, i1 false)
  %45 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = bitcast { i64, i32 }* %22 to i8*
  %50 = bitcast %struct.dim3* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 12, i1 false)
  %51 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = bitcast i8* %42 to %struct.ihipStream_t*
  %56 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i64, %struct.knode*, i64, %struct.record*, i64*, i64*, i32*, %struct.record*)** @findK to i8*), i64 %46, i32 %48, i64 %52, i32 %54, i8** noundef %23, i64 noundef %41, %struct.ihipStream_t* noundef %55)
  br label %57

57:                                               ; preds = %8
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @kernel_gpu_cuda_wrapper(%struct.record* noundef %0, i64 noundef %1, %struct.knode* noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i64 noundef %6, i32 noundef %7, i64* noundef %8, i64* noundef %9, i32* noundef %10, %struct.record* noundef %11) #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %13 = alloca %struct.record*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.knode*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.record*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca %class.SimplePerfSerializer*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca %class.RDTimerCPU*, align 8
  %35 = alloca %"class.std::basic_string", align 8
  %36 = alloca %"class.std::allocator", align 1
  %37 = alloca i1, align 1
  %38 = alloca %"class.std::basic_string", align 8
  %39 = alloca %"class.std::allocator", align 1
  %40 = alloca %struct.record*, align 8
  %41 = alloca %struct.knode*, align 8
  %42 = alloca i64*, align 8
  %43 = alloca i64*, align 8
  %44 = alloca i32*, align 8
  %45 = alloca %struct.record*, align 8
  %46 = alloca %"class.std::basic_string", align 8
  %47 = alloca %"class.std::allocator", align 1
  %48 = alloca %"class.std::basic_string", align 8
  %49 = alloca %"class.std::allocator", align 1
  %50 = alloca %struct.dim3, align 4
  %51 = alloca %struct.dim3, align 4
  %52 = alloca { i64, i32 }, align 4
  %53 = alloca { i64, i32 }, align 4
  %54 = alloca %"class.std::basic_string", align 8
  %55 = alloca %"class.std::allocator", align 1
  store %struct.record* %0, %struct.record** %13, align 8
  store i64 %1, i64* %14, align 8
  store %struct.knode* %2, %struct.knode** %15, align 8
  store i64 %3, i64* %16, align 8
  store i64 %4, i64* %17, align 8
  store i32 %5, i32* %18, align 4
  store i64 %6, i64* %19, align 8
  store i32 %7, i32* %20, align 4
  store i64* %8, i64** %21, align 8
  store i64* %9, i64** %22, align 8
  store i32* %10, i32** %23, align 8
  store %struct.record* %11, %struct.record** %24, align 8
  %56 = call i32 @hipDeviceSynchronize()
  %57 = load i32, i32* %20, align 4
  store i32 %57, i32* %25, align 4
  %58 = load i32, i32* %18, align 4
  %59 = icmp slt i32 %58, 1024
  br i1 %59, label %60, label %62

60:                                               ; preds = %12
  %61 = load i32, i32* %18, align 4
  br label %63

62:                                               ; preds = %12
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i32 [ %61, %60 ], [ 1024, %62 ]
  store i32 %64, i32* %26, align 4
  %65 = load i32, i32* %25, align 4
  %66 = load i32, i32* %26, align 4
  %67 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 noundef %65, i32 noundef %66)
  %68 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 272) #13
  %69 = bitcast i8* %68 to %class.SimplePerfSerializer*
  invoke void @_ZN20SimplePerfSerializerC2EPc(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %69, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
          to label %70 unwind label %225

70:                                               ; preds = %63
  store %class.SimplePerfSerializer* %69, %class.SimplePerfSerializer** %31, align 8
  %71 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 56) #13
  store i1 true, i1* %37, align 1
  %72 = bitcast i8* %71 to %class.RDTimerCPU*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %36) #14
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %35, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %36)
          to label %73 unwind label %229

73:                                               ; preds = %70
  invoke void @_ZN10RDTimerCPUC2ESs(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %72, %"class.std::basic_string"* noundef %35)
          to label %74 unwind label %233

74:                                               ; preds = %73
  store i1 false, i1* %37, align 1
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %35) #14
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %36) #14
  store %class.RDTimerCPU* %72, %class.RDTimerCPU** %34, align 8
  %75 = load %class.RDTimerCPU*, %class.RDTimerCPU** %34, align 8
  %76 = bitcast %class.RDTimerCPU* %75 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %39) #14
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %38, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %39)
          to label %77 unwind label %241

77:                                               ; preds = %74
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %76, %"class.std::basic_string"* noundef %38)
          to label %78 unwind label %245

78:                                               ; preds = %77
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %38) #14
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %39) #14
  %79 = load %class.RDTimerCPU*, %class.RDTimerCPU** %34, align 8
  %80 = bitcast %class.RDTimerCPU* %79 to void (%class.RDTimerCPU*)***
  %81 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %80, align 8
  %82 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %81, i64 2
  %83 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %82, align 8
  call void %83(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %79)
  %84 = bitcast %struct.record** %40 to i8**
  %85 = load i64, i64* %14, align 8
  %86 = call i32 @hipMalloc(i8** noundef %84, i64 noundef %85)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %87 = bitcast %struct.knode** %41 to i8**
  %88 = load i64, i64* %17, align 8
  %89 = call i32 @hipMalloc(i8** noundef %87, i64 noundef %88)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %90 = bitcast i64** %42 to i8**
  %91 = load i32, i32* %20, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 8
  %94 = call i32 @hipMalloc(i8** noundef %90, i64 noundef %93)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %95 = bitcast i64** %43 to i8**
  %96 = load i32, i32* %20, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 8
  %99 = call i32 @hipMalloc(i8** noundef %95, i64 noundef %98)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %100 = bitcast i32** %44 to i8**
  %101 = load i32, i32* %20, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 4
  %104 = call i32 @hipMalloc(i8** noundef %100, i64 noundef %103)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %105 = bitcast %struct.record** %45 to i8**
  %106 = load i32, i32* %20, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  %109 = call i32 @hipMalloc(i8** noundef %105, i64 noundef %108)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %110 = load %class.RDTimerCPU*, %class.RDTimerCPU** %34, align 8
  %111 = bitcast %class.RDTimerCPU* %110 to float (%class.RDTimerCPU*)***
  %112 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %111, align 8
  %113 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %112, i64 3
  %114 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %113, align 8
  %115 = call contract noundef float %114(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %110)
  store float %115, float* %27, align 4
  %116 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %31, align 8
  %117 = load %class.RDTimerCPU*, %class.RDTimerCPU** %34, align 8
  %118 = bitcast %class.RDTimerCPU* %117 to %class.RDTimer*
  %119 = bitcast %class.SimplePerfSerializer* %116 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %120 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %119, align 8
  %121 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %120, i64 2
  %122 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %121, align 8
  call void %122(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %116, %class.RDTimer* noundef %118)
  %123 = load %class.RDTimerCPU*, %class.RDTimerCPU** %34, align 8
  %124 = bitcast %class.RDTimerCPU* %123 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %47) #14
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %46, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %47)
          to label %125 unwind label %250

125:                                              ; preds = %78
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %124, %"class.std::basic_string"* noundef %46)
          to label %126 unwind label %254

126:                                              ; preds = %125
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %46) #14
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %47) #14
  %127 = load %class.RDTimerCPU*, %class.RDTimerCPU** %34, align 8
  %128 = bitcast %class.RDTimerCPU* %127 to void (%class.RDTimerCPU*)***
  %129 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %128, align 8
  %130 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %129, i64 2
  %131 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %130, align 8
  call void %131(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %127)
  %132 = load %struct.record*, %struct.record** %40, align 8
  %133 = bitcast %struct.record* %132 to i8*
  %134 = load %struct.record*, %struct.record** %13, align 8
  %135 = bitcast %struct.record* %134 to i8*
  %136 = load i64, i64* %14, align 8
  %137 = call i32 @hipMemcpy(i8* noundef %133, i8* noundef %135, i64 noundef %136, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %138 = load %struct.knode*, %struct.knode** %41, align 8
  %139 = bitcast %struct.knode* %138 to i8*
  %140 = load %struct.knode*, %struct.knode** %15, align 8
  %141 = bitcast %struct.knode* %140 to i8*
  %142 = load i64, i64* %17, align 8
  %143 = call i32 @hipMemcpy(i8* noundef %139, i8* noundef %141, i64 noundef %142, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %144 = load i64*, i64** %42, align 8
  %145 = bitcast i64* %144 to i8*
  %146 = load i64*, i64** %21, align 8
  %147 = bitcast i64* %146 to i8*
  %148 = load i32, i32* %20, align 4
  %149 = sext i32 %148 to i64
  %150 = mul i64 %149, 8
  %151 = call i32 @hipMemcpy(i8* noundef %145, i8* noundef %147, i64 noundef %150, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %152 = load i64*, i64** %43, align 8
  %153 = bitcast i64* %152 to i8*
  %154 = load i64*, i64** %22, align 8
  %155 = bitcast i64* %154 to i8*
  %156 = load i32, i32* %20, align 4
  %157 = sext i32 %156 to i64
  %158 = mul i64 %157, 8
  %159 = call i32 @hipMemcpy(i8* noundef %153, i8* noundef %155, i64 noundef %158, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %160 = load i32*, i32** %44, align 8
  %161 = bitcast i32* %160 to i8*
  %162 = load i32*, i32** %23, align 8
  %163 = bitcast i32* %162 to i8*
  %164 = load i32, i32* %20, align 4
  %165 = sext i32 %164 to i64
  %166 = mul i64 %165, 4
  %167 = call i32 @hipMemcpy(i8* noundef %161, i8* noundef %163, i64 noundef %166, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %168 = load %struct.record*, %struct.record** %45, align 8
  %169 = bitcast %struct.record* %168 to i8*
  %170 = load %struct.record*, %struct.record** %24, align 8
  %171 = bitcast %struct.record* %170 to i8*
  %172 = load i32, i32* %20, align 4
  %173 = sext i32 %172 to i64
  %174 = mul i64 %173, 4
  %175 = call i32 @hipMemcpy(i8* noundef %169, i8* noundef %171, i64 noundef %174, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  %176 = load %class.RDTimerCPU*, %class.RDTimerCPU** %34, align 8
  %177 = bitcast %class.RDTimerCPU* %176 to float (%class.RDTimerCPU*)***
  %178 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %177, align 8
  %179 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %178, i64 3
  %180 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %179, align 8
  %181 = call contract noundef float %180(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %176)
  store float %181, float* %28, align 4
  %182 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %31, align 8
  %183 = load %class.RDTimerCPU*, %class.RDTimerCPU** %34, align 8
  %184 = bitcast %class.RDTimerCPU* %183 to %class.RDTimer*
  %185 = bitcast %class.SimplePerfSerializer* %182 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %186 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %185, align 8
  %187 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %186, i64 2
  %188 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %187, align 8
  call void %188(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %182, %class.RDTimer* noundef %184)
  %189 = load %class.RDTimerCPU*, %class.RDTimerCPU** %34, align 8
  %190 = bitcast %class.RDTimerCPU* %189 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %49) #14
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %48, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %49)
          to label %191 unwind label %259

191:                                              ; preds = %126
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %190, %"class.std::basic_string"* noundef %48)
          to label %192 unwind label %263

192:                                              ; preds = %191
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %48) #14
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %49) #14
  %193 = call i32 @hipDeviceSynchronize()
  %194 = load %class.RDTimerCPU*, %class.RDTimerCPU** %34, align 8
  %195 = bitcast %class.RDTimerCPU* %194 to void (%class.RDTimerCPU*)***
  %196 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %195, align 8
  %197 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %196, i64 2
  %198 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %197, align 8
  call void %198(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %194)
  br label %199

199:                                              ; preds = %192
  %200 = load i32, i32* %25, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %50, i32 noundef %200, i32 noundef 1, i32 noundef 1)
  %201 = load i32, i32* %26, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %51, i32 noundef %201, i32 noundef 1, i32 noundef 1)
  %202 = bitcast { i64, i32 }* %52 to i8*
  %203 = bitcast %struct.dim3* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %202, i8* align 4 %203, i64 12, i1 false)
  %204 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %52, i32 0, i32 0
  %205 = load i64, i64* %204, align 4
  %206 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %52, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = bitcast { i64, i32 }* %53 to i8*
  %209 = bitcast %struct.dim3* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %208, i8* align 4 %209, i64 12, i1 false)
  %210 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %53, i32 0, i32 0
  %211 = load i64, i64* %210, align 4
  %212 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %53, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @__hipPushCallConfiguration(i64 %205, i32 %207, i64 %211, i32 %213, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %268, label %216

216:                                              ; preds = %199
  %217 = load i64, i64* %19, align 8
  %218 = load %struct.knode*, %struct.knode** %41, align 8
  %219 = load i64, i64* %16, align 8
  %220 = load %struct.record*, %struct.record** %40, align 8
  %221 = load i64*, i64** %42, align 8
  %222 = load i64*, i64** %43, align 8
  %223 = load i32*, i32** %44, align 8
  %224 = load %struct.record*, %struct.record** %45, align 8
  call void @__device_stub__findK(i64 noundef %217, %struct.knode* noundef %218, i64 noundef %219, %struct.record* noundef %220, i64* noundef %221, i64* noundef %222, i32* noundef %223, %struct.record* noundef %224)
  br label %268

225:                                              ; preds = %63
  %226 = landingpad { i8*, i32 }
          cleanup
  %227 = extractvalue { i8*, i32 } %226, 0
  store i8* %227, i8** %32, align 8
  %228 = extractvalue { i8*, i32 } %226, 1
  store i32 %228, i32* %33, align 4
  call void @_ZdlPv(i8* noundef %68) #15
  br label %369

229:                                              ; preds = %70
  %230 = landingpad { i8*, i32 }
          cleanup
  %231 = extractvalue { i8*, i32 } %230, 0
  store i8* %231, i8** %32, align 8
  %232 = extractvalue { i8*, i32 } %230, 1
  store i32 %232, i32* %33, align 4
  br label %237

233:                                              ; preds = %73
  %234 = landingpad { i8*, i32 }
          cleanup
  %235 = extractvalue { i8*, i32 } %234, 0
  store i8* %235, i8** %32, align 8
  %236 = extractvalue { i8*, i32 } %234, 1
  store i32 %236, i32* %33, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %35) #14
  br label %237

237:                                              ; preds = %233, %229
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %36) #14
  %238 = load i1, i1* %37, align 1
  br i1 %238, label %239, label %240

239:                                              ; preds = %237
  call void @_ZdlPv(i8* noundef %71) #15
  br label %240

240:                                              ; preds = %239, %237
  br label %369

241:                                              ; preds = %74
  %242 = landingpad { i8*, i32 }
          cleanup
  %243 = extractvalue { i8*, i32 } %242, 0
  store i8* %243, i8** %32, align 8
  %244 = extractvalue { i8*, i32 } %242, 1
  store i32 %244, i32* %33, align 4
  br label %249

245:                                              ; preds = %77
  %246 = landingpad { i8*, i32 }
          cleanup
  %247 = extractvalue { i8*, i32 } %246, 0
  store i8* %247, i8** %32, align 8
  %248 = extractvalue { i8*, i32 } %246, 1
  store i32 %248, i32* %33, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %38) #14
  br label %249

249:                                              ; preds = %245, %241
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %39) #14
  br label %369

250:                                              ; preds = %78
  %251 = landingpad { i8*, i32 }
          cleanup
  %252 = extractvalue { i8*, i32 } %251, 0
  store i8* %252, i8** %32, align 8
  %253 = extractvalue { i8*, i32 } %251, 1
  store i32 %253, i32* %33, align 4
  br label %258

254:                                              ; preds = %125
  %255 = landingpad { i8*, i32 }
          cleanup
  %256 = extractvalue { i8*, i32 } %255, 0
  store i8* %256, i8** %32, align 8
  %257 = extractvalue { i8*, i32 } %255, 1
  store i32 %257, i32* %33, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %46) #14
  br label %258

258:                                              ; preds = %254, %250
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %47) #14
  br label %369

259:                                              ; preds = %126
  %260 = landingpad { i8*, i32 }
          cleanup
  %261 = extractvalue { i8*, i32 } %260, 0
  store i8* %261, i8** %32, align 8
  %262 = extractvalue { i8*, i32 } %260, 1
  store i32 %262, i32* %33, align 4
  br label %267

263:                                              ; preds = %191
  %264 = landingpad { i8*, i32 }
          cleanup
  %265 = extractvalue { i8*, i32 } %264, 0
  store i8* %265, i8** %32, align 8
  %266 = extractvalue { i8*, i32 } %264, 1
  store i32 %266, i32* %33, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %48) #14
  br label %267

267:                                              ; preds = %263, %259
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %49) #14
  br label %369

268:                                              ; preds = %216, %199
  br label %269

269:                                              ; preds = %268
  %270 = call i32 @hipDeviceSynchronize()
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %271 = load %class.RDTimerCPU*, %class.RDTimerCPU** %34, align 8
  %272 = bitcast %class.RDTimerCPU* %271 to float (%class.RDTimerCPU*)***
  %273 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %272, align 8
  %274 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %273, i64 3
  %275 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %274, align 8
  %276 = call contract noundef float %275(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %271)
  store float %276, float* %29, align 4
  %277 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %31, align 8
  %278 = load %class.RDTimerCPU*, %class.RDTimerCPU** %34, align 8
  %279 = bitcast %class.RDTimerCPU* %278 to %class.RDTimer*
  %280 = bitcast %class.SimplePerfSerializer* %277 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %281 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %280, align 8
  %282 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %281, i64 2
  %283 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %282, align 8
  call void %283(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %277, %class.RDTimer* noundef %279)
  %284 = load %class.RDTimerCPU*, %class.RDTimerCPU** %34, align 8
  %285 = bitcast %class.RDTimerCPU* %284 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %55) #14
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %54, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %55)
          to label %286 unwind label %360

286:                                              ; preds = %269
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %285, %"class.std::basic_string"* noundef %54)
          to label %287 unwind label %364

287:                                              ; preds = %286
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %54) #14
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %55) #14
  %288 = load %class.RDTimerCPU*, %class.RDTimerCPU** %34, align 8
  %289 = bitcast %class.RDTimerCPU* %288 to void (%class.RDTimerCPU*)***
  %290 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %289, align 8
  %291 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %290, i64 2
  %292 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %291, align 8
  call void %292(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %288)
  %293 = load %struct.record*, %struct.record** %24, align 8
  %294 = bitcast %struct.record* %293 to i8*
  %295 = load %struct.record*, %struct.record** %45, align 8
  %296 = bitcast %struct.record* %295 to i8*
  %297 = load i32, i32* %20, align 4
  %298 = sext i32 %297 to i64
  %299 = mul i64 %298, 4
  %300 = call i32 @hipMemcpy(i8* noundef %294, i8* noundef %296, i64 noundef %299, i32 noundef 2)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %301 = load %class.RDTimerCPU*, %class.RDTimerCPU** %34, align 8
  %302 = bitcast %class.RDTimerCPU* %301 to float (%class.RDTimerCPU*)***
  %303 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %302, align 8
  %304 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %303, i64 3
  %305 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %304, align 8
  %306 = call contract noundef float %305(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %301)
  store float %306, float* %30, align 4
  %307 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %31, align 8
  %308 = load %class.RDTimerCPU*, %class.RDTimerCPU** %34, align 8
  %309 = bitcast %class.RDTimerCPU* %308 to %class.RDTimer*
  %310 = bitcast %class.SimplePerfSerializer* %307 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %311 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %310, align 8
  %312 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %311, i64 2
  %313 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %312, align 8
  call void %313(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %307, %class.RDTimer* noundef %309)
  %314 = load %struct.record*, %struct.record** %40, align 8
  %315 = bitcast %struct.record* %314 to i8*
  %316 = call i32 @hipFree(i8* noundef %315)
  %317 = load %struct.knode*, %struct.knode** %41, align 8
  %318 = bitcast %struct.knode* %317 to i8*
  %319 = call i32 @hipFree(i8* noundef %318)
  %320 = load i64*, i64** %42, align 8
  %321 = bitcast i64* %320 to i8*
  %322 = call i32 @hipFree(i8* noundef %321)
  %323 = load i64*, i64** %43, align 8
  %324 = bitcast i64* %323 to i8*
  %325 = call i32 @hipFree(i8* noundef %324)
  %326 = load i32*, i32** %44, align 8
  %327 = bitcast i32* %326 to i8*
  %328 = call i32 @hipFree(i8* noundef %327)
  %329 = load %struct.record*, %struct.record** %45, align 8
  %330 = bitcast %struct.record* %329 to i8*
  %331 = call i32 @hipFree(i8* noundef %330)
  %332 = load float, float* %28, align 4
  %333 = fpext float %332 to double
  %334 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0), double noundef %333)
  %335 = load float, float* %30, align 4
  %336 = fpext float %335 to double
  %337 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0), double noundef %336)
  %338 = load float, float* %27, align 4
  %339 = fpext float %338 to double
  %340 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0), double noundef %339)
  %341 = load float, float* %29, align 4
  %342 = fpext float %341 to double
  %343 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), double noundef %342)
  %344 = load %class.RDTimerCPU*, %class.RDTimerCPU** %34, align 8
  %345 = icmp eq %class.RDTimerCPU* %344, null
  br i1 %345, label %351, label %346

346:                                              ; preds = %287
  %347 = bitcast %class.RDTimerCPU* %344 to void (%class.RDTimerCPU*)***
  %348 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %347, align 8
  %349 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %348, i64 1
  %350 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %349, align 8
  call void %350(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %344) #14
  br label %351

351:                                              ; preds = %346, %287
  %352 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %31, align 8
  %353 = icmp eq %class.SimplePerfSerializer* %352, null
  br i1 %353, label %359, label %354

354:                                              ; preds = %351
  %355 = bitcast %class.SimplePerfSerializer* %352 to void (%class.SimplePerfSerializer*)***
  %356 = load void (%class.SimplePerfSerializer*)**, void (%class.SimplePerfSerializer*)*** %355, align 8
  %357 = getelementptr inbounds void (%class.SimplePerfSerializer*)*, void (%class.SimplePerfSerializer*)** %356, i64 1
  %358 = load void (%class.SimplePerfSerializer*)*, void (%class.SimplePerfSerializer*)** %357, align 8
  call void %358(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %352) #14
  br label %359

359:                                              ; preds = %354, %351
  ret void

360:                                              ; preds = %269
  %361 = landingpad { i8*, i32 }
          cleanup
  %362 = extractvalue { i8*, i32 } %361, 0
  store i8* %362, i8** %32, align 8
  %363 = extractvalue { i8*, i32 } %361, 1
  store i32 %363, i32* %33, align 4
  br label %368

364:                                              ; preds = %286
  %365 = landingpad { i8*, i32 }
          cleanup
  %366 = extractvalue { i8*, i32 } %365, 0
  store i8* %366, i8** %32, align 8
  %367 = extractvalue { i8*, i32 } %365, 1
  store i32 %367, i32* %33, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %54) #14
  br label %368

368:                                              ; preds = %364, %360
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %55) #14
  br label %369

369:                                              ; preds = %368, %267, %258, %249, %240, %225
  %370 = load i8*, i8** %32, align 8
  %371 = load i32, i32* %33, align 4
  %372 = insertvalue { i8*, i32 } undef, i8* %370, 0
  %373 = insertvalue { i8*, i32 } %372, i32 %371, 1
  resume { i8*, i32 } %373
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
  %13 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSEPKc(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0))
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
  %17 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %15, i64 noundef 100, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* noundef %16, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0)) #14
  %18 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 7
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %18, i64 0, i64 0
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %19, i64 noundef 100, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* noundef %20, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0)) #14
  %22 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0
  %24 = call i32 @access(i8* noundef %23, i32 noundef 0) #14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %13
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0))
  %29 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %29, i64 0, i64 0
  %31 = call %struct._IO_FILE* @fopen(i8* noundef %30, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0))
  %32 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  store %struct._IO_FILE* %31, %struct._IO_FILE** %32, align 8
  %33 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %33, align 8
  %35 = icmp eq %struct._IO_FILE* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0))
  %39 = call i8* @__cxa_allocate_exception(i64 8) #14
  %40 = bitcast i8* %39 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i8** %40, align 16
  call void @__cxa_throw(i8* %39, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #16
  unreachable

41:                                               ; preds = %26
  %42 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 7
  %43 = getelementptr inbounds [100 x i8], [100 x i8]* %42, i64 0, i64 0
  %44 = call %struct._IO_FILE* @fopen(i8* noundef %43, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0))
  %45 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  store %struct._IO_FILE* %44, %struct._IO_FILE** %45, align 8
  %46 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %46, align 8
  %48 = icmp eq %struct._IO_FILE* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0))
  %52 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %52, align 8
  %54 = call i32 @fclose(%struct._IO_FILE* noundef %53)
  %55 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  store %struct._IO_FILE* null, %struct._IO_FILE** %55, align 8
  %56 = call i8* @__cxa_allocate_exception(i64 8) #14
  %57 = bitcast i8* %56 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i8** %57, align 16
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
  %64 = call %struct._IO_FILE* @fopen(i8* noundef %63, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0))
  %65 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  store %struct._IO_FILE* %64, %struct._IO_FILE** %65, align 8
  %66 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %66, align 8
  %68 = icmp eq %struct._IO_FILE* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0))
  %72 = call i8* @__cxa_allocate_exception(i64 8) #14
  %73 = bitcast i8* %72 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i8** %73, align 16
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
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %77, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i8* noundef %79)
  br label %84

81:                                               ; preds = %2
  %82 = call i8* @__cxa_allocate_exception(i64 8) #14
  %83 = bitcast i8* %82 to i8**
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i64 0, i64 0), i8** %83, align 16
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
  %31 = call i8* @strtok(i8* noundef %30, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0)) #14
  %32 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i64 0, i64 0))
  %39 = call i8* @__cxa_allocate_exception(i64 8) #14
  %40 = bitcast i8* %39 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i64 0, i64 0), i8** %40, align 16
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
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i64 0, i64 0))
  %51 = call i8* @__cxa_allocate_exception(i64 8) #14
  %52 = bitcast i8* %51 to i8**
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i64 0, i64 0), i8** %52, align 16
  call void @__cxa_throw(i8* %51, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #16
  unreachable

53:                                               ; preds = %41
  %54 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0)) #14
  %55 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %54, i8** %55, align 8
  %56 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %57 = load i8*, i8** %56, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %60, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i64 0, i64 0))
  %62 = call i8* @__cxa_allocate_exception(i64 8) #14
  %63 = bitcast i8* %62 to i8**
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.45, i64 0, i64 0), i8** %63, align 16
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
  %78 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %73, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.46, i64 0, i64 0), i8* noundef %75, i8* noundef %77)
          to label %79 unwind label %82

79:                                               ; preds = %72
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %9) #14
  %80 = call i8* @__cxa_allocate_exception(i64 8) #14
  %81 = bitcast i8* %80 to i8**
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.47, i64 0, i64 0), i8** %81, align 16
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
  %87 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0)) #14
  %88 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %87, i8** %88, align 8
  %89 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %90 = load i8*, i8** %89, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %93, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i64 0, i64 0))
  %95 = call i8* @__cxa_allocate_exception(i64 8) #14
  %96 = bitcast i8* %95 to i8**
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.49, i64 0, i64 0), i8** %96, align 16
  call void @__cxa_throw(i8* %95, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #16
  unreachable

97:                                               ; preds = %86
  %98 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  %102 = call noundef zeroext i1 @_ZNK7RDTimer12AccumulatingEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %101)
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0)
  %105 = call i32 @strcmp(i8* noundef %100, i8* noundef %104) #17
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %97
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %108, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.52, i64 0, i64 0))
  %110 = call i8* @__cxa_allocate_exception(i64 8) #14
  %111 = bitcast i8* %110 to i8**
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.53, i64 0, i64 0), i8** %111, align 16
  call void @__cxa_throw(i8* %110, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #16
  unreachable

112:                                              ; preds = %97
  %113 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0)) #14
  %114 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %113, i8** %114, align 8
  %115 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %116 = load i8*, i8** %115, align 8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %119, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.54, i64 0, i64 0))
  %121 = call i8* @__cxa_allocate_exception(i64 8) #14
  %122 = bitcast i8* %121 to i8**
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i64 0, i64 0), i8** %122, align 16
  call void @__cxa_throw(i8* %121, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #16
  unreachable

123:                                              ; preds = %112
  %124 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %125 = load i8*, i8** %124, align 8
  %126 = call contract double @atof(i8* noundef %125) #17
  %127 = fptrunc double %126 to float
  store float %127, float* %6, align 4
  %128 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0)) #14
  %129 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %128, i8** %129, align 8
  %130 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %131 = load i8*, i8** %130, align 8
  %132 = icmp eq i8* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %123
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %134, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.56, i64 0, i64 0))
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
  %171 = select i1 %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0)
  %172 = load float, float* %6, align 4
  %173 = fpext float %172 to double
  %174 = load i32, i32* %5, align 4
  %175 = add nsw i32 %174, 1
  %176 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %161, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i64 0, i64 0), i8* noundef %163, i8* noundef %166, i8* noundef %171, double noundef %173, i32 noundef %175)
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
  %15 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i64 0, i64 0))
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
  %27 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.36, i64 0, i64 0))
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
  %41 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i64 0, i64 0), i8* noundef %38, i8* noundef %40)
          to label %42 unwind label %53

42:                                               ; preds = %35
  %43 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %44 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 7
  %45 = getelementptr inbounds [100 x i8], [100 x i8]* %44, i64 0, i64 0
  %46 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 6
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %46, i64 0, i64 0
  %48 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %43, i64 noundef 200, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), i8* noundef %45, i8* noundef %47) #14
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
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %11, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4)
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
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i64, %struct.knode*, i64, %struct.record*, i64*, i64*, i32*, %struct.record*)** @findK to i8*), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
