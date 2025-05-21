; ModuleID = 'hip/kmeans/kmeans_cuda.cu'
source_filename = "hip/kmeans/kmeans_cuda.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque

$_ZN4dim3C2Ejjj = comdat any

$__hip_gpubin_handle = comdat any

@_Z14invert_mappingPfS_ii = constant void (float*, float*, i32, i32)* @_Z29__device_stub__invert_mappingPfS_ii, align 8
@_Z11kmeansPointPfS_iiiPiS_S_S0_ = constant void (float*, float*, i32, i32, i32, i32*, float*, float*, i32*)* @_Z26__device_stub__kmeansPointPfS_iiiPiS_S_S0_, align 8
@num_threads_perdim = dso_local global i32 16, align 4
@num_blocks_perdim = dso_local global i32 16, align 4
@num_threads = dso_local global i32 0, align 4
@num_blocks = dso_local global i32 0, align 4
@membership_new = dso_local global i32* null, align 8
@feature_d = dso_local global float* null, align 8
@feature_flipped_d = dso_local global float* null, align 8
@membership_d = dso_local global i32* null, align 8
@block_new_centers = dso_local global float* null, align 8
@clusters_d = dso_local global float* null, align 8
@block_clusters_d = dso_local global float* null, align 8
@block_deltas_d = dso_local global i32* null, align 8
@0 = private unnamed_addr constant [25 x i8] c"_Z14invert_mappingPfS_ii\00", align 1
@1 = private unnamed_addr constant [32 x i8] c"_Z11kmeansPointPfS_iiiPiS_S_S0_\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_kmeans_cuda.cu, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z29__device_stub__invert_mappingPfS_ii(float* noundef %0, float* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dim3, align 8
  %10 = alloca %struct.dim3, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca { i64, i32 }, align 8
  %14 = alloca { i64, i32 }, align 8
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = alloca i8*, i64 4, align 16
  %16 = bitcast float** %5 to i8*
  %17 = getelementptr i8*, i8** %15, i32 0
  store i8* %16, i8** %17, align 8
  %18 = bitcast float** %6 to i8*
  %19 = getelementptr i8*, i8** %15, i32 1
  store i8* %18, i8** %19, align 8
  %20 = bitcast i32* %7 to i8*
  %21 = getelementptr i8*, i8** %15, i32 2
  store i8* %20, i8** %21, align 8
  %22 = bitcast i32* %8 to i8*
  %23 = getelementptr i8*, i8** %15, i32 3
  store i8* %22, i8** %23, align 8
  %24 = call i32 @__hipPopCallConfiguration(%struct.dim3* %9, %struct.dim3* %10, i64* %11, i8** %12)
  %25 = load i64, i64* %11, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = bitcast { i64, i32 }* %13 to i8*
  %28 = bitcast %struct.dim3* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 12, i1 false)
  %29 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = bitcast { i64, i32 }* %14 to i8*
  %34 = bitcast %struct.dim3* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 12, i1 false)
  %35 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = bitcast i8* %26 to %struct.ihipStream_t*
  %40 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (float*, float*, i32, i32)** @_Z14invert_mappingPfS_ii to i8*), i64 %30, i32 %32, i64 %36, i32 %38, i8** noundef %15, i64 noundef %25, %struct.ihipStream_t* noundef %39)
  br label %41

41:                                               ; preds = %4
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z26__device_stub__kmeansPointPfS_iiiPiS_S_S0_(float* noundef %0, float* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32* noundef %5, float* noundef %6, float* noundef %7, i32* noundef %8) #0 {
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.dim3, align 8
  %20 = alloca %struct.dim3, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca { i64, i32 }, align 8
  %24 = alloca { i64, i32 }, align 8
  store float* %0, float** %10, align 8
  store float* %1, float** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store float* %6, float** %16, align 8
  store float* %7, float** %17, align 8
  store i32* %8, i32** %18, align 8
  %25 = alloca i8*, i64 9, align 16
  %26 = bitcast float** %10 to i8*
  %27 = getelementptr i8*, i8** %25, i32 0
  store i8* %26, i8** %27, align 8
  %28 = bitcast float** %11 to i8*
  %29 = getelementptr i8*, i8** %25, i32 1
  store i8* %28, i8** %29, align 8
  %30 = bitcast i32* %12 to i8*
  %31 = getelementptr i8*, i8** %25, i32 2
  store i8* %30, i8** %31, align 8
  %32 = bitcast i32* %13 to i8*
  %33 = getelementptr i8*, i8** %25, i32 3
  store i8* %32, i8** %33, align 8
  %34 = bitcast i32* %14 to i8*
  %35 = getelementptr i8*, i8** %25, i32 4
  store i8* %34, i8** %35, align 8
  %36 = bitcast i32** %15 to i8*
  %37 = getelementptr i8*, i8** %25, i32 5
  store i8* %36, i8** %37, align 8
  %38 = bitcast float** %16 to i8*
  %39 = getelementptr i8*, i8** %25, i32 6
  store i8* %38, i8** %39, align 8
  %40 = bitcast float** %17 to i8*
  %41 = getelementptr i8*, i8** %25, i32 7
  store i8* %40, i8** %41, align 8
  %42 = bitcast i32** %18 to i8*
  %43 = getelementptr i8*, i8** %25, i32 8
  store i8* %42, i8** %43, align 8
  %44 = call i32 @__hipPopCallConfiguration(%struct.dim3* %19, %struct.dim3* %20, i64* %21, i8** %22)
  %45 = load i64, i64* %21, align 8
  %46 = load i8*, i8** %22, align 8
  %47 = bitcast { i64, i32 }* %23 to i8*
  %48 = bitcast %struct.dim3* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 12, i1 false)
  %49 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = bitcast { i64, i32 }* %24 to i8*
  %54 = bitcast %struct.dim3* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 12, i1 false)
  %55 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = bitcast i8* %46 to %struct.ihipStream_t*
  %60 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (float*, float*, i32, i32, i32, i32*, float*, float*, i32*)** @_Z11kmeansPointPfS_iiiPiS_S_S0_ to i8*), i64 %50, i32 %52, i64 %56, i32 %58, i8** noundef %25, i64 noundef %45, %struct.ihipStream_t* noundef %59)
  br label %61

61:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #2 section ".text.startup" {
  %1 = load i32, i32* @num_threads_perdim, align 4
  %2 = load i32, i32* @num_threads_perdim, align 4
  %3 = mul i32 %1, %2
  store i32 %3, i32* @num_threads, align 4
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.1() #2 section ".text.startup" {
  %1 = load i32, i32* @num_blocks_perdim, align 4
  %2 = load i32, i32* @num_blocks_perdim, align 4
  %3 = mul i32 %1, %2
  store i32 %3, i32* @num_blocks, align 4
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @allocateMemory(i32 noundef %0, i32 noundef %1, i32 noundef %2, float** noundef %3) #3 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dim3, align 4
  %11 = alloca %struct.dim3, align 4
  %12 = alloca { i64, i32 }, align 4
  %13 = alloca { i64, i32 }, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store float** %3, float*** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @num_threads, align 4
  %16 = udiv i32 %14, %15
  store i32 %16, i32* @num_blocks, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @num_threads, align 4
  %19 = urem i32 %17, %18
  %20 = icmp ugt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @num_blocks, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* @num_blocks, align 4
  br label %24

24:                                               ; preds = %21, %4
  %25 = load i32, i32* @num_blocks, align 4
  %26 = uitofp i32 %25 to double
  %27 = call contract double @sqrt(double noundef %26) #9
  %28 = fptoui double %27 to i32
  store i32 %28, i32* @num_blocks_perdim, align 4
  br label %29

29:                                               ; preds = %35, %24
  %30 = load i32, i32* @num_blocks_perdim, align 4
  %31 = load i32, i32* @num_blocks_perdim, align 4
  %32 = mul i32 %30, %31
  %33 = load i32, i32* @num_blocks, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @num_blocks_perdim, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* @num_blocks_perdim, align 4
  br label %29, !llvm.loop !6

38:                                               ; preds = %29
  %39 = load i32, i32* @num_blocks_perdim, align 4
  %40 = load i32, i32* @num_blocks_perdim, align 4
  %41 = mul i32 %39, %40
  store i32 %41, i32* @num_blocks, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = call noalias i8* @malloc(i64 noundef %44) #10
  %46 = bitcast i8* %45 to i32*
  store i32* %46, i32** @membership_new, align 8
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %56, %38
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i32*, i32** @membership_new, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 -1, i32* %55, align 4
  br label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %47, !llvm.loop !8

59:                                               ; preds = %47
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %6, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  %65 = call noalias i8* @malloc(i64 noundef %64) #10
  %66 = bitcast i8* %65 to float*
  store float* %66, float** @block_new_centers, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = mul nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = call i32 @hipMalloc(i8** noundef bitcast (float** @feature_flipped_d to i8**), i64 noundef %71)
  %73 = load float*, float** @feature_flipped_d, align 8
  %74 = bitcast float* %73 to i8*
  %75 = load float**, float*** %8, align 8
  %76 = getelementptr inbounds float*, float** %75, i64 0
  %77 = load float*, float** %76, align 8
  %78 = bitcast float* %77 to i8*
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %6, align 4
  %81 = mul nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = call i32 @hipMemcpy(i8* noundef %74, i8* noundef %78, i64 noundef %83, i32 noundef 1)
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %6, align 4
  %87 = mul nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = call i32 @hipMalloc(i8** noundef bitcast (float** @feature_d to i8**), i64 noundef %89)
  br label %91

91:                                               ; preds = %59
  %92 = load i32, i32* @num_blocks, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %10, i32 noundef %92, i32 noundef 1, i32 noundef 1)
  %93 = load i32, i32* @num_threads, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %11, i32 noundef %93, i32 noundef 1, i32 noundef 1)
  %94 = bitcast { i64, i32 }* %12 to i8*
  %95 = bitcast %struct.dim3* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %94, i8* align 4 %95, i64 12, i1 false)
  %96 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %97 = load i64, i64* %96, align 4
  %98 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = bitcast { i64, i32 }* %13 to i8*
  %101 = bitcast %struct.dim3* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 4 %101, i64 12, i1 false)
  %102 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %103 = load i64, i64* %102, align 4
  %104 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @__hipPushCallConfiguration(i64 %97, i32 %99, i64 %103, i32 %105, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %91
  %109 = load float*, float** @feature_flipped_d, align 8
  %110 = load float*, float** @feature_d, align 8
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %6, align 4
  call void @_Z29__device_stub__invert_mappingPfS_ii(float* noundef %109, float* noundef %110, i32 noundef %111, i32 noundef %112)
  br label %113

113:                                              ; preds = %108, %91
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 %116, 4
  %118 = call i32 @hipMalloc(i8** noundef bitcast (i32** @membership_d to i8**), i64 noundef %117)
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %6, align 4
  %121 = mul nsw i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = mul i64 %122, 4
  %124 = call i32 @hipMalloc(i8** noundef bitcast (float** @clusters_d to i8**), i64 noundef %123)
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) #4

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #5

declare i32 @hipMalloc(i8** noundef, i64 noundef) #6

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #6

declare i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) #6

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

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @deallocateMemory() #3 {
  %1 = load i32*, i32** @membership_new, align 8
  %2 = bitcast i32* %1 to i8*
  call void @free(i8* noundef %2) #9
  %3 = load float*, float** @block_new_centers, align 8
  %4 = bitcast float* %3 to i8*
  call void @free(i8* noundef %4) #9
  %5 = load float*, float** @feature_d, align 8
  %6 = bitcast float* %5 to i8*
  %7 = call i32 @hipFree(i8* noundef %6)
  %8 = load float*, float** @feature_flipped_d, align 8
  %9 = bitcast float* %8 to i8*
  %10 = call i32 @hipFree(i8* noundef %9)
  %11 = load i32*, i32** @membership_d, align 8
  %12 = bitcast i32* %11 to i8*
  %13 = call i32 @hipFree(i8* noundef %12)
  %14 = load float*, float** @clusters_d, align 8
  %15 = bitcast float* %14 to i8*
  %16 = call i32 @hipFree(i8* noundef %15)
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

declare i32 @hipFree(i8* noundef) #6

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1) #8 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i32 @hipGetDeviceCount(i32* noundef %6)
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @hipSetDevice(i32 noundef 0)
  store i32 %12, i32* %7, align 4
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @setup(i32 noundef %14, i8** noundef %15)
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare i32 @hipGetDeviceCount(i32* noundef) #6

declare i32 @hipSetDevice(i32 noundef) #6

declare i32 @setup(i32 noundef, i8** noundef) #6

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local i32 @kmeansCuda(float** noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32* noundef %4, float** noundef %5, i32* noundef %6, float** noundef %7) #3 {
  %9 = alloca float**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca float**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca float**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.dim3, align 4
  %21 = alloca %struct.dim3, align 4
  %22 = alloca %struct.dim3, align 4
  %23 = alloca %struct.dim3, align 4
  %24 = alloca { i64, i32 }, align 4
  %25 = alloca { i64, i32 }, align 4
  %26 = alloca i32, align 4
  store float** %0, float*** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store float** %5, float*** %14, align 8
  store i32* %6, i32** %15, align 8
  store float** %7, float*** %16, align 8
  store i32 0, i32* %17, align 4
  %27 = load i32*, i32** @membership_d, align 8
  %28 = bitcast i32* %27 to i8*
  %29 = load i32*, i32** @membership_new, align 8
  %30 = bitcast i32* %29 to i8*
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = call i32 @hipMemcpy(i8* noundef %28, i8* noundef %30, i64 noundef %33, i32 noundef 1)
  %35 = load float*, float** @clusters_d, align 8
  %36 = bitcast float* %35 to i8*
  %37 = load float**, float*** %14, align 8
  %38 = getelementptr inbounds float*, float** %37, i64 0
  %39 = load float*, float** %38, align 8
  %40 = bitcast float* %39 to i8*
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %10, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = call i32 @hipMemcpy(i8* noundef %36, i8* noundef %40, i64 noundef %45, i32 noundef 1)
  %47 = load i32, i32* @num_blocks_perdim, align 4
  %48 = load i32, i32* @num_blocks_perdim, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %20, i32 noundef %47, i32 noundef %48, i32 noundef 1)
  %49 = load i32, i32* @num_threads_perdim, align 4
  %50 = load i32, i32* @num_threads_perdim, align 4
  %51 = mul i32 %49, %50
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %21, i32 noundef %51, i32 noundef 1, i32 noundef 1)
  br label %52

52:                                               ; preds = %8
  %53 = bitcast %struct.dim3* %22 to i8*
  %54 = bitcast %struct.dim3* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 12, i1 false)
  %55 = bitcast %struct.dim3* %23 to i8*
  %56 = bitcast %struct.dim3* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 12, i1 false)
  %57 = bitcast { i64, i32 }* %24 to i8*
  %58 = bitcast %struct.dim3* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 12, i1 false)
  %59 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 0
  %60 = load i64, i64* %59, align 4
  %61 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = bitcast { i64, i32 }* %25 to i8*
  %64 = bitcast %struct.dim3* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 12, i1 false)
  %65 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 0
  %66 = load i64, i64* %65, align 4
  %67 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @__hipPushCallConfiguration(i64 %60, i32 %62, i64 %66, i32 %68, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %52
  %72 = load float*, float** @feature_d, align 8
  %73 = load float*, float** @feature_flipped_d, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32*, i32** @membership_d, align 8
  %78 = load float*, float** @clusters_d, align 8
  %79 = load float*, float** @block_clusters_d, align 8
  %80 = load i32*, i32** @block_deltas_d, align 8
  call void @_Z26__device_stub__kmeansPointPfS_iiiPiS_S_S0_(float* noundef %72, float* noundef %73, i32 noundef %74, i32 noundef %75, i32 noundef %76, i32* noundef %77, float* noundef %78, float* noundef %79, i32* noundef %80)
  br label %81

81:                                               ; preds = %71, %52
  br label %82

82:                                               ; preds = %81
  %83 = call i32 @hipDeviceSynchronize()
  %84 = load i32*, i32** @membership_new, align 8
  %85 = bitcast i32* %84 to i8*
  %86 = load i32*, i32** @membership_d, align 8
  %87 = bitcast i32* %86 to i8*
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 4
  %91 = call i32 @hipMemcpy(i8* noundef %85, i8* noundef %87, i64 noundef %90, i32 noundef 2)
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %92

92:                                               ; preds = %160, %82
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %163

96:                                               ; preds = %92
  %97 = load i32*, i32** @membership_new, align 8
  %98 = load i32, i32* %18, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %26, align 4
  %102 = load i32*, i32** %15, align 8
  %103 = load i32, i32* %26, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = load i32*, i32** @membership_new, align 8
  %109 = load i32, i32* %18, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %13, align 8
  %114 = load i32, i32* %18, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %112, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %96
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %17, align 4
  %122 = load i32*, i32** @membership_new, align 8
  %123 = load i32, i32* %18, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %13, align 8
  %128 = load i32, i32* %18, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %126, i32* %130, align 4
  br label %131

131:                                              ; preds = %119, %96
  store i32 0, i32* %19, align 4
  br label %132

132:                                              ; preds = %156, %131
  %133 = load i32, i32* %19, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %159

136:                                              ; preds = %132
  %137 = load float**, float*** %9, align 8
  %138 = load i32, i32* %18, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float*, float** %137, i64 %139
  %141 = load float*, float** %140, align 8
  %142 = load i32, i32* %19, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds float, float* %141, i64 %143
  %145 = load float, float* %144, align 4
  %146 = load float**, float*** %16, align 8
  %147 = load i32, i32* %26, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float*, float** %146, i64 %148
  %150 = load float*, float** %149, align 8
  %151 = load i32, i32* %19, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds float, float* %150, i64 %152
  %154 = load float, float* %153, align 4
  %155 = fadd contract float %154, %145
  store float %155, float* %153, align 4
  br label %156

156:                                              ; preds = %136
  %157 = load i32, i32* %19, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %19, align 4
  br label %132, !llvm.loop !9

159:                                              ; preds = %132
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %18, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %18, align 4
  br label %92, !llvm.loop !10

163:                                              ; preds = %92
  %164 = load i32, i32* %17, align 4
  ret i32 %164
}

declare i32 @hipDeviceSynchronize() #6

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_kmeans_cuda.cu() #2 section ".text.startup" {
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init.1()
  ret void
}

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (float*, float*, i32, i32)** @_Z14invert_mappingPfS_ii to i8*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %3 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (float*, float*, i32, i32, i32, i32*, float*, float*, i32*)** @_Z11kmeansPointPfS_iiiPiS_S_S0_ to i8*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
attributes #2 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

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
