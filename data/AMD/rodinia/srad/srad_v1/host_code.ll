; ModuleID = 'main.cu'
source_filename = "main.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.hipDeviceProp_t = type { [256 x i8], i64, i64, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.hipDeviceArch_t, i32, i32, i32, i32, i64, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32*, i32*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hipDeviceArch_t = type { i32 }

$_ZN4dim3C2Ejjj = comdat any

$__hip_gpubin_handle = comdat any

@_Z7extractlPf = constant void (i64, float*)* @_Z22__device_stub__extractlPf, align 8
@_Z7preparelPfS_S_ = constant void (i64, float*, float*, float*)* @_Z22__device_stub__preparelPfS_S_, align 8
@_Z6reduceliiPfS_ = constant void (i64, i32, i32, float*, float*)* @_Z21__device_stub__reduceliiPfS_, align 8
@_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0_ = constant void (float, i32, i32, i64, i32*, i32*, i32*, i32*, float*, float*, float*, float*, float, float*, float*)* @_Z19__device_stub__sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0_, align 8
@_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0_ = constant void (float, i32, i32, i64, i32*, i32*, i32*, i32*, float*, float*, float*, float*, float*, float*)* @_Z20__device_stub__srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0_, align 8
@_Z8compresslPf = constant void (i64, float*)* @_Z23__device_stub__compresslPf, align 8
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"The file was not created/opened for writing\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"P2\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"The file was not opened for reading\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Cuda error: %s: %s.\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"ERROR: wrong number of arguments\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"setup\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"extract\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"prepare\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"before reduce\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"reduce\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"after reduce\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"before copy sum\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"copy sum\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"srad\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"srad2\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"copy back\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"image_out.pgm\00", align 1
@.str.25 = private unnamed_addr constant [52 x i8] c"Time spent in different stages of the application:\0A\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"%15.12f s, %15.12f % : SETUP VARIABLES\0A\00", align 1
@.str.27 = private unnamed_addr constant [53 x i8] c"%15.12f s, %15.12f % : READ COMMAND LINE PARAMETERS\0A\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"%15.12f s, %15.12f % : READ IMAGE FROM FILE\0A\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"%15.12f s, %15.12f % : RESIZE IMAGE\0A\00", align 1
@.str.30 = private unnamed_addr constant [74 x i8] c"%15.12f s, %15.12f % : GPU DRIVER INIT, CPU/GPU SETUP, MEMORY ALLOCATION\0A\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"%15.12f s, %15.12f % : COPY DATA TO CPU->GPU\0A\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"%15.12f s, %15.12f % : EXTRACT IMAGE\0A\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"%15.12f s, %15.12f % : COMPUTE\0A\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"%15.12f s, %15.12f % : COMPRESS IMAGE\0A\00", align 1
@.str.35 = private unnamed_addr constant [46 x i8] c"%15.12f s, %15.12f % : COPY DATA TO GPU->CPU\0A\00", align 1
@.str.36 = private unnamed_addr constant [45 x i8] c"%15.12f s, %15.12f % : SAVE IMAGE INTO FILE\0A\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"%15.12f s, %15.12f % : FREE MEMORY\0A\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"Total time:\0A\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"%.12f s\0A\00", align 1
@0 = private unnamed_addr constant [14 x i8] c"_Z7extractlPf\00", align 1
@1 = private unnamed_addr constant [18 x i8] c"_Z7preparelPfS_S_\00", align 1
@2 = private unnamed_addr constant [17 x i8] c"_Z6reduceliiPfS_\00", align 1
@3 = private unnamed_addr constant [38 x i8] c"_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0_\00", align 1
@4 = private unnamed_addr constant [38 x i8] c"_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0_\00", align 1
@5 = private unnamed_addr constant [15 x i8] c"_Z8compresslPf\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z22__device_stub__extractlPf(i64 noundef %0, float* noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca float*, align 8
  %5 = alloca %struct.dim3, align 8
  %6 = alloca %struct.dim3, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca { i64, i32 }, align 8
  %10 = alloca { i64, i32 }, align 8
  store i64 %0, i64* %3, align 8
  store float* %1, float** %4, align 8
  %11 = alloca i8*, i64 2, align 16
  %12 = bitcast i64* %3 to i8*
  %13 = getelementptr i8*, i8** %11, i32 0
  store i8* %12, i8** %13, align 8
  %14 = bitcast float** %4 to i8*
  %15 = getelementptr i8*, i8** %11, i32 1
  store i8* %14, i8** %15, align 8
  %16 = call i32 @__hipPopCallConfiguration(%struct.dim3* %5, %struct.dim3* %6, i64* %7, i8** %8)
  %17 = load i64, i64* %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast { i64, i32 }* %9 to i8*
  %20 = bitcast %struct.dim3* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 12, i1 false)
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = bitcast { i64, i32 }* %10 to i8*
  %26 = bitcast %struct.dim3* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 12, i1 false)
  %27 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = bitcast i8* %18 to %struct.ihipStream_t*
  %32 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i64, float*)** @_Z7extractlPf to i8*), i64 %22, i32 %24, i64 %28, i32 %30, i8** noundef %11, i64 noundef %17, %struct.ihipStream_t* noundef %31)
  br label %33

33:                                               ; preds = %2
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z22__device_stub__preparelPfS_S_(i64 noundef %0, float* noundef %1, float* noundef %2, float* noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca %struct.dim3, align 8
  %10 = alloca %struct.dim3, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca { i64, i32 }, align 8
  %14 = alloca { i64, i32 }, align 8
  store i64 %0, i64* %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %15 = alloca i8*, i64 4, align 16
  %16 = bitcast i64* %5 to i8*
  %17 = getelementptr i8*, i8** %15, i32 0
  store i8* %16, i8** %17, align 8
  %18 = bitcast float** %6 to i8*
  %19 = getelementptr i8*, i8** %15, i32 1
  store i8* %18, i8** %19, align 8
  %20 = bitcast float** %7 to i8*
  %21 = getelementptr i8*, i8** %15, i32 2
  store i8* %20, i8** %21, align 8
  %22 = bitcast float** %8 to i8*
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
  %40 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i64, float*, float*, float*)** @_Z7preparelPfS_S_ to i8*), i64 %30, i32 %32, i64 %36, i32 %38, i8** noundef %15, i64 noundef %25, %struct.ihipStream_t* noundef %39)
  br label %41

41:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z21__device_stub__reduceliiPfS_(i64 noundef %0, i32 noundef %1, i32 noundef %2, float* noundef %3, float* noundef %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca { i64, i32 }, align 8
  %16 = alloca { i64, i32 }, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  %17 = alloca i8*, i64 5, align 16
  %18 = bitcast i64* %6 to i8*
  %19 = getelementptr i8*, i8** %17, i32 0
  store i8* %18, i8** %19, align 8
  %20 = bitcast i32* %7 to i8*
  %21 = getelementptr i8*, i8** %17, i32 1
  store i8* %20, i8** %21, align 8
  %22 = bitcast i32* %8 to i8*
  %23 = getelementptr i8*, i8** %17, i32 2
  store i8* %22, i8** %23, align 8
  %24 = bitcast float** %9 to i8*
  %25 = getelementptr i8*, i8** %17, i32 3
  store i8* %24, i8** %25, align 8
  %26 = bitcast float** %10 to i8*
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
  %44 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i64, i32, i32, float*, float*)** @_Z6reduceliiPfS_ to i8*), i64 %34, i32 %36, i64 %40, i32 %42, i8** noundef %17, i64 noundef %29, %struct.ihipStream_t* noundef %43)
  br label %45

45:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z19__device_stub__sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0_(float noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32* noundef %4, i32* noundef %5, i32* noundef %6, i32* noundef %7, float* noundef %8, float* noundef %9, float* noundef %10, float* noundef %11, float noundef %12, float* noundef %13, float* noundef %14) #0 {
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  %28 = alloca float, align 4
  %29 = alloca float*, align 8
  %30 = alloca float*, align 8
  %31 = alloca %struct.dim3, align 8
  %32 = alloca %struct.dim3, align 8
  %33 = alloca i64, align 8
  %34 = alloca i8*, align 8
  %35 = alloca { i64, i32 }, align 8
  %36 = alloca { i64, i32 }, align 8
  store float %0, float* %16, align 4
  store i32 %1, i32* %17, align 4
  store i32 %2, i32* %18, align 4
  store i64 %3, i64* %19, align 8
  store i32* %4, i32** %20, align 8
  store i32* %5, i32** %21, align 8
  store i32* %6, i32** %22, align 8
  store i32* %7, i32** %23, align 8
  store float* %8, float** %24, align 8
  store float* %9, float** %25, align 8
  store float* %10, float** %26, align 8
  store float* %11, float** %27, align 8
  store float %12, float* %28, align 4
  store float* %13, float** %29, align 8
  store float* %14, float** %30, align 8
  %37 = alloca i8*, i64 15, align 16
  %38 = bitcast float* %16 to i8*
  %39 = getelementptr i8*, i8** %37, i32 0
  store i8* %38, i8** %39, align 8
  %40 = bitcast i32* %17 to i8*
  %41 = getelementptr i8*, i8** %37, i32 1
  store i8* %40, i8** %41, align 8
  %42 = bitcast i32* %18 to i8*
  %43 = getelementptr i8*, i8** %37, i32 2
  store i8* %42, i8** %43, align 8
  %44 = bitcast i64* %19 to i8*
  %45 = getelementptr i8*, i8** %37, i32 3
  store i8* %44, i8** %45, align 8
  %46 = bitcast i32** %20 to i8*
  %47 = getelementptr i8*, i8** %37, i32 4
  store i8* %46, i8** %47, align 8
  %48 = bitcast i32** %21 to i8*
  %49 = getelementptr i8*, i8** %37, i32 5
  store i8* %48, i8** %49, align 8
  %50 = bitcast i32** %22 to i8*
  %51 = getelementptr i8*, i8** %37, i32 6
  store i8* %50, i8** %51, align 8
  %52 = bitcast i32** %23 to i8*
  %53 = getelementptr i8*, i8** %37, i32 7
  store i8* %52, i8** %53, align 8
  %54 = bitcast float** %24 to i8*
  %55 = getelementptr i8*, i8** %37, i32 8
  store i8* %54, i8** %55, align 8
  %56 = bitcast float** %25 to i8*
  %57 = getelementptr i8*, i8** %37, i32 9
  store i8* %56, i8** %57, align 8
  %58 = bitcast float** %26 to i8*
  %59 = getelementptr i8*, i8** %37, i32 10
  store i8* %58, i8** %59, align 8
  %60 = bitcast float** %27 to i8*
  %61 = getelementptr i8*, i8** %37, i32 11
  store i8* %60, i8** %61, align 8
  %62 = bitcast float* %28 to i8*
  %63 = getelementptr i8*, i8** %37, i32 12
  store i8* %62, i8** %63, align 8
  %64 = bitcast float** %29 to i8*
  %65 = getelementptr i8*, i8** %37, i32 13
  store i8* %64, i8** %65, align 8
  %66 = bitcast float** %30 to i8*
  %67 = getelementptr i8*, i8** %37, i32 14
  store i8* %66, i8** %67, align 8
  %68 = call i32 @__hipPopCallConfiguration(%struct.dim3* %31, %struct.dim3* %32, i64* %33, i8** %34)
  %69 = load i64, i64* %33, align 8
  %70 = load i8*, i8** %34, align 8
  %71 = bitcast { i64, i32 }* %35 to i8*
  %72 = bitcast %struct.dim3* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 %72, i64 12, i1 false)
  %73 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = bitcast { i64, i32 }* %36 to i8*
  %78 = bitcast %struct.dim3* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 12, i1 false)
  %79 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %36, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %36, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = bitcast i8* %70 to %struct.ihipStream_t*
  %84 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (float, i32, i32, i64, i32*, i32*, i32*, i32*, float*, float*, float*, float*, float, float*, float*)** @_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0_ to i8*), i64 %74, i32 %76, i64 %80, i32 %82, i8** noundef %37, i64 noundef %69, %struct.ihipStream_t* noundef %83)
  br label %85

85:                                               ; preds = %15
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z20__device_stub__srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0_(float noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32* noundef %4, i32* noundef %5, i32* noundef %6, i32* noundef %7, float* noundef %8, float* noundef %9, float* noundef %10, float* noundef %11, float* noundef %12, float* noundef %13) #0 {
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  %28 = alloca float*, align 8
  %29 = alloca %struct.dim3, align 8
  %30 = alloca %struct.dim3, align 8
  %31 = alloca i64, align 8
  %32 = alloca i8*, align 8
  %33 = alloca { i64, i32 }, align 8
  %34 = alloca { i64, i32 }, align 8
  store float %0, float* %15, align 4
  store i32 %1, i32* %16, align 4
  store i32 %2, i32* %17, align 4
  store i64 %3, i64* %18, align 8
  store i32* %4, i32** %19, align 8
  store i32* %5, i32** %20, align 8
  store i32* %6, i32** %21, align 8
  store i32* %7, i32** %22, align 8
  store float* %8, float** %23, align 8
  store float* %9, float** %24, align 8
  store float* %10, float** %25, align 8
  store float* %11, float** %26, align 8
  store float* %12, float** %27, align 8
  store float* %13, float** %28, align 8
  %35 = alloca i8*, i64 14, align 16
  %36 = bitcast float* %15 to i8*
  %37 = getelementptr i8*, i8** %35, i32 0
  store i8* %36, i8** %37, align 8
  %38 = bitcast i32* %16 to i8*
  %39 = getelementptr i8*, i8** %35, i32 1
  store i8* %38, i8** %39, align 8
  %40 = bitcast i32* %17 to i8*
  %41 = getelementptr i8*, i8** %35, i32 2
  store i8* %40, i8** %41, align 8
  %42 = bitcast i64* %18 to i8*
  %43 = getelementptr i8*, i8** %35, i32 3
  store i8* %42, i8** %43, align 8
  %44 = bitcast i32** %19 to i8*
  %45 = getelementptr i8*, i8** %35, i32 4
  store i8* %44, i8** %45, align 8
  %46 = bitcast i32** %20 to i8*
  %47 = getelementptr i8*, i8** %35, i32 5
  store i8* %46, i8** %47, align 8
  %48 = bitcast i32** %21 to i8*
  %49 = getelementptr i8*, i8** %35, i32 6
  store i8* %48, i8** %49, align 8
  %50 = bitcast i32** %22 to i8*
  %51 = getelementptr i8*, i8** %35, i32 7
  store i8* %50, i8** %51, align 8
  %52 = bitcast float** %23 to i8*
  %53 = getelementptr i8*, i8** %35, i32 8
  store i8* %52, i8** %53, align 8
  %54 = bitcast float** %24 to i8*
  %55 = getelementptr i8*, i8** %35, i32 9
  store i8* %54, i8** %55, align 8
  %56 = bitcast float** %25 to i8*
  %57 = getelementptr i8*, i8** %35, i32 10
  store i8* %56, i8** %57, align 8
  %58 = bitcast float** %26 to i8*
  %59 = getelementptr i8*, i8** %35, i32 11
  store i8* %58, i8** %59, align 8
  %60 = bitcast float** %27 to i8*
  %61 = getelementptr i8*, i8** %35, i32 12
  store i8* %60, i8** %61, align 8
  %62 = bitcast float** %28 to i8*
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
  %80 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (float, i32, i32, i64, i32*, i32*, i32*, i32*, float*, float*, float*, float*, float*, float*)** @_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0_ to i8*), i64 %70, i32 %72, i64 %76, i32 %78, i8** noundef %35, i64 noundef %65, %struct.ihipStream_t* noundef %79)
  br label %81

81:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z23__device_stub__compresslPf(i64 noundef %0, float* noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca float*, align 8
  %5 = alloca %struct.dim3, align 8
  %6 = alloca %struct.dim3, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca { i64, i32 }, align 8
  %10 = alloca { i64, i32 }, align 8
  store i64 %0, i64* %3, align 8
  store float* %1, float** %4, align 8
  %11 = alloca i8*, i64 2, align 16
  %12 = bitcast i64* %3 to i8*
  %13 = getelementptr i8*, i8** %11, i32 0
  store i8* %12, i8** %13, align 8
  %14 = bitcast float** %4 to i8*
  %15 = getelementptr i8*, i8** %11, i32 1
  store i8* %14, i8** %15, align 8
  %16 = call i32 @__hipPopCallConfiguration(%struct.dim3* %5, %struct.dim3* %6, i64* %7, i8** %8)
  %17 = load i64, i64* %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast { i64, i32 }* %9 to i8*
  %20 = bitcast %struct.dim3* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 12, i1 false)
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = bitcast { i64, i32 }* %10 to i8*
  %26 = bitcast %struct.dim3* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 12, i1 false)
  %27 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = bitcast i8* %18 to %struct.ihipStream_t*
  %32 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i64, float*)** @_Z8compresslPf to i8*), i64 %22, i32 %24, i64 %28, i32 %30, i8** noundef %11, i64 noundef %17, %struct.ihipStream_t* noundef %31)
  br label %33

33:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z14write_graphicsPcPfiiii(i8* noundef %0, float* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
  %7 = alloca i8*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct._IO_FILE*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store float* %1, float** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call %struct._IO_FILE* @fopen(i8* noundef %16, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %17, %struct._IO_FILE** %13, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %19 = icmp eq %struct._IO_FILE* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %103

22:                                               ; preds = %6
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 noundef %26, i32 noundef %27)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef %30)
  %32 = load i32, i32* %11, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %67

34:                                               ; preds = %22
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %63, %34
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %35
  store i32 0, i32* %15, align 4
  br label %40

40:                                               ; preds = %57, %39
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %46 = load float*, float** %8, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %10, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %46, i64 %52
  %54 = load float, float* %53, align 4
  %55 = fptosi float %54 to i32
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %45, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 noundef %55)
  br label %57

57:                                               ; preds = %44
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %15, align 4
  br label %40, !llvm.loop !6

60:                                               ; preds = %40
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %61, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  br label %35, !llvm.loop !8

66:                                               ; preds = %35
  br label %100

67:                                               ; preds = %22
  store i32 0, i32* %14, align 4
  br label %68

68:                                               ; preds = %96, %67
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %99

72:                                               ; preds = %68
  store i32 0, i32* %15, align 4
  br label %73

73:                                               ; preds = %90, %72
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %73
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %79 = load float*, float** %8, align 8
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %9, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %79, i64 %85
  %87 = load float, float* %86, align 4
  %88 = fptosi float %87 to i32
  %89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %78, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 noundef %88)
  br label %90

90:                                               ; preds = %77
  %91 = load i32, i32* %15, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %15, align 4
  br label %73, !llvm.loop !9

93:                                               ; preds = %73
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %94, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  br label %68, !llvm.loop !10

99:                                               ; preds = %68
  br label %100

100:                                              ; preds = %99, %66
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %102 = call i32 @fclose(%struct._IO_FILE* noundef %101)
  br label %103

103:                                              ; preds = %100, %20
  ret void
}

declare %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

declare i32 @printf(i8* noundef, ...) #3

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z13read_graphicsPcPfiii(i8* noundef %0, float* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = alloca i8*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct._IO_FILE*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call %struct._IO_FILE* @fopen(i8* noundef %16, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store %struct._IO_FILE* %17, %struct._IO_FILE** %11, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %19 = icmp eq %struct._IO_FILE* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %105

22:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %36, %22
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 3
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %28 = call i32 @fgetc(%struct._IO_FILE* noundef %27)
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %14, align 1
  %30 = load i8, i8* %14, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %33, %26
  br label %23, !llvm.loop !11

37:                                               ; preds = %23
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %71

40:                                               ; preds = %37
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %67, %40
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %41
  store i32 0, i32* %13, align 4
  br label %46

46:                                               ; preds = %63, %45
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %46
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %51, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* noundef %15)
  %53 = load i32, i32* %15, align 4
  %54 = sitofp i32 %53 to float
  %55 = load float*, float** %7, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %9, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* %55, i64 %61
  store float %54, float* %62, align 4
  br label %63

63:                                               ; preds = %50
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %46, !llvm.loop !12

66:                                               ; preds = %46
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %41, !llvm.loop !13

70:                                               ; preds = %41
  br label %102

71:                                               ; preds = %37
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %98, %71
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %72
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %94, %76
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %77
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %83 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %82, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* noundef %15)
  %84 = load i32, i32* %15, align 4
  %85 = sitofp i32 %84 to float
  %86 = load float*, float** %7, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %8, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %86, i64 %92
  store float %85, float* %93, align 4
  br label %94

94:                                               ; preds = %81
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %77, !llvm.loop !14

97:                                               ; preds = %77
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  br label %72, !llvm.loop !15

101:                                              ; preds = %72
  br label %102

102:                                              ; preds = %101, %70
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %104 = call i32 @fclose(%struct._IO_FILE* noundef %103)
  br label %105

105:                                              ; preds = %102, %20
  ret void
}

declare i32 @fgetc(%struct._IO_FILE* noundef) #3

declare i32 @fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z6resizePfiiS_iii(float* noundef %0, i32 noundef %1, i32 noundef %2, float* noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #4 {
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store float* %0, float** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store float* %3, float** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %77

21:                                               ; preds = %7
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %22

22:                                               ; preds = %71, %21
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %76

26:                                               ; preds = %22
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 %31, %32
  store i32 %33, i32* %17, align 4
  br label %34

34:                                               ; preds = %30, %26
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %35

35:                                               ; preds = %65, %34
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %70

39:                                               ; preds = %35
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %18, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = load float*, float** %8, align 8
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %10, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* %18, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %48, i64 %54
  %56 = load float, float* %55, align 4
  %57 = load float*, float** %11, align 8
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %13, align 4
  %60 = mul nsw i32 %58, %59
  %61 = load i32, i32* %16, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %57, i64 %63
  store float %56, float* %64, align 4
  br label %65

65:                                               ; preds = %47
  %66 = load i32, i32* %16, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %18, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %18, align 4
  br label %35, !llvm.loop !16

70:                                               ; preds = %35
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %17, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %17, align 4
  br label %22, !llvm.loop !17

76:                                               ; preds = %22
  br label %133

77:                                               ; preds = %7
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %78

78:                                               ; preds = %127, %77
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %132

82:                                               ; preds = %78
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %10, align 4
  %89 = sub nsw i32 %87, %88
  store i32 %89, i32* %18, align 4
  br label %90

90:                                               ; preds = %86, %82
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %91

91:                                               ; preds = %121, %90
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %126

95:                                               ; preds = %91
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp sge i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* %9, align 4
  %102 = sub nsw i32 %100, %101
  store i32 %102, i32* %17, align 4
  br label %103

103:                                              ; preds = %99, %95
  %104 = load float*, float** %8, align 8
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* %9, align 4
  %107 = mul nsw i32 %105, %106
  %108 = load i32, i32* %17, align 4
  %109 = add nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %104, i64 %110
  %112 = load float, float* %111, align 4
  %113 = load float*, float** %11, align 8
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %12, align 4
  %116 = mul nsw i32 %114, %115
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %113, i64 %119
  store float %112, float* %120, align 4
  br label %121

121:                                              ; preds = %103
  %122 = load i32, i32* %15, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %17, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %17, align 4
  br label %91, !llvm.loop !18

126:                                              ; preds = %91
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %16, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %16, align 4
  %130 = load i32, i32* %18, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %18, align 4
  br label %78, !llvm.loop !19

132:                                              ; preds = %78
  br label %133

133:                                              ; preds = %132, %76
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i64 @_Z8get_timev() #4 {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @gettimeofday(%struct.timeval* noundef %1, %struct.timezone* noundef null) #11
  %3 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = mul nsw i64 %4, 1000000
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %5, %7
  ret i64 %8
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* noundef, %struct.timezone* noundef) #5

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z9setdevicev() #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.hipDeviceProp_t, align 8
  %6 = call i32 @hipGetDeviceCount(i32* noundef %1)
  %7 = load i32, i32* %1, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %32

9:                                                ; preds = %0
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %26, %9
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* %1, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* noundef %5, i32 noundef %15)
  %17 = load i32, i32* %3, align 4
  %18 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %5, i32 0, i32 14
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %5, i32 0, i32 14
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %2, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %21, %14
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %10, !llvm.loop !20

29:                                               ; preds = %10
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @hipSetDevice(i32 noundef %30)
  br label %32

32:                                               ; preds = %29, %0
  ret void
}

declare i32 @hipGetDeviceCount(i32* noundef) #3

declare i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* noundef, i32 noundef) #3

declare i32 @hipSetDevice(i32 noundef) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z14checkCUDAErrorPKc(i8* noundef %0) #2 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = call i32 @hipGetLastError()
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 0, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i8* @hipGetErrorString(i32 noundef %9)
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* noundef %8, i8* noundef %10)
  %12 = call i32 @fflush(%struct._IO_FILE* noundef null)
  call void @exit(i32 noundef 1) #12
  unreachable

13:                                               ; preds = %1
  ret void
}

declare i32 @hipGetLastError() #3

declare i8* @hipGetErrorString(i32 noundef) #3

declare i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #6

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1) #7 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca float*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca float*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca float, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca %struct.dim3, align 4
  %45 = alloca i32, align 4
  %46 = alloca %struct.dim3, align 4
  %47 = alloca %struct.dim3, align 4
  %48 = alloca %struct.dim3, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca float, align 4
  %53 = alloca float, align 4
  %54 = alloca float, align 4
  %55 = alloca float, align 4
  %56 = alloca float, align 4
  %57 = alloca float, align 4
  %58 = alloca float*, align 8
  %59 = alloca float*, align 8
  %60 = alloca i32*, align 8
  %61 = alloca i32*, align 8
  %62 = alloca i32*, align 8
  %63 = alloca i32*, align 8
  %64 = alloca float*, align 8
  %65 = alloca float*, align 8
  %66 = alloca float*, align 8
  %67 = alloca float*, align 8
  %68 = alloca float*, align 8
  %69 = alloca float*, align 8
  %70 = alloca %struct.dim3, align 4
  %71 = alloca %struct.dim3, align 4
  %72 = alloca { i64, i32 }, align 4
  %73 = alloca { i64, i32 }, align 4
  %74 = alloca %struct.dim3, align 4
  %75 = alloca %struct.dim3, align 4
  %76 = alloca { i64, i32 }, align 4
  %77 = alloca { i64, i32 }, align 4
  %78 = alloca %struct.dim3, align 4
  %79 = alloca %struct.dim3, align 4
  %80 = alloca { i64, i32 }, align 4
  %81 = alloca { i64, i32 }, align 4
  %82 = alloca %struct.dim3, align 4
  %83 = alloca %struct.dim3, align 4
  %84 = alloca { i64, i32 }, align 4
  %85 = alloca { i64, i32 }, align 4
  %86 = alloca %struct.dim3, align 4
  %87 = alloca %struct.dim3, align 4
  %88 = alloca { i64, i32 }, align 4
  %89 = alloca { i64, i32 }, align 4
  %90 = alloca %struct.dim3, align 4
  %91 = alloca %struct.dim3, align 4
  %92 = alloca { i64, i32 }, align 4
  %93 = alloca { i64, i32 }, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %94 = call noundef i64 @_Z8get_timev()
  store i64 %94, i64* %6, align 8
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %44, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %46, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %47, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %48, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  %95 = call noundef i64 @_Z8get_timev()
  store i64 %95, i64* %7, align 8
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 7
  br i1 %97, label %98, label %100

98:                                               ; preds = %2
  %99 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %902

100:                                              ; preds = %2
  %101 = load i8**, i8*** %5, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @atoi(i8* noundef %103) #13
  store i32 %104, i32* %27, align 4
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 2
  %107 = load i8*, i8** %106, align 8
  %108 = call contract double @atof(i8* noundef %107) #13
  %109 = fptrunc double %108 to float
  store float %109, float* %28, align 4
  %110 = load i8**, i8*** %5, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 3
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @atoi(i8* noundef %112) #13
  store i32 %113, i32* %24, align 4
  %114 = load i8**, i8*** %5, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 4
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @atoi(i8* noundef %116) #13
  store i32 %117, i32* %25, align 4
  br label %118

118:                                              ; preds = %100
  %119 = call noundef i64 @_Z8get_timev()
  store i64 %119, i64* %8, align 8
  store i32 502, i32* %20, align 4
  store i32 458, i32* %21, align 4
  %120 = load i32, i32* %20, align 4
  %121 = load i32, i32* %21, align 4
  %122 = mul nsw i32 %120, %121
  %123 = sext i32 %122 to i64
  store i64 %123, i64* %22, align 8
  %124 = load i64, i64* %22, align 8
  %125 = mul i64 4, %124
  %126 = call noalias i8* @malloc(i64 noundef %125) #14
  %127 = bitcast i8* %126 to float*
  store float* %127, float** %19, align 8
  %128 = load i8**, i8*** %5, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 5
  %130 = load i8*, i8** %129, align 8
  %131 = load float*, float** %19, align 8
  %132 = load i32, i32* %20, align 4
  %133 = load i32, i32* %21, align 4
  call void @_Z13read_graphicsPcPfiii(i8* noundef %130, float* noundef %131, i32 noundef %132, i32 noundef %133, i32 noundef 1)
  %134 = call noundef i64 @_Z8get_timev()
  store i64 %134, i64* %9, align 8
  %135 = load i32, i32* %24, align 4
  %136 = load i32, i32* %25, align 4
  %137 = mul nsw i32 %135, %136
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %26, align 8
  %139 = load i64, i64* %26, align 8
  %140 = mul i64 4, %139
  %141 = call noalias i8* @malloc(i64 noundef %140) #14
  %142 = bitcast i8* %141 to float*
  store float* %142, float** %23, align 8
  %143 = load float*, float** %19, align 8
  %144 = load i32, i32* %20, align 4
  %145 = load i32, i32* %21, align 4
  %146 = load float*, float** %23, align 8
  %147 = load i32, i32* %24, align 4
  %148 = load i32, i32* %25, align 4
  call void @_Z6resizePfiiS_iii(float* noundef %143, i32 noundef %144, i32 noundef %145, float* noundef %146, i32 noundef %147, i32 noundef %148, i32 noundef 1)
  %149 = call noundef i64 @_Z8get_timev()
  store i64 %149, i64* %10, align 8
  store i32 0, i32* %29, align 4
  %150 = load i32, i32* %24, align 4
  %151 = sub nsw i32 %150, 1
  store i32 %151, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %152 = load i32, i32* %25, align 4
  %153 = sub nsw i32 %152, 1
  store i32 %153, i32* %32, align 4
  %154 = load i32, i32* %30, align 4
  %155 = load i32, i32* %29, align 4
  %156 = sub nsw i32 %154, %155
  %157 = add nsw i32 %156, 1
  %158 = load i32, i32* %32, align 4
  %159 = load i32, i32* %31, align 4
  %160 = sub nsw i32 %158, %159
  %161 = add nsw i32 %160, 1
  %162 = mul nsw i32 %157, %161
  %163 = sext i32 %162 to i64
  store i64 %163, i64* %33, align 8
  %164 = load i32, i32* %24, align 4
  %165 = sext i32 %164 to i64
  %166 = mul i64 4, %165
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %41, align 4
  %168 = load i32, i32* %41, align 4
  %169 = sext i32 %168 to i64
  %170 = call noalias i8* @malloc(i64 noundef %169) #14
  %171 = bitcast i8* %170 to i32*
  store i32* %171, i32** %34, align 8
  %172 = load i32, i32* %41, align 4
  %173 = sext i32 %172 to i64
  %174 = call noalias i8* @malloc(i64 noundef %173) #14
  %175 = bitcast i8* %174 to i32*
  store i32* %175, i32** %35, align 8
  %176 = load i32, i32* %25, align 4
  %177 = sext i32 %176 to i64
  %178 = mul i64 4, %177
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %42, align 4
  %180 = load i32, i32* %42, align 4
  %181 = sext i32 %180 to i64
  %182 = call noalias i8* @malloc(i64 noundef %181) #14
  %183 = bitcast i8* %182 to i32*
  store i32* %183, i32** %37, align 8
  %184 = load i32, i32* %42, align 4
  %185 = sext i32 %184 to i64
  %186 = call noalias i8* @malloc(i64 noundef %185) #14
  %187 = bitcast i8* %186 to i32*
  store i32* %187, i32** %36, align 8
  store i64 0, i64* %39, align 8
  br label %188

188:                                              ; preds = %206, %118
  %189 = load i64, i64* %39, align 8
  %190 = load i32, i32* %24, align 4
  %191 = sext i32 %190 to i64
  %192 = icmp slt i64 %189, %191
  br i1 %192, label %193, label %209

193:                                              ; preds = %188
  %194 = load i64, i64* %39, align 8
  %195 = sub nsw i64 %194, 1
  %196 = trunc i64 %195 to i32
  %197 = load i32*, i32** %34, align 8
  %198 = load i64, i64* %39, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  store i32 %196, i32* %199, align 4
  %200 = load i64, i64* %39, align 8
  %201 = add nsw i64 %200, 1
  %202 = trunc i64 %201 to i32
  %203 = load i32*, i32** %35, align 8
  %204 = load i64, i64* %39, align 8
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  store i32 %202, i32* %205, align 4
  br label %206

206:                                              ; preds = %193
  %207 = load i64, i64* %39, align 8
  %208 = add nsw i64 %207, 1
  store i64 %208, i64* %39, align 8
  br label %188, !llvm.loop !21

209:                                              ; preds = %188
  store i64 0, i64* %40, align 8
  br label %210

210:                                              ; preds = %228, %209
  %211 = load i64, i64* %40, align 8
  %212 = load i32, i32* %25, align 4
  %213 = sext i32 %212 to i64
  %214 = icmp slt i64 %211, %213
  br i1 %214, label %215, label %231

215:                                              ; preds = %210
  %216 = load i64, i64* %40, align 8
  %217 = sub nsw i64 %216, 1
  %218 = trunc i64 %217 to i32
  %219 = load i32*, i32** %37, align 8
  %220 = load i64, i64* %40, align 8
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  store i32 %218, i32* %221, align 4
  %222 = load i64, i64* %40, align 8
  %223 = add nsw i64 %222, 1
  %224 = trunc i64 %223 to i32
  %225 = load i32*, i32** %36, align 8
  %226 = load i64, i64* %40, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  store i32 %224, i32* %227, align 4
  br label %228

228:                                              ; preds = %215
  %229 = load i64, i64* %40, align 8
  %230 = add nsw i64 %229, 1
  store i64 %230, i64* %40, align 8
  br label %210, !llvm.loop !22

231:                                              ; preds = %210
  %232 = load i32*, i32** %34, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  store i32 0, i32* %233, align 4
  %234 = load i32, i32* %24, align 4
  %235 = sub nsw i32 %234, 1
  %236 = load i32*, i32** %35, align 8
  %237 = load i32, i32* %24, align 4
  %238 = sub nsw i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %236, i64 %239
  store i32 %235, i32* %240, align 4
  %241 = load i32*, i32** %37, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 0
  store i32 0, i32* %242, align 4
  %243 = load i32, i32* %25, align 4
  %244 = sub nsw i32 %243, 1
  %245 = load i32*, i32** %36, align 8
  %246 = load i32, i32* %25, align 4
  %247 = sub nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  store i32 %244, i32* %249, align 4
  %250 = load i64, i64* %26, align 8
  %251 = mul i64 4, %250
  %252 = trunc i64 %251 to i32
  store i32 %252, i32* %49, align 4
  %253 = bitcast float** %68 to i8**
  %254 = load i32, i32* %49, align 4
  %255 = sext i32 %254 to i64
  %256 = call i32 @hipMalloc(i8** noundef %253, i64 noundef %255)
  %257 = bitcast i32** %60 to i8**
  %258 = load i32, i32* %41, align 4
  %259 = sext i32 %258 to i64
  %260 = call i32 @hipMalloc(i8** noundef %257, i64 noundef %259)
  %261 = load i32*, i32** %60, align 8
  %262 = bitcast i32* %261 to i8*
  %263 = load i32*, i32** %34, align 8
  %264 = bitcast i32* %263 to i8*
  %265 = load i32, i32* %41, align 4
  %266 = sext i32 %265 to i64
  %267 = call i32 @hipMemcpy(i8* noundef %262, i8* noundef %264, i64 noundef %266, i32 noundef 1)
  %268 = bitcast i32** %61 to i8**
  %269 = load i32, i32* %41, align 4
  %270 = sext i32 %269 to i64
  %271 = call i32 @hipMalloc(i8** noundef %268, i64 noundef %270)
  %272 = load i32*, i32** %61, align 8
  %273 = bitcast i32* %272 to i8*
  %274 = load i32*, i32** %35, align 8
  %275 = bitcast i32* %274 to i8*
  %276 = load i32, i32* %41, align 4
  %277 = sext i32 %276 to i64
  %278 = call i32 @hipMemcpy(i8* noundef %273, i8* noundef %275, i64 noundef %277, i32 noundef 1)
  %279 = bitcast i32** %62 to i8**
  %280 = load i32, i32* %42, align 4
  %281 = sext i32 %280 to i64
  %282 = call i32 @hipMalloc(i8** noundef %279, i64 noundef %281)
  %283 = load i32*, i32** %62, align 8
  %284 = bitcast i32* %283 to i8*
  %285 = load i32*, i32** %36, align 8
  %286 = bitcast i32* %285 to i8*
  %287 = load i32, i32* %42, align 4
  %288 = sext i32 %287 to i64
  %289 = call i32 @hipMemcpy(i8* noundef %284, i8* noundef %286, i64 noundef %288, i32 noundef 1)
  %290 = bitcast i32** %63 to i8**
  %291 = load i32, i32* %42, align 4
  %292 = sext i32 %291 to i64
  %293 = call i32 @hipMalloc(i8** noundef %290, i64 noundef %292)
  %294 = load i32*, i32** %63, align 8
  %295 = bitcast i32* %294 to i8*
  %296 = load i32*, i32** %37, align 8
  %297 = bitcast i32* %296 to i8*
  %298 = load i32, i32* %42, align 4
  %299 = sext i32 %298 to i64
  %300 = call i32 @hipMemcpy(i8* noundef %295, i8* noundef %297, i64 noundef %299, i32 noundef 1)
  %301 = bitcast float** %58 to i8**
  %302 = load i32, i32* %49, align 4
  %303 = sext i32 %302 to i64
  %304 = call i32 @hipMalloc(i8** noundef %301, i64 noundef %303)
  %305 = bitcast float** %59 to i8**
  %306 = load i32, i32* %49, align 4
  %307 = sext i32 %306 to i64
  %308 = call i32 @hipMalloc(i8** noundef %305, i64 noundef %307)
  %309 = bitcast float** %64 to i8**
  %310 = load i32, i32* %49, align 4
  %311 = sext i32 %310 to i64
  %312 = call i32 @hipMalloc(i8** noundef %309, i64 noundef %311)
  %313 = bitcast float** %65 to i8**
  %314 = load i32, i32* %49, align 4
  %315 = sext i32 %314 to i64
  %316 = call i32 @hipMalloc(i8** noundef %313, i64 noundef %315)
  %317 = bitcast float** %66 to i8**
  %318 = load i32, i32* %49, align 4
  %319 = sext i32 %318 to i64
  %320 = call i32 @hipMalloc(i8** noundef %317, i64 noundef %319)
  %321 = bitcast float** %67 to i8**
  %322 = load i32, i32* %49, align 4
  %323 = sext i32 %322 to i64
  %324 = call i32 @hipMalloc(i8** noundef %321, i64 noundef %323)
  %325 = bitcast float** %69 to i8**
  %326 = load i32, i32* %49, align 4
  %327 = sext i32 %326 to i64
  %328 = call i32 @hipMalloc(i8** noundef %325, i64 noundef %327)
  call void @_Z14checkCUDAErrorPKc(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %329 = getelementptr inbounds %struct.dim3, %struct.dim3* %44, i32 0, i32 0
  store i32 512, i32* %329, align 4
  %330 = getelementptr inbounds %struct.dim3, %struct.dim3* %44, i32 0, i32 1
  store i32 1, i32* %330, align 4
  %331 = load i64, i64* %26, align 8
  %332 = getelementptr inbounds %struct.dim3, %struct.dim3* %44, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = zext i32 %333 to i64
  %335 = sdiv i64 %331, %334
  %336 = trunc i64 %335 to i32
  store i32 %336, i32* %45, align 4
  %337 = load i64, i64* %26, align 8
  %338 = getelementptr inbounds %struct.dim3, %struct.dim3* %44, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = zext i32 %339 to i64
  %341 = srem i64 %337, %340
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %231
  %344 = load i32, i32* %45, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %45, align 4
  br label %346

346:                                              ; preds = %343, %231
  %347 = load i32, i32* %45, align 4
  %348 = getelementptr inbounds %struct.dim3, %struct.dim3* %46, i32 0, i32 0
  store i32 %347, i32* %348, align 4
  %349 = getelementptr inbounds %struct.dim3, %struct.dim3* %46, i32 0, i32 1
  store i32 1, i32* %349, align 4
  %350 = call noundef i64 @_Z8get_timev()
  store i64 %350, i64* %11, align 8
  %351 = load float*, float** %68, align 8
  %352 = bitcast float* %351 to i8*
  %353 = load float*, float** %23, align 8
  %354 = bitcast float* %353 to i8*
  %355 = load i32, i32* %49, align 4
  %356 = sext i32 %355 to i64
  %357 = call i32 @hipMemcpy(i8* noundef %352, i8* noundef %354, i64 noundef %356, i32 noundef 1)
  %358 = call noundef i64 @_Z8get_timev()
  store i64 %358, i64* %12, align 8
  br label %359

359:                                              ; preds = %346
  %360 = bitcast %struct.dim3* %70 to i8*
  %361 = bitcast %struct.dim3* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %360, i8* align 4 %361, i64 12, i1 false)
  %362 = bitcast %struct.dim3* %71 to i8*
  %363 = bitcast %struct.dim3* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %362, i8* align 4 %363, i64 12, i1 false)
  %364 = bitcast { i64, i32 }* %72 to i8*
  %365 = bitcast %struct.dim3* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %364, i8* align 4 %365, i64 12, i1 false)
  %366 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %72, i32 0, i32 0
  %367 = load i64, i64* %366, align 4
  %368 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %72, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = bitcast { i64, i32 }* %73 to i8*
  %371 = bitcast %struct.dim3* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %370, i8* align 4 %371, i64 12, i1 false)
  %372 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %73, i32 0, i32 0
  %373 = load i64, i64* %372, align 4
  %374 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %73, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = call i32 @__hipPushCallConfiguration(i64 %367, i32 %369, i64 %373, i32 %375, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %381, label %378

378:                                              ; preds = %359
  %379 = load i64, i64* %26, align 8
  %380 = load float*, float** %68, align 8
  call void @_Z22__device_stub__extractlPf(i64 noundef %379, float* noundef %380)
  br label %381

381:                                              ; preds = %378, %359
  br label %382

382:                                              ; preds = %381
  call void @_Z14checkCUDAErrorPKc(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %383 = call noundef i64 @_Z8get_timev()
  store i64 %383, i64* %13, align 8
  store i32 0, i32* %38, align 4
  br label %384

384:                                              ; preds = %586, %382
  %385 = load i32, i32* %38, align 4
  %386 = load i32, i32* %27, align 4
  %387 = icmp slt i32 %385, %386
  br i1 %387, label %388, label %589

388:                                              ; preds = %384
  br label %389

389:                                              ; preds = %388
  %390 = bitcast %struct.dim3* %74 to i8*
  %391 = bitcast %struct.dim3* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %390, i8* align 4 %391, i64 12, i1 false)
  %392 = bitcast %struct.dim3* %75 to i8*
  %393 = bitcast %struct.dim3* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %392, i8* align 4 %393, i64 12, i1 false)
  %394 = bitcast { i64, i32 }* %76 to i8*
  %395 = bitcast %struct.dim3* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %394, i8* align 4 %395, i64 12, i1 false)
  %396 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %76, i32 0, i32 0
  %397 = load i64, i64* %396, align 4
  %398 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %76, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = bitcast { i64, i32 }* %77 to i8*
  %401 = bitcast %struct.dim3* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %400, i8* align 4 %401, i64 12, i1 false)
  %402 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %77, i32 0, i32 0
  %403 = load i64, i64* %402, align 4
  %404 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %77, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = call i32 @__hipPushCallConfiguration(i64 %397, i32 %399, i64 %403, i32 %405, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %413, label %408

408:                                              ; preds = %389
  %409 = load i64, i64* %26, align 8
  %410 = load float*, float** %68, align 8
  %411 = load float*, float** %58, align 8
  %412 = load float*, float** %59, align 8
  call void @_Z22__device_stub__preparelPfS_S_(i64 noundef %409, float* noundef %410, float* noundef %411, float* noundef %412)
  br label %413

413:                                              ; preds = %408, %389
  br label %414

414:                                              ; preds = %413
  call void @_Z14checkCUDAErrorPKc(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %415 = getelementptr inbounds %struct.dim3, %struct.dim3* %46, i32 0, i32 0
  %416 = load i32, i32* %415, align 4
  %417 = getelementptr inbounds %struct.dim3, %struct.dim3* %47, i32 0, i32 0
  store i32 %416, i32* %417, align 4
  %418 = getelementptr inbounds %struct.dim3, %struct.dim3* %46, i32 0, i32 1
  %419 = load i32, i32* %418, align 4
  %420 = getelementptr inbounds %struct.dim3, %struct.dim3* %47, i32 0, i32 1
  store i32 %419, i32* %420, align 4
  %421 = load i64, i64* %26, align 8
  %422 = trunc i64 %421 to i32
  store i32 %422, i32* %50, align 4
  store i32 1, i32* %51, align 4
  br label %423

423:                                              ; preds = %483, %414
  %424 = getelementptr inbounds %struct.dim3, %struct.dim3* %47, i32 0, i32 0
  %425 = load i32, i32* %424, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %484

427:                                              ; preds = %423
  call void @_Z14checkCUDAErrorPKc(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  br label %428

428:                                              ; preds = %427
  %429 = bitcast %struct.dim3* %78 to i8*
  %430 = bitcast %struct.dim3* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %429, i8* align 4 %430, i64 12, i1 false)
  %431 = bitcast %struct.dim3* %79 to i8*
  %432 = bitcast %struct.dim3* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %431, i8* align 4 %432, i64 12, i1 false)
  %433 = bitcast { i64, i32 }* %80 to i8*
  %434 = bitcast %struct.dim3* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %433, i8* align 4 %434, i64 12, i1 false)
  %435 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %80, i32 0, i32 0
  %436 = load i64, i64* %435, align 4
  %437 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %80, i32 0, i32 1
  %438 = load i32, i32* %437, align 4
  %439 = bitcast { i64, i32 }* %81 to i8*
  %440 = bitcast %struct.dim3* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %439, i8* align 4 %440, i64 12, i1 false)
  %441 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %81, i32 0, i32 0
  %442 = load i64, i64* %441, align 4
  %443 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %81, i32 0, i32 1
  %444 = load i32, i32* %443, align 4
  %445 = call i32 @__hipPushCallConfiguration(i64 %436, i32 %438, i64 %442, i32 %444, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %453, label %447

447:                                              ; preds = %428
  %448 = load i64, i64* %26, align 8
  %449 = load i32, i32* %50, align 4
  %450 = load i32, i32* %51, align 4
  %451 = load float*, float** %58, align 8
  %452 = load float*, float** %59, align 8
  call void @_Z21__device_stub__reduceliiPfS_(i64 noundef %448, i32 noundef %449, i32 noundef %450, float* noundef %451, float* noundef %452)
  br label %453

453:                                              ; preds = %447, %428
  br label %454

454:                                              ; preds = %453
  call void @_Z14checkCUDAErrorPKc(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %455 = getelementptr inbounds %struct.dim3, %struct.dim3* %47, i32 0, i32 0
  %456 = load i32, i32* %455, align 4
  store i32 %456, i32* %50, align 4
  %457 = getelementptr inbounds %struct.dim3, %struct.dim3* %47, i32 0, i32 0
  %458 = load i32, i32* %457, align 4
  %459 = icmp eq i32 %458, 1
  br i1 %459, label %460, label %462

460:                                              ; preds = %454
  %461 = getelementptr inbounds %struct.dim3, %struct.dim3* %47, i32 0, i32 0
  store i32 0, i32* %461, align 4
  br label %483

462:                                              ; preds = %454
  %463 = load i32, i32* %51, align 4
  %464 = mul nsw i32 %463, 512
  store i32 %464, i32* %51, align 4
  %465 = getelementptr inbounds %struct.dim3, %struct.dim3* %47, i32 0, i32 0
  %466 = load i32, i32* %465, align 4
  %467 = getelementptr inbounds %struct.dim3, %struct.dim3* %44, i32 0, i32 0
  %468 = load i32, i32* %467, align 4
  %469 = udiv i32 %466, %468
  store i32 %469, i32* %45, align 4
  %470 = getelementptr inbounds %struct.dim3, %struct.dim3* %47, i32 0, i32 0
  %471 = load i32, i32* %470, align 4
  %472 = getelementptr inbounds %struct.dim3, %struct.dim3* %44, i32 0, i32 0
  %473 = load i32, i32* %472, align 4
  %474 = urem i32 %471, %473
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %479

476:                                              ; preds = %462
  %477 = load i32, i32* %45, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %45, align 4
  br label %479

479:                                              ; preds = %476, %462
  %480 = load i32, i32* %45, align 4
  %481 = getelementptr inbounds %struct.dim3, %struct.dim3* %47, i32 0, i32 0
  store i32 %480, i32* %481, align 4
  %482 = getelementptr inbounds %struct.dim3, %struct.dim3* %47, i32 0, i32 1
  store i32 1, i32* %482, align 4
  br label %483

483:                                              ; preds = %479, %460
  call void @_Z14checkCUDAErrorPKc(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  br label %423, !llvm.loop !23

484:                                              ; preds = %423
  call void @_Z14checkCUDAErrorPKc(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  store i32 4, i32* %43, align 4
  %485 = bitcast float* %52 to i8*
  %486 = load float*, float** %58, align 8
  %487 = bitcast float* %486 to i8*
  %488 = load i32, i32* %43, align 4
  %489 = sext i32 %488 to i64
  %490 = call i32 @hipMemcpy(i8* noundef %485, i8* noundef %487, i64 noundef %489, i32 noundef 2)
  %491 = bitcast float* %53 to i8*
  %492 = load float*, float** %59, align 8
  %493 = bitcast float* %492 to i8*
  %494 = load i32, i32* %43, align 4
  %495 = sext i32 %494 to i64
  %496 = call i32 @hipMemcpy(i8* noundef %491, i8* noundef %493, i64 noundef %495, i32 noundef 2)
  call void @_Z14checkCUDAErrorPKc(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %497 = load float, float* %52, align 4
  %498 = load i64, i64* %33, align 8
  %499 = sitofp i64 %498 to float
  %500 = fdiv contract float %497, %499
  store float %500, float* %54, align 4
  %501 = load float, float* %54, align 4
  %502 = load float, float* %54, align 4
  %503 = fmul contract float %501, %502
  store float %503, float* %55, align 4
  %504 = load float, float* %53, align 4
  %505 = load i64, i64* %33, align 8
  %506 = sitofp i64 %505 to float
  %507 = fdiv contract float %504, %506
  %508 = load float, float* %55, align 4
  %509 = fsub contract float %507, %508
  store float %509, float* %56, align 4
  %510 = load float, float* %56, align 4
  %511 = load float, float* %55, align 4
  %512 = fdiv contract float %510, %511
  store float %512, float* %57, align 4
  br label %513

513:                                              ; preds = %484
  %514 = bitcast %struct.dim3* %82 to i8*
  %515 = bitcast %struct.dim3* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %514, i8* align 4 %515, i64 12, i1 false)
  %516 = bitcast %struct.dim3* %83 to i8*
  %517 = bitcast %struct.dim3* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %516, i8* align 4 %517, i64 12, i1 false)
  %518 = bitcast { i64, i32 }* %84 to i8*
  %519 = bitcast %struct.dim3* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %518, i8* align 4 %519, i64 12, i1 false)
  %520 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %84, i32 0, i32 0
  %521 = load i64, i64* %520, align 4
  %522 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %84, i32 0, i32 1
  %523 = load i32, i32* %522, align 4
  %524 = bitcast { i64, i32 }* %85 to i8*
  %525 = bitcast %struct.dim3* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %524, i8* align 4 %525, i64 12, i1 false)
  %526 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %85, i32 0, i32 0
  %527 = load i64, i64* %526, align 4
  %528 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %85, i32 0, i32 1
  %529 = load i32, i32* %528, align 4
  %530 = call i32 @__hipPushCallConfiguration(i64 %521, i32 %523, i64 %527, i32 %529, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %548, label %532

532:                                              ; preds = %513
  %533 = load float, float* %28, align 4
  %534 = load i32, i32* %24, align 4
  %535 = load i32, i32* %25, align 4
  %536 = load i64, i64* %26, align 8
  %537 = load i32*, i32** %60, align 8
  %538 = load i32*, i32** %61, align 8
  %539 = load i32*, i32** %62, align 8
  %540 = load i32*, i32** %63, align 8
  %541 = load float*, float** %64, align 8
  %542 = load float*, float** %65, align 8
  %543 = load float*, float** %66, align 8
  %544 = load float*, float** %67, align 8
  %545 = load float, float* %57, align 4
  %546 = load float*, float** %69, align 8
  %547 = load float*, float** %68, align 8
  call void @_Z19__device_stub__sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0_(float noundef %533, i32 noundef %534, i32 noundef %535, i64 noundef %536, i32* noundef %537, i32* noundef %538, i32* noundef %539, i32* noundef %540, float* noundef %541, float* noundef %542, float* noundef %543, float* noundef %544, float noundef %545, float* noundef %546, float* noundef %547)
  br label %548

548:                                              ; preds = %532, %513
  br label %549

549:                                              ; preds = %548
  call void @_Z14checkCUDAErrorPKc(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  br label %550

550:                                              ; preds = %549
  %551 = bitcast %struct.dim3* %86 to i8*
  %552 = bitcast %struct.dim3* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %551, i8* align 4 %552, i64 12, i1 false)
  %553 = bitcast %struct.dim3* %87 to i8*
  %554 = bitcast %struct.dim3* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %553, i8* align 4 %554, i64 12, i1 false)
  %555 = bitcast { i64, i32 }* %88 to i8*
  %556 = bitcast %struct.dim3* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %555, i8* align 4 %556, i64 12, i1 false)
  %557 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %88, i32 0, i32 0
  %558 = load i64, i64* %557, align 4
  %559 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %88, i32 0, i32 1
  %560 = load i32, i32* %559, align 4
  %561 = bitcast { i64, i32 }* %89 to i8*
  %562 = bitcast %struct.dim3* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %561, i8* align 4 %562, i64 12, i1 false)
  %563 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %89, i32 0, i32 0
  %564 = load i64, i64* %563, align 4
  %565 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %89, i32 0, i32 1
  %566 = load i32, i32* %565, align 4
  %567 = call i32 @__hipPushCallConfiguration(i64 %558, i32 %560, i64 %564, i32 %566, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %584, label %569

569:                                              ; preds = %550
  %570 = load float, float* %28, align 4
  %571 = load i32, i32* %24, align 4
  %572 = load i32, i32* %25, align 4
  %573 = load i64, i64* %26, align 8
  %574 = load i32*, i32** %60, align 8
  %575 = load i32*, i32** %61, align 8
  %576 = load i32*, i32** %62, align 8
  %577 = load i32*, i32** %63, align 8
  %578 = load float*, float** %64, align 8
  %579 = load float*, float** %65, align 8
  %580 = load float*, float** %66, align 8
  %581 = load float*, float** %67, align 8
  %582 = load float*, float** %69, align 8
  %583 = load float*, float** %68, align 8
  call void @_Z20__device_stub__srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0_(float noundef %570, i32 noundef %571, i32 noundef %572, i64 noundef %573, i32* noundef %574, i32* noundef %575, i32* noundef %576, i32* noundef %577, float* noundef %578, float* noundef %579, float* noundef %580, float* noundef %581, float* noundef %582, float* noundef %583)
  br label %584

584:                                              ; preds = %569, %550
  br label %585

585:                                              ; preds = %584
  call void @_Z14checkCUDAErrorPKc(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  br label %586

586:                                              ; preds = %585
  %587 = load i32, i32* %38, align 4
  %588 = add nsw i32 %587, 1
  store i32 %588, i32* %38, align 4
  br label %384, !llvm.loop !24

589:                                              ; preds = %384
  %590 = call noundef i64 @_Z8get_timev()
  store i64 %590, i64* %14, align 8
  br label %591

591:                                              ; preds = %589
  %592 = bitcast %struct.dim3* %90 to i8*
  %593 = bitcast %struct.dim3* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %592, i8* align 4 %593, i64 12, i1 false)
  %594 = bitcast %struct.dim3* %91 to i8*
  %595 = bitcast %struct.dim3* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %594, i8* align 4 %595, i64 12, i1 false)
  %596 = bitcast { i64, i32 }* %92 to i8*
  %597 = bitcast %struct.dim3* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %596, i8* align 4 %597, i64 12, i1 false)
  %598 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %92, i32 0, i32 0
  %599 = load i64, i64* %598, align 4
  %600 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %92, i32 0, i32 1
  %601 = load i32, i32* %600, align 4
  %602 = bitcast { i64, i32 }* %93 to i8*
  %603 = bitcast %struct.dim3* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %602, i8* align 4 %603, i64 12, i1 false)
  %604 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %93, i32 0, i32 0
  %605 = load i64, i64* %604, align 4
  %606 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %93, i32 0, i32 1
  %607 = load i32, i32* %606, align 4
  %608 = call i32 @__hipPushCallConfiguration(i64 %599, i32 %601, i64 %605, i32 %607, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %613, label %610

610:                                              ; preds = %591
  %611 = load i64, i64* %26, align 8
  %612 = load float*, float** %68, align 8
  call void @_Z23__device_stub__compresslPf(i64 noundef %611, float* noundef %612)
  br label %613

613:                                              ; preds = %610, %591
  br label %614

614:                                              ; preds = %613
  call void @_Z14checkCUDAErrorPKc(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  %615 = call noundef i64 @_Z8get_timev()
  store i64 %615, i64* %15, align 8
  %616 = load float*, float** %23, align 8
  %617 = bitcast float* %616 to i8*
  %618 = load float*, float** %68, align 8
  %619 = bitcast float* %618 to i8*
  %620 = load i32, i32* %49, align 4
  %621 = sext i32 %620 to i64
  %622 = call i32 @hipMemcpy(i8* noundef %617, i8* noundef %619, i64 noundef %621, i32 noundef 2)
  call void @_Z14checkCUDAErrorPKc(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0))
  %623 = call noundef i64 @_Z8get_timev()
  store i64 %623, i64* %16, align 8
  %624 = load float*, float** %23, align 8
  %625 = load i32, i32* %24, align 4
  %626 = load i32, i32* %25, align 4
  call void @_Z14write_graphicsPcPfiiii(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), float* noundef %624, i32 noundef %625, i32 noundef %626, i32 noundef 1, i32 noundef 255)
  %627 = call noundef i64 @_Z8get_timev()
  store i64 %627, i64* %17, align 8
  %628 = load float*, float** %19, align 8
  %629 = bitcast float* %628 to i8*
  call void @free(i8* noundef %629) #11
  %630 = load float*, float** %23, align 8
  %631 = bitcast float* %630 to i8*
  call void @free(i8* noundef %631) #11
  %632 = load i32*, i32** %34, align 8
  %633 = bitcast i32* %632 to i8*
  call void @free(i8* noundef %633) #11
  %634 = load i32*, i32** %35, align 8
  %635 = bitcast i32* %634 to i8*
  call void @free(i8* noundef %635) #11
  %636 = load i32*, i32** %37, align 8
  %637 = bitcast i32* %636 to i8*
  call void @free(i8* noundef %637) #11
  %638 = load i32*, i32** %36, align 8
  %639 = bitcast i32* %638 to i8*
  call void @free(i8* noundef %639) #11
  %640 = load float*, float** %68, align 8
  %641 = bitcast float* %640 to i8*
  %642 = call i32 @hipFree(i8* noundef %641)
  %643 = load float*, float** %69, align 8
  %644 = bitcast float* %643 to i8*
  %645 = call i32 @hipFree(i8* noundef %644)
  %646 = load i32*, i32** %60, align 8
  %647 = bitcast i32* %646 to i8*
  %648 = call i32 @hipFree(i8* noundef %647)
  %649 = load i32*, i32** %61, align 8
  %650 = bitcast i32* %649 to i8*
  %651 = call i32 @hipFree(i8* noundef %650)
  %652 = load i32*, i32** %62, align 8
  %653 = bitcast i32* %652 to i8*
  %654 = call i32 @hipFree(i8* noundef %653)
  %655 = load i32*, i32** %63, align 8
  %656 = bitcast i32* %655 to i8*
  %657 = call i32 @hipFree(i8* noundef %656)
  %658 = load float*, float** %64, align 8
  %659 = bitcast float* %658 to i8*
  %660 = call i32 @hipFree(i8* noundef %659)
  %661 = load float*, float** %65, align 8
  %662 = bitcast float* %661 to i8*
  %663 = call i32 @hipFree(i8* noundef %662)
  %664 = load float*, float** %67, align 8
  %665 = bitcast float* %664 to i8*
  %666 = call i32 @hipFree(i8* noundef %665)
  %667 = load float*, float** %66, align 8
  %668 = bitcast float* %667 to i8*
  %669 = call i32 @hipFree(i8* noundef %668)
  %670 = load float*, float** %58, align 8
  %671 = bitcast float* %670 to i8*
  %672 = call i32 @hipFree(i8* noundef %671)
  %673 = load float*, float** %59, align 8
  %674 = bitcast float* %673 to i8*
  %675 = call i32 @hipFree(i8* noundef %674)
  %676 = call noundef i64 @_Z8get_timev()
  store i64 %676, i64* %18, align 8
  %677 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.25, i64 0, i64 0))
  %678 = load i64, i64* %7, align 8
  %679 = load i64, i64* %6, align 8
  %680 = sub nsw i64 %678, %679
  %681 = sitofp i64 %680 to float
  %682 = fdiv contract float %681, 1.000000e+06
  %683 = fpext float %682 to double
  %684 = load i64, i64* %7, align 8
  %685 = load i64, i64* %6, align 8
  %686 = sub nsw i64 %684, %685
  %687 = sitofp i64 %686 to float
  %688 = load i64, i64* %18, align 8
  %689 = load i64, i64* %6, align 8
  %690 = sub nsw i64 %688, %689
  %691 = sitofp i64 %690 to float
  %692 = fdiv contract float %687, %691
  %693 = fmul contract float %692, 1.000000e+02
  %694 = fpext float %693 to double
  %695 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0), double noundef %683, double noundef %694)
  %696 = load i64, i64* %8, align 8
  %697 = load i64, i64* %7, align 8
  %698 = sub nsw i64 %696, %697
  %699 = sitofp i64 %698 to float
  %700 = fdiv contract float %699, 1.000000e+06
  %701 = fpext float %700 to double
  %702 = load i64, i64* %8, align 8
  %703 = load i64, i64* %7, align 8
  %704 = sub nsw i64 %702, %703
  %705 = sitofp i64 %704 to float
  %706 = load i64, i64* %18, align 8
  %707 = load i64, i64* %6, align 8
  %708 = sub nsw i64 %706, %707
  %709 = sitofp i64 %708 to float
  %710 = fdiv contract float %705, %709
  %711 = fmul contract float %710, 1.000000e+02
  %712 = fpext float %711 to double
  %713 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.27, i64 0, i64 0), double noundef %701, double noundef %712)
  %714 = load i64, i64* %9, align 8
  %715 = load i64, i64* %8, align 8
  %716 = sub nsw i64 %714, %715
  %717 = sitofp i64 %716 to float
  %718 = fdiv contract float %717, 1.000000e+06
  %719 = fpext float %718 to double
  %720 = load i64, i64* %9, align 8
  %721 = load i64, i64* %8, align 8
  %722 = sub nsw i64 %720, %721
  %723 = sitofp i64 %722 to float
  %724 = load i64, i64* %18, align 8
  %725 = load i64, i64* %6, align 8
  %726 = sub nsw i64 %724, %725
  %727 = sitofp i64 %726 to float
  %728 = fdiv contract float %723, %727
  %729 = fmul contract float %728, 1.000000e+02
  %730 = fpext float %729 to double
  %731 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.28, i64 0, i64 0), double noundef %719, double noundef %730)
  %732 = load i64, i64* %10, align 8
  %733 = load i64, i64* %9, align 8
  %734 = sub nsw i64 %732, %733
  %735 = sitofp i64 %734 to float
  %736 = fdiv contract float %735, 1.000000e+06
  %737 = fpext float %736 to double
  %738 = load i64, i64* %10, align 8
  %739 = load i64, i64* %9, align 8
  %740 = sub nsw i64 %738, %739
  %741 = sitofp i64 %740 to float
  %742 = load i64, i64* %18, align 8
  %743 = load i64, i64* %6, align 8
  %744 = sub nsw i64 %742, %743
  %745 = sitofp i64 %744 to float
  %746 = fdiv contract float %741, %745
  %747 = fmul contract float %746, 1.000000e+02
  %748 = fpext float %747 to double
  %749 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i64 0, i64 0), double noundef %737, double noundef %748)
  %750 = load i64, i64* %11, align 8
  %751 = load i64, i64* %10, align 8
  %752 = sub nsw i64 %750, %751
  %753 = sitofp i64 %752 to float
  %754 = fdiv contract float %753, 1.000000e+06
  %755 = fpext float %754 to double
  %756 = load i64, i64* %11, align 8
  %757 = load i64, i64* %10, align 8
  %758 = sub nsw i64 %756, %757
  %759 = sitofp i64 %758 to float
  %760 = load i64, i64* %18, align 8
  %761 = load i64, i64* %6, align 8
  %762 = sub nsw i64 %760, %761
  %763 = sitofp i64 %762 to float
  %764 = fdiv contract float %759, %763
  %765 = fmul contract float %764, 1.000000e+02
  %766 = fpext float %765 to double
  %767 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.30, i64 0, i64 0), double noundef %755, double noundef %766)
  %768 = load i64, i64* %12, align 8
  %769 = load i64, i64* %11, align 8
  %770 = sub nsw i64 %768, %769
  %771 = sitofp i64 %770 to float
  %772 = fdiv contract float %771, 1.000000e+06
  %773 = fpext float %772 to double
  %774 = load i64, i64* %12, align 8
  %775 = load i64, i64* %11, align 8
  %776 = sub nsw i64 %774, %775
  %777 = sitofp i64 %776 to float
  %778 = load i64, i64* %18, align 8
  %779 = load i64, i64* %6, align 8
  %780 = sub nsw i64 %778, %779
  %781 = sitofp i64 %780 to float
  %782 = fdiv contract float %777, %781
  %783 = fmul contract float %782, 1.000000e+02
  %784 = fpext float %783 to double
  %785 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.31, i64 0, i64 0), double noundef %773, double noundef %784)
  %786 = load i64, i64* %13, align 8
  %787 = load i64, i64* %12, align 8
  %788 = sub nsw i64 %786, %787
  %789 = sitofp i64 %788 to float
  %790 = fdiv contract float %789, 1.000000e+06
  %791 = fpext float %790 to double
  %792 = load i64, i64* %13, align 8
  %793 = load i64, i64* %12, align 8
  %794 = sub nsw i64 %792, %793
  %795 = sitofp i64 %794 to float
  %796 = load i64, i64* %18, align 8
  %797 = load i64, i64* %6, align 8
  %798 = sub nsw i64 %796, %797
  %799 = sitofp i64 %798 to float
  %800 = fdiv contract float %795, %799
  %801 = fmul contract float %800, 1.000000e+02
  %802 = fpext float %801 to double
  %803 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.32, i64 0, i64 0), double noundef %791, double noundef %802)
  %804 = load i64, i64* %14, align 8
  %805 = load i64, i64* %13, align 8
  %806 = sub nsw i64 %804, %805
  %807 = sitofp i64 %806 to float
  %808 = fdiv contract float %807, 1.000000e+06
  %809 = fpext float %808 to double
  %810 = load i64, i64* %14, align 8
  %811 = load i64, i64* %13, align 8
  %812 = sub nsw i64 %810, %811
  %813 = sitofp i64 %812 to float
  %814 = load i64, i64* %18, align 8
  %815 = load i64, i64* %6, align 8
  %816 = sub nsw i64 %814, %815
  %817 = sitofp i64 %816 to float
  %818 = fdiv contract float %813, %817
  %819 = fmul contract float %818, 1.000000e+02
  %820 = fpext float %819 to double
  %821 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i64 0, i64 0), double noundef %809, double noundef %820)
  %822 = load i64, i64* %15, align 8
  %823 = load i64, i64* %14, align 8
  %824 = sub nsw i64 %822, %823
  %825 = sitofp i64 %824 to float
  %826 = fdiv contract float %825, 1.000000e+06
  %827 = fpext float %826 to double
  %828 = load i64, i64* %15, align 8
  %829 = load i64, i64* %14, align 8
  %830 = sub nsw i64 %828, %829
  %831 = sitofp i64 %830 to float
  %832 = load i64, i64* %18, align 8
  %833 = load i64, i64* %6, align 8
  %834 = sub nsw i64 %832, %833
  %835 = sitofp i64 %834 to float
  %836 = fdiv contract float %831, %835
  %837 = fmul contract float %836, 1.000000e+02
  %838 = fpext float %837 to double
  %839 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.34, i64 0, i64 0), double noundef %827, double noundef %838)
  %840 = load i64, i64* %16, align 8
  %841 = load i64, i64* %15, align 8
  %842 = sub nsw i64 %840, %841
  %843 = sitofp i64 %842 to float
  %844 = fdiv contract float %843, 1.000000e+06
  %845 = fpext float %844 to double
  %846 = load i64, i64* %16, align 8
  %847 = load i64, i64* %15, align 8
  %848 = sub nsw i64 %846, %847
  %849 = sitofp i64 %848 to float
  %850 = load i64, i64* %18, align 8
  %851 = load i64, i64* %6, align 8
  %852 = sub nsw i64 %850, %851
  %853 = sitofp i64 %852 to float
  %854 = fdiv contract float %849, %853
  %855 = fmul contract float %854, 1.000000e+02
  %856 = fpext float %855 to double
  %857 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.35, i64 0, i64 0), double noundef %845, double noundef %856)
  %858 = load i64, i64* %17, align 8
  %859 = load i64, i64* %16, align 8
  %860 = sub nsw i64 %858, %859
  %861 = sitofp i64 %860 to float
  %862 = fdiv contract float %861, 1.000000e+06
  %863 = fpext float %862 to double
  %864 = load i64, i64* %17, align 8
  %865 = load i64, i64* %16, align 8
  %866 = sub nsw i64 %864, %865
  %867 = sitofp i64 %866 to float
  %868 = load i64, i64* %18, align 8
  %869 = load i64, i64* %6, align 8
  %870 = sub nsw i64 %868, %869
  %871 = sitofp i64 %870 to float
  %872 = fdiv contract float %867, %871
  %873 = fmul contract float %872, 1.000000e+02
  %874 = fpext float %873 to double
  %875 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.36, i64 0, i64 0), double noundef %863, double noundef %874)
  %876 = load i64, i64* %18, align 8
  %877 = load i64, i64* %17, align 8
  %878 = sub nsw i64 %876, %877
  %879 = sitofp i64 %878 to float
  %880 = fdiv contract float %879, 1.000000e+06
  %881 = fpext float %880 to double
  %882 = load i64, i64* %18, align 8
  %883 = load i64, i64* %17, align 8
  %884 = sub nsw i64 %882, %883
  %885 = sitofp i64 %884 to float
  %886 = load i64, i64* %18, align 8
  %887 = load i64, i64* %6, align 8
  %888 = sub nsw i64 %886, %887
  %889 = sitofp i64 %888 to float
  %890 = fdiv contract float %885, %889
  %891 = fmul contract float %890, 1.000000e+02
  %892 = fpext float %891 to double
  %893 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i64 0, i64 0), double noundef %881, double noundef %892)
  %894 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0))
  %895 = load i64, i64* %18, align 8
  %896 = load i64, i64* %6, align 8
  %897 = sub nsw i64 %895, %896
  %898 = sitofp i64 %897 to float
  %899 = fdiv contract float %898, 1.000000e+06
  %900 = fpext float %899 to double
  %901 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0), double noundef %900)
  br label %902

902:                                              ; preds = %614, %98
  %903 = load i32, i32* %3, align 4
  ret i32 %903
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #8 comdat align 2 {
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

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #9

; Function Attrs: nounwind readonly willreturn
declare double @atof(i8* noundef) #9

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #10

declare i32 @hipMalloc(i8** noundef, i64 noundef) #3

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #3

declare i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #5

declare i32 @hipFree(i8* noundef) #3

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i64, float*)** @_Z7extractlPf to i8*), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %3 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i64, float*, float*, float*)** @_Z7preparelPfS_S_ to i8*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %4 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i64, i32, i32, float*, float*)** @_Z6reduceliiPfS_ to i8*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @2, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %5 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (float, i32, i32, i64, i32*, i32*, i32*, i32*, float*, float*, float*, float*, float, float*, float*)** @_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0_ to i8*), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @3, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @3, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %6 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (float, i32, i32, i64, i32*, i32*, i32*, i32*, float*, float*, float*, float*, float*, float*)** @_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0_ to i8*), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @4, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @4, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %7 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i64, float*)** @_Z8compresslPf to i8*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
attributes #4 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind readonly willreturn }
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
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
