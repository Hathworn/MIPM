; ModuleID = 'kernel_gpu_cuda_wrapper.cu'
source_filename = "kernel_gpu_cuda_wrapper.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim_str = type { i32, i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.box_str = type { i32, i32, i32, i32, i64, i32, [26 x %struct.nei_str] }
%struct.nei_str = type { i32, i32, i32, i32, i64 }
%struct.FOUR_VECTOR = type { double, double, double, double }
%struct.par_str = type { double }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque

$_ZN4dim3C2Ejjj = comdat any

$__hip_gpubin_handle = comdat any

@_Z15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_ = constant void (double, %struct.dim_str*, %struct.box_str*, %struct.FOUR_VECTOR*, double*, %struct.FOUR_VECTOR*)* @_Z30__device_stub__kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_, align 8
@0 = private unnamed_addr constant [64 x i8] c"_Z15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z30__device_stub__kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_(double %0, %struct.dim_str* noundef byval(%struct.dim_str) align 8 %1, %struct.box_str* noundef %2, %struct.FOUR_VECTOR* noundef %3, double* noundef %4, %struct.FOUR_VECTOR* noundef %5) #0 {
  %7 = alloca %struct.par_str, align 8
  %8 = alloca %struct.box_str*, align 8
  %9 = alloca %struct.FOUR_VECTOR*, align 8
  %10 = alloca double*, align 8
  %11 = alloca %struct.FOUR_VECTOR*, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca %struct.dim3, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca { i64, i32 }, align 8
  %17 = alloca { i64, i32 }, align 8
  %18 = getelementptr inbounds %struct.par_str, %struct.par_str* %7, i32 0, i32 0
  store double %0, double* %18, align 8
  store %struct.box_str* %2, %struct.box_str** %8, align 8
  store %struct.FOUR_VECTOR* %3, %struct.FOUR_VECTOR** %9, align 8
  store double* %4, double** %10, align 8
  store %struct.FOUR_VECTOR* %5, %struct.FOUR_VECTOR** %11, align 8
  %19 = alloca i8*, i64 6, align 16
  %20 = bitcast %struct.par_str* %7 to i8*
  %21 = getelementptr i8*, i8** %19, i32 0
  store i8* %20, i8** %21, align 8
  %22 = bitcast %struct.dim_str* %1 to i8*
  %23 = getelementptr i8*, i8** %19, i32 1
  store i8* %22, i8** %23, align 8
  %24 = bitcast %struct.box_str** %8 to i8*
  %25 = getelementptr i8*, i8** %19, i32 2
  store i8* %24, i8** %25, align 8
  %26 = bitcast %struct.FOUR_VECTOR** %9 to i8*
  %27 = getelementptr i8*, i8** %19, i32 3
  store i8* %26, i8** %27, align 8
  %28 = bitcast double** %10 to i8*
  %29 = getelementptr i8*, i8** %19, i32 4
  store i8* %28, i8** %29, align 8
  %30 = bitcast %struct.FOUR_VECTOR** %11 to i8*
  %31 = getelementptr i8*, i8** %19, i32 5
  store i8* %30, i8** %31, align 8
  %32 = call i32 @__hipPopCallConfiguration(%struct.dim3* %12, %struct.dim3* %13, i64* %14, i8** %15)
  %33 = load i64, i64* %14, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = bitcast { i64, i32 }* %16 to i8*
  %36 = bitcast %struct.dim3* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 12, i1 false)
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = bitcast { i64, i32 }* %17 to i8*
  %42 = bitcast %struct.dim3* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 12, i1 false)
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = bitcast i8* %34 to %struct.ihipStream_t*
  %48 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (double, %struct.dim_str*, %struct.box_str*, %struct.FOUR_VECTOR*, double*, %struct.FOUR_VECTOR*)** @_Z15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_ to i8*), i64 %38, i32 %40, i64 %44, i32 %46, i8** noundef %19, i64 noundef %33, %struct.ihipStream_t* noundef %47)
  br label %49

49:                                               ; preds = %6
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @kernel_gpu_cuda_wrapper(double %0, %struct.dim_str* noundef byval(%struct.dim_str) align 8 %1, %struct.box_str* noundef %2, %struct.FOUR_VECTOR* noundef %3, double* noundef %4, %struct.FOUR_VECTOR* noundef %5) #2 {
  %7 = alloca %struct.par_str, align 8
  %8 = alloca %struct.box_str*, align 8
  %9 = alloca %struct.FOUR_VECTOR*, align 8
  %10 = alloca double*, align 8
  %11 = alloca %struct.FOUR_VECTOR*, align 8
  %12 = alloca %struct.box_str*, align 8
  %13 = alloca %struct.FOUR_VECTOR*, align 8
  %14 = alloca double*, align 8
  %15 = alloca %struct.FOUR_VECTOR*, align 8
  %16 = alloca %struct.dim3, align 4
  %17 = alloca %struct.dim3, align 4
  %18 = alloca %struct.dim3, align 4
  %19 = alloca %struct.dim3, align 4
  %20 = alloca { i64, i32 }, align 4
  %21 = alloca { i64, i32 }, align 4
  %22 = alloca %struct.par_str, align 8
  %23 = alloca %struct.dim_str, align 8
  %24 = getelementptr inbounds %struct.par_str, %struct.par_str* %7, i32 0, i32 0
  store double %0, double* %24, align 8
  store %struct.box_str* %2, %struct.box_str** %8, align 8
  store %struct.FOUR_VECTOR* %3, %struct.FOUR_VECTOR** %9, align 8
  store double* %4, double** %10, align 8
  store %struct.FOUR_VECTOR* %5, %struct.FOUR_VECTOR** %11, align 8
  %25 = call i32 @hipDeviceSynchronize()
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %16, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %17, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  %26 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %1, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds %struct.dim3, %struct.dim3* %17, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.dim3, %struct.dim3* %17, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = getelementptr inbounds %struct.dim3, %struct.dim3* %16, i32 0, i32 0
  store i32 128, i32* %31, align 4
  %32 = getelementptr inbounds %struct.dim3, %struct.dim3* %16, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = bitcast %struct.box_str** %12 to i8**
  %34 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %1, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @hipMalloc(i8** noundef %33, i64 noundef %35)
  %37 = bitcast %struct.FOUR_VECTOR** %13 to i8**
  %38 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %1, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @hipMalloc(i8** noundef %37, i64 noundef %39)
  %41 = bitcast double** %14 to i8**
  %42 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %1, i32 0, i32 8
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @hipMalloc(i8** noundef %41, i64 noundef %43)
  %45 = bitcast %struct.FOUR_VECTOR** %15 to i8**
  %46 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %1, i32 0, i32 7
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @hipMalloc(i8** noundef %45, i64 noundef %47)
  %49 = load %struct.box_str*, %struct.box_str** %12, align 8
  %50 = bitcast %struct.box_str* %49 to i8*
  %51 = load %struct.box_str*, %struct.box_str** %8, align 8
  %52 = bitcast %struct.box_str* %51 to i8*
  %53 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %1, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @hipMemcpy(i8* noundef %50, i8* noundef %52, i64 noundef %54, i32 noundef 1)
  %56 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %13, align 8
  %57 = bitcast %struct.FOUR_VECTOR* %56 to i8*
  %58 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %9, align 8
  %59 = bitcast %struct.FOUR_VECTOR* %58 to i8*
  %60 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %1, i32 0, i32 7
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @hipMemcpy(i8* noundef %57, i8* noundef %59, i64 noundef %61, i32 noundef 1)
  %63 = load double*, double** %14, align 8
  %64 = bitcast double* %63 to i8*
  %65 = load double*, double** %10, align 8
  %66 = bitcast double* %65 to i8*
  %67 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %1, i32 0, i32 8
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @hipMemcpy(i8* noundef %64, i8* noundef %66, i64 noundef %68, i32 noundef 1)
  %70 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %15, align 8
  %71 = bitcast %struct.FOUR_VECTOR* %70 to i8*
  %72 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %11, align 8
  %73 = bitcast %struct.FOUR_VECTOR* %72 to i8*
  %74 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %1, i32 0, i32 7
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @hipMemcpy(i8* noundef %71, i8* noundef %73, i64 noundef %75, i32 noundef 1)
  br label %77

77:                                               ; preds = %6
  %78 = bitcast %struct.dim3* %18 to i8*
  %79 = bitcast %struct.dim3* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %78, i8* align 4 %79, i64 12, i1 false)
  %80 = bitcast %struct.dim3* %19 to i8*
  %81 = bitcast %struct.dim3* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 12, i1 false)
  %82 = bitcast { i64, i32 }* %20 to i8*
  %83 = bitcast %struct.dim3* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %82, i8* align 4 %83, i64 12, i1 false)
  %84 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 0
  %85 = load i64, i64* %84, align 4
  %86 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = bitcast { i64, i32 }* %21 to i8*
  %89 = bitcast %struct.dim3* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %88, i8* align 4 %89, i64 12, i1 false)
  %90 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 0
  %91 = load i64, i64* %90, align 4
  %92 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @__hipPushCallConfiguration(i64 %85, i32 %87, i64 %91, i32 %93, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %77
  %97 = bitcast %struct.par_str* %22 to i8*
  %98 = bitcast %struct.par_str* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 %98, i64 8, i1 false)
  %99 = bitcast %struct.dim_str* %23 to i8*
  %100 = bitcast %struct.dim_str* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 8 %100, i64 56, i1 false)
  %101 = load %struct.box_str*, %struct.box_str** %12, align 8
  %102 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %13, align 8
  %103 = load double*, double** %14, align 8
  %104 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %15, align 8
  %105 = getelementptr inbounds %struct.par_str, %struct.par_str* %22, i32 0, i32 0
  %106 = load double, double* %105, align 8
  call void @_Z30__device_stub__kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_(double %106, %struct.dim_str* noundef byval(%struct.dim_str) align 8 %23, %struct.box_str* noundef %101, %struct.FOUR_VECTOR* noundef %102, double* noundef %103, %struct.FOUR_VECTOR* noundef %104)
  br label %107

107:                                              ; preds = %96, %77
  br label %108

108:                                              ; preds = %107
  %109 = call i32 @hipDeviceSynchronize()
  %110 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %11, align 8
  %111 = bitcast %struct.FOUR_VECTOR* %110 to i8*
  %112 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %15, align 8
  %113 = bitcast %struct.FOUR_VECTOR* %112 to i8*
  %114 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %1, i32 0, i32 7
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @hipMemcpy(i8* noundef %111, i8* noundef %113, i64 noundef %115, i32 noundef 2)
  %117 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %13, align 8
  %118 = bitcast %struct.FOUR_VECTOR* %117 to i8*
  %119 = call i32 @hipFree(i8* noundef %118)
  %120 = load double*, double** %14, align 8
  %121 = bitcast double* %120 to i8*
  %122 = call i32 @hipFree(i8* noundef %121)
  %123 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %15, align 8
  %124 = bitcast %struct.FOUR_VECTOR* %123 to i8*
  %125 = call i32 @hipFree(i8* noundef %124)
  %126 = load %struct.box_str*, %struct.box_str** %12, align 8
  %127 = bitcast %struct.box_str* %126 to i8*
  %128 = call i32 @hipFree(i8* noundef %127)
  ret void
}

declare i32 @hipDeviceSynchronize() #3

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

declare i32 @hipMalloc(i8** noundef, i64 noundef) #3

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #3

declare i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) #3

declare i32 @hipFree(i8* noundef) #3

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (double, %struct.dim_str*, %struct.box_str*, %struct.FOUR_VECTOR*, double*, %struct.FOUR_VECTOR*)** @_Z15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_ to i8*), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
attributes #4 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 1be90618e508074abc746ab4963d7ad92710d6c5)"}
