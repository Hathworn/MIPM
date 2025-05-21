; ModuleID = 'hip/nw/needle_hip.cu'
source_filename = "hip/nw/needle_hip.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

$_ZN4dim3C2Ejjj = comdat any

$__hip_gpubin_handle = comdat any

@_Z20needle_cuda_shared_1PiS_iiii = constant void (i32*, i32*, i32, i32, i32, i32)* @_Z35__device_stub__needle_cuda_shared_1PiS_iiii, align 8
@_Z20needle_cuda_shared_2PiS_iiii = constant void (i32*, i32*, i32, i32, i32, i32)* @_Z35__device_stub__needle_cuda_shared_2PiS_iiii, align 8
@blosum62 = dso_local global [24 x [24 x i32]] [[24 x i32] [i32 4, i32 -1, i32 -2, i32 -2, i32 0, i32 -1, i32 -1, i32 0, i32 -2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -2, i32 -1, i32 1, i32 0, i32 -3, i32 -2, i32 0, i32 -2, i32 -1, i32 0, i32 -4], [24 x i32] [i32 -1, i32 5, i32 0, i32 -2, i32 -3, i32 1, i32 0, i32 -2, i32 0, i32 -3, i32 -2, i32 2, i32 -1, i32 -3, i32 -2, i32 -1, i32 -1, i32 -3, i32 -2, i32 -3, i32 -1, i32 0, i32 -1, i32 -4], [24 x i32] [i32 -2, i32 0, i32 6, i32 1, i32 -3, i32 0, i32 0, i32 0, i32 1, i32 -3, i32 -3, i32 0, i32 -2, i32 -3, i32 -2, i32 1, i32 0, i32 -4, i32 -2, i32 -3, i32 3, i32 0, i32 -1, i32 -4], [24 x i32] [i32 -2, i32 -2, i32 1, i32 6, i32 -3, i32 0, i32 2, i32 -1, i32 -1, i32 -3, i32 -4, i32 -1, i32 -3, i32 -3, i32 -1, i32 0, i32 -1, i32 -4, i32 -3, i32 -3, i32 4, i32 1, i32 -1, i32 -4], [24 x i32] [i32 0, i32 -3, i32 -3, i32 -3, i32 9, i32 -3, i32 -4, i32 -3, i32 -3, i32 -1, i32 -1, i32 -3, i32 -1, i32 -2, i32 -3, i32 -1, i32 -1, i32 -2, i32 -2, i32 -1, i32 -3, i32 -3, i32 -2, i32 -4], [24 x i32] [i32 -1, i32 1, i32 0, i32 0, i32 -3, i32 5, i32 2, i32 -2, i32 0, i32 -3, i32 -2, i32 1, i32 0, i32 -3, i32 -1, i32 0, i32 -1, i32 -2, i32 -1, i32 -2, i32 0, i32 3, i32 -1, i32 -4], [24 x i32] [i32 -1, i32 0, i32 0, i32 2, i32 -4, i32 2, i32 5, i32 -2, i32 0, i32 -3, i32 -3, i32 1, i32 -2, i32 -3, i32 -1, i32 0, i32 -1, i32 -3, i32 -2, i32 -2, i32 1, i32 4, i32 -1, i32 -4], [24 x i32] [i32 0, i32 -2, i32 0, i32 -1, i32 -3, i32 -2, i32 -2, i32 6, i32 -2, i32 -4, i32 -4, i32 -2, i32 -3, i32 -3, i32 -2, i32 0, i32 -2, i32 -2, i32 -3, i32 -3, i32 -1, i32 -2, i32 -1, i32 -4], [24 x i32] [i32 -2, i32 0, i32 1, i32 -1, i32 -3, i32 0, i32 0, i32 -2, i32 8, i32 -3, i32 -3, i32 -1, i32 -2, i32 -1, i32 -2, i32 -1, i32 -2, i32 -2, i32 2, i32 -3, i32 0, i32 0, i32 -1, i32 -4], [24 x i32] [i32 -1, i32 -3, i32 -3, i32 -3, i32 -1, i32 -3, i32 -3, i32 -4, i32 -3, i32 4, i32 2, i32 -3, i32 1, i32 0, i32 -3, i32 -2, i32 -1, i32 -3, i32 -1, i32 3, i32 -3, i32 -3, i32 -1, i32 -4], [24 x i32] [i32 -1, i32 -2, i32 -3, i32 -4, i32 -1, i32 -2, i32 -3, i32 -4, i32 -3, i32 2, i32 4, i32 -2, i32 2, i32 0, i32 -3, i32 -2, i32 -1, i32 -2, i32 -1, i32 1, i32 -4, i32 -3, i32 -1, i32 -4], [24 x i32] [i32 -1, i32 2, i32 0, i32 -1, i32 -3, i32 1, i32 1, i32 -2, i32 -1, i32 -3, i32 -2, i32 5, i32 -1, i32 -3, i32 -1, i32 0, i32 -1, i32 -3, i32 -2, i32 -2, i32 0, i32 1, i32 -1, i32 -4], [24 x i32] [i32 -1, i32 -1, i32 -2, i32 -3, i32 -1, i32 0, i32 -2, i32 -3, i32 -2, i32 1, i32 2, i32 -1, i32 5, i32 0, i32 -2, i32 -1, i32 -1, i32 -1, i32 -1, i32 1, i32 -3, i32 -1, i32 -1, i32 -4], [24 x i32] [i32 -2, i32 -3, i32 -3, i32 -3, i32 -2, i32 -3, i32 -3, i32 -3, i32 -1, i32 0, i32 0, i32 -3, i32 0, i32 6, i32 -4, i32 -2, i32 -2, i32 1, i32 3, i32 -1, i32 -3, i32 -3, i32 -1, i32 -4], [24 x i32] [i32 -1, i32 -2, i32 -2, i32 -1, i32 -3, i32 -1, i32 -1, i32 -2, i32 -2, i32 -3, i32 -3, i32 -1, i32 -2, i32 -4, i32 7, i32 -1, i32 -1, i32 -4, i32 -3, i32 -2, i32 -2, i32 -1, i32 -2, i32 -4], [24 x i32] [i32 1, i32 -1, i32 1, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 -1, i32 -2, i32 -2, i32 0, i32 -1, i32 -2, i32 -1, i32 4, i32 1, i32 -3, i32 -2, i32 -2, i32 0, i32 0, i32 0, i32 -4], [24 x i32] [i32 0, i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -2, i32 -2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -2, i32 -1, i32 1, i32 5, i32 -2, i32 -2, i32 0, i32 -1, i32 -1, i32 0, i32 -4], [24 x i32] [i32 -3, i32 -3, i32 -4, i32 -4, i32 -2, i32 -2, i32 -3, i32 -2, i32 -2, i32 -3, i32 -2, i32 -3, i32 -1, i32 1, i32 -4, i32 -3, i32 -2, i32 11, i32 2, i32 -3, i32 -4, i32 -3, i32 -2, i32 -4], [24 x i32] [i32 -2, i32 -2, i32 -2, i32 -3, i32 -2, i32 -1, i32 -2, i32 -3, i32 2, i32 -1, i32 -1, i32 -2, i32 -1, i32 3, i32 -3, i32 -2, i32 -2, i32 2, i32 7, i32 -1, i32 -3, i32 -2, i32 -1, i32 -4], [24 x i32] [i32 0, i32 -3, i32 -3, i32 -3, i32 -1, i32 -2, i32 -2, i32 -3, i32 -3, i32 3, i32 1, i32 -2, i32 1, i32 -1, i32 -2, i32 -2, i32 0, i32 -3, i32 -1, i32 4, i32 -3, i32 -2, i32 -1, i32 -4], [24 x i32] [i32 -2, i32 -1, i32 3, i32 4, i32 -3, i32 0, i32 1, i32 -1, i32 0, i32 -3, i32 -4, i32 0, i32 -3, i32 -3, i32 -2, i32 0, i32 -1, i32 -4, i32 -3, i32 -3, i32 4, i32 1, i32 -1, i32 -4], [24 x i32] [i32 -1, i32 0, i32 0, i32 1, i32 -3, i32 3, i32 4, i32 -2, i32 0, i32 -3, i32 -3, i32 1, i32 -1, i32 -3, i32 -1, i32 0, i32 -1, i32 -3, i32 -2, i32 -2, i32 1, i32 4, i32 -1, i32 -4], [24 x i32] [i32 0, i32 -1, i32 -1, i32 -1, i32 -2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -2, i32 0, i32 0, i32 -2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -4], [24 x i32] [i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 1]], align 16
@.str = private unnamed_addr constant [25 x i8] c"WG size of kernel = %d \0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Usage: %s <max_rows/max_cols> <penalty> \0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"\09<dimension>  - x and y dimensions\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"\09<penalty> - penalty(positive integer)\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"The dimension values must be a multiple of 16\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"error: can not allocate memory\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Start Needleman-Wunsch\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"result.txt\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"print traceback value GPU:\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@0 = private unnamed_addr constant [33 x i8] c"_Z20needle_cuda_shared_1PiS_iiii\00", align 1
@1 = private unnamed_addr constant [33 x i8] c"_Z20needle_cuda_shared_2PiS_iiii\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z7maximumiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %8, align 4
  br label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %4, align 4
  br label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z35__device_stub__needle_cuda_shared_1PiS_iiii(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dim3, align 8
  %14 = alloca %struct.dim3, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca { i64, i32 }, align 8
  %18 = alloca { i64, i32 }, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = alloca i8*, i64 6, align 16
  %20 = bitcast i32** %7 to i8*
  %21 = getelementptr i8*, i8** %19, i32 0
  store i8* %20, i8** %21, align 8
  %22 = bitcast i32** %8 to i8*
  %23 = getelementptr i8*, i8** %19, i32 1
  store i8* %22, i8** %23, align 8
  %24 = bitcast i32* %9 to i8*
  %25 = getelementptr i8*, i8** %19, i32 2
  store i8* %24, i8** %25, align 8
  %26 = bitcast i32* %10 to i8*
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
  %48 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i32*, i32*, i32, i32, i32, i32)** @_Z20needle_cuda_shared_1PiS_iiii to i8*), i64 %38, i32 %40, i64 %44, i32 %46, i8** noundef %19, i64 noundef %33, %struct.ihipStream_t* noundef %47)
  br label %49

49:                                               ; preds = %6
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z35__device_stub__needle_cuda_shared_2PiS_iiii(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dim3, align 8
  %14 = alloca %struct.dim3, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca { i64, i32 }, align 8
  %18 = alloca { i64, i32 }, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = alloca i8*, i64 6, align 16
  %20 = bitcast i32** %7 to i8*
  %21 = getelementptr i8*, i8** %19, i32 0
  store i8* %20, i8** %21, align 8
  %22 = bitcast i32** %8 to i8*
  %23 = getelementptr i8*, i8** %19, i32 1
  store i8* %22, i8** %23, align 8
  %24 = bitcast i32* %9 to i8*
  %25 = getelementptr i8*, i8** %19, i32 2
  store i8* %24, i8** %25, align 8
  %26 = bitcast i32* %10 to i8*
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
  %48 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i32*, i32*, i32, i32, i32, i32)** @_Z20needle_cuda_shared_2PiS_iiii to i8*), i64 %38, i32 %40, i64 %44, i32 %46, i8** noundef %19, i64 noundef %33, %struct.ihipStream_t* noundef %47)
  br label %49

49:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef double @_Z7gettimev() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @gettimeofday(%struct.timeval* noundef %1, %struct.timezone* noundef null) #11
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
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 16)
  %7 = load i32, i32* %4, align 4
  %8 = load i8**, i8*** %5, align 8
  call void @_Z7runTestiPPc(i32 noundef %7, i8** noundef %8)
  ret i32 0
}

declare i32 @printf(i8* noundef, ...) #5

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z7runTestiPPc(i32 noundef %0, i8** noundef %1) #6 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.dim3, align 4
  %23 = alloca %struct.dim3, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.dim3, align 4
  %27 = alloca %struct.dim3, align 4
  %28 = alloca { i64, i32 }, align 4
  %29 = alloca { i64, i32 }, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.dim3, align 4
  %32 = alloca %struct.dim3, align 4
  %33 = alloca { i64, i32 }, align 4
  %34 = alloca { i64, i32 }, align 4
  %35 = alloca %struct._IO_FILE*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %45 = load i32, i32* %3, align 4
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %47, label %60

47:                                               ; preds = %2
  %48 = load i8**, i8*** %4, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @atoi(i8* noundef %50) #12
  store i32 %51, i32* %5, align 4
  %52 = load i8**, i8*** %4, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @atoi(i8* noundef %54) #12
  store i32 %55, i32* %6, align 4
  %56 = load i8**, i8*** %4, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @atoi(i8* noundef %58) #12
  store i32 %59, i32* %7, align 4
  br label %63

60:                                               ; preds = %2
  %61 = load i32, i32* %3, align 4
  %62 = load i8**, i8*** %4, align 8
  call void @_Z5usageiPPc(i32 noundef %61, i8** noundef %62)
  br label %63

63:                                               ; preds = %60, %47
  %64 = load i8**, i8*** %4, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @atoi(i8* noundef %66) #12
  %68 = srem i32 %67, 16
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %71, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable

73:                                               ; preds = %63
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %6, align 4
  %80 = mul nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 4
  %83 = call noalias i8* @malloc(i64 noundef %82) #14
  %84 = bitcast i8* %83 to i32*
  store i32* %84, i32** %10, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %6, align 4
  %87 = mul nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = call noalias i8* @malloc(i64 noundef %89) #14
  %91 = bitcast i8* %90 to i32*
  store i32* %91, i32** %8, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %6, align 4
  %94 = mul nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 4
  %97 = call noalias i8* @malloc(i64 noundef %96) #14
  %98 = bitcast i8* %97 to i32*
  store i32* %98, i32** %9, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %73
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %102, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %73
  call void @srand(i32 noundef 7) #11
  store i32 0, i32* %14, align 4
  br label %105

105:                                              ; preds = %127, %104
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %130

109:                                              ; preds = %105
  store i32 0, i32* %15, align 4
  br label %110

110:                                              ; preds = %123, %109
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %110
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %6, align 4
  %118 = mul nsw i32 %116, %117
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %115, i64 %121
  store i32 0, i32* %122, align 4
  br label %123

123:                                              ; preds = %114
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %15, align 4
  br label %110, !llvm.loop !6

126:                                              ; preds = %110
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %14, align 4
  br label %105, !llvm.loop !8

130:                                              ; preds = %105
  %131 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %132

132:                                              ; preds = %146, %130
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %5, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %149

136:                                              ; preds = %132
  %137 = call i32 @rand() #11
  %138 = srem i32 %137, 10
  %139 = add nsw i32 %138, 1
  %140 = load i32*, i32** %8, align 8
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* %6, align 4
  %143 = mul nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %140, i64 %144
  store i32 %139, i32* %145, align 4
  br label %146

146:                                              ; preds = %136
  %147 = load i32, i32* %16, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %16, align 4
  br label %132, !llvm.loop !9

149:                                              ; preds = %132
  store i32 1, i32* %17, align 4
  br label %150

150:                                              ; preds = %162, %149
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* %6, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %165

154:                                              ; preds = %150
  %155 = call i32 @rand() #11
  %156 = srem i32 %155, 10
  %157 = add nsw i32 %156, 1
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %17, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %157, i32* %161, align 4
  br label %162

162:                                              ; preds = %154
  %163 = load i32, i32* %17, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %17, align 4
  br label %150, !llvm.loop !10

165:                                              ; preds = %150
  store i32 1, i32* %18, align 4
  br label %166

166:                                              ; preds = %205, %165
  %167 = load i32, i32* %18, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %208

170:                                              ; preds = %166
  store i32 1, i32* %19, align 4
  br label %171

171:                                              ; preds = %201, %170
  %172 = load i32, i32* %19, align 4
  %173 = load i32, i32* %5, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %204

175:                                              ; preds = %171
  %176 = load i32*, i32** %8, align 8
  %177 = load i32, i32* %18, align 4
  %178 = load i32, i32* %6, align 4
  %179 = mul nsw i32 %177, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %176, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [24 x [24 x i32]], [24 x [24 x i32]]* @blosum62, i64 0, i64 %183
  %185 = load i32*, i32** %8, align 8
  %186 = load i32, i32* %19, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [24 x i32], [24 x i32]* %184, i64 0, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load i32*, i32** %10, align 8
  %194 = load i32, i32* %18, align 4
  %195 = load i32, i32* %6, align 4
  %196 = mul nsw i32 %194, %195
  %197 = load i32, i32* %19, align 4
  %198 = add nsw i32 %196, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %193, i64 %199
  store i32 %192, i32* %200, align 4
  br label %201

201:                                              ; preds = %175
  %202 = load i32, i32* %19, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %19, align 4
  br label %171, !llvm.loop !11

204:                                              ; preds = %171
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %18, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %18, align 4
  br label %166, !llvm.loop !12

208:                                              ; preds = %166
  store i32 1, i32* %20, align 4
  br label %209

209:                                              ; preds = %224, %208
  %210 = load i32, i32* %20, align 4
  %211 = load i32, i32* %5, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %227

213:                                              ; preds = %209
  %214 = load i32, i32* %20, align 4
  %215 = sub nsw i32 0, %214
  %216 = load i32, i32* %7, align 4
  %217 = mul nsw i32 %215, %216
  %218 = load i32*, i32** %8, align 8
  %219 = load i32, i32* %20, align 4
  %220 = load i32, i32* %6, align 4
  %221 = mul nsw i32 %219, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %218, i64 %222
  store i32 %217, i32* %223, align 4
  br label %224

224:                                              ; preds = %213
  %225 = load i32, i32* %20, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %20, align 4
  br label %209, !llvm.loop !13

227:                                              ; preds = %209
  store i32 1, i32* %21, align 4
  br label %228

228:                                              ; preds = %241, %227
  %229 = load i32, i32* %21, align 4
  %230 = load i32, i32* %6, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %244

232:                                              ; preds = %228
  %233 = load i32, i32* %21, align 4
  %234 = sub nsw i32 0, %233
  %235 = load i32, i32* %7, align 4
  %236 = mul nsw i32 %234, %235
  %237 = load i32*, i32** %8, align 8
  %238 = load i32, i32* %21, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  store i32 %236, i32* %240, align 4
  br label %241

241:                                              ; preds = %232
  %242 = load i32, i32* %21, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %21, align 4
  br label %228, !llvm.loop !14

244:                                              ; preds = %228
  %245 = load i32, i32* %6, align 4
  %246 = load i32, i32* %5, align 4
  %247 = mul nsw i32 %245, %246
  store i32 %247, i32* %13, align 4
  %248 = bitcast i32** %12 to i8**
  %249 = load i32, i32* %13, align 4
  %250 = sext i32 %249 to i64
  %251 = mul i64 4, %250
  %252 = call i32 @hipMalloc(i8** noundef %248, i64 noundef %251)
  %253 = bitcast i32** %11 to i8**
  %254 = load i32, i32* %13, align 4
  %255 = sext i32 %254 to i64
  %256 = mul i64 4, %255
  %257 = call i32 @hipMalloc(i8** noundef %253, i64 noundef %256)
  %258 = load i32*, i32** %12, align 8
  %259 = bitcast i32* %258 to i8*
  %260 = load i32*, i32** %10, align 8
  %261 = bitcast i32* %260 to i8*
  %262 = load i32, i32* %13, align 4
  %263 = sext i32 %262 to i64
  %264 = mul i64 4, %263
  %265 = call i32 @hipMemcpy(i8* noundef %259, i8* noundef %261, i64 noundef %264, i32 noundef 1)
  %266 = load i32*, i32** %11, align 8
  %267 = bitcast i32* %266 to i8*
  %268 = load i32*, i32** %8, align 8
  %269 = bitcast i32* %268 to i8*
  %270 = load i32, i32* %13, align 4
  %271 = sext i32 %270 to i64
  %272 = mul i64 4, %271
  %273 = call i32 @hipMemcpy(i8* noundef %267, i8* noundef %269, i64 noundef %272, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %22, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %23, i32 noundef 16, i32 noundef 1, i32 noundef 1)
  %274 = load i32, i32* %6, align 4
  %275 = sub nsw i32 %274, 1
  %276 = sdiv i32 %275, 16
  store i32 %276, i32* %24, align 4
  store i32 1, i32* %25, align 4
  br label %277

277:                                              ; preds = %313, %244
  %278 = load i32, i32* %25, align 4
  %279 = load i32, i32* %24, align 4
  %280 = icmp sle i32 %278, %279
  br i1 %280, label %281, label %316

281:                                              ; preds = %277
  %282 = load i32, i32* %25, align 4
  %283 = getelementptr inbounds %struct.dim3, %struct.dim3* %22, i32 0, i32 0
  store i32 %282, i32* %283, align 4
  %284 = getelementptr inbounds %struct.dim3, %struct.dim3* %22, i32 0, i32 1
  store i32 1, i32* %284, align 4
  br label %285

285:                                              ; preds = %281
  %286 = bitcast %struct.dim3* %26 to i8*
  %287 = bitcast %struct.dim3* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %286, i8* align 4 %287, i64 12, i1 false)
  %288 = bitcast %struct.dim3* %27 to i8*
  %289 = bitcast %struct.dim3* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %288, i8* align 4 %289, i64 12, i1 false)
  %290 = bitcast { i64, i32 }* %28 to i8*
  %291 = bitcast %struct.dim3* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %290, i8* align 4 %291, i64 12, i1 false)
  %292 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 0
  %293 = load i64, i64* %292, align 4
  %294 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = bitcast { i64, i32 }* %29 to i8*
  %297 = bitcast %struct.dim3* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %296, i8* align 4 %297, i64 12, i1 false)
  %298 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %29, i32 0, i32 0
  %299 = load i64, i64* %298, align 4
  %300 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %29, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @__hipPushCallConfiguration(i64 %293, i32 %295, i64 %299, i32 %301, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %311, label %304

304:                                              ; preds = %285
  %305 = load i32*, i32** %12, align 8
  %306 = load i32*, i32** %11, align 8
  %307 = load i32, i32* %6, align 4
  %308 = load i32, i32* %7, align 4
  %309 = load i32, i32* %25, align 4
  %310 = load i32, i32* %24, align 4
  call void @_Z35__device_stub__needle_cuda_shared_1PiS_iiii(i32* noundef %305, i32* noundef %306, i32 noundef %307, i32 noundef %308, i32 noundef %309, i32 noundef %310)
  br label %311

311:                                              ; preds = %304, %285
  br label %312

312:                                              ; preds = %311
  br label %313

313:                                              ; preds = %312
  %314 = load i32, i32* %25, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %25, align 4
  br label %277, !llvm.loop !15

316:                                              ; preds = %277
  %317 = load i32, i32* %24, align 4
  %318 = sub nsw i32 %317, 1
  store i32 %318, i32* %30, align 4
  br label %319

319:                                              ; preds = %354, %316
  %320 = load i32, i32* %30, align 4
  %321 = icmp sge i32 %320, 1
  br i1 %321, label %322, label %357

322:                                              ; preds = %319
  %323 = load i32, i32* %30, align 4
  %324 = getelementptr inbounds %struct.dim3, %struct.dim3* %22, i32 0, i32 0
  store i32 %323, i32* %324, align 4
  %325 = getelementptr inbounds %struct.dim3, %struct.dim3* %22, i32 0, i32 1
  store i32 1, i32* %325, align 4
  br label %326

326:                                              ; preds = %322
  %327 = bitcast %struct.dim3* %31 to i8*
  %328 = bitcast %struct.dim3* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %327, i8* align 4 %328, i64 12, i1 false)
  %329 = bitcast %struct.dim3* %32 to i8*
  %330 = bitcast %struct.dim3* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %329, i8* align 4 %330, i64 12, i1 false)
  %331 = bitcast { i64, i32 }* %33 to i8*
  %332 = bitcast %struct.dim3* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %331, i8* align 4 %332, i64 12, i1 false)
  %333 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %33, i32 0, i32 0
  %334 = load i64, i64* %333, align 4
  %335 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %33, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = bitcast { i64, i32 }* %34 to i8*
  %338 = bitcast %struct.dim3* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %337, i8* align 4 %338, i64 12, i1 false)
  %339 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %34, i32 0, i32 0
  %340 = load i64, i64* %339, align 4
  %341 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %34, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @__hipPushCallConfiguration(i64 %334, i32 %336, i64 %340, i32 %342, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %352, label %345

345:                                              ; preds = %326
  %346 = load i32*, i32** %12, align 8
  %347 = load i32*, i32** %11, align 8
  %348 = load i32, i32* %6, align 4
  %349 = load i32, i32* %7, align 4
  %350 = load i32, i32* %30, align 4
  %351 = load i32, i32* %24, align 4
  call void @_Z35__device_stub__needle_cuda_shared_2PiS_iiii(i32* noundef %346, i32* noundef %347, i32 noundef %348, i32 noundef %349, i32 noundef %350, i32 noundef %351)
  br label %352

352:                                              ; preds = %345, %326
  br label %353

353:                                              ; preds = %352
  br label %354

354:                                              ; preds = %353
  %355 = load i32, i32* %30, align 4
  %356 = add nsw i32 %355, -1
  store i32 %356, i32* %30, align 4
  br label %319, !llvm.loop !16

357:                                              ; preds = %319
  %358 = load i32*, i32** %9, align 8
  %359 = bitcast i32* %358 to i8*
  %360 = load i32*, i32** %11, align 8
  %361 = bitcast i32* %360 to i8*
  %362 = load i32, i32* %13, align 4
  %363 = sext i32 %362 to i64
  %364 = mul i64 4, %363
  %365 = call i32 @hipMemcpy(i8* noundef %359, i8* noundef %361, i64 noundef %364, i32 noundef 2)
  %366 = call %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store %struct._IO_FILE* %366, %struct._IO_FILE** %35, align 8
  %367 = load %struct._IO_FILE*, %struct._IO_FILE** %35, align 8
  %368 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %367, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %369 = load i32, i32* %5, align 4
  %370 = sub nsw i32 %369, 2
  store i32 %370, i32* %36, align 4
  %371 = load i32, i32* %5, align 4
  %372 = sub nsw i32 %371, 2
  store i32 %372, i32* %37, align 4
  br label %373

373:                                              ; preds = %544, %538, %531, %522, %357
  %374 = load i32, i32* %36, align 4
  %375 = icmp sge i32 %374, 0
  %376 = load i32, i32* %37, align 4
  %377 = icmp sge i32 %376, 0
  br i1 %377, label %378, label %545

378:                                              ; preds = %373
  %379 = load i32, i32* %36, align 4
  %380 = load i32, i32* %5, align 4
  %381 = sub nsw i32 %380, 2
  %382 = icmp eq i32 %379, %381
  br i1 %382, label %383, label %400

383:                                              ; preds = %378
  %384 = load i32, i32* %37, align 4
  %385 = load i32, i32* %5, align 4
  %386 = sub nsw i32 %385, 2
  %387 = icmp eq i32 %384, %386
  br i1 %387, label %388, label %400

388:                                              ; preds = %383
  %389 = load %struct._IO_FILE*, %struct._IO_FILE** %35, align 8
  %390 = load i32*, i32** %9, align 8
  %391 = load i32, i32* %36, align 4
  %392 = load i32, i32* %6, align 4
  %393 = mul nsw i32 %391, %392
  %394 = load i32, i32* %37, align 4
  %395 = add nsw i32 %393, %394
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %390, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %389, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 noundef %398)
  br label %400

400:                                              ; preds = %388, %383, %378
  %401 = load i32, i32* %36, align 4
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %403, label %407

403:                                              ; preds = %400
  %404 = load i32, i32* %37, align 4
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %407

406:                                              ; preds = %403
  br label %545

407:                                              ; preds = %403, %400
  %408 = load i32, i32* %36, align 4
  %409 = icmp sgt i32 %408, 0
  br i1 %409, label %410, label %445

410:                                              ; preds = %407
  %411 = load i32, i32* %37, align 4
  %412 = icmp sgt i32 %411, 0
  br i1 %412, label %413, label %445

413:                                              ; preds = %410
  %414 = load i32*, i32** %9, align 8
  %415 = load i32, i32* %36, align 4
  %416 = sub nsw i32 %415, 1
  %417 = load i32, i32* %6, align 4
  %418 = mul nsw i32 %416, %417
  %419 = load i32, i32* %37, align 4
  %420 = add nsw i32 %418, %419
  %421 = sub nsw i32 %420, 1
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %414, i64 %422
  %424 = load i32, i32* %423, align 4
  store i32 %424, i32* %38, align 4
  %425 = load i32*, i32** %9, align 8
  %426 = load i32, i32* %36, align 4
  %427 = load i32, i32* %6, align 4
  %428 = mul nsw i32 %426, %427
  %429 = load i32, i32* %37, align 4
  %430 = add nsw i32 %428, %429
  %431 = sub nsw i32 %430, 1
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %425, i64 %432
  %434 = load i32, i32* %433, align 4
  store i32 %434, i32* %40, align 4
  %435 = load i32*, i32** %9, align 8
  %436 = load i32, i32* %36, align 4
  %437 = sub nsw i32 %436, 1
  %438 = load i32, i32* %6, align 4
  %439 = mul nsw i32 %437, %438
  %440 = load i32, i32* %37, align 4
  %441 = add nsw i32 %439, %440
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %435, i64 %442
  %444 = load i32, i32* %443, align 4
  store i32 %444, i32* %39, align 4
  br label %476

445:                                              ; preds = %410, %407
  %446 = load i32, i32* %36, align 4
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %448, label %459

448:                                              ; preds = %445
  store i32 -999, i32* %39, align 4
  store i32 -999, i32* %38, align 4
  %449 = load i32*, i32** %9, align 8
  %450 = load i32, i32* %36, align 4
  %451 = load i32, i32* %6, align 4
  %452 = mul nsw i32 %450, %451
  %453 = load i32, i32* %37, align 4
  %454 = add nsw i32 %452, %453
  %455 = sub nsw i32 %454, 1
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32, i32* %449, i64 %456
  %458 = load i32, i32* %457, align 4
  store i32 %458, i32* %40, align 4
  br label %475

459:                                              ; preds = %445
  %460 = load i32, i32* %37, align 4
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %462, label %473

462:                                              ; preds = %459
  store i32 -999, i32* %40, align 4
  store i32 -999, i32* %38, align 4
  %463 = load i32*, i32** %9, align 8
  %464 = load i32, i32* %36, align 4
  %465 = sub nsw i32 %464, 1
  %466 = load i32, i32* %6, align 4
  %467 = mul nsw i32 %465, %466
  %468 = load i32, i32* %37, align 4
  %469 = add nsw i32 %467, %468
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i32, i32* %463, i64 %470
  %472 = load i32, i32* %471, align 4
  store i32 %472, i32* %39, align 4
  br label %474

473:                                              ; preds = %459
  br label %474

474:                                              ; preds = %473, %462
  br label %475

475:                                              ; preds = %474, %448
  br label %476

476:                                              ; preds = %475, %413
  %477 = load i32, i32* %38, align 4
  %478 = load i32*, i32** %10, align 8
  %479 = load i32, i32* %36, align 4
  %480 = load i32, i32* %6, align 4
  %481 = mul nsw i32 %479, %480
  %482 = load i32, i32* %37, align 4
  %483 = add nsw i32 %481, %482
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i32, i32* %478, i64 %484
  %486 = load i32, i32* %485, align 4
  %487 = add nsw i32 %477, %486
  store i32 %487, i32* %42, align 4
  %488 = load i32, i32* %40, align 4
  %489 = load i32, i32* %7, align 4
  %490 = sub nsw i32 %488, %489
  store i32 %490, i32* %43, align 4
  %491 = load i32, i32* %39, align 4
  %492 = load i32, i32* %7, align 4
  %493 = sub nsw i32 %491, %492
  store i32 %493, i32* %44, align 4
  %494 = load i32, i32* %42, align 4
  %495 = load i32, i32* %43, align 4
  %496 = load i32, i32* %44, align 4
  %497 = call noundef i32 @_Z7maximumiii(i32 noundef %494, i32 noundef %495, i32 noundef %496)
  store i32 %497, i32* %41, align 4
  %498 = load i32, i32* %41, align 4
  %499 = load i32, i32* %42, align 4
  %500 = icmp eq i32 %498, %499
  br i1 %500, label %501, label %503

501:                                              ; preds = %476
  %502 = load i32, i32* %38, align 4
  store i32 %502, i32* %41, align 4
  br label %503

503:                                              ; preds = %501, %476
  %504 = load i32, i32* %41, align 4
  %505 = load i32, i32* %43, align 4
  %506 = icmp eq i32 %504, %505
  br i1 %506, label %507, label %509

507:                                              ; preds = %503
  %508 = load i32, i32* %40, align 4
  store i32 %508, i32* %41, align 4
  br label %509

509:                                              ; preds = %507, %503
  %510 = load i32, i32* %41, align 4
  %511 = load i32, i32* %44, align 4
  %512 = icmp eq i32 %510, %511
  br i1 %512, label %513, label %515

513:                                              ; preds = %509
  %514 = load i32, i32* %39, align 4
  store i32 %514, i32* %41, align 4
  br label %515

515:                                              ; preds = %513, %509
  %516 = load %struct._IO_FILE*, %struct._IO_FILE** %35, align 8
  %517 = load i32, i32* %41, align 4
  %518 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %516, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 noundef %517)
  %519 = load i32, i32* %41, align 4
  %520 = load i32, i32* %38, align 4
  %521 = icmp eq i32 %519, %520
  br i1 %521, label %522, label %527

522:                                              ; preds = %515
  %523 = load i32, i32* %36, align 4
  %524 = add nsw i32 %523, -1
  store i32 %524, i32* %36, align 4
  %525 = load i32, i32* %37, align 4
  %526 = add nsw i32 %525, -1
  store i32 %526, i32* %37, align 4
  br label %373, !llvm.loop !17

527:                                              ; preds = %515
  %528 = load i32, i32* %41, align 4
  %529 = load i32, i32* %40, align 4
  %530 = icmp eq i32 %528, %529
  br i1 %530, label %531, label %534

531:                                              ; preds = %527
  %532 = load i32, i32* %37, align 4
  %533 = add nsw i32 %532, -1
  store i32 %533, i32* %37, align 4
  br label %373, !llvm.loop !17

534:                                              ; preds = %527
  %535 = load i32, i32* %41, align 4
  %536 = load i32, i32* %39, align 4
  %537 = icmp eq i32 %535, %536
  br i1 %537, label %538, label %541

538:                                              ; preds = %534
  %539 = load i32, i32* %36, align 4
  %540 = add nsw i32 %539, -1
  store i32 %540, i32* %36, align 4
  br label %373, !llvm.loop !17

541:                                              ; preds = %534
  br label %542

542:                                              ; preds = %541
  br label %543

543:                                              ; preds = %542
  br label %544

544:                                              ; preds = %543
  br label %373, !llvm.loop !17

545:                                              ; preds = %406, %373
  %546 = load %struct._IO_FILE*, %struct._IO_FILE** %35, align 8
  %547 = call i32 @fclose(%struct._IO_FILE* noundef %546)
  %548 = load i32*, i32** %12, align 8
  %549 = bitcast i32* %548 to i8*
  %550 = call i32 @hipFree(i8* noundef %549)
  %551 = load i32*, i32** %11, align 8
  %552 = bitcast i32* %551 to i8*
  %553 = call i32 @hipFree(i8* noundef %552)
  %554 = load i32*, i32** %10, align 8
  %555 = bitcast i32* %554 to i8*
  call void @free(i8* noundef %555) #11
  %556 = load i32*, i32** %8, align 8
  %557 = bitcast i32* %556 to i8*
  call void @free(i8* noundef %557) #11
  %558 = load i32*, i32** %9, align 8
  %559 = bitcast i32* %558 to i8*
  call void @free(i8* noundef %559) #11
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z5usageiPPc(i32 noundef %0, i8** noundef %1) #6 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8**, i8*** %4, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* noundef %8)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable
}

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #7

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #8

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #9

; Function Attrs: nounwind
declare void @srand(i32 noundef) #3

; Function Attrs: nounwind
declare i32 @rand() #3

declare i32 @hipMalloc(i8** noundef, i64 noundef) #5

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 comdat align 2 {
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

declare i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) #5

declare %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #5

declare i32 @fclose(%struct._IO_FILE* noundef) #5

declare i32 @hipFree(i8* noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i32*, i32*, i32, i32, i32, i32)** @_Z20needle_cuda_shared_1PiS_iiii to i8*), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %3 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i32*, i32*, i32, i32, i32, i32)** @_Z20needle_cuda_shared_2PiS_iiii to i8*), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind allocsize(0) }

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
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
