; ModuleID = 'hip/srad/srad_v2/srad.cu'
source_filename = "hip/srad/srad_v2/srad.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque

$_ZSt3expf = comdat any

$_ZN4dim3C2Ejjj = comdat any

$__hip_gpubin_handle = comdat any

@_Z11srad_cuda_1PfS_S_S_S_S_iif = constant void (float*, float*, float*, float*, float*, float*, i32, i32, float)* @_Z26__device_stub__srad_cuda_1PfS_S_S_S_S_iif, align 8
@_Z11srad_cuda_2PfS_S_S_S_S_iiff = constant void (float*, float*, float*, float*, float*, float*, i32, i32, float, float)* @_Z26__device_stub__srad_cuda_2PfS_S_S_S_S_iiff, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [67 x i8] c"Usage: %s <rows> <cols> <y1> <y2> <x1> <x2> <lamda> <no. of iter>\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"\09<rows>   - number of rows\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\09<cols>    - number of cols\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"\09<y1> \09 - y1 value of the speckle\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"\09<y2>      - y2 value of the speckle\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"\09<x1>       - x1 value of the speckle\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"\09<x2>       - x2 value of the speckle\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"\09<lamda>   - lambda (0,1)\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"\09<no. of iter>   - number of iterations\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"WG size of kernel = %d X %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"rows and cols must be multiples of 16\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Randomizing the input matrix\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Start the SRAD main loop\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Computation Done\0A\00", align 1
@0 = private unnamed_addr constant [31 x i8] c"_Z11srad_cuda_1PfS_S_S_S_S_iif\00", align 1
@1 = private unnamed_addr constant [32 x i8] c"_Z11srad_cuda_2PfS_S_S_S_S_iiff\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z26__device_stub__srad_cuda_1PfS_S_S_S_S_iif(float* noundef %0, float* noundef %1, float* noundef %2, float* noundef %3, float* noundef %4, float* noundef %5, i32 noundef %6, i32 noundef %7, float noundef %8) #0 {
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca %struct.dim3, align 8
  %20 = alloca %struct.dim3, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca { i64, i32 }, align 8
  %24 = alloca { i64, i32 }, align 8
  store float* %0, float** %10, align 8
  store float* %1, float** %11, align 8
  store float* %2, float** %12, align 8
  store float* %3, float** %13, align 8
  store float* %4, float** %14, align 8
  store float* %5, float** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store float %8, float* %18, align 4
  %25 = alloca i8*, i64 9, align 16
  %26 = bitcast float** %10 to i8*
  %27 = getelementptr i8*, i8** %25, i32 0
  store i8* %26, i8** %27, align 8
  %28 = bitcast float** %11 to i8*
  %29 = getelementptr i8*, i8** %25, i32 1
  store i8* %28, i8** %29, align 8
  %30 = bitcast float** %12 to i8*
  %31 = getelementptr i8*, i8** %25, i32 2
  store i8* %30, i8** %31, align 8
  %32 = bitcast float** %13 to i8*
  %33 = getelementptr i8*, i8** %25, i32 3
  store i8* %32, i8** %33, align 8
  %34 = bitcast float** %14 to i8*
  %35 = getelementptr i8*, i8** %25, i32 4
  store i8* %34, i8** %35, align 8
  %36 = bitcast float** %15 to i8*
  %37 = getelementptr i8*, i8** %25, i32 5
  store i8* %36, i8** %37, align 8
  %38 = bitcast i32* %16 to i8*
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
  %60 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (float*, float*, float*, float*, float*, float*, i32, i32, float)** @_Z11srad_cuda_1PfS_S_S_S_S_iif to i8*), i64 %50, i32 %52, i64 %56, i32 %58, i8** noundef %25, i64 noundef %45, %struct.ihipStream_t* noundef %59)
  br label %61

61:                                               ; preds = %9
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z26__device_stub__srad_cuda_2PfS_S_S_S_S_iiff(float* noundef %0, float* noundef %1, float* noundef %2, float* noundef %3, float* noundef %4, float* noundef %5, i32 noundef %6, i32 noundef %7, float noundef %8, float noundef %9) #0 {
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca %struct.dim3, align 8
  %22 = alloca %struct.dim3, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca { i64, i32 }, align 8
  %26 = alloca { i64, i32 }, align 8
  store float* %0, float** %11, align 8
  store float* %1, float** %12, align 8
  store float* %2, float** %13, align 8
  store float* %3, float** %14, align 8
  store float* %4, float** %15, align 8
  store float* %5, float** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store float %8, float* %19, align 4
  store float %9, float* %20, align 4
  %27 = alloca i8*, i64 10, align 16
  %28 = bitcast float** %11 to i8*
  %29 = getelementptr i8*, i8** %27, i32 0
  store i8* %28, i8** %29, align 8
  %30 = bitcast float** %12 to i8*
  %31 = getelementptr i8*, i8** %27, i32 1
  store i8* %30, i8** %31, align 8
  %32 = bitcast float** %13 to i8*
  %33 = getelementptr i8*, i8** %27, i32 2
  store i8* %32, i8** %33, align 8
  %34 = bitcast float** %14 to i8*
  %35 = getelementptr i8*, i8** %27, i32 3
  store i8* %34, i8** %35, align 8
  %36 = bitcast float** %15 to i8*
  %37 = getelementptr i8*, i8** %27, i32 4
  store i8* %36, i8** %37, align 8
  %38 = bitcast float** %16 to i8*
  %39 = getelementptr i8*, i8** %27, i32 5
  store i8* %38, i8** %39, align 8
  %40 = bitcast i32* %17 to i8*
  %41 = getelementptr i8*, i8** %27, i32 6
  store i8* %40, i8** %41, align 8
  %42 = bitcast i32* %18 to i8*
  %43 = getelementptr i8*, i8** %27, i32 7
  store i8* %42, i8** %43, align 8
  %44 = bitcast float* %19 to i8*
  %45 = getelementptr i8*, i8** %27, i32 8
  store i8* %44, i8** %45, align 8
  %46 = bitcast float* %20 to i8*
  %47 = getelementptr i8*, i8** %27, i32 9
  store i8* %46, i8** %47, align 8
  %48 = call i32 @__hipPopCallConfiguration(%struct.dim3* %21, %struct.dim3* %22, i64* %23, i8** %24)
  %49 = load i64, i64* %23, align 8
  %50 = load i8*, i8** %24, align 8
  %51 = bitcast { i64, i32 }* %25 to i8*
  %52 = bitcast %struct.dim3* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 12, i1 false)
  %53 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = bitcast { i64, i32 }* %26 to i8*
  %58 = bitcast %struct.dim3* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 12, i1 false)
  %59 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %26, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %26, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = bitcast i8* %50 to %struct.ihipStream_t*
  %64 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (float*, float*, float*, float*, float*, float*, i32, i32, float, float)** @_Z11srad_cuda_2PfS_S_S_S_S_iiff to i8*), i64 %54, i32 %56, i64 %60, i32 %62, i8** noundef %27, i64 noundef %49, %struct.ihipStream_t* noundef %63)
  br label %65

65:                                               ; preds = %10
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z5usageiPPc(i32 noundef %0, i8** noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8**, i8*** %4, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i8* noundef %8)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  call void @exit(i32 noundef 1) #11
  unreachable
}

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1) #5 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 noundef 16, i32 noundef 16)
  %7 = load i32, i32* %4, align 4
  %8 = load i8**, i8*** %5, align 8
  call void @_Z7runTestiPPc(i32 noundef %7, i8** noundef %8)
  ret i32 0
}

declare i32 @printf(i8* noundef, ...) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z7runTestiPPc(i32 noundef %0, i8** noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float*, align 8
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca float*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca %struct.dim3, align 4
  %37 = alloca %struct.dim3, align 4
  %38 = alloca %struct.dim3, align 4
  %39 = alloca %struct.dim3, align 4
  %40 = alloca { i64, i32 }, align 4
  %41 = alloca { i64, i32 }, align 4
  %42 = alloca %struct.dim3, align 4
  %43 = alloca %struct.dim3, align 4
  %44 = alloca { i64, i32 }, align 4
  %45 = alloca { i64, i32 }, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 10, i32* %9, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp eq i32 %46, 9
  br i1 %47, label %48, label %93

48:                                               ; preds = %2
  %49 = load i8**, i8*** %4, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @atoi(i8* noundef %51) #12
  store i32 %52, i32* %5, align 4
  %53 = load i8**, i8*** %4, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @atoi(i8* noundef %55) #12
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %5, align 4
  %58 = srem i32 %57, 16
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %48
  %61 = load i32, i32* %6, align 4
  %62 = srem i32 %61, 16
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60, %48
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %65, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  call void @exit(i32 noundef 1) #11
  unreachable

67:                                               ; preds = %60
  %68 = load i8**, i8*** %4, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 3
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @atoi(i8* noundef %70) #12
  store i32 %71, i32* %26, align 4
  %72 = load i8**, i8*** %4, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 4
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @atoi(i8* noundef %74) #12
  store i32 %75, i32* %27, align 4
  %76 = load i8**, i8*** %4, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 5
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @atoi(i8* noundef %78) #12
  store i32 %79, i32* %28, align 4
  %80 = load i8**, i8*** %4, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 6
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @atoi(i8* noundef %82) #12
  store i32 %83, i32* %29, align 4
  %84 = load i8**, i8*** %4, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 7
  %86 = load i8*, i8** %85, align 8
  %87 = call contract double @atof(i8* noundef %86) #12
  %88 = fptrunc double %87 to float
  store float %88, float* %13, align 4
  %89 = load i8**, i8*** %4, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 8
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @atoi(i8* noundef %91) #12
  store i32 %92, i32* %9, align 4
  br label %96

93:                                               ; preds = %2
  %94 = load i32, i32* %3, align 4
  %95 = load i8**, i8*** %4, align 8
  call void @_Z5usageiPPc(i32 noundef %94, i8** noundef %95)
  br label %96

96:                                               ; preds = %93, %67
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %5, align 4
  %99 = mul nsw i32 %97, %98
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %27, align 4
  %101 = load i32, i32* %26, align 4
  %102 = sub i32 %100, %101
  %103 = add i32 %102, 1
  %104 = load i32, i32* %29, align 4
  %105 = load i32, i32* %28, align 4
  %106 = sub i32 %104, %105
  %107 = add i32 %106, 1
  %108 = mul i32 %103, %107
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 %110, 4
  %112 = call noalias i8* @malloc(i64 noundef %111) #13
  %113 = bitcast i8* %112 to float*
  store float* %113, float** %11, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 4
  %117 = call noalias i8* @malloc(i64 noundef %116) #13
  %118 = bitcast i8* %117 to float*
  store float* %118, float** %12, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = mul i64 4, %120
  %122 = call noalias i8* @malloc(i64 noundef %121) #13
  %123 = bitcast i8* %122 to float*
  store float* %123, float** %30, align 8
  %124 = bitcast float** %20 to i8**
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = mul i64 4, %126
  %128 = call i32 @hipMalloc(i8** noundef %124, i64 noundef %127)
  %129 = bitcast float** %21 to i8**
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = mul i64 4, %131
  %133 = call i32 @hipMalloc(i8** noundef %129, i64 noundef %132)
  %134 = bitcast float** %22 to i8**
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = mul i64 4, %136
  %138 = call i32 @hipMalloc(i8** noundef %134, i64 noundef %137)
  %139 = bitcast float** %23 to i8**
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = mul i64 4, %141
  %143 = call i32 @hipMalloc(i8** noundef %139, i64 noundef %142)
  %144 = bitcast float** %25 to i8**
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = mul i64 4, %146
  %148 = call i32 @hipMalloc(i8** noundef %144, i64 noundef %147)
  %149 = bitcast float** %24 to i8**
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = mul i64 4, %151
  %153 = call i32 @hipMalloc(i8** noundef %149, i64 noundef %152)
  %154 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  %155 = load float*, float** %11, align 8
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* %6, align 4
  call void @_Z13random_matrixPfii(float* noundef %155, i32 noundef %156, i32 noundef %157)
  store i32 0, i32* %31, align 4
  br label %158

158:                                              ; preds = %173, %96
  %159 = load i32, i32* %31, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %176

162:                                              ; preds = %158
  %163 = load float*, float** %11, align 8
  %164 = load i32, i32* %31, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, float* %163, i64 %165
  %167 = load float, float* %166, align 4
  %168 = call contract noundef float @_ZSt3expf(float noundef %167)
  %169 = load float*, float** %12, align 8
  %170 = load i32, i32* %31, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float, float* %169, i64 %171
  store float %168, float* %172, align 4
  br label %173

173:                                              ; preds = %162
  %174 = load i32, i32* %31, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %31, align 4
  br label %158, !llvm.loop !6

176:                                              ; preds = %158
  %177 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %178

178:                                              ; preds = %322, %176
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %325

182:                                              ; preds = %178
  store float 0.000000e+00, float* %15, align 4
  store float 0.000000e+00, float* %16, align 4
  %183 = load i32, i32* %26, align 4
  store i32 %183, i32* %32, align 4
  br label %184

184:                                              ; preds = %216, %182
  %185 = load i32, i32* %32, align 4
  %186 = load i32, i32* %27, align 4
  %187 = icmp ule i32 %185, %186
  br i1 %187, label %188, label %219

188:                                              ; preds = %184
  %189 = load i32, i32* %28, align 4
  store i32 %189, i32* %33, align 4
  br label %190

190:                                              ; preds = %212, %188
  %191 = load i32, i32* %33, align 4
  %192 = load i32, i32* %29, align 4
  %193 = icmp ule i32 %191, %192
  br i1 %193, label %194, label %215

194:                                              ; preds = %190
  %195 = load float*, float** %12, align 8
  %196 = load i32, i32* %32, align 4
  %197 = load i32, i32* %6, align 4
  %198 = mul nsw i32 %196, %197
  %199 = load i32, i32* %33, align 4
  %200 = add nsw i32 %198, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float* %195, i64 %201
  %203 = load float, float* %202, align 4
  store float %203, float* %17, align 4
  %204 = load float, float* %17, align 4
  %205 = load float, float* %15, align 4
  %206 = fadd contract float %205, %204
  store float %206, float* %15, align 4
  %207 = load float, float* %17, align 4
  %208 = load float, float* %17, align 4
  %209 = fmul contract float %207, %208
  %210 = load float, float* %16, align 4
  %211 = fadd contract float %210, %209
  store float %211, float* %16, align 4
  br label %212

212:                                              ; preds = %194
  %213 = load i32, i32* %33, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %33, align 4
  br label %190, !llvm.loop !8

215:                                              ; preds = %190
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %32, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %32, align 4
  br label %184, !llvm.loop !9

219:                                              ; preds = %184
  %220 = load float, float* %15, align 4
  %221 = load i32, i32* %8, align 4
  %222 = sitofp i32 %221 to float
  %223 = fdiv contract float %220, %222
  store float %223, float* %18, align 4
  %224 = load float, float* %16, align 4
  %225 = load i32, i32* %8, align 4
  %226 = sitofp i32 %225 to float
  %227 = fdiv contract float %224, %226
  %228 = load float, float* %18, align 4
  %229 = load float, float* %18, align 4
  %230 = fmul contract float %228, %229
  %231 = fsub contract float %227, %230
  store float %231, float* %19, align 4
  %232 = load float, float* %19, align 4
  %233 = load float, float* %18, align 4
  %234 = load float, float* %18, align 4
  %235 = fmul contract float %233, %234
  %236 = fdiv contract float %232, %235
  store float %236, float* %14, align 4
  %237 = load i32, i32* %6, align 4
  %238 = sdiv i32 %237, 16
  store i32 %238, i32* %34, align 4
  %239 = load i32, i32* %5, align 4
  %240 = sdiv i32 %239, 16
  store i32 %240, i32* %35, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %36, i32 noundef 16, i32 noundef 16, i32 noundef 1)
  %241 = load i32, i32* %34, align 4
  %242 = load i32, i32* %35, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %37, i32 noundef %241, i32 noundef %242, i32 noundef 1)
  %243 = load float*, float** %20, align 8
  %244 = bitcast float* %243 to i8*
  %245 = load float*, float** %12, align 8
  %246 = bitcast float* %245 to i8*
  %247 = load i32, i32* %7, align 4
  %248 = sext i32 %247 to i64
  %249 = mul i64 4, %248
  %250 = call i32 @hipMemcpy(i8* noundef %244, i8* noundef %246, i64 noundef %249, i32 noundef 1)
  br label %251

251:                                              ; preds = %219
  %252 = bitcast %struct.dim3* %38 to i8*
  %253 = bitcast %struct.dim3* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %252, i8* align 4 %253, i64 12, i1 false)
  %254 = bitcast %struct.dim3* %39 to i8*
  %255 = bitcast %struct.dim3* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %254, i8* align 4 %255, i64 12, i1 false)
  %256 = bitcast { i64, i32 }* %40 to i8*
  %257 = bitcast %struct.dim3* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %256, i8* align 4 %257, i64 12, i1 false)
  %258 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %40, i32 0, i32 0
  %259 = load i64, i64* %258, align 4
  %260 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %40, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = bitcast { i64, i32 }* %41 to i8*
  %263 = bitcast %struct.dim3* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %262, i8* align 4 %263, i64 12, i1 false)
  %264 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %41, i32 0, i32 0
  %265 = load i64, i64* %264, align 4
  %266 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %41, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @__hipPushCallConfiguration(i64 %259, i32 %261, i64 %265, i32 %267, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %280, label %270

270:                                              ; preds = %251
  %271 = load float*, float** %22, align 8
  %272 = load float*, float** %23, align 8
  %273 = load float*, float** %24, align 8
  %274 = load float*, float** %25, align 8
  %275 = load float*, float** %20, align 8
  %276 = load float*, float** %21, align 8
  %277 = load i32, i32* %6, align 4
  %278 = load i32, i32* %5, align 4
  %279 = load float, float* %14, align 4
  call void @_Z26__device_stub__srad_cuda_1PfS_S_S_S_S_iif(float* noundef %271, float* noundef %272, float* noundef %273, float* noundef %274, float* noundef %275, float* noundef %276, i32 noundef %277, i32 noundef %278, float noundef %279)
  br label %280

280:                                              ; preds = %270, %251
  br label %281

281:                                              ; preds = %280
  br label %282

282:                                              ; preds = %281
  %283 = bitcast %struct.dim3* %42 to i8*
  %284 = bitcast %struct.dim3* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %283, i8* align 4 %284, i64 12, i1 false)
  %285 = bitcast %struct.dim3* %43 to i8*
  %286 = bitcast %struct.dim3* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %285, i8* align 4 %286, i64 12, i1 false)
  %287 = bitcast { i64, i32 }* %44 to i8*
  %288 = bitcast %struct.dim3* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %287, i8* align 4 %288, i64 12, i1 false)
  %289 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %44, i32 0, i32 0
  %290 = load i64, i64* %289, align 4
  %291 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %44, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = bitcast { i64, i32 }* %45 to i8*
  %294 = bitcast %struct.dim3* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %293, i8* align 4 %294, i64 12, i1 false)
  %295 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %45, i32 0, i32 0
  %296 = load i64, i64* %295, align 4
  %297 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %45, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @__hipPushCallConfiguration(i64 %290, i32 %292, i64 %296, i32 %298, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %312, label %301

301:                                              ; preds = %282
  %302 = load float*, float** %22, align 8
  %303 = load float*, float** %23, align 8
  %304 = load float*, float** %24, align 8
  %305 = load float*, float** %25, align 8
  %306 = load float*, float** %20, align 8
  %307 = load float*, float** %21, align 8
  %308 = load i32, i32* %6, align 4
  %309 = load i32, i32* %5, align 4
  %310 = load float, float* %13, align 4
  %311 = load float, float* %14, align 4
  call void @_Z26__device_stub__srad_cuda_2PfS_S_S_S_S_iiff(float* noundef %302, float* noundef %303, float* noundef %304, float* noundef %305, float* noundef %306, float* noundef %307, i32 noundef %308, i32 noundef %309, float noundef %310, float noundef %311)
  br label %312

312:                                              ; preds = %301, %282
  br label %313

313:                                              ; preds = %312
  %314 = load float*, float** %12, align 8
  %315 = bitcast float* %314 to i8*
  %316 = load float*, float** %20, align 8
  %317 = bitcast float* %316 to i8*
  %318 = load i32, i32* %7, align 4
  %319 = sext i32 %318 to i64
  %320 = mul i64 4, %319
  %321 = call i32 @hipMemcpy(i8* noundef %315, i8* noundef %317, i64 noundef %320, i32 noundef 2)
  br label %322

322:                                              ; preds = %313
  %323 = load i32, i32* %10, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %10, align 4
  br label %178, !llvm.loop !10

325:                                              ; preds = %178
  %326 = call i32 @hipDeviceSynchronize()
  %327 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %328 = load float*, float** %11, align 8
  %329 = bitcast float* %328 to i8*
  call void @free(i8* noundef %329) #14
  %330 = load float*, float** %12, align 8
  %331 = bitcast float* %330 to i8*
  call void @free(i8* noundef %331) #14
  %332 = load float*, float** %21, align 8
  %333 = bitcast float* %332 to i8*
  %334 = call i32 @hipFree(i8* noundef %333)
  %335 = load float*, float** %20, align 8
  %336 = bitcast float* %335 to i8*
  %337 = call i32 @hipFree(i8* noundef %336)
  %338 = load float*, float** %22, align 8
  %339 = bitcast float* %338 to i8*
  %340 = call i32 @hipFree(i8* noundef %339)
  %341 = load float*, float** %23, align 8
  %342 = bitcast float* %341 to i8*
  %343 = call i32 @hipFree(i8* noundef %342)
  %344 = load float*, float** %24, align 8
  %345 = bitcast float* %344 to i8*
  %346 = call i32 @hipFree(i8* noundef %345)
  %347 = load float*, float** %25, align 8
  %348 = bitcast float* %347 to i8*
  %349 = call i32 @hipFree(i8* noundef %348)
  %350 = load float*, float** %30, align 8
  %351 = bitcast float* %350 to i8*
  call void @free(i8* noundef %351) #14
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #6

; Function Attrs: nounwind readonly willreturn
declare double @atof(i8* noundef) #6

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #7

declare i32 @hipMalloc(i8** noundef, i64 noundef) #3

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z13random_matrixPfii(float* noundef %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  call void @srand(i32 noundef 7) #14
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %34, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %30, %13
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = call i32 @rand() #14
  %20 = sitofp i32 %19 to float
  %21 = fdiv contract float %20, 0x41E0000000000000
  %22 = load float*, float** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %22, i64 %28
  store float %21, float* %29, align 4
  br label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %14, !llvm.loop !11

33:                                               ; preds = %14
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %9, !llvm.loop !12

37:                                               ; preds = %9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_ZSt3expf(float noundef %0) #8 comdat {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = call contract float @expf(float noundef %3) #14
  ret float %4
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 comdat align 2 {
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

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #3

declare i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) #3

declare i32 @hipDeviceSynchronize() #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #10

declare i32 @hipFree(i8* noundef) #3

; Function Attrs: nounwind
declare void @srand(i32 noundef) #10

; Function Attrs: nounwind
declare i32 @rand() #10

; Function Attrs: nounwind
declare float @expf(float noundef) #10

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (float*, float*, float*, float*, float*, float*, i32, i32, float)** @_Z11srad_cuda_1PfS_S_S_S_S_iif to i8*), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %3 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (float*, float*, float*, float*, float*, float*, i32, i32, float, float)** @_Z11srad_cuda_2PfS_S_S_S_S_iiff to i8*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind }

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
