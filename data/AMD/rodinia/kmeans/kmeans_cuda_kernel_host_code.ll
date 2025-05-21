; ModuleID = 'hip/kmeans/kmeans_cuda_kernel.cu'
source_filename = "hip/kmeans/kmeans_cuda_kernel.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque

$__hip_gpubin_handle = comdat any

@_Z14invert_mappingPfS_ii = constant void (float*, float*, i32, i32)* @_Z29__device_stub__invert_mappingPfS_ii, align 8
@_Z11kmeansPointPfS_iiiPiS_S_S0_ = constant void (float*, float*, i32, i32, i32, i32*, float*, float*, i32*)* @_Z26__device_stub__kmeansPointPfS_iiiPiS_S_S0_, align 8
@0 = private unnamed_addr constant [25 x i8] c"_Z14invert_mappingPfS_ii\00", align 1
@1 = private unnamed_addr constant [32 x i8] c"_Z11kmeansPointPfS_iiiPiS_S_S0_\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

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

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 1be90618e508074abc746ab4963d7ad92710d6c5)"}
