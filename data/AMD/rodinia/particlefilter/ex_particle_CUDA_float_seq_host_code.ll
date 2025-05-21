; ModuleID = 'ex_particle_CUDA_float_seq.cu'
source_filename = "ex_particle_CUDA_float_seq.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque

$_ZSt4fabsf = comdat any

$_ZN4dim3C2Ejjj = comdat any

$__hip_gpubin_handle = comdat any

@M = dso_local global i64 2147483647, align 8
@A = dso_local global i32 1103515245, align 4
@C = dso_local global i32 12345, align 4
@.str = private unnamed_addr constant [17 x i8] c"\0ACUDA error: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"PRINTING ARRAY VALUES\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"[%zu]:%0.6f\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"FINISHED PRINTING ARRAY VALUES\0A\00", align 1
@_Z17find_index_kernelPdS_S_S_S_S_S_i = constant void (double*, double*, double*, double*, double*, double*, double*, i32)* @_Z32__device_stub__find_index_kernelPdS_S_S_S_S_S_i, align 8
@_Z24normalize_weights_kernelPdiS_S_S_Pi = constant void (double*, i32, double*, double*, double*, i32*)* @_Z39__device_stub__normalize_weights_kernelPdiS_S_S_Pi, align 8
@_Z10sum_kernelPdi = constant void (double*, i32)* @_Z25__device_stub__sum_kernelPdi, align 8
@_Z17likelihood_kernelPdS_S_S_S_PiS0_S_PhS_S_iiiiiiS0_S_ = constant void (double*, double*, double*, double*, double*, i32*, i32*, double*, i8*, double*, double*, i32, i32, i32, i32, i32, i32, i32*, double*)* @_Z32__device_stub__likelihood_kernelPdS_S_S_S_PiS0_S_PhS_S_iiiiiiS0_S_, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"XE: %lf\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"YE: %lf\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%lf\0A\00", align 1
@__const.main.usage = private unnamed_addr constant [57 x i8] c"double.out -x <dimX> -y <dimY> -z <Nfr> -np <Nparticles>\00", align 16
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-y\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"-np\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"ERROR: dimX input is incorrect\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"dimX must be > 0\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"ERROR: dimY input is incorrect\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"dimY must be > 0\0A\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"ERROR: Number of frames input is incorrect\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"number of frames must be > 0\0A\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"ERROR: Number of particles input is incorrect\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"Number of particles must be > 0\0A\00", align 1
@0 = private unnamed_addr constant [37 x i8] c"_Z17find_index_kernelPdS_S_S_S_S_S_i\00", align 1
@1 = private unnamed_addr constant [40 x i8] c"_Z24normalize_weights_kernelPdiS_S_S_Pi\00", align 1
@2 = private unnamed_addr constant [18 x i8] c"_Z10sum_kernelPdi\00", align 1
@3 = private unnamed_addr constant [56 x i8] c"_Z17likelihood_kernelPdS_S_S_S_PiS0_S_PhS_S_iiiiiiS0_S_\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i64 @_Z8get_timev() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @gettimeofday(%struct.timeval* noundef %1, %struct.timezone* noundef null) #13
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

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef double @_Z12elapsed_timexx(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = sub nsw i64 %5, %6
  %8 = sitofp i64 %7 to double
  %9 = fdiv contract double %8, 1.000000e+06
  ret double %9
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z11check_error10hipError_t(i32 noundef %0) #2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = call i8* @hipGetErrorString(i32 noundef %6)
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* noundef %7)
  call void @exit(i32 noundef 1) #14
  unreachable

9:                                                ; preds = %1
  ret void
}

declare i32 @printf(i8* noundef, ...) #3

declare i8* @hipGetErrorString(i32 noundef) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z23cuda_print_double_arrayPdm(double* noundef %0, i64 noundef %1) #2 {
  %3 = alloca double*, align 8
  %4 = alloca i64, align 8
  %5 = alloca double*, align 8
  %6 = alloca i64, align 8
  store double* %0, double** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = mul i64 8, %7
  %9 = call noalias i8* @malloc(i64 noundef %8) #15
  %10 = bitcast i8* %9 to double*
  store double* %10, double** %5, align 8
  %11 = load double*, double** %5, align 8
  %12 = bitcast double* %11 to i8*
  %13 = load double*, double** %3, align 8
  %14 = bitcast double* %13 to i8*
  %15 = load i64, i64* %4, align 8
  %16 = mul i64 8, %15
  %17 = call i32 @hipMemcpy(i8* noundef %12, i8* noundef %14, i64 noundef %16, i32 noundef 2)
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  br label %19

19:                                               ; preds = %30, %2
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load i64, i64* %6, align 8
  %25 = load double*, double** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds double, double* %25, i64 %26
  %28 = load double, double* %27, align 8
  %29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 noundef %24, double noundef %28)
  br label %30

30:                                               ; preds = %23
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %6, align 8
  br label %19, !llvm.loop !6

33:                                               ; preds = %19
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %35 = load double*, double** %5, align 8
  %36 = bitcast double* %35 to i8*
  call void @free(i8* noundef %36) #13
  store double* null, double** %5, align 8
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #5

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef double @_Z5randuPii(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @A, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %6, %11
  %13 = load i32, i32* @C, align 4
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* @M, align 8
  %18 = srem i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 %19, i32* %23, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = sitofp i32 %28 to double
  %30 = load i64, i64* @M, align 8
  %31 = sitofp i64 %30 to double
  %32 = fdiv contract double %29, %31
  %33 = call contract double @llvm.fabs.f64(double %32)
  ret double %33
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #6

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef double @_Z5randnPii(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call contract noundef double @_Z5randuPii(i32* noundef %9, i32 noundef %10)
  store double %11, double* %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call contract noundef double @_Z5randuPii(i32* noundef %12, i32 noundef %13)
  store double %14, double* %6, align 8
  %15 = load double, double* %6, align 8
  %16 = fmul contract double 0x401921FB54442D18, %15
  %17 = call contract double @cos(double noundef %16) #13
  store double %17, double* %7, align 8
  %18 = load double, double* %5, align 8
  %19 = call contract double @log(double noundef %18) #13
  %20 = fmul contract double -2.000000e+00, %19
  store double %20, double* %8, align 8
  %21 = load double, double* %8, align 8
  %22 = call contract double @sqrt(double noundef %21) #13
  %23 = load double, double* %7, align 8
  %24 = fmul contract double %22, %23
  ret double %24
}

; Function Attrs: nounwind
declare double @cos(double noundef) #1

; Function Attrs: nounwind
declare double @log(double noundef) #1

; Function Attrs: nounwind
declare double @sqrt(double noundef) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef double @_Z10test_randnPii(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store double 0x400921FB54442D18, double* %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call contract noundef double @_Z5randuPii(i32* noundef %10, i32 noundef %11)
  store double %12, double* %6, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call contract noundef double @_Z5randuPii(i32* noundef %13, i32 noundef %14)
  store double %15, double* %7, align 8
  %16 = load double, double* %5, align 8
  %17 = fmul contract double 2.000000e+00, %16
  %18 = load double, double* %7, align 8
  %19 = fmul contract double %17, %18
  %20 = call contract double @cos(double noundef %19) #13
  store double %20, double* %8, align 8
  %21 = load double, double* %6, align 8
  %22 = call contract double @log(double noundef %21) #13
  %23 = fmul contract double -2.000000e+00, %22
  store double %23, double* %9, align 8
  %24 = load double, double* %9, align 8
  %25 = call contract double @sqrt(double noundef %24) #13
  %26 = load double, double* %8, align 8
  %27 = fmul contract double %25, %26
  ret double %27
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z32__device_stub__find_index_kernelPdS_S_S_S_S_S_i(double* noundef %0, double* noundef %1, double* noundef %2, double* noundef %3, double* noundef %4, double* noundef %5, double* noundef %6, i32 noundef %7) #7 {
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.dim3, align 8
  %18 = alloca %struct.dim3, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca { i64, i32 }, align 8
  %22 = alloca { i64, i32 }, align 8
  store double* %0, double** %9, align 8
  store double* %1, double** %10, align 8
  store double* %2, double** %11, align 8
  store double* %3, double** %12, align 8
  store double* %4, double** %13, align 8
  store double* %5, double** %14, align 8
  store double* %6, double** %15, align 8
  store i32 %7, i32* %16, align 4
  %23 = alloca i8*, i64 8, align 16
  %24 = bitcast double** %9 to i8*
  %25 = getelementptr i8*, i8** %23, i32 0
  store i8* %24, i8** %25, align 8
  %26 = bitcast double** %10 to i8*
  %27 = getelementptr i8*, i8** %23, i32 1
  store i8* %26, i8** %27, align 8
  %28 = bitcast double** %11 to i8*
  %29 = getelementptr i8*, i8** %23, i32 2
  store i8* %28, i8** %29, align 8
  %30 = bitcast double** %12 to i8*
  %31 = getelementptr i8*, i8** %23, i32 3
  store i8* %30, i8** %31, align 8
  %32 = bitcast double** %13 to i8*
  %33 = getelementptr i8*, i8** %23, i32 4
  store i8* %32, i8** %33, align 8
  %34 = bitcast double** %14 to i8*
  %35 = getelementptr i8*, i8** %23, i32 5
  store i8* %34, i8** %35, align 8
  %36 = bitcast double** %15 to i8*
  %37 = getelementptr i8*, i8** %23, i32 6
  store i8* %36, i8** %37, align 8
  %38 = bitcast i32* %16 to i8*
  %39 = getelementptr i8*, i8** %23, i32 7
  store i8* %38, i8** %39, align 8
  %40 = call i32 @__hipPopCallConfiguration(%struct.dim3* %17, %struct.dim3* %18, i64* %19, i8** %20)
  %41 = load i64, i64* %19, align 8
  %42 = load i8*, i8** %20, align 8
  %43 = bitcast { i64, i32 }* %21 to i8*
  %44 = bitcast %struct.dim3* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 12, i1 false)
  %45 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = bitcast { i64, i32 }* %22 to i8*
  %50 = bitcast %struct.dim3* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 12, i1 false)
  %51 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = bitcast i8* %42 to %struct.ihipStream_t*
  %56 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (double*, double*, double*, double*, double*, double*, double*, i32)** @_Z17find_index_kernelPdS_S_S_S_S_S_i to i8*), i64 %46, i32 %48, i64 %52, i32 %54, i8** noundef %23, i64 noundef %41, %struct.ihipStream_t* noundef %55)
  br label %57

57:                                               ; preds = %8
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z39__device_stub__normalize_weights_kernelPdiS_S_S_Pi(double* noundef %0, i32 noundef %1, double* noundef %2, double* noundef %3, double* noundef %4, i32* noundef %5) #7 {
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.dim3, align 8
  %14 = alloca %struct.dim3, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca { i64, i32 }, align 8
  %18 = alloca { i64, i32 }, align 8
  store double* %0, double** %7, align 8
  store i32 %1, i32* %8, align 4
  store double* %2, double** %9, align 8
  store double* %3, double** %10, align 8
  store double* %4, double** %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = alloca i8*, i64 6, align 16
  %20 = bitcast double** %7 to i8*
  %21 = getelementptr i8*, i8** %19, i32 0
  store i8* %20, i8** %21, align 8
  %22 = bitcast i32* %8 to i8*
  %23 = getelementptr i8*, i8** %19, i32 1
  store i8* %22, i8** %23, align 8
  %24 = bitcast double** %9 to i8*
  %25 = getelementptr i8*, i8** %19, i32 2
  store i8* %24, i8** %25, align 8
  %26 = bitcast double** %10 to i8*
  %27 = getelementptr i8*, i8** %19, i32 3
  store i8* %26, i8** %27, align 8
  %28 = bitcast double** %11 to i8*
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
  %48 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (double*, i32, double*, double*, double*, i32*)** @_Z24normalize_weights_kernelPdiS_S_S_Pi to i8*), i64 %38, i32 %40, i64 %44, i32 %46, i8** noundef %19, i64 noundef %33, %struct.ihipStream_t* noundef %47)
  br label %49

49:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z25__device_stub__sum_kernelPdi(double* noundef %0, i32 noundef %1) #7 {
  %3 = alloca double*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dim3, align 8
  %6 = alloca %struct.dim3, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca { i64, i32 }, align 8
  %10 = alloca { i64, i32 }, align 8
  store double* %0, double** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = alloca i8*, i64 2, align 16
  %12 = bitcast double** %3 to i8*
  %13 = getelementptr i8*, i8** %11, i32 0
  store i8* %12, i8** %13, align 8
  %14 = bitcast i32* %4 to i8*
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
  %32 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (double*, i32)** @_Z10sum_kernelPdi to i8*), i64 %22, i32 %24, i64 %28, i32 %30, i8** noundef %11, i64 noundef %17, %struct.ihipStream_t* noundef %31)
  br label %33

33:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z32__device_stub__likelihood_kernelPdS_S_S_S_PiS0_S_PhS_S_iiiiiiS0_S_(double* noundef %0, double* noundef %1, double* noundef %2, double* noundef %3, double* noundef %4, i32* noundef %5, i32* noundef %6, double* noundef %7, i8* noundef %8, double* noundef %9, double* noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32* noundef %17, double* noundef %18) #7 {
  %20 = alloca double*, align 8
  %21 = alloca double*, align 8
  %22 = alloca double*, align 8
  %23 = alloca double*, align 8
  %24 = alloca double*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca double*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca double*, align 8
  %30 = alloca double*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32*, align 8
  %38 = alloca double*, align 8
  %39 = alloca %struct.dim3, align 8
  %40 = alloca %struct.dim3, align 8
  %41 = alloca i64, align 8
  %42 = alloca i8*, align 8
  %43 = alloca { i64, i32 }, align 8
  %44 = alloca { i64, i32 }, align 8
  store double* %0, double** %20, align 8
  store double* %1, double** %21, align 8
  store double* %2, double** %22, align 8
  store double* %3, double** %23, align 8
  store double* %4, double** %24, align 8
  store i32* %5, i32** %25, align 8
  store i32* %6, i32** %26, align 8
  store double* %7, double** %27, align 8
  store i8* %8, i8** %28, align 8
  store double* %9, double** %29, align 8
  store double* %10, double** %30, align 8
  store i32 %11, i32* %31, align 4
  store i32 %12, i32* %32, align 4
  store i32 %13, i32* %33, align 4
  store i32 %14, i32* %34, align 4
  store i32 %15, i32* %35, align 4
  store i32 %16, i32* %36, align 4
  store i32* %17, i32** %37, align 8
  store double* %18, double** %38, align 8
  %45 = alloca i8*, i64 19, align 16
  %46 = bitcast double** %20 to i8*
  %47 = getelementptr i8*, i8** %45, i32 0
  store i8* %46, i8** %47, align 8
  %48 = bitcast double** %21 to i8*
  %49 = getelementptr i8*, i8** %45, i32 1
  store i8* %48, i8** %49, align 8
  %50 = bitcast double** %22 to i8*
  %51 = getelementptr i8*, i8** %45, i32 2
  store i8* %50, i8** %51, align 8
  %52 = bitcast double** %23 to i8*
  %53 = getelementptr i8*, i8** %45, i32 3
  store i8* %52, i8** %53, align 8
  %54 = bitcast double** %24 to i8*
  %55 = getelementptr i8*, i8** %45, i32 4
  store i8* %54, i8** %55, align 8
  %56 = bitcast i32** %25 to i8*
  %57 = getelementptr i8*, i8** %45, i32 5
  store i8* %56, i8** %57, align 8
  %58 = bitcast i32** %26 to i8*
  %59 = getelementptr i8*, i8** %45, i32 6
  store i8* %58, i8** %59, align 8
  %60 = bitcast double** %27 to i8*
  %61 = getelementptr i8*, i8** %45, i32 7
  store i8* %60, i8** %61, align 8
  %62 = bitcast i8** %28 to i8*
  %63 = getelementptr i8*, i8** %45, i32 8
  store i8* %62, i8** %63, align 8
  %64 = bitcast double** %29 to i8*
  %65 = getelementptr i8*, i8** %45, i32 9
  store i8* %64, i8** %65, align 8
  %66 = bitcast double** %30 to i8*
  %67 = getelementptr i8*, i8** %45, i32 10
  store i8* %66, i8** %67, align 8
  %68 = bitcast i32* %31 to i8*
  %69 = getelementptr i8*, i8** %45, i32 11
  store i8* %68, i8** %69, align 8
  %70 = bitcast i32* %32 to i8*
  %71 = getelementptr i8*, i8** %45, i32 12
  store i8* %70, i8** %71, align 8
  %72 = bitcast i32* %33 to i8*
  %73 = getelementptr i8*, i8** %45, i32 13
  store i8* %72, i8** %73, align 8
  %74 = bitcast i32* %34 to i8*
  %75 = getelementptr i8*, i8** %45, i32 14
  store i8* %74, i8** %75, align 8
  %76 = bitcast i32* %35 to i8*
  %77 = getelementptr i8*, i8** %45, i32 15
  store i8* %76, i8** %77, align 8
  %78 = bitcast i32* %36 to i8*
  %79 = getelementptr i8*, i8** %45, i32 16
  store i8* %78, i8** %79, align 8
  %80 = bitcast i32** %37 to i8*
  %81 = getelementptr i8*, i8** %45, i32 17
  store i8* %80, i8** %81, align 8
  %82 = bitcast double** %38 to i8*
  %83 = getelementptr i8*, i8** %45, i32 18
  store i8* %82, i8** %83, align 8
  %84 = call i32 @__hipPopCallConfiguration(%struct.dim3* %39, %struct.dim3* %40, i64* %41, i8** %42)
  %85 = load i64, i64* %41, align 8
  %86 = load i8*, i8** %42, align 8
  %87 = bitcast { i64, i32 }* %43 to i8*
  %88 = bitcast %struct.dim3* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 8 %88, i64 12, i1 false)
  %89 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %43, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %43, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = bitcast { i64, i32 }* %44 to i8*
  %94 = bitcast %struct.dim3* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 12, i1 false)
  %95 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %44, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %44, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = bitcast i8* %86 to %struct.ihipStream_t*
  %100 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (double*, double*, double*, double*, double*, i32*, i32*, double*, i8*, double*, double*, i32, i32, i32, i32, i32, i32, i32*, double*)** @_Z17likelihood_kernelPdS_S_S_S_PiS0_S_PhS_S_iiiiiiS0_S_ to i8*), i64 %90, i32 %92, i64 %96, i32 %98, i8** noundef %45, i64 noundef %85, %struct.ihipStream_t* noundef %99)
  br label %101

101:                                              ; preds = %19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef double @_Z11roundDoubled(double noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  store double %0, double* %3, align 8
  %5 = load double, double* %3, align 8
  %6 = fptosi double %5 to i32
  store i32 %6, i32* %4, align 4
  %7 = load double, double* %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sitofp i32 %8 to double
  %10 = fsub contract double %7, %9
  %11 = fcmp contract olt double %10, 5.000000e-01
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = sitofp i32 %13 to double
  store double %14, double* %2, align 8
  br label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  %18 = sitofp i32 %16 to double
  store double %18, double* %2, align 8
  br label %19

19:                                               ; preds = %15, %12
  %20 = load double, double* %2, align 8
  ret double %20
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z5setIfiiPhPiS0_S0_(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32* noundef %3, i32* noundef %4, i32* noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %84, %6
  %17 = load i32, i32* %13, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %87

21:                                               ; preds = %16
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %80, %21
  %23 = load i32, i32* %14, align 4
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %83

27:                                               ; preds = %22
  store i32 0, i32* %15, align 4
  br label %28

28:                                               ; preds = %76, %27
  %29 = load i32, i32* %15, align 4
  %30 = load i32*, i32** %12, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %79

33:                                               ; preds = %28
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %35, %37
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %38, %40
  %42 = load i32, i32* %14, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %42, %44
  %46 = add nsw i32 %41, %45
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %34, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %33
  %56 = load i32, i32* %8, align 4
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %59, %61
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %62, %64
  %66 = load i32, i32* %14, align 4
  %67 = load i32*, i32** %12, align 8
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %66, %68
  %70 = add nsw i32 %65, %69
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %58, i64 %73
  store i8 %57, i8* %74, align 1
  br label %75

75:                                               ; preds = %55, %33
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %15, align 4
  br label %28, !llvm.loop !8

79:                                               ; preds = %28
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %14, align 4
  br label %22, !llvm.loop !9

83:                                               ; preds = %22
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %13, align 4
  br label %16, !llvm.loop !10

87:                                               ; preds = %16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z8addNoisePhPiS0_S0_S0_(i8* noundef %0, i32* noundef %1, i32* noundef %2, i32* noundef %3, i32* noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %83, %5
  %15 = load i32, i32* %11, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %86

19:                                               ; preds = %14
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %79, %19
  %21 = load i32, i32* %12, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %82

25:                                               ; preds = %20
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %75, %25
  %27 = load i32, i32* %13, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %78

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %33, %35
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %36, %38
  %40 = load i32, i32* %12, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %40, %42
  %44 = add nsw i32 %39, %43
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %32, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = load i32*, i32** %10, align 8
  %52 = call contract noundef double @_Z5randnPii(i32* noundef %51, i32 noundef 0)
  %53 = fmul contract double 5.000000e+00, %52
  %54 = fptoui double %53 to i8
  %55 = zext i8 %54 to i32
  %56 = add nsw i32 %50, %55
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %59, %61
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %62, %64
  %66 = load i32, i32* %12, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %66, %68
  %70 = add nsw i32 %65, %69
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %58, i64 %73
  store i8 %57, i8* %74, align 1
  br label %75

75:                                               ; preds = %31
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %13, align 4
  br label %26, !llvm.loop !11

78:                                               ; preds = %26
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  br label %20, !llvm.loop !12

82:                                               ; preds = %20
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %14, !llvm.loop !13

86:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z9strelDiskPii(i32* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = mul nsw i32 %9, 2
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %54, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %50, %16
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %53

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 %22, %23
  %25 = add nsw i32 %24, 1
  %26 = sitofp i32 %25 to double
  %27 = call contract double @pow(double noundef %26, double noundef 2.000000e+00) #13
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %28, %29
  %31 = add nsw i32 %30, 1
  %32 = sitofp i32 %31 to double
  %33 = call contract double @pow(double noundef %32, double noundef 2.000000e+00) #13
  %34 = fadd contract double %27, %33
  %35 = call contract double @sqrt(double noundef %34) #13
  store double %35, double* %8, align 8
  %36 = load double, double* %8, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sitofp i32 %37 to double
  %39 = fcmp contract olt double %36, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %21
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %41, i64 %47
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %40, %21
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %17, !llvm.loop !14

53:                                               ; preds = %17
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %12, !llvm.loop !15

57:                                               ; preds = %12
  ret void
}

; Function Attrs: nounwind
declare double @pow(double noundef, double noundef) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z13dilate_matrixPhiiiiiii(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %16, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %17, align 4
  br label %27

27:                                               ; preds = %30, %8
  %28 = load i32, i32* %17, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %17, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %17, align 4
  br label %27, !llvm.loop !16

33:                                               ; preds = %27
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %16, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %18, align 4
  br label %37

37:                                               ; preds = %40, %33
  %38 = load i32, i32* %18, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %18, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %18, align 4
  br label %37, !llvm.loop !17

43:                                               ; preds = %37
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %16, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %19, align 4
  br label %47

47:                                               ; preds = %51, %43
  %48 = load i32, i32* %19, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %19, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %19, align 4
  br label %47, !llvm.loop !18

54:                                               ; preds = %47
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %16, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %20, align 4
  br label %58

58:                                               ; preds = %62, %54
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %20, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %20, align 4
  br label %58, !llvm.loop !19

65:                                               ; preds = %58
  %66 = load i32, i32* %17, align 4
  store i32 %66, i32* %21, align 4
  br label %67

67:                                               ; preds = %114, %65
  %68 = load i32, i32* %21, align 4
  %69 = load i32, i32* %19, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %117

71:                                               ; preds = %67
  %72 = load i32, i32* %18, align 4
  store i32 %72, i32* %22, align 4
  br label %73

73:                                               ; preds = %110, %71
  %74 = load i32, i32* %22, align 4
  %75 = load i32, i32* %20, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %113

77:                                               ; preds = %73
  %78 = load i32, i32* %21, align 4
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %78, %79
  %81 = sitofp i32 %80 to double
  %82 = call contract double @pow(double noundef %81, double noundef 2.000000e+00) #13
  %83 = load i32, i32* %22, align 4
  %84 = load i32, i32* %11, align 4
  %85 = sub nsw i32 %83, %84
  %86 = sitofp i32 %85 to double
  %87 = call contract double @pow(double noundef %86, double noundef 2.000000e+00) #13
  %88 = fadd contract double %82, %87
  %89 = call contract double @sqrt(double noundef %88) #13
  store double %89, double* %23, align 8
  %90 = load double, double* %23, align 8
  %91 = load i32, i32* %16, align 4
  %92 = sitofp i32 %91 to double
  %93 = fcmp contract olt double %90, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %77
  %95 = load i8*, i8** %9, align 8
  %96 = load i32, i32* %21, align 4
  %97 = load i32, i32* %14, align 4
  %98 = mul nsw i32 %96, %97
  %99 = load i32, i32* %15, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32, i32* %22, align 4
  %102 = load i32, i32* %15, align 4
  %103 = mul nsw i32 %101, %102
  %104 = add nsw i32 %100, %103
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %95, i64 %107
  store i8 1, i8* %108, align 1
  br label %109

109:                                              ; preds = %94, %77
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %22, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %22, align 4
  br label %73, !llvm.loop !20

113:                                              ; preds = %73
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %21, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %21, align 4
  br label %67, !llvm.loop !21

117:                                              ; preds = %67
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z13imdilate_diskPhiiiiS_(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8* noundef %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %66, %6
  %17 = load i32, i32* %15, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %69

20:                                               ; preds = %16
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %62, %20
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %65

25:                                               ; preds = %21
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %58, %25
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %26
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %9, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* %10, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %10, align 4
  %39 = mul nsw i32 %37, %38
  %40 = add nsw i32 %36, %39
  %41 = load i32, i32* %15, align 4
  %42 = add nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %31, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %57

48:                                               ; preds = %30
  %49 = load i8*, i8** %12, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  call void @_Z13dilate_matrixPhiiiiiii(i8* noundef %49, i32 noundef %50, i32 noundef %51, i32 noundef %52, i32 noundef %53, i32 noundef %54, i32 noundef %55, i32 noundef %56)
  br label %57

57:                                               ; preds = %48, %30
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %14, align 4
  br label %26, !llvm.loop !22

61:                                               ; preds = %26
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %21, !llvm.loop !23

65:                                               ; preds = %21
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %15, align 4
  br label %16, !llvm.loop !24

69:                                               ; preds = %16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z12getneighborsPiiS_i(i32* noundef %0, i32 noundef %1, i32* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %8, align 4
  %17 = mul nsw i32 %16, 2
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %64, %4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %67

23:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %60, %23
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %63

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %13, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %29, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %59

39:                                               ; preds = %28
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %12, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %11, align 4
  %45 = mul nsw i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 %42, i32* %47, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %12, align 4
  %50 = sub nsw i32 %48, %49
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %11, align 4
  %53 = mul nsw i32 %52, 2
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  store i32 %50, i32* %56, align 4
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %39, %28
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %24, !llvm.loop !25

63:                                               ; preds = %24
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %19, !llvm.loop !26

67:                                               ; preds = %19
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z13videoSequencePhiiiPi(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32* noundef %4) #2 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* %9, align 4
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sitofp i32 %26 to double
  %28 = fdiv contract double %27, 2.000000e+00
  %29 = call contract noundef double @_Z11roundDoubled(double noundef %28)
  %30 = fptosi double %29 to i32
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sitofp i32 %31 to double
  %33 = fdiv contract double %32, 2.000000e+00
  %34 = call contract noundef double @_Z11roundDoubled(double noundef %33)
  %35 = fptosi double %34 to i32
  store i32 %35, i32* %14, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %8, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* %9, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %9, align 4
  %44 = mul nsw i32 %42, %43
  %45 = add nsw i32 %41, %44
  %46 = add nsw i32 %45, 0
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %36, i64 %47
  store i8 1, i8* %48, align 1
  store i32 1, i32* %11, align 4
  br label %49

49:                                               ; preds = %89, %5
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %92

53:                                               ; preds = %49
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %11, align 4
  %56 = sub nsw i32 %55, 1
  %57 = add nsw i32 %54, %56
  %58 = sitofp i32 %57 to float
  %59 = call contract noundef float @_ZSt4fabsf(float noundef %58)
  %60 = fptosi float %59 to i32
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %11, align 4
  %63 = sub nsw i32 %62, 1
  %64 = mul nsw i32 2, %63
  %65 = sub nsw i32 %61, %64
  %66 = sitofp i32 %65 to float
  %67 = call contract noundef float @_ZSt4fabsf(float noundef %66)
  %68 = fptosi float %67 to i32
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %8, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* %9, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %9, align 4
  %76 = mul nsw i32 %74, %75
  %77 = add nsw i32 %73, %76
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %77, %78
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %53
  store i32 0, i32* %17, align 4
  br label %84

84:                                               ; preds = %83, %53
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  store i8 1, i8* %88, align 1
  br label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %49, !llvm.loop !27

92:                                               ; preds = %49
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 1, %94
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 %95, %97
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 %98, %100
  %102 = call noalias i8* @malloc(i64 noundef %101) #15
  store i8* %102, i8** %18, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load i8*, i8** %18, align 8
  call void @_Z13imdilate_diskPhiiiiS_(i8* noundef %103, i32 noundef %104, i32 noundef %105, i32 noundef %106, i32 noundef 5, i8* noundef %107)
  store i32 0, i32* %19, align 4
  br label %108

108:                                              ; preds = %160, %92
  %109 = load i32, i32* %19, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %163

112:                                              ; preds = %108
  store i32 0, i32* %20, align 4
  br label %113

113:                                              ; preds = %156, %112
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %159

117:                                              ; preds = %113
  store i32 0, i32* %11, align 4
  br label %118

118:                                              ; preds = %152, %117
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %155

122:                                              ; preds = %118
  %123 = load i8*, i8** %18, align 8
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* %8, align 4
  %126 = mul nsw i32 %124, %125
  %127 = load i32, i32* %9, align 4
  %128 = mul nsw i32 %126, %127
  %129 = load i32, i32* %20, align 4
  %130 = load i32, i32* %9, align 4
  %131 = mul nsw i32 %129, %130
  %132 = add nsw i32 %128, %131
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %123, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = load i8*, i8** %6, align 8
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* %8, align 4
  %141 = mul nsw i32 %139, %140
  %142 = load i32, i32* %9, align 4
  %143 = mul nsw i32 %141, %142
  %144 = load i32, i32* %20, align 4
  %145 = load i32, i32* %9, align 4
  %146 = mul nsw i32 %144, %145
  %147 = add nsw i32 %143, %146
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %147, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %138, i64 %150
  store i8 %137, i8* %151, align 1
  br label %152

152:                                              ; preds = %122
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %11, align 4
  br label %118, !llvm.loop !28

155:                                              ; preds = %118
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %20, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %20, align 4
  br label %113, !llvm.loop !29

159:                                              ; preds = %113
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %19, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %19, align 4
  br label %108, !llvm.loop !30

163:                                              ; preds = %108
  %164 = load i8*, i8** %18, align 8
  call void @free(i8* noundef %164) #13
  %165 = load i8*, i8** %6, align 8
  call void @_Z5setIfiiPhPiS0_S0_(i32 noundef 0, i32 noundef 100, i8* noundef %165, i32* noundef %7, i32* noundef %8, i32* noundef %9)
  %166 = load i8*, i8** %6, align 8
  call void @_Z5setIfiiPhPiS0_S0_(i32 noundef 1, i32 noundef 228, i8* noundef %166, i32* noundef %7, i32* noundef %8, i32* noundef %9)
  %167 = load i8*, i8** %6, align 8
  %168 = load i32*, i32** %10, align 8
  call void @_Z8addNoisePhPiS0_S0_S0_(i8* noundef %167, i32* noundef %7, i32* noundef %8, i32* noundef %9, i32* noundef %168)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_ZSt4fabsf(float noundef %0) #0 comdat {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = call contract float @llvm.fabs.f32(float %3)
  ret float %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z9findIndexPdid(double* noundef %0, i32 noundef %1, double noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store double* %0, double** %5, align 8
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %25, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load double*, double** %5, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds double, double* %15, i64 %17
  %19 = load double, double* %18, align 8
  %20 = load double, double* %7, align 8
  %21 = fcmp contract oge double %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %8, align 4
  br label %28

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  br label %10, !llvm.loop !31

28:                                               ; preds = %22, %10
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z14particleFilterPhiiiPii(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32* noundef %4, i32 noundef %5) #2 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca double*, align 8
  %24 = alloca double*, align 8
  %25 = alloca double*, align 8
  %26 = alloca double*, align 8
  %27 = alloca double*, align 8
  %28 = alloca double*, align 8
  %29 = alloca double*, align 8
  %30 = alloca double*, align 8
  %31 = alloca double*, align 8
  %32 = alloca double*, align 8
  %33 = alloca double*, align 8
  %34 = alloca double*, align 8
  %35 = alloca double*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca double*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca double*, align 8
  %42 = alloca double*, align 8
  %43 = alloca i32*, align 8
  %44 = alloca double*, align 8
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i64, align 8
  %49 = alloca i64, align 8
  %50 = alloca i32, align 4
  %51 = alloca %struct.dim3, align 4
  %52 = alloca %struct.dim3, align 4
  %53 = alloca { i64, i32 }, align 4
  %54 = alloca { i64, i32 }, align 4
  %55 = alloca %struct.dim3, align 4
  %56 = alloca %struct.dim3, align 4
  %57 = alloca { i64, i32 }, align 4
  %58 = alloca { i64, i32 }, align 4
  %59 = alloca %struct.dim3, align 4
  %60 = alloca %struct.dim3, align 4
  %61 = alloca { i64, i32 }, align 4
  %62 = alloca { i64, i32 }, align 4
  %63 = alloca %struct.dim3, align 4
  %64 = alloca %struct.dim3, align 4
  %65 = alloca { i64, i32 }, align 4
  %66 = alloca { i64, i32 }, align 4
  %67 = alloca i64, align 8
  %68 = alloca i64, align 8
  %69 = alloca i64, align 8
  %70 = alloca i64, align 8
  %71 = alloca i64, align 8
  %72 = alloca double, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load i32, i32* %10, align 4
  %77 = mul nsw i32 %75, %76
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %9, align 4
  %79 = sitofp i32 %78 to double
  %80 = fdiv contract double %79, 2.000000e+00
  %81 = call contract noundef double @_Z11roundDoubled(double noundef %80)
  store double %81, double* %14, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sitofp i32 %82 to double
  %84 = fdiv contract double %83, 2.000000e+00
  %85 = call contract noundef double @_Z11roundDoubled(double noundef %84)
  store double %85, double* %15, align 8
  store i32 5, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = mul nsw i32 %86, 2
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* %17, align 4
  %91 = mul nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = call noalias i8* @malloc(i64 noundef %93) #15
  %95 = bitcast i8* %94 to i32*
  store i32* %95, i32** %18, align 8
  %96 = load i32*, i32** %18, align 8
  %97 = bitcast i32* %96 to i8*
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %17, align 4
  %100 = mul nsw i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 4
  call void @llvm.memset.p0i8.i64(i8* align 4 %97, i8 0, i64 %102, i1 false)
  %103 = load i32*, i32** %18, align 8
  %104 = load i32, i32* %16, align 4
  call void @_Z9strelDiskPii(i32* noundef %103, i32 noundef %104)
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %105

105:                                              ; preds = %133, %6
  %106 = load i32, i32* %20, align 4
  %107 = load i32, i32* %17, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %136

109:                                              ; preds = %105
  store i32 0, i32* %21, align 4
  br label %110

110:                                              ; preds = %129, %109
  %111 = load i32, i32* %21, align 4
  %112 = load i32, i32* %17, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %132

114:                                              ; preds = %110
  %115 = load i32*, i32** %18, align 8
  %116 = load i32, i32* %20, align 4
  %117 = load i32, i32* %17, align 4
  %118 = mul nsw i32 %116, %117
  %119 = load i32, i32* %21, align 4
  %120 = add nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %115, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %128

125:                                              ; preds = %114
  %126 = load i32, i32* %19, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %19, align 4
  br label %128

128:                                              ; preds = %125, %114
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %21, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %21, align 4
  br label %110, !llvm.loop !32

132:                                              ; preds = %110
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %20, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %20, align 4
  br label %105, !llvm.loop !33

136:                                              ; preds = %105
  %137 = load i32, i32* %19, align 4
  %138 = mul nsw i32 %137, 2
  %139 = sext i32 %138 to i64
  %140 = mul i64 %139, 4
  %141 = call noalias i8* @malloc(i64 noundef %140) #15
  %142 = bitcast i8* %141 to i32*
  store i32* %142, i32** %22, align 8
  %143 = load i32*, i32** %18, align 8
  %144 = load i32, i32* %19, align 4
  %145 = load i32*, i32** %22, align 8
  %146 = load i32, i32* %16, align 4
  call void @_Z12getneighborsPiiS_i(i32* noundef %143, i32 noundef %144, i32* noundef %145, i32 noundef %146)
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = mul i64 8, %148
  %150 = call noalias i8* @malloc(i64 noundef %149) #15
  %151 = bitcast i8* %150 to double*
  store double* %151, double** %23, align 8
  store i32 0, i32* %20, align 4
  br label %152

152:                                              ; preds = %164, %136
  %153 = load i32, i32* %20, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %167

156:                                              ; preds = %152
  %157 = load i32, i32* %12, align 4
  %158 = sitofp i32 %157 to double
  %159 = fdiv contract double 1.000000e+00, %158
  %160 = load double*, double** %23, align 8
  %161 = load i32, i32* %20, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds double, double* %160, i64 %162
  store double %159, double* %163, align 8
  br label %164

164:                                              ; preds = %156
  %165 = load i32, i32* %20, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %20, align 4
  br label %152, !llvm.loop !34

167:                                              ; preds = %152
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = mul i64 8, %169
  %171 = call noalias i8* @malloc(i64 noundef %170) #15
  %172 = bitcast i8* %171 to double*
  store double* %172, double** %24, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = mul i64 8, %174
  %176 = call noalias i8* @malloc(i64 noundef %175) #15
  %177 = bitcast i8* %176 to double*
  store double* %177, double** %25, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = mul i64 8, %179
  %181 = call noalias i8* @malloc(i64 noundef %180) #15
  %182 = bitcast i8* %181 to double*
  store double* %182, double** %26, align 8
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = mul i64 8, %184
  %186 = call noalias i8* @malloc(i64 noundef %185) #15
  %187 = bitcast i8* %186 to double*
  store double* %187, double** %27, align 8
  %188 = load i32, i32* %12, align 4
  %189 = sext i32 %188 to i64
  %190 = mul i64 8, %189
  %191 = call noalias i8* @malloc(i64 noundef %190) #15
  %192 = bitcast i8* %191 to double*
  store double* %192, double** %28, align 8
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = mul i64 8, %194
  %196 = call noalias i8* @malloc(i64 noundef %195) #15
  %197 = bitcast i8* %196 to double*
  store double* %197, double** %29, align 8
  %198 = load i32, i32* %19, align 4
  %199 = sext i32 %198 to i64
  %200 = mul i64 4, %199
  %201 = load i32, i32* %12, align 4
  %202 = sext i32 %201 to i64
  %203 = mul i64 %200, %202
  %204 = call noalias i8* @malloc(i64 noundef %203) #15
  %205 = bitcast i8* %204 to i32*
  store i32* %205, i32** %39, align 8
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = mul i64 8, %207
  %209 = call noalias i8* @malloc(i64 noundef %208) #15
  %210 = bitcast i8* %209 to double*
  store double* %210, double** %41, align 8
  %211 = bitcast double** %30 to i8**
  %212 = load i32, i32* %12, align 4
  %213 = sext i32 %212 to i64
  %214 = mul i64 8, %213
  %215 = call i32 @hipMalloc(i8** noundef %211, i64 noundef %214)
  call void @_Z11check_error10hipError_t(i32 noundef %215)
  %216 = bitcast double** %31 to i8**
  %217 = load i32, i32* %12, align 4
  %218 = sext i32 %217 to i64
  %219 = mul i64 8, %218
  %220 = call i32 @hipMalloc(i8** noundef %216, i64 noundef %219)
  call void @_Z11check_error10hipError_t(i32 noundef %220)
  %221 = bitcast double** %32 to i8**
  %222 = load i32, i32* %12, align 4
  %223 = sext i32 %222 to i64
  %224 = mul i64 8, %223
  %225 = call i32 @hipMalloc(i8** noundef %221, i64 noundef %224)
  call void @_Z11check_error10hipError_t(i32 noundef %225)
  %226 = bitcast double** %33 to i8**
  %227 = load i32, i32* %12, align 4
  %228 = sext i32 %227 to i64
  %229 = mul i64 8, %228
  %230 = call i32 @hipMalloc(i8** noundef %226, i64 noundef %229)
  call void @_Z11check_error10hipError_t(i32 noundef %230)
  %231 = bitcast double** %34 to i8**
  %232 = load i32, i32* %12, align 4
  %233 = sext i32 %232 to i64
  %234 = mul i64 8, %233
  %235 = call i32 @hipMalloc(i8** noundef %231, i64 noundef %234)
  call void @_Z11check_error10hipError_t(i32 noundef %235)
  %236 = bitcast double** %42 to i8**
  %237 = load i32, i32* %12, align 4
  %238 = sext i32 %237 to i64
  %239 = mul i64 8, %238
  %240 = call i32 @hipMalloc(i8** noundef %236, i64 noundef %239)
  call void @_Z11check_error10hipError_t(i32 noundef %240)
  %241 = bitcast double** %35 to i8**
  %242 = load i32, i32* %12, align 4
  %243 = sext i32 %242 to i64
  %244 = mul i64 8, %243
  %245 = call i32 @hipMalloc(i8** noundef %241, i64 noundef %244)
  call void @_Z11check_error10hipError_t(i32 noundef %245)
  %246 = load double*, double** %35, align 8
  %247 = bitcast double* %246 to i8*
  %248 = load i32, i32* %12, align 4
  %249 = sext i32 %248 to i64
  %250 = mul i64 8, %249
  %251 = call i32 @hipMemset(i8* noundef %247, i32 noundef 0, i64 noundef %250)
  call void @_Z11check_error10hipError_t(i32 noundef %251)
  %252 = bitcast double** %37 to i8**
  %253 = load i32, i32* %12, align 4
  %254 = sext i32 %253 to i64
  %255 = mul i64 8, %254
  %256 = call i32 @hipMalloc(i8** noundef %252, i64 noundef %255)
  call void @_Z11check_error10hipError_t(i32 noundef %256)
  %257 = load i32, i32* %8, align 4
  %258 = sext i32 %257 to i64
  %259 = mul i64 1, %258
  %260 = load i32, i32* %9, align 4
  %261 = sext i32 %260 to i64
  %262 = mul i64 %259, %261
  %263 = load i32, i32* %10, align 4
  %264 = sext i32 %263 to i64
  %265 = mul i64 %262, %264
  %266 = call i32 @hipMalloc(i8** noundef %36, i64 noundef %265)
  call void @_Z11check_error10hipError_t(i32 noundef %266)
  %267 = bitcast i32** %38 to i8**
  %268 = load i32, i32* %19, align 4
  %269 = sext i32 %268 to i64
  %270 = mul i64 8, %269
  %271 = call i32 @hipMalloc(i8** noundef %267, i64 noundef %270)
  call void @_Z11check_error10hipError_t(i32 noundef %271)
  %272 = bitcast i32** %40 to i8**
  %273 = load i32, i32* %19, align 4
  %274 = sext i32 %273 to i64
  %275 = mul i64 4, %274
  %276 = load i32, i32* %12, align 4
  %277 = sext i32 %276 to i64
  %278 = mul i64 %275, %277
  %279 = call i32 @hipMalloc(i8** noundef %272, i64 noundef %278)
  call void @_Z11check_error10hipError_t(i32 noundef %279)
  %280 = bitcast i32** %43 to i8**
  %281 = load i32, i32* %12, align 4
  %282 = sext i32 %281 to i64
  %283 = mul i64 4, %282
  %284 = call i32 @hipMalloc(i8** noundef %280, i64 noundef %283)
  call void @_Z11check_error10hipError_t(i32 noundef %284)
  %285 = bitcast double** %44 to i8**
  %286 = load i32, i32* %12, align 4
  %287 = sext i32 %286 to i64
  %288 = mul i64 8, %287
  %289 = call i32 @hipMalloc(i8** noundef %285, i64 noundef %288)
  call void @_Z11check_error10hipError_t(i32 noundef %289)
  store i32 0, i32* %20, align 4
  br label %290

290:                                              ; preds = %305, %167
  %291 = load i32, i32* %20, align 4
  %292 = load i32, i32* %12, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %308

294:                                              ; preds = %290
  %295 = load double, double* %14, align 8
  %296 = load double*, double** %27, align 8
  %297 = load i32, i32* %20, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds double, double* %296, i64 %298
  store double %295, double* %299, align 8
  %300 = load double, double* %15, align 8
  %301 = load double*, double** %28, align 8
  %302 = load i32, i32* %20, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds double, double* %301, i64 %303
  store double %300, double* %304, align 8
  br label %305

305:                                              ; preds = %294
  %306 = load i32, i32* %20, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %20, align 4
  br label %290, !llvm.loop !35

308:                                              ; preds = %290
  %309 = call noundef i64 @_Z8get_timev()
  store i64 %309, i64* %48, align 8
  %310 = load i8*, i8** %36, align 8
  %311 = load i8*, i8** %7, align 8
  %312 = load i32, i32* %8, align 4
  %313 = sext i32 %312 to i64
  %314 = mul i64 1, %313
  %315 = load i32, i32* %9, align 4
  %316 = sext i32 %315 to i64
  %317 = mul i64 %314, %316
  %318 = load i32, i32* %10, align 4
  %319 = sext i32 %318 to i64
  %320 = mul i64 %317, %319
  %321 = call i32 @hipMemcpy(i8* noundef %310, i8* noundef %311, i64 noundef %320, i32 noundef 1)
  call void @_Z11check_error10hipError_t(i32 noundef %321)
  %322 = load i32*, i32** %38, align 8
  %323 = bitcast i32* %322 to i8*
  %324 = load i32*, i32** %22, align 8
  %325 = bitcast i32* %324 to i8*
  %326 = load i32, i32* %19, align 4
  %327 = sext i32 %326 to i64
  %328 = mul i64 8, %327
  %329 = call i32 @hipMemcpy(i8* noundef %323, i8* noundef %325, i64 noundef %328, i32 noundef 1)
  call void @_Z11check_error10hipError_t(i32 noundef %329)
  %330 = load double*, double** %37, align 8
  %331 = bitcast double* %330 to i8*
  %332 = load double*, double** %23, align 8
  %333 = bitcast double* %332 to i8*
  %334 = load i32, i32* %12, align 4
  %335 = sext i32 %334 to i64
  %336 = mul i64 8, %335
  %337 = call i32 @hipMemcpy(i8* noundef %331, i8* noundef %333, i64 noundef %336, i32 noundef 1)
  call void @_Z11check_error10hipError_t(i32 noundef %337)
  %338 = load double*, double** %32, align 8
  %339 = bitcast double* %338 to i8*
  %340 = load double*, double** %27, align 8
  %341 = bitcast double* %340 to i8*
  %342 = load i32, i32* %12, align 4
  %343 = sext i32 %342 to i64
  %344 = mul i64 8, %343
  %345 = call i32 @hipMemcpy(i8* noundef %339, i8* noundef %341, i64 noundef %344, i32 noundef 1)
  call void @_Z11check_error10hipError_t(i32 noundef %345)
  %346 = load double*, double** %33, align 8
  %347 = bitcast double* %346 to i8*
  %348 = load double*, double** %28, align 8
  %349 = bitcast double* %348 to i8*
  %350 = load i32, i32* %12, align 4
  %351 = sext i32 %350 to i64
  %352 = mul i64 8, %351
  %353 = call i32 @hipMemcpy(i8* noundef %347, i8* noundef %349, i64 noundef %352, i32 noundef 1)
  call void @_Z11check_error10hipError_t(i32 noundef %353)
  %354 = load i32*, i32** %43, align 8
  %355 = bitcast i32* %354 to i8*
  %356 = load i32*, i32** %11, align 8
  %357 = bitcast i32* %356 to i8*
  %358 = load i32, i32* %12, align 4
  %359 = sext i32 %358 to i64
  %360 = mul i64 4, %359
  %361 = call i32 @hipMemcpy(i8* noundef %355, i8* noundef %357, i64 noundef %360, i32 noundef 1)
  call void @_Z11check_error10hipError_t(i32 noundef %361)
  %362 = call noundef i64 @_Z8get_timev()
  store i64 %362, i64* %49, align 8
  %363 = load i32, i32* %12, align 4
  %364 = sitofp i32 %363 to double
  %365 = fdiv contract double %364, 5.120000e+02
  %366 = call contract double @llvm.ceil.f64(double %365)
  %367 = fptosi double %366 to i32
  store i32 %367, i32* %50, align 4
  store i32 1, i32* %45, align 4
  br label %368

368:                                              ; preds = %484, %308
  %369 = load i32, i32* %45, align 4
  %370 = load i32, i32* %10, align 4
  %371 = icmp slt i32 %369, %370
  br i1 %371, label %372, label %487

372:                                              ; preds = %368
  br label %373

373:                                              ; preds = %372
  %374 = load i32, i32* %50, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %51, i32 noundef %374, i32 noundef 1, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %52, i32 noundef 512, i32 noundef 1, i32 noundef 1)
  %375 = bitcast { i64, i32 }* %53 to i8*
  %376 = bitcast %struct.dim3* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %375, i8* align 4 %376, i64 12, i1 false)
  %377 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %53, i32 0, i32 0
  %378 = load i64, i64* %377, align 4
  %379 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %53, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = bitcast { i64, i32 }* %54 to i8*
  %382 = bitcast %struct.dim3* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %381, i8* align 4 %382, i64 12, i1 false)
  %383 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %54, i32 0, i32 0
  %384 = load i64, i64* %383, align 4
  %385 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %54, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = call i32 @__hipPushCallConfiguration(i64 %378, i32 %380, i64 %384, i32 %386, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %409, label %389

389:                                              ; preds = %373
  %390 = load double*, double** %30, align 8
  %391 = load double*, double** %31, align 8
  %392 = load double*, double** %32, align 8
  %393 = load double*, double** %33, align 8
  %394 = load double*, double** %34, align 8
  %395 = load i32*, i32** %40, align 8
  %396 = load i32*, i32** %38, align 8
  %397 = load double*, double** %35, align 8
  %398 = load i8*, i8** %36, align 8
  %399 = load double*, double** %42, align 8
  %400 = load double*, double** %37, align 8
  %401 = load i32, i32* %12, align 4
  %402 = load i32, i32* %19, align 4
  %403 = load i32, i32* %13, align 4
  %404 = load i32, i32* %45, align 4
  %405 = load i32, i32* %9, align 4
  %406 = load i32, i32* %10, align 4
  %407 = load i32*, i32** %43, align 8
  %408 = load double*, double** %44, align 8
  call void @_Z32__device_stub__likelihood_kernelPdS_S_S_S_PiS0_S_PhS_S_iiiiiiS0_S_(double* noundef %390, double* noundef %391, double* noundef %392, double* noundef %393, double* noundef %394, i32* noundef %395, i32* noundef %396, double* noundef %397, i8* noundef %398, double* noundef %399, double* noundef %400, i32 noundef %401, i32 noundef %402, i32 noundef %403, i32 noundef %404, i32 noundef %405, i32 noundef %406, i32* noundef %407, double* noundef %408)
  br label %409

409:                                              ; preds = %389, %373
  br label %410

410:                                              ; preds = %409
  br label %411

411:                                              ; preds = %410
  %412 = load i32, i32* %50, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %55, i32 noundef %412, i32 noundef 1, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %56, i32 noundef 512, i32 noundef 1, i32 noundef 1)
  %413 = bitcast { i64, i32 }* %57 to i8*
  %414 = bitcast %struct.dim3* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %413, i8* align 4 %414, i64 12, i1 false)
  %415 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %57, i32 0, i32 0
  %416 = load i64, i64* %415, align 4
  %417 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %57, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = bitcast { i64, i32 }* %58 to i8*
  %420 = bitcast %struct.dim3* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %419, i8* align 4 %420, i64 12, i1 false)
  %421 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %58, i32 0, i32 0
  %422 = load i64, i64* %421, align 4
  %423 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %58, i32 0, i32 1
  %424 = load i32, i32* %423, align 4
  %425 = call i32 @__hipPushCallConfiguration(i64 %416, i32 %418, i64 %422, i32 %424, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %430, label %427

427:                                              ; preds = %411
  %428 = load double*, double** %44, align 8
  %429 = load i32, i32* %12, align 4
  call void @_Z25__device_stub__sum_kernelPdi(double* noundef %428, i32 noundef %429)
  br label %430

430:                                              ; preds = %427, %411
  br label %431

431:                                              ; preds = %430
  br label %432

432:                                              ; preds = %431
  %433 = load i32, i32* %50, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %59, i32 noundef %433, i32 noundef 1, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %60, i32 noundef 512, i32 noundef 1, i32 noundef 1)
  %434 = bitcast { i64, i32 }* %61 to i8*
  %435 = bitcast %struct.dim3* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %434, i8* align 4 %435, i64 12, i1 false)
  %436 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %61, i32 0, i32 0
  %437 = load i64, i64* %436, align 4
  %438 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %61, i32 0, i32 1
  %439 = load i32, i32* %438, align 4
  %440 = bitcast { i64, i32 }* %62 to i8*
  %441 = bitcast %struct.dim3* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %440, i8* align 4 %441, i64 12, i1 false)
  %442 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %62, i32 0, i32 0
  %443 = load i64, i64* %442, align 4
  %444 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %62, i32 0, i32 1
  %445 = load i32, i32* %444, align 4
  %446 = call i32 @__hipPushCallConfiguration(i64 %437, i32 %439, i64 %443, i32 %445, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %455, label %448

448:                                              ; preds = %432
  %449 = load double*, double** %37, align 8
  %450 = load i32, i32* %12, align 4
  %451 = load double*, double** %44, align 8
  %452 = load double*, double** %34, align 8
  %453 = load double*, double** %42, align 8
  %454 = load i32*, i32** %43, align 8
  call void @_Z39__device_stub__normalize_weights_kernelPdiS_S_S_Pi(double* noundef %449, i32 noundef %450, double* noundef %451, double* noundef %452, double* noundef %453, i32* noundef %454)
  br label %455

455:                                              ; preds = %448, %432
  br label %456

456:                                              ; preds = %455
  br label %457

457:                                              ; preds = %456
  %458 = load i32, i32* %50, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %63, i32 noundef %458, i32 noundef 1, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %64, i32 noundef 512, i32 noundef 1, i32 noundef 1)
  %459 = bitcast { i64, i32 }* %65 to i8*
  %460 = bitcast %struct.dim3* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %459, i8* align 4 %460, i64 12, i1 false)
  %461 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %65, i32 0, i32 0
  %462 = load i64, i64* %461, align 4
  %463 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %65, i32 0, i32 1
  %464 = load i32, i32* %463, align 4
  %465 = bitcast { i64, i32 }* %66 to i8*
  %466 = bitcast %struct.dim3* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %465, i8* align 4 %466, i64 12, i1 false)
  %467 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %66, i32 0, i32 0
  %468 = load i64, i64* %467, align 4
  %469 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %66, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = call i32 @__hipPushCallConfiguration(i64 %462, i32 %464, i64 %468, i32 %470, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %482, label %473

473:                                              ; preds = %457
  %474 = load double*, double** %30, align 8
  %475 = load double*, double** %31, align 8
  %476 = load double*, double** %34, align 8
  %477 = load double*, double** %42, align 8
  %478 = load double*, double** %32, align 8
  %479 = load double*, double** %33, align 8
  %480 = load double*, double** %37, align 8
  %481 = load i32, i32* %12, align 4
  call void @_Z32__device_stub__find_index_kernelPdS_S_S_S_S_S_i(double* noundef %474, double* noundef %475, double* noundef %476, double* noundef %477, double* noundef %478, double* noundef %479, double* noundef %480, i32 noundef %481)
  br label %482

482:                                              ; preds = %473, %457
  br label %483

483:                                              ; preds = %482
  br label %484

484:                                              ; preds = %483
  %485 = load i32, i32* %45, align 4
  %486 = add nsw i32 %485, 1
  store i32 %486, i32* %45, align 4
  br label %368, !llvm.loop !36

487:                                              ; preds = %368
  %488 = call i32 @hipDeviceSynchronize()
  %489 = call noundef i64 @_Z8get_timev()
  store i64 %489, i64* %67, align 8
  %490 = load double*, double** %32, align 8
  %491 = bitcast double* %490 to i8*
  %492 = call i32 @hipFree(i8* noundef %491)
  %493 = load double*, double** %33, align 8
  %494 = bitcast double* %493 to i8*
  %495 = call i32 @hipFree(i8* noundef %494)
  %496 = load double*, double** %34, align 8
  %497 = bitcast double* %496 to i8*
  %498 = call i32 @hipFree(i8* noundef %497)
  %499 = load double*, double** %42, align 8
  %500 = bitcast double* %499 to i8*
  %501 = call i32 @hipFree(i8* noundef %500)
  %502 = load double*, double** %35, align 8
  %503 = bitcast double* %502 to i8*
  %504 = call i32 @hipFree(i8* noundef %503)
  %505 = load i8*, i8** %36, align 8
  %506 = call i32 @hipFree(i8* noundef %505)
  %507 = load i32*, i32** %38, align 8
  %508 = bitcast i32* %507 to i8*
  %509 = call i32 @hipFree(i8* noundef %508)
  %510 = load i32*, i32** %40, align 8
  %511 = bitcast i32* %510 to i8*
  %512 = call i32 @hipFree(i8* noundef %511)
  %513 = load i32*, i32** %43, align 8
  %514 = bitcast i32* %513 to i8*
  %515 = call i32 @hipFree(i8* noundef %514)
  %516 = load double*, double** %44, align 8
  %517 = bitcast double* %516 to i8*
  %518 = call i32 @hipFree(i8* noundef %517)
  %519 = call noundef i64 @_Z8get_timev()
  store i64 %519, i64* %68, align 8
  %520 = load double*, double** %25, align 8
  %521 = bitcast double* %520 to i8*
  %522 = load double*, double** %30, align 8
  %523 = bitcast double* %522 to i8*
  %524 = load i32, i32* %12, align 4
  %525 = sext i32 %524 to i64
  %526 = mul i64 8, %525
  %527 = call i32 @hipMemcpy(i8* noundef %521, i8* noundef %523, i64 noundef %526, i32 noundef 2)
  call void @_Z11check_error10hipError_t(i32 noundef %527)
  %528 = call noundef i64 @_Z8get_timev()
  store i64 %528, i64* %69, align 8
  %529 = load double*, double** %26, align 8
  %530 = bitcast double* %529 to i8*
  %531 = load double*, double** %31, align 8
  %532 = bitcast double* %531 to i8*
  %533 = load i32, i32* %12, align 4
  %534 = sext i32 %533 to i64
  %535 = mul i64 8, %534
  %536 = call i32 @hipMemcpy(i8* noundef %530, i8* noundef %532, i64 noundef %535, i32 noundef 2)
  call void @_Z11check_error10hipError_t(i32 noundef %536)
  %537 = call noundef i64 @_Z8get_timev()
  store i64 %537, i64* %70, align 8
  %538 = load double*, double** %23, align 8
  %539 = bitcast double* %538 to i8*
  %540 = load double*, double** %37, align 8
  %541 = bitcast double* %540 to i8*
  %542 = load i32, i32* %12, align 4
  %543 = sext i32 %542 to i64
  %544 = mul i64 8, %543
  %545 = call i32 @hipMemcpy(i8* noundef %539, i8* noundef %541, i64 noundef %544, i32 noundef 2)
  call void @_Z11check_error10hipError_t(i32 noundef %545)
  %546 = call noundef i64 @_Z8get_timev()
  store i64 %546, i64* %71, align 8
  store double 0.000000e+00, double* %14, align 8
  store double 0.000000e+00, double* %15, align 8
  store i32 0, i32* %20, align 4
  br label %547

547:                                              ; preds = %578, %487
  %548 = load i32, i32* %20, align 4
  %549 = load i32, i32* %12, align 4
  %550 = icmp slt i32 %548, %549
  br i1 %550, label %551, label %581

551:                                              ; preds = %547
  %552 = load double*, double** %25, align 8
  %553 = load i32, i32* %20, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds double, double* %552, i64 %554
  %556 = load double, double* %555, align 8
  %557 = load double*, double** %23, align 8
  %558 = load i32, i32* %20, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds double, double* %557, i64 %559
  %561 = load double, double* %560, align 8
  %562 = fmul contract double %556, %561
  %563 = load double, double* %14, align 8
  %564 = fadd contract double %563, %562
  store double %564, double* %14, align 8
  %565 = load double*, double** %26, align 8
  %566 = load i32, i32* %20, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds double, double* %565, i64 %567
  %569 = load double, double* %568, align 8
  %570 = load double*, double** %23, align 8
  %571 = load i32, i32* %20, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds double, double* %570, i64 %572
  %574 = load double, double* %573, align 8
  %575 = fmul contract double %569, %574
  %576 = load double, double* %15, align 8
  %577 = fadd contract double %576, %575
  store double %577, double* %15, align 8
  br label %578

578:                                              ; preds = %551
  %579 = load i32, i32* %20, align 4
  %580 = add nsw i32 %579, 1
  store i32 %580, i32* %20, align 4
  br label %547, !llvm.loop !37

581:                                              ; preds = %547
  %582 = load double, double* %14, align 8
  %583 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), double noundef %582)
  %584 = load double, double* %15, align 8
  %585 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), double noundef %584)
  %586 = load double, double* %14, align 8
  %587 = load i32, i32* %9, align 4
  %588 = sitofp i32 %587 to double
  %589 = fdiv contract double %588, 2.000000e+00
  %590 = call contract noundef double @_Z11roundDoubled(double noundef %589)
  %591 = fptosi double %590 to i32
  %592 = sitofp i32 %591 to double
  %593 = fsub contract double %586, %592
  %594 = call contract double @pow(double noundef %593, double noundef 2.000000e+00) #13
  %595 = load double, double* %15, align 8
  %596 = load i32, i32* %8, align 4
  %597 = sitofp i32 %596 to double
  %598 = fdiv contract double %597, 2.000000e+00
  %599 = call contract noundef double @_Z11roundDoubled(double noundef %598)
  %600 = fptosi double %599 to i32
  %601 = sitofp i32 %600 to double
  %602 = fsub contract double %595, %601
  %603 = call contract double @pow(double noundef %602, double noundef 2.000000e+00) #13
  %604 = fadd contract double %594, %603
  %605 = call contract double @sqrt(double noundef %604) #13
  store double %605, double* %72, align 8
  %606 = load double, double* %72, align 8
  %607 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), double noundef %606)
  %608 = load double*, double** %37, align 8
  %609 = bitcast double* %608 to i8*
  %610 = call i32 @hipFree(i8* noundef %609)
  %611 = load double*, double** %31, align 8
  %612 = bitcast double* %611 to i8*
  %613 = call i32 @hipFree(i8* noundef %612)
  %614 = load double*, double** %30, align 8
  %615 = bitcast double* %614 to i8*
  %616 = call i32 @hipFree(i8* noundef %615)
  %617 = load double*, double** %24, align 8
  %618 = bitcast double* %617 to i8*
  call void @free(i8* noundef %618) #13
  %619 = load double*, double** %25, align 8
  %620 = bitcast double* %619 to i8*
  call void @free(i8* noundef %620) #13
  %621 = load double*, double** %26, align 8
  %622 = bitcast double* %621 to i8*
  call void @free(i8* noundef %622) #13
  %623 = load double*, double** %27, align 8
  %624 = bitcast double* %623 to i8*
  call void @free(i8* noundef %624) #13
  %625 = load double*, double** %28, align 8
  %626 = bitcast double* %625 to i8*
  call void @free(i8* noundef %626) #13
  %627 = load double*, double** %29, align 8
  %628 = bitcast double* %627 to i8*
  call void @free(i8* noundef %628) #13
  %629 = load i32*, i32** %39, align 8
  %630 = bitcast i32* %629 to i8*
  call void @free(i8* noundef %630) #13
  %631 = load double*, double** %41, align 8
  %632 = bitcast double* %631 to i8*
  call void @free(i8* noundef %632) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

declare i32 @hipMalloc(i8** noundef, i64 noundef) #3

declare i32 @hipMemset(i8* noundef, i32 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #6

declare i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 comdat align 2 {
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

declare i32 @hipFree(i8* noundef) #3

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1) #11 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [57 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = bitcast [57 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 getelementptr inbounds ([57 x i8], [57 x i8]* @__const.main.usage, i32 0, i32 0), i64 57, i1 false)
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 9
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = getelementptr inbounds [57 x i8], [57 x i8]* %6, i64 0, i64 0
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* noundef %21)
  store i32 0, i32* %3, align 4
  br label %152

23:                                               ; preds = %2
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strcmp(i8* noundef %26, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #16
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %23
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 3
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strcmp(i8* noundef %32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #16
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %29
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 5
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strcmp(i8* noundef %38, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #16
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 7
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @strcmp(i8* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)) #16
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41, %35, %29, %23
  %48 = getelementptr inbounds [57 x i8], [57 x i8]* %6, i64 0, i64 0
  %49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* noundef %48)
  store i32 0, i32* %3, align 4
  br label %152

50:                                               ; preds = %41
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 2
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i8*, i8*, ...) @sscanf(i8* noundef %53, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32* noundef %7) #13
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %152

58:                                               ; preds = %50
  %59 = load i32, i32* %7, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %152

63:                                               ; preds = %58
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 4
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i8*, i8*, ...) @sscanf(i8* noundef %66, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32* noundef %8) #13
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %152

71:                                               ; preds = %63
  %72 = load i32, i32* %8, align 4
  %73 = icmp sle i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %152

76:                                               ; preds = %71
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 6
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 (i8*, i8*, ...) @sscanf(i8* noundef %79, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32* noundef %9) #13
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %152

84:                                               ; preds = %76
  %85 = load i32, i32* %9, align 4
  %86 = icmp sle i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %152

89:                                               ; preds = %84
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 8
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 (i8*, i8*, ...) @sscanf(i8* noundef %92, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32* noundef %10) #13
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %152

97:                                               ; preds = %89
  %98 = load i32, i32* %10, align 4
  %99 = icmp sle i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %152

102:                                              ; preds = %97
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 4, %104
  %106 = call noalias i8* @malloc(i64 noundef %105) #15
  %107 = bitcast i8* %106 to i32*
  store i32* %107, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %108

108:                                              ; preds = %121, %102
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %124

112:                                              ; preds = %108
  %113 = call i32 @rand() #13
  %114 = srem i32 %113, 10000000
  %115 = load i32, i32* %12, align 4
  %116 = mul nsw i32 %114, %115
  %117 = load i32*, i32** %11, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %116, i32* %120, align 4
  br label %121

121:                                              ; preds = %112
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %108, !llvm.loop !38

124:                                              ; preds = %108
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = mul i64 1, %126
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %127, %129
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = mul i64 %130, %132
  %134 = call noalias i8* @malloc(i64 noundef %133) #15
  store i8* %134, i8** %13, align 8
  %135 = call noundef i64 @_Z8get_timev()
  store i64 %135, i64* %14, align 8
  %136 = load i8*, i8** %13, align 8
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load i32*, i32** %11, align 8
  call void @_Z13videoSequencePhiiiPi(i8* noundef %136, i32 noundef %137, i32 noundef %138, i32 noundef %139, i32* noundef %140)
  %141 = call noundef i64 @_Z8get_timev()
  store i64 %141, i64* %15, align 8
  %142 = load i8*, i8** %13, align 8
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %9, align 4
  %146 = load i32*, i32** %11, align 8
  %147 = load i32, i32* %10, align 4
  call void @_Z14particleFilterPhiiiPii(i8* noundef %142, i32 noundef %143, i32 noundef %144, i32 noundef %145, i32* noundef %146, i32 noundef %147)
  %148 = call noundef i64 @_Z8get_timev()
  store i64 %148, i64* %16, align 8
  %149 = load i32*, i32** %11, align 8
  %150 = bitcast i32* %149 to i8*
  call void @free(i8* noundef %150) #13
  %151 = load i8*, i8** %13, align 8
  call void @free(i8* noundef %151) #13
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %124, %100, %95, %87, %82, %74, %69, %61, %56, %47, %20
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #12

; Function Attrs: nounwind
declare i32 @sscanf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind
declare i32 @rand() #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #6

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (double*, double*, double*, double*, double*, double*, double*, i32)** @_Z17find_index_kernelPdS_S_S_S_S_S_i to i8*), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %3 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (double*, i32, double*, double*, double*, i32*)** @_Z24normalize_weights_kernelPdiS_S_S_Pi to i8*), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %4 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (double*, i32)** @_Z10sum_kernelPdi to i8*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %5 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (double*, double*, double*, double*, double*, i32*, i32*, double*, i8*, double*, double*, i32, i32, i32, i32, i32, i32, i32*, double*)** @_Z17likelihood_kernelPdS_S_S_S_PiS0_S_PhS_S_iiiiiiS0_S_ to i8*), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @3, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @3, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
attributes #2 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nocallback nofree nounwind willreturn }
attributes #9 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #10 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readonly willreturn }

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
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
