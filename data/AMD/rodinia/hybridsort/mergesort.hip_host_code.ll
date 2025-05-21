; ModuleID = 'hip/hybridsort/mergesort.hip.cu'
source_filename = "hip/hybridsort/mergesort.hip.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HIP_vector_type = type { %struct.HIP_vector_base }
%struct.HIP_vector_base = type { %union.anon }
%union.anon = type { <4 x float> }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque

$_ZN4dim3C2Ejjj = comdat any

$_ZSt4ceilf = comdat any

$__hip_gpubin_handle = comdat any

@_Z14mergeSortFirstP15HIP_vector_typeIfLj4EES1_i = constant void (%struct.HIP_vector_type*, %struct.HIP_vector_type*, i32)* @_Z29__device_stub__mergeSortFirstP15HIP_vector_typeIfLj4EES1_i, align 8
@_Z13mergeSortPassP15HIP_vector_typeIfLj4EES1_iiPi = constant void (%struct.HIP_vector_type*, %struct.HIP_vector_type*, i32, i32, i32*)* @_Z28__device_stub__mergeSortPassP15HIP_vector_typeIfLj4EES1_iiPi, align 8
@_Z9mergepackPfS_PiPjS0_ = constant void (float*, float*, i32*, i32*, i32*)* @_Z24__device_stub__mergepackPfS_PiPjS0_, align 8
@0 = private unnamed_addr constant [48 x i8] c"_Z14mergeSortFirstP15HIP_vector_typeIfLj4EES1_i\00", align 1
@1 = private unnamed_addr constant [50 x i8] c"_Z13mergeSortPassP15HIP_vector_typeIfLj4EES1_iiPi\00", align 1
@2 = private unnamed_addr constant [24 x i8] c"_Z9mergepackPfS_PiPjS0_\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z29__device_stub__mergeSortFirstP15HIP_vector_typeIfLj4EES1_i(%struct.HIP_vector_type* noundef %0, %struct.HIP_vector_type* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.HIP_vector_type*, align 8
  %5 = alloca %struct.HIP_vector_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca { i64, i32 }, align 8
  %12 = alloca { i64, i32 }, align 8
  store %struct.HIP_vector_type* %0, %struct.HIP_vector_type** %4, align 8
  store %struct.HIP_vector_type* %1, %struct.HIP_vector_type** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = alloca i8*, i64 3, align 16
  %14 = bitcast %struct.HIP_vector_type** %4 to i8*
  %15 = getelementptr i8*, i8** %13, i32 0
  store i8* %14, i8** %15, align 8
  %16 = bitcast %struct.HIP_vector_type** %5 to i8*
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
  %36 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (%struct.HIP_vector_type*, %struct.HIP_vector_type*, i32)** @_Z14mergeSortFirstP15HIP_vector_typeIfLj4EES1_i to i8*), i64 %26, i32 %28, i64 %32, i32 %34, i8** noundef %13, i64 noundef %21, %struct.ihipStream_t* noundef %35)
  br label %37

37:                                               ; preds = %3
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z28__device_stub__mergeSortPassP15HIP_vector_typeIfLj4EES1_iiPi(%struct.HIP_vector_type* noundef %0, %struct.HIP_vector_type* noundef %1, i32 noundef %2, i32 noundef %3, i32* noundef %4) #0 {
  %6 = alloca %struct.HIP_vector_type*, align 8
  %7 = alloca %struct.HIP_vector_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca { i64, i32 }, align 8
  %16 = alloca { i64, i32 }, align 8
  store %struct.HIP_vector_type* %0, %struct.HIP_vector_type** %6, align 8
  store %struct.HIP_vector_type* %1, %struct.HIP_vector_type** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %17 = alloca i8*, i64 5, align 16
  %18 = bitcast %struct.HIP_vector_type** %6 to i8*
  %19 = getelementptr i8*, i8** %17, i32 0
  store i8* %18, i8** %19, align 8
  %20 = bitcast %struct.HIP_vector_type** %7 to i8*
  %21 = getelementptr i8*, i8** %17, i32 1
  store i8* %20, i8** %21, align 8
  %22 = bitcast i32* %8 to i8*
  %23 = getelementptr i8*, i8** %17, i32 2
  store i8* %22, i8** %23, align 8
  %24 = bitcast i32* %9 to i8*
  %25 = getelementptr i8*, i8** %17, i32 3
  store i8* %24, i8** %25, align 8
  %26 = bitcast i32** %10 to i8*
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
  %44 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (%struct.HIP_vector_type*, %struct.HIP_vector_type*, i32, i32, i32*)** @_Z13mergeSortPassP15HIP_vector_typeIfLj4EES1_iiPi to i8*), i64 %34, i32 %36, i64 %40, i32 %42, i8** noundef %17, i64 noundef %29, %struct.ihipStream_t* noundef %43)
  br label %45

45:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z24__device_stub__mergepackPfS_PiPjS0_(float* noundef %0, float* noundef %1, i32* noundef %2, i32* noundef %3, i32* noundef %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
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
  store i32* %4, i32** %10, align 8
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
  %26 = bitcast i32** %10 to i8*
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
  %44 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (float*, float*, i32*, i32*, i32*)** @_Z9mergepackPfS_PiPjS0_ to i8*), i64 %34, i32 %36, i64 %40, i32 %42, i8** noundef %17, i64 noundef %29, %struct.ihipStream_t* noundef %43)
  br label %45

45:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef %struct.HIP_vector_type* @_Z12runMergeSortiiP15HIP_vector_typeIfLj4EES1_PiS2_Pj(i32 noundef %0, i32 noundef %1, %struct.HIP_vector_type* noundef %2, %struct.HIP_vector_type* noundef %3, i32* noundef %4, i32* noundef %5, i32* noundef %6) #2 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.HIP_vector_type*, align 8
  %11 = alloca %struct.HIP_vector_type*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.dim3, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.dim3, align 4
  %22 = alloca %struct.dim3, align 4
  %23 = alloca %struct.dim3, align 4
  %24 = alloca { i64, i32 }, align 4
  %25 = alloca { i64, i32 }, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.HIP_vector_type*, align 8
  %34 = alloca %struct.dim3, align 4
  %35 = alloca %struct.dim3, align 4
  %36 = alloca { i64, i32 }, align 4
  %37 = alloca { i64, i32 }, align 4
  %38 = alloca %struct.dim3, align 4
  %39 = alloca %struct.dim3, align 4
  %40 = alloca { i64, i32 }, align 4
  %41 = alloca { i64, i32 }, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.HIP_vector_type* %2, %struct.HIP_vector_type** %10, align 8
  store %struct.HIP_vector_type* %3, %struct.HIP_vector_type** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = call noalias i8* @malloc(i64 noundef %45) #9
  %47 = bitcast i8* %46 to i32*
  store i32* %47, i32** %15, align 8
  store i32 -1, i32* %16, align 4
  %48 = load i32*, i32** %15, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 0, i32* %49, align 4
  store i32 1, i32* %17, align 4
  br label %50

50:                                               ; preds = %88, %7
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %91

54:                                               ; preds = %50
  %55 = load i32*, i32** %15, align 8
  %56 = load i32, i32* %17, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %17, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %60, %66
  %68 = load i32*, i32** %15, align 8
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  %72 = load i32*, i32** %12, align 8
  %73 = load i32, i32* %17, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %54
  %81 = load i32*, i32** %12, align 8
  %82 = load i32, i32* %17, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %16, align 4
  br label %87

87:                                               ; preds = %80, %54
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %17, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %17, align 4
  br label %50, !llvm.loop !6

91:                                               ; preds = %50
  %92 = load i32, i32* %16, align 4
  %93 = mul nsw i32 %92, 4
  store i32 %93, i32* %16, align 4
  store i32 256, i32* %18, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %19, i32 noundef 256, i32 noundef 1, i32 noundef 1)
  %94 = load i32, i32* %8, align 4
  %95 = sdiv i32 %94, 4
  %96 = srem i32 %95, 256
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load i32, i32* %8, align 4
  %100 = sdiv i32 %99, 4
  %101 = sdiv i32 %100, 256
  br label %107

102:                                              ; preds = %91
  %103 = load i32, i32* %8, align 4
  %104 = sdiv i32 %103, 4
  %105 = sdiv i32 %104, 256
  %106 = add nsw i32 %105, 1
  br label %107

107:                                              ; preds = %102, %98
  %108 = phi i32 [ %101, %98 ], [ %106, %102 ]
  store i32 %108, i32* %20, align 4
  %109 = load i32, i32* %20, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %21, i32 noundef %109, i32 noundef 1, i32 noundef 1)
  br label %110

110:                                              ; preds = %107
  %111 = bitcast %struct.dim3* %22 to i8*
  %112 = bitcast %struct.dim3* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %111, i8* align 4 %112, i64 12, i1 false)
  %113 = bitcast %struct.dim3* %23 to i8*
  %114 = bitcast %struct.dim3* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %113, i8* align 4 %114, i64 12, i1 false)
  %115 = bitcast { i64, i32 }* %24 to i8*
  %116 = bitcast %struct.dim3* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %115, i8* align 4 %116, i64 12, i1 false)
  %117 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 0
  %118 = load i64, i64* %117, align 4
  %119 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = bitcast { i64, i32 }* %25 to i8*
  %122 = bitcast %struct.dim3* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %121, i8* align 4 %122, i64 12, i1 false)
  %123 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 0
  %124 = load i64, i64* %123, align 4
  %125 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @__hipPushCallConfiguration(i64 %118, i32 %120, i64 %124, i32 %126, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %110
  %130 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %10, align 8
  %131 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %11, align 8
  %132 = load i32, i32* %8, align 4
  call void @_Z29__device_stub__mergeSortFirstP15HIP_vector_typeIfLj4EES1_i(%struct.HIP_vector_type* noundef %130, %struct.HIP_vector_type* noundef %131, i32 noundef %132)
  br label %133

133:                                              ; preds = %129, %110
  br label %134

134:                                              ; preds = %133
  %135 = bitcast i32** %26 to i8**
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = mul i64 %138, 4
  %140 = call i32 @hipMalloc(i8** noundef %135, i64 noundef %139)
  %141 = bitcast i32** %27 to i8**
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = mul i64 %144, 4
  %146 = call i32 @hipMalloc(i8** noundef %141, i64 noundef %145)
  %147 = bitcast i32** %28 to i8**
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = mul i64 %149, 4
  %151 = call i32 @hipMalloc(i8** noundef %147, i64 noundef %150)
  %152 = load i32*, i32** %26, align 8
  %153 = bitcast i32* %152 to i8*
  %154 = load i32*, i32** %15, align 8
  %155 = bitcast i32* %154 to i8*
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = mul i64 %158, 4
  %160 = call i32 @hipMemcpy(i8* noundef %153, i8* noundef %155, i64 noundef %159, i32 noundef 1)
  %161 = load i32*, i32** %27, align 8
  %162 = bitcast i32* %161 to i8*
  %163 = load i32*, i32** %14, align 8
  %164 = bitcast i32* %163 to i8*
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = mul i64 %167, 4
  %169 = call i32 @hipMemcpy(i8* noundef %162, i8* noundef %164, i64 noundef %168, i32 noundef 1)
  %170 = load i32*, i32** %28, align 8
  %171 = bitcast i32* %170 to i8*
  %172 = load i32*, i32** %13, align 8
  %173 = bitcast i32* %172 to i8*
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = mul i64 %175, 4
  %177 = call i32 @hipMemcpy(i8* noundef %171, i8* noundef %173, i64 noundef %176, i32 noundef 1)
  store i32 2, i32* %29, align 4
  br label %178

178:                                              ; preds = %134, %273
  %179 = load i32, i32* %29, align 4
  %180 = mul nsw i32 %179, 4
  store i32 %180, i32* %30, align 4
  %181 = load i32, i32* %16, align 4
  %182 = sitofp i32 %181 to float
  %183 = load i32, i32* %30, align 4
  %184 = sitofp i32 %183 to float
  %185 = fdiv contract float %182, %184
  %186 = call contract noundef float @_ZSt4ceilf(float noundef %185)
  %187 = fptosi float %186 to i32
  store i32 %187, i32* %31, align 4
  %188 = load i32, i32* %31, align 4
  %189 = load i32, i32* %9, align 4
  %190 = mul nsw i32 %188, %189
  store i32 %190, i32* %32, align 4
  %191 = getelementptr inbounds %struct.dim3, %struct.dim3* %19, i32 0, i32 0
  store i32 208, i32* %191, align 4
  %192 = load i32, i32* %32, align 4
  %193 = getelementptr inbounds %struct.dim3, %struct.dim3* %19, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = urem i32 %192, %194
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %178
  %198 = load i32, i32* %32, align 4
  %199 = getelementptr inbounds %struct.dim3, %struct.dim3* %19, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = udiv i32 %198, %200
  br label %208

202:                                              ; preds = %178
  %203 = load i32, i32* %32, align 4
  %204 = getelementptr inbounds %struct.dim3, %struct.dim3* %19, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = udiv i32 %203, %205
  %207 = add i32 %206, 1
  br label %208

208:                                              ; preds = %202, %197
  %209 = phi i32 [ %201, %197 ], [ %207, %202 ]
  %210 = getelementptr inbounds %struct.dim3, %struct.dim3* %21, i32 0, i32 0
  store i32 %209, i32* %210, align 4
  %211 = getelementptr inbounds %struct.dim3, %struct.dim3* %21, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = icmp ult i32 %212, 8
  br i1 %213, label %214, label %235

214:                                              ; preds = %208
  %215 = getelementptr inbounds %struct.dim3, %struct.dim3* %21, i32 0, i32 0
  store i32 8, i32* %215, align 4
  %216 = load i32, i32* %32, align 4
  %217 = getelementptr inbounds %struct.dim3, %struct.dim3* %21, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = urem i32 %216, %218
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %214
  %222 = load i32, i32* %32, align 4
  %223 = getelementptr inbounds %struct.dim3, %struct.dim3* %21, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = udiv i32 %222, %224
  br label %232

226:                                              ; preds = %214
  %227 = load i32, i32* %32, align 4
  %228 = getelementptr inbounds %struct.dim3, %struct.dim3* %21, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = udiv i32 %227, %229
  %231 = add i32 %230, 1
  br label %232

232:                                              ; preds = %226, %221
  %233 = phi i32 [ %225, %221 ], [ %231, %226 ]
  %234 = getelementptr inbounds %struct.dim3, %struct.dim3* %19, i32 0, i32 0
  store i32 %233, i32* %234, align 4
  br label %235

235:                                              ; preds = %232, %208
  %236 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %10, align 8
  store %struct.HIP_vector_type* %236, %struct.HIP_vector_type** %33, align 8
  %237 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %11, align 8
  store %struct.HIP_vector_type* %237, %struct.HIP_vector_type** %10, align 8
  %238 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %33, align 8
  store %struct.HIP_vector_type* %238, %struct.HIP_vector_type** %11, align 8
  br label %239

239:                                              ; preds = %235
  %240 = bitcast %struct.dim3* %34 to i8*
  %241 = bitcast %struct.dim3* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %240, i8* align 4 %241, i64 12, i1 false)
  %242 = bitcast %struct.dim3* %35 to i8*
  %243 = bitcast %struct.dim3* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %242, i8* align 4 %243, i64 12, i1 false)
  %244 = bitcast { i64, i32 }* %36 to i8*
  %245 = bitcast %struct.dim3* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %244, i8* align 4 %245, i64 12, i1 false)
  %246 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %36, i32 0, i32 0
  %247 = load i64, i64* %246, align 4
  %248 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %36, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = bitcast { i64, i32 }* %37 to i8*
  %251 = bitcast %struct.dim3* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %250, i8* align 4 %251, i64 12, i1 false)
  %252 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 0
  %253 = load i64, i64* %252, align 4
  %254 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @__hipPushCallConfiguration(i64 %247, i32 %249, i64 %253, i32 %255, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %264, label %258

258:                                              ; preds = %239
  %259 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %10, align 8
  %260 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %11, align 8
  %261 = load i32, i32* %29, align 4
  %262 = load i32, i32* %31, align 4
  %263 = load i32*, i32** %26, align 8
  call void @_Z28__device_stub__mergeSortPassP15HIP_vector_typeIfLj4EES1_iiPi(%struct.HIP_vector_type* noundef %259, %struct.HIP_vector_type* noundef %260, i32 noundef %261, i32 noundef %262, i32* noundef %263)
  br label %264

264:                                              ; preds = %258, %239
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %29, align 4
  %267 = mul nsw i32 %266, 2
  store i32 %267, i32* %29, align 4
  %268 = load i32, i32* %29, align 4
  %269 = mul nsw i32 %268, 4
  store i32 %269, i32* %30, align 4
  %270 = load i32, i32* %31, align 4
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %272, label %273

272:                                              ; preds = %265
  br label %274

273:                                              ; preds = %265
  br label %178, !llvm.loop !8

274:                                              ; preds = %272
  %275 = getelementptr inbounds %struct.dim3, %struct.dim3* %19, i32 0, i32 0
  store i32 256, i32* %275, align 4
  %276 = load i32, i32* %16, align 4
  %277 = getelementptr inbounds %struct.dim3, %struct.dim3* %19, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = urem i32 %276, %278
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %274
  %282 = load i32, i32* %16, align 4
  %283 = getelementptr inbounds %struct.dim3, %struct.dim3* %19, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = udiv i32 %282, %284
  br label %292

286:                                              ; preds = %274
  %287 = load i32, i32* %16, align 4
  %288 = getelementptr inbounds %struct.dim3, %struct.dim3* %19, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = udiv i32 %287, %289
  %291 = add i32 %290, 1
  br label %292

292:                                              ; preds = %286, %281
  %293 = phi i32 [ %285, %281 ], [ %291, %286 ]
  %294 = getelementptr inbounds %struct.dim3, %struct.dim3* %21, i32 0, i32 0
  store i32 %293, i32* %294, align 4
  %295 = load i32, i32* %9, align 4
  %296 = getelementptr inbounds %struct.dim3, %struct.dim3* %21, i32 0, i32 1
  store i32 %295, i32* %296, align 4
  br label %297

297:                                              ; preds = %292
  %298 = bitcast %struct.dim3* %38 to i8*
  %299 = bitcast %struct.dim3* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %298, i8* align 4 %299, i64 12, i1 false)
  %300 = bitcast %struct.dim3* %39 to i8*
  %301 = bitcast %struct.dim3* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %300, i8* align 4 %301, i64 12, i1 false)
  %302 = bitcast { i64, i32 }* %40 to i8*
  %303 = bitcast %struct.dim3* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %302, i8* align 4 %303, i64 12, i1 false)
  %304 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %40, i32 0, i32 0
  %305 = load i64, i64* %304, align 4
  %306 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %40, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = bitcast { i64, i32 }* %41 to i8*
  %309 = bitcast %struct.dim3* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %308, i8* align 4 %309, i64 12, i1 false)
  %310 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %41, i32 0, i32 0
  %311 = load i64, i64* %310, align 4
  %312 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %41, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @__hipPushCallConfiguration(i64 %305, i32 %307, i64 %311, i32 %313, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %324, label %316

316:                                              ; preds = %297
  %317 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %11, align 8
  %318 = bitcast %struct.HIP_vector_type* %317 to float*
  %319 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %10, align 8
  %320 = bitcast %struct.HIP_vector_type* %319 to float*
  %321 = load i32*, i32** %26, align 8
  %322 = load i32*, i32** %27, align 8
  %323 = load i32*, i32** %28, align 8
  call void @_Z24__device_stub__mergepackPfS_PiPjS0_(float* noundef %318, float* noundef %320, i32* noundef %321, i32* noundef %322, i32* noundef %323)
  br label %324

324:                                              ; preds = %316, %297
  br label %325

325:                                              ; preds = %324
  %326 = load i32*, i32** %15, align 8
  %327 = bitcast i32* %326 to i8*
  call void @free(i8* noundef %327) #10
  %328 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %10, align 8
  ret %struct.HIP_vector_type* %328
}

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 comdat align 2 {
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

declare i32 @hipMalloc(i8** noundef, i64 noundef) #5

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #5

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_ZSt4ceilf(float noundef %0) #6 comdat {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = call contract float @llvm.ceil.f32(float %3)
  ret float %4
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.ceil.f32(float) #8

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (%struct.HIP_vector_type*, %struct.HIP_vector_type*, i32)** @_Z14mergeSortFirstP15HIP_vector_typeIfLj4EES1_i to i8*), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %3 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (%struct.HIP_vector_type*, %struct.HIP_vector_type*, i32, i32, i32*)** @_Z13mergeSortPassP15HIP_vector_typeIfLj4EES1_iiPi to i8*), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %4 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (float*, float*, i32*, i32*, i32*)** @_Z9mergepackPfS_PiPjS0_ to i8*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @2, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
attributes #3 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind }

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
