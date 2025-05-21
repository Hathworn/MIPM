; ModuleID = '3D.cu'
source_filename = "3D.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque

$_ZN4dim3C2Ejjj = comdat any

$_ZSt4sqrtf = comdat any

$__hip_gpubin_handle = comdat any

@_Z11hotspotOpt1PfS_S_fiiifffffff = constant void (float*, float*, float*, float, i32, i32, i32, float, float, float, float, float, float, float)* @_Z26__device_stub__hotspotOpt1PfS_S_fiiifffffff, align 8
@.str = private unnamed_addr constant [16 x i8] c"Time: %.3f (s)\0A\00", align 1
@t_chip = dso_local global float 0x3F40624DE0000000, align 4
@chip_height = dso_local global float 0x3F90624DE0000000, align 4
@chip_width = dso_local global float 0x3F90624DE0000000, align 4
@amb_temp = dso_local global float 8.000000e+01, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"The file was not opened\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Error reading file\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"not enough lines in file\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"invalid file format\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"The file was not opened\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%d\09%g\0A\00", align 1
@.str.11 = private unnamed_addr constant [81 x i8] c"Usage: %s <rows/cols> <layers> <iterations> <powerFile> <tempFile> <outputFile>\0A\00", align 1
@.str.12 = private unnamed_addr constant [68 x i8] c"\09<rows/cols>  - number of rows/cols in the grid (positive integer)\0A\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"\09<layers>  - number of layers in the grid (positive integer)\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"\09<iteration> - number of iterations\0A\00", align 1
@.str.15 = private unnamed_addr constant [83 x i8] c"\09<powerFile>  - name of the file containing the initial power values of each cell\0A\00", align 1
@.str.16 = private unnamed_addr constant [88 x i8] c"\09<tempFile>  - name of the file containing the initial temperature values of each cell\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"\09<outputFile - output file\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"\09<printAcc - print accuracy\0A\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"Accuracy: %e\0A\00", align 1
@0 = private unnamed_addr constant [33 x i8] c"_Z11hotspotOpt1PfS_S_fiiifffffff\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i64 @_Z8get_timev() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @gettimeofday(%struct.timeval* noundef %1, %struct.timezone* noundef null) #12
  %3 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = mul nsw i64 %4, 1000000
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %5, %7
  ret i64 %8
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* noundef, %struct.timezone* noundef) #1

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z26__device_stub__hotspotOpt1PfS_S_fiiifffffff(float* noundef %0, float* noundef %1, float* noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13) #2 {
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca %struct.dim3, align 8
  %30 = alloca %struct.dim3, align 8
  %31 = alloca i64, align 8
  %32 = alloca i8*, align 8
  %33 = alloca { i64, i32 }, align 8
  %34 = alloca { i64, i32 }, align 8
  store float* %0, float** %15, align 8
  store float* %1, float** %16, align 8
  store float* %2, float** %17, align 8
  store float %3, float* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store float %7, float* %22, align 4
  store float %8, float* %23, align 4
  store float %9, float* %24, align 4
  store float %10, float* %25, align 4
  store float %11, float* %26, align 4
  store float %12, float* %27, align 4
  store float %13, float* %28, align 4
  %35 = alloca i8*, i64 14, align 16
  %36 = bitcast float** %15 to i8*
  %37 = getelementptr i8*, i8** %35, i32 0
  store i8* %36, i8** %37, align 8
  %38 = bitcast float** %16 to i8*
  %39 = getelementptr i8*, i8** %35, i32 1
  store i8* %38, i8** %39, align 8
  %40 = bitcast float** %17 to i8*
  %41 = getelementptr i8*, i8** %35, i32 2
  store i8* %40, i8** %41, align 8
  %42 = bitcast float* %18 to i8*
  %43 = getelementptr i8*, i8** %35, i32 3
  store i8* %42, i8** %43, align 8
  %44 = bitcast i32* %19 to i8*
  %45 = getelementptr i8*, i8** %35, i32 4
  store i8* %44, i8** %45, align 8
  %46 = bitcast i32* %20 to i8*
  %47 = getelementptr i8*, i8** %35, i32 5
  store i8* %46, i8** %47, align 8
  %48 = bitcast i32* %21 to i8*
  %49 = getelementptr i8*, i8** %35, i32 6
  store i8* %48, i8** %49, align 8
  %50 = bitcast float* %22 to i8*
  %51 = getelementptr i8*, i8** %35, i32 7
  store i8* %50, i8** %51, align 8
  %52 = bitcast float* %23 to i8*
  %53 = getelementptr i8*, i8** %35, i32 8
  store i8* %52, i8** %53, align 8
  %54 = bitcast float* %24 to i8*
  %55 = getelementptr i8*, i8** %35, i32 9
  store i8* %54, i8** %55, align 8
  %56 = bitcast float* %25 to i8*
  %57 = getelementptr i8*, i8** %35, i32 10
  store i8* %56, i8** %57, align 8
  %58 = bitcast float* %26 to i8*
  %59 = getelementptr i8*, i8** %35, i32 11
  store i8* %58, i8** %59, align 8
  %60 = bitcast float* %27 to i8*
  %61 = getelementptr i8*, i8** %35, i32 12
  store i8* %60, i8** %61, align 8
  %62 = bitcast float* %28 to i8*
  %63 = getelementptr i8*, i8** %35, i32 13
  store i8* %62, i8** %63, align 8
  %64 = call i32 @__hipPopCallConfiguration(%struct.dim3* %29, %struct.dim3* %30, i64* %31, i8** %32)
  %65 = load i64, i64* %31, align 8
  %66 = load i8*, i8** %32, align 8
  %67 = bitcast { i64, i32 }* %33 to i8*
  %68 = bitcast %struct.dim3* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 12, i1 false)
  %69 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %33, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %33, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = bitcast { i64, i32 }* %34 to i8*
  %74 = bitcast %struct.dim3* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 12, i1 false)
  %75 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %34, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %34, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = bitcast i8* %66 to %struct.ihipStream_t*
  %80 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (float*, float*, float*, float, i32, i32, i32, float, float, float, float, float, float, float)** @_Z11hotspotOpt1PfS_S_fiiifffffff to i8*), i64 %70, i32 %72, i64 %76, i32 %78, i8** noundef %35, i64 noundef %65, %struct.ihipStream_t* noundef %79)
  br label %81

81:                                               ; preds = %14
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z12hotspot_opt1PfS_S_iiifffffi(float* noundef %0, float* noundef %1, float* noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, i32 noundef %11) #4 {
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca i64, align 8
  %34 = alloca float*, align 8
  %35 = alloca float*, align 8
  %36 = alloca float*, align 8
  %37 = alloca %struct.dim3, align 4
  %38 = alloca %struct.dim3, align 4
  %39 = alloca i64, align 8
  %40 = alloca i32, align 4
  %41 = alloca %struct.dim3, align 4
  %42 = alloca %struct.dim3, align 4
  %43 = alloca { i64, i32 }, align 4
  %44 = alloca { i64, i32 }, align 4
  %45 = alloca float*, align 8
  %46 = alloca i64, align 8
  %47 = alloca float, align 4
  store float* %0, float** %13, align 8
  store float* %1, float** %14, align 8
  store float* %2, float** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store float %6, float* %19, align 4
  store float %7, float* %20, align 4
  store float %8, float* %21, align 4
  store float %9, float* %22, align 4
  store float %10, float* %23, align 4
  store i32 %11, i32* %24, align 4
  %48 = load float, float* %23, align 4
  %49 = load float, float* %19, align 4
  %50 = fdiv contract float %48, %49
  store float %50, float* %32, align 4
  %51 = load float, float* %32, align 4
  %52 = load float, float* %20, align 4
  %53 = fdiv contract float %51, %52
  store float %53, float* %26, align 4
  store float %53, float* %25, align 4
  %54 = load float, float* %32, align 4
  %55 = load float, float* %21, align 4
  %56 = fdiv contract float %54, %55
  store float %56, float* %28, align 4
  store float %56, float* %27, align 4
  %57 = load float, float* %32, align 4
  %58 = load float, float* %22, align 4
  %59 = fdiv contract float %57, %58
  store float %59, float* %30, align 4
  store float %59, float* %29, align 4
  %60 = load float, float* %25, align 4
  %61 = fpext float %60 to double
  %62 = fmul contract double 2.000000e+00, %61
  %63 = load float, float* %27, align 4
  %64 = fpext float %63 to double
  %65 = fmul contract double 2.000000e+00, %64
  %66 = fadd contract double %62, %65
  %67 = load float, float* %29, align 4
  %68 = fpext float %67 to double
  %69 = fmul contract double 3.000000e+00, %68
  %70 = fadd contract double %66, %69
  %71 = fsub contract double 1.000000e+00, %70
  %72 = fptrunc double %71 to float
  store float %72, float* %31, align 4
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 4, %74
  %76 = load i32, i32* %17, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %75, %77
  %79 = load i32, i32* %18, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %78, %80
  store i64 %81, i64* %33, align 8
  %82 = bitcast float** %36 to i8**
  %83 = load i64, i64* %33, align 8
  %84 = call i32 @hipMalloc(i8** noundef %82, i64 noundef %83)
  %85 = bitcast float** %34 to i8**
  %86 = load i64, i64* %33, align 8
  %87 = call i32 @hipMalloc(i8** noundef %85, i64 noundef %86)
  %88 = bitcast float** %35 to i8**
  %89 = load i64, i64* %33, align 8
  %90 = call i32 @hipMalloc(i8** noundef %88, i64 noundef %89)
  %91 = load float*, float** %34, align 8
  %92 = bitcast float* %91 to i8*
  %93 = load float*, float** %14, align 8
  %94 = bitcast float* %93 to i8*
  %95 = load i64, i64* %33, align 8
  %96 = call i32 @hipMemcpy(i8* noundef %92, i8* noundef %94, i64 noundef %95, i32 noundef 1)
  %97 = load float*, float** %36, align 8
  %98 = bitcast float* %97 to i8*
  %99 = load float*, float** %13, align 8
  %100 = bitcast float* %99 to i8*
  %101 = load i64, i64* %33, align 8
  %102 = call i32 @hipMemcpy(i8* noundef %98, i8* noundef %100, i64 noundef %101, i32 noundef 1)
  %103 = call i32 @hipFuncSetCacheConfig(i8* noundef bitcast (void (float*, float*, float*, float, i32, i32, i32, float, float, float, float, float, float, float)** @_Z11hotspotOpt1PfS_S_fiiifffffff to i8*), i32 noundef 2)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %37, i32 noundef 64, i32 noundef 4, i32 noundef 1)
  %104 = load i32, i32* %16, align 4
  %105 = sdiv i32 %104, 64
  %106 = load i32, i32* %17, align 4
  %107 = sdiv i32 %106, 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %38, i32 noundef %105, i32 noundef %107, i32 noundef 1)
  %108 = call noundef i64 @_Z8get_timev()
  store i64 %108, i64* %39, align 8
  store i32 0, i32* %40, align 4
  br label %109

109:                                              ; preds = %151, %12
  %110 = load i32, i32* %40, align 4
  %111 = load i32, i32* %24, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %154

113:                                              ; preds = %109
  %114 = bitcast %struct.dim3* %41 to i8*
  %115 = bitcast %struct.dim3* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %114, i8* align 4 %115, i64 12, i1 false)
  %116 = bitcast %struct.dim3* %42 to i8*
  %117 = bitcast %struct.dim3* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %116, i8* align 4 %117, i64 12, i1 false)
  %118 = bitcast { i64, i32 }* %43 to i8*
  %119 = bitcast %struct.dim3* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 4 %119, i64 12, i1 false)
  %120 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %43, i32 0, i32 0
  %121 = load i64, i64* %120, align 4
  %122 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %43, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = bitcast { i64, i32 }* %44 to i8*
  %125 = bitcast %struct.dim3* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %124, i8* align 4 %125, i64 12, i1 false)
  %126 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %44, i32 0, i32 0
  %127 = load i64, i64* %126, align 4
  %128 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %44, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @__hipPushCallConfiguration(i64 %121, i32 %123, i64 %127, i32 %129, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %147, label %132

132:                                              ; preds = %113
  %133 = load float*, float** %36, align 8
  %134 = load float*, float** %34, align 8
  %135 = load float*, float** %35, align 8
  %136 = load float, float* %32, align 4
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %17, align 4
  %139 = load i32, i32* %18, align 4
  %140 = load float, float* %25, align 4
  %141 = load float, float* %26, align 4
  %142 = load float, float* %27, align 4
  %143 = load float, float* %28, align 4
  %144 = load float, float* %29, align 4
  %145 = load float, float* %30, align 4
  %146 = load float, float* %31, align 4
  call void @_Z26__device_stub__hotspotOpt1PfS_S_fiiifffffff(float* noundef %133, float* noundef %134, float* noundef %135, float noundef %136, i32 noundef %137, i32 noundef %138, i32 noundef %139, float noundef %140, float noundef %141, float noundef %142, float noundef %143, float noundef %144, float noundef %145, float noundef %146)
  br label %147

147:                                              ; preds = %132, %113
  %148 = load float*, float** %34, align 8
  store float* %148, float** %45, align 8
  %149 = load float*, float** %35, align 8
  store float* %149, float** %34, align 8
  %150 = load float*, float** %45, align 8
  store float* %150, float** %35, align 8
  br label %151

151:                                              ; preds = %147
  %152 = load i32, i32* %40, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %40, align 4
  br label %109, !llvm.loop !6

154:                                              ; preds = %109
  %155 = call i32 @hipDeviceSynchronize()
  %156 = call noundef i64 @_Z8get_timev()
  store i64 %156, i64* %46, align 8
  %157 = load i64, i64* %46, align 8
  %158 = load i64, i64* %39, align 8
  %159 = sub nsw i64 %157, %158
  %160 = sitofp i64 %159 to double
  %161 = fdiv contract double %160, 1.000000e+06
  %162 = fptrunc double %161 to float
  store float %162, float* %47, align 4
  %163 = load float, float* %47, align 4
  %164 = fpext float %163 to double
  %165 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), double noundef %164)
  %166 = load float*, float** %15, align 8
  %167 = bitcast float* %166 to i8*
  %168 = load float*, float** %35, align 8
  %169 = bitcast float* %168 to i8*
  %170 = load i64, i64* %33, align 8
  %171 = call i32 @hipMemcpy(i8* noundef %167, i8* noundef %169, i64 noundef %170, i32 noundef 2)
  %172 = load float*, float** %36, align 8
  %173 = bitcast float* %172 to i8*
  %174 = call i32 @hipFree(i8* noundef %173)
  %175 = load float*, float** %34, align 8
  %176 = bitcast float* %175 to i8*
  %177 = call i32 @hipFree(i8* noundef %176)
  %178 = load float*, float** %35, align 8
  %179 = bitcast float* %178 to i8*
  %180 = call i32 @hipFree(i8* noundef %179)
  ret void
}

declare i32 @hipMalloc(i8** noundef, i64 noundef) #5

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #5

declare i32 @hipFuncSetCacheConfig(i8* noundef, i32 noundef) #5

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

declare i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) #5

declare i32 @hipDeviceSynchronize() #5

declare i32 @printf(i8* noundef, ...) #5

declare i32 @hipFree(i8* noundef) #5

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z5fatalPKc(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* noundef %4)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #5

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z9readinputPfiiiPc(float* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8* noundef %4) #4 {
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct._IO_FILE*, align 8
  %15 = alloca [256 x i8], align 16
  %16 = alloca float, align 4
  store float* %0, float** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = call %struct._IO_FILE* @fopen(i8* noundef %17, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %18, %struct._IO_FILE** %14, align 8
  %19 = icmp eq %struct._IO_FILE* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  call void @_Z5fatalPKc(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %21

21:                                               ; preds = %20, %5
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %79, %21
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, 1
  %26 = icmp sle i32 %23, %25
  br i1 %26, label %27, label %82

27:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %75, %27
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %30, 1
  %32 = icmp sle i32 %29, %31
  br i1 %32, label %33, label %78

33:                                               ; preds = %28
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %71, %33
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %36, 1
  %38 = icmp sle i32 %35, %37
  br i1 %38, label %39, label %74

39:                                               ; preds = %34
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %42 = call i8* @fgets(i8* noundef %40, i32 noundef 256, %struct._IO_FILE* noundef %41)
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  call void @_Z5fatalPKc(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %45

45:                                               ; preds = %44, %39
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %47 = call i32 @feof(%struct._IO_FILE* noundef %46) #12
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  call void @_Z5fatalPKc(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %52 = call i32 (i8*, i8*, ...) @sscanf(i8* noundef %51, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), float* noundef %16) #12
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  call void @_Z5fatalPKc(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %55

55:                                               ; preds = %54, %50
  %56 = load float, float* %16, align 4
  %57 = load float*, float** %6, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %8, align 4
  %60 = mul nsw i32 %58, %59
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %7, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32, i32* %8, align 4
  %67 = mul nsw i32 %65, %66
  %68 = add nsw i32 %62, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %57, i64 %69
  store float %56, float* %70, align 4
  br label %71

71:                                               ; preds = %55
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %13, align 4
  br label %34, !llvm.loop !8

74:                                               ; preds = %34
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %28, !llvm.loop !9

78:                                               ; preds = %28
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %22, !llvm.loop !10

82:                                               ; preds = %22
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %84 = call i32 @fclose(%struct._IO_FILE* noundef %83)
  ret void
}

declare %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #5

declare i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #5

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare i32 @sscanf(i8* noundef, i8* noundef, ...) #1

declare i32 @fclose(%struct._IO_FILE* noundef) #5

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z11writeoutputPfiiiPc(float* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8* noundef %4) #4 {
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct._IO_FILE*, align 8
  %16 = alloca [256 x i8], align 16
  store float* %0, float** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %14, align 4
  %17 = load i8*, i8** %10, align 8
  %18 = call %struct._IO_FILE* @fopen(i8* noundef %17, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store %struct._IO_FILE* %18, %struct._IO_FILE** %15, align 8
  %19 = icmp eq %struct._IO_FILE* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %5
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %70, %22
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %73

27:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %66, %27
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %28
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %62, %32
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %33
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %39 = load i32, i32* %14, align 4
  %40 = load float*, float** %6, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %8, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = mul nsw i32 %48, %49
  %51 = add nsw i32 %45, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %40, i64 %52
  %54 = load float, float* %53, align 4
  %55 = fpext float %54 to double
  %56 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %38, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 noundef %39, double noundef %55) #12
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %59 = call i32 @fputs(i8* noundef %57, %struct._IO_FILE* noundef %58)
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %37
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %33, !llvm.loop !11

65:                                               ; preds = %33
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %28, !llvm.loop !12

69:                                               ; preds = %28
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %23, !llvm.loop !13

73:                                               ; preds = %23
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %75 = call i32 @fclose(%struct._IO_FILE* noundef %74)
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #5

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z14computeTempCPUPfS_S_iiifffffi(float* noundef %0, float* noundef %1, float* noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, i32 noundef %11) #0 {
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca float*, align 8
  store float* %0, float** %13, align 8
  store float* %1, float** %14, align 8
  store float* %2, float** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store float %6, float* %19, align 4
  store float %7, float* %20, align 4
  store float %8, float* %21, align 4
  store float %9, float* %22, align 4
  store float %10, float* %23, align 4
  store i32 %11, i32* %24, align 4
  %45 = load float, float* %23, align 4
  %46 = load float, float* %19, align 4
  %47 = fdiv contract float %45, %46
  store float %47, float* %32, align 4
  %48 = load float, float* %32, align 4
  %49 = load float, float* %20, align 4
  %50 = fdiv contract float %48, %49
  store float %50, float* %26, align 4
  store float %50, float* %25, align 4
  %51 = load float, float* %32, align 4
  %52 = load float, float* %21, align 4
  %53 = fdiv contract float %51, %52
  store float %53, float* %28, align 4
  store float %53, float* %27, align 4
  %54 = load float, float* %32, align 4
  %55 = load float, float* %22, align 4
  %56 = fdiv contract float %54, %55
  store float %56, float* %30, align 4
  store float %56, float* %29, align 4
  %57 = load float, float* %25, align 4
  %58 = fpext float %57 to double
  %59 = fmul contract double 2.000000e+00, %58
  %60 = load float, float* %27, align 4
  %61 = fpext float %60 to double
  %62 = fmul contract double 2.000000e+00, %61
  %63 = fadd contract double %59, %62
  %64 = load float, float* %29, align 4
  %65 = fpext float %64 to double
  %66 = fmul contract double 3.000000e+00, %65
  %67 = fadd contract double %63, %66
  %68 = fsub contract double 1.000000e+00, %67
  %69 = fptrunc double %68 to float
  store float %69, float* %31, align 4
  store i32 0, i32* %43, align 4
  br label %70

70:                                               ; preds = %255, %12
  store i32 0, i32* %42, align 4
  br label %71

71:                                               ; preds = %246, %70
  %72 = load i32, i32* %42, align 4
  %73 = load i32, i32* %18, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %249

75:                                               ; preds = %71
  store i32 0, i32* %41, align 4
  br label %76

76:                                               ; preds = %242, %75
  %77 = load i32, i32* %41, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %245

80:                                               ; preds = %76
  store i32 0, i32* %40, align 4
  br label %81

81:                                               ; preds = %238, %80
  %82 = load i32, i32* %40, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %241

85:                                               ; preds = %81
  %86 = load i32, i32* %40, align 4
  %87 = load i32, i32* %41, align 4
  %88 = load i32, i32* %16, align 4
  %89 = mul nsw i32 %87, %88
  %90 = add nsw i32 %86, %89
  %91 = load i32, i32* %42, align 4
  %92 = load i32, i32* %16, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32, i32* %17, align 4
  %95 = mul nsw i32 %93, %94
  %96 = add nsw i32 %90, %95
  store i32 %96, i32* %33, align 4
  %97 = load i32, i32* %40, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %85
  %100 = load i32, i32* %33, align 4
  br label %104

101:                                              ; preds = %85
  %102 = load i32, i32* %33, align 4
  %103 = sub nsw i32 %102, 1
  br label %104

104:                                              ; preds = %101, %99
  %105 = phi i32 [ %100, %99 ], [ %103, %101 ]
  store i32 %105, i32* %34, align 4
  %106 = load i32, i32* %40, align 4
  %107 = load i32, i32* %16, align 4
  %108 = sub nsw i32 %107, 1
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* %33, align 4
  br label %115

112:                                              ; preds = %104
  %113 = load i32, i32* %33, align 4
  %114 = add nsw i32 %113, 1
  br label %115

115:                                              ; preds = %112, %110
  %116 = phi i32 [ %111, %110 ], [ %114, %112 ]
  store i32 %116, i32* %35, align 4
  %117 = load i32, i32* %41, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i32, i32* %33, align 4
  br label %125

121:                                              ; preds = %115
  %122 = load i32, i32* %33, align 4
  %123 = load i32, i32* %16, align 4
  %124 = sub nsw i32 %122, %123
  br label %125

125:                                              ; preds = %121, %119
  %126 = phi i32 [ %120, %119 ], [ %124, %121 ]
  store i32 %126, i32* %36, align 4
  %127 = load i32, i32* %41, align 4
  %128 = load i32, i32* %17, align 4
  %129 = sub nsw i32 %128, 1
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = load i32, i32* %33, align 4
  br label %137

133:                                              ; preds = %125
  %134 = load i32, i32* %33, align 4
  %135 = load i32, i32* %16, align 4
  %136 = add nsw i32 %134, %135
  br label %137

137:                                              ; preds = %133, %131
  %138 = phi i32 [ %132, %131 ], [ %136, %133 ]
  store i32 %138, i32* %37, align 4
  %139 = load i32, i32* %42, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = load i32, i32* %33, align 4
  br label %149

143:                                              ; preds = %137
  %144 = load i32, i32* %33, align 4
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %17, align 4
  %147 = mul nsw i32 %145, %146
  %148 = sub nsw i32 %144, %147
  br label %149

149:                                              ; preds = %143, %141
  %150 = phi i32 [ %142, %141 ], [ %148, %143 ]
  store i32 %150, i32* %38, align 4
  %151 = load i32, i32* %42, align 4
  %152 = load i32, i32* %18, align 4
  %153 = sub nsw i32 %152, 1
  %154 = icmp eq i32 %151, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = load i32, i32* %33, align 4
  br label %163

157:                                              ; preds = %149
  %158 = load i32, i32* %33, align 4
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* %17, align 4
  %161 = mul nsw i32 %159, %160
  %162 = add nsw i32 %158, %161
  br label %163

163:                                              ; preds = %157, %155
  %164 = phi i32 [ %156, %155 ], [ %162, %157 ]
  store i32 %164, i32* %39, align 4
  %165 = load float*, float** %14, align 8
  %166 = load i32, i32* %33, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float, float* %165, i64 %167
  %169 = load float, float* %168, align 4
  %170 = load float, float* %31, align 4
  %171 = fmul contract float %169, %170
  %172 = load float*, float** %14, align 8
  %173 = load i32, i32* %36, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float, float* %172, i64 %174
  %176 = load float, float* %175, align 4
  %177 = load float, float* %27, align 4
  %178 = fmul contract float %176, %177
  %179 = fadd contract float %171, %178
  %180 = load float*, float** %14, align 8
  %181 = load i32, i32* %37, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, float* %180, i64 %182
  %184 = load float, float* %183, align 4
  %185 = load float, float* %28, align 4
  %186 = fmul contract float %184, %185
  %187 = fadd contract float %179, %186
  %188 = load float*, float** %14, align 8
  %189 = load i32, i32* %35, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds float, float* %188, i64 %190
  %192 = load float, float* %191, align 4
  %193 = load float, float* %25, align 4
  %194 = fmul contract float %192, %193
  %195 = fadd contract float %187, %194
  %196 = load float*, float** %14, align 8
  %197 = load i32, i32* %34, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %196, i64 %198
  %200 = load float, float* %199, align 4
  %201 = load float, float* %26, align 4
  %202 = fmul contract float %200, %201
  %203 = fadd contract float %195, %202
  %204 = load float*, float** %14, align 8
  %205 = load i32, i32* %39, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds float, float* %204, i64 %206
  %208 = load float, float* %207, align 4
  %209 = load float, float* %29, align 4
  %210 = fmul contract float %208, %209
  %211 = fadd contract float %203, %210
  %212 = load float*, float** %14, align 8
  %213 = load i32, i32* %38, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %212, i64 %214
  %216 = load float, float* %215, align 4
  %217 = load float, float* %30, align 4
  %218 = fmul contract float %216, %217
  %219 = fadd contract float %211, %218
  %220 = load float, float* %23, align 4
  %221 = load float, float* %19, align 4
  %222 = fdiv contract float %220, %221
  %223 = load float*, float** %13, align 8
  %224 = load i32, i32* %33, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds float, float* %223, i64 %225
  %227 = load float, float* %226, align 4
  %228 = fmul contract float %222, %227
  %229 = fadd contract float %219, %228
  %230 = load float, float* %29, align 4
  %231 = load float, float* @amb_temp, align 4
  %232 = fmul contract float %230, %231
  %233 = fadd contract float %229, %232
  %234 = load float*, float** %15, align 8
  %235 = load i32, i32* %33, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds float, float* %234, i64 %236
  store float %233, float* %237, align 4
  br label %238

238:                                              ; preds = %163
  %239 = load i32, i32* %40, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %40, align 4
  br label %81, !llvm.loop !14

241:                                              ; preds = %81
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %41, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %41, align 4
  br label %76, !llvm.loop !15

245:                                              ; preds = %76
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %42, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %42, align 4
  br label %71, !llvm.loop !16

249:                                              ; preds = %71
  %250 = load float*, float** %14, align 8
  store float* %250, float** %44, align 8
  %251 = load float*, float** %15, align 8
  store float* %251, float** %14, align 8
  %252 = load float*, float** %44, align 8
  store float* %252, float** %15, align 8
  %253 = load i32, i32* %43, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %43, align 4
  br label %255

255:                                              ; preds = %249
  %256 = load i32, i32* %43, align 4
  %257 = load i32, i32* %24, align 4
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %70, label %259, !llvm.loop !17

259:                                              ; preds = %255
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef float @_Z8accuracyPfS_i(float* noundef %0, float* noundef %1, i32 noundef %2) #4 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store i32 %2, i32* %6, align 4
  store float 0.000000e+00, float* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %39, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %9
  %14 = load float*, float** %4, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds float, float* %14, i64 %16
  %18 = load float, float* %17, align 4
  %19 = load float*, float** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %19, i64 %21
  %23 = load float, float* %22, align 4
  %24 = fsub contract float %18, %23
  %25 = load float*, float** %4, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  %29 = load float, float* %28, align 4
  %30 = load float*, float** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %30, i64 %32
  %34 = load float, float* %33, align 4
  %35 = fsub contract float %29, %34
  %36 = fmul contract float %24, %35
  %37 = load float, float* %7, align 4
  %38 = fadd contract float %37, %36
  store float %38, float* %7, align 4
  br label %39

39:                                               ; preds = %13
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %9, !llvm.loop !18

42:                                               ; preds = %9
  %43 = load float, float* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sitofp i32 %44 to float
  %46 = fdiv contract float %43, %45
  %47 = call contract noundef float @_ZSt4sqrtf(float noundef %46)
  ret float %47
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_ZSt4sqrtf(float noundef %0) #0 comdat {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = call contract float @sqrtf(float noundef %3) #12
  ret float %4
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z5usageiPPc(i32 noundef %0, i8** noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8**, i8*** %4, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.11, i64 0, i64 0), i8* noundef %8)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.12, i64 0, i64 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i64 0, i64 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.15, i64 0, i64 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.16, i64 0, i64 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0))
  call void @exit(i32 noundef 1) #13
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #7

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1) #8 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca i32, align 4
  %28 = alloca float*, align 8
  %29 = alloca float, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 8
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  %34 = load i8**, i8*** %5, align 8
  call void @_Z5usageiPPc(i32 noundef %33, i8** noundef %34)
  br label %35

35:                                               ; preds = %32, %2
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 3
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @atoi(i8* noundef %38) #14
  store i32 %39, i32* %9, align 4
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 4
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %6, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 5
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %7, align 8
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 6
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %8, align 8
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @atoi(i8* noundef %51) #14
  store i32 %52, i32* %10, align 4
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @atoi(i8* noundef %55) #14
  store i32 %56, i32* %11, align 4
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 2
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @atoi(i8* noundef %59) #14
  store i32 %60, i32* %12, align 4
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 7
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @atoi(i8* noundef %63) #14
  store i32 %64, i32* %13, align 4
  %65 = load float, float* @chip_height, align 4
  %66 = load i32, i32* %11, align 4
  %67 = sitofp i32 %66 to float
  %68 = fdiv contract float %65, %67
  store float %68, float* %14, align 4
  %69 = load float, float* @chip_width, align 4
  %70 = load i32, i32* %10, align 4
  %71 = sitofp i32 %70 to float
  %72 = fdiv contract float %69, %71
  store float %72, float* %15, align 4
  %73 = load float, float* @t_chip, align 4
  %74 = load i32, i32* %12, align 4
  %75 = sitofp i32 %74 to float
  %76 = fdiv contract float %73, %75
  store float %76, float* %16, align 4
  %77 = load float, float* @t_chip, align 4
  %78 = fpext float %77 to double
  %79 = fmul contract double 8.750000e+05, %78
  %80 = load float, float* %14, align 4
  %81 = fpext float %80 to double
  %82 = fmul contract double %79, %81
  %83 = load float, float* %15, align 4
  %84 = fpext float %83 to double
  %85 = fmul contract double %82, %84
  %86 = fptrunc double %85 to float
  store float %86, float* %17, align 4
  %87 = load float, float* %15, align 4
  %88 = fpext float %87 to double
  %89 = load float, float* @t_chip, align 4
  %90 = fpext float %89 to double
  %91 = fmul contract double 2.000000e+02, %90
  %92 = load float, float* %14, align 4
  %93 = fpext float %92 to double
  %94 = fmul contract double %91, %93
  %95 = fdiv contract double %88, %94
  %96 = fptrunc double %95 to float
  store float %96, float* %18, align 4
  %97 = load float, float* %14, align 4
  %98 = fpext float %97 to double
  %99 = load float, float* @t_chip, align 4
  %100 = fpext float %99 to double
  %101 = fmul contract double 2.000000e+02, %100
  %102 = load float, float* %15, align 4
  %103 = fpext float %102 to double
  %104 = fmul contract double %101, %103
  %105 = fdiv contract double %98, %104
  %106 = fptrunc double %105 to float
  store float %106, float* %19, align 4
  %107 = load float, float* %16, align 4
  %108 = load float, float* %14, align 4
  %109 = fmul contract float 1.000000e+02, %108
  %110 = load float, float* %15, align 4
  %111 = fmul contract float %109, %110
  %112 = fdiv contract float %107, %111
  store float %112, float* %20, align 4
  %113 = load float, float* @t_chip, align 4
  %114 = fpext float %113 to double
  %115 = fmul contract double 5.000000e-01, %114
  %116 = fmul contract double %115, 1.750000e+06
  %117 = fdiv contract double 3.000000e+06, %116
  %118 = fptrunc double %117 to float
  store float %118, float* %21, align 4
  %119 = load float, float* %21, align 4
  %120 = fpext float %119 to double
  %121 = fdiv contract double 1.000000e-03, %120
  %122 = fptrunc double %121 to float
  store float %122, float* %22, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %11, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load i32, i32* %12, align 4
  %127 = mul nsw i32 %125, %126
  store i32 %127, i32* %27, align 4
  %128 = load i32, i32* %27, align 4
  %129 = sext i32 %128 to i64
  %130 = call noalias i8* @calloc(i64 noundef %129, i64 noundef 4) #15
  %131 = bitcast i8* %130 to float*
  store float* %131, float** %23, align 8
  %132 = load i32, i32* %27, align 4
  %133 = sext i32 %132 to i64
  %134 = mul i64 %133, 4
  %135 = call noalias i8* @malloc(i64 noundef %134) #16
  %136 = bitcast i8* %135 to float*
  store float* %136, float** %26, align 8
  %137 = load i32, i32* %27, align 4
  %138 = sext i32 %137 to i64
  %139 = call noalias i8* @calloc(i64 noundef %138, i64 noundef 4) #15
  %140 = bitcast i8* %139 to float*
  store float* %140, float** %25, align 8
  %141 = load i32, i32* %27, align 4
  %142 = sext i32 %141 to i64
  %143 = call noalias i8* @calloc(i64 noundef %142, i64 noundef 4) #15
  %144 = bitcast i8* %143 to float*
  store float* %144, float** %24, align 8
  %145 = load i32, i32* %27, align 4
  %146 = sext i32 %145 to i64
  %147 = call noalias i8* @calloc(i64 noundef %146, i64 noundef 4) #15
  %148 = bitcast i8* %147 to float*
  store float* %148, float** %28, align 8
  %149 = load float*, float** %23, align 8
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %12, align 4
  %153 = load i8*, i8** %6, align 8
  call void @_Z9readinputPfiiiPc(float* noundef %149, i32 noundef %150, i32 noundef %151, i32 noundef %152, i8* noundef %153)
  %154 = load float*, float** %25, align 8
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load i8*, i8** %7, align 8
  call void @_Z9readinputPfiiiPc(float* noundef %154, i32 noundef %155, i32 noundef %156, i32 noundef %157, i8* noundef %158)
  %159 = load float*, float** %26, align 8
  %160 = bitcast float* %159 to i8*
  %161 = load float*, float** %25, align 8
  %162 = bitcast float* %161 to i8*
  %163 = load i32, i32* %27, align 4
  %164 = sext i32 %163 to i64
  %165 = mul i64 %164, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %160, i8* align 4 %162, i64 %165, i1 false)
  %166 = load float*, float** %23, align 8
  %167 = load float*, float** %25, align 8
  %168 = load float*, float** %24, align 8
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %12, align 4
  %172 = load float, float* %17, align 4
  %173 = load float, float* %18, align 4
  %174 = load float, float* %19, align 4
  %175 = load float, float* %20, align 4
  %176 = load float, float* %22, align 4
  %177 = load i32, i32* %9, align 4
  call void @_Z12hotspot_opt1PfS_S_iiifffffi(float* noundef %166, float* noundef %167, float* noundef %168, i32 noundef %169, i32 noundef %170, i32 noundef %171, float noundef %172, float noundef %173, float noundef %174, float noundef %175, float noundef %176, i32 noundef %177)
  %178 = load i32, i32* %13, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %209

180:                                              ; preds = %35
  %181 = load float*, float** %23, align 8
  %182 = load float*, float** %26, align 8
  %183 = load float*, float** %28, align 8
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* %12, align 4
  %187 = load float, float* %17, align 4
  %188 = load float, float* %18, align 4
  %189 = load float, float* %19, align 4
  %190 = load float, float* %20, align 4
  %191 = load float, float* %22, align 4
  %192 = load i32, i32* %9, align 4
  call void @_Z14computeTempCPUPfS_S_iiifffffi(float* noundef %181, float* noundef %182, float* noundef %183, i32 noundef %184, i32 noundef %185, i32 noundef %186, float noundef %187, float noundef %188, float noundef %189, float noundef %190, float noundef %191, i32 noundef %192)
  %193 = load float*, float** %24, align 8
  %194 = load float*, float** %28, align 8
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* %10, align 4
  %197 = mul nsw i32 %195, %196
  %198 = load i32, i32* %12, align 4
  %199 = mul nsw i32 %197, %198
  %200 = call contract noundef float @_Z8accuracyPfS_i(float* noundef %193, float* noundef %194, i32 noundef %199)
  store float %200, float* %29, align 4
  %201 = load float, float* %29, align 4
  %202 = fpext float %201 to double
  %203 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), double noundef %202)
  %204 = load float*, float** %24, align 8
  %205 = load i32, i32* %11, align 4
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* %12, align 4
  %208 = load i8*, i8** %8, align 8
  call void @_Z11writeoutputPfiiiPc(float* noundef %204, i32 noundef %205, i32 noundef %206, i32 noundef %207, i8* noundef %208)
  br label %209

209:                                              ; preds = %180, %35
  %210 = load float*, float** %25, align 8
  %211 = bitcast float* %210 to i8*
  call void @free(i8* noundef %211) #12
  %212 = load float*, float** %24, align 8
  %213 = bitcast float* %212 to i8*
  call void @free(i8* noundef %213) #12
  %214 = load float*, float** %23, align 8
  %215 = bitcast float* %214 to i8*
  call void @free(i8* noundef %215) #12
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #9

; Function Attrs: nounwind allocsize(0,1)
declare noalias i8* @calloc(i64 noundef, i64 noundef) #10

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #11

; Function Attrs: nounwind
declare void @free(i8* noundef) #1

; Function Attrs: nounwind
declare float @sqrtf(float noundef) #1

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (float*, float*, float*, float, i32, i32, i32, float, float, float, float, float, float, float)** @_Z11hotspotOpt1PfS_S_fiiifffffff to i8*), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nocallback nofree nounwind willreturn }
attributes #4 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { nounwind allocsize(0) }

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
!18 = distinct !{!18, !7}
