; ModuleID = 'hip/bfs/bfs.hip.cu'
source_filename = "hip/bfs/bfs.hip.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Node = type { i32, i32 }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque
%struct.timeval = type { i64, i64 }
%class.RDTimerCPU = type { %class.RDTimer }
%class.RDTimer = type { i32 (...)**, i8, %"class.std::basic_string", %"class.std::basic_string", i64, i64, float, float }
%"class.std::basic_string" = type { %"struct.std::basic_string<char>::_Alloc_hider" }
%"struct.std::basic_string<char>::_Alloc_hider" = type { i8* }
%"class.std::allocator" = type { i8 }
%class.SimplePerfSerializer = type { %class.PerfSerializer.base, i32, i64, i8*, i64, i8* }
%class.PerfSerializer.base = type <{ i32 (...)**, i8, [7 x i8], %struct._IO_FILE*, %struct._IO_FILE*, i8, [100 x i8], [100 x i8] }>
%struct.timezone = type { i32, i32 }
%class.PerfSerializer = type <{ i32 (...)**, i8, [7 x i8], %struct._IO_FILE*, %struct._IO_FILE*, i8, [100 x i8], [100 x i8], [7 x i8] }>

$_ZN10RDTimerCPUC2ESs = comdat any

$_ZN7RDTimer5ResetESs = comdat any

$_ZN20SimplePerfSerializerC2EPc = comdat any

$_ZN4dim3C2Ejjj = comdat any

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

@no_of_nodes = dso_local global i32 0, align 4
@edge_list_size = dso_local global i32 0, align 4
@fp = dso_local global %struct._IO_FILE* null, align 8
@_Z6KernelP4NodePiPbS2_S2_S1_i = constant void (%struct.Node*, i32*, i8*, i8*, i8*, i32*, i32)* @_Z21__device_stub__KernelP4NodePiPbS2_S2_S1_i, align 8
@_Z7Kernel2PbS_S_S_i = constant void (i8*, i8*, i8*, i8*, i32)* @_Z22__device_stub__Kernel2PbS_S_S_i, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [24 x i8] c"Usage: %s <input_file>\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Overall CPU Time\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Reading File\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Error Reading graph file\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Read File\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Malloc Time\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"CPU to GPU Transfer Time\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Copied Everything to GPU memory\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Start traversing the tree\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"COMPUTE:Kernel Execution Time\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"GPU to CPU Transfer Time\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Kernel Executed %d times\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"result.txt\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"%d) cost:%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"Result stored in result.txt\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"time CPU to GPU memory copy = %lfs\0A\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"time GPU to CPU memory copy back = %lfs\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"time GPU malloc = %lfs\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"time kernel = %lfs\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"Overall CPU time = %lfs\0A\00", align 1
@_ZTV10RDTimerCPU = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI10RDTimerCPU to i8*), i8* bitcast (void (%class.RDTimerCPU*)* @_ZN10RDTimerCPUD2Ev to i8*), i8* bitcast (void (%class.RDTimerCPU*)* @_ZN10RDTimerCPUD0Ev to i8*), i8* bitcast (void (%class.RDTimerCPU*)* @_ZN10RDTimerCPU5StartEv to i8*), i8* bitcast (float (%class.RDTimerCPU*)* @_ZN10RDTimerCPU4StopEv to i8*), i8* bitcast (float (%class.RDTimerCPU*)* @_ZN10RDTimerCPU10AccumulateEv to i8*)] }, comdat, align 8
@.str.25 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS10RDTimerCPU = linkonce_odr dso_local constant [13 x i8] c"10RDTimerCPU\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS7RDTimer = linkonce_odr dso_local constant [9 x i8] c"7RDTimer\00", comdat, align 1
@_ZTI7RDTimer = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_ZTS7RDTimer, i32 0, i32 0) }, comdat, align 8
@_ZTI10RDTimerCPU = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @_ZTS10RDTimerCPU, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7RDTimer to i8*) }, comdat, align 8
@_ZTV7RDTimer = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI7RDTimer to i8*), i8* bitcast (void (%class.RDTimer*)* @_ZN7RDTimerD2Ev to i8*), i8* bitcast (void (%class.RDTimer*)* @_ZN7RDTimerD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.26 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@_ZTV20SimplePerfSerializer = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI20SimplePerfSerializer to i8*), i8* bitcast (void (%class.SimplePerfSerializer*)* @_ZN20SimplePerfSerializerD2Ev to i8*), i8* bitcast (void (%class.SimplePerfSerializer*)* @_ZN20SimplePerfSerializerD0Ev to i8*), i8* bitcast (void (%class.SimplePerfSerializer*, %class.RDTimer*)* @_ZN20SimplePerfSerializer9SerializeEPK7RDTimer to i8*)] }, comdat, align 8
@_ZTS20SimplePerfSerializer = linkonce_odr dso_local constant [23 x i8] c"20SimplePerfSerializer\00", comdat, align 1
@_ZTS14PerfSerializer = linkonce_odr dso_local constant [17 x i8] c"14PerfSerializer\00", comdat, align 1
@_ZTI14PerfSerializer = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @_ZTS14PerfSerializer, i32 0, i32 0) }, comdat, align 8
@_ZTI20SimplePerfSerializer = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @_ZTS20SimplePerfSerializer, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI14PerfSerializer to i8*) }, comdat, align 8
@_ZTV14PerfSerializer = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI14PerfSerializer to i8*), i8* bitcast (void (%class.PerfSerializer*)* @_ZN14PerfSerializerD2Ev to i8*), i8* bitcast (void (%class.PerfSerializer*)* @_ZN14PerfSerializerD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.27 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c".perf\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c".perf.tmp\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"File exists\0A\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"Could not open 1\0A\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"Could not open\00", align 1
@_ZTIPKc = external constant i8*
@.str.33 = private unnamed_addr constant [18 x i8] c"Could not open 2\0A\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"Could not open 3\0A\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"Opened file %s for performance log\0A\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"did not specify file\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"Closed performance log 1\0A\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"Closed performance log 2\0A\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"COPYING FILE: %s to %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"mv %s %s\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"malformed line\0A\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"malformed line\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"incompatible platform type\0A\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"incompatible platform type\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"malformed line, second token\0A\00", align 1
@.str.47 = private unnamed_addr constant [39 x i8] c"malformed malformed line, second token\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"incompatible message:%s,%s\0A\00", align 1
@.str.49 = private unnamed_addr constant [34 x i8] c"incompatible incompatible message\00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"malformed line, third token\0A\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"malformed line, third token\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"ACCUM\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"ONEOFF\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"incompatible timer type\0A\00", align 1
@.str.55 = private unnamed_addr constant [37 x i8] c"incompatible incompatible timer type\00", align 1
@.str.56 = private unnamed_addr constant [28 x i8] c"malformed line forth token\0A\00", align 1
@.str.57 = private unnamed_addr constant [27 x i8] c"malformed line forth token\00", align 1
@.str.58 = private unnamed_addr constant [66 x i8] c"INFO: number of trials so far not found. Old format. Will update\0A\00", align 1
@.str.59 = private unnamed_addr constant [20 x i8] c"%s, %s, %s, %f, %d\0A\00", align 1
@0 = private unnamed_addr constant [30 x i8] c"_Z6KernelP4NodePiPbS2_S2_S1_i\00", align 1
@1 = private unnamed_addr constant [20 x i8] c"_Z7Kernel2PbS_S_S_i\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z21__device_stub__KernelP4NodePiPbS2_S2_S1_i(%struct.Node* noundef %0, i32* noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, i32* noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.Node*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.dim3, align 8
  %16 = alloca %struct.dim3, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca { i64, i32 }, align 8
  %20 = alloca { i64, i32 }, align 8
  store %struct.Node* %0, %struct.Node** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %21 = alloca i8*, i64 7, align 16
  %22 = bitcast %struct.Node** %8 to i8*
  %23 = getelementptr i8*, i8** %21, i32 0
  store i8* %22, i8** %23, align 8
  %24 = bitcast i32** %9 to i8*
  %25 = getelementptr i8*, i8** %21, i32 1
  store i8* %24, i8** %25, align 8
  %26 = bitcast i8** %10 to i8*
  %27 = getelementptr i8*, i8** %21, i32 2
  store i8* %26, i8** %27, align 8
  %28 = bitcast i8** %11 to i8*
  %29 = getelementptr i8*, i8** %21, i32 3
  store i8* %28, i8** %29, align 8
  %30 = bitcast i8** %12 to i8*
  %31 = getelementptr i8*, i8** %21, i32 4
  store i8* %30, i8** %31, align 8
  %32 = bitcast i32** %13 to i8*
  %33 = getelementptr i8*, i8** %21, i32 5
  store i8* %32, i8** %33, align 8
  %34 = bitcast i32* %14 to i8*
  %35 = getelementptr i8*, i8** %21, i32 6
  store i8* %34, i8** %35, align 8
  %36 = call i32 @__hipPopCallConfiguration(%struct.dim3* %15, %struct.dim3* %16, i64* %17, i8** %18)
  %37 = load i64, i64* %17, align 8
  %38 = load i8*, i8** %18, align 8
  %39 = bitcast { i64, i32 }* %19 to i8*
  %40 = bitcast %struct.dim3* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 12, i1 false)
  %41 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = bitcast { i64, i32 }* %20 to i8*
  %46 = bitcast %struct.dim3* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 12, i1 false)
  %47 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = bitcast i8* %38 to %struct.ihipStream_t*
  %52 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (%struct.Node*, i32*, i8*, i8*, i8*, i32*, i32)** @_Z6KernelP4NodePiPbS2_S2_S1_i to i8*), i64 %42, i32 %44, i64 %48, i32 %50, i8** noundef %21, i64 noundef %37, %struct.ihipStream_t* noundef %51)
  br label %53

53:                                               ; preds = %7
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z22__device_stub__Kernel2PbS_S_S_i(i8* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i32 noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca { i64, i32 }, align 8
  %16 = alloca { i64, i32 }, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = alloca i8*, i64 5, align 16
  %18 = bitcast i8** %6 to i8*
  %19 = getelementptr i8*, i8** %17, i32 0
  store i8* %18, i8** %19, align 8
  %20 = bitcast i8** %7 to i8*
  %21 = getelementptr i8*, i8** %17, i32 1
  store i8* %20, i8** %21, align 8
  %22 = bitcast i8** %8 to i8*
  %23 = getelementptr i8*, i8** %17, i32 2
  store i8* %22, i8** %23, align 8
  %24 = bitcast i8** %9 to i8*
  %25 = getelementptr i8*, i8** %17, i32 3
  store i8* %24, i8** %25, align 8
  %26 = bitcast i32* %10 to i8*
  %27 = getelementptr i8*, i8** %17, i32 4
  store i8* %26, i8** %27, align 8
  %28 = call i32 @__hipPopCallConfiguration(%struct.dim3* %11, %struct.dim3* %12, i64* %13, i8** %14)
  %29 = load i64, i64* %13, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = bitcast { i64, i32 }* %15 to i8*
  %32 = bitcast %struct.dim3* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 12, i1 false)
  %33 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = bitcast { i64, i32 }* %16 to i8*
  %38 = bitcast %struct.dim3* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 12, i1 false)
  %39 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = bitcast i8* %30 to %struct.ihipStream_t*
  %44 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i8*, i8*, i8*, i8*, i32)** @_Z7Kernel2PbS_S_S_i to i8*), i64 %34, i32 %36, i64 %40, i32 %42, i8** noundef %17, i64 noundef %29, %struct.ihipStream_t* noundef %43)
  br label %45

45:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* @no_of_nodes, align 4
  store i32 0, i32* @edge_list_size, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i8**, i8*** %4, align 8
  call void @_Z8BFSGraphiPPc(i32 noundef %5, i8** noundef %6)
  ret i32 0
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z8BFSGraphiPPc(i32 noundef %0, i8** noundef %1) #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca %class.RDTimerCPU*, align 8
  %16 = alloca %"class.std::basic_string", align 8
  %17 = alloca %"class.std::allocator", align 1
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i1, align 1
  %21 = alloca %"class.std::basic_string", align 8
  %22 = alloca %"class.std::allocator", align 1
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.Node*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32*, align 8
  %38 = alloca i32, align 4
  %39 = alloca %class.SimplePerfSerializer*, align 8
  %40 = alloca %class.RDTimerCPU*, align 8
  %41 = alloca %"class.std::basic_string", align 8
  %42 = alloca %"class.std::allocator", align 1
  %43 = alloca i1, align 1
  %44 = alloca %"class.std::basic_string", align 8
  %45 = alloca %"class.std::allocator", align 1
  %46 = alloca %struct.Node*, align 8
  %47 = alloca i32*, align 8
  %48 = alloca i8*, align 8
  %49 = alloca i8*, align 8
  %50 = alloca i8*, align 8
  %51 = alloca i32*, align 8
  %52 = alloca i8*, align 8
  %53 = alloca %"class.std::basic_string", align 8
  %54 = alloca %"class.std::allocator", align 1
  %55 = alloca %struct.dim3, align 4
  %56 = alloca %struct.dim3, align 4
  %57 = alloca i32, align 4
  %58 = alloca i8, align 1
  %59 = alloca %"class.std::basic_string", align 8
  %60 = alloca %"class.std::allocator", align 1
  %61 = alloca %struct.dim3, align 4
  %62 = alloca %struct.dim3, align 4
  %63 = alloca { i64, i32 }, align 4
  %64 = alloca { i64, i32 }, align 4
  %65 = alloca %struct.dim3, align 4
  %66 = alloca %struct.dim3, align 4
  %67 = alloca { i64, i32 }, align 4
  %68 = alloca { i64, i32 }, align 4
  %69 = alloca %"class.std::basic_string", align 8
  %70 = alloca %"class.std::allocator", align 1
  %71 = alloca %struct._IO_FILE*, align 8
  %72 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %73 = load i32, i32* %3, align 4
  %74 = icmp ne i32 %73, 2
  br i1 %74, label %75, label %78

75:                                               ; preds = %2
  %76 = load i32, i32* %3, align 4
  %77 = load i8**, i8*** %4, align 8
  call void @_Z5UsageiPPc(i32 noundef %76, i8** noundef %77)
  call void @exit(i32 noundef 0) #17
  unreachable

78:                                               ; preds = %2
  %79 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 56) #18
  store i1 true, i1* %20, align 1
  %80 = bitcast i8* %79 to %class.RDTimerCPU*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %17) #19
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %16, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %17)
          to label %81 unwind label %102

81:                                               ; preds = %78
  invoke void @_ZN10RDTimerCPUC2ESs(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %80, %"class.std::basic_string"* noundef %16)
          to label %82 unwind label %106

82:                                               ; preds = %81
  store i1 false, i1* %20, align 1
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %16) #19
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %17) #19
  store %class.RDTimerCPU* %80, %class.RDTimerCPU** %15, align 8
  %83 = load %class.RDTimerCPU*, %class.RDTimerCPU** %15, align 8
  %84 = bitcast %class.RDTimerCPU* %83 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %22) #19
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %21, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %22)
          to label %85 unwind label %114

85:                                               ; preds = %82
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %84, %"class.std::basic_string"* noundef %21)
          to label %86 unwind label %118

86:                                               ; preds = %85
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %21) #19
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %22) #19
  %87 = load %class.RDTimerCPU*, %class.RDTimerCPU** %15, align 8
  %88 = bitcast %class.RDTimerCPU* %87 to void (%class.RDTimerCPU*)***
  %89 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %88, align 8
  %90 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %89, i64 2
  %91 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %90, align 8
  call void %91(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %87)
  %92 = load i8**, i8*** %4, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 1
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %5, align 8
  %95 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %96 = load i8*, i8** %5, align 8
  %97 = call %struct._IO_FILE* @fopen(i8* noundef %96, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store %struct._IO_FILE* %97, %struct._IO_FILE** @fp, align 8
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %99 = icmp ne %struct._IO_FILE* %98, null
  br i1 %99, label %123, label %100

100:                                              ; preds = %86
  %101 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %654

102:                                              ; preds = %78
  %103 = landingpad { i8*, i32 }
          cleanup
  %104 = extractvalue { i8*, i32 } %103, 0
  store i8* %104, i8** %18, align 8
  %105 = extractvalue { i8*, i32 } %103, 1
  store i32 %105, i32* %19, align 4
  br label %110

106:                                              ; preds = %81
  %107 = landingpad { i8*, i32 }
          cleanup
  %108 = extractvalue { i8*, i32 } %107, 0
  store i8* %108, i8** %18, align 8
  %109 = extractvalue { i8*, i32 } %107, 1
  store i32 %109, i32* %19, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %16) #19
  br label %110

110:                                              ; preds = %106, %102
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %17) #19
  %111 = load i1, i1* %20, align 1
  br i1 %111, label %112, label %113

112:                                              ; preds = %110
  call void @_ZdlPv(i8* noundef %79) #20
  br label %113

113:                                              ; preds = %112, %110
  br label %655

114:                                              ; preds = %82
  %115 = landingpad { i8*, i32 }
          cleanup
  %116 = extractvalue { i8*, i32 } %115, 0
  store i8* %116, i8** %18, align 8
  %117 = extractvalue { i8*, i32 } %115, 1
  store i32 %117, i32* %19, align 4
  br label %122

118:                                              ; preds = %85
  %119 = landingpad { i8*, i32 }
          cleanup
  %120 = extractvalue { i8*, i32 } %119, 0
  store i8* %120, i8** %18, align 8
  %121 = extractvalue { i8*, i32 } %119, 1
  store i32 %121, i32* %19, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %21) #19
  br label %122

122:                                              ; preds = %118, %114
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %22) #19
  br label %655

123:                                              ; preds = %86
  store i32 0, i32* %23, align 4
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %124, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* noundef @no_of_nodes)
  store i32 1, i32* %24, align 4
  %126 = load i32, i32* @no_of_nodes, align 4
  store i32 %126, i32* %25, align 4
  %127 = load i32, i32* @no_of_nodes, align 4
  %128 = icmp sgt i32 %127, 512
  br i1 %128, label %129, label %135

129:                                              ; preds = %123
  %130 = load i32, i32* @no_of_nodes, align 4
  %131 = sitofp i32 %130 to double
  %132 = fdiv contract double %131, 5.120000e+02
  %133 = call contract double @llvm.ceil.f64(double %132)
  %134 = fptosi double %133 to i32
  store i32 %134, i32* %24, align 4
  store i32 512, i32* %25, align 4
  br label %135

135:                                              ; preds = %129, %123
  %136 = load i32, i32* @no_of_nodes, align 4
  %137 = sext i32 %136 to i64
  %138 = mul i64 8, %137
  %139 = call noalias i8* @malloc(i64 noundef %138) #21
  %140 = bitcast i8* %139 to %struct.Node*
  store %struct.Node* %140, %struct.Node** %26, align 8
  %141 = load i32, i32* @no_of_nodes, align 4
  %142 = sext i32 %141 to i64
  %143 = mul i64 1, %142
  %144 = call noalias i8* @malloc(i64 noundef %143) #21
  store i8* %144, i8** %27, align 8
  %145 = load i32, i32* @no_of_nodes, align 4
  %146 = sext i32 %145 to i64
  %147 = mul i64 1, %146
  %148 = call noalias i8* @malloc(i64 noundef %147) #21
  store i8* %148, i8** %28, align 8
  %149 = load i32, i32* @no_of_nodes, align 4
  %150 = sext i32 %149 to i64
  %151 = mul i64 1, %150
  %152 = call noalias i8* @malloc(i64 noundef %151) #21
  store i8* %152, i8** %29, align 8
  store i32 0, i32* %32, align 4
  br label %153

153:                                              ; preds = %184, %135
  %154 = load i32, i32* %32, align 4
  %155 = load i32, i32* @no_of_nodes, align 4
  %156 = icmp ult i32 %154, %155
  br i1 %156, label %157, label %187

157:                                              ; preds = %153
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %159 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %158, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32* noundef %30, i32* noundef %31)
  %160 = load i32, i32* %30, align 4
  %161 = load %struct.Node*, %struct.Node** %26, align 8
  %162 = load i32, i32* %32, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.Node, %struct.Node* %161, i64 %163
  %165 = getelementptr inbounds %struct.Node, %struct.Node* %164, i32 0, i32 0
  store i32 %160, i32* %165, align 4
  %166 = load i32, i32* %31, align 4
  %167 = load %struct.Node*, %struct.Node** %26, align 8
  %168 = load i32, i32* %32, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.Node, %struct.Node* %167, i64 %169
  %171 = getelementptr inbounds %struct.Node, %struct.Node* %170, i32 0, i32 1
  store i32 %166, i32* %171, align 4
  %172 = load i8*, i8** %27, align 8
  %173 = load i32, i32* %32, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  store i8 0, i8* %175, align 1
  %176 = load i8*, i8** %28, align 8
  %177 = load i32, i32* %32, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  store i8 0, i8* %179, align 1
  %180 = load i8*, i8** %29, align 8
  %181 = load i32, i32* %32, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  store i8 0, i8* %183, align 1
  br label %184

184:                                              ; preds = %157
  %185 = load i32, i32* %32, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %32, align 4
  br label %153, !llvm.loop !6

187:                                              ; preds = %153
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %189 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %188, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* noundef %23)
  store i32 0, i32* %23, align 4
  %190 = load i8*, i8** %27, align 8
  %191 = load i32, i32* %23, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  store i8 1, i8* %193, align 1
  %194 = load i8*, i8** %29, align 8
  %195 = load i32, i32* %23, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  store i8 1, i8* %197, align 1
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %199 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %198, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* noundef @edge_list_size)
  %200 = load i32, i32* @edge_list_size, align 4
  %201 = sext i32 %200 to i64
  %202 = mul i64 4, %201
  %203 = call noalias i8* @malloc(i64 noundef %202) #21
  %204 = bitcast i8* %203 to i32*
  store i32* %204, i32** %35, align 8
  store i32 0, i32* %36, align 4
  br label %205

205:                                              ; preds = %219, %187
  %206 = load i32, i32* %36, align 4
  %207 = load i32, i32* @edge_list_size, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %222

209:                                              ; preds = %205
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %211 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %210, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* noundef %33)
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %213 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %212, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* noundef %34)
  %214 = load i32, i32* %33, align 4
  %215 = load i32*, i32** %35, align 8
  %216 = load i32, i32* %36, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  store i32 %214, i32* %218, align 4
  br label %219

219:                                              ; preds = %209
  %220 = load i32, i32* %36, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %36, align 4
  br label %205, !llvm.loop !8

222:                                              ; preds = %205
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %224 = icmp ne %struct._IO_FILE* %223, null
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %227 = call i32 @fclose(%struct._IO_FILE* noundef %226)
  br label %228

228:                                              ; preds = %225, %222
  %229 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %230 = load i32, i32* @no_of_nodes, align 4
  %231 = sext i32 %230 to i64
  %232 = mul i64 4, %231
  %233 = call noalias i8* @malloc(i64 noundef %232) #21
  %234 = bitcast i8* %233 to i32*
  store i32* %234, i32** %37, align 8
  store i32 0, i32* %38, align 4
  br label %235

235:                                              ; preds = %244, %228
  %236 = load i32, i32* %38, align 4
  %237 = load i32, i32* @no_of_nodes, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %247

239:                                              ; preds = %235
  %240 = load i32*, i32** %37, align 8
  %241 = load i32, i32* %38, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  store i32 -1, i32* %243, align 4
  br label %244

244:                                              ; preds = %239
  %245 = load i32, i32* %38, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %38, align 4
  br label %235, !llvm.loop !9

247:                                              ; preds = %235
  %248 = load i32*, i32** %37, align 8
  %249 = load i32, i32* %23, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  store i32 0, i32* %251, align 4
  %252 = call i32 @gettimeofday(%struct.timeval* noundef %6, %struct.timezone* noundef null) #19
  %253 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 272) #18
  %254 = bitcast i8* %253 to %class.SimplePerfSerializer*
  %255 = load i8**, i8*** %4, align 8
  %256 = getelementptr inbounds i8*, i8** %255, i64 0
  %257 = load i8*, i8** %256, align 8
  invoke void @_ZN20SimplePerfSerializerC2EPc(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %254, i8* noundef %257)
          to label %258 unwind label %421

258:                                              ; preds = %247
  store %class.SimplePerfSerializer* %254, %class.SimplePerfSerializer** %39, align 8
  %259 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 56) #18
  store i1 true, i1* %43, align 1
  %260 = bitcast i8* %259 to %class.RDTimerCPU*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %42) #19
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %41, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %42)
          to label %261 unwind label %425

261:                                              ; preds = %258
  invoke void @_ZN10RDTimerCPUC2ESs(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %260, %"class.std::basic_string"* noundef %41)
          to label %262 unwind label %429

262:                                              ; preds = %261
  store i1 false, i1* %43, align 1
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %41) #19
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %42) #19
  store %class.RDTimerCPU* %260, %class.RDTimerCPU** %40, align 8
  %263 = load %class.RDTimerCPU*, %class.RDTimerCPU** %40, align 8
  %264 = bitcast %class.RDTimerCPU* %263 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %45) #19
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %44, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %45)
          to label %265 unwind label %437

265:                                              ; preds = %262
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %264, %"class.std::basic_string"* noundef %44)
          to label %266 unwind label %441

266:                                              ; preds = %265
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %44) #19
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %45) #19
  %267 = load %class.RDTimerCPU*, %class.RDTimerCPU** %40, align 8
  %268 = bitcast %class.RDTimerCPU* %267 to void (%class.RDTimerCPU*)***
  %269 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %268, align 8
  %270 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %269, i64 2
  %271 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %270, align 8
  call void %271(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %267)
  %272 = bitcast %struct.Node** %46 to i8**
  %273 = load i32, i32* @no_of_nodes, align 4
  %274 = sext i32 %273 to i64
  %275 = mul i64 8, %274
  %276 = call i32 @hipMalloc(i8** noundef %272, i64 noundef %275)
  %277 = bitcast i32** %47 to i8**
  %278 = load i32, i32* @edge_list_size, align 4
  %279 = sext i32 %278 to i64
  %280 = mul i64 4, %279
  %281 = call i32 @hipMalloc(i8** noundef %277, i64 noundef %280)
  %282 = load i32, i32* @no_of_nodes, align 4
  %283 = sext i32 %282 to i64
  %284 = mul i64 1, %283
  %285 = call i32 @hipMalloc(i8** noundef %48, i64 noundef %284)
  %286 = load i32, i32* @no_of_nodes, align 4
  %287 = sext i32 %286 to i64
  %288 = mul i64 1, %287
  %289 = call i32 @hipMalloc(i8** noundef %49, i64 noundef %288)
  %290 = load i32, i32* @no_of_nodes, align 4
  %291 = sext i32 %290 to i64
  %292 = mul i64 1, %291
  %293 = call i32 @hipMalloc(i8** noundef %50, i64 noundef %292)
  %294 = bitcast i32** %51 to i8**
  %295 = load i32, i32* @no_of_nodes, align 4
  %296 = sext i32 %295 to i64
  %297 = mul i64 4, %296
  %298 = call i32 @hipMalloc(i8** noundef %294, i64 noundef %297)
  %299 = call i32 @hipMalloc(i8** noundef %52, i64 noundef 1)
  %300 = load %class.RDTimerCPU*, %class.RDTimerCPU** %40, align 8
  %301 = bitcast %class.RDTimerCPU* %300 to float (%class.RDTimerCPU*)***
  %302 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %301, align 8
  %303 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %302, i64 3
  %304 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %303, align 8
  %305 = call contract noundef float %304(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %300)
  store float %305, float* %10, align 4
  %306 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %39, align 8
  %307 = load %class.RDTimerCPU*, %class.RDTimerCPU** %40, align 8
  %308 = bitcast %class.RDTimerCPU* %307 to %class.RDTimer*
  %309 = bitcast %class.SimplePerfSerializer* %306 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %310 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %309, align 8
  %311 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %310, i64 2
  %312 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %311, align 8
  call void %312(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %306, %class.RDTimer* noundef %308)
  %313 = load %class.RDTimerCPU*, %class.RDTimerCPU** %40, align 8
  %314 = bitcast %class.RDTimerCPU* %313 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %54) #19
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %53, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %54)
          to label %315 unwind label %446

315:                                              ; preds = %266
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %314, %"class.std::basic_string"* noundef %53)
          to label %316 unwind label %450

316:                                              ; preds = %315
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %53) #19
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %54) #19
  %317 = load %class.RDTimerCPU*, %class.RDTimerCPU** %40, align 8
  %318 = bitcast %class.RDTimerCPU* %317 to void (%class.RDTimerCPU*)***
  %319 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %318, align 8
  %320 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %319, i64 2
  %321 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %320, align 8
  call void %321(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %317)
  %322 = load %struct.Node*, %struct.Node** %46, align 8
  %323 = bitcast %struct.Node* %322 to i8*
  %324 = load %struct.Node*, %struct.Node** %26, align 8
  %325 = bitcast %struct.Node* %324 to i8*
  %326 = load i32, i32* @no_of_nodes, align 4
  %327 = sext i32 %326 to i64
  %328 = mul i64 8, %327
  %329 = call i32 @hipMemcpy(i8* noundef %323, i8* noundef %325, i64 noundef %328, i32 noundef 1)
  %330 = load i32*, i32** %47, align 8
  %331 = bitcast i32* %330 to i8*
  %332 = load i32*, i32** %35, align 8
  %333 = bitcast i32* %332 to i8*
  %334 = load i32, i32* @edge_list_size, align 4
  %335 = sext i32 %334 to i64
  %336 = mul i64 4, %335
  %337 = call i32 @hipMemcpy(i8* noundef %331, i8* noundef %333, i64 noundef %336, i32 noundef 1)
  %338 = load i8*, i8** %48, align 8
  %339 = load i8*, i8** %27, align 8
  %340 = load i32, i32* @no_of_nodes, align 4
  %341 = sext i32 %340 to i64
  %342 = mul i64 1, %341
  %343 = call i32 @hipMemcpy(i8* noundef %338, i8* noundef %339, i64 noundef %342, i32 noundef 1)
  %344 = load i8*, i8** %49, align 8
  %345 = load i8*, i8** %28, align 8
  %346 = load i32, i32* @no_of_nodes, align 4
  %347 = sext i32 %346 to i64
  %348 = mul i64 1, %347
  %349 = call i32 @hipMemcpy(i8* noundef %344, i8* noundef %345, i64 noundef %348, i32 noundef 1)
  %350 = load i8*, i8** %50, align 8
  %351 = load i8*, i8** %29, align 8
  %352 = load i32, i32* @no_of_nodes, align 4
  %353 = sext i32 %352 to i64
  %354 = mul i64 1, %353
  %355 = call i32 @hipMemcpy(i8* noundef %350, i8* noundef %351, i64 noundef %354, i32 noundef 1)
  %356 = load i32*, i32** %51, align 8
  %357 = bitcast i32* %356 to i8*
  %358 = load i32*, i32** %37, align 8
  %359 = bitcast i32* %358 to i8*
  %360 = load i32, i32* @no_of_nodes, align 4
  %361 = sext i32 %360 to i64
  %362 = mul i64 4, %361
  %363 = call i32 @hipMemcpy(i8* noundef %357, i8* noundef %359, i64 noundef %362, i32 noundef 1)
  %364 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %365 = load i32, i32* %24, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %55, i32 noundef %365, i32 noundef 1, i32 noundef 1)
  %366 = load i32, i32* %25, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %56, i32 noundef %366, i32 noundef 1, i32 noundef 1)
  store i32 0, i32* %57, align 4
  %367 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %368 = call i32 @gettimeofday(%struct.timeval* noundef %8, %struct.timezone* noundef null) #19
  %369 = load %class.RDTimerCPU*, %class.RDTimerCPU** %40, align 8
  %370 = bitcast %class.RDTimerCPU* %369 to float (%class.RDTimerCPU*)***
  %371 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %370, align 8
  %372 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %371, i64 3
  %373 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %372, align 8
  %374 = call contract noundef float %373(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %369)
  store float %374, float* %11, align 4
  %375 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %39, align 8
  %376 = load %class.RDTimerCPU*, %class.RDTimerCPU** %40, align 8
  %377 = bitcast %class.RDTimerCPU* %376 to %class.RDTimer*
  %378 = bitcast %class.SimplePerfSerializer* %375 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %379 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %378, align 8
  %380 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %379, i64 2
  %381 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %380, align 8
  call void %381(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %375, %class.RDTimer* noundef %377)
  %382 = load %class.RDTimerCPU*, %class.RDTimerCPU** %40, align 8
  %383 = bitcast %class.RDTimerCPU* %382 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %60) #19
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %59, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %60)
          to label %384 unwind label %455

384:                                              ; preds = %316
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %383, %"class.std::basic_string"* noundef %59)
          to label %385 unwind label %459

385:                                              ; preds = %384
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %59) #19
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %60) #19
  %386 = load %class.RDTimerCPU*, %class.RDTimerCPU** %40, align 8
  %387 = bitcast %class.RDTimerCPU* %386 to void (%class.RDTimerCPU*)***
  %388 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %387, align 8
  %389 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %388, i64 2
  %390 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %389, align 8
  call void %390(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %386)
  br label %391

391:                                              ; preds = %497, %385
  store i8 0, i8* %58, align 1
  %392 = load i8*, i8** %52, align 8
  %393 = call i32 @hipMemcpy(i8* noundef %392, i8* noundef %58, i64 noundef 1, i32 noundef 1)
  br label %394

394:                                              ; preds = %391
  %395 = bitcast %struct.dim3* %61 to i8*
  %396 = bitcast %struct.dim3* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %395, i8* align 4 %396, i64 12, i1 false)
  %397 = bitcast %struct.dim3* %62 to i8*
  %398 = bitcast %struct.dim3* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %397, i8* align 4 %398, i64 12, i1 false)
  %399 = bitcast { i64, i32 }* %63 to i8*
  %400 = bitcast %struct.dim3* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %399, i8* align 4 %400, i64 12, i1 false)
  %401 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %63, i32 0, i32 0
  %402 = load i64, i64* %401, align 4
  %403 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %63, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = bitcast { i64, i32 }* %64 to i8*
  %406 = bitcast %struct.dim3* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %405, i8* align 4 %406, i64 12, i1 false)
  %407 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %64, i32 0, i32 0
  %408 = load i64, i64* %407, align 4
  %409 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %64, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = call i32 @__hipPushCallConfiguration(i64 %402, i32 %404, i64 %408, i32 %410, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %464, label %413

413:                                              ; preds = %394
  %414 = load %struct.Node*, %struct.Node** %46, align 8
  %415 = load i32*, i32** %47, align 8
  %416 = load i8*, i8** %48, align 8
  %417 = load i8*, i8** %49, align 8
  %418 = load i8*, i8** %50, align 8
  %419 = load i32*, i32** %51, align 8
  %420 = load i32, i32* @no_of_nodes, align 4
  call void @_Z21__device_stub__KernelP4NodePiPbS2_S2_S1_i(%struct.Node* noundef %414, i32* noundef %415, i8* noundef %416, i8* noundef %417, i8* noundef %418, i32* noundef %419, i32 noundef %420)
  br label %464

421:                                              ; preds = %247
  %422 = landingpad { i8*, i32 }
          cleanup
  %423 = extractvalue { i8*, i32 } %422, 0
  store i8* %423, i8** %18, align 8
  %424 = extractvalue { i8*, i32 } %422, 1
  store i32 %424, i32* %19, align 4
  call void @_ZdlPv(i8* noundef %253) #20
  br label %655

425:                                              ; preds = %258
  %426 = landingpad { i8*, i32 }
          cleanup
  %427 = extractvalue { i8*, i32 } %426, 0
  store i8* %427, i8** %18, align 8
  %428 = extractvalue { i8*, i32 } %426, 1
  store i32 %428, i32* %19, align 4
  br label %433

429:                                              ; preds = %261
  %430 = landingpad { i8*, i32 }
          cleanup
  %431 = extractvalue { i8*, i32 } %430, 0
  store i8* %431, i8** %18, align 8
  %432 = extractvalue { i8*, i32 } %430, 1
  store i32 %432, i32* %19, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %41) #19
  br label %433

433:                                              ; preds = %429, %425
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %42) #19
  %434 = load i1, i1* %43, align 1
  br i1 %434, label %435, label %436

435:                                              ; preds = %433
  call void @_ZdlPv(i8* noundef %259) #20
  br label %436

436:                                              ; preds = %435, %433
  br label %655

437:                                              ; preds = %262
  %438 = landingpad { i8*, i32 }
          cleanup
  %439 = extractvalue { i8*, i32 } %438, 0
  store i8* %439, i8** %18, align 8
  %440 = extractvalue { i8*, i32 } %438, 1
  store i32 %440, i32* %19, align 4
  br label %445

441:                                              ; preds = %265
  %442 = landingpad { i8*, i32 }
          cleanup
  %443 = extractvalue { i8*, i32 } %442, 0
  store i8* %443, i8** %18, align 8
  %444 = extractvalue { i8*, i32 } %442, 1
  store i32 %444, i32* %19, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %44) #19
  br label %445

445:                                              ; preds = %441, %437
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %45) #19
  br label %655

446:                                              ; preds = %266
  %447 = landingpad { i8*, i32 }
          cleanup
  %448 = extractvalue { i8*, i32 } %447, 0
  store i8* %448, i8** %18, align 8
  %449 = extractvalue { i8*, i32 } %447, 1
  store i32 %449, i32* %19, align 4
  br label %454

450:                                              ; preds = %315
  %451 = landingpad { i8*, i32 }
          cleanup
  %452 = extractvalue { i8*, i32 } %451, 0
  store i8* %452, i8** %18, align 8
  %453 = extractvalue { i8*, i32 } %451, 1
  store i32 %453, i32* %19, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %53) #19
  br label %454

454:                                              ; preds = %450, %446
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %54) #19
  br label %655

455:                                              ; preds = %316
  %456 = landingpad { i8*, i32 }
          cleanup
  %457 = extractvalue { i8*, i32 } %456, 0
  store i8* %457, i8** %18, align 8
  %458 = extractvalue { i8*, i32 } %456, 1
  store i32 %458, i32* %19, align 4
  br label %463

459:                                              ; preds = %384
  %460 = landingpad { i8*, i32 }
          cleanup
  %461 = extractvalue { i8*, i32 } %460, 0
  store i8* %461, i8** %18, align 8
  %462 = extractvalue { i8*, i32 } %460, 1
  store i32 %462, i32* %19, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %59) #19
  br label %463

463:                                              ; preds = %459, %455
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %60) #19
  br label %655

464:                                              ; preds = %413, %394
  br label %465

465:                                              ; preds = %464
  br label %466

466:                                              ; preds = %465
  %467 = bitcast %struct.dim3* %65 to i8*
  %468 = bitcast %struct.dim3* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %467, i8* align 4 %468, i64 12, i1 false)
  %469 = bitcast %struct.dim3* %66 to i8*
  %470 = bitcast %struct.dim3* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %469, i8* align 4 %470, i64 12, i1 false)
  %471 = bitcast { i64, i32 }* %67 to i8*
  %472 = bitcast %struct.dim3* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %471, i8* align 4 %472, i64 12, i1 false)
  %473 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %67, i32 0, i32 0
  %474 = load i64, i64* %473, align 4
  %475 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %67, i32 0, i32 1
  %476 = load i32, i32* %475, align 4
  %477 = bitcast { i64, i32 }* %68 to i8*
  %478 = bitcast %struct.dim3* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %477, i8* align 4 %478, i64 12, i1 false)
  %479 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %68, i32 0, i32 0
  %480 = load i64, i64* %479, align 4
  %481 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %68, i32 0, i32 1
  %482 = load i32, i32* %481, align 4
  %483 = call i32 @__hipPushCallConfiguration(i64 %474, i32 %476, i64 %480, i32 %482, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %491, label %485

485:                                              ; preds = %466
  %486 = load i8*, i8** %48, align 8
  %487 = load i8*, i8** %49, align 8
  %488 = load i8*, i8** %50, align 8
  %489 = load i8*, i8** %52, align 8
  %490 = load i32, i32* @no_of_nodes, align 4
  call void @_Z22__device_stub__Kernel2PbS_S_S_i(i8* noundef %486, i8* noundef %487, i8* noundef %488, i8* noundef %489, i32 noundef %490)
  br label %491

491:                                              ; preds = %485, %466
  br label %492

492:                                              ; preds = %491
  %493 = load i8*, i8** %52, align 8
  %494 = call i32 @hipMemcpy(i8* noundef %58, i8* noundef %493, i64 noundef 1, i32 noundef 2)
  %495 = load i32, i32* %57, align 4
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* %57, align 4
  br label %497

497:                                              ; preds = %492
  %498 = load i8, i8* %58, align 1
  %499 = trunc i8 %498 to i1
  br i1 %499, label %391, label %500, !llvm.loop !10

500:                                              ; preds = %497
  %501 = load %class.RDTimerCPU*, %class.RDTimerCPU** %40, align 8
  %502 = bitcast %class.RDTimerCPU* %501 to float (%class.RDTimerCPU*)***
  %503 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %502, align 8
  %504 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %503, i64 3
  %505 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %504, align 8
  %506 = call contract noundef float %505(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %501)
  store float %506, float* %12, align 4
  %507 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %39, align 8
  %508 = load %class.RDTimerCPU*, %class.RDTimerCPU** %40, align 8
  %509 = bitcast %class.RDTimerCPU* %508 to %class.RDTimer*
  %510 = bitcast %class.SimplePerfSerializer* %507 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %511 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %510, align 8
  %512 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %511, i64 2
  %513 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %512, align 8
  call void %513(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %507, %class.RDTimer* noundef %509)
  %514 = load %class.RDTimerCPU*, %class.RDTimerCPU** %40, align 8
  %515 = bitcast %class.RDTimerCPU* %514 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %70) #19
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %69, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %70)
          to label %516 unwind label %565

516:                                              ; preds = %500
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %515, %"class.std::basic_string"* noundef %69)
          to label %517 unwind label %569

517:                                              ; preds = %516
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %69) #19
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %70) #19
  %518 = load %class.RDTimerCPU*, %class.RDTimerCPU** %40, align 8
  %519 = bitcast %class.RDTimerCPU* %518 to void (%class.RDTimerCPU*)***
  %520 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %519, align 8
  %521 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %520, i64 2
  %522 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %521, align 8
  call void %522(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %518)
  %523 = call i32 @gettimeofday(%struct.timeval* noundef %9, %struct.timezone* noundef null) #19
  %524 = load i32, i32* %57, align 4
  %525 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32 noundef %524)
  %526 = load i32*, i32** %37, align 8
  %527 = bitcast i32* %526 to i8*
  %528 = load i32*, i32** %51, align 8
  %529 = bitcast i32* %528 to i8*
  %530 = load i32, i32* @no_of_nodes, align 4
  %531 = sext i32 %530 to i64
  %532 = mul i64 4, %531
  %533 = call i32 @hipMemcpy(i8* noundef %527, i8* noundef %529, i64 noundef %532, i32 noundef 2)
  %534 = load %class.RDTimerCPU*, %class.RDTimerCPU** %40, align 8
  %535 = bitcast %class.RDTimerCPU* %534 to float (%class.RDTimerCPU*)***
  %536 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %535, align 8
  %537 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %536, i64 3
  %538 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %537, align 8
  %539 = call contract noundef float %538(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %534)
  store float %539, float* %13, align 4
  %540 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %39, align 8
  %541 = load %class.RDTimerCPU*, %class.RDTimerCPU** %40, align 8
  %542 = bitcast %class.RDTimerCPU* %541 to %class.RDTimer*
  %543 = bitcast %class.SimplePerfSerializer* %540 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %544 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %543, align 8
  %545 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %544, i64 2
  %546 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %545, align 8
  call void %546(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %540, %class.RDTimer* noundef %542)
  %547 = call i32 @gettimeofday(%struct.timeval* noundef %7, %struct.timezone* noundef null) #19
  %548 = call %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store %struct._IO_FILE* %548, %struct._IO_FILE** %71, align 8
  store i32 0, i32* %72, align 4
  br label %549

549:                                              ; preds = %562, %517
  %550 = load i32, i32* %72, align 4
  %551 = load i32, i32* @no_of_nodes, align 4
  %552 = icmp slt i32 %550, %551
  br i1 %552, label %553, label %574

553:                                              ; preds = %549
  %554 = load %struct._IO_FILE*, %struct._IO_FILE** %71, align 8
  %555 = load i32, i32* %72, align 4
  %556 = load i32*, i32** %37, align 8
  %557 = load i32, i32* %72, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i32, i32* %556, i64 %558
  %560 = load i32, i32* %559, align 4
  %561 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %554, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 noundef %555, i32 noundef %560)
  br label %562

562:                                              ; preds = %553
  %563 = load i32, i32* %72, align 4
  %564 = add nsw i32 %563, 1
  store i32 %564, i32* %72, align 4
  br label %549, !llvm.loop !11

565:                                              ; preds = %500
  %566 = landingpad { i8*, i32 }
          cleanup
  %567 = extractvalue { i8*, i32 } %566, 0
  store i8* %567, i8** %18, align 8
  %568 = extractvalue { i8*, i32 } %566, 1
  store i32 %568, i32* %19, align 4
  br label %573

569:                                              ; preds = %516
  %570 = landingpad { i8*, i32 }
          cleanup
  %571 = extractvalue { i8*, i32 } %570, 0
  store i8* %571, i8** %18, align 8
  %572 = extractvalue { i8*, i32 } %570, 1
  store i32 %572, i32* %19, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %69) #19
  br label %573

573:                                              ; preds = %569, %565
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %70) #19
  br label %655

574:                                              ; preds = %549
  %575 = load %struct._IO_FILE*, %struct._IO_FILE** %71, align 8
  %576 = call i32 @fclose(%struct._IO_FILE* noundef %575)
  %577 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0))
  %578 = load %class.RDTimerCPU*, %class.RDTimerCPU** %15, align 8
  %579 = bitcast %class.RDTimerCPU* %578 to float (%class.RDTimerCPU*)***
  %580 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %579, align 8
  %581 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %580, i64 3
  %582 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %581, align 8
  %583 = call contract noundef float %582(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %578)
  store float %583, float* %14, align 4
  %584 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %39, align 8
  %585 = load %class.RDTimerCPU*, %class.RDTimerCPU** %15, align 8
  %586 = bitcast %class.RDTimerCPU* %585 to %class.RDTimer*
  %587 = bitcast %class.SimplePerfSerializer* %584 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %588 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %587, align 8
  %589 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %588, i64 2
  %590 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %589, align 8
  call void %590(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %584, %class.RDTimer* noundef %586)
  %591 = load float, float* %11, align 4
  %592 = fpext float %591 to double
  %593 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), double noundef %592)
  %594 = load float, float* %13, align 4
  %595 = fpext float %594 to double
  %596 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i64 0, i64 0), double noundef %595)
  %597 = load float, float* %10, align 4
  %598 = fpext float %597 to double
  %599 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), double noundef %598)
  %600 = load float, float* %12, align 4
  %601 = fpext float %600 to double
  %602 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), double noundef %601)
  %603 = load float, float* %14, align 4
  %604 = fpext float %603 to double
  %605 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), double noundef %604)
  %606 = load %class.RDTimerCPU*, %class.RDTimerCPU** %40, align 8
  %607 = icmp eq %class.RDTimerCPU* %606, null
  br i1 %607, label %613, label %608

608:                                              ; preds = %574
  %609 = bitcast %class.RDTimerCPU* %606 to void (%class.RDTimerCPU*)***
  %610 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %609, align 8
  %611 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %610, i64 1
  %612 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %611, align 8
  call void %612(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %606) #19
  br label %613

613:                                              ; preds = %608, %574
  %614 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %39, align 8
  %615 = icmp eq %class.SimplePerfSerializer* %614, null
  br i1 %615, label %621, label %616

616:                                              ; preds = %613
  %617 = bitcast %class.SimplePerfSerializer* %614 to void (%class.SimplePerfSerializer*)***
  %618 = load void (%class.SimplePerfSerializer*)**, void (%class.SimplePerfSerializer*)*** %617, align 8
  %619 = getelementptr inbounds void (%class.SimplePerfSerializer*)*, void (%class.SimplePerfSerializer*)** %618, i64 1
  %620 = load void (%class.SimplePerfSerializer*)*, void (%class.SimplePerfSerializer*)** %619, align 8
  call void %620(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %614) #19
  br label %621

621:                                              ; preds = %616, %613
  %622 = load %class.RDTimerCPU*, %class.RDTimerCPU** %15, align 8
  %623 = icmp eq %class.RDTimerCPU* %622, null
  br i1 %623, label %629, label %624

624:                                              ; preds = %621
  %625 = bitcast %class.RDTimerCPU* %622 to void (%class.RDTimerCPU*)***
  %626 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %625, align 8
  %627 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %626, i64 1
  %628 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %627, align 8
  call void %628(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %622) #19
  br label %629

629:                                              ; preds = %624, %621
  %630 = load %struct.Node*, %struct.Node** %26, align 8
  %631 = bitcast %struct.Node* %630 to i8*
  call void @free(i8* noundef %631) #19
  %632 = load i32*, i32** %35, align 8
  %633 = bitcast i32* %632 to i8*
  call void @free(i8* noundef %633) #19
  %634 = load i8*, i8** %27, align 8
  call void @free(i8* noundef %634) #19
  %635 = load i8*, i8** %28, align 8
  call void @free(i8* noundef %635) #19
  %636 = load i8*, i8** %29, align 8
  call void @free(i8* noundef %636) #19
  %637 = load i32*, i32** %37, align 8
  %638 = bitcast i32* %637 to i8*
  call void @free(i8* noundef %638) #19
  %639 = load %struct.Node*, %struct.Node** %46, align 8
  %640 = bitcast %struct.Node* %639 to i8*
  %641 = call i32 @hipFree(i8* noundef %640)
  %642 = load i32*, i32** %47, align 8
  %643 = bitcast i32* %642 to i8*
  %644 = call i32 @hipFree(i8* noundef %643)
  %645 = load i8*, i8** %48, align 8
  %646 = call i32 @hipFree(i8* noundef %645)
  %647 = load i8*, i8** %49, align 8
  %648 = call i32 @hipFree(i8* noundef %647)
  %649 = load i8*, i8** %50, align 8
  %650 = call i32 @hipFree(i8* noundef %649)
  %651 = load i32*, i32** %51, align 8
  %652 = bitcast i32* %651 to i8*
  %653 = call i32 @hipFree(i8* noundef %652)
  br label %654

654:                                              ; preds = %629, %100
  ret void

655:                                              ; preds = %573, %463, %454, %445, %436, %421, %122, %113
  %656 = load i8*, i8** %18, align 8
  %657 = load i32, i32* %19, align 4
  %658 = insertvalue { i8*, i32 } undef, i8* %656, 0
  %659 = insertvalue { i8*, i32 } %658, i32 %657, 1
  resume { i8*, i32 } %659
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z5UsageiPPc(i32 noundef %0, i8** noundef %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8**, i8*** %4, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* noundef %8)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) #6

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #7

declare void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i8* noundef, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10RDTimerCPUC2ESs(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0, %"class.std::basic_string"* noundef %1) unnamed_addr #8 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %4) #19
  %10 = bitcast %class.RDTimerCPU* %7 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV10RDTimerCPU, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %10, align 8
  %11 = bitcast %class.RDTimerCPU* %7 to %class.RDTimer*
  %12 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %11, i32 0, i32 3
  %13 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSEPKc(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
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
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %4) #19
  br label %24

19:                                               ; preds = %9
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = extractvalue { i8*, i32 } %20, 0
  store i8* %21, i8** %5, align 8
  %22 = extractvalue { i8*, i32 } %20, 1
  store i32 %22, i32* %6, align 4
  %23 = bitcast %class.RDTimerCPU* %7 to %class.RDTimer*
  call void @_ZN7RDTimerD2Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %23) #19
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

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) #9

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0, %"class.std::basic_string"* noundef %1) #3 comdat align 2 {
  %3 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %3, align 8
  %4 = load %class.RDTimer*, %class.RDTimer** %3, align 8
  %5 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %4, i32 0, i32 2
  %6 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %5, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %1)
  call void @_ZN7RDTimer5ResetEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %4)
  ret void
}

declare i32 @printf(i8* noundef, ...) #4

declare %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #4

declare i32 @fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #10

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #11

declare i32 @fclose(%struct._IO_FILE* noundef) #4

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* noundef, %struct.timezone* noundef) #7

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN20SimplePerfSerializerC2EPc(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %0, i8* noundef %1) unnamed_addr #8 comdat align 2 {
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

declare i32 @hipMalloc(i8** noundef, i64 noundef) #4

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #12 comdat align 2 {
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

declare i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #7

declare i32 @hipFree(i8* noundef) #4

declare void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimerC2ESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0, %"class.std::basic_string"* noundef %1) unnamed_addr #8 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #19
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %11, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4)
          to label %12 unwind label %17

12:                                               ; preds = %2
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #19
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
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #19
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %10) #19
  br label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %25 = insertvalue { i8*, i32 } %24, i32 %23, 1
  resume { i8*, i32 } %25
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSEPKc(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10RDTimerCPUD2Ev(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #12 comdat align 2 {
  %2 = alloca %class.RDTimerCPU*, align 8
  store %class.RDTimerCPU* %0, %class.RDTimerCPU** %2, align 8
  %3 = load %class.RDTimerCPU*, %class.RDTimerCPU** %2, align 8
  %4 = bitcast %class.RDTimerCPU* %3 to %class.RDTimer*
  call void @_ZN7RDTimerD2Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %4) #19
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10RDTimerCPUD0Ev(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #12 comdat align 2 {
  %2 = alloca %class.RDTimerCPU*, align 8
  store %class.RDTimerCPU* %0, %class.RDTimerCPU** %2, align 8
  %3 = load %class.RDTimerCPU*, %class.RDTimerCPU** %2, align 8
  call void @_ZN10RDTimerCPUD2Ev(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %3) #19
  %4 = bitcast %class.RDTimerCPU* %3 to i8*
  call void @_ZdlPv(i8* noundef %4) #20
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10RDTimerCPU5StartEv(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
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
define linkonce_odr dso_local noundef float @_ZN10RDTimerCPU4StopEv(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
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
define linkonce_odr dso_local noundef float @_ZN10RDTimerCPU10AccumulateEv(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
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
define linkonce_odr dso_local void @_ZN7RDTimerD2Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #12 comdat align 2 {
  %2 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %2, align 8
  %3 = load %class.RDTimer*, %class.RDTimer** %2, align 8
  %4 = bitcast %class.RDTimer* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV7RDTimer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  %5 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 3
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %5) #19
  %6 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 2
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %6) #19
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimerD0Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #12 comdat align 2 {
  %2 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %2, align 8
  %3 = load %class.RDTimer*, %class.RDTimer** %2, align 8
  call void @llvm.trap() #17
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #13

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_Z8get_timev() #14 comdat {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @gettimeofday(%struct.timeval* noundef %1, %struct.timezone* noundef null) #19
  %3 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = mul nsw i64 %4, 1000000
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %5, %7
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_Z12elapsed_timexx(i64 noundef %0, i64 noundef %1) #14 comdat {
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

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimer5ResetEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) #14 comdat align 2 {
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
define linkonce_odr dso_local void @_ZN14PerfSerializerC2EPc(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %0, i8* noundef %1) unnamed_addr #8 comdat align 2 {
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
  %17 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %15, i64 noundef 100, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8* noundef %16, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0)) #19
  %18 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 7
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %18, i64 0, i64 0
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %19, i64 noundef 100, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8* noundef %20, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0)) #19
  %22 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0
  %24 = call i32 @access(i8* noundef %23, i32 noundef 0) #19
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %13
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0))
  %29 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %29, i64 0, i64 0
  %31 = call %struct._IO_FILE* @fopen(i8* noundef %30, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %32 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  store %struct._IO_FILE* %31, %struct._IO_FILE** %32, align 8
  %33 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %33, align 8
  %35 = icmp eq %struct._IO_FILE* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0))
  %39 = call i8* @__cxa_allocate_exception(i64 8) #19
  %40 = bitcast i8* %39 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i8** %40, align 16
  call void @__cxa_throw(i8* %39, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #22
  unreachable

41:                                               ; preds = %26
  %42 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 7
  %43 = getelementptr inbounds [100 x i8], [100 x i8]* %42, i64 0, i64 0
  %44 = call %struct._IO_FILE* @fopen(i8* noundef %43, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %45 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  store %struct._IO_FILE* %44, %struct._IO_FILE** %45, align 8
  %46 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %46, align 8
  %48 = icmp eq %struct._IO_FILE* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0))
  %52 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %52, align 8
  %54 = call i32 @fclose(%struct._IO_FILE* noundef %53)
  %55 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  store %struct._IO_FILE* null, %struct._IO_FILE** %55, align 8
  %56 = call i8* @__cxa_allocate_exception(i64 8) #19
  %57 = bitcast i8* %56 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i8** %57, align 16
  call void @__cxa_throw(i8* %56, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #22
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
  %64 = call %struct._IO_FILE* @fopen(i8* noundef %63, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %65 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  store %struct._IO_FILE* %64, %struct._IO_FILE** %65, align 8
  %66 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %66, align 8
  %68 = icmp eq %struct._IO_FILE* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0))
  %72 = call i8* @__cxa_allocate_exception(i64 8) #19
  %73 = bitcast i8* %72 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i8** %73, align 16
  call void @__cxa_throw(i8* %72, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #22
  unreachable

74:                                               ; preds = %60
  %75 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 5
  store i8 1, i8* %75, align 8
  br label %76

76:                                               ; preds = %74, %58
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %78 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %79 = getelementptr inbounds [100 x i8], [100 x i8]* %78, i64 0, i64 0
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %77, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i64 0, i64 0), i8* noundef %79)
  br label %84

81:                                               ; preds = %2
  %82 = call i8* @__cxa_allocate_exception(i64 8) #19
  %83 = bitcast i8* %82 to i8**
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i64 0, i64 0), i8** %83, align 16
  call void @__cxa_throw(i8* %82, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #22
  unreachable

84:                                               ; preds = %76
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN20SimplePerfSerializerD2Ev(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #12 comdat align 2 {
  %2 = alloca %class.SimplePerfSerializer*, align 8
  store %class.SimplePerfSerializer* %0, %class.SimplePerfSerializer** %2, align 8
  %3 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %2, align 8
  %4 = bitcast %class.SimplePerfSerializer* %3 to %class.PerfSerializer*
  call void @_ZN14PerfSerializerD2Ev(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %4) #19
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN20SimplePerfSerializerD0Ev(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #12 comdat align 2 {
  %2 = alloca %class.SimplePerfSerializer*, align 8
  store %class.SimplePerfSerializer* %0, %class.SimplePerfSerializer** %2, align 8
  %3 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %2, align 8
  call void @_ZN20SimplePerfSerializerD2Ev(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %3) #19
  %4 = bitcast %class.SimplePerfSerializer* %3 to i8*
  call void @_ZdlPv(i8* noundef %4) #20
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN20SimplePerfSerializer9SerializeEPK7RDTimer(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %0, %class.RDTimer* noundef %1) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %31 = call i8* @strtok(i8* noundef %30, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #19
  %32 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i64 0, i64 0))
  %39 = call i8* @__cxa_allocate_exception(i64 8) #19
  %40 = bitcast i8* %39 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i64 0, i64 0), i8** %40, align 16
  call void @__cxa_throw(i8* %39, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #22
  unreachable

41:                                               ; preds = %21
  %42 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %43 = load i8*, i8** %42, align 8
  %44 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  call void @_ZNK7RDTimer4TypeEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %7, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %44)
  %45 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %7) #19
  %46 = call i32 @strcmp(i8* noundef %43, i8* noundef %45) #23
  %47 = icmp ne i32 %46, 0
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %7) #19
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.44, i64 0, i64 0))
  %51 = call i8* @__cxa_allocate_exception(i64 8) #19
  %52 = bitcast i8* %51 to i8**
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i64 0, i64 0), i8** %52, align 16
  call void @__cxa_throw(i8* %51, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #22
  unreachable

53:                                               ; preds = %41
  %54 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #19
  %55 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %54, i8** %55, align 8
  %56 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %57 = load i8*, i8** %56, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %60, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.46, i64 0, i64 0))
  %62 = call i8* @__cxa_allocate_exception(i64 8) #19
  %63 = bitcast i8* %62 to i8**
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.47, i64 0, i64 0), i8** %63, align 16
  call void @__cxa_throw(i8* %62, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #22
  unreachable

64:                                               ; preds = %53
  %65 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  call void @_ZNK7RDTimer3MsgEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %8, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %68)
  %69 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %8) #19
  %70 = call i32 @strcmp(i8* noundef %67, i8* noundef %69) #23
  %71 = icmp ne i32 %70, 0
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %8) #19
  br i1 %71, label %72, label %86

72:                                               ; preds = %64
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %74 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %75 = load i8*, i8** %74, align 8
  %76 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  call void @_ZNK7RDTimer3MsgEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %9, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %76)
  %77 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %9) #19
  %78 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %73, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i64 0, i64 0), i8* noundef %75, i8* noundef %77)
          to label %79 unwind label %82

79:                                               ; preds = %72
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %9) #19
  %80 = call i8* @__cxa_allocate_exception(i64 8) #19
  %81 = bitcast i8* %80 to i8**
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.49, i64 0, i64 0), i8** %81, align 16
  call void @__cxa_throw(i8* %80, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #22
  unreachable

82:                                               ; preds = %72
  %83 = landingpad { i8*, i32 }
          cleanup
  %84 = extractvalue { i8*, i32 } %83, 0
  store i8* %84, i8** %10, align 8
  %85 = extractvalue { i8*, i32 } %83, 1
  store i32 %85, i32* %11, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %9) #19
  br label %187

86:                                               ; preds = %64
  %87 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #19
  %88 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %87, i8** %88, align 8
  %89 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %90 = load i8*, i8** %89, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %93, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.50, i64 0, i64 0))
  %95 = call i8* @__cxa_allocate_exception(i64 8) #19
  %96 = bitcast i8* %95 to i8**
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.51, i64 0, i64 0), i8** %96, align 16
  call void @__cxa_throw(i8* %95, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #22
  unreachable

97:                                               ; preds = %86
  %98 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  %102 = call noundef zeroext i1 @_ZNK7RDTimer12AccumulatingEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %101)
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0)
  %105 = call i32 @strcmp(i8* noundef %100, i8* noundef %104) #23
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %97
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %108, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i64 0, i64 0))
  %110 = call i8* @__cxa_allocate_exception(i64 8) #19
  %111 = bitcast i8* %110 to i8**
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.55, i64 0, i64 0), i8** %111, align 16
  call void @__cxa_throw(i8* %110, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #22
  unreachable

112:                                              ; preds = %97
  %113 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #19
  %114 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %113, i8** %114, align 8
  %115 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %116 = load i8*, i8** %115, align 8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %119, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.56, i64 0, i64 0))
  %121 = call i8* @__cxa_allocate_exception(i64 8) #19
  %122 = bitcast i8* %121 to i8**
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57, i64 0, i64 0), i8** %122, align 16
  call void @__cxa_throw(i8* %121, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #22
  unreachable

123:                                              ; preds = %112
  %124 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %125 = load i8*, i8** %124, align 8
  %126 = call contract double @atof(i8* noundef %125) #23
  %127 = fptrunc double %126 to float
  store float %127, float* %6, align 4
  %128 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #19
  %129 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %128, i8** %129, align 8
  %130 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %131 = load i8*, i8** %130, align 8
  %132 = icmp eq i8* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %123
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %134, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.58, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %123
  %137 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @atoi(i8* noundef %142) #23
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
  %163 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12) #19
  %164 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  invoke void @_ZNK7RDTimer3MsgEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %13, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %164)
          to label %165 unwind label %178

165:                                              ; preds = %150
  %166 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %13) #19
  %167 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  %168 = invoke noundef zeroext i1 @_ZNK7RDTimer12AccumulatingEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %167)
          to label %169 unwind label %182

169:                                              ; preds = %165
  %170 = zext i1 %168 to i64
  %171 = select i1 %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0)
  %172 = load float, float* %6, align 4
  %173 = fpext float %172 to double
  %174 = load i32, i32* %5, align 4
  %175 = add nsw i32 %174, 1
  %176 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %161, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.59, i64 0, i64 0), i8* noundef %163, i8* noundef %166, i8* noundef %171, double noundef %173, i32 noundef %175)
          to label %177 unwind label %182

177:                                              ; preds = %169
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %13) #19
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12) #19
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
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %13) #19
  br label %186

186:                                              ; preds = %182, %178
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12) #19
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

declare i8* @__cxa_allocate_exception(i64)

declare void @__cxa_throw(i8*, i8*, i8*)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN14PerfSerializerD2Ev(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %0) unnamed_addr #12 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %15 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i64 0, i64 0))
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
  %27 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i64 0, i64 0))
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
  %41 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0), i8* noundef %38, i8* noundef %40)
          to label %42 unwind label %53

42:                                               ; preds = %35
  %43 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %44 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 7
  %45 = getelementptr inbounds [100 x i8], [100 x i8]* %44, i64 0, i64 0
  %46 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 6
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %46, i64 0, i64 0
  %48 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %43, i64 noundef 200, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0), i8* noundef %45, i8* noundef %47) #19
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
  call void @__clang_call_terminate(i8* %55) #17
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN14PerfSerializerD0Ev(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %0) unnamed_addr #12 comdat align 2 {
  %2 = alloca %class.PerfSerializer*, align 8
  store %class.PerfSerializer* %0, %class.PerfSerializer** %2, align 8
  %3 = load %class.PerfSerializer*, %class.PerfSerializer** %2, align 8
  call void @llvm.trap() #17
  unreachable
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #15 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #19
  call void @_ZSt9terminatev() #17
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

declare i32 @system(i8* noundef) #4

declare i64 @getline(i8** noundef, i64* noundef, %struct._IO_FILE* noundef) #4

; Function Attrs: nounwind
declare i8* @strtok(i8* noundef, i8* noundef) #7

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #16

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK7RDTimer4TypeEv(%"class.std::basic_string"* noalias sret(%"class.std::basic_string") align 8 %0, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %1) #3 comdat align 2 {
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
define linkonce_odr dso_local void @_ZNK7RDTimer3MsgEv(%"class.std::basic_string"* noalias sret(%"class.std::basic_string") align 8 %0, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %1) #3 comdat align 2 {
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
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7RDTimer12AccumulatingEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) #14 comdat align 2 {
  %2 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %2, align 8
  %3 = load %class.RDTimer*, %class.RDTimer** %2, align 8
  %4 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 1
  %5 = load i8, i8* %4, align 8
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: nounwind readonly willreturn
declare double @atof(i8* noundef) #16

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #16

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_ZNK7RDTimer4TimeEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) #14 comdat align 2 {
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

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (%struct.Node*, i32*, i8*, i8*, i8*, i32*, i32)** @_Z6KernelP4NodePiPbS2_S2_S1_i to i8*), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %3 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i8*, i8*, i8*, i8*, i32)** @_Z7Kernel2PbS_S_S_i to i8*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
attributes #2 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind }
attributes #16 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { noreturn }
attributes #23 = { nounwind readonly willreturn }

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
!11 = distinct !{!11, !7}
