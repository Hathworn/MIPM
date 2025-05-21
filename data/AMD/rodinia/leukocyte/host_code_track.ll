; ModuleID = 'track_ellipse_kernel.cu'
source_filename = "track_ellipse_kernel.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque
%struct.MAT = type { i32, i32, i32, i32, i32, double**, double* }

$_ZN4dim3C2Ejjj = comdat any

$__hip_gpubin_handle = comdat any

@host_I_array = dso_local global float** null, align 8
@host_IMGVF_array = dso_local global float** null, align 8
@device_I_array = dso_local global float** null, align 8
@device_IMGVF_array = dso_local global float** null, align 8
@host_m_array = dso_local global i32* null, align 8
@host_n_array = dso_local global i32* null, align 8
@device_m_array = dso_local global i32* null, align 8
@device_n_array = dso_local global i32* null, align 8
@host_I_all = dso_local global float* null, align 8
@total_mem_size = dso_local global i32 0, align 4
@_Z12IMGVF_kernelPPfS0_PiS1_fffif = constant void (float**, float**, i32*, i32*, float, float, float, i32, float)* @_Z27__device_stub__IMGVF_kernelPPfS0_PiS1_fffif, align 8
@.str = private unnamed_addr constant [23 x i8] c"MGVF kernel error: %s\0A\00", align 1
@0 = private unnamed_addr constant [33 x i8] c"_Z12IMGVF_kernelPPfS0_PiS1_fffif\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z27__device_stub__IMGVF_kernelPPfS0_PiS1_fffif(float** noundef %0, float** noundef %1, i32* noundef %2, i32* noundef %3, float noundef %4, float noundef %5, float noundef %6, i32 noundef %7, float noundef %8) #0 {
  %10 = alloca float**, align 8
  %11 = alloca float**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca %struct.dim3, align 8
  %20 = alloca %struct.dim3, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca { i64, i32 }, align 8
  %24 = alloca { i64, i32 }, align 8
  store float** %0, float*** %10, align 8
  store float** %1, float*** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store float %4, float* %14, align 4
  store float %5, float* %15, align 4
  store float %6, float* %16, align 4
  store i32 %7, i32* %17, align 4
  store float %8, float* %18, align 4
  %25 = alloca i8*, i64 9, align 16
  %26 = bitcast float*** %10 to i8*
  %27 = getelementptr i8*, i8** %25, i32 0
  store i8* %26, i8** %27, align 8
  %28 = bitcast float*** %11 to i8*
  %29 = getelementptr i8*, i8** %25, i32 1
  store i8* %28, i8** %29, align 8
  %30 = bitcast i32** %12 to i8*
  %31 = getelementptr i8*, i8** %25, i32 2
  store i8* %30, i8** %31, align 8
  %32 = bitcast i32** %13 to i8*
  %33 = getelementptr i8*, i8** %25, i32 3
  store i8* %32, i8** %33, align 8
  %34 = bitcast float* %14 to i8*
  %35 = getelementptr i8*, i8** %25, i32 4
  store i8* %34, i8** %35, align 8
  %36 = bitcast float* %15 to i8*
  %37 = getelementptr i8*, i8** %25, i32 5
  store i8* %36, i8** %37, align 8
  %38 = bitcast float* %16 to i8*
  %39 = getelementptr i8*, i8** %25, i32 6
  store i8* %38, i8** %39, align 8
  %40 = bitcast i32* %17 to i8*
  %41 = getelementptr i8*, i8** %25, i32 7
  store i8* %40, i8** %41, align 8
  %42 = bitcast float* %18 to i8*
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
  %60 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (float**, float**, i32*, i32*, float, float, float, i32, float)** @_Z12IMGVF_kernelPPfS0_PiS1_fffif to i8*), i64 %50, i32 %52, i64 %56, i32 %58, i8** noundef %25, i64 noundef %45, %struct.ihipStream_t* noundef %59)
  br label %61

61:                                               ; preds = %9
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @IMGVF_cuda(%struct.MAT** noundef %0, %struct.MAT** noundef %1, double noundef %2, double noundef %3, double noundef %4, i32 noundef %5, double noundef %6, i32 noundef %7) #2 {
  %9 = alloca %struct.MAT**, align 8
  %10 = alloca %struct.MAT**, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.dim3, align 4
  %18 = alloca %struct.dim3, align 4
  %19 = alloca { i64, i32 }, align 4
  %20 = alloca { i64, i32 }, align 4
  %21 = alloca i32, align 4
  store %struct.MAT** %0, %struct.MAT*** %9, align 8
  store %struct.MAT** %1, %struct.MAT*** %10, align 8
  store double %2, double* %11, align 8
  store double %3, double* %12, align 8
  store double %4, double* %13, align 8
  store i32 %5, i32* %14, align 4
  store double %6, double* %15, align 8
  store i32 %7, i32* %16, align 4
  %22 = load %struct.MAT**, %struct.MAT*** %9, align 8
  %23 = load i32, i32* %16, align 4
  call void @IMGVF_cuda_init(%struct.MAT** noundef %22, i32 noundef %23)
  br label %24

24:                                               ; preds = %8
  %25 = load i32, i32* %16, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %17, i32 noundef %25, i32 noundef 1, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %18, i32 noundef 320, i32 noundef 1, i32 noundef 1)
  %26 = bitcast { i64, i32 }* %19 to i8*
  %27 = bitcast %struct.dim3* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 12, i1 false)
  %28 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %29 = load i64, i64* %28, align 4
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = bitcast { i64, i32 }* %20 to i8*
  %33 = bitcast %struct.dim3* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 12, i1 false)
  %34 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 0
  %35 = load i64, i64* %34, align 4
  %36 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__hipPushCallConfiguration(i64 %29, i32 %31, i64 %35, i32 %37, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %24
  %41 = load float**, float*** @device_IMGVF_array, align 8
  %42 = load float**, float*** @device_I_array, align 8
  %43 = load i32*, i32** @device_m_array, align 8
  %44 = load i32*, i32** @device_n_array, align 8
  %45 = load double, double* %11, align 8
  %46 = fptrunc double %45 to float
  %47 = load double, double* %12, align 8
  %48 = fptrunc double %47 to float
  %49 = load double, double* %13, align 8
  %50 = fptrunc double %49 to float
  %51 = load i32, i32* %14, align 4
  %52 = load double, double* %15, align 8
  %53 = fptrunc double %52 to float
  call void @_Z27__device_stub__IMGVF_kernelPPfS0_PiS1_fffif(float** noundef %41, float** noundef %42, i32* noundef %43, i32* noundef %44, float noundef %46, float noundef %48, float noundef %50, i32 noundef %51, float noundef %53)
  br label %54

54:                                               ; preds = %40, %24
  br label %55

55:                                               ; preds = %54
  %56 = call i32 @hipDeviceSynchronize()
  %57 = call i32 @hipGetLastError()
  store i32 %57, i32* %21, align 4
  %58 = load i32, i32* %21, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* %21, align 4
  %62 = call i8* @hipGetErrorString(i32 noundef %61)
  %63 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* noundef %62)
  call void @exit(i32 noundef 1) #8
  unreachable

64:                                               ; preds = %55
  %65 = load %struct.MAT**, %struct.MAT*** %10, align 8
  %66 = load i32, i32* %16, align 4
  call void @IMGVF_cuda_cleanup(%struct.MAT** noundef %65, i32 noundef %66)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @IMGVF_cuda_init(%struct.MAT** noundef %0, i32 noundef %1) #2 {
  %3 = alloca %struct.MAT**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.MAT*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.MAT*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  store %struct.MAT** %0, %struct.MAT*** %3, align 8
  store i32 %1, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 8, %21
  %23 = call noalias i8* @malloc(i64 noundef %22) #9
  %24 = bitcast i8* %23 to float**
  store float** %24, float*** @host_I_array, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 8, %26
  %28 = call noalias i8* @malloc(i64 noundef %27) #9
  %29 = bitcast i8* %28 to float**
  store float** %29, float*** @host_IMGVF_array, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = call i32 @hipMalloc(i8** noundef bitcast (float*** @device_I_array to i8**), i64 noundef %32)
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 8
  %37 = call i32 @hipMalloc(i8** noundef bitcast (float*** @device_IMGVF_array to i8**), i64 noundef %36)
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = call noalias i8* @malloc(i64 noundef %40) #9
  %42 = bitcast i8* %41 to i32*
  store i32* %42, i32** @host_m_array, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 4, %44
  %46 = call noalias i8* @malloc(i64 noundef %45) #9
  %47 = bitcast i8* %46 to i32*
  store i32* %47, i32** @host_n_array, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = call i32 @hipMalloc(i8** noundef bitcast (i32** @device_m_array to i8**), i64 noundef %50)
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = call i32 @hipMalloc(i8** noundef bitcast (i32** @device_n_array to i8**), i64 noundef %54)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %76, %2
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %56
  %61 = load %struct.MAT**, %struct.MAT*** %3, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.MAT*, %struct.MAT** %61, i64 %63
  %65 = load %struct.MAT*, %struct.MAT** %64, align 8
  store %struct.MAT* %65, %struct.MAT** %9, align 8
  %66 = load %struct.MAT*, %struct.MAT** %9, align 8
  %67 = getelementptr inbounds %struct.MAT, %struct.MAT* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.MAT*, %struct.MAT** %9, align 8
  %70 = getelementptr inbounds %struct.MAT, %struct.MAT* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = mul i32 %68, %71
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %60
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %56, !llvm.loop !6

79:                                               ; preds = %56
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 4
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* @total_mem_size, align 4
  %84 = load i32, i32* @total_mem_size, align 4
  %85 = sext i32 %84 to i64
  %86 = call noalias i8* @malloc(i64 noundef %85) #9
  %87 = bitcast i8* %86 to float*
  store float* %87, float** @host_I_all, align 8
  %88 = bitcast float** %11 to i8**
  %89 = load i32, i32* @total_mem_size, align 4
  %90 = sext i32 %89 to i64
  %91 = call i32 @hipMalloc(i8** noundef %88, i64 noundef %90)
  %92 = bitcast float** %12 to i8**
  %93 = load i32, i32* @total_mem_size, align 4
  %94 = sext i32 %93 to i64
  %95 = call i32 @hipMalloc(i8** noundef %92, i64 noundef %94)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %7, align 4
  br label %96

96:                                               ; preds = %186, %79
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %189

100:                                              ; preds = %96
  %101 = load %struct.MAT**, %struct.MAT*** %3, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.MAT*, %struct.MAT** %101, i64 %103
  %105 = load %struct.MAT*, %struct.MAT** %104, align 8
  store %struct.MAT* %105, %struct.MAT** %14, align 8
  %106 = load %struct.MAT*, %struct.MAT** %14, align 8
  %107 = getelementptr inbounds %struct.MAT, %struct.MAT* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %15, align 4
  %109 = load %struct.MAT*, %struct.MAT** %14, align 8
  %110 = getelementptr inbounds %struct.MAT, %struct.MAT* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %16, align 4
  %114 = mul nsw i32 %112, %113
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load i32*, i32** @host_m_array, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %115, i32* %119, align 4
  %120 = load i32, i32* %16, align 4
  %121 = load i32*, i32** @host_n_array, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %120, i32* %124, align 4
  %125 = load float*, float** %11, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %125, i64 %127
  store float* %128, float** %18, align 8
  %129 = load float*, float** %12, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %129, i64 %131
  store float* %132, float** %19, align 8
  %133 = load float*, float** %18, align 8
  %134 = load float**, float*** @host_I_array, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float*, float** %134, i64 %136
  store float* %133, float** %137, align 8
  %138 = load float*, float** %19, align 8
  %139 = load float**, float*** @host_IMGVF_array, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float*, float** %139, i64 %141
  store float* %138, float** %142, align 8
  store i32 0, i32* %5, align 4
  br label %143

143:                                              ; preds = %179, %100
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* %15, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %182

147:                                              ; preds = %143
  store i32 0, i32* %6, align 4
  br label %148

148:                                              ; preds = %175, %147
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* %16, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %178

152:                                              ; preds = %148
  %153 = load %struct.MAT*, %struct.MAT** %14, align 8
  %154 = getelementptr inbounds %struct.MAT, %struct.MAT* %153, i32 0, i32 5
  %155 = load double**, double*** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds double*, double** %155, i64 %157
  %159 = load double*, double** %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds double, double* %159, i64 %161
  %163 = load double, double* %162, align 8
  %164 = fptrunc double %163 to float
  %165 = load float*, float** @host_I_all, align 8
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* %16, align 4
  %169 = mul nsw i32 %167, %168
  %170 = add nsw i32 %166, %169
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds float, float* %165, i64 %173
  store float %164, float* %174, align 4
  br label %175

175:                                              ; preds = %152
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %6, align 4
  br label %148, !llvm.loop !8

178:                                              ; preds = %148
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %5, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %5, align 4
  br label %143, !llvm.loop !9

182:                                              ; preds = %143
  %183 = load i32, i32* %17, align 4
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %184, %183
  store i32 %185, i32* %13, align 4
  br label %186

186:                                              ; preds = %182
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %7, align 4
  br label %96, !llvm.loop !10

189:                                              ; preds = %96
  %190 = load float*, float** %11, align 8
  %191 = bitcast float* %190 to i8*
  %192 = load float*, float** @host_I_all, align 8
  %193 = bitcast float* %192 to i8*
  %194 = load i32, i32* @total_mem_size, align 4
  %195 = sext i32 %194 to i64
  %196 = call i32 @hipMemcpy(i8* noundef %191, i8* noundef %193, i64 noundef %195, i32 noundef 1)
  %197 = load float*, float** %12, align 8
  %198 = bitcast float* %197 to i8*
  %199 = load float*, float** @host_I_all, align 8
  %200 = bitcast float* %199 to i8*
  %201 = load i32, i32* @total_mem_size, align 4
  %202 = sext i32 %201 to i64
  %203 = call i32 @hipMemcpy(i8* noundef %198, i8* noundef %200, i64 noundef %202, i32 noundef 1)
  %204 = load float**, float*** @device_I_array, align 8
  %205 = bitcast float** %204 to i8*
  %206 = load float**, float*** @host_I_array, align 8
  %207 = bitcast float** %206 to i8*
  %208 = load i32, i32* %4, align 4
  %209 = sext i32 %208 to i64
  %210 = mul i64 %209, 8
  %211 = call i32 @hipMemcpy(i8* noundef %205, i8* noundef %207, i64 noundef %210, i32 noundef 1)
  %212 = load float**, float*** @device_IMGVF_array, align 8
  %213 = bitcast float** %212 to i8*
  %214 = load float**, float*** @host_IMGVF_array, align 8
  %215 = bitcast float** %214 to i8*
  %216 = load i32, i32* %4, align 4
  %217 = sext i32 %216 to i64
  %218 = mul i64 %217, 8
  %219 = call i32 @hipMemcpy(i8* noundef %213, i8* noundef %215, i64 noundef %218, i32 noundef 1)
  %220 = load i32*, i32** @device_m_array, align 8
  %221 = bitcast i32* %220 to i8*
  %222 = load i32*, i32** @host_m_array, align 8
  %223 = bitcast i32* %222 to i8*
  %224 = load i32, i32* %4, align 4
  %225 = sext i32 %224 to i64
  %226 = mul i64 %225, 4
  %227 = call i32 @hipMemcpy(i8* noundef %221, i8* noundef %223, i64 noundef %226, i32 noundef 1)
  %228 = load i32*, i32** @device_n_array, align 8
  %229 = bitcast i32* %228 to i8*
  %230 = load i32*, i32** @host_n_array, align 8
  %231 = bitcast i32* %230 to i8*
  %232 = load i32, i32* %4, align 4
  %233 = sext i32 %232 to i64
  %234 = mul i64 %233, 4
  %235 = call i32 @hipMemcpy(i8* noundef %229, i8* noundef %231, i64 noundef %234, i32 noundef 1)
  ret void
}

declare i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) #3

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

declare i32 @hipDeviceSynchronize() #3

declare i32 @hipGetLastError() #3

declare i32 @printf(i8* noundef, ...) #3

declare i8* @hipGetErrorString(i32 noundef) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #5

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @IMGVF_cuda_cleanup(%struct.MAT** noundef %0, i32 noundef %1) #2 {
  %3 = alloca %struct.MAT**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.MAT*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.MAT** %0, %struct.MAT*** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load float*, float** @host_I_all, align 8
  %13 = bitcast float* %12 to i8*
  %14 = load float**, float*** @host_IMGVF_array, align 8
  %15 = getelementptr inbounds float*, float** %14, i64 0
  %16 = load float*, float** %15, align 8
  %17 = bitcast float* %16 to i8*
  %18 = load i32, i32* @total_mem_size, align 4
  %19 = sext i32 %18 to i64
  %20 = call i32 @hipMemcpy(i8* noundef %13, i8* noundef %17, i64 noundef %19, i32 noundef 2)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %82, %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %85

25:                                               ; preds = %21
  %26 = load %struct.MAT**, %struct.MAT*** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.MAT*, %struct.MAT** %26, i64 %28
  %30 = load %struct.MAT*, %struct.MAT** %29, align 8
  store %struct.MAT* %30, %struct.MAT** %7, align 8
  %31 = load %struct.MAT*, %struct.MAT** %7, align 8
  %32 = getelementptr inbounds %struct.MAT, %struct.MAT* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %8, align 4
  %34 = load %struct.MAT*, %struct.MAT** %7, align 8
  %35 = getelementptr inbounds %struct.MAT, %struct.MAT* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %73, %25
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %76

41:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %69, %41
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %72

46:                                               ; preds = %42
  %47 = load float*, float** @host_I_all, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = mul nsw i32 %49, %50
  %52 = add nsw i32 %48, %51
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %47, i64 %55
  %57 = load float, float* %56, align 4
  %58 = fpext float %57 to double
  %59 = load %struct.MAT*, %struct.MAT** %7, align 8
  %60 = getelementptr inbounds %struct.MAT, %struct.MAT* %59, i32 0, i32 5
  %61 = load double**, double*** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double*, double** %61, i64 %63
  %65 = load double*, double** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, double* %65, i64 %67
  store double %58, double* %68, align 8
  br label %69

69:                                               ; preds = %46
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %42, !llvm.loop !11

72:                                               ; preds = %42
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %37, !llvm.loop !12

76:                                               ; preds = %37
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %21, !llvm.loop !13

85:                                               ; preds = %21
  %86 = load i32*, i32** @device_m_array, align 8
  %87 = bitcast i32* %86 to i8*
  %88 = call i32 @hipFree(i8* noundef %87)
  %89 = load i32*, i32** @device_n_array, align 8
  %90 = bitcast i32* %89 to i8*
  %91 = call i32 @hipFree(i8* noundef %90)
  %92 = load float**, float*** @device_IMGVF_array, align 8
  %93 = bitcast float** %92 to i8*
  %94 = call i32 @hipFree(i8* noundef %93)
  %95 = load float**, float*** @device_I_array, align 8
  %96 = bitcast float** %95 to i8*
  %97 = call i32 @hipFree(i8* noundef %96)
  %98 = load float**, float*** @host_IMGVF_array, align 8
  %99 = getelementptr inbounds float*, float** %98, i64 0
  %100 = load float*, float** %99, align 8
  %101 = bitcast float* %100 to i8*
  %102 = call i32 @hipFree(i8* noundef %101)
  %103 = load float**, float*** @host_I_array, align 8
  %104 = getelementptr inbounds float*, float** %103, i64 0
  %105 = load float*, float** %104, align 8
  %106 = bitcast float* %105 to i8*
  %107 = call i32 @hipFree(i8* noundef %106)
  %108 = load i32*, i32** @host_m_array, align 8
  %109 = bitcast i32* %108 to i8*
  call void @free(i8* noundef %109) #10
  %110 = load i32*, i32** @host_n_array, align 8
  %111 = bitcast i32* %110 to i8*
  call void @free(i8* noundef %111) #10
  %112 = load float**, float*** @host_IMGVF_array, align 8
  %113 = bitcast float** %112 to i8*
  call void @free(i8* noundef %113) #10
  %114 = load float**, float*** @host_I_array, align 8
  %115 = bitcast float** %114 to i8*
  call void @free(i8* noundef %115) #10
  %116 = load float*, float** @host_I_all, align 8
  %117 = bitcast float* %116 to i8*
  call void @free(i8* noundef %117) #10
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #6

declare i32 @hipMalloc(i8** noundef, i64 noundef) #3

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #3

declare i32 @hipFree(i8* noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #7

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (float**, float**, i32*, i32*, float, float, float, i32, float)** @_Z12IMGVF_kernelPPfS0_PiS1_fffif to i8*), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind }
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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
