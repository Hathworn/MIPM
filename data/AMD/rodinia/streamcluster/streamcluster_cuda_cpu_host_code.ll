; ModuleID = 'hip/streamcluster/streamcluster_cuda_cpu.cu'
source_filename = "hip/streamcluster/streamcluster_cuda_cpu.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.Points = type { i64, i32, %struct.Point* }
%struct.Point = type { float, float*, i64, float }
%union.pthread_barrier_t = type { i64, [24 x i8] }
%struct.pkmedian_arg_t = type { %struct.Points*, i64, i64, i64*, i32, %union.pthread_barrier_t* }
%class.PStream = type { i32 (...)** }
%class.SimStream = type { %class.PStream, i64 }
%class.FileStream = type { %class.PStream, %struct._IO_FILE* }

$_ZSt3logf = comdat any

$_ZN9SimStreamC2El = comdat any

$_ZN10FileStreamC2EPc = comdat any

$_ZN7PStreamC2Ev = comdat any

$_ZN9SimStream4readEPfii = comdat any

$_ZN9SimStream6ferrorEv = comdat any

$_ZN9SimStream4feofEv = comdat any

$_ZN9SimStreamD2Ev = comdat any

$_ZN9SimStreamD0Ev = comdat any

$_ZN7PStreamD2Ev = comdat any

$_ZN7PStreamD0Ev = comdat any

$_ZN10FileStream4readEPfii = comdat any

$_ZN10FileStream6ferrorEv = comdat any

$_ZN10FileStream4feofEv = comdat any

$_ZN10FileStreamD2Ev = comdat any

$_ZN10FileStreamD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZTV9SimStream = comdat any

$_ZTS9SimStream = comdat any

$_ZTS7PStream = comdat any

$_ZTI7PStream = comdat any

$_ZTI9SimStream = comdat any

$_ZTV7PStream = comdat any

$_ZTV10FileStream = comdat any

$_ZTS10FileStream = comdat any

$_ZTI10FileStream = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@isCoordChanged = dso_local global i8 0, align 1
@serial_t = dso_local global double 0.000000e+00, align 8
@cpu_to_gpu_t = dso_local global double 0.000000e+00, align 8
@gpu_to_cpu_t = dso_local global double 0.000000e+00, align 8
@alloc_t = dso_local global double 0.000000e+00, align 8
@kernel_t = dso_local global double 0.000000e+00, align 8
@free_t = dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@_ZL5nproc = internal global i32 0, align 4
@_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE9totalcost = internal global float 0.000000e+00, align 4
@_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE4open = internal global i8 0, align 1
@_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE5costs = internal global float* null, align 8
@_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i = internal global i32 0, align 4
@_ZL9is_center = internal global i8* null, align 8
@_ZL12center_table = internal global i32* null, align 8
@_ZL17switch_membership = internal global i8* null, align 8
@_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k = internal global i64 0, align 8
@_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE8feasible = internal global i32* null, align 8
@_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE11numfeasible = internal global i32 0, align 4
@_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE4hizs = internal global float* null, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"error opening %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%lf\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%lf \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"not enough memory for a chunk!\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"read %d points\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"error reading data!\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"finish local search\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"oops! no more space for centers\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"PARSEC Benchmark Suite\0A\00", align 1
@.str.13 = private unnamed_addr constant [64 x i8] c"usage: %s k1 k2 d n chunksize clustersize infile outfile nproc\0A\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"  k1:          Min. number of centers allowed\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"  k2:          Max. number of centers allowed\0A\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"  d:           Dimension of each data point\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"  n:           Number of data points\0A\00", align 1
@.str.18 = private unnamed_addr constant [57 x i8] c"  chunksize:   Number of data points to handle per step\0A\00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c"  clustersize: Maximum number of intermediate centers\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"  infile:      Input file (if n<=0)\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"  outfile:     Output file\0A\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"  nproc:       Number of threads to use\0A\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.24 = private unnamed_addr constant [77 x i8] c"if n > 0, points will be randomly generated instead of reading from infile.\0A\00", align 1
@_ZTV9SimStream = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI9SimStream to i8*), i8* bitcast (i64 (%class.SimStream*, float*, i32, i32)* @_ZN9SimStream4readEPfii to i8*), i8* bitcast (i32 (%class.SimStream*)* @_ZN9SimStream6ferrorEv to i8*), i8* bitcast (i32 (%class.SimStream*)* @_ZN9SimStream4feofEv to i8*), i8* bitcast (void (%class.SimStream*)* @_ZN9SimStreamD2Ev to i8*), i8* bitcast (void (%class.SimStream*)* @_ZN9SimStreamD0Ev to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS9SimStream = linkonce_odr dso_local constant [11 x i8] c"9SimStream\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS7PStream = linkonce_odr dso_local constant [9 x i8] c"7PStream\00", comdat, align 1
@_ZTI7PStream = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_ZTS7PStream, i32 0, i32 0) }, comdat, align 8
@_ZTI9SimStream = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @_ZTS9SimStream, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7PStream to i8*) }, comdat, align 8
@_ZTV7PStream = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI7PStream to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void (%class.PStream*)* @_ZN7PStreamD2Ev to i8*), i8* bitcast (void (%class.PStream*)* @_ZN7PStreamD0Ev to i8*)] }, comdat, align 8
@_ZTV10FileStream = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI10FileStream to i8*), i8* bitcast (i64 (%class.FileStream*, float*, i32, i32)* @_ZN10FileStream4readEPfii to i8*), i8* bitcast (i32 (%class.FileStream*)* @_ZN10FileStream6ferrorEv to i8*), i8* bitcast (i32 (%class.FileStream*)* @_ZN10FileStream4feofEv to i8*), i8* bitcast (void (%class.FileStream*)* @_ZN10FileStreamD2Ev to i8*), i8* bitcast (void (%class.FileStream*)* @_ZN10FileStreamD0Ev to i8*)] }, comdat, align 8
@.str.25 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"error opening file %s\0A.\00", align 1
@_ZTS10FileStream = linkonce_odr dso_local constant [13 x i8] c"10FileStream\00", comdat, align 1
@_ZTI10FileStream = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @_ZTS10FileStream, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7PStream to i8*) }, comdat, align 8
@.str.27 = private unnamed_addr constant [21 x i8] c"closing file stream\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_streamcluster_cuda_cpu.cu, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z9inttofileiPc(i32 noundef %0, i8* noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call %struct._IO_FILE* @fopen(i8* noundef %6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %7, %struct._IO_FILE** %5, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %9)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %12 = call i32 @fclose(%struct._IO_FILE* noundef %11)
  ret void
}

declare %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef double @_Z7gettimev() #5 {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @gettimeofday(%struct.timeval* noundef %1, %struct.timezone* noundef null) #3
  %3 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = sitofp i64 %4 to double
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = sitofp i64 %7 to double
  %9 = fmul contract double %8, 0x3EB0C6F7A0B5ED8D
  %10 = fadd contract double %5, %9
  ret double %10
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* noundef, %struct.timezone* noundef) #2

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z11isIdenticalPfS_i(float* noundef %0, float* noundef %1, i32 noundef %2) #5 {
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %10

10:                                               ; preds = %35, %3
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi i1 [ false, %10 ], [ %16, %13 ]
  br i1 %18, label %19, label %36

19:                                               ; preds = %17
  %20 = load float*, float** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float* %20, i64 %22
  %24 = load float, float* %23, align 4
  %25 = load float*, float** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  %29 = load float, float* %28, align 4
  %30 = fcmp contract une float %24, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %35

32:                                               ; preds = %19
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %32, %31
  br label %10, !llvm.loop !6

36:                                               ; preds = %17
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %41

40:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z7shuffleP6Points(%struct.Points* noundef %0) #5 {
  %2 = alloca %struct.Points*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.Point, align 8
  store %struct.Points* %0, %struct.Points** %2, align 8
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %49, %1
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.Points*, %struct.Points** %2, align 8
  %9 = getelementptr inbounds %struct.Points, %struct.Points* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %10, 1
  %12 = icmp slt i64 %7, %11
  br i1 %12, label %13, label %52

13:                                               ; preds = %6
  %14 = call i64 @lrand48() #3
  %15 = load %struct.Points*, %struct.Points** %2, align 8
  %16 = getelementptr inbounds %struct.Points, %struct.Points* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = sub nsw i64 %17, %18
  %20 = srem i64 %14, %19
  %21 = load i64, i64* %3, align 8
  %22 = add nsw i64 %20, %21
  store i64 %22, i64* %4, align 8
  %23 = load %struct.Points*, %struct.Points** %2, align 8
  %24 = getelementptr inbounds %struct.Points, %struct.Points* %23, i32 0, i32 2
  %25 = load %struct.Point*, %struct.Point** %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds %struct.Point, %struct.Point* %25, i64 %26
  %28 = bitcast %struct.Point* %5 to i8*
  %29 = bitcast %struct.Point* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 32, i1 false)
  %30 = load %struct.Points*, %struct.Points** %2, align 8
  %31 = getelementptr inbounds %struct.Points, %struct.Points* %30, i32 0, i32 2
  %32 = load %struct.Point*, %struct.Point** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds %struct.Point, %struct.Point* %32, i64 %33
  %35 = load %struct.Points*, %struct.Points** %2, align 8
  %36 = getelementptr inbounds %struct.Points, %struct.Points* %35, i32 0, i32 2
  %37 = load %struct.Point*, %struct.Point** %36, align 8
  %38 = load i64, i64* %3, align 8
  %39 = getelementptr inbounds %struct.Point, %struct.Point* %37, i64 %38
  %40 = bitcast %struct.Point* %39 to i8*
  %41 = bitcast %struct.Point* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 32, i1 false)
  %42 = load %struct.Points*, %struct.Points** %2, align 8
  %43 = getelementptr inbounds %struct.Points, %struct.Points* %42, i32 0, i32 2
  %44 = load %struct.Point*, %struct.Point** %43, align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds %struct.Point, %struct.Point* %44, i64 %45
  %47 = bitcast %struct.Point* %46 to i8*
  %48 = bitcast %struct.Point* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 32, i1 false)
  br label %49

49:                                               ; preds = %13
  %50 = load i64, i64* %3, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %3, align 8
  br label %6, !llvm.loop !8

52:                                               ; preds = %6
  ret void
}

; Function Attrs: nounwind
declare i64 @lrand48() #2

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z10intshufflePii(i32* noundef %0, i32 noundef %1) #5 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %37, %2
  %9 = load i64, i64* %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp slt i64 %9, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %8
  %14 = call i64 @lrand48() #3
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %5, align 8
  %18 = sub nsw i64 %16, %17
  %19 = srem i64 %14, %18
  %20 = load i64, i64* %5, align 8
  %21 = add nsw i64 %19, %20
  store i64 %21, i64* %6, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 %33, i32* %36, align 4
  br label %37

37:                                               ; preds = %13
  %38 = load i64, i64* %5, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %5, align 8
  br label %8, !llvm.loop !9

40:                                               ; preds = %8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef float @_Z4dist5PointS_i(%struct.Point* noundef byval(%struct.Point) align 8 %0, %struct.Point* noundef byval(%struct.Point) align 8 %1, i32 noundef %2) #5 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  store i32 %2, i32* %4, align 4
  store float 0.000000e+00, float* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %41, %3
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %44

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Point, %struct.Point* %0, i32 0, i32 1
  %13 = load float*, float** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float, float* %13, i64 %15
  %17 = load float, float* %16, align 4
  %18 = getelementptr inbounds %struct.Point, %struct.Point* %1, i32 0, i32 1
  %19 = load float*, float** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %19, i64 %21
  %23 = load float, float* %22, align 4
  %24 = fsub contract float %17, %23
  %25 = getelementptr inbounds %struct.Point, %struct.Point* %0, i32 0, i32 1
  %26 = load float*, float** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %26, i64 %28
  %30 = load float, float* %29, align 4
  %31 = getelementptr inbounds %struct.Point, %struct.Point* %1, i32 0, i32 1
  %32 = load float*, float** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %32, i64 %34
  %36 = load float, float* %35, align 4
  %37 = fsub contract float %30, %36
  %38 = fmul contract float %24, %37
  %39 = load float, float* %6, align 4
  %40 = fadd contract float %39, %38
  store float %40, float* %6, align 4
  br label %41

41:                                               ; preds = %11
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %7, !llvm.loop !10

44:                                               ; preds = %7
  %45 = load float, float* %6, align 4
  ret float %45
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef float @_Z7pspeedyP6PointsfPliP17pthread_barrier_t(%struct.Points* noundef %0, float noundef %1, i64* noundef %2, i32 noundef %3, %union.pthread_barrier_t* noundef %4) #5 {
  %6 = alloca %struct.Points*, align 8
  %7 = alloca float, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.pthread_barrier_t*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca %struct.Point, align 8
  %17 = alloca %struct.Point, align 8
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca %struct.Point, align 8
  %21 = alloca %struct.Point, align 8
  %22 = alloca i8, align 1
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  %25 = alloca %struct.Point, align 8
  %26 = alloca %struct.Point, align 8
  %27 = alloca float, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.Points* %0, %struct.Points** %6, align 8
  store float %1, float* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store %union.pthread_barrier_t* %4, %union.pthread_barrier_t** %10, align 8
  %30 = load %struct.Points*, %struct.Points** %6, align 8
  %31 = getelementptr inbounds %struct.Points, %struct.Points* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @_ZL5nproc, align 4
  %34 = sext i32 %33 to i64
  %35 = sdiv i64 %32, %34
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = mul nsw i64 %36, %38
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %11, align 8
  %42 = add nsw i64 %40, %41
  store i64 %42, i64* %13, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @_ZL5nproc, align 4
  %45 = sub nsw i32 %44, 1
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %5
  %48 = load %struct.Points*, %struct.Points** %6, align 8
  %49 = getelementptr inbounds %struct.Points, %struct.Points* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %13, align 8
  br label %51

51:                                               ; preds = %47, %5
  %52 = load i64, i64* %12, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %102, %51
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %13, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %105

59:                                               ; preds = %54
  %60 = load %struct.Points*, %struct.Points** %6, align 8
  %61 = getelementptr inbounds %struct.Points, %struct.Points* %60, i32 0, i32 2
  %62 = load %struct.Point*, %struct.Point** %61, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.Point, %struct.Point* %62, i64 %64
  %66 = bitcast %struct.Point* %16 to i8*
  %67 = bitcast %struct.Point* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 32, i1 false)
  %68 = load %struct.Points*, %struct.Points** %6, align 8
  %69 = getelementptr inbounds %struct.Points, %struct.Points* %68, i32 0, i32 2
  %70 = load %struct.Point*, %struct.Point** %69, align 8
  %71 = getelementptr inbounds %struct.Point, %struct.Point* %70, i64 0
  %72 = bitcast %struct.Point* %17 to i8*
  %73 = bitcast %struct.Point* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 32, i1 false)
  %74 = load %struct.Points*, %struct.Points** %6, align 8
  %75 = getelementptr inbounds %struct.Points, %struct.Points* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call contract noundef float @_Z4dist5PointS_i(%struct.Point* noundef byval(%struct.Point) align 8 %16, %struct.Point* noundef byval(%struct.Point) align 8 %17, i32 noundef %76)
  store float %77, float* %15, align 4
  %78 = load float, float* %15, align 4
  %79 = load %struct.Points*, %struct.Points** %6, align 8
  %80 = getelementptr inbounds %struct.Points, %struct.Points* %79, i32 0, i32 2
  %81 = load %struct.Point*, %struct.Point** %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.Point, %struct.Point* %81, i64 %83
  %85 = getelementptr inbounds %struct.Point, %struct.Point* %84, i32 0, i32 0
  %86 = load float, float* %85, align 8
  %87 = fmul contract float %78, %86
  %88 = load %struct.Points*, %struct.Points** %6, align 8
  %89 = getelementptr inbounds %struct.Points, %struct.Points* %88, i32 0, i32 2
  %90 = load %struct.Point*, %struct.Point** %89, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.Point, %struct.Point* %90, i64 %92
  %94 = getelementptr inbounds %struct.Point, %struct.Point* %93, i32 0, i32 3
  store float %87, float* %94, align 8
  %95 = load %struct.Points*, %struct.Points** %6, align 8
  %96 = getelementptr inbounds %struct.Points, %struct.Points* %95, i32 0, i32 2
  %97 = load %struct.Point*, %struct.Point** %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.Point, %struct.Point* %97, i64 %99
  %101 = getelementptr inbounds %struct.Point, %struct.Point* %100, i32 0, i32 2
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %59
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  br label %54, !llvm.loop !11

105:                                              ; preds = %54
  %106 = load i32, i32* %9, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load i64*, i64** %8, align 8
  store i64 1, i64* %109, align 8
  %110 = load i32, i32* @_ZL5nproc, align 4
  %111 = sext i32 %110 to i64
  %112 = mul i64 4, %111
  %113 = call noalias i8* @malloc(i64 noundef %112) #19
  %114 = bitcast i8* %113 to float*
  store float* %114, float** @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE5costs, align 8
  br label %115

115:                                              ; preds = %108, %105
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %208

118:                                              ; preds = %115
  br label %119

119:                                              ; preds = %118, %206
  %120 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  %121 = sext i32 %120 to i64
  %122 = load %struct.Points*, %struct.Points** %6, align 8
  %123 = getelementptr inbounds %struct.Points, %struct.Points* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp sge i64 %121, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  br label %207

127:                                              ; preds = %119
  %128 = load i64, i64* %12, align 8
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %18, align 4
  br label %130

130:                                              ; preds = %203, %127
  %131 = load i32, i32* %18, align 4
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* %13, align 8
  %134 = icmp slt i64 %132, %133
  br i1 %134, label %135, label %206

135:                                              ; preds = %130
  %136 = load %struct.Points*, %struct.Points** %6, align 8
  %137 = getelementptr inbounds %struct.Points, %struct.Points* %136, i32 0, i32 2
  %138 = load %struct.Point*, %struct.Point** %137, align 8
  %139 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.Point, %struct.Point* %138, i64 %140
  %142 = bitcast %struct.Point* %20 to i8*
  %143 = bitcast %struct.Point* %141 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %142, i8* align 8 %143, i64 32, i1 false)
  %144 = load %struct.Points*, %struct.Points** %6, align 8
  %145 = getelementptr inbounds %struct.Points, %struct.Points* %144, i32 0, i32 2
  %146 = load %struct.Point*, %struct.Point** %145, align 8
  %147 = load i32, i32* %18, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.Point, %struct.Point* %146, i64 %148
  %150 = bitcast %struct.Point* %21 to i8*
  %151 = bitcast %struct.Point* %149 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %150, i8* align 8 %151, i64 32, i1 false)
  %152 = load %struct.Points*, %struct.Points** %6, align 8
  %153 = getelementptr inbounds %struct.Points, %struct.Points* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call contract noundef float @_Z4dist5PointS_i(%struct.Point* noundef byval(%struct.Point) align 8 %20, %struct.Point* noundef byval(%struct.Point) align 8 %21, i32 noundef %154)
  store float %155, float* %19, align 4
  %156 = load float, float* %19, align 4
  %157 = load %struct.Points*, %struct.Points** %6, align 8
  %158 = getelementptr inbounds %struct.Points, %struct.Points* %157, i32 0, i32 2
  %159 = load %struct.Point*, %struct.Point** %158, align 8
  %160 = load i32, i32* %18, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.Point, %struct.Point* %159, i64 %161
  %163 = getelementptr inbounds %struct.Point, %struct.Point* %162, i32 0, i32 0
  %164 = load float, float* %163, align 8
  %165 = fmul contract float %156, %164
  %166 = load %struct.Points*, %struct.Points** %6, align 8
  %167 = getelementptr inbounds %struct.Points, %struct.Points* %166, i32 0, i32 2
  %168 = load %struct.Point*, %struct.Point** %167, align 8
  %169 = load i32, i32* %18, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.Point, %struct.Point* %168, i64 %170
  %172 = getelementptr inbounds %struct.Point, %struct.Point* %171, i32 0, i32 3
  %173 = load float, float* %172, align 8
  %174 = fcmp contract olt float %165, %173
  br i1 %174, label %175, label %202

175:                                              ; preds = %135
  %176 = load float, float* %19, align 4
  %177 = load %struct.Points*, %struct.Points** %6, align 8
  %178 = getelementptr inbounds %struct.Points, %struct.Points* %177, i32 0, i32 2
  %179 = load %struct.Point*, %struct.Point** %178, align 8
  %180 = load i32, i32* %18, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.Point, %struct.Point* %179, i64 %181
  %183 = getelementptr inbounds %struct.Point, %struct.Point* %182, i32 0, i32 0
  %184 = load float, float* %183, align 8
  %185 = fmul contract float %176, %184
  %186 = load %struct.Points*, %struct.Points** %6, align 8
  %187 = getelementptr inbounds %struct.Points, %struct.Points* %186, i32 0, i32 2
  %188 = load %struct.Point*, %struct.Point** %187, align 8
  %189 = load i32, i32* %18, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.Point, %struct.Point* %188, i64 %190
  %192 = getelementptr inbounds %struct.Point, %struct.Point* %191, i32 0, i32 3
  store float %185, float* %192, align 8
  %193 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  %194 = sext i32 %193 to i64
  %195 = load %struct.Points*, %struct.Points** %6, align 8
  %196 = getelementptr inbounds %struct.Points, %struct.Points* %195, i32 0, i32 2
  %197 = load %struct.Point*, %struct.Point** %196, align 8
  %198 = load i32, i32* %18, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.Point, %struct.Point* %197, i64 %199
  %201 = getelementptr inbounds %struct.Point, %struct.Point* %200, i32 0, i32 2
  store i64 %194, i64* %201, align 8
  br label %202

202:                                              ; preds = %175, %135
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %18, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %18, align 4
  br label %130, !llvm.loop !12

206:                                              ; preds = %130
  br label %119, !llvm.loop !13

207:                                              ; preds = %126
  br label %322

208:                                              ; preds = %115
  store i32 1, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  br label %209

209:                                              ; preds = %318, %208
  %210 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  %211 = sext i32 %210 to i64
  %212 = load %struct.Points*, %struct.Points** %6, align 8
  %213 = getelementptr inbounds %struct.Points, %struct.Points* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp slt i64 %211, %214
  br i1 %215, label %216, label %321

216:                                              ; preds = %209
  %217 = call i64 @lrand48() #3
  %218 = sitofp i64 %217 to float
  %219 = fdiv contract float %218, 0x41E0000000000000
  %220 = load %struct.Points*, %struct.Points** %6, align 8
  %221 = getelementptr inbounds %struct.Points, %struct.Points* %220, i32 0, i32 2
  %222 = load %struct.Point*, %struct.Point** %221, align 8
  %223 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.Point, %struct.Point* %222, i64 %224
  %226 = getelementptr inbounds %struct.Point, %struct.Point* %225, i32 0, i32 3
  %227 = load float, float* %226, align 8
  %228 = load float, float* %7, align 4
  %229 = fdiv contract float %227, %228
  %230 = fcmp contract olt float %219, %229
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %22, align 1
  %232 = load i8, i8* %22, align 1
  %233 = trunc i8 %232 to i1
  br i1 %233, label %234, label %317

234:                                              ; preds = %216
  %235 = load i64*, i64** %8, align 8
  %236 = load i64, i64* %235, align 8
  %237 = add nsw i64 %236, 1
  store i64 %237, i64* %235, align 8
  store i8 1, i8* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE4open, align 1
  %238 = load i64, i64* %12, align 8
  %239 = trunc i64 %238 to i32
  store i32 %239, i32* %23, align 4
  br label %240

240:                                              ; preds = %313, %234
  %241 = load i32, i32* %23, align 4
  %242 = sext i32 %241 to i64
  %243 = load i64, i64* %13, align 8
  %244 = icmp slt i64 %242, %243
  br i1 %244, label %245, label %316

245:                                              ; preds = %240
  %246 = load %struct.Points*, %struct.Points** %6, align 8
  %247 = getelementptr inbounds %struct.Points, %struct.Points* %246, i32 0, i32 2
  %248 = load %struct.Point*, %struct.Point** %247, align 8
  %249 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.Point, %struct.Point* %248, i64 %250
  %252 = bitcast %struct.Point* %25 to i8*
  %253 = bitcast %struct.Point* %251 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %252, i8* align 8 %253, i64 32, i1 false)
  %254 = load %struct.Points*, %struct.Points** %6, align 8
  %255 = getelementptr inbounds %struct.Points, %struct.Points* %254, i32 0, i32 2
  %256 = load %struct.Point*, %struct.Point** %255, align 8
  %257 = load i32, i32* %23, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.Point, %struct.Point* %256, i64 %258
  %260 = bitcast %struct.Point* %26 to i8*
  %261 = bitcast %struct.Point* %259 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %260, i8* align 8 %261, i64 32, i1 false)
  %262 = load %struct.Points*, %struct.Points** %6, align 8
  %263 = getelementptr inbounds %struct.Points, %struct.Points* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = call contract noundef float @_Z4dist5PointS_i(%struct.Point* noundef byval(%struct.Point) align 8 %25, %struct.Point* noundef byval(%struct.Point) align 8 %26, i32 noundef %264)
  store float %265, float* %24, align 4
  %266 = load float, float* %24, align 4
  %267 = load %struct.Points*, %struct.Points** %6, align 8
  %268 = getelementptr inbounds %struct.Points, %struct.Points* %267, i32 0, i32 2
  %269 = load %struct.Point*, %struct.Point** %268, align 8
  %270 = load i32, i32* %23, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.Point, %struct.Point* %269, i64 %271
  %273 = getelementptr inbounds %struct.Point, %struct.Point* %272, i32 0, i32 0
  %274 = load float, float* %273, align 8
  %275 = fmul contract float %266, %274
  %276 = load %struct.Points*, %struct.Points** %6, align 8
  %277 = getelementptr inbounds %struct.Points, %struct.Points* %276, i32 0, i32 2
  %278 = load %struct.Point*, %struct.Point** %277, align 8
  %279 = load i32, i32* %23, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.Point, %struct.Point* %278, i64 %280
  %282 = getelementptr inbounds %struct.Point, %struct.Point* %281, i32 0, i32 3
  %283 = load float, float* %282, align 8
  %284 = fcmp contract olt float %275, %283
  br i1 %284, label %285, label %312

285:                                              ; preds = %245
  %286 = load float, float* %24, align 4
  %287 = load %struct.Points*, %struct.Points** %6, align 8
  %288 = getelementptr inbounds %struct.Points, %struct.Points* %287, i32 0, i32 2
  %289 = load %struct.Point*, %struct.Point** %288, align 8
  %290 = load i32, i32* %23, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.Point, %struct.Point* %289, i64 %291
  %293 = getelementptr inbounds %struct.Point, %struct.Point* %292, i32 0, i32 0
  %294 = load float, float* %293, align 8
  %295 = fmul contract float %286, %294
  %296 = load %struct.Points*, %struct.Points** %6, align 8
  %297 = getelementptr inbounds %struct.Points, %struct.Points* %296, i32 0, i32 2
  %298 = load %struct.Point*, %struct.Point** %297, align 8
  %299 = load i32, i32* %23, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.Point, %struct.Point* %298, i64 %300
  %302 = getelementptr inbounds %struct.Point, %struct.Point* %301, i32 0, i32 3
  store float %295, float* %302, align 8
  %303 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  %304 = sext i32 %303 to i64
  %305 = load %struct.Points*, %struct.Points** %6, align 8
  %306 = getelementptr inbounds %struct.Points, %struct.Points* %305, i32 0, i32 2
  %307 = load %struct.Point*, %struct.Point** %306, align 8
  %308 = load i32, i32* %23, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.Point, %struct.Point* %307, i64 %309
  %311 = getelementptr inbounds %struct.Point, %struct.Point* %310, i32 0, i32 2
  store i64 %304, i64* %311, align 8
  br label %312

312:                                              ; preds = %285, %245
  br label %313

313:                                              ; preds = %312
  %314 = load i32, i32* %23, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %23, align 4
  br label %240, !llvm.loop !14

316:                                              ; preds = %240
  store i8 0, i8* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE4open, align 1
  br label %317

317:                                              ; preds = %316, %216
  br label %318

318:                                              ; preds = %317
  %319 = load i32, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE1i, align 4
  br label %209, !llvm.loop !15

321:                                              ; preds = %209
  store i8 1, i8* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE4open, align 1
  br label %322

322:                                              ; preds = %321, %207
  store i8 0, i8* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE4open, align 1
  store float 0.000000e+00, float* %27, align 4
  %323 = load i64, i64* %12, align 8
  %324 = trunc i64 %323 to i32
  store i32 %324, i32* %28, align 4
  br label %325

325:                                              ; preds = %341, %322
  %326 = load i32, i32* %28, align 4
  %327 = sext i32 %326 to i64
  %328 = load i64, i64* %13, align 8
  %329 = icmp slt i64 %327, %328
  br i1 %329, label %330, label %344

330:                                              ; preds = %325
  %331 = load %struct.Points*, %struct.Points** %6, align 8
  %332 = getelementptr inbounds %struct.Points, %struct.Points* %331, i32 0, i32 2
  %333 = load %struct.Point*, %struct.Point** %332, align 8
  %334 = load i32, i32* %28, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.Point, %struct.Point* %333, i64 %335
  %337 = getelementptr inbounds %struct.Point, %struct.Point* %336, i32 0, i32 3
  %338 = load float, float* %337, align 8
  %339 = load float, float* %27, align 4
  %340 = fadd contract float %339, %338
  store float %340, float* %27, align 4
  br label %341

341:                                              ; preds = %330
  %342 = load i32, i32* %28, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %28, align 4
  br label %325, !llvm.loop !16

344:                                              ; preds = %325
  %345 = load float, float* %27, align 4
  %346 = load float*, float** @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE5costs, align 8
  %347 = load i32, i32* %9, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds float, float* %346, i64 %348
  store float %345, float* %349, align 4
  %350 = load i32, i32* %9, align 4
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %376

352:                                              ; preds = %344
  %353 = load float, float* %7, align 4
  %354 = load i64*, i64** %8, align 8
  %355 = load i64, i64* %354, align 8
  %356 = sitofp i64 %355 to float
  %357 = fmul contract float %353, %356
  store float %357, float* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE9totalcost, align 4
  store i32 0, i32* %29, align 4
  br label %358

358:                                              ; preds = %370, %352
  %359 = load i32, i32* %29, align 4
  %360 = load i32, i32* @_ZL5nproc, align 4
  %361 = icmp slt i32 %359, %360
  br i1 %361, label %362, label %373

362:                                              ; preds = %358
  %363 = load float*, float** @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE5costs, align 8
  %364 = load i32, i32* %29, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds float, float* %363, i64 %365
  %367 = load float, float* %366, align 4
  %368 = load float, float* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE9totalcost, align 4
  %369 = fadd contract float %368, %367
  store float %369, float* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE9totalcost, align 4
  br label %370

370:                                              ; preds = %362
  %371 = load i32, i32* %29, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %29, align 4
  br label %358, !llvm.loop !17

373:                                              ; preds = %358
  %374 = load float*, float** @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE5costs, align 8
  %375 = bitcast float* %374 to i8*
  call void @free(i8* noundef %375) #3
  br label %376

376:                                              ; preds = %373, %344
  %377 = load float, float* @_ZZ7pspeedyP6PointsfPliP17pthread_barrier_tE9totalcost, align 4
  ret float %377
}

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #7

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef float @_Z3pFLP6PointsPiifPliflfiP17pthread_barrier_t(%struct.Points* noundef %0, i32* noundef %1, i32 noundef %2, float noundef %3, i64* noundef %4, i32 noundef %5, float noundef %6, i64 noundef %7, float noundef %8, i32 noundef %9, %union.pthread_barrier_t* noundef %10) #4 {
  %12 = alloca %struct.Points*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca i64, align 8
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca %union.pthread_barrier_t*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca float, align 4
  %26 = alloca i64, align 8
  store %struct.Points* %0, %struct.Points** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32 %2, i32* %14, align 4
  store float %3, float* %15, align 4
  store i64* %4, i64** %16, align 8
  store i32 %5, i32* %17, align 4
  store float %6, float* %18, align 4
  store i64 %7, i64* %19, align 8
  store float %8, float* %20, align 4
  store i32 %9, i32* %21, align 4
  store %union.pthread_barrier_t* %10, %union.pthread_barrier_t** %22, align 8
  %27 = load float, float* %18, align 4
  store float %27, float* %25, align 4
  br label %28

28:                                               ; preds = %76, %11
  %29 = load float, float* %25, align 4
  %30 = load float, float* %18, align 4
  %31 = fdiv contract float %29, %30
  %32 = fpext float %31 to double
  %33 = load float, float* %20, align 4
  %34 = fpext float %33 to double
  %35 = fmul contract double 1.000000e+00, %34
  %36 = fcmp contract ogt double %32, %35
  br i1 %36, label %37, label %80

37:                                               ; preds = %28
  store float 0.000000e+00, float* %25, align 4
  %38 = load %struct.Points*, %struct.Points** %12, align 8
  %39 = getelementptr inbounds %struct.Points, %struct.Points* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %26, align 8
  %41 = load i32, i32* %21, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32*, i32** %13, align 8
  %45 = load i32, i32* %14, align 4
  call void @_Z10intshufflePii(i32* noundef %44, i32 noundef %45)
  br label %46

46:                                               ; preds = %43, %37
  store i64 0, i64* %23, align 8
  br label %47

47:                                               ; preds = %73, %46
  %48 = load i64, i64* %23, align 8
  %49 = load i64, i64* %19, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %76

51:                                               ; preds = %47
  %52 = load i64, i64* %23, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = srem i64 %52, %54
  store i64 %55, i64* %24, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load i64, i64* %24, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = load %struct.Points*, %struct.Points** %12, align 8
  %62 = load float, float* %15, align 4
  %63 = load i64*, i64** %16, align 8
  %64 = load i32, i32* %17, align 4
  %65 = load i8*, i8** @_ZL9is_center, align 8
  %66 = load i32*, i32** @_ZL12center_table, align 8
  %67 = load i8*, i8** @_ZL17switch_membership, align 8
  %68 = load i8, i8* @isCoordChanged, align 1
  %69 = trunc i8 %68 to i1
  %70 = call contract noundef float @_Z5pgainlP6PointsfPliPbPiS2_bPdS4_S4_S4_S4_S4_(i64 noundef %60, %struct.Points* noundef %61, float noundef %62, i64* noundef %63, i32 noundef %64, i8* noundef %65, i32* noundef %66, i8* noundef %67, i1 noundef zeroext %69, double* noundef @serial_t, double* noundef @cpu_to_gpu_t, double* noundef @gpu_to_cpu_t, double* noundef @alloc_t, double* noundef @kernel_t, double* noundef @free_t)
  %71 = load float, float* %25, align 4
  %72 = fadd contract float %71, %70
  store float %72, float* %25, align 4
  br label %73

73:                                               ; preds = %51
  %74 = load i64, i64* %23, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %23, align 8
  br label %47, !llvm.loop !18

76:                                               ; preds = %47
  %77 = load float, float* %25, align 4
  %78 = load float, float* %18, align 4
  %79 = fsub contract float %78, %77
  store float %79, float* %18, align 4
  br label %28, !llvm.loop !19

80:                                               ; preds = %28
  %81 = load float, float* %18, align 4
  ret float %81
}

declare noundef float @_Z5pgainlP6PointsfPliPbPiS2_bPdS4_S4_S4_S4_S4_(i64 noundef, %struct.Points* noundef, float noundef, i64* noundef, i32 noundef, i8* noundef, i32* noundef, i8* noundef, i1 noundef zeroext, double* noundef, double* noundef, double* noundef, double* noundef, double* noundef, double* noundef) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_Z19selectfeasible_fastP6PointsPPiiiP17pthread_barrier_t(%struct.Points* noundef %0, i32** noundef %1, i32 noundef %2, i32 noundef %3, %union.pthread_barrier_t* noundef %4) #4 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.Points*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.pthread_barrier_t*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca float, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.Points* %0, %struct.Points** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %union.pthread_barrier_t* %4, %union.pthread_barrier_t** %11, align 8
  %24 = load %struct.Points*, %struct.Points** %7, align 8
  %25 = getelementptr inbounds %struct.Points, %struct.Points* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = sitofp i32 %28 to float
  %30 = load i32, i32* %9, align 4
  %31 = mul nsw i32 3, %30
  %32 = sitofp i32 %31 to float
  %33 = load i32, i32* %9, align 4
  %34 = sitofp i32 %33 to float
  %35 = call contract noundef float @_ZSt3logf(float noundef %34)
  %36 = fmul contract float %32, %35
  %37 = fcmp contract ogt float %29, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %5
  %39 = load i32, i32* %9, align 4
  %40 = mul nsw i32 3, %39
  %41 = sitofp i32 %40 to float
  %42 = load i32, i32* %9, align 4
  %43 = sitofp i32 %42 to float
  %44 = call contract noundef float @_ZSt3logf(float noundef %43)
  %45 = fmul contract float %41, %44
  %46 = fptosi float %45 to i32
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %38, %5
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = call noalias i8* @malloc(i64 noundef %50) #19
  %52 = bitcast i8* %51 to i32*
  %53 = load i32**, i32*** %8, align 8
  store i32* %52, i32** %53, align 8
  store i64 0, i64* %15, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %16, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.Points*, %struct.Points** %7, align 8
  %59 = getelementptr inbounds %struct.Points, %struct.Points* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %47
  %63 = load i64, i64* %15, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %21, align 4
  br label %65

65:                                               ; preds = %77, %62
  %66 = load i32, i32* %21, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %16, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load i32, i32* %21, align 4
  %72 = load i32**, i32*** %8, align 8
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %21, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %71, i32* %76, align 4
  br label %77

77:                                               ; preds = %70
  %78 = load i32, i32* %21, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %21, align 4
  br label %65, !llvm.loop !20

80:                                               ; preds = %65
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %6, align 4
  br label %201

82:                                               ; preds = %47
  %83 = load %struct.Points*, %struct.Points** %7, align 8
  %84 = getelementptr inbounds %struct.Points, %struct.Points* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = mul i64 4, %85
  %87 = call noalias i8* @malloc(i64 noundef %86) #19
  %88 = bitcast i8* %87 to float*
  store float* %88, float** %13, align 8
  %89 = load %struct.Points*, %struct.Points** %7, align 8
  %90 = getelementptr inbounds %struct.Points, %struct.Points* %89, i32 0, i32 2
  %91 = load %struct.Point*, %struct.Point** %90, align 8
  %92 = getelementptr inbounds %struct.Point, %struct.Point* %91, i64 0
  %93 = getelementptr inbounds %struct.Point, %struct.Point* %92, i32 0, i32 0
  %94 = load float, float* %93, align 8
  %95 = load float*, float** %13, align 8
  %96 = getelementptr inbounds float, float* %95, i64 0
  store float %94, float* %96, align 4
  store float 0.000000e+00, float* %14, align 4
  store i32 1, i32* %22, align 4
  br label %97

97:                                               ; preds = %124, %82
  %98 = load i32, i32* %22, align 4
  %99 = sext i32 %98 to i64
  %100 = load %struct.Points*, %struct.Points** %7, align 8
  %101 = getelementptr inbounds %struct.Points, %struct.Points* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp slt i64 %99, %102
  br i1 %103, label %104, label %127

104:                                              ; preds = %97
  %105 = load float*, float** %13, align 8
  %106 = load i32, i32* %22, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %105, i64 %108
  %110 = load float, float* %109, align 4
  %111 = load %struct.Points*, %struct.Points** %7, align 8
  %112 = getelementptr inbounds %struct.Points, %struct.Points* %111, i32 0, i32 2
  %113 = load %struct.Point*, %struct.Point** %112, align 8
  %114 = load i32, i32* %22, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.Point, %struct.Point* %113, i64 %115
  %117 = getelementptr inbounds %struct.Point, %struct.Point* %116, i32 0, i32 0
  %118 = load float, float* %117, align 8
  %119 = fadd contract float %110, %118
  %120 = load float*, float** %13, align 8
  %121 = load i32, i32* %22, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %120, i64 %122
  store float %119, float* %123, align 4
  br label %124

124:                                              ; preds = %104
  %125 = load i32, i32* %22, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %22, align 4
  br label %97, !llvm.loop !21

127:                                              ; preds = %97
  %128 = load float*, float** %13, align 8
  %129 = load %struct.Points*, %struct.Points** %7, align 8
  %130 = getelementptr inbounds %struct.Points, %struct.Points* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = sub nsw i64 %131, 1
  %133 = getelementptr inbounds float, float* %128, i64 %132
  %134 = load float, float* %133, align 4
  store float %134, float* %14, align 4
  %135 = load i64, i64* %15, align 8
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %23, align 4
  br label %137

137:                                              ; preds = %194, %127
  %138 = load i32, i32* %23, align 4
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* %16, align 8
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %142, label %197

142:                                              ; preds = %137
  %143 = call i64 @lrand48() #3
  %144 = sitofp i64 %143 to float
  %145 = fdiv contract float %144, 0x41E0000000000000
  %146 = load float, float* %14, align 4
  %147 = fmul contract float %145, %146
  store float %147, float* %17, align 4
  store i32 0, i32* %18, align 4
  %148 = load %struct.Points*, %struct.Points** %7, align 8
  %149 = getelementptr inbounds %struct.Points, %struct.Points* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %150, 1
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %19, align 4
  %153 = load float*, float** %13, align 8
  %154 = getelementptr inbounds float, float* %153, i64 0
  %155 = load float, float* %154, align 4
  %156 = load float, float* %17, align 4
  %157 = fcmp contract ogt float %155, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %142
  %159 = load i32**, i32*** %8, align 8
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %23, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 0, i32* %163, align 4
  br label %194

164:                                              ; preds = %142
  br label %165

165:                                              ; preds = %186, %164
  %166 = load i32, i32* %18, align 4
  %167 = add nsw i32 %166, 1
  %168 = load i32, i32* %19, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %187

170:                                              ; preds = %165
  %171 = load i32, i32* %18, align 4
  %172 = load i32, i32* %19, align 4
  %173 = add nsw i32 %171, %172
  %174 = sdiv i32 %173, 2
  store i32 %174, i32* %20, align 4
  %175 = load float*, float** %13, align 8
  %176 = load i32, i32* %20, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float* %175, i64 %177
  %179 = load float, float* %178, align 4
  %180 = load float, float* %17, align 4
  %181 = fcmp contract ogt float %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %170
  %183 = load i32, i32* %20, align 4
  store i32 %183, i32* %19, align 4
  br label %186

184:                                              ; preds = %170
  %185 = load i32, i32* %20, align 4
  store i32 %185, i32* %18, align 4
  br label %186

186:                                              ; preds = %184, %182
  br label %165, !llvm.loop !22

187:                                              ; preds = %165
  %188 = load i32, i32* %19, align 4
  %189 = load i32**, i32*** %8, align 8
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %23, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 %188, i32* %193, align 4
  br label %194

194:                                              ; preds = %187, %158
  %195 = load i32, i32* %23, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %23, align 4
  br label %137, !llvm.loop !23

197:                                              ; preds = %137
  %198 = load float*, float** %13, align 8
  %199 = bitcast float* %198 to i8*
  call void @free(i8* noundef %199) #3
  %200 = load i32, i32* %12, align 4
  store i32 %200, i32* %6, align 4
  br label %201

201:                                              ; preds = %197, %80
  %202 = load i32, i32* %6, align 4
  ret i32 %202
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_ZSt3logf(float noundef %0) #5 comdat {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = call contract float @logf(float noundef %3) #3
  ret float %4
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef float @_Z8pkmedianP6PointsllPliP17pthread_barrier_t(%struct.Points* noundef %0, i64 noundef %1, i64 noundef %2, i64* noundef %3, i32 noundef %4, %union.pthread_barrier_t* noundef %5) #4 {
  %7 = alloca float, align 4
  %8 = alloca %struct.Points*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.pthread_barrier_t*, align 8
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca float, align 4
  %26 = alloca i64, align 8
  %27 = alloca %struct.Point, align 8
  %28 = alloca %struct.Point, align 8
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  store %struct.Points* %0, %struct.Points** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store %union.pthread_barrier_t* %5, %union.pthread_barrier_t** %13, align 8
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %6
  %35 = load i32, i32* @_ZL5nproc, align 4
  %36 = sext i32 %35 to i64
  %37 = call noalias i8* @calloc(i64 noundef %36, i64 noundef 4) #20
  %38 = bitcast i8* %37 to float*
  store float* %38, float** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE4hizs, align 8
  br label %39

39:                                               ; preds = %34, %6
  store float 0.000000e+00, float* %18, align 4
  store float 0.000000e+00, float* %17, align 4
  %40 = load %struct.Points*, %struct.Points** %8, align 8
  %41 = getelementptr inbounds %struct.Points, %struct.Points* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %20, align 8
  %43 = load %struct.Points*, %struct.Points** %8, align 8
  %44 = getelementptr inbounds %struct.Points, %struct.Points* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %21, align 8
  %47 = load %struct.Points*, %struct.Points** %8, align 8
  %48 = getelementptr inbounds %struct.Points, %struct.Points* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @_ZL5nproc, align 4
  %51 = sext i32 %50 to i64
  %52 = sdiv i64 %49, %51
  store i64 %52, i64* %22, align 8
  %53 = load i64, i64* %22, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = mul nsw i64 %53, %55
  store i64 %56, i64* %23, align 8
  %57 = load i64, i64* %23, align 8
  %58 = load i64, i64* %22, align 8
  %59 = add nsw i64 %57, %58
  store i64 %59, i64* %24, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @_ZL5nproc, align 4
  %62 = sub nsw i32 %61, 1
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %39
  %65 = load %struct.Points*, %struct.Points** %8, align 8
  %66 = getelementptr inbounds %struct.Points, %struct.Points* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %24, align 8
  br label %68

68:                                               ; preds = %64, %39
  store float 0.000000e+00, float* %25, align 4
  %69 = load i64, i64* %23, align 8
  store i64 %69, i64* %26, align 8
  br label %70

70:                                               ; preds = %101, %68
  %71 = load i64, i64* %26, align 8
  %72 = load i64, i64* %24, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %104

74:                                               ; preds = %70
  %75 = load %struct.Points*, %struct.Points** %8, align 8
  %76 = getelementptr inbounds %struct.Points, %struct.Points* %75, i32 0, i32 2
  %77 = load %struct.Point*, %struct.Point** %76, align 8
  %78 = load i64, i64* %26, align 8
  %79 = getelementptr inbounds %struct.Point, %struct.Point* %77, i64 %78
  %80 = bitcast %struct.Point* %27 to i8*
  %81 = bitcast %struct.Point* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 32, i1 false)
  %82 = load %struct.Points*, %struct.Points** %8, align 8
  %83 = getelementptr inbounds %struct.Points, %struct.Points* %82, i32 0, i32 2
  %84 = load %struct.Point*, %struct.Point** %83, align 8
  %85 = getelementptr inbounds %struct.Point, %struct.Point* %84, i64 0
  %86 = bitcast %struct.Point* %28 to i8*
  %87 = bitcast %struct.Point* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 32, i1 false)
  %88 = load i64, i64* %21, align 8
  %89 = trunc i64 %88 to i32
  %90 = call contract noundef float @_Z4dist5PointS_i(%struct.Point* noundef byval(%struct.Point) align 8 %27, %struct.Point* noundef byval(%struct.Point) align 8 %28, i32 noundef %89)
  %91 = load %struct.Points*, %struct.Points** %8, align 8
  %92 = getelementptr inbounds %struct.Points, %struct.Points* %91, i32 0, i32 2
  %93 = load %struct.Point*, %struct.Point** %92, align 8
  %94 = load i64, i64* %26, align 8
  %95 = getelementptr inbounds %struct.Point, %struct.Point* %93, i64 %94
  %96 = getelementptr inbounds %struct.Point, %struct.Point* %95, i32 0, i32 0
  %97 = load float, float* %96, align 8
  %98 = fmul contract float %90, %97
  %99 = load float, float* %25, align 4
  %100 = fadd contract float %99, %98
  store float %100, float* %25, align 4
  br label %101

101:                                              ; preds = %74
  %102 = load i64, i64* %26, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %26, align 8
  br label %70, !llvm.loop !24

104:                                              ; preds = %70
  %105 = load float, float* %25, align 4
  %106 = load float*, float** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE4hizs, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %106, i64 %108
  store float %105, float* %109, align 4
  store i32 0, i32* %29, align 4
  br label %110

110:                                              ; preds = %122, %104
  %111 = load i32, i32* %29, align 4
  %112 = load i32, i32* @_ZL5nproc, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %110
  %115 = load float*, float** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE4hizs, align 8
  %116 = load i32, i32* %29, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %115, i64 %117
  %119 = load float, float* %118, align 4
  %120 = load float, float* %17, align 4
  %121 = fadd contract float %120, %119
  store float %121, float* %17, align 4
  br label %122

122:                                              ; preds = %114
  %123 = load i32, i32* %29, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %29, align 4
  br label %110, !llvm.loop !25

125:                                              ; preds = %110
  store float 0.000000e+00, float* %18, align 4
  %126 = load float, float* %17, align 4
  %127 = load float, float* %18, align 4
  %128 = fadd contract float %126, %127
  %129 = fpext float %128 to double
  %130 = fdiv contract double %129, 2.000000e+00
  %131 = fptrunc double %130 to float
  store float %131, float* %19, align 4
  %132 = load %struct.Points*, %struct.Points** %8, align 8
  %133 = getelementptr inbounds %struct.Points, %struct.Points* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %10, align 8
  %136 = icmp sle i64 %134, %135
  br i1 %136, label %137, label %170

137:                                              ; preds = %125
  %138 = load i64, i64* %23, align 8
  store i64 %138, i64* %30, align 8
  br label %139

139:                                              ; preds = %157, %137
  %140 = load i64, i64* %30, align 8
  %141 = load i64, i64* %24, align 8
  %142 = icmp slt i64 %140, %141
  br i1 %142, label %143, label %160

143:                                              ; preds = %139
  %144 = load i64, i64* %30, align 8
  %145 = load %struct.Points*, %struct.Points** %8, align 8
  %146 = getelementptr inbounds %struct.Points, %struct.Points* %145, i32 0, i32 2
  %147 = load %struct.Point*, %struct.Point** %146, align 8
  %148 = load i64, i64* %30, align 8
  %149 = getelementptr inbounds %struct.Point, %struct.Point* %147, i64 %148
  %150 = getelementptr inbounds %struct.Point, %struct.Point* %149, i32 0, i32 2
  store i64 %144, i64* %150, align 8
  %151 = load %struct.Points*, %struct.Points** %8, align 8
  %152 = getelementptr inbounds %struct.Points, %struct.Points* %151, i32 0, i32 2
  %153 = load %struct.Point*, %struct.Point** %152, align 8
  %154 = load i64, i64* %30, align 8
  %155 = getelementptr inbounds %struct.Point, %struct.Point* %153, i64 %154
  %156 = getelementptr inbounds %struct.Point, %struct.Point* %155, i32 0, i32 3
  store float 0.000000e+00, float* %156, align 8
  br label %157

157:                                              ; preds = %143
  %158 = load i64, i64* %30, align 8
  %159 = add nsw i64 %158, 1
  store i64 %159, i64* %30, align 8
  br label %139, !llvm.loop !26

160:                                              ; preds = %139
  store float 0.000000e+00, float* %15, align 4
  %161 = load i32, i32* %12, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load float*, float** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE4hizs, align 8
  %165 = bitcast float* %164 to i8*
  call void @free(i8* noundef %165) #3
  %166 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %167 = load i64*, i64** %11, align 8
  store i64 %166, i64* %167, align 8
  br label %168

168:                                              ; preds = %163, %160
  %169 = load float, float* %15, align 4
  store float %169, float* %7, align 4
  br label %391

170:                                              ; preds = %125
  %171 = load i32, i32* %12, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = load %struct.Points*, %struct.Points** %8, align 8
  call void @_Z7shuffleP6Points(%struct.Points* noundef %174)
  br label %175

175:                                              ; preds = %173, %170
  %176 = load %struct.Points*, %struct.Points** %8, align 8
  %177 = load float, float* %19, align 4
  %178 = load i32, i32* %12, align 4
  %179 = load %union.pthread_barrier_t*, %union.pthread_barrier_t** %13, align 8
  %180 = call contract noundef float @_Z7pspeedyP6PointsfPliP17pthread_barrier_t(%struct.Points* noundef %176, float noundef %177, i64* noundef @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, i32 noundef %178, %union.pthread_barrier_t* noundef %179)
  store float %180, float* %15, align 4
  store i32 0, i32* %14, align 4
  br label %181

181:                                              ; preds = %190, %175
  %182 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %183 = load i64, i64* %9, align 8
  %184 = icmp slt i64 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load i32, i32* %14, align 4
  %187 = icmp slt i32 %186, 1
  br label %188

188:                                              ; preds = %185, %181
  %189 = phi i1 [ false, %181 ], [ %187, %185 ]
  br i1 %189, label %190, label %198

190:                                              ; preds = %188
  %191 = load %struct.Points*, %struct.Points** %8, align 8
  %192 = load float, float* %19, align 4
  %193 = load i32, i32* %12, align 4
  %194 = load %union.pthread_barrier_t*, %union.pthread_barrier_t** %13, align 8
  %195 = call contract noundef float @_Z7pspeedyP6PointsfPliP17pthread_barrier_t(%struct.Points* noundef %191, float noundef %192, i64* noundef @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, i32 noundef %193, %union.pthread_barrier_t* noundef %194)
  store float %195, float* %15, align 4
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %14, align 4
  br label %181, !llvm.loop !27

198:                                              ; preds = %188
  br label %199

199:                                              ; preds = %219, %198
  %200 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %201 = load i64, i64* %9, align 8
  %202 = icmp slt i64 %200, %201
  br i1 %202, label %203, label %227

203:                                              ; preds = %199
  %204 = load i32, i32* %14, align 4
  %205 = icmp sge i32 %204, 1
  br i1 %205, label %206, label %214

206:                                              ; preds = %203
  %207 = load float, float* %19, align 4
  store float %207, float* %17, align 4
  %208 = load float, float* %17, align 4
  %209 = load float, float* %18, align 4
  %210 = fadd contract float %208, %209
  %211 = fpext float %210 to double
  %212 = fdiv contract double %211, 2.000000e+00
  %213 = fptrunc double %212 to float
  store float %213, float* %19, align 4
  store i32 0, i32* %14, align 4
  br label %214

214:                                              ; preds = %206, %203
  %215 = load i32, i32* %12, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %214
  %218 = load %struct.Points*, %struct.Points** %8, align 8
  call void @_Z7shuffleP6Points(%struct.Points* noundef %218)
  br label %219

219:                                              ; preds = %217, %214
  %220 = load %struct.Points*, %struct.Points** %8, align 8
  %221 = load float, float* %19, align 4
  %222 = load i32, i32* %12, align 4
  %223 = load %union.pthread_barrier_t*, %union.pthread_barrier_t** %13, align 8
  %224 = call contract noundef float @_Z7pspeedyP6PointsfPliP17pthread_barrier_t(%struct.Points* noundef %220, float noundef %221, i64* noundef @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, i32 noundef %222, %union.pthread_barrier_t* noundef %223)
  store float %224, float* %15, align 4
  %225 = load i32, i32* %14, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %14, align 4
  br label %199, !llvm.loop !28

227:                                              ; preds = %199
  %228 = load i32, i32* %12, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %259

230:                                              ; preds = %227
  %231 = load %struct.Points*, %struct.Points** %8, align 8
  %232 = load i64, i64* %9, align 8
  %233 = trunc i64 %232 to i32
  %234 = load i32, i32* %12, align 4
  %235 = load %union.pthread_barrier_t*, %union.pthread_barrier_t** %13, align 8
  %236 = call noundef i32 @_Z19selectfeasible_fastP6PointsPPiiiP17pthread_barrier_t(%struct.Points* noundef %231, i32** noundef @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE8feasible, i32 noundef %233, i32 noundef %234, %union.pthread_barrier_t* noundef %235)
  store i32 %236, i32* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE11numfeasible, align 4
  store i32 0, i32* %31, align 4
  br label %237

237:                                              ; preds = %255, %230
  %238 = load i32, i32* %31, align 4
  %239 = sext i32 %238 to i64
  %240 = load %struct.Points*, %struct.Points** %8, align 8
  %241 = getelementptr inbounds %struct.Points, %struct.Points* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp slt i64 %239, %242
  br i1 %243, label %244, label %258

244:                                              ; preds = %237
  %245 = load i8*, i8** @_ZL9is_center, align 8
  %246 = load %struct.Points*, %struct.Points** %8, align 8
  %247 = getelementptr inbounds %struct.Points, %struct.Points* %246, i32 0, i32 2
  %248 = load %struct.Point*, %struct.Point** %247, align 8
  %249 = load i32, i32* %31, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.Point, %struct.Point* %248, i64 %250
  %252 = getelementptr inbounds %struct.Point, %struct.Point* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds i8, i8* %245, i64 %253
  store i8 1, i8* %254, align 1
  br label %255

255:                                              ; preds = %244
  %256 = load i32, i32* %31, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %31, align 4
  br label %237, !llvm.loop !29

258:                                              ; preds = %237
  br label %259

259:                                              ; preds = %258, %227
  br label %260

260:                                              ; preds = %259, %378
  %261 = load float, float* %15, align 4
  store float %261, float* %16, align 4
  %262 = load %struct.Points*, %struct.Points** %8, align 8
  %263 = load i32*, i32** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE8feasible, align 8
  %264 = load i32, i32* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE11numfeasible, align 4
  %265 = load float, float* %19, align 4
  %266 = load i64, i64* %10, align 8
  %267 = trunc i64 %266 to i32
  %268 = load float, float* %15, align 4
  %269 = load i64, i64* %10, align 8
  %270 = mul nsw i64 3, %269
  %271 = sitofp i64 %270 to float
  %272 = load i64, i64* %10, align 8
  %273 = sitofp i64 %272 to float
  %274 = call contract noundef float @_ZSt3logf(float noundef %273)
  %275 = fmul contract float %271, %274
  %276 = fptosi float %275 to i64
  %277 = load i32, i32* %12, align 4
  %278 = load %union.pthread_barrier_t*, %union.pthread_barrier_t** %13, align 8
  %279 = call contract noundef float @_Z3pFLP6PointsPiifPliflfiP17pthread_barrier_t(%struct.Points* noundef %262, i32* noundef %263, i32 noundef %264, float noundef %265, i64* noundef @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, i32 noundef %267, float noundef %268, i64 noundef %276, float noundef 0x3FB99999A0000000, i32 noundef %277, %union.pthread_barrier_t* noundef %278)
  store float %279, float* %15, align 4
  %280 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %281 = sitofp i64 %280 to double
  %282 = load i64, i64* %10, align 8
  %283 = sitofp i64 %282 to double
  %284 = fmul contract double 1.100000e+00, %283
  %285 = fcmp contract ole double %281, %284
  br i1 %285, label %286, label %293

286:                                              ; preds = %260
  %287 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %288 = sitofp i64 %287 to double
  %289 = load i64, i64* %9, align 8
  %290 = sitofp i64 %289 to double
  %291 = fmul contract double 9.000000e-01, %290
  %292 = fcmp contract oge double %288, %291
  br i1 %292, label %303, label %293

293:                                              ; preds = %286, %260
  %294 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %295 = load i64, i64* %10, align 8
  %296 = add nsw i64 %295, 2
  %297 = icmp sle i64 %294, %296
  br i1 %297, label %298, label %322

298:                                              ; preds = %293
  %299 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %300 = load i64, i64* %9, align 8
  %301 = sub nsw i64 %300, 2
  %302 = icmp sge i64 %299, %301
  br i1 %302, label %303, label %322

303:                                              ; preds = %298, %286
  %304 = load %struct.Points*, %struct.Points** %8, align 8
  %305 = load i32*, i32** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE8feasible, align 8
  %306 = load i32, i32* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE11numfeasible, align 4
  %307 = load float, float* %19, align 4
  %308 = load i64, i64* %10, align 8
  %309 = trunc i64 %308 to i32
  %310 = load float, float* %15, align 4
  %311 = load i64, i64* %10, align 8
  %312 = mul nsw i64 3, %311
  %313 = sitofp i64 %312 to float
  %314 = load i64, i64* %10, align 8
  %315 = sitofp i64 %314 to float
  %316 = call contract noundef float @_ZSt3logf(float noundef %315)
  %317 = fmul contract float %313, %316
  %318 = fptosi float %317 to i64
  %319 = load i32, i32* %12, align 4
  %320 = load %union.pthread_barrier_t*, %union.pthread_barrier_t** %13, align 8
  %321 = call contract noundef float @_Z3pFLP6PointsPiifPliflfiP17pthread_barrier_t(%struct.Points* noundef %304, i32* noundef %305, i32 noundef %306, float noundef %307, i64* noundef @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, i32 noundef %309, float noundef %310, i64 noundef %318, float noundef 0x3F50624DE0000000, i32 noundef %319, %union.pthread_barrier_t* noundef %320)
  store float %321, float* %15, align 4
  br label %322

322:                                              ; preds = %303, %298, %293
  %323 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %324 = load i64, i64* %10, align 8
  %325 = icmp sgt i64 %323, %324
  br i1 %325, label %326, label %342

326:                                              ; preds = %322
  %327 = load float, float* %19, align 4
  store float %327, float* %18, align 4
  %328 = load float, float* %17, align 4
  %329 = load float, float* %18, align 4
  %330 = fadd contract float %328, %329
  %331 = fpext float %330 to double
  %332 = fdiv contract double %331, 2.000000e+00
  %333 = fptrunc double %332 to float
  store float %333, float* %19, align 4
  %334 = load float, float* %19, align 4
  %335 = load float, float* %18, align 4
  %336 = fsub contract float %334, %335
  %337 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %338 = sitofp i64 %337 to float
  %339 = fmul contract float %336, %338
  %340 = load float, float* %15, align 4
  %341 = fadd contract float %340, %339
  store float %341, float* %15, align 4
  br label %342

342:                                              ; preds = %326, %322
  %343 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %344 = load i64, i64* %9, align 8
  %345 = icmp slt i64 %343, %344
  br i1 %345, label %346, label %362

346:                                              ; preds = %342
  %347 = load float, float* %19, align 4
  store float %347, float* %17, align 4
  %348 = load float, float* %17, align 4
  %349 = load float, float* %18, align 4
  %350 = fadd contract float %348, %349
  %351 = fpext float %350 to double
  %352 = fdiv contract double %351, 2.000000e+00
  %353 = fptrunc double %352 to float
  store float %353, float* %19, align 4
  %354 = load float, float* %19, align 4
  %355 = load float, float* %17, align 4
  %356 = fsub contract float %354, %355
  %357 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %358 = sitofp i64 %357 to float
  %359 = fmul contract float %356, %358
  %360 = load float, float* %15, align 4
  %361 = fadd contract float %360, %359
  store float %361, float* %15, align 4
  br label %362

362:                                              ; preds = %346, %342
  %363 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %364 = load i64, i64* %10, align 8
  %365 = icmp sle i64 %363, %364
  br i1 %365, label %366, label %370

366:                                              ; preds = %362
  %367 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %368 = load i64, i64* %9, align 8
  %369 = icmp sge i64 %367, %368
  br i1 %369, label %377, label %370

370:                                              ; preds = %366, %362
  %371 = load float, float* %18, align 4
  %372 = fpext float %371 to double
  %373 = load float, float* %17, align 4
  %374 = fpext float %373 to double
  %375 = fmul contract double 0x3FEFF7CED916872B, %374
  %376 = fcmp contract oge double %372, %375
  br i1 %376, label %377, label %378

377:                                              ; preds = %370, %366
  br label %379

378:                                              ; preds = %370
  br label %260, !llvm.loop !30

379:                                              ; preds = %377
  %380 = load i32, i32* %12, align 4
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %389

382:                                              ; preds = %379
  %383 = load i32*, i32** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE8feasible, align 8
  %384 = bitcast i32* %383 to i8*
  call void @free(i8* noundef %384) #3
  %385 = load float*, float** @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE4hizs, align 8
  %386 = bitcast float* %385 to i8*
  call void @free(i8* noundef %386) #3
  %387 = load i64, i64* @_ZZ8pkmedianP6PointsllPliP17pthread_barrier_tE1k, align 8
  %388 = load i64*, i64** %11, align 8
  store i64 %387, i64* %388, align 8
  br label %389

389:                                              ; preds = %382, %379
  %390 = load float, float* %15, align 4
  store float %390, float* %7, align 4
  br label %391

391:                                              ; preds = %389, %168
  %392 = load float, float* %7, align 4
  ret float %392
}

; Function Attrs: nounwind allocsize(0,1)
declare noalias i8* @calloc(i64 noundef, i64 noundef) #8

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z11contcentersP6Points(%struct.Points* noundef %0) #5 {
  %2 = alloca %struct.Points*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca float, align 4
  store %struct.Points* %0, %struct.Points** %2, align 8
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %138, %1
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.Points*, %struct.Points** %2, align 8
  %9 = getelementptr inbounds %struct.Points, %struct.Points* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %7, %10
  br i1 %11, label %12, label %141

12:                                               ; preds = %6
  %13 = load %struct.Points*, %struct.Points** %2, align 8
  %14 = getelementptr inbounds %struct.Points, %struct.Points* %13, i32 0, i32 2
  %15 = load %struct.Point*, %struct.Point** %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds %struct.Point, %struct.Point* %15, i64 %16
  %18 = getelementptr inbounds %struct.Point, %struct.Point* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %137

22:                                               ; preds = %12
  %23 = load %struct.Points*, %struct.Points** %2, align 8
  %24 = getelementptr inbounds %struct.Points, %struct.Points* %23, i32 0, i32 2
  %25 = load %struct.Point*, %struct.Point** %24, align 8
  %26 = load %struct.Points*, %struct.Points** %2, align 8
  %27 = getelementptr inbounds %struct.Points, %struct.Points* %26, i32 0, i32 2
  %28 = load %struct.Point*, %struct.Point** %27, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds %struct.Point, %struct.Point* %28, i64 %29
  %31 = getelementptr inbounds %struct.Point, %struct.Point* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.Point, %struct.Point* %25, i64 %32
  %34 = getelementptr inbounds %struct.Point, %struct.Point* %33, i32 0, i32 0
  %35 = load float, float* %34, align 8
  %36 = load %struct.Points*, %struct.Points** %2, align 8
  %37 = getelementptr inbounds %struct.Points, %struct.Points* %36, i32 0, i32 2
  %38 = load %struct.Point*, %struct.Point** %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds %struct.Point, %struct.Point* %38, i64 %39
  %41 = getelementptr inbounds %struct.Point, %struct.Point* %40, i32 0, i32 0
  %42 = load float, float* %41, align 8
  %43 = fadd contract float %35, %42
  store float %43, float* %5, align 4
  %44 = load %struct.Points*, %struct.Points** %2, align 8
  %45 = getelementptr inbounds %struct.Points, %struct.Points* %44, i32 0, i32 2
  %46 = load %struct.Point*, %struct.Point** %45, align 8
  %47 = load i64, i64* %3, align 8
  %48 = getelementptr inbounds %struct.Point, %struct.Point* %46, i64 %47
  %49 = getelementptr inbounds %struct.Point, %struct.Point* %48, i32 0, i32 0
  %50 = load float, float* %49, align 8
  %51 = load float, float* %5, align 4
  %52 = fdiv contract float %50, %51
  store float %52, float* %5, align 4
  store i64 0, i64* %4, align 8
  br label %53

53:                                               ; preds = %112, %22
  %54 = load i64, i64* %4, align 8
  %55 = load %struct.Points*, %struct.Points** %2, align 8
  %56 = getelementptr inbounds %struct.Points, %struct.Points* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %54, %58
  br i1 %59, label %60, label %115

60:                                               ; preds = %53
  %61 = load float, float* %5, align 4
  %62 = fpext float %61 to double
  %63 = fsub contract double 1.000000e+00, %62
  %64 = load %struct.Points*, %struct.Points** %2, align 8
  %65 = getelementptr inbounds %struct.Points, %struct.Points* %64, i32 0, i32 2
  %66 = load %struct.Point*, %struct.Point** %65, align 8
  %67 = load %struct.Points*, %struct.Points** %2, align 8
  %68 = getelementptr inbounds %struct.Points, %struct.Points* %67, i32 0, i32 2
  %69 = load %struct.Point*, %struct.Point** %68, align 8
  %70 = load i64, i64* %3, align 8
  %71 = getelementptr inbounds %struct.Point, %struct.Point* %69, i64 %70
  %72 = getelementptr inbounds %struct.Point, %struct.Point* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.Point, %struct.Point* %66, i64 %73
  %75 = getelementptr inbounds %struct.Point, %struct.Point* %74, i32 0, i32 1
  %76 = load float*, float** %75, align 8
  %77 = load i64, i64* %4, align 8
  %78 = getelementptr inbounds float, float* %76, i64 %77
  %79 = load float, float* %78, align 4
  %80 = fpext float %79 to double
  %81 = fmul contract double %80, %63
  %82 = fptrunc double %81 to float
  store float %82, float* %78, align 4
  %83 = load %struct.Points*, %struct.Points** %2, align 8
  %84 = getelementptr inbounds %struct.Points, %struct.Points* %83, i32 0, i32 2
  %85 = load %struct.Point*, %struct.Point** %84, align 8
  %86 = load i64, i64* %3, align 8
  %87 = getelementptr inbounds %struct.Point, %struct.Point* %85, i64 %86
  %88 = getelementptr inbounds %struct.Point, %struct.Point* %87, i32 0, i32 1
  %89 = load float*, float** %88, align 8
  %90 = load i64, i64* %4, align 8
  %91 = getelementptr inbounds float, float* %89, i64 %90
  %92 = load float, float* %91, align 4
  %93 = load float, float* %5, align 4
  %94 = fmul contract float %92, %93
  %95 = load %struct.Points*, %struct.Points** %2, align 8
  %96 = getelementptr inbounds %struct.Points, %struct.Points* %95, i32 0, i32 2
  %97 = load %struct.Point*, %struct.Point** %96, align 8
  %98 = load %struct.Points*, %struct.Points** %2, align 8
  %99 = getelementptr inbounds %struct.Points, %struct.Points* %98, i32 0, i32 2
  %100 = load %struct.Point*, %struct.Point** %99, align 8
  %101 = load i64, i64* %3, align 8
  %102 = getelementptr inbounds %struct.Point, %struct.Point* %100, i64 %101
  %103 = getelementptr inbounds %struct.Point, %struct.Point* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.Point, %struct.Point* %97, i64 %104
  %106 = getelementptr inbounds %struct.Point, %struct.Point* %105, i32 0, i32 1
  %107 = load float*, float** %106, align 8
  %108 = load i64, i64* %4, align 8
  %109 = getelementptr inbounds float, float* %107, i64 %108
  %110 = load float, float* %109, align 4
  %111 = fadd contract float %110, %94
  store float %111, float* %109, align 4
  br label %112

112:                                              ; preds = %60
  %113 = load i64, i64* %4, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %4, align 8
  br label %53, !llvm.loop !31

115:                                              ; preds = %53
  %116 = load %struct.Points*, %struct.Points** %2, align 8
  %117 = getelementptr inbounds %struct.Points, %struct.Points* %116, i32 0, i32 2
  %118 = load %struct.Point*, %struct.Point** %117, align 8
  %119 = load i64, i64* %3, align 8
  %120 = getelementptr inbounds %struct.Point, %struct.Point* %118, i64 %119
  %121 = getelementptr inbounds %struct.Point, %struct.Point* %120, i32 0, i32 0
  %122 = load float, float* %121, align 8
  %123 = load %struct.Points*, %struct.Points** %2, align 8
  %124 = getelementptr inbounds %struct.Points, %struct.Points* %123, i32 0, i32 2
  %125 = load %struct.Point*, %struct.Point** %124, align 8
  %126 = load %struct.Points*, %struct.Points** %2, align 8
  %127 = getelementptr inbounds %struct.Points, %struct.Points* %126, i32 0, i32 2
  %128 = load %struct.Point*, %struct.Point** %127, align 8
  %129 = load i64, i64* %3, align 8
  %130 = getelementptr inbounds %struct.Point, %struct.Point* %128, i64 %129
  %131 = getelementptr inbounds %struct.Point, %struct.Point* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.Point, %struct.Point* %125, i64 %132
  %134 = getelementptr inbounds %struct.Point, %struct.Point* %133, i32 0, i32 0
  %135 = load float, float* %134, align 8
  %136 = fadd contract float %135, %122
  store float %136, float* %134, align 8
  br label %137

137:                                              ; preds = %115, %12
  br label %138

138:                                              ; preds = %137
  %139 = load i64, i64* %3, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %3, align 8
  br label %6, !llvm.loop !32

141:                                              ; preds = %6
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z11copycentersP6PointsS0_Pll(%struct.Points* noundef %0, %struct.Points* noundef %1, i64* noundef %2, i64 noundef %3) #5 {
  %5 = alloca %struct.Points*, align 8
  %6 = alloca %struct.Points*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.Points* %0, %struct.Points** %5, align 8
  store %struct.Points* %1, %struct.Points** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.Points*, %struct.Points** %5, align 8
  %13 = getelementptr inbounds %struct.Points, %struct.Points* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call noalias i8* @calloc(i64 noundef %14, i64 noundef 1) #20
  store i8* %15, i8** %11, align 8
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %32, %4
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.Points*, %struct.Points** %5, align 8
  %19 = getelementptr inbounds %struct.Points, %struct.Points* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load i8*, i8** %11, align 8
  %24 = load %struct.Points*, %struct.Points** %5, align 8
  %25 = getelementptr inbounds %struct.Points, %struct.Points* %24, i32 0, i32 2
  %26 = load %struct.Point*, %struct.Point** %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds %struct.Point, %struct.Point* %26, i64 %27
  %29 = getelementptr inbounds %struct.Point, %struct.Point* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i8, i8* %23, i64 %30
  store i8 1, i8* %31, align 1
  br label %32

32:                                               ; preds = %22
  %33 = load i64, i64* %9, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %9, align 8
  br label %16, !llvm.loop !33

35:                                               ; preds = %16
  %36 = load %struct.Points*, %struct.Points** %6, align 8
  %37 = getelementptr inbounds %struct.Points, %struct.Points* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %39

39:                                               ; preds = %95, %35
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.Points*, %struct.Points** %5, align 8
  %42 = getelementptr inbounds %struct.Points, %struct.Points* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  br i1 %44, label %45, label %98

45:                                               ; preds = %39
  %46 = load i8*, i8** %11, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = trunc i8 %49 to i1
  br i1 %50, label %51, label %94

51:                                               ; preds = %45
  %52 = load %struct.Points*, %struct.Points** %6, align 8
  %53 = getelementptr inbounds %struct.Points, %struct.Points* %52, i32 0, i32 2
  %54 = load %struct.Point*, %struct.Point** %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds %struct.Point, %struct.Point* %54, i64 %55
  %57 = getelementptr inbounds %struct.Point, %struct.Point* %56, i32 0, i32 1
  %58 = load float*, float** %57, align 8
  %59 = bitcast float* %58 to i8*
  %60 = load %struct.Points*, %struct.Points** %5, align 8
  %61 = getelementptr inbounds %struct.Points, %struct.Points* %60, i32 0, i32 2
  %62 = load %struct.Point*, %struct.Point** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds %struct.Point, %struct.Point* %62, i64 %63
  %65 = getelementptr inbounds %struct.Point, %struct.Point* %64, i32 0, i32 1
  %66 = load float*, float** %65, align 8
  %67 = bitcast float* %66 to i8*
  %68 = load %struct.Points*, %struct.Points** %5, align 8
  %69 = getelementptr inbounds %struct.Points, %struct.Points* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %67, i64 %72, i1 false)
  %73 = load %struct.Points*, %struct.Points** %5, align 8
  %74 = getelementptr inbounds %struct.Points, %struct.Points* %73, i32 0, i32 2
  %75 = load %struct.Point*, %struct.Point** %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds %struct.Point, %struct.Point* %75, i64 %76
  %78 = getelementptr inbounds %struct.Point, %struct.Point* %77, i32 0, i32 0
  %79 = load float, float* %78, align 8
  %80 = load %struct.Points*, %struct.Points** %6, align 8
  %81 = getelementptr inbounds %struct.Points, %struct.Points* %80, i32 0, i32 2
  %82 = load %struct.Point*, %struct.Point** %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds %struct.Point, %struct.Point* %82, i64 %83
  %85 = getelementptr inbounds %struct.Point, %struct.Point* %84, i32 0, i32 0
  store float %79, float* %85, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %8, align 8
  %88 = add nsw i64 %86, %87
  %89 = load i64*, i64** %7, align 8
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  store i64 %88, i64* %91, align 8
  %92 = load i64, i64* %10, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %10, align 8
  br label %94

94:                                               ; preds = %51, %45
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %9, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %9, align 8
  br label %39, !llvm.loop !34

98:                                               ; preds = %39
  %99 = load i64, i64* %10, align 8
  %100 = load %struct.Points*, %struct.Points** %6, align 8
  %101 = getelementptr inbounds %struct.Points, %struct.Points* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load i8*, i8** %11, align 8
  call void @free(i8* noundef %102) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i8* @_Z14localSearchSubPv(i8* noundef %0) #4 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pkmedian_arg_t*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.pkmedian_arg_t*
  store %struct.pkmedian_arg_t* %5, %struct.pkmedian_arg_t** %3, align 8
  %6 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %3, align 8
  %7 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %6, i32 0, i32 0
  %8 = load %struct.Points*, %struct.Points** %7, align 8
  %9 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %3, align 8
  %10 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %3, align 8
  %13 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %3, align 8
  %16 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %15, i32 0, i32 3
  %17 = load i64*, i64** %16, align 8
  %18 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %3, align 8
  %19 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %3, align 8
  %22 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %21, i32 0, i32 5
  %23 = load %union.pthread_barrier_t*, %union.pthread_barrier_t** %22, align 8
  %24 = call contract noundef float @_Z8pkmedianP6PointsllPliP17pthread_barrier_t(%struct.Points* noundef %8, i64 noundef %11, i64 noundef %14, i64* noundef %17, i32 noundef %20, %union.pthread_barrier_t* noundef %23)
  ret i8* null
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z11localSearchP6PointsllPl(%struct.Points* noundef %0, i64 noundef %1, i64 noundef %2, i64* noundef %3) #4 {
  %5 = alloca %struct.Points*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %union.pthread_barrier_t, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.pkmedian_arg_t*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.Points* %0, %struct.Points** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %14 = load i32, i32* @_ZL5nproc, align 4
  %15 = sext i32 %14 to i64
  %16 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %15, i64 8)
  %17 = extractvalue { i64, i1 } %16, 1
  %18 = extractvalue { i64, i1 } %16, 0
  %19 = select i1 %17, i64 -1, i64 %18
  %20 = call noalias noundef nonnull i8* @_Znam(i64 noundef %19) #21
  %21 = bitcast i8* %20 to i64*
  store i64* %21, i64** %10, align 8
  %22 = load i32, i32* @_ZL5nproc, align 4
  %23 = sext i32 %22 to i64
  %24 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %23, i64 48)
  %25 = extractvalue { i64, i1 } %24, 1
  %26 = extractvalue { i64, i1 } %24, 0
  %27 = select i1 %25, i64 -1, i64 %26
  %28 = call noalias noundef nonnull i8* @_Znam(i64 noundef %27) #21
  %29 = bitcast i8* %28 to %struct.pkmedian_arg_t*
  store %struct.pkmedian_arg_t* %29, %struct.pkmedian_arg_t** %11, align 8
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %74, %4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @_ZL5nproc, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %77

34:                                               ; preds = %30
  %35 = load %struct.Points*, %struct.Points** %5, align 8
  %36 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %11, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %36, i64 %38
  %40 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %39, i32 0, i32 0
  store %struct.Points* %35, %struct.Points** %40, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %42, i64 %44
  %46 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %45, i32 0, i32 1
  store i64 %41, i64* %46, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %48, i64 %50
  %52 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %51, i32 0, i32 2
  store i64 %47, i64* %52, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %11, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %54, i64 %56
  %58 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %57, i32 0, i32 4
  store i32 %53, i32* %58, align 8
  %59 = load i64*, i64** %8, align 8
  %60 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %11, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %60, i64 %62
  %64 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %63, i32 0, i32 3
  store i64* %59, i64** %64, align 8
  %65 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %11, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %65, i64 %67
  %69 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %68, i32 0, i32 5
  store %union.pthread_barrier_t* %9, %union.pthread_barrier_t** %69, align 8
  %70 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %11, align 8
  %71 = getelementptr inbounds %struct.pkmedian_arg_t, %struct.pkmedian_arg_t* %70, i64 0
  %72 = bitcast %struct.pkmedian_arg_t* %71 to i8*
  %73 = call noundef i8* @_Z14localSearchSubPv(i8* noundef %72)
  br label %74

74:                                               ; preds = %34
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %30, !llvm.loop !35

77:                                               ; preds = %30
  store i32 0, i32* %13, align 4
  br label %78

78:                                               ; preds = %83, %77
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @_ZL5nproc, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %78, !llvm.loop !36

86:                                               ; preds = %78
  %87 = load i64*, i64** %10, align 8
  %88 = icmp eq i64* %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = bitcast i64* %87 to i8*
  call void @_ZdaPv(i8* noundef %90) #22
  br label %91

91:                                               ; preds = %89, %86
  %92 = load %struct.pkmedian_arg_t*, %struct.pkmedian_arg_t** %11, align 8
  %93 = icmp eq %struct.pkmedian_arg_t* %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = bitcast %struct.pkmedian_arg_t* %92 to i8*
  call void @_ZdaPv(i8* noundef %95) #22
  br label %96

96:                                               ; preds = %94, %91
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znam(i64 noundef) #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8* noundef) #11

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z12outcenterIDsP6PointsPlPc(%struct.Points* noundef %0, i64* noundef %1, i8* noundef %2) #4 {
  %4 = alloca %struct.Points*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.Points* %0, %struct.Points** %4, align 8
  store i64* %1, i64** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct._IO_FILE* @fopen(i8* noundef %12, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %13, %struct._IO_FILE** %7, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %15 = icmp eq %struct._IO_FILE* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* noundef %18)
  call void @exit(i32 noundef 1) #23
  unreachable

20:                                               ; preds = %3
  %21 = load %struct.Points*, %struct.Points** %4, align 8
  %22 = getelementptr inbounds %struct.Points, %struct.Points* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call noalias i8* @calloc(i64 noundef 4, i64 noundef %23) #20
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %44, %20
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = load %struct.Points*, %struct.Points** %4, align 8
  %30 = getelementptr inbounds %struct.Points, %struct.Points* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.Points*, %struct.Points** %4, align 8
  %36 = getelementptr inbounds %struct.Points, %struct.Points* %35, i32 0, i32 2
  %37 = load %struct.Point*, %struct.Point** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.Point, %struct.Point* %37, i64 %39
  %41 = getelementptr inbounds %struct.Point, %struct.Point* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %34, i64 %42
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %26, !llvm.loop !37

47:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %110, %47
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.Points*, %struct.Points** %4, align 8
  %52 = getelementptr inbounds %struct.Points, %struct.Points* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %50, %53
  br i1 %54, label %55, label %113

55:                                               ; preds = %48
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %109

62:                                               ; preds = %55
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %64 = load i64*, i64** %5, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %63, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 noundef %68)
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %71 = load %struct.Points*, %struct.Points** %4, align 8
  %72 = getelementptr inbounds %struct.Points, %struct.Points* %71, i32 0, i32 2
  %73 = load %struct.Point*, %struct.Point** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.Point, %struct.Point* %73, i64 %75
  %77 = getelementptr inbounds %struct.Point, %struct.Point* %76, i32 0, i32 0
  %78 = load float, float* %77, align 8
  %79 = fpext float %78 to double
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), double noundef %79)
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %103, %62
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.Points*, %struct.Points** %4, align 8
  %84 = getelementptr inbounds %struct.Points, %struct.Points* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %81
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %89 = load %struct.Points*, %struct.Points** %4, align 8
  %90 = getelementptr inbounds %struct.Points, %struct.Points* %89, i32 0, i32 2
  %91 = load %struct.Point*, %struct.Point** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.Point, %struct.Point* %91, i64 %93
  %95 = getelementptr inbounds %struct.Point, %struct.Point* %94, i32 0, i32 1
  %96 = load float*, float** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %96, i64 %98
  %100 = load float, float* %99, align 4
  %101 = fpext float %100 to double
  %102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %88, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), double noundef %101)
  br label %103

103:                                              ; preds = %87
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %81, !llvm.loop !38

106:                                              ; preds = %81
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %107, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %55
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %48, !llvm.loop !39

113:                                              ; preds = %48
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %115 = call i32 @fclose(%struct._IO_FILE* noundef %114)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #12

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z13streamClusterP7PStreamllillPc(%class.PStream* noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i8* noundef %6) #4 {
  %8 = alloca %class.PStream*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca %struct.Points, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.Points, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %class.PStream* %0, %class.PStream** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i8* %6, i8** %14, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = mul nsw i64 %26, %28
  %30 = mul i64 %29, 4
  %31 = call noalias i8* @malloc(i64 noundef %30) #19
  %32 = bitcast i8* %31 to float*
  store float* %32, float** %15, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = mul nsw i64 %33, %35
  %37 = mul i64 %36, 4
  %38 = call noalias i8* @malloc(i64 noundef %37) #19
  %39 = bitcast i8* %38 to float*
  store float* %39, float** %16, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = mul nsw i64 %40, %42
  %44 = mul i64 %43, 8
  %45 = call noalias i8* @malloc(i64 noundef %44) #19
  %46 = bitcast i8* %45 to i64*
  store i64* %46, i64** %17, align 8
  %47 = load float*, float** %15, align 8
  %48 = icmp eq float* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %7
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  call void @exit(i32 noundef 1) #23
  unreachable

52:                                               ; preds = %7
  %53 = load i32, i32* %11, align 4
  %54 = getelementptr inbounds %struct.Points, %struct.Points* %18, i32 0, i32 1
  store i32 %53, i32* %54, align 8
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds %struct.Points, %struct.Points* %18, i32 0, i32 0
  store i64 %55, i64* %56, align 8
  %57 = load i64, i64* %12, align 8
  %58 = mul i64 %57, 32
  %59 = call noalias i8* @malloc(i64 noundef %58) #19
  %60 = bitcast i8* %59 to %struct.Point*
  %61 = getelementptr inbounds %struct.Points, %struct.Points* %18, i32 0, i32 2
  store %struct.Point* %60, %struct.Point** %61, align 8
  store i32 0, i32* %19, align 4
  br label %62

62:                                               ; preds = %80, %52
  %63 = load i32, i32* %19, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %12, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %62
  %68 = load float*, float** %15, align 8
  %69 = load i32, i32* %19, align 4
  %70 = load i32, i32* %11, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %68, i64 %72
  %74 = getelementptr inbounds %struct.Points, %struct.Points* %18, i32 0, i32 2
  %75 = load %struct.Point*, %struct.Point** %74, align 8
  %76 = load i32, i32* %19, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.Point, %struct.Point* %75, i64 %77
  %79 = getelementptr inbounds %struct.Point, %struct.Point* %78, i32 0, i32 1
  store float* %73, float** %79, align 8
  br label %80

80:                                               ; preds = %67
  %81 = load i32, i32* %19, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %19, align 4
  br label %62, !llvm.loop !40

83:                                               ; preds = %62
  %84 = load i32, i32* %11, align 4
  %85 = getelementptr inbounds %struct.Points, %struct.Points* %20, i32 0, i32 1
  store i32 %84, i32* %85, align 8
  %86 = load i64, i64* %13, align 8
  %87 = mul i64 %86, 32
  %88 = call noalias i8* @malloc(i64 noundef %87) #19
  %89 = bitcast i8* %88 to %struct.Point*
  %90 = getelementptr inbounds %struct.Points, %struct.Points* %20, i32 0, i32 2
  store %struct.Point* %89, %struct.Point** %90, align 8
  %91 = getelementptr inbounds %struct.Points, %struct.Points* %20, i32 0, i32 0
  store i64 0, i64* %91, align 8
  store i32 0, i32* %21, align 4
  br label %92

92:                                               ; preds = %116, %83
  %93 = load i32, i32* %21, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %13, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %97, label %119

97:                                               ; preds = %92
  %98 = load float*, float** %16, align 8
  %99 = load i32, i32* %21, align 4
  %100 = load i32, i32* %11, align 4
  %101 = mul nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, float* %98, i64 %102
  %104 = getelementptr inbounds %struct.Points, %struct.Points* %20, i32 0, i32 2
  %105 = load %struct.Point*, %struct.Point** %104, align 8
  %106 = load i32, i32* %21, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.Point, %struct.Point* %105, i64 %107
  %109 = getelementptr inbounds %struct.Point, %struct.Point* %108, i32 0, i32 1
  store float* %103, float** %109, align 8
  %110 = getelementptr inbounds %struct.Points, %struct.Points* %20, i32 0, i32 2
  %111 = load %struct.Point*, %struct.Point** %110, align 8
  %112 = load i32, i32* %21, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.Point, %struct.Point* %111, i64 %113
  %115 = getelementptr inbounds %struct.Point, %struct.Point* %114, i32 0, i32 0
  store float 1.000000e+00, float* %115, align 8
  br label %116

116:                                              ; preds = %97
  %117 = load i32, i32* %21, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %21, align 4
  br label %92, !llvm.loop !41

119:                                              ; preds = %92
  store i64 0, i64* %22, align 8
  br label %120

120:                                              ; preds = %119, %222
  %121 = load %class.PStream*, %class.PStream** %8, align 8
  %122 = load float*, float** %15, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load i64, i64* %12, align 8
  %125 = trunc i64 %124 to i32
  %126 = bitcast %class.PStream* %121 to i64 (%class.PStream*, float*, i32, i32)***
  %127 = load i64 (%class.PStream*, float*, i32, i32)**, i64 (%class.PStream*, float*, i32, i32)*** %126, align 8
  %128 = getelementptr inbounds i64 (%class.PStream*, float*, i32, i32)*, i64 (%class.PStream*, float*, i32, i32)** %127, i64 0
  %129 = load i64 (%class.PStream*, float*, i32, i32)*, i64 (%class.PStream*, float*, i32, i32)** %128, align 8
  %130 = call noundef i64 %129(%class.PStream* noundef nonnull align 8 dereferenceable(8) %121, float* noundef %122, i32 noundef %123, i32 noundef %125)
  store i64 %130, i64* %24, align 8
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %132 = load i64, i64* %24, align 8
  %133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %131, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i64 noundef %132)
  %134 = load %class.PStream*, %class.PStream** %8, align 8
  %135 = bitcast %class.PStream* %134 to i32 (%class.PStream*)***
  %136 = load i32 (%class.PStream*)**, i32 (%class.PStream*)*** %135, align 8
  %137 = getelementptr inbounds i32 (%class.PStream*)*, i32 (%class.PStream*)** %136, i64 1
  %138 = load i32 (%class.PStream*)*, i32 (%class.PStream*)** %137, align 8
  %139 = call noundef i32 %138(%class.PStream* noundef nonnull align 8 dereferenceable(8) %134)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %155, label %141

141:                                              ; preds = %120
  %142 = load i64, i64* %24, align 8
  %143 = load i64, i64* %12, align 8
  %144 = trunc i64 %143 to i32
  %145 = zext i32 %144 to i64
  %146 = icmp ult i64 %142, %145
  br i1 %146, label %147, label %158

147:                                              ; preds = %141
  %148 = load %class.PStream*, %class.PStream** %8, align 8
  %149 = bitcast %class.PStream* %148 to i32 (%class.PStream*)***
  %150 = load i32 (%class.PStream*)**, i32 (%class.PStream*)*** %149, align 8
  %151 = getelementptr inbounds i32 (%class.PStream*)*, i32 (%class.PStream*)** %150, i64 2
  %152 = load i32 (%class.PStream*)*, i32 (%class.PStream*)** %151, align 8
  %153 = call noundef i32 %152(%class.PStream* noundef nonnull align 8 dereferenceable(8) %148)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %147, %120
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %156, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  call void @exit(i32 noundef 1) #23
  unreachable

158:                                              ; preds = %147, %141
  %159 = load i64, i64* %24, align 8
  %160 = getelementptr inbounds %struct.Points, %struct.Points* %18, i32 0, i32 0
  store i64 %159, i64* %160, align 8
  store i32 0, i32* %25, align 4
  br label %161

161:                                              ; preds = %174, %158
  %162 = load i32, i32* %25, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.Points, %struct.Points* %18, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp slt i64 %163, %165
  br i1 %166, label %167, label %177

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.Points, %struct.Points* %18, i32 0, i32 2
  %169 = load %struct.Point*, %struct.Point** %168, align 8
  %170 = load i32, i32* %25, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.Point, %struct.Point* %169, i64 %171
  %173 = getelementptr inbounds %struct.Point, %struct.Point* %172, i32 0, i32 0
  store float 1.000000e+00, float* %173, align 8
  br label %174

174:                                              ; preds = %167
  %175 = load i32, i32* %25, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %25, align 4
  br label %161, !llvm.loop !42

177:                                              ; preds = %161
  %178 = getelementptr inbounds %struct.Points, %struct.Points* %18, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = mul i64 %179, 1
  %181 = call noalias i8* @malloc(i64 noundef %180) #19
  store i8* %181, i8** @_ZL17switch_membership, align 8
  %182 = getelementptr inbounds %struct.Points, %struct.Points* %18, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call noalias i8* @calloc(i64 noundef %183, i64 noundef 1) #20
  store i8* %184, i8** @_ZL9is_center, align 8
  %185 = getelementptr inbounds %struct.Points, %struct.Points* %18, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = mul i64 %186, 4
  %188 = call noalias i8* @malloc(i64 noundef %187) #19
  %189 = bitcast i8* %188 to i32*
  store i32* %189, i32** @_ZL12center_table, align 8
  %190 = load i64, i64* %9, align 8
  %191 = load i64, i64* %10, align 8
  call void @_Z11localSearchP6PointsllPl(%struct.Points* noundef %18, i64 noundef %190, i64 noundef %191, i64* noundef %23)
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %193 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %192, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %194 = call noundef i32 @_Z11contcentersP6Points(%struct.Points* noundef %18)
  store i8 1, i8* @isCoordChanged, align 1
  %195 = load i64, i64* %23, align 8
  %196 = getelementptr inbounds %struct.Points, %struct.Points* %20, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %195, %197
  %199 = load i64, i64* %13, align 8
  %200 = icmp sgt i64 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %177
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %203 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %202, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  call void @exit(i32 noundef 1) #23
  unreachable

204:                                              ; preds = %177
  %205 = load i64*, i64** %17, align 8
  %206 = load i64, i64* %22, align 8
  call void @_Z11copycentersP6PointsS0_Pll(%struct.Points* noundef %18, %struct.Points* noundef %20, i64* noundef %205, i64 noundef %206)
  %207 = load i64, i64* %24, align 8
  %208 = load i64, i64* %22, align 8
  %209 = add i64 %208, %207
  store i64 %209, i64* %22, align 8
  %210 = load i8*, i8** @_ZL9is_center, align 8
  call void @free(i8* noundef %210) #3
  %211 = load i8*, i8** @_ZL17switch_membership, align 8
  call void @free(i8* noundef %211) #3
  %212 = load i32*, i32** @_ZL12center_table, align 8
  %213 = bitcast i32* %212 to i8*
  call void @free(i8* noundef %213) #3
  %214 = load %class.PStream*, %class.PStream** %8, align 8
  %215 = bitcast %class.PStream* %214 to i32 (%class.PStream*)***
  %216 = load i32 (%class.PStream*)**, i32 (%class.PStream*)*** %215, align 8
  %217 = getelementptr inbounds i32 (%class.PStream*)*, i32 (%class.PStream*)** %216, i64 2
  %218 = load i32 (%class.PStream*)*, i32 (%class.PStream*)** %217, align 8
  %219 = call noundef i32 %218(%class.PStream* noundef nonnull align 8 dereferenceable(8) %214)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %204
  br label %223

222:                                              ; preds = %204
  br label %120, !llvm.loop !43

223:                                              ; preds = %221
  %224 = getelementptr inbounds %struct.Points, %struct.Points* %20, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = mul i64 %225, 1
  %227 = call noalias i8* @malloc(i64 noundef %226) #19
  store i8* %227, i8** @_ZL17switch_membership, align 8
  %228 = getelementptr inbounds %struct.Points, %struct.Points* %20, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = call noalias i8* @calloc(i64 noundef %229, i64 noundef 1) #20
  store i8* %230, i8** @_ZL9is_center, align 8
  %231 = getelementptr inbounds %struct.Points, %struct.Points* %20, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = mul i64 %232, 4
  %234 = call noalias i8* @malloc(i64 noundef %233) #19
  %235 = bitcast i8* %234 to i32*
  store i32* %235, i32** @_ZL12center_table, align 8
  %236 = load i64, i64* %9, align 8
  %237 = load i64, i64* %10, align 8
  call void @_Z11localSearchP6PointsllPl(%struct.Points* noundef %20, i64 noundef %236, i64 noundef %237, i64* noundef %23)
  %238 = call noundef i32 @_Z11contcentersP6Points(%struct.Points* noundef %20)
  %239 = load i64*, i64** %17, align 8
  %240 = load i8*, i8** %14, align 8
  call void @_Z12outcenterIDsP6PointsPlPc(%struct.Points* noundef %20, i64* noundef %239, i8* noundef %240)
  ret void
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1) #13 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %class.PStream*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = call noalias noundef nonnull i8* @_Znam(i64 noundef 1024) #21
  store i8* %19, i8** %6, align 8
  %20 = call noalias noundef nonnull i8* @_Znam(i64 noundef 1024) #21
  store i8* %20, i8** %7, align 8
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %22 = call i32 @fflush(%struct._IO_FILE* noundef null)
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 10
  br i1 %24, label %25, label %53

25:                                               ; preds = %2
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.13, i64 0, i64 0), i8* noundef %29)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i64 0, i64 0))
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0))
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0))
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0))
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.18, i64 0, i64 0))
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %41, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.19, i64 0, i64 0))
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %43, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0))
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %45, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0))
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0))
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %51, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.24, i64 0, i64 0))
  call void @exit(i32 noundef 1) #23
  unreachable

53:                                               ; preds = %2
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @atoi(i8* noundef %56) #24
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %8, align 8
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 2
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @atoi(i8* noundef %61) #24
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %9, align 8
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 3
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @atoi(i8* noundef %66) #24
  store i32 %67, i32* %13, align 4
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 4
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @atoi(i8* noundef %70) #24
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %10, align 8
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 5
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @atoi(i8* noundef %75) #24
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %11, align 8
  %78 = load i8**, i8*** %5, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 6
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @atoi(i8* noundef %80) #24
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %12, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load i8**, i8*** %5, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 7
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @strcpy(i8* noundef %83, i8* noundef %86) #3
  %88 = load i8*, i8** %6, align 8
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 8
  %91 = load i8*, i8** %90, align 8
  %92 = call i8* @strcpy(i8* noundef %88, i8* noundef %91) #3
  %93 = load i8**, i8*** %5, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 9
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @atoi(i8* noundef %95) #24
  store i32 %96, i32* @_ZL5nproc, align 4
  call void @srand48(i64 noundef 1) #3
  %97 = load i64, i64* %10, align 8
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %53
  %100 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 16) #21
  %101 = bitcast i8* %100 to %class.SimStream*
  %102 = load i64, i64* %10, align 8
  invoke void @_ZN9SimStreamC2El(%class.SimStream* noundef nonnull align 8 dereferenceable(16) %101, i64 noundef %102)
          to label %103 unwind label %105

103:                                              ; preds = %99
  %104 = bitcast %class.SimStream* %101 to %class.PStream*
  store %class.PStream* %104, %class.PStream** %14, align 8
  br label %119

105:                                              ; preds = %99
  %106 = landingpad { i8*, i32 }
          cleanup
  %107 = extractvalue { i8*, i32 } %106, 0
  store i8* %107, i8** %15, align 8
  %108 = extractvalue { i8*, i32 } %106, 1
  store i32 %108, i32* %16, align 4
  call void @_ZdlPv(i8* noundef %100) #22
  br label %137

109:                                              ; preds = %53
  %110 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 16) #21
  %111 = bitcast i8* %110 to %class.FileStream*
  %112 = load i8*, i8** %7, align 8
  invoke void @_ZN10FileStreamC2EPc(%class.FileStream* noundef nonnull align 8 dereferenceable(16) %111, i8* noundef %112)
          to label %113 unwind label %115

113:                                              ; preds = %109
  %114 = bitcast %class.FileStream* %111 to %class.PStream*
  store %class.PStream* %114, %class.PStream** %14, align 8
  br label %119

115:                                              ; preds = %109
  %116 = landingpad { i8*, i32 }
          cleanup
  %117 = extractvalue { i8*, i32 } %116, 0
  store i8* %117, i8** %15, align 8
  %118 = extractvalue { i8*, i32 } %116, 1
  store i32 %118, i32* %16, align 4
  call void @_ZdlPv(i8* noundef %110) #22
  br label %137

119:                                              ; preds = %113, %103
  %120 = call contract noundef double @_Z7gettimev()
  store double %120, double* %17, align 8
  store double 0.000000e+00, double* @serial_t, align 8
  store double 0.000000e+00, double* @cpu_to_gpu_t, align 8
  store double 0.000000e+00, double* @gpu_to_cpu_t, align 8
  store double 0.000000e+00, double* @alloc_t, align 8
  store double 0.000000e+00, double* @free_t, align 8
  store double 0.000000e+00, double* @kernel_t, align 8
  store i8 0, i8* @isCoordChanged, align 1
  %121 = load %class.PStream*, %class.PStream** %14, align 8
  %122 = load i64, i64* %8, align 8
  %123 = load i64, i64* %9, align 8
  %124 = load i32, i32* %13, align 4
  %125 = load i64, i64* %11, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load i8*, i8** %6, align 8
  call void @_Z13streamClusterP7PStreamllillPc(%class.PStream* noundef %121, i64 noundef %122, i64 noundef %123, i32 noundef %124, i64 noundef %125, i64 noundef %126, i8* noundef %127)
  call void @_Z10freeDevMemv()
  call void @_Z11freeHostMemv()
  %128 = call contract noundef double @_Z7gettimev()
  store double %128, double* %18, align 8
  %129 = load %class.PStream*, %class.PStream** %14, align 8
  %130 = icmp eq %class.PStream* %129, null
  br i1 %130, label %136, label %131

131:                                              ; preds = %119
  %132 = bitcast %class.PStream* %129 to void (%class.PStream*)***
  %133 = load void (%class.PStream*)**, void (%class.PStream*)*** %132, align 8
  %134 = getelementptr inbounds void (%class.PStream*)*, void (%class.PStream*)** %133, i64 4
  %135 = load void (%class.PStream*)*, void (%class.PStream*)** %134, align 8
  call void %135(%class.PStream* noundef nonnull align 8 dereferenceable(8) %129) #3
  br label %136

136:                                              ; preds = %131, %119
  ret i32 0

137:                                              ; preds = %115, %105
  %138 = load i8*, i8** %15, align 8
  %139 = load i32, i32* %16, align 4
  %140 = insertvalue { i8*, i32 } undef, i8* %138, 0
  %141 = insertvalue { i8*, i32 } %140, i32 %139, 1
  resume { i8*, i32 } %141
}

declare i32 @printf(i8* noundef, ...) #1

declare i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #14

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare void @srand48(i64 noundef) #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) #10

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9SimStreamC2El(%class.SimStream* noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) unnamed_addr #15 comdat align 2 {
  %3 = alloca %class.SimStream*, align 8
  %4 = alloca i64, align 8
  store %class.SimStream* %0, %class.SimStream** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %class.SimStream*, %class.SimStream** %3, align 8
  %6 = bitcast %class.SimStream* %5 to %class.PStream*
  call void @_ZN7PStreamC2Ev(%class.PStream* noundef nonnull align 8 dereferenceable(8) %6) #3
  %7 = bitcast %class.SimStream* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV9SimStream, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %7, align 8
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds %class.SimStream, %class.SimStream* %5, i32 0, i32 1
  store i64 %8, i64* %9, align 8
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) #11

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10FileStreamC2EPc(%class.FileStream* noundef nonnull align 8 dereferenceable(16) %0, i8* noundef %1) unnamed_addr #16 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.FileStream*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %class.FileStream* %0, %class.FileStream** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %class.FileStream*, %class.FileStream** %3, align 8
  %8 = bitcast %class.FileStream* %7 to %class.PStream*
  call void @_ZN7PStreamC2Ev(%class.PStream* noundef nonnull align 8 dereferenceable(8) %8) #3
  %9 = bitcast %class.FileStream* %7 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV10FileStream, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %9, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = invoke %struct._IO_FILE* @fopen(i8* noundef %10, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
          to label %12 unwind label %22

12:                                               ; preds = %2
  %13 = getelementptr inbounds %class.FileStream, %class.FileStream* %7, i32 0, i32 1
  store %struct._IO_FILE* %11, %struct._IO_FILE** %13, align 8
  %14 = getelementptr inbounds %class.FileStream, %class.FileStream* %7, i32 0, i32 1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %16 = icmp eq %struct._IO_FILE* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i8* noundef %19)
          to label %21 unwind label %22

21:                                               ; preds = %17
  call void @exit(i32 noundef 1) #23
  unreachable

22:                                               ; preds = %17, %2
  %23 = landingpad { i8*, i32 }
          cleanup
  %24 = extractvalue { i8*, i32 } %23, 0
  store i8* %24, i8** %5, align 8
  %25 = extractvalue { i8*, i32 } %23, 1
  store i32 %25, i32* %6, align 4
  %26 = bitcast %class.FileStream* %7 to %class.PStream*
  call void @_ZN7PStreamD2Ev(%class.PStream* noundef nonnull align 8 dereferenceable(8) %26) #3
  br label %28

27:                                               ; preds = %12
  ret void

28:                                               ; preds = %22
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = insertvalue { i8*, i32 } undef, i8* %29, 0
  %32 = insertvalue { i8*, i32 } %31, i32 %30, 1
  resume { i8*, i32 } %32
}

declare void @_Z10freeDevMemv() #1

declare void @_Z11freeHostMemv() #1

; Function Attrs: nounwind
declare float @logf(float noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7PStreamC2Ev(%class.PStream* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #15 comdat align 2 {
  %2 = alloca %class.PStream*, align 8
  store %class.PStream* %0, %class.PStream** %2, align 8
  %3 = load %class.PStream*, %class.PStream** %2, align 8
  %4 = bitcast %class.PStream* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV7PStream, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZN9SimStream4readEPfii(%class.SimStream* noundef nonnull align 8 dereferenceable(16) %0, float* noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 comdat align 2 {
  %5 = alloca %class.SimStream*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %class.SimStream* %0, %class.SimStream** %5, align 8
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %class.SimStream*, %class.SimStream** %5, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %49, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %class.SimStream, %class.SimStream* %12, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i1 [ false, %13 ], [ %20, %17 ]
  br i1 %22, label %23, label %52

23:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %40, %23
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = call i64 @lrand48() #3
  %30 = sitofp i64 %29 to float
  %31 = fdiv contract float %30, 0x41E0000000000000
  %32 = load float*, float** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %32, i64 %38
  store float %31, float* %39, align 4
  br label %40

40:                                               ; preds = %28
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %24, !llvm.loop !44

43:                                               ; preds = %24
  %44 = getelementptr inbounds %class.SimStream, %class.SimStream* %12, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %44, align 8
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %13, !llvm.loop !45

52:                                               ; preds = %21
  %53 = load i64, i64* %9, align 8
  ret i64 %53
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN9SimStream6ferrorEv(%class.SimStream* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %class.SimStream*, align 8
  store %class.SimStream* %0, %class.SimStream** %2, align 8
  %3 = load %class.SimStream*, %class.SimStream** %2, align 8
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN9SimStream4feofEv(%class.SimStream* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %class.SimStream*, align 8
  store %class.SimStream* %0, %class.SimStream** %2, align 8
  %3 = load %class.SimStream*, %class.SimStream** %2, align 8
  %4 = getelementptr inbounds %class.SimStream, %class.SimStream* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp sle i64 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9SimStreamD2Ev(%class.SimStream* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #15 comdat align 2 {
  %2 = alloca %class.SimStream*, align 8
  store %class.SimStream* %0, %class.SimStream** %2, align 8
  %3 = load %class.SimStream*, %class.SimStream** %2, align 8
  %4 = bitcast %class.SimStream* %3 to %class.PStream*
  call void @_ZN7PStreamD2Ev(%class.PStream* noundef nonnull align 8 dereferenceable(8) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9SimStreamD0Ev(%class.SimStream* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #15 comdat align 2 {
  %2 = alloca %class.SimStream*, align 8
  store %class.SimStream* %0, %class.SimStream** %2, align 8
  %3 = load %class.SimStream*, %class.SimStream** %2, align 8
  call void @_ZN9SimStreamD2Ev(%class.SimStream* noundef nonnull align 8 dereferenceable(16) %3) #3
  %4 = bitcast %class.SimStream* %3 to i8*
  call void @_ZdlPv(i8* noundef %4) #22
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7PStreamD2Ev(%class.PStream* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #15 comdat align 2 {
  %2 = alloca %class.PStream*, align 8
  store %class.PStream* %0, %class.PStream** %2, align 8
  %3 = load %class.PStream*, %class.PStream** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7PStreamD0Ev(%class.PStream* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #15 comdat align 2 {
  %2 = alloca %class.PStream*, align 8
  store %class.PStream* %0, %class.PStream** %2, align 8
  %3 = load %class.PStream*, %class.PStream** %2, align 8
  call void @llvm.trap() #23
  unreachable
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #17

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZN10FileStream4readEPfii(%class.FileStream* noundef nonnull align 8 dereferenceable(16) %0, float* noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 comdat align 2 {
  %5 = alloca %class.FileStream*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %class.FileStream* %0, %class.FileStream** %5, align 8
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %class.FileStream*, %class.FileStream** %5, align 8
  %10 = load float*, float** %6, align 8
  %11 = bitcast float* %10 to i8*
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %class.FileStream, %class.FileStream* %9, i32 0, i32 1
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8
  %19 = call i64 @fread(i8* noundef %11, i64 noundef %14, i64 noundef %16, %struct._IO_FILE* noundef %18)
  ret i64 %19
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN10FileStream6ferrorEv(%class.FileStream* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %class.FileStream*, align 8
  store %class.FileStream* %0, %class.FileStream** %2, align 8
  %3 = load %class.FileStream*, %class.FileStream** %2, align 8
  %4 = getelementptr inbounds %class.FileStream, %class.FileStream* %3, i32 0, i32 1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %6 = call i32 @ferror(%struct._IO_FILE* noundef %5) #3
  ret i32 %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN10FileStream4feofEv(%class.FileStream* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %class.FileStream*, align 8
  store %class.FileStream* %0, %class.FileStream** %2, align 8
  %3 = load %class.FileStream*, %class.FileStream** %2, align 8
  %4 = getelementptr inbounds %class.FileStream, %class.FileStream* %3, i32 0, i32 1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %6 = call i32 @feof(%struct._IO_FILE* noundef %5) #3
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10FileStreamD2Ev(%class.FileStream* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #15 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.FileStream*, align 8
  store %class.FileStream* %0, %class.FileStream** %2, align 8
  %3 = load %class.FileStream*, %class.FileStream** %2, align 8
  %4 = bitcast %class.FileStream* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV10FileStream, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  %5 = invoke i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0))
          to label %6 unwind label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.FileStream, %class.FileStream* %3, i32 0, i32 1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %9 = invoke i32 @fclose(%struct._IO_FILE* noundef %8)
          to label %10 unwind label %12

10:                                               ; preds = %6
  %11 = bitcast %class.FileStream* %3 to %class.PStream*
  call void @_ZN7PStreamD2Ev(%class.PStream* noundef nonnull align 8 dereferenceable(8) %11) #3
  ret void

12:                                               ; preds = %6, %1
  %13 = landingpad { i8*, i32 }
          catch i8* null
  %14 = extractvalue { i8*, i32 } %13, 0
  call void @__clang_call_terminate(i8* %14) #23
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10FileStreamD0Ev(%class.FileStream* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #15 comdat align 2 {
  %2 = alloca %class.FileStream*, align 8
  store %class.FileStream* %0, %class.FileStream** %2, align 8
  %3 = load %class.FileStream*, %class.FileStream** %2, align 8
  call void @_ZN10FileStreamD2Ev(%class.FileStream* noundef nonnull align 8 dereferenceable(16) %3) #3
  %4 = bitcast %class.FileStream* %3 to i8*
  call void @_ZdlPv(i8* noundef %4) #22
  ret void
}

declare i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #18 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #3
  call void @_ZSt9terminatev() #23
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_streamcluster_cuda_cpu.cu() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nocallback nofree nounwind willreturn }
attributes #7 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { noinline noreturn nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(0,1) }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind readonly willreturn }

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
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
