; ModuleID = 'hip/lud/lud_kernel.hip.cu'
source_filename = "hip/lud/lud_kernel.hip.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque

$_ZN4dim3C2Ejjj = comdat any

$__hip_gpubin_handle = comdat any

@_Z12lud_diagonalPfii = constant void (float*, i32, i32)* @_Z27__device_stub__lud_diagonalPfii, align 8
@_Z13lud_perimeterPfii = constant void (float*, i32, i32)* @_Z28__device_stub__lud_perimeterPfii, align 8
@_Z12lud_internalPfii = constant void (float*, i32, i32)* @_Z27__device_stub__lud_internalPfii, align 8
@0 = private unnamed_addr constant [21 x i8] c"_Z12lud_diagonalPfii\00", align 1
@1 = private unnamed_addr constant [22 x i8] c"_Z13lud_perimeterPfii\00", align 1
@2 = private unnamed_addr constant [21 x i8] c"_Z12lud_internalPfii\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z27__device_stub__lud_diagonalPfii(float* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca { i64, i32 }, align 8
  %12 = alloca { i64, i32 }, align 8
  store float* %0, float** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = alloca i8*, i64 3, align 16
  %14 = bitcast float** %4 to i8*
  %15 = getelementptr i8*, i8** %13, i32 0
  store i8* %14, i8** %15, align 8
  %16 = bitcast i32* %5 to i8*
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
  %36 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (float*, i32, i32)** @_Z12lud_diagonalPfii to i8*), i64 %26, i32 %28, i64 %32, i32 %34, i8** noundef %13, i64 noundef %21, %struct.ihipStream_t* noundef %35)
  br label %37

37:                                               ; preds = %3
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z28__device_stub__lud_perimeterPfii(float* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca { i64, i32 }, align 8
  %12 = alloca { i64, i32 }, align 8
  store float* %0, float** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = alloca i8*, i64 3, align 16
  %14 = bitcast float** %4 to i8*
  %15 = getelementptr i8*, i8** %13, i32 0
  store i8* %14, i8** %15, align 8
  %16 = bitcast i32* %5 to i8*
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
  %36 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (float*, i32, i32)** @_Z13lud_perimeterPfii to i8*), i64 %26, i32 %28, i64 %32, i32 %34, i8** noundef %13, i64 noundef %21, %struct.ihipStream_t* noundef %35)
  br label %37

37:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z27__device_stub__lud_internalPfii(float* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca { i64, i32 }, align 8
  %12 = alloca { i64, i32 }, align 8
  store float* %0, float** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = alloca i8*, i64 3, align 16
  %14 = bitcast float** %4 to i8*
  %15 = getelementptr i8*, i8** %13, i32 0
  store i8* %14, i8** %15, align 8
  %16 = bitcast i32* %5 to i8*
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
  %36 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (float*, i32, i32)** @_Z12lud_internalPfii to i8*), i64 %26, i32 %28, i64 %32, i32 %34, i8** noundef %13, i64 noundef %21, %struct.ihipStream_t* noundef %35)
  br label %37

37:                                               ; preds = %3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z8lud_cudaPfi(float* noundef %0, i32 noundef %1) #2 {
  %3 = alloca float*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dim3, align 4
  %7 = alloca float*, align 8
  %8 = alloca %struct.dim3, align 4
  %9 = alloca %struct.dim3, align 4
  %10 = alloca { i64, i32 }, align 4
  %11 = alloca { i64, i32 }, align 4
  %12 = alloca %struct.dim3, align 4
  %13 = alloca %struct.dim3, align 4
  %14 = alloca { i64, i32 }, align 4
  %15 = alloca { i64, i32 }, align 4
  %16 = alloca %struct.dim3, align 4
  %17 = alloca %struct.dim3, align 4
  %18 = alloca %struct.dim3, align 4
  %19 = alloca { i64, i32 }, align 4
  %20 = alloca { i64, i32 }, align 4
  %21 = alloca %struct.dim3, align 4
  %22 = alloca %struct.dim3, align 4
  %23 = alloca { i64, i32 }, align 4
  %24 = alloca { i64, i32 }, align 4
  store float* %0, float** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %6, i32 noundef 16, i32 noundef 16, i32 noundef 1)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = call noalias i8* @malloc(i64 noundef %29) #6
  %31 = bitcast i8* %30 to float*
  store float* %31, float** %7, align 8
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %120, %2
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 %34, 16
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %123

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %8, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %9, i32 noundef 16, i32 noundef 1, i32 noundef 1)
  %39 = bitcast { i64, i32 }* %10 to i8*
  %40 = bitcast %struct.dim3* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 12, i1 false)
  %41 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %42 = load i64, i64* %41, align 4
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = bitcast { i64, i32 }* %11 to i8*
  %46 = bitcast %struct.dim3* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 12, i1 false)
  %47 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  %48 = load i64, i64* %47, align 4
  %49 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @__hipPushCallConfiguration(i64 %42, i32 %44, i64 %48, i32 %50, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %38
  %54 = load float*, float** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %5, align 4
  call void @_Z27__device_stub__lud_diagonalPfii(float* noundef %54, i32 noundef %55, i32 noundef %56)
  br label %57

57:                                               ; preds = %53, %38
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = sub nsw i32 %60, %61
  %63 = sdiv i32 %62, 16
  %64 = sub nsw i32 %63, 1
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %12, i32 noundef %64, i32 noundef 1, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %13, i32 noundef 32, i32 noundef 1, i32 noundef 1)
  %65 = bitcast { i64, i32 }* %14 to i8*
  %66 = bitcast %struct.dim3* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 12, i1 false)
  %67 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %68 = load i64, i64* %67, align 4
  %69 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = bitcast { i64, i32 }* %15 to i8*
  %72 = bitcast %struct.dim3* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 12, i1 false)
  %73 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %74 = load i64, i64* %73, align 4
  %75 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @__hipPushCallConfiguration(i64 %68, i32 %70, i64 %74, i32 %76, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %59
  %80 = load float*, float** %3, align 8
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %5, align 4
  call void @_Z28__device_stub__lud_perimeterPfii(float* noundef %80, i32 noundef %81, i32 noundef %82)
  br label %83

83:                                               ; preds = %79, %59
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %5, align 4
  %87 = sub nsw i32 %85, %86
  %88 = sdiv i32 %87, 16
  %89 = sub nsw i32 %88, 1
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %5, align 4
  %92 = sub nsw i32 %90, %91
  %93 = sdiv i32 %92, 16
  %94 = sub nsw i32 %93, 1
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %16, i32 noundef %89, i32 noundef %94, i32 noundef 1)
  br label %95

95:                                               ; preds = %84
  %96 = bitcast %struct.dim3* %17 to i8*
  %97 = bitcast %struct.dim3* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 4 %97, i64 12, i1 false)
  %98 = bitcast %struct.dim3* %18 to i8*
  %99 = bitcast %struct.dim3* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %98, i8* align 4 %99, i64 12, i1 false)
  %100 = bitcast { i64, i32 }* %19 to i8*
  %101 = bitcast %struct.dim3* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 4 %101, i64 12, i1 false)
  %102 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %103 = load i64, i64* %102, align 4
  %104 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = bitcast { i64, i32 }* %20 to i8*
  %107 = bitcast %struct.dim3* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %106, i8* align 4 %107, i64 12, i1 false)
  %108 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 0
  %109 = load i64, i64* %108, align 4
  %110 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @__hipPushCallConfiguration(i64 %103, i32 %105, i64 %109, i32 %111, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %95
  %115 = load float*, float** %3, align 8
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* %5, align 4
  call void @_Z27__device_stub__lud_internalPfii(float* noundef %115, i32 noundef %116, i32 noundef %117)
  br label %118

118:                                              ; preds = %114, %95
  br label %119

119:                                              ; preds = %118
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 16
  store i32 %122, i32* %5, align 4
  br label %32, !llvm.loop !6

123:                                              ; preds = %32
  br label %124

124:                                              ; preds = %123
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %21, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %22, i32 noundef 16, i32 noundef 1, i32 noundef 1)
  %125 = bitcast { i64, i32 }* %23 to i8*
  %126 = bitcast %struct.dim3* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %125, i8* align 4 %126, i64 12, i1 false)
  %127 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 0
  %128 = load i64, i64* %127, align 4
  %129 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = bitcast { i64, i32 }* %24 to i8*
  %132 = bitcast %struct.dim3* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %131, i8* align 4 %132, i64 12, i1 false)
  %133 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 0
  %134 = load i64, i64* %133, align 4
  %135 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @__hipPushCallConfiguration(i64 %128, i32 %130, i64 %134, i32 %136, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %124
  %140 = load float*, float** %3, align 8
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* %5, align 4
  call void @_Z27__device_stub__lud_diagonalPfii(float* noundef %140, i32 noundef %141, i32 noundef %142)
  br label %143

143:                                              ; preds = %139, %124
  br label %144

144:                                              ; preds = %143
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 comdat align 2 {
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

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #4

declare i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) #5

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (float*, i32, i32)** @_Z12lud_diagonalPfii to i8*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %3 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (float*, i32, i32)** @_Z13lud_perimeterPfii to i8*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %4 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (float*, i32, i32)** @_Z12lud_internalPfii to i8*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) }

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
