; ModuleID = 'hip/hybridsort/bucketsort.hip.cu'
source_filename = "hip/hybridsort/bucketsort.hip.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque

$_ZN4dim3C2Ejjj = comdat any

$__hip_gpubin_handle = comdat any

@_Z11bucketcountPfS_PiPji = constant void (float*, float*, i32*, i32*, i32)* @_Z26__device_stub__bucketcountPfS_PiPji, align 8
@_Z18bucketprefixoffsetPjS_i = constant void (i32*, i32*, i32)* @_Z33__device_stub__bucketprefixoffsetPjS_i, align 8
@_Z10bucketsortPfPiS_iPjS1_ = constant void (float*, i32*, float*, i32, i32*, i32*)* @_Z25__device_stub__bucketsortPfPiS_iPjS1_, align 8
@_Z19histogram1024KernelPjPfffi = constant void (i32*, float*, float, float, i32)* @_Z34__device_stub__histogram1024KernelPjPfffi, align 8
@d_Result1024 = dso_local global i32* null, align 8
@h_offsets = dso_local global i32* null, align 8
@d_offsets = dso_local global i32* null, align 8
@d_indice = dso_local global i32* null, align 8
@pivotPoints = dso_local global float* null, align 8
@historesult = dso_local global float* null, align 8
@l_pivotpoints = dso_local global float* null, align 8
@d_prefixoffsets = dso_local global i32* null, align 8
@l_offsets = dso_local global i32* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"i=%d, p_idx = %d, divisions = %d\0A\00", align 1
@0 = private unnamed_addr constant [25 x i8] c"_Z11bucketcountPfS_PiPji\00", align 1
@1 = private unnamed_addr constant [28 x i8] c"_Z18bucketprefixoffsetPjS_i\00", align 1
@2 = private unnamed_addr constant [27 x i8] c"_Z10bucketsortPfPiS_iPjS1_\00", align 1
@3 = private unnamed_addr constant [31 x i8] c"_Z19histogram1024KernelPjPfffi\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z26__device_stub__bucketcountPfS_PiPji(float* noundef %0, float* noundef %1, i32* noundef %2, i32* noundef %3, i32 noundef %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca { i64, i32 }, align 8
  %16 = alloca { i64, i32 }, align 8
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = alloca i8*, i64 5, align 16
  %18 = bitcast float** %6 to i8*
  %19 = getelementptr i8*, i8** %17, i32 0
  store i8* %18, i8** %19, align 8
  %20 = bitcast float** %7 to i8*
  %21 = getelementptr i8*, i8** %17, i32 1
  store i8* %20, i8** %21, align 8
  %22 = bitcast i32** %8 to i8*
  %23 = getelementptr i8*, i8** %17, i32 2
  store i8* %22, i8** %23, align 8
  %24 = bitcast i32** %9 to i8*
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
  %44 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (float*, float*, i32*, i32*, i32)** @_Z11bucketcountPfS_PiPji to i8*), i64 %34, i32 %36, i64 %40, i32 %42, i8** noundef %17, i64 noundef %29, %struct.ihipStream_t* noundef %43)
  br label %45

45:                                               ; preds = %5
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z33__device_stub__bucketprefixoffsetPjS_i(i32* noundef %0, i32* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca { i64, i32 }, align 8
  %12 = alloca { i64, i32 }, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = alloca i8*, i64 3, align 16
  %14 = bitcast i32** %4 to i8*
  %15 = getelementptr i8*, i8** %13, i32 0
  store i8* %14, i8** %15, align 8
  %16 = bitcast i32** %5 to i8*
  %17 = getelementptr i8*, i8** %13, i32 1
  store i8* %16, i8** %17, align 8
  %18 = bitcast i32* %6 to i8*
  %19 = getelementptr i8*, i8** %13, i32 2
  store i8* %18, i8** %19, align 8
  %20 = call i32 @__hipPopCallConfiguration(%struct.dim3* %7, %struct.dim3* %8, i64* %9, i8** %10)
  %21 = load i64, i64* %9, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = bitcast { i64, i32 }* %11 to i8*
  %24 = bitcast %struct.dim3* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 12, i1 false)
  %25 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = bitcast { i64, i32 }* %12 to i8*
  %30 = bitcast %struct.dim3* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 12, i1 false)
  %31 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = bitcast i8* %22 to %struct.ihipStream_t*
  %36 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i32*, i32*, i32)** @_Z18bucketprefixoffsetPjS_i to i8*), i64 %26, i32 %28, i64 %32, i32 %34, i8** noundef %13, i64 noundef %21, %struct.ihipStream_t* noundef %35)
  br label %37

37:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z25__device_stub__bucketsortPfPiS_iPjS1_(float* noundef %0, i32* noundef %1, float* noundef %2, i32 noundef %3, i32* noundef %4, i32* noundef %5) #0 {
  %7 = alloca float*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.dim3, align 8
  %14 = alloca %struct.dim3, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca { i64, i32 }, align 8
  %18 = alloca { i64, i32 }, align 8
  store float* %0, float** %7, align 8
  store i32* %1, i32** %8, align 8
  store float* %2, float** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = alloca i8*, i64 6, align 16
  %20 = bitcast float** %7 to i8*
  %21 = getelementptr i8*, i8** %19, i32 0
  store i8* %20, i8** %21, align 8
  %22 = bitcast i32** %8 to i8*
  %23 = getelementptr i8*, i8** %19, i32 1
  store i8* %22, i8** %23, align 8
  %24 = bitcast float** %9 to i8*
  %25 = getelementptr i8*, i8** %19, i32 2
  store i8* %24, i8** %25, align 8
  %26 = bitcast i32* %10 to i8*
  %27 = getelementptr i8*, i8** %19, i32 3
  store i8* %26, i8** %27, align 8
  %28 = bitcast i32** %11 to i8*
  %29 = getelementptr i8*, i8** %19, i32 4
  store i8* %28, i8** %29, align 8
  %30 = bitcast i32** %12 to i8*
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
  %48 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (float*, i32*, float*, i32, i32*, i32*)** @_Z10bucketsortPfPiS_iPjS1_ to i8*), i64 %38, i32 %40, i64 %44, i32 %46, i8** noundef %19, i64 noundef %33, %struct.ihipStream_t* noundef %47)
  br label %49

49:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z34__device_stub__histogram1024KernelPjPfffi(i32* noundef %0, float* noundef %1, float noundef %2, float noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca { i64, i32 }, align 8
  %16 = alloca { i64, i32 }, align 8
  store i32* %0, i32** %6, align 8
  store float* %1, float** %7, align 8
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = alloca i8*, i64 5, align 16
  %18 = bitcast i32** %6 to i8*
  %19 = getelementptr i8*, i8** %17, i32 0
  store i8* %18, i8** %19, align 8
  %20 = bitcast float** %7 to i8*
  %21 = getelementptr i8*, i8** %17, i32 1
  store i8* %20, i8** %21, align 8
  %22 = bitcast float* %8 to i8*
  %23 = getelementptr i8*, i8** %17, i32 2
  store i8* %22, i8** %23, align 8
  %24 = bitcast float* %9 to i8*
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
  %44 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i32*, float*, float, float, i32)** @_Z19histogram1024KernelPjPfffi to i8*), i64 %34, i32 %36, i64 %40, i32 %42, i8** noundef %17, i64 noundef %29, %struct.ihipStream_t* noundef %43)
  br label %45

45:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z17initHistogram1024v() #2 {
  %1 = call i32 @hipMalloc(i8** noundef bitcast (i32** @d_Result1024 to i8**), i64 noundef 4096)
  ret void
}

declare i32 @hipMalloc(i8** noundef, i64 noundef) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z18closeHistogram1024v() #2 {
  %1 = load i32*, i32** @d_Result1024, align 8
  %2 = bitcast i32* %1 to i8*
  %3 = call i32 @hipFree(i8* noundef %2)
  ret void
}

declare i32 @hipFree(i8* noundef) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z16histogram1024GPUPjPfffi(i32* noundef %0, float* noundef %1, float noundef %2, float noundef %3, i32 noundef %4) #2 {
  %6 = alloca i32*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store float* %1, float** %7, align 8
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32*, i32** @d_Result1024, align 8
  %12 = bitcast i32* %11 to i8*
  %13 = call i32 @hipMemset(i8* noundef %12, i32 noundef 0, i64 noundef 4096)
  %14 = load i32*, i32** %6, align 8
  %15 = bitcast i32* %14 to i8*
  %16 = load i32*, i32** @d_Result1024, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = call i32 @hipMemcpy(i8* noundef %15, i8* noundef %17, i64 noundef 4096, i32 noundef 2)
  ret void
}

declare i32 @hipMemset(i8* noundef, i32 noundef, i64 noundef) #3

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z15init_bucketsorti(i32 noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call noalias i8* @malloc(i64 noundef 4096) #8
  %5 = bitcast i8* %4 to i32*
  store i32* %5, i32** @h_offsets, align 8
  %6 = call i32 @hipMalloc(i8** noundef bitcast (i32** @d_offsets to i8**), i64 noundef 4096)
  %7 = call noalias i8* @malloc(i64 noundef 4096) #8
  %8 = bitcast i8* %7 to float*
  store float* %8, float** @pivotPoints, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = call i32 @hipMalloc(i8** noundef bitcast (i32** @d_indice to i8**), i64 noundef %11)
  %13 = call noalias i8* @malloc(i64 noundef 4096) #8
  %14 = bitcast i8* %13 to float*
  store float* %14, float** @historesult, align 8
  %15 = call i32 @hipMalloc(i8** noundef bitcast (float** @l_pivotpoints to i8**), i64 noundef 4096)
  %16 = call i32 @hipMalloc(i8** noundef bitcast (i32** @l_offsets to i8**), i64 noundef 4096)
  %17 = load i32, i32* %2, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sdiv i32 %18, 4096
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = mul nsw i32 %21, 1024
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = call i32 @hipMalloc(i8** noundef bitcast (i32** @d_prefixoffsets to i8**), i64 noundef %24)
  call void @_Z17initHistogram1024v()
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z17finish_bucketsortv() #2 {
  %1 = load i32*, i32** @d_indice, align 8
  %2 = bitcast i32* %1 to i8*
  %3 = call i32 @hipFree(i8* noundef %2)
  %4 = load i32*, i32** @d_offsets, align 8
  %5 = bitcast i32* %4 to i8*
  %6 = call i32 @hipFree(i8* noundef %5)
  %7 = load float*, float** @l_pivotpoints, align 8
  %8 = bitcast float* %7 to i8*
  %9 = call i32 @hipFree(i8* noundef %8)
  %10 = load i32*, i32** @l_offsets, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = call i32 @hipFree(i8* noundef %11)
  %13 = load float*, float** @pivotPoints, align 8
  %14 = bitcast float* %13 to i8*
  call void @free(i8* noundef %14) #9
  %15 = load i32*, i32** @h_offsets, align 8
  %16 = bitcast i32* %15 to i8*
  call void @free(i8* noundef %16) #9
  %17 = load float*, float** @historesult, align 8
  %18 = bitcast float* %17 to i8*
  call void @free(i8* noundef %18) #9
  %19 = load i32*, i32** @d_prefixoffsets, align 8
  %20 = bitcast i32* %19 to i8*
  %21 = call i32 @hipFree(i8* noundef %20)
  call void @_Z18closeHistogram1024v()
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #5

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z10bucketSortPfS_iPiS0_ffPj(float* noundef %0, float* noundef %1, i32 noundef %2, i32* noundef %3, i32* noundef %4, float noundef %5, float noundef %6, i32* noundef %7) #2 {
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.dim3, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.dim3, align 4
  %21 = alloca %struct.dim3, align 4
  %22 = alloca %struct.dim3, align 4
  %23 = alloca { i64, i32 }, align 4
  %24 = alloca { i64, i32 }, align 4
  %25 = alloca %struct.dim3, align 4
  %26 = alloca %struct.dim3, align 4
  %27 = alloca { i64, i32 }, align 4
  %28 = alloca { i64, i32 }, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.dim3, align 4
  %35 = alloca %struct.dim3, align 4
  %36 = alloca { i64, i32 }, align 4
  %37 = alloca { i64, i32 }, align 4
  store float* %0, float** %9, align 8
  store float* %1, float** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store i32* %7, i32** %16, align 8
  %38 = load i32*, i32** @d_offsets, align 8
  %39 = bitcast i32* %38 to i8*
  %40 = call i32 @hipMemset(i8* noundef %39, i32 noundef 0, i64 noundef 4096)
  %41 = load i32*, i32** @h_offsets, align 8
  %42 = load float*, float** %9, align 8
  %43 = load float, float* %14, align 4
  %44 = load float, float* %15, align 4
  %45 = load i32, i32* %11, align 4
  call void @_Z16histogram1024GPUPjPfffi(i32* noundef %41, float* noundef %42, float noundef %43, float noundef %44, i32 noundef %45)
  store i32 0, i32* %17, align 4
  br label %46

46:                                               ; preds = %60, %8
  %47 = load i32, i32* %17, align 4
  %48 = icmp slt i32 %47, 1024
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load i32*, i32** @h_offsets, align 8
  %51 = load i32, i32* %17, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = uitofp i32 %54 to float
  %56 = load float*, float** @historesult, align 8
  %57 = load i32, i32* %17, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %56, i64 %58
  store float %55, float* %59, align 4
  br label %60

60:                                               ; preds = %49
  %61 = load i32, i32* %17, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %17, align 4
  br label %46, !llvm.loop !6

63:                                               ; preds = %46
  %64 = load float*, float** @historesult, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load float, float* %14, align 4
  %67 = load float, float* %15, align 4
  %68 = load float*, float** @pivotPoints, align 8
  %69 = load float, float* %15, align 4
  %70 = load float, float* %14, align 4
  %71 = fsub contract float %69, %70
  %72 = fdiv contract float %71, 1.024000e+03
  call void @_Z15calcPivotPointsPfiiiffS_f(float* noundef %64, i32 noundef 1024, i32 noundef %65, i32 noundef 1024, float noundef %66, float noundef %67, float* noundef %68, float noundef %72)
  %73 = load float*, float** @l_pivotpoints, align 8
  %74 = bitcast float* %73 to i8*
  %75 = load float*, float** @pivotPoints, align 8
  %76 = bitcast float* %75 to i8*
  %77 = call i32 @hipMemcpy(i8* noundef %74, i8* noundef %76, i64 noundef 4096, i32 noundef 1)
  %78 = load i32*, i32** @d_offsets, align 8
  %79 = bitcast i32* %78 to i8*
  %80 = call i32 @hipMemset(i8* noundef %79, i32 noundef 0, i64 noundef 4096)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %18, i32 noundef 32, i32 noundef 1, i32 noundef 1)
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %81, 1
  %83 = getelementptr inbounds %struct.dim3, %struct.dim3* %18, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = mul i32 %84, 128
  %86 = udiv i32 %82, %85
  %87 = add i32 %86, 1
  store i32 %87, i32* %19, align 4
  %88 = load i32, i32* %19, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %20, i32 noundef %88, i32 noundef 1, i32 noundef 1)
  br label %89

89:                                               ; preds = %63
  %90 = bitcast %struct.dim3* %21 to i8*
  %91 = bitcast %struct.dim3* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %90, i8* align 4 %91, i64 12, i1 false)
  %92 = bitcast %struct.dim3* %22 to i8*
  %93 = bitcast %struct.dim3* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 4 %93, i64 12, i1 false)
  %94 = bitcast { i64, i32 }* %23 to i8*
  %95 = bitcast %struct.dim3* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %94, i8* align 4 %95, i64 12, i1 false)
  %96 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 0
  %97 = load i64, i64* %96, align 4
  %98 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = bitcast { i64, i32 }* %24 to i8*
  %101 = bitcast %struct.dim3* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 4 %101, i64 12, i1 false)
  %102 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 0
  %103 = load i64, i64* %102, align 4
  %104 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @__hipPushCallConfiguration(i64 %97, i32 %99, i64 %103, i32 %105, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %89
  %109 = load float*, float** @l_pivotpoints, align 8
  %110 = load float*, float** %9, align 8
  %111 = load i32*, i32** @d_indice, align 8
  %112 = load i32*, i32** @d_prefixoffsets, align 8
  %113 = load i32, i32* %11, align 4
  call void @_Z26__device_stub__bucketcountPfS_PiPji(float* noundef %109, float* noundef %110, i32* noundef %111, i32* noundef %112, i32 noundef %113)
  br label %114

114:                                              ; preds = %108, %89
  br label %115

115:                                              ; preds = %114
  %116 = getelementptr inbounds %struct.dim3, %struct.dim3* %18, i32 0, i32 0
  store i32 128, i32* %116, align 4
  %117 = getelementptr inbounds %struct.dim3, %struct.dim3* %18, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = udiv i32 1024, %118
  %120 = getelementptr inbounds %struct.dim3, %struct.dim3* %20, i32 0, i32 0
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %115
  %122 = bitcast %struct.dim3* %25 to i8*
  %123 = bitcast %struct.dim3* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %122, i8* align 4 %123, i64 12, i1 false)
  %124 = bitcast %struct.dim3* %26 to i8*
  %125 = bitcast %struct.dim3* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %124, i8* align 4 %125, i64 12, i1 false)
  %126 = bitcast { i64, i32 }* %27 to i8*
  %127 = bitcast %struct.dim3* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %126, i8* align 4 %127, i64 12, i1 false)
  %128 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %27, i32 0, i32 0
  %129 = load i64, i64* %128, align 4
  %130 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %27, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = bitcast { i64, i32 }* %28 to i8*
  %133 = bitcast %struct.dim3* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %132, i8* align 4 %133, i64 12, i1 false)
  %134 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 0
  %135 = load i64, i64* %134, align 4
  %136 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @__hipPushCallConfiguration(i64 %129, i32 %131, i64 %135, i32 %137, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %121
  %141 = load i32*, i32** @d_prefixoffsets, align 8
  %142 = load i32*, i32** @d_offsets, align 8
  %143 = load i32, i32* %19, align 4
  call void @_Z33__device_stub__bucketprefixoffsetPjS_i(i32* noundef %141, i32* noundef %142, i32 noundef %143)
  br label %144

144:                                              ; preds = %140, %121
  br label %145

145:                                              ; preds = %144
  %146 = load i32*, i32** @h_offsets, align 8
  %147 = bitcast i32* %146 to i8*
  %148 = load i32*, i32** @d_offsets, align 8
  %149 = bitcast i32* %148 to i8*
  %150 = call i32 @hipMemcpy(i8* noundef %147, i8* noundef %149, i64 noundef 4096, i32 noundef 2)
  %151 = load i32*, i32** %16, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  store i32 0, i32* %152, align 4
  store i32 0, i32* %29, align 4
  br label %153

153:                                              ; preds = %204, %145
  %154 = load i32, i32* %29, align 4
  %155 = icmp slt i32 %154, 1024
  br i1 %155, label %156, label %207

156:                                              ; preds = %153
  %157 = load i32*, i32** @h_offsets, align 8
  %158 = load i32, i32* %29, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %16, align 8
  %163 = load i32, i32* %29, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = add i32 %161, %166
  %168 = load i32*, i32** %16, align 8
  %169 = load i32, i32* %29, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  store i32 %167, i32* %172, align 4
  %173 = load i32*, i32** @h_offsets, align 8
  %174 = load i32, i32* %29, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = urem i32 %177, 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %198

180:                                              ; preds = %156
  %181 = load i32*, i32** @h_offsets, align 8
  %182 = load i32, i32* %29, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = and i32 %185, -4
  %187 = add i32 %186, 4
  %188 = load i32*, i32** @h_offsets, align 8
  %189 = load i32, i32* %29, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = sub i32 %187, %192
  %194 = load i32*, i32** %13, align 8
  %195 = load i32, i32* %29, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  store i32 %193, i32* %197, align 4
  br label %203

198:                                              ; preds = %156
  %199 = load i32*, i32** %13, align 8
  %200 = load i32, i32* %29, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32 0, i32* %202, align 4
  br label %203

203:                                              ; preds = %198, %180
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %29, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %29, align 4
  br label %153, !llvm.loop !8

207:                                              ; preds = %153
  store i32 0, i32* %30, align 4
  br label %208

208:                                              ; preds = %228, %207
  %209 = load i32, i32* %30, align 4
  %210 = icmp slt i32 %209, 1024
  br i1 %210, label %211, label %231

211:                                              ; preds = %208
  %212 = load i32*, i32** @h_offsets, align 8
  %213 = load i32, i32* %30, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i32*, i32** %13, align 8
  %218 = load i32, i32* %30, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = add i32 %216, %221
  %223 = udiv i32 %222, 4
  %224 = load i32*, i32** %12, align 8
  %225 = load i32, i32* %30, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  store i32 %223, i32* %227, align 4
  br label %228

228:                                              ; preds = %211
  %229 = load i32, i32* %30, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %30, align 4
  br label %208, !llvm.loop !9

231:                                              ; preds = %208
  store i32 0, i32* %31, align 4
  br label %232

232:                                              ; preds = %256, %231
  %233 = load i32, i32* %31, align 4
  %234 = icmp slt i32 %233, 1024
  br i1 %234, label %235, label %259

235:                                              ; preds = %232
  %236 = load i32*, i32** @h_offsets, align 8
  %237 = load i32, i32* %31, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = urem i32 %240, 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %255

243:                                              ; preds = %235
  %244 = load i32*, i32** @h_offsets, align 8
  %245 = load i32, i32* %31, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = and i32 %248, -4
  %250 = add i32 %249, 4
  %251 = load i32*, i32** @h_offsets, align 8
  %252 = load i32, i32* %31, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  store i32 %250, i32* %254, align 4
  br label %255

255:                                              ; preds = %243, %235
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %31, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %31, align 4
  br label %232, !llvm.loop !10

259:                                              ; preds = %232
  store i32 1, i32* %32, align 4
  br label %260

260:                                              ; preds = %280, %259
  %261 = load i32, i32* %32, align 4
  %262 = icmp slt i32 %261, 1024
  br i1 %262, label %263, label %283

263:                                              ; preds = %260
  %264 = load i32*, i32** @h_offsets, align 8
  %265 = load i32, i32* %32, align 4
  %266 = sub nsw i32 %265, 1
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %264, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load i32*, i32** @h_offsets, align 8
  %271 = load i32, i32* %32, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = add i32 %269, %274
  %276 = load i32*, i32** @h_offsets, align 8
  %277 = load i32, i32* %32, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  store i32 %275, i32* %279, align 4
  br label %280

280:                                              ; preds = %263
  %281 = load i32, i32* %32, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %32, align 4
  br label %260, !llvm.loop !11

283:                                              ; preds = %260
  store i32 1023, i32* %33, align 4
  br label %284

284:                                              ; preds = %298, %283
  %285 = load i32, i32* %33, align 4
  %286 = icmp sgt i32 %285, 0
  br i1 %286, label %287, label %301

287:                                              ; preds = %284
  %288 = load i32*, i32** @h_offsets, align 8
  %289 = load i32, i32* %33, align 4
  %290 = sub nsw i32 %289, 1
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %288, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = load i32*, i32** @h_offsets, align 8
  %295 = load i32, i32* %33, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  store i32 %293, i32* %297, align 4
  br label %298

298:                                              ; preds = %287
  %299 = load i32, i32* %33, align 4
  %300 = add nsw i32 %299, -1
  store i32 %300, i32* %33, align 4
  br label %284, !llvm.loop !12

301:                                              ; preds = %284
  %302 = load i32*, i32** @h_offsets, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 0
  store i32 0, i32* %303, align 4
  %304 = load i32*, i32** @l_offsets, align 8
  %305 = bitcast i32* %304 to i8*
  %306 = load i32*, i32** @h_offsets, align 8
  %307 = bitcast i32* %306 to i8*
  %308 = call i32 @hipMemcpy(i8* noundef %305, i8* noundef %307, i64 noundef 4096, i32 noundef 1)
  %309 = load float*, float** %10, align 8
  %310 = bitcast float* %309 to i8*
  %311 = load i32, i32* %11, align 4
  %312 = add nsw i32 %311, 4096
  %313 = sext i32 %312 to i64
  %314 = mul i64 %313, 4
  %315 = call i32 @hipMemset(i8* noundef %310, i32 noundef 0, i64 noundef %314)
  %316 = getelementptr inbounds %struct.dim3, %struct.dim3* %18, i32 0, i32 0
  store i32 32, i32* %316, align 4
  %317 = load i32, i32* %11, align 4
  %318 = sub nsw i32 %317, 1
  %319 = getelementptr inbounds %struct.dim3, %struct.dim3* %18, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = mul i32 %320, 128
  %322 = udiv i32 %318, %321
  %323 = add i32 %322, 1
  store i32 %323, i32* %19, align 4
  %324 = load i32, i32* %19, align 4
  %325 = getelementptr inbounds %struct.dim3, %struct.dim3* %20, i32 0, i32 0
  store i32 %324, i32* %325, align 4
  br label %326

326:                                              ; preds = %301
  %327 = bitcast %struct.dim3* %34 to i8*
  %328 = bitcast %struct.dim3* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %327, i8* align 4 %328, i64 12, i1 false)
  %329 = bitcast %struct.dim3* %35 to i8*
  %330 = bitcast %struct.dim3* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %329, i8* align 4 %330, i64 12, i1 false)
  %331 = bitcast { i64, i32 }* %36 to i8*
  %332 = bitcast %struct.dim3* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %331, i8* align 4 %332, i64 12, i1 false)
  %333 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %36, i32 0, i32 0
  %334 = load i64, i64* %333, align 4
  %335 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %36, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = bitcast { i64, i32 }* %37 to i8*
  %338 = bitcast %struct.dim3* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %337, i8* align 4 %338, i64 12, i1 false)
  %339 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 0
  %340 = load i64, i64* %339, align 4
  %341 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @__hipPushCallConfiguration(i64 %334, i32 %336, i64 %340, i32 %342, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %352, label %345

345:                                              ; preds = %326
  %346 = load float*, float** %9, align 8
  %347 = load i32*, i32** @d_indice, align 8
  %348 = load float*, float** %10, align 8
  %349 = load i32, i32* %11, align 4
  %350 = load i32*, i32** @d_prefixoffsets, align 8
  %351 = load i32*, i32** @l_offsets, align 8
  call void @_Z25__device_stub__bucketsortPfPiS_iPjS1_(float* noundef %346, i32* noundef %347, float* noundef %348, i32 noundef %349, i32* noundef %350, i32* noundef %351)
  br label %352

352:                                              ; preds = %345, %326
  br label %353

353:                                              ; preds = %352
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z15calcPivotPointsPfiiiffS_f(float* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, float noundef %5, float* noundef %6, float noundef %7) #2 {
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float*, align 8
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store float* %0, float** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store float* %6, float** %15, align 8
  store float %7, float* %16, align 4
  %23 = load i32, i32* %11, align 4
  %24 = sitofp i32 %23 to float
  %25 = load i32, i32* %12, align 4
  %26 = sitofp i32 %25 to float
  %27 = fdiv contract float %24, %26
  store float %27, float* %17, align 4
  %28 = load float, float* %13, align 4
  store float %28, float* %18, align 4
  %29 = load float, float* %13, align 4
  %30 = load float, float* %16, align 4
  %31 = fadd contract float %29, %30
  store float %31, float* %19, align 4
  %32 = load float, float* %17, align 4
  store float %32, float* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %33

33:                                               ; preds = %130, %8
  %34 = load i32, i32* %22, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %133

37:                                               ; preds = %33
  %38 = load i32, i32* %22, align 4
  %39 = load i32, i32* %10, align 4
  %40 = sub nsw i32 %39, 1
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %37
  %43 = load i32, i32* %21, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %63, label %46

46:                                               ; preds = %42
  %47 = load float, float* %18, align 4
  %48 = load float, float* %20, align 4
  %49 = load float*, float** %9, align 8
  %50 = load i32, i32* %22, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %49, i64 %51
  %53 = load float, float* %52, align 4
  %54 = fdiv contract float %48, %53
  %55 = load float, float* %16, align 4
  %56 = fmul contract float %54, %55
  %57 = fadd contract float %47, %56
  %58 = load float*, float** %15, align 8
  %59 = load i32, i32* %21, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %21, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds float, float* %58, i64 %61
  store float %57, float* %62, align 4
  br label %63

63:                                               ; preds = %46, %42
  br label %133

64:                                               ; preds = %37
  br label %65

65:                                               ; preds = %82, %64
  %66 = load float*, float** %9, align 8
  %67 = load i32, i32* %22, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %66, i64 %68
  %70 = load float, float* %69, align 4
  %71 = load float, float* %20, align 4
  %72 = fcmp contract ogt float %70, %71
  br i1 %72, label %73, label %118

73:                                               ; preds = %65
  %74 = load i32, i32* %21, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %22, align 4
  %79 = load i32, i32* %21, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 noundef %78, i32 noundef %79, i32 noundef %80)
  call void @exit(i32 noundef 0) #10
  unreachable

82:                                               ; preds = %73
  %83 = load float, float* %18, align 4
  %84 = load float, float* %20, align 4
  %85 = load float*, float** %9, align 8
  %86 = load i32, i32* %22, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %85, i64 %87
  %89 = load float, float* %88, align 4
  %90 = fdiv contract float %84, %89
  %91 = load float, float* %16, align 4
  %92 = fmul contract float %90, %91
  %93 = fadd contract float %83, %92
  %94 = load float*, float** %15, align 8
  %95 = load i32, i32* %21, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %21, align 4
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds float, float* %94, i64 %97
  store float %93, float* %98, align 4
  %99 = load float, float* %20, align 4
  %100 = load float*, float** %9, align 8
  %101 = load i32, i32* %22, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, float* %100, i64 %102
  %104 = load float, float* %103, align 4
  %105 = fdiv contract float %99, %104
  %106 = load float, float* %16, align 4
  %107 = fmul contract float %105, %106
  %108 = load float, float* %18, align 4
  %109 = fadd contract float %108, %107
  store float %109, float* %18, align 4
  %110 = load float, float* %20, align 4
  %111 = load float*, float** %9, align 8
  %112 = load i32, i32* %22, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float, float* %111, i64 %113
  %115 = load float, float* %114, align 4
  %116 = fsub contract float %115, %110
  store float %116, float* %114, align 4
  %117 = load float, float* %17, align 4
  store float %117, float* %20, align 4
  br label %65, !llvm.loop !13

118:                                              ; preds = %65
  %119 = load float*, float** %9, align 8
  %120 = load i32, i32* %22, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %119, i64 %121
  %123 = load float, float* %122, align 4
  %124 = load float, float* %20, align 4
  %125 = fsub contract float %124, %123
  store float %125, float* %20, align 4
  %126 = load float, float* %19, align 4
  store float %126, float* %18, align 4
  %127 = load float, float* %16, align 4
  %128 = load float, float* %19, align 4
  %129 = fadd contract float %128, %127
  store float %129, float* %19, align 4
  br label %130

130:                                              ; preds = %118
  %131 = load i32, i32* %22, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %22, align 4
  br label %33, !llvm.loop !14

133:                                              ; preds = %63, %33
  br label %134

134:                                              ; preds = %138, %133
  %135 = load i32, i32* %21, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %134
  %139 = load float*, float** %15, align 8
  %140 = load i32, i32* %21, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float, float* %139, i64 %142
  %144 = load float, float* %143, align 4
  %145 = load float*, float** %15, align 8
  %146 = load i32, i32* %21, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float, float* %145, i64 %147
  store float %144, float* %148, align 4
  %149 = load i32, i32* %21, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %21, align 4
  br label %134, !llvm.loop !15

151:                                              ; preds = %134
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 comdat align 2 {
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

declare i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) #3

declare i32 @printf(i8* noundef, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #7

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (float*, float*, i32*, i32*, i32)** @_Z11bucketcountPfS_PiPji to i8*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %3 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i32*, i32*, i32)** @_Z18bucketprefixoffsetPjS_i to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %4 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (float*, i32*, float*, i32, i32*, i32*)** @_Z10bucketsortPfPiS_iPjS1_ to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %5 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i32*, float*, float, float, i32)** @_Z19histogram1024KernelPjPfffi to i8*), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @3, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @3, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
attributes #4 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

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
