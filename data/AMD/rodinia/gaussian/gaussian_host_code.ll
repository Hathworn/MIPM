; ModuleID = 'hip/gaussian/gaussian.cu'
source_filename = "hip/gaussian/gaussian.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%class.RDTimerCPU = type { %class.RDTimer }
%class.RDTimer = type { i32 (...)**, i8, %"class.std::basic_string", %"class.std::basic_string", i64, i64, float, float }
%"class.std::basic_string" = type { %"struct.std::basic_string<char>::_Alloc_hider" }
%"struct.std::basic_string<char>::_Alloc_hider" = type { i8* }
%"class.std::allocator" = type { i8 }
%class.SimplePerfSerializer = type { %class.PerfSerializer.base, i32, i64, i8*, i64, i8* }
%class.PerfSerializer.base = type <{ i32 (...)**, i8, [7 x i8], %struct._IO_FILE*, %struct._IO_FILE*, i8, [100 x i8], [100 x i8] }>
%class.PerfSerializer = type <{ i32 (...)**, i8, [7 x i8], %struct._IO_FILE*, %struct._IO_FILE*, i8, [100 x i8], [100 x i8], [7 x i8] }>
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

$_ZSt3expf = comdat any

$_ZN10RDTimerCPUC2ESs = comdat any

$_ZN7RDTimer5ResetESs = comdat any

$_ZN20SimplePerfSerializerC2EPc = comdat any

$_ZN4dim3C2Ejjj = comdat any

$_ZSt3absf = comdat any

$_ZN7RDTimerC2ESs = comdat any

$_ZN10RDTimerCPUD2Ev = comdat any

$_ZN10RDTimerCPUD0Ev = comdat any

$_ZN10RDTimerCPU5StartEv = comdat any

$_ZN10RDTimerCPU4StopEv = comdat any

$_ZN10RDTimerCPU10AccumulateEv = comdat any

$_ZN7RDTimerD2Ev = comdat any

$_ZN7RDTimerD0Ev = comdat any

$_Z8get_timev = comdat any

$_Z12elapsed_timexx = comdat any

$_ZN7RDTimer5ResetEv = comdat any

$_ZN14PerfSerializerC2EPc = comdat any

$_ZN20SimplePerfSerializerD2Ev = comdat any

$_ZN20SimplePerfSerializerD0Ev = comdat any

$_ZN20SimplePerfSerializer9SerializeEPK7RDTimer = comdat any

$_ZN14PerfSerializerD2Ev = comdat any

$_ZN14PerfSerializerD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNK7RDTimer4TypeEv = comdat any

$_ZNK7RDTimer3MsgEv = comdat any

$_ZNK7RDTimer12AccumulatingEv = comdat any

$_ZNK7RDTimer4TimeEv = comdat any

$_ZTV10RDTimerCPU = comdat any

$_ZTS10RDTimerCPU = comdat any

$_ZTS7RDTimer = comdat any

$_ZTI7RDTimer = comdat any

$_ZTI10RDTimerCPU = comdat any

$_ZTV7RDTimer = comdat any

$_ZTV20SimplePerfSerializer = comdat any

$_ZTS20SimplePerfSerializer = comdat any

$_ZTS14PerfSerializer = comdat any

$_ZTI14PerfSerializer = comdat any

$_ZTI20SimplePerfSerializer = comdat any

$_ZTV14PerfSerializer = comdat any

$__hip_gpubin_handle = comdat any

@Size = dso_local global i32 0, align 4
@a = dso_local global float* null, align 8
@b = dso_local global float* null, align 8
@finalVec = dso_local global float* null, align 8
@m = dso_local global float* null, align 8
@fp = dso_local global %struct._IO_FILE* null, align 8
@totalKernelTime = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"WG size of kernel 1 = %d, WG size of kernel 2= %d X %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Usage: gaussian -f filename / -s size [-q]\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"-q (quiet) suppresses printing the matrix and result values.\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"-f (filename) path of input file\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"-s (size) size of matrix. Create matrix and rhs in this program \0A\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"The first line of the file contains the dimension of the matrix, n.\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"The second line of the file is a newline.\0A\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"The next n lines contain n tab separated values for the matrix.\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"The next line of the file is a newline.\0A\00", align 1
@.str.9 = private unnamed_addr constant [70 x i8] c"The next line of the file is a 1xn vector with tab separated values.\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"The next line of the file is a newline. (optional)\0A\00", align 1
@.str.11 = private unnamed_addr constant [69 x i8] c"The final line of the file is the pre-computed solution. (optional)\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Example: matrix4.txt:\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"4\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"-0.6\09-0.5\090.7\090.3\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"-0.3\09-0.9\090.3\090.7\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"-0.4\09-0.5\09-0.3\09-0.8\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"0.0\09-0.1\090.2\090.9\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"-0.85\09-0.68\090.24\09-0.53\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"0.7\090.0\09-0.4\09-0.5\0A\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"Overall CPU Time\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c"Create matrix internally in parse, size = %d \0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"Read file from %s \0A\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"Matrix m is: \0A\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"Matrix a is: \0A\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"Array b is: \0A\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"The final solution is: \0A\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"Overall CPU time = %lfs\0A\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_Z4Fan1PfS_ii = constant void (float*, float*, i32, i32)* @_Z19__device_stub__Fan1PfS_ii, align 8
@_Z4Fan2PfS_S_iii = constant void (float*, float*, float*, i32, i32, i32)* @_Z19__device_stub__Fan2PfS_S_iii, align 8
@.str.32 = private unnamed_addr constant [10 x i8] c"./gausian\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"Malloc Time\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"CPU to GPU Transfer Time\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"COMPUTE:Kernel Execution Time\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"Fan2\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"GPU to CPU Transfer Time\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"time CPU to GPU memory copy = %lfs\0A\00", align 1
@.str.39 = private unnamed_addr constant [41 x i8] c"time GPU to CPU memory copy back = %lfs\0A\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"time GPU malloc = %lfs\0A\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"time kernel = %lfs\0A\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"%8.2f \00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"%.2f \00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.46 = private unnamed_addr constant [21 x i8] c"Cuda error: %s: %s.\0A\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"Test Failed\0A\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"out[%d]: %f; b[%d]:%f; diff:%f\0A\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"Test Pass\0A\00", align 1
@_ZTV10RDTimerCPU = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI10RDTimerCPU to i8*), i8* bitcast (void (%class.RDTimerCPU*)* @_ZN10RDTimerCPUD2Ev to i8*), i8* bitcast (void (%class.RDTimerCPU*)* @_ZN10RDTimerCPUD0Ev to i8*), i8* bitcast (void (%class.RDTimerCPU*)* @_ZN10RDTimerCPU5StartEv to i8*), i8* bitcast (float (%class.RDTimerCPU*)* @_ZN10RDTimerCPU4StopEv to i8*), i8* bitcast (float (%class.RDTimerCPU*)* @_ZN10RDTimerCPU10AccumulateEv to i8*)] }, comdat, align 8
@.str.50 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS10RDTimerCPU = linkonce_odr dso_local constant [13 x i8] c"10RDTimerCPU\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS7RDTimer = linkonce_odr dso_local constant [9 x i8] c"7RDTimer\00", comdat, align 1
@_ZTI7RDTimer = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_ZTS7RDTimer, i32 0, i32 0) }, comdat, align 8
@_ZTI10RDTimerCPU = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @_ZTS10RDTimerCPU, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7RDTimer to i8*) }, comdat, align 8
@_ZTV7RDTimer = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI7RDTimer to i8*), i8* bitcast (void (%class.RDTimer*)* @_ZN7RDTimerD2Ev to i8*), i8* bitcast (void (%class.RDTimer*)* @_ZN7RDTimerD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.51 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@_ZTV20SimplePerfSerializer = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI20SimplePerfSerializer to i8*), i8* bitcast (void (%class.SimplePerfSerializer*)* @_ZN20SimplePerfSerializerD2Ev to i8*), i8* bitcast (void (%class.SimplePerfSerializer*)* @_ZN20SimplePerfSerializerD0Ev to i8*), i8* bitcast (void (%class.SimplePerfSerializer*, %class.RDTimer*)* @_ZN20SimplePerfSerializer9SerializeEPK7RDTimer to i8*)] }, comdat, align 8
@_ZTS20SimplePerfSerializer = linkonce_odr dso_local constant [23 x i8] c"20SimplePerfSerializer\00", comdat, align 1
@_ZTS14PerfSerializer = linkonce_odr dso_local constant [17 x i8] c"14PerfSerializer\00", comdat, align 1
@_ZTI14PerfSerializer = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @_ZTS14PerfSerializer, i32 0, i32 0) }, comdat, align 8
@_ZTI20SimplePerfSerializer = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @_ZTS20SimplePerfSerializer, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI14PerfSerializer to i8*) }, comdat, align 8
@_ZTV14PerfSerializer = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI14PerfSerializer to i8*), i8* bitcast (void (%class.PerfSerializer*)* @_ZN14PerfSerializerD2Ev to i8*), i8* bitcast (void (%class.PerfSerializer*)* @_ZN14PerfSerializerD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.52 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c".perf\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c".perf.tmp\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"File exists\0A\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"Could not open 1\0A\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"Could not open\00", align 1
@_ZTIPKc = external constant i8*
@.str.58 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"Could not open 2\0A\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"Could not open 3\0A\00", align 1
@.str.61 = private unnamed_addr constant [36 x i8] c"Opened file %s for performance log\0A\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"did not specify file\00", align 1
@.str.63 = private unnamed_addr constant [26 x i8] c"Closed performance log 1\0A\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"Closed performance log 2\0A\00", align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"COPYING FILE: %s to %s\0A\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"mv %s %s\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"malformed line\0A\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"malformed line\00", align 1
@.str.70 = private unnamed_addr constant [28 x i8] c"incompatible platform type\0A\00", align 1
@.str.71 = private unnamed_addr constant [27 x i8] c"incompatible platform type\00", align 1
@.str.72 = private unnamed_addr constant [30 x i8] c"malformed line, second token\0A\00", align 1
@.str.73 = private unnamed_addr constant [39 x i8] c"malformed malformed line, second token\00", align 1
@.str.74 = private unnamed_addr constant [28 x i8] c"incompatible message:%s,%s\0A\00", align 1
@.str.75 = private unnamed_addr constant [34 x i8] c"incompatible incompatible message\00", align 1
@.str.76 = private unnamed_addr constant [29 x i8] c"malformed line, third token\0A\00", align 1
@.str.77 = private unnamed_addr constant [28 x i8] c"malformed line, third token\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"ACCUM\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"ONEOFF\00", align 1
@.str.80 = private unnamed_addr constant [25 x i8] c"incompatible timer type\0A\00", align 1
@.str.81 = private unnamed_addr constant [37 x i8] c"incompatible incompatible timer type\00", align 1
@.str.82 = private unnamed_addr constant [28 x i8] c"malformed line forth token\0A\00", align 1
@.str.83 = private unnamed_addr constant [27 x i8] c"malformed line forth token\00", align 1
@.str.84 = private unnamed_addr constant [66 x i8] c"INFO: number of trials so far not found. Old format. Will update\0A\00", align 1
@.str.85 = private unnamed_addr constant [20 x i8] c"%s, %s, %s, %f, %d\0A\00", align 1
@0 = private unnamed_addr constant [14 x i8] c"_Z4Fan1PfS_ii\00", align 1
@1 = private unnamed_addr constant [17 x i8] c"_Z4Fan2PfS_S_iii\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z13create_matrixPfi(float* noundef %0, i32 noundef %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca float, align 4
  store float* %0, float** %3, align 8
  store i32 %1, i32* %4, align 4
  store float 0xBF847AE140000000, float* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = mul nsw i32 2, %11
  %13 = sub nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca float, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  store float 0.000000e+00, float* %10, align 4
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %44, %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %17
  %22 = load float, float* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sitofp i32 %23 to float
  %25 = fmul contract float %22, %24
  %26 = call contract noundef float @_ZSt3expf(float noundef %25)
  %27 = fmul contract float 1.000000e+01, %26
  store float %27, float* %10, align 4
  %28 = load i32, i32* %4, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %6, align 4
  %32 = load float, float* %10, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %16, i64 %34
  store float %32, float* %35, align 4
  %36 = load i32, i32* %4, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %6, align 4
  %40 = load float, float* %10, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %16, i64 %42
  store float %40, float* %43, align 4
  br label %44

44:                                               ; preds = %21
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %17, !llvm.loop !6

47:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %79, %47
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %82

52:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %75, %52
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* %5, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %16, i64 %64
  %66 = load float, float* %65, align 4
  %67 = load float*, float** %3, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %4, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %67, i64 %73
  store float %66, float* %74, align 4
  br label %75

75:                                               ; preds = %57
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %53, !llvm.loop !8

78:                                               ; preds = %53
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %48, !llvm.loop !9

82:                                               ; preds = %48
  %83 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %83)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_ZSt3expf(float noundef %0) #2 comdat {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = call contract float @expf(float noundef %3) #18
  ret float %4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1) #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca float, align 4
  %11 = alloca %class.RDTimerCPU*, align 8
  %12 = alloca %"class.std::basic_string", align 8
  %13 = alloca %"class.std::allocator", align 1
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i1, align 1
  %17 = alloca %"class.std::basic_string", align 8
  %18 = alloca %"class.std::allocator", align 1
  %19 = alloca %class.SimplePerfSerializer*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 noundef 512, i32 noundef 4, i32 noundef 4)
  store i32 0, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %46

23:                                               ; preds = %2
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0))
  %29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.9, i64 0, i64 0))
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.11, i64 0, i64 0))
  %35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %36 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  %40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  %41 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  %42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0))
  %44 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %45 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  call void @exit(i32 noundef 0) #19
  unreachable

46:                                               ; preds = %2
  %47 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 56) #20
  store i1 true, i1* %16, align 1
  %48 = bitcast i8* %47 to %class.RDTimerCPU*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %13) #18
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %13)
          to label %49 unwind label %90

49:                                               ; preds = %46
  invoke void @_ZN10RDTimerCPUC2ESs(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %48, %"class.std::basic_string"* noundef %12)
          to label %50 unwind label %94

50:                                               ; preds = %49
  store i1 false, i1* %16, align 1
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12) #18
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %13) #18
  store %class.RDTimerCPU* %48, %class.RDTimerCPU** %11, align 8
  %51 = load %class.RDTimerCPU*, %class.RDTimerCPU** %11, align 8
  %52 = bitcast %class.RDTimerCPU* %51 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %18) #18
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %17, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %18)
          to label %53 unwind label %102

53:                                               ; preds = %50
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %52, %"class.std::basic_string"* noundef %17)
          to label %54 unwind label %106

54:                                               ; preds = %53
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %17) #18
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %18) #18
  %55 = load %class.RDTimerCPU*, %class.RDTimerCPU** %11, align 8
  %56 = bitcast %class.RDTimerCPU* %55 to void (%class.RDTimerCPU*)***
  %57 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %56, align 8
  %58 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %57, i64 2
  %59 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %58, align 8
  call void %59(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %55)
  %60 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 272) #20
  %61 = bitcast i8* %60 to %class.SimplePerfSerializer*
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  %64 = load i8*, i8** %63, align 8
  invoke void @_ZN20SimplePerfSerializerC2EPc(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %61, i8* noundef %64)
          to label %65 unwind label %111

65:                                               ; preds = %54
  store %class.SimplePerfSerializer* %61, %class.SimplePerfSerializer** %19, align 8
  store i32 1, i32* %7, align 4
  br label %66

66:                                               ; preds = %177, %65
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %180

70:                                               ; preds = %66
  %71 = load i8**, i8*** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 45
  br i1 %79, label %80, label %176

80:                                               ; preds = %70
  %81 = load i8**, i8*** %5, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  store i8 %87, i8* %9, align 1
  %88 = load i8, i8* %9, align 1
  %89 = sext i8 %88 to i32
  switch i32 %89, label %175 [
    i32 115, label %115
    i32 102, label %160
    i32 113, label %174
  ]

90:                                               ; preds = %46
  %91 = landingpad { i8*, i32 }
          cleanup
  %92 = extractvalue { i8*, i32 } %91, 0
  store i8* %92, i8** %14, align 8
  %93 = extractvalue { i8*, i32 } %91, 1
  store i32 %93, i32* %15, align 4
  br label %98

94:                                               ; preds = %49
  %95 = landingpad { i8*, i32 }
          cleanup
  %96 = extractvalue { i8*, i32 } %95, 0
  store i8* %96, i8** %14, align 8
  %97 = extractvalue { i8*, i32 } %95, 1
  store i32 %97, i32* %15, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12) #18
  br label %98

98:                                               ; preds = %94, %90
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %13) #18
  %99 = load i1, i1* %16, align 1
  br i1 %99, label %100, label %101

100:                                              ; preds = %98
  call void @_ZdlPv(i8* noundef %47) #21
  br label %101

101:                                              ; preds = %100, %98
  br label %242

102:                                              ; preds = %50
  %103 = landingpad { i8*, i32 }
          cleanup
  %104 = extractvalue { i8*, i32 } %103, 0
  store i8* %104, i8** %14, align 8
  %105 = extractvalue { i8*, i32 } %103, 1
  store i32 %105, i32* %15, align 4
  br label %110

106:                                              ; preds = %53
  %107 = landingpad { i8*, i32 }
          cleanup
  %108 = extractvalue { i8*, i32 } %107, 0
  store i8* %108, i8** %14, align 8
  %109 = extractvalue { i8*, i32 } %107, 1
  store i32 %109, i32* %15, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %17) #18
  br label %110

110:                                              ; preds = %106, %102
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %18) #18
  br label %242

111:                                              ; preds = %54
  %112 = landingpad { i8*, i32 }
          cleanup
  %113 = extractvalue { i8*, i32 } %112, 0
  store i8* %113, i8** %14, align 8
  %114 = extractvalue { i8*, i32 } %112, 1
  store i32 %114, i32* %15, align 4
  call void @_ZdlPv(i8* noundef %60) #21
  br label %242

115:                                              ; preds = %80
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  %118 = load i8**, i8*** %5, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @atoi(i8* noundef %122) #22
  store i32 %123, i32* @Size, align 4
  %124 = load i32, i32* @Size, align 4
  %125 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.23, i64 0, i64 0), i32 noundef %124)
  %126 = load i32, i32* @Size, align 4
  %127 = load i32, i32* @Size, align 4
  %128 = mul nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 4
  %131 = call noalias i8* @malloc(i64 noundef %130) #23
  %132 = bitcast i8* %131 to float*
  store float* %132, float** @a, align 8
  %133 = load float*, float** @a, align 8
  %134 = load i32, i32* @Size, align 4
  call void @_Z13create_matrixPfi(float* noundef %133, i32 noundef %134)
  %135 = load i32, i32* @Size, align 4
  %136 = sext i32 %135 to i64
  %137 = mul i64 %136, 4
  %138 = call noalias i8* @malloc(i64 noundef %137) #23
  %139 = bitcast i8* %138 to float*
  store float* %139, float** @b, align 8
  store i32 0, i32* %8, align 4
  br label %140

140:                                              ; preds = %149, %115
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @Size, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %140
  %145 = load float*, float** @b, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float, float* %145, i64 %147
  store float 1.000000e+00, float* %148, align 4
  br label %149

149:                                              ; preds = %144
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %8, align 4
  br label %140, !llvm.loop !10

152:                                              ; preds = %140
  %153 = load i32, i32* @Size, align 4
  %154 = load i32, i32* @Size, align 4
  %155 = mul nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = mul i64 %156, 4
  %158 = call noalias i8* @malloc(i64 noundef %157) #23
  %159 = bitcast i8* %158 to float*
  store float* %159, float** @m, align 8
  br label %175

160:                                              ; preds = %80
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %7, align 4
  %163 = load i8**, i8*** %5, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i8* noundef %167)
  %169 = load i8**, i8*** %5, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %169, i64 %171
  %173 = load i8*, i8** %172, align 8
  call void @_Z15InitProblemOncePc(i8* noundef %173)
  br label %175

174:                                              ; preds = %80
  store i32 0, i32* %6, align 4
  br label %175

175:                                              ; preds = %80, %174, %160, %152
  br label %176

176:                                              ; preds = %175, %70
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %7, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %7, align 4
  br label %66, !llvm.loop !11

180:                                              ; preds = %66
  call void @_Z10InitPerRunv()
  call void @_Z10ForwardSubv()
  %181 = load i32, i32* %6, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %180
  %184 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0))
  %185 = load float*, float** @m, align 8
  %186 = load i32, i32* @Size, align 4
  %187 = load i32, i32* @Size, align 4
  call void @_Z8PrintMatPfii(float* noundef %185, i32 noundef %186, i32 noundef %187)
  %188 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0))
  %189 = load float*, float** @a, align 8
  %190 = load i32, i32* @Size, align 4
  %191 = load i32, i32* @Size, align 4
  call void @_Z8PrintMatPfii(float* noundef %189, i32 noundef %190, i32 noundef %191)
  %192 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0))
  %193 = load float*, float** @b, align 8
  %194 = load i32, i32* @Size, align 4
  call void @_Z8PrintAryPfi(float* noundef %193, i32 noundef %194)
  br label %195

195:                                              ; preds = %183, %180
  call void @_Z7BackSubv()
  %196 = load i32, i32* %6, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  %199 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0))
  %200 = load float*, float** @finalVec, align 8
  %201 = load i32, i32* @Size, align 4
  call void @_Z8PrintAryPfi(float* noundef %200, i32 noundef %201)
  br label %202

202:                                              ; preds = %198, %195
  %203 = load %class.RDTimerCPU*, %class.RDTimerCPU** %11, align 8
  %204 = bitcast %class.RDTimerCPU* %203 to float (%class.RDTimerCPU*)***
  %205 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %204, align 8
  %206 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %205, i64 3
  %207 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %206, align 8
  %208 = call contract noundef float %207(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %203)
  store float %208, float* %10, align 4
  %209 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %19, align 8
  %210 = load %class.RDTimerCPU*, %class.RDTimerCPU** %11, align 8
  %211 = bitcast %class.RDTimerCPU* %210 to %class.RDTimer*
  %212 = bitcast %class.SimplePerfSerializer* %209 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %213 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %212, align 8
  %214 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %213, i64 2
  %215 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %214, align 8
  call void %215(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %209, %class.RDTimer* noundef %211)
  %216 = load float, float* %10, align 4
  %217 = fpext float %216 to double
  %218 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0), double noundef %217)
  %219 = load %class.RDTimerCPU*, %class.RDTimerCPU** %11, align 8
  %220 = icmp eq %class.RDTimerCPU* %219, null
  br i1 %220, label %226, label %221

221:                                              ; preds = %202
  %222 = bitcast %class.RDTimerCPU* %219 to void (%class.RDTimerCPU*)***
  %223 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %222, align 8
  %224 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %223, i64 1
  %225 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %224, align 8
  call void %225(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %219) #18
  br label %226

226:                                              ; preds = %221, %202
  %227 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %19, align 8
  %228 = icmp eq %class.SimplePerfSerializer* %227, null
  br i1 %228, label %234, label %229

229:                                              ; preds = %226
  %230 = bitcast %class.SimplePerfSerializer* %227 to void (%class.SimplePerfSerializer*)***
  %231 = load void (%class.SimplePerfSerializer*)**, void (%class.SimplePerfSerializer*)*** %230, align 8
  %232 = getelementptr inbounds void (%class.SimplePerfSerializer*)*, void (%class.SimplePerfSerializer*)** %231, i64 1
  %233 = load void (%class.SimplePerfSerializer*)*, void (%class.SimplePerfSerializer*)** %232, align 8
  call void %233(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %227) #18
  br label %234

234:                                              ; preds = %229, %226
  call void @_Z12VerifyResultv()
  %235 = load float*, float** @m, align 8
  %236 = bitcast float* %235 to i8*
  call void @free(i8* noundef %236) #18
  %237 = load float*, float** @a, align 8
  %238 = bitcast float* %237 to i8*
  call void @free(i8* noundef %238) #18
  %239 = load float*, float** @b, align 8
  %240 = bitcast float* %239 to i8*
  call void @free(i8* noundef %240) #18
  %241 = load i32, i32* %3, align 4
  ret i32 %241

242:                                              ; preds = %111, %110, %101
  %243 = load i8*, i8** %14, align 8
  %244 = load i32, i32* %15, align 4
  %245 = insertvalue { i8*, i32 } undef, i8* %243, 0
  %246 = insertvalue { i8*, i32 } %245, i32 %244, 1
  resume { i8*, i32 } %246
}

declare i32 @printf(i8* noundef, ...) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) #6

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #7

declare void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i8* noundef, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10RDTimerCPUC2ESs(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0, %"class.std::basic_string"* noundef %1) unnamed_addr #8 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.RDTimerCPU*, align 8
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %class.RDTimerCPU* %0, %class.RDTimerCPU** %3, align 8
  %7 = load %class.RDTimerCPU*, %class.RDTimerCPU** %3, align 8
  %8 = bitcast %class.RDTimerCPU* %7 to %class.RDTimer*
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %4, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %1)
  invoke void @_ZN7RDTimerC2ESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %8, %"class.std::basic_string"* noundef %4)
          to label %9 unwind label %15

9:                                                ; preds = %2
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %4) #18
  %10 = bitcast %class.RDTimerCPU* %7 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV10RDTimerCPU, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %10, align 8
  %11 = bitcast %class.RDTimerCPU* %7 to %class.RDTimer*
  %12 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %11, i32 0, i32 3
  %13 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSEPKc(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0))
          to label %14 unwind label %19

14:                                               ; preds = %9
  ret void

15:                                               ; preds = %2
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  store i8* %17, i8** %5, align 8
  %18 = extractvalue { i8*, i32 } %16, 1
  store i32 %18, i32* %6, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %4) #18
  br label %24

19:                                               ; preds = %9
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = extractvalue { i8*, i32 } %20, 0
  store i8* %21, i8** %5, align 8
  %22 = extractvalue { i8*, i32 } %20, 1
  store i32 %22, i32* %6, align 4
  %23 = bitcast %class.RDTimerCPU* %7 to %class.RDTimer*
  call void @_ZN7RDTimerD2Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %23) #18
  br label %24

24:                                               ; preds = %19, %15
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = insertvalue { i8*, i32 } undef, i8* %25, 0
  %28 = insertvalue { i8*, i32 } %27, i32 %26, 1
  resume { i8*, i32 } %28
}

; Function Attrs: nounwind
declare void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) #9

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0, %"class.std::basic_string"* noundef %1) #0 comdat align 2 {
  %3 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %3, align 8
  %4 = load %class.RDTimer*, %class.RDTimer** %3, align 8
  %5 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %4, i32 0, i32 2
  %6 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %5, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %1)
  call void @_ZN7RDTimer5ResetEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %4)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN20SimplePerfSerializerC2EPc(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %0, i8* noundef %1) unnamed_addr #8 comdat align 2 {
  %3 = alloca %class.SimplePerfSerializer*, align 8
  %4 = alloca i8*, align 8
  store %class.SimplePerfSerializer* %0, %class.SimplePerfSerializer** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %3, align 8
  %6 = bitcast %class.SimplePerfSerializer* %5 to %class.PerfSerializer*
  %7 = load i8*, i8** %4, align 8
  call void @_ZN14PerfSerializerC2EPc(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %6, i8* noundef %7)
  %8 = bitcast %class.SimplePerfSerializer* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV20SimplePerfSerializer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %8, align 8
  %9 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %5, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %5, i32 0, i32 2
  store i64 -1, i64* %10, align 8
  %11 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %5, i32 0, i32 3
  store i8* null, i8** %11, align 8
  %12 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %5, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %5, i32 0, i32 5
  store i8* null, i8** %13, align 8
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #10

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #11

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z15InitProblemOncePc(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call %struct._IO_FILE* @fopen(i8* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0))
  store %struct._IO_FILE* %4, %struct._IO_FILE** @fp, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i32* noundef @Size)
  %7 = load i32, i32* @Size, align 4
  %8 = load i32, i32* @Size, align 4
  %9 = mul nsw i32 %7, %8
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = call noalias i8* @malloc(i64 noundef %11) #23
  %13 = bitcast i8* %12 to float*
  store float* %13, float** @a, align 8
  %14 = load float*, float** @a, align 8
  %15 = load i32, i32* @Size, align 4
  %16 = load i32, i32* @Size, align 4
  call void @_Z7InitMatPfii(float* noundef %14, i32 noundef %15, i32 noundef %16)
  %17 = load i32, i32* @Size, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = call noalias i8* @malloc(i64 noundef %19) #23
  %21 = bitcast i8* %20 to float*
  store float* %21, float** @b, align 8
  %22 = load float*, float** @b, align 8
  %23 = load i32, i32* @Size, align 4
  call void @_Z7InitAryPfi(float* noundef %22, i32 noundef %23)
  %24 = load i32, i32* @Size, align 4
  %25 = load i32, i32* @Size, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = call noalias i8* @malloc(i64 noundef %28) #23
  %30 = bitcast i8* %29 to float*
  store float* %30, float** @m, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z10InitPerRunv() #2 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %13, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @Size, align 4
  %5 = load i32, i32* @Size, align 4
  %6 = mul nsw i32 %4, %5
  %7 = icmp slt i32 %3, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load float*, float** @m, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds float, float* %9, i64 %11
  store float 0.000000e+00, float* %12, align 4
  br label %13

13:                                               ; preds = %8
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  br label %2, !llvm.loop !12

16:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z10ForwardSubv() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca i32, align 4
  %2 = alloca float*, align 8
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca %class.SimplePerfSerializer*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %class.RDTimerCPU*, align 8
  %13 = alloca %"class.std::basic_string", align 8
  %14 = alloca %"class.std::allocator", align 1
  %15 = alloca i1, align 1
  %16 = alloca %"class.std::basic_string", align 8
  %17 = alloca %"class.std::allocator", align 1
  %18 = alloca %"class.std::basic_string", align 8
  %19 = alloca %"class.std::allocator", align 1
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.dim3, align 4
  %23 = alloca %struct.dim3, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.dim3, align 4
  %27 = alloca %struct.dim3, align 4
  %28 = alloca %"class.std::basic_string", align 8
  %29 = alloca %"class.std::allocator", align 1
  %30 = alloca %struct.dim3, align 4
  %31 = alloca %struct.dim3, align 4
  %32 = alloca { i64, i32 }, align 4
  %33 = alloca { i64, i32 }, align 4
  %34 = alloca %struct.dim3, align 4
  %35 = alloca %struct.dim3, align 4
  %36 = alloca { i64, i32 }, align 4
  %37 = alloca { i64, i32 }, align 4
  %38 = alloca %"class.std::basic_string", align 8
  %39 = alloca %"class.std::allocator", align 1
  %40 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 272) #20
  %41 = bitcast i8* %40 to %class.SimplePerfSerializer*
  invoke void @_ZN20SimplePerfSerializerC2EPc(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %41, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0))
          to label %42 unwind label %207

42:                                               ; preds = %0
  store %class.SimplePerfSerializer* %41, %class.SimplePerfSerializer** %9, align 8
  %43 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 56) #20
  store i1 true, i1* %15, align 1
  %44 = bitcast i8* %43 to %class.RDTimerCPU*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %14) #18
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %13, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %14)
          to label %45 unwind label %211

45:                                               ; preds = %42
  invoke void @_ZN10RDTimerCPUC2ESs(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %44, %"class.std::basic_string"* noundef %13)
          to label %46 unwind label %215

46:                                               ; preds = %45
  store i1 false, i1* %15, align 1
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %13) #18
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %14) #18
  store %class.RDTimerCPU* %44, %class.RDTimerCPU** %12, align 8
  %47 = load %class.RDTimerCPU*, %class.RDTimerCPU** %12, align 8
  %48 = bitcast %class.RDTimerCPU* %47 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %17) #18
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %17)
          to label %49 unwind label %223

49:                                               ; preds = %46
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %48, %"class.std::basic_string"* noundef %16)
          to label %50 unwind label %227

50:                                               ; preds = %49
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %16) #18
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %17) #18
  %51 = load %class.RDTimerCPU*, %class.RDTimerCPU** %12, align 8
  %52 = bitcast %class.RDTimerCPU* %51 to void (%class.RDTimerCPU*)***
  %53 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %52, align 8
  %54 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %53, i64 2
  %55 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %54, align 8
  call void %55(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %51)
  %56 = bitcast float** %2 to i8**
  %57 = load i32, i32* @Size, align 4
  %58 = load i32, i32* @Size, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = call i32 @hipMalloc(i8** noundef %56, i64 noundef %61)
  %63 = bitcast float** %3 to i8**
  %64 = load i32, i32* @Size, align 4
  %65 = load i32, i32* @Size, align 4
  %66 = mul nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = call i32 @hipMalloc(i8** noundef %63, i64 noundef %68)
  %70 = bitcast float** %4 to i8**
  %71 = load i32, i32* @Size, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = call i32 @hipMalloc(i8** noundef %70, i64 noundef %73)
  %75 = load %class.RDTimerCPU*, %class.RDTimerCPU** %12, align 8
  %76 = bitcast %class.RDTimerCPU* %75 to float (%class.RDTimerCPU*)***
  %77 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %76, align 8
  %78 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %77, i64 3
  %79 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %78, align 8
  %80 = call contract noundef float %79(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %75)
  store float %80, float* %5, align 4
  %81 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %9, align 8
  %82 = load %class.RDTimerCPU*, %class.RDTimerCPU** %12, align 8
  %83 = bitcast %class.RDTimerCPU* %82 to %class.RDTimer*
  %84 = bitcast %class.SimplePerfSerializer* %81 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %85 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %84, align 8
  %86 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %85, i64 2
  %87 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %86, align 8
  call void %87(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %81, %class.RDTimer* noundef %83)
  %88 = load %class.RDTimerCPU*, %class.RDTimerCPU** %12, align 8
  %89 = bitcast %class.RDTimerCPU* %88 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %19) #18
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %18, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %19)
          to label %90 unwind label %232

90:                                               ; preds = %50
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %89, %"class.std::basic_string"* noundef %18)
          to label %91 unwind label %236

91:                                               ; preds = %90
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %18) #18
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %19) #18
  %92 = load %class.RDTimerCPU*, %class.RDTimerCPU** %12, align 8
  %93 = bitcast %class.RDTimerCPU* %92 to void (%class.RDTimerCPU*)***
  %94 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %93, align 8
  %95 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %94, i64 2
  %96 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %95, align 8
  call void %96(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %92)
  %97 = load float*, float** %2, align 8
  %98 = bitcast float* %97 to i8*
  %99 = load float*, float** @m, align 8
  %100 = bitcast float* %99 to i8*
  %101 = load i32, i32* @Size, align 4
  %102 = load i32, i32* @Size, align 4
  %103 = mul nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 4
  %106 = call i32 @hipMemcpy(i8* noundef %98, i8* noundef %100, i64 noundef %105, i32 noundef 1)
  %107 = load float*, float** %3, align 8
  %108 = bitcast float* %107 to i8*
  %109 = load float*, float** @a, align 8
  %110 = bitcast float* %109 to i8*
  %111 = load i32, i32* @Size, align 4
  %112 = load i32, i32* @Size, align 4
  %113 = mul nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 4
  %116 = call i32 @hipMemcpy(i8* noundef %108, i8* noundef %110, i64 noundef %115, i32 noundef 1)
  %117 = load float*, float** %4, align 8
  %118 = bitcast float* %117 to i8*
  %119 = load float*, float** @b, align 8
  %120 = bitcast float* %119 to i8*
  %121 = load i32, i32* @Size, align 4
  %122 = sext i32 %121 to i64
  %123 = mul i64 %122, 4
  %124 = call i32 @hipMemcpy(i8* noundef %118, i8* noundef %120, i64 noundef %123, i32 noundef 1)
  store i32 512, i32* %20, align 4
  %125 = load i32, i32* @Size, align 4
  %126 = load i32, i32* %20, align 4
  %127 = sdiv i32 %125, %126
  %128 = load i32, i32* @Size, align 4
  %129 = load i32, i32* %20, align 4
  %130 = srem i32 %128, %129
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 0, i32 1
  %135 = add nsw i32 %127, %134
  store i32 %135, i32* %21, align 4
  %136 = load i32, i32* %20, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %22, i32 noundef %136, i32 noundef 1, i32 noundef 1)
  %137 = load i32, i32* %21, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %23, i32 noundef %137, i32 noundef 1, i32 noundef 1)
  store i32 4, i32* %24, align 4
  %138 = load i32, i32* @Size, align 4
  %139 = load i32, i32* %24, align 4
  %140 = sdiv i32 %138, %139
  %141 = load i32, i32* @Size, align 4
  %142 = load i32, i32* %24, align 4
  %143 = srem i32 %141, %142
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 0, i32 1
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = add nsw i32 %140, %149
  store i32 %150, i32* %25, align 4
  %151 = load i32, i32* %24, align 4
  %152 = load i32, i32* %24, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %26, i32 noundef %151, i32 noundef %152, i32 noundef 1)
  %153 = load i32, i32* %25, align 4
  %154 = load i32, i32* %25, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %27, i32 noundef %153, i32 noundef %154, i32 noundef 1)
  %155 = load %class.RDTimerCPU*, %class.RDTimerCPU** %12, align 8
  %156 = bitcast %class.RDTimerCPU* %155 to float (%class.RDTimerCPU*)***
  %157 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %156, align 8
  %158 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %157, i64 3
  %159 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %158, align 8
  %160 = call contract noundef float %159(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %155)
  store float %160, float* %6, align 4
  %161 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %9, align 8
  %162 = load %class.RDTimerCPU*, %class.RDTimerCPU** %12, align 8
  %163 = bitcast %class.RDTimerCPU* %162 to %class.RDTimer*
  %164 = bitcast %class.SimplePerfSerializer* %161 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %165 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %164, align 8
  %166 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %165, i64 2
  %167 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %166, align 8
  call void %167(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %161, %class.RDTimer* noundef %163)
  %168 = load %class.RDTimerCPU*, %class.RDTimerCPU** %12, align 8
  %169 = bitcast %class.RDTimerCPU* %168 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %29) #18
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %28, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %29)
          to label %170 unwind label %241

170:                                              ; preds = %91
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %169, %"class.std::basic_string"* noundef %28)
          to label %171 unwind label %245

171:                                              ; preds = %170
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %28) #18
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %29) #18
  %172 = load %class.RDTimerCPU*, %class.RDTimerCPU** %12, align 8
  %173 = bitcast %class.RDTimerCPU* %172 to void (%class.RDTimerCPU*)***
  %174 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %173, align 8
  %175 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %174, i64 2
  %176 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %175, align 8
  call void %176(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %172)
  store i32 0, i32* %1, align 4
  br label %177

177:                                              ; preds = %284, %171
  %178 = load i32, i32* %1, align 4
  %179 = load i32, i32* @Size, align 4
  %180 = sub nsw i32 %179, 1
  %181 = icmp slt i32 %178, %180
  br i1 %181, label %182, label %287

182:                                              ; preds = %177
  br label %183

183:                                              ; preds = %182
  %184 = bitcast %struct.dim3* %30 to i8*
  %185 = bitcast %struct.dim3* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %184, i8* align 4 %185, i64 12, i1 false)
  %186 = bitcast %struct.dim3* %31 to i8*
  %187 = bitcast %struct.dim3* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %186, i8* align 4 %187, i64 12, i1 false)
  %188 = bitcast { i64, i32 }* %32 to i8*
  %189 = bitcast %struct.dim3* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %188, i8* align 4 %189, i64 12, i1 false)
  %190 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %32, i32 0, i32 0
  %191 = load i64, i64* %190, align 4
  %192 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %32, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = bitcast { i64, i32 }* %33 to i8*
  %195 = bitcast %struct.dim3* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %194, i8* align 4 %195, i64 12, i1 false)
  %196 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %33, i32 0, i32 0
  %197 = load i64, i64* %196, align 4
  %198 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %33, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @__hipPushCallConfiguration(i64 %191, i32 %193, i64 %197, i32 %199, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %250, label %202

202:                                              ; preds = %183
  %203 = load float*, float** %2, align 8
  %204 = load float*, float** %3, align 8
  %205 = load i32, i32* @Size, align 4
  %206 = load i32, i32* %1, align 4
  call void @_Z19__device_stub__Fan1PfS_ii(float* noundef %203, float* noundef %204, i32 noundef %205, i32 noundef %206)
  br label %250

207:                                              ; preds = %0
  %208 = landingpad { i8*, i32 }
          cleanup
  %209 = extractvalue { i8*, i32 } %208, 0
  store i8* %209, i8** %10, align 8
  %210 = extractvalue { i8*, i32 } %208, 1
  store i32 %210, i32* %11, align 4
  call void @_ZdlPv(i8* noundef %40) #21
  br label %397

211:                                              ; preds = %42
  %212 = landingpad { i8*, i32 }
          cleanup
  %213 = extractvalue { i8*, i32 } %212, 0
  store i8* %213, i8** %10, align 8
  %214 = extractvalue { i8*, i32 } %212, 1
  store i32 %214, i32* %11, align 4
  br label %219

215:                                              ; preds = %45
  %216 = landingpad { i8*, i32 }
          cleanup
  %217 = extractvalue { i8*, i32 } %216, 0
  store i8* %217, i8** %10, align 8
  %218 = extractvalue { i8*, i32 } %216, 1
  store i32 %218, i32* %11, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %13) #18
  br label %219

219:                                              ; preds = %215, %211
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %14) #18
  %220 = load i1, i1* %15, align 1
  br i1 %220, label %221, label %222

221:                                              ; preds = %219
  call void @_ZdlPv(i8* noundef %43) #21
  br label %222

222:                                              ; preds = %221, %219
  br label %397

223:                                              ; preds = %46
  %224 = landingpad { i8*, i32 }
          cleanup
  %225 = extractvalue { i8*, i32 } %224, 0
  store i8* %225, i8** %10, align 8
  %226 = extractvalue { i8*, i32 } %224, 1
  store i32 %226, i32* %11, align 4
  br label %231

227:                                              ; preds = %49
  %228 = landingpad { i8*, i32 }
          cleanup
  %229 = extractvalue { i8*, i32 } %228, 0
  store i8* %229, i8** %10, align 8
  %230 = extractvalue { i8*, i32 } %228, 1
  store i32 %230, i32* %11, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %16) #18
  br label %231

231:                                              ; preds = %227, %223
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %17) #18
  br label %397

232:                                              ; preds = %50
  %233 = landingpad { i8*, i32 }
          cleanup
  %234 = extractvalue { i8*, i32 } %233, 0
  store i8* %234, i8** %10, align 8
  %235 = extractvalue { i8*, i32 } %233, 1
  store i32 %235, i32* %11, align 4
  br label %240

236:                                              ; preds = %90
  %237 = landingpad { i8*, i32 }
          cleanup
  %238 = extractvalue { i8*, i32 } %237, 0
  store i8* %238, i8** %10, align 8
  %239 = extractvalue { i8*, i32 } %237, 1
  store i32 %239, i32* %11, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %18) #18
  br label %240

240:                                              ; preds = %236, %232
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %19) #18
  br label %397

241:                                              ; preds = %91
  %242 = landingpad { i8*, i32 }
          cleanup
  %243 = extractvalue { i8*, i32 } %242, 0
  store i8* %243, i8** %10, align 8
  %244 = extractvalue { i8*, i32 } %242, 1
  store i32 %244, i32* %11, align 4
  br label %249

245:                                              ; preds = %170
  %246 = landingpad { i8*, i32 }
          cleanup
  %247 = extractvalue { i8*, i32 } %246, 0
  store i8* %247, i8** %10, align 8
  %248 = extractvalue { i8*, i32 } %246, 1
  store i32 %248, i32* %11, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %28) #18
  br label %249

249:                                              ; preds = %245, %241
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %29) #18
  br label %397

250:                                              ; preds = %202, %183
  br label %251

251:                                              ; preds = %250
  %252 = call i32 @hipDeviceSynchronize()
  br label %253

253:                                              ; preds = %251
  %254 = bitcast %struct.dim3* %34 to i8*
  %255 = bitcast %struct.dim3* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %254, i8* align 4 %255, i64 12, i1 false)
  %256 = bitcast %struct.dim3* %35 to i8*
  %257 = bitcast %struct.dim3* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %256, i8* align 4 %257, i64 12, i1 false)
  %258 = bitcast { i64, i32 }* %36 to i8*
  %259 = bitcast %struct.dim3* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %258, i8* align 4 %259, i64 12, i1 false)
  %260 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %36, i32 0, i32 0
  %261 = load i64, i64* %260, align 4
  %262 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %36, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = bitcast { i64, i32 }* %37 to i8*
  %265 = bitcast %struct.dim3* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %264, i8* align 4 %265, i64 12, i1 false)
  %266 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 0
  %267 = load i64, i64* %266, align 4
  %268 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @__hipPushCallConfiguration(i64 %261, i32 %263, i64 %267, i32 %269, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %281, label %272

272:                                              ; preds = %253
  %273 = load float*, float** %2, align 8
  %274 = load float*, float** %3, align 8
  %275 = load float*, float** %4, align 8
  %276 = load i32, i32* @Size, align 4
  %277 = load i32, i32* @Size, align 4
  %278 = load i32, i32* %1, align 4
  %279 = sub nsw i32 %277, %278
  %280 = load i32, i32* %1, align 4
  call void @_Z19__device_stub__Fan2PfS_S_iii(float* noundef %273, float* noundef %274, float* noundef %275, i32 noundef %276, i32 noundef %279, i32 noundef %280)
  br label %281

281:                                              ; preds = %272, %253
  br label %282

282:                                              ; preds = %281
  %283 = call i32 @hipDeviceSynchronize()
  call void @_Z14checkCUDAErrorPKc(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0))
  br label %284

284:                                              ; preds = %282
  %285 = load i32, i32* %1, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %1, align 4
  br label %177, !llvm.loop !13

287:                                              ; preds = %177
  %288 = load %class.RDTimerCPU*, %class.RDTimerCPU** %12, align 8
  %289 = bitcast %class.RDTimerCPU* %288 to float (%class.RDTimerCPU*)***
  %290 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %289, align 8
  %291 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %290, i64 3
  %292 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %291, align 8
  %293 = call contract noundef float %292(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %288)
  store float %293, float* %7, align 4
  %294 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %9, align 8
  %295 = load %class.RDTimerCPU*, %class.RDTimerCPU** %12, align 8
  %296 = bitcast %class.RDTimerCPU* %295 to %class.RDTimer*
  %297 = bitcast %class.SimplePerfSerializer* %294 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %298 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %297, align 8
  %299 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %298, i64 2
  %300 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %299, align 8
  call void %300(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %294, %class.RDTimer* noundef %296)
  %301 = load %class.RDTimerCPU*, %class.RDTimerCPU** %12, align 8
  %302 = bitcast %class.RDTimerCPU* %301 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %39) #18
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %38, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %39)
          to label %303 unwind label %388

303:                                              ; preds = %287
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %302, %"class.std::basic_string"* noundef %38)
          to label %304 unwind label %392

304:                                              ; preds = %303
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %38) #18
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %39) #18
  %305 = load %class.RDTimerCPU*, %class.RDTimerCPU** %12, align 8
  %306 = bitcast %class.RDTimerCPU* %305 to void (%class.RDTimerCPU*)***
  %307 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %306, align 8
  %308 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %307, i64 2
  %309 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %308, align 8
  call void %309(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %305)
  %310 = load float*, float** @m, align 8
  %311 = bitcast float* %310 to i8*
  %312 = load float*, float** %2, align 8
  %313 = bitcast float* %312 to i8*
  %314 = load i32, i32* @Size, align 4
  %315 = load i32, i32* @Size, align 4
  %316 = mul nsw i32 %314, %315
  %317 = sext i32 %316 to i64
  %318 = mul i64 %317, 4
  %319 = call i32 @hipMemcpy(i8* noundef %311, i8* noundef %313, i64 noundef %318, i32 noundef 2)
  %320 = load float*, float** @a, align 8
  %321 = bitcast float* %320 to i8*
  %322 = load float*, float** %3, align 8
  %323 = bitcast float* %322 to i8*
  %324 = load i32, i32* @Size, align 4
  %325 = load i32, i32* @Size, align 4
  %326 = mul nsw i32 %324, %325
  %327 = sext i32 %326 to i64
  %328 = mul i64 %327, 4
  %329 = call i32 @hipMemcpy(i8* noundef %321, i8* noundef %323, i64 noundef %328, i32 noundef 2)
  %330 = load float*, float** @b, align 8
  %331 = bitcast float* %330 to i8*
  %332 = load float*, float** %4, align 8
  %333 = bitcast float* %332 to i8*
  %334 = load i32, i32* @Size, align 4
  %335 = sext i32 %334 to i64
  %336 = mul i64 %335, 4
  %337 = call i32 @hipMemcpy(i8* noundef %331, i8* noundef %333, i64 noundef %336, i32 noundef 2)
  %338 = load %class.RDTimerCPU*, %class.RDTimerCPU** %12, align 8
  %339 = bitcast %class.RDTimerCPU* %338 to float (%class.RDTimerCPU*)***
  %340 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %339, align 8
  %341 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %340, i64 3
  %342 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %341, align 8
  %343 = call contract noundef float %342(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %338)
  store float %343, float* %8, align 4
  %344 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %9, align 8
  %345 = load %class.RDTimerCPU*, %class.RDTimerCPU** %12, align 8
  %346 = bitcast %class.RDTimerCPU* %345 to %class.RDTimer*
  %347 = bitcast %class.SimplePerfSerializer* %344 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %348 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %347, align 8
  %349 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %348, i64 2
  %350 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %349, align 8
  call void %350(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %344, %class.RDTimer* noundef %346)
  %351 = load float, float* %6, align 4
  %352 = fpext float %351 to double
  %353 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.38, i64 0, i64 0), double noundef %352)
  %354 = load float, float* %8, align 4
  %355 = fpext float %354 to double
  %356 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.39, i64 0, i64 0), double noundef %355)
  %357 = load float, float* %5, align 4
  %358 = fpext float %357 to double
  %359 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i64 0, i64 0), double noundef %358)
  %360 = load float, float* %7, align 4
  %361 = fpext float %360 to double
  %362 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0), double noundef %361)
  %363 = load %class.RDTimerCPU*, %class.RDTimerCPU** %12, align 8
  %364 = icmp eq %class.RDTimerCPU* %363, null
  br i1 %364, label %370, label %365

365:                                              ; preds = %304
  %366 = bitcast %class.RDTimerCPU* %363 to void (%class.RDTimerCPU*)***
  %367 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %366, align 8
  %368 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %367, i64 1
  %369 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %368, align 8
  call void %369(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %363) #18
  br label %370

370:                                              ; preds = %365, %304
  %371 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %9, align 8
  %372 = icmp eq %class.SimplePerfSerializer* %371, null
  br i1 %372, label %378, label %373

373:                                              ; preds = %370
  %374 = bitcast %class.SimplePerfSerializer* %371 to void (%class.SimplePerfSerializer*)***
  %375 = load void (%class.SimplePerfSerializer*)**, void (%class.SimplePerfSerializer*)*** %374, align 8
  %376 = getelementptr inbounds void (%class.SimplePerfSerializer*)*, void (%class.SimplePerfSerializer*)** %375, i64 1
  %377 = load void (%class.SimplePerfSerializer*)*, void (%class.SimplePerfSerializer*)** %376, align 8
  call void %377(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %371) #18
  br label %378

378:                                              ; preds = %373, %370
  %379 = load float*, float** %2, align 8
  %380 = bitcast float* %379 to i8*
  %381 = call i32 @hipFree(i8* noundef %380)
  %382 = load float*, float** %3, align 8
  %383 = bitcast float* %382 to i8*
  %384 = call i32 @hipFree(i8* noundef %383)
  %385 = load float*, float** %4, align 8
  %386 = bitcast float* %385 to i8*
  %387 = call i32 @hipFree(i8* noundef %386)
  ret void

388:                                              ; preds = %287
  %389 = landingpad { i8*, i32 }
          cleanup
  %390 = extractvalue { i8*, i32 } %389, 0
  store i8* %390, i8** %10, align 8
  %391 = extractvalue { i8*, i32 } %389, 1
  store i32 %391, i32* %11, align 4
  br label %396

392:                                              ; preds = %303
  %393 = landingpad { i8*, i32 }
          cleanup
  %394 = extractvalue { i8*, i32 } %393, 0
  store i8* %394, i8** %10, align 8
  %395 = extractvalue { i8*, i32 } %393, 1
  store i32 %395, i32* %11, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %38) #18
  br label %396

396:                                              ; preds = %392, %388
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %39) #18
  br label %397

397:                                              ; preds = %396, %249, %240, %231, %222, %207
  %398 = load i8*, i8** %10, align 8
  %399 = load i32, i32* %11, align 4
  %400 = insertvalue { i8*, i32 } undef, i8* %398, 0
  %401 = insertvalue { i8*, i32 } %400, i32 %399, 1
  resume { i8*, i32 } %401
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z8PrintMatPfii(float* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %36, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %31, %13
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = load float*, float** %4, align 8
  %20 = load i32, i32* @Size, align 4
  %21 = load i32, i32* %7, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds float, float* %19, i64 %23
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %24, i64 %26
  %28 = load float, float* %27, align 4
  %29 = fpext float %28 to double
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), double noundef %29)
  br label %31

31:                                               ; preds = %18
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %14, !llvm.loop !14

34:                                               ; preds = %14
  %35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %9, !llvm.loop !15

39:                                               ; preds = %9
  %40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z8PrintAryPfi(float* noundef %0, i32 noundef %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store float* %0, float** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %18, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load float*, float** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds float, float* %11, i64 %13
  %15 = load float, float* %14, align 4
  %16 = fpext float %15 to double
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), double noundef %16)
  br label %18

18:                                               ; preds = %10
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %6, !llvm.loop !16

21:                                               ; preds = %6
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0))
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z7BackSubv() #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @Size, align 4
  %4 = sext i32 %3 to i64
  %5 = mul i64 %4, 4
  %6 = call noalias i8* @malloc(i64 noundef %5) #23
  %7 = bitcast i8* %6 to float*
  store float* %7, float** @finalVec, align 8
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %103, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @Size, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %106

12:                                               ; preds = %8
  %13 = load float*, float** @b, align 8
  %14 = load i32, i32* @Size, align 4
  %15 = load i32, i32* %1, align 4
  %16 = sub nsw i32 %14, %15
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds float, float* %13, i64 %18
  %20 = load float, float* %19, align 4
  %21 = load float*, float** @finalVec, align 8
  %22 = load i32, i32* @Size, align 4
  %23 = load i32, i32* %1, align 4
  %24 = sub nsw i32 %22, %23
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %21, i64 %26
  store float %20, float* %27, align 4
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %67, %12
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %1, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %70

32:                                               ; preds = %28
  %33 = load float*, float** @a, align 8
  %34 = load i32, i32* @Size, align 4
  %35 = load i32, i32* @Size, align 4
  %36 = load i32, i32* %1, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sub nsw i32 %37, 1
  %39 = mul nsw i32 %34, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %33, i64 %40
  %42 = load i32, i32* @Size, align 4
  %43 = load i32, i32* %2, align 4
  %44 = sub nsw i32 %42, %43
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %41, i64 %46
  %48 = load float, float* %47, align 4
  %49 = load float*, float** @finalVec, align 8
  %50 = load i32, i32* @Size, align 4
  %51 = load i32, i32* %2, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %49, i64 %54
  %56 = load float, float* %55, align 4
  %57 = fmul contract float %48, %56
  %58 = load float*, float** @finalVec, align 8
  %59 = load i32, i32* @Size, align 4
  %60 = load i32, i32* %1, align 4
  %61 = sub nsw i32 %59, %60
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %58, i64 %63
  %65 = load float, float* %64, align 4
  %66 = fsub contract float %65, %57
  store float %66, float* %64, align 4
  br label %67

67:                                               ; preds = %32
  %68 = load i32, i32* %2, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %2, align 4
  br label %28, !llvm.loop !17

70:                                               ; preds = %28
  %71 = load float*, float** @finalVec, align 8
  %72 = load i32, i32* @Size, align 4
  %73 = load i32, i32* %1, align 4
  %74 = sub nsw i32 %72, %73
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %71, i64 %76
  %78 = load float, float* %77, align 4
  %79 = load float*, float** @a, align 8
  %80 = load i32, i32* @Size, align 4
  %81 = load i32, i32* @Size, align 4
  %82 = load i32, i32* %1, align 4
  %83 = sub nsw i32 %81, %82
  %84 = sub nsw i32 %83, 1
  %85 = mul nsw i32 %80, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %79, i64 %86
  %88 = load i32, i32* @Size, align 4
  %89 = load i32, i32* %1, align 4
  %90 = sub nsw i32 %88, %89
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %87, i64 %92
  %94 = load float, float* %93, align 4
  %95 = fdiv contract float %78, %94
  %96 = load float*, float** @finalVec, align 8
  %97 = load i32, i32* @Size, align 4
  %98 = load i32, i32* %1, align 4
  %99 = sub nsw i32 %97, %98
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, float* %96, i64 %101
  store float %95, float* %102, align 4
  br label %103

103:                                              ; preds = %70
  %104 = load i32, i32* %1, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %1, align 4
  br label %8, !llvm.loop !18

106:                                              ; preds = %8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z12VerifyResultv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  store float 0.000000e+00, float* %3, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %68, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @Size, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %71

8:                                                ; preds = %4
  store i32 0, i32* %2, align 4
  store float 0.000000e+00, float* %3, align 4
  br label %9

9:                                                ; preds = %32, %8
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @Size, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %9
  %14 = load float*, float** @a, align 8
  %15 = load i32, i32* @Size, align 4
  %16 = load i32, i32* %1, align 4
  %17 = mul nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds float, float* %14, i64 %18
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %19, i64 %21
  %23 = load float, float* %22, align 4
  %24 = load float*, float** @finalVec, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %24, i64 %26
  %28 = load float, float* %27, align 4
  %29 = fmul contract float %23, %28
  %30 = load float, float* %3, align 4
  %31 = fadd contract float %30, %29
  store float %31, float* %3, align 4
  br label %32

32:                                               ; preds = %13
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %9, !llvm.loop !19

35:                                               ; preds = %9
  %36 = load float, float* %3, align 4
  %37 = load float*, float** @b, align 8
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %37, i64 %39
  %41 = load float, float* %40, align 4
  %42 = fsub contract float %36, %41
  %43 = call contract noundef float @_ZSt3absf(float noundef %42)
  %44 = fpext float %43 to double
  %45 = fcmp contract ogt double %44, 1.000000e-02
  br i1 %45, label %46, label %67

46:                                               ; preds = %35
  %47 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0))
  %48 = load i32, i32* %1, align 4
  %49 = load float, float* %3, align 4
  %50 = fpext float %49 to double
  %51 = load i32, i32* %1, align 4
  %52 = load float*, float** @b, align 8
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %52, i64 %54
  %56 = load float, float* %55, align 4
  %57 = fpext float %56 to double
  %58 = load float*, float** @b, align 8
  %59 = load i32, i32* %1, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %58, i64 %60
  %62 = load float, float* %61, align 4
  %63 = load float, float* %3, align 4
  %64 = fsub contract float %62, %63
  %65 = fpext float %64 to double
  %66 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.48, i64 0, i64 0), i32 noundef %48, double noundef %50, i32 noundef %51, double noundef %57, double noundef %65)
  br label %73

67:                                               ; preds = %35
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %1, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %1, align 4
  br label %4, !llvm.loop !20

71:                                               ; preds = %4
  %72 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %46
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #7

declare %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #4

declare i32 @fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z7InitMatPfii(float* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
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
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %20 = load float*, float** %4, align 8
  %21 = load i32, i32* @Size, align 4
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds float, float* %20, i64 %24
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), float* noundef %28)
  br label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %14, !llvm.loop !21

33:                                               ; preds = %14
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %9, !llvm.loop !22

37:                                               ; preds = %9
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z7InitAryPfi(float* noundef %0, i32 noundef %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store float* %0, float** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %17, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %12 = load float*, float** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds float, float* %12, i64 %14
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), float* noundef %15)
  br label %17

17:                                               ; preds = %10
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  br label %6, !llvm.loop !23

20:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z19__device_stub__Fan1PfS_ii(float* noundef %0, float* noundef %1, i32 noundef %2, i32 noundef %3) #12 {
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
  %40 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (float*, float*, i32, i32)** @_Z4Fan1PfS_ii to i8*), i64 %30, i32 %32, i64 %36, i32 %38, i8** noundef %15, i64 noundef %25, %struct.ihipStream_t* noundef %39)
  br label %41

41:                                               ; preds = %4
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z19__device_stub__Fan2PfS_S_iii(float* noundef %0, float* noundef %1, float* noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #12 {
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dim3, align 8
  %14 = alloca %struct.dim3, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca { i64, i32 }, align 8
  %18 = alloca { i64, i32 }, align 8
  store float* %0, float** %7, align 8
  store float* %1, float** %8, align 8
  store float* %2, float** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = alloca i8*, i64 6, align 16
  %20 = bitcast float** %7 to i8*
  %21 = getelementptr i8*, i8** %19, i32 0
  store i8* %20, i8** %21, align 8
  %22 = bitcast float** %8 to i8*
  %23 = getelementptr i8*, i8** %19, i32 1
  store i8* %22, i8** %23, align 8
  %24 = bitcast float** %9 to i8*
  %25 = getelementptr i8*, i8** %19, i32 2
  store i8* %24, i8** %25, align 8
  %26 = bitcast i32* %10 to i8*
  %27 = getelementptr i8*, i8** %19, i32 3
  store i8* %26, i8** %27, align 8
  %28 = bitcast i32* %11 to i8*
  %29 = getelementptr i8*, i8** %19, i32 4
  store i8* %28, i8** %29, align 8
  %30 = bitcast i32* %12 to i8*
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
  %48 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (float*, float*, float*, i32, i32, i32)** @_Z4Fan2PfS_S_iii to i8*), i64 %38, i32 %40, i64 %44, i32 %46, i8** noundef %19, i64 noundef %33, %struct.ihipStream_t* noundef %47)
  br label %49

49:                                               ; preds = %6
  ret void
}

declare i32 @hipMalloc(i8** noundef, i64 noundef) #4

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #14 comdat align 2 {
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

declare i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) #4

declare i32 @hipDeviceSynchronize() #4

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z14checkCUDAErrorPKc(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = call i32 @hipGetLastError()
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 0, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i8* @hipGetErrorString(i32 noundef %10)
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.46, i64 0, i64 0), i8* noundef %9, i8* noundef %11)
  call void @exit(i32 noundef 1) #19
  unreachable

13:                                               ; preds = %1
  ret void
}

declare i32 @hipFree(i8* noundef) #4

declare i32 @hipGetLastError() #4

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

declare i8* @hipGetErrorString(i32 noundef) #4

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_ZSt3absf(float noundef %0) #2 comdat {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = call contract float @llvm.fabs.f32(float %3)
  ret float %4
}

; Function Attrs: nounwind
declare float @expf(float noundef) #7

declare void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimerC2ESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0, %"class.std::basic_string"* noundef %1) unnamed_addr #8 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.RDTimer*, align 8
  %4 = alloca %"class.std::allocator", align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %class.RDTimer* %0, %class.RDTimer** %3, align 8
  %7 = load %class.RDTimer*, %class.RDTimer** %3, align 8
  %8 = bitcast %class.RDTimer* %7 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV7RDTimer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %8, align 8
  %9 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %7, i32 0, i32 1
  store i8 0, i8* %9, align 8
  %10 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %7, i32 0, i32 2
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %10, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %1)
  %11 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %7, i32 0, i32 3
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #18
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %11, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4)
          to label %12 unwind label %17

12:                                               ; preds = %2
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #18
  %13 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %7, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %7, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %7, i32 0, i32 6
  store float 0.000000e+00, float* %15, align 8
  %16 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %7, i32 0, i32 7
  store float 0.000000e+00, float* %16, align 4
  ret void

17:                                               ; preds = %2
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  store i8* %19, i8** %5, align 8
  %20 = extractvalue { i8*, i32 } %18, 1
  store i32 %20, i32* %6, align 4
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #18
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %10) #18
  br label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %25 = insertvalue { i8*, i32 } %24, i32 %23, 1
  resume { i8*, i32 } %25
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSEPKc(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10RDTimerCPUD2Ev(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #14 comdat align 2 {
  %2 = alloca %class.RDTimerCPU*, align 8
  store %class.RDTimerCPU* %0, %class.RDTimerCPU** %2, align 8
  %3 = load %class.RDTimerCPU*, %class.RDTimerCPU** %2, align 8
  %4 = bitcast %class.RDTimerCPU* %3 to %class.RDTimer*
  call void @_ZN7RDTimerD2Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %4) #18
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10RDTimerCPUD0Ev(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #14 comdat align 2 {
  %2 = alloca %class.RDTimerCPU*, align 8
  store %class.RDTimerCPU* %0, %class.RDTimerCPU** %2, align 8
  %3 = load %class.RDTimerCPU*, %class.RDTimerCPU** %2, align 8
  call void @_ZN10RDTimerCPUD2Ev(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %3) #18
  %4 = bitcast %class.RDTimerCPU* %3 to i8*
  call void @_ZdlPv(i8* noundef %4) #21
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10RDTimerCPU5StartEv(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %class.RDTimerCPU*, align 8
  store %class.RDTimerCPU* %0, %class.RDTimerCPU** %2, align 8
  %3 = load %class.RDTimerCPU*, %class.RDTimerCPU** %2, align 8
  %4 = call noundef i64 @_Z8get_timev()
  %5 = bitcast %class.RDTimerCPU* %3 to %class.RDTimer*
  %6 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %5, i32 0, i32 4
  store i64 %4, i64* %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef float @_ZN10RDTimerCPU4StopEv(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %class.RDTimerCPU*, align 8
  %3 = alloca i64, align 8
  store %class.RDTimerCPU* %0, %class.RDTimerCPU** %2, align 8
  %4 = load %class.RDTimerCPU*, %class.RDTimerCPU** %2, align 8
  %5 = call noundef i64 @_Z8get_timev()
  store i64 %5, i64* %3, align 8
  %6 = bitcast %class.RDTimerCPU* %4 to %class.RDTimer*
  %7 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call contract noundef float @_Z12elapsed_timexx(i64 noundef %8, i64 noundef %9)
  %11 = bitcast %class.RDTimerCPU* %4 to %class.RDTimer*
  %12 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %11, i32 0, i32 6
  store float %10, float* %12, align 8
  %13 = bitcast %class.RDTimerCPU* %4 to %class.RDTimer*
  %14 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %13, i32 0, i32 6
  %15 = load float, float* %14, align 8
  ret float %15
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef float @_ZN10RDTimerCPU10AccumulateEv(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %class.RDTimerCPU*, align 8
  %3 = alloca float, align 4
  store %class.RDTimerCPU* %0, %class.RDTimerCPU** %2, align 8
  %4 = load %class.RDTimerCPU*, %class.RDTimerCPU** %2, align 8
  %5 = bitcast %class.RDTimerCPU* %4 to %class.RDTimer*
  %6 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %5, i32 0, i32 1
  store i8 1, i8* %6, align 8
  %7 = bitcast %class.RDTimerCPU* %4 to float (%class.RDTimerCPU*)***
  %8 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %7, align 8
  %9 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %8, i64 3
  %10 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %9, align 8
  %11 = call contract noundef float %10(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %4)
  store float %11, float* %3, align 4
  %12 = load float, float* %3, align 4
  %13 = bitcast %class.RDTimerCPU* %4 to %class.RDTimer*
  %14 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %13, i32 0, i32 7
  %15 = load float, float* %14, align 4
  %16 = fadd contract float %15, %12
  store float %16, float* %14, align 4
  %17 = bitcast %class.RDTimerCPU* %4 to %class.RDTimer*
  %18 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %17, i32 0, i32 7
  %19 = load float, float* %18, align 4
  ret float %19
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimerD2Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #14 comdat align 2 {
  %2 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %2, align 8
  %3 = load %class.RDTimer*, %class.RDTimer** %2, align 8
  %4 = bitcast %class.RDTimer* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV7RDTimer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  %5 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 3
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %5) #18
  %6 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 2
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %6) #18
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimerD0Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #14 comdat align 2 {
  %2 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %2, align 8
  %3 = load %class.RDTimer*, %class.RDTimer** %2, align 8
  call void @llvm.trap() #19
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #15

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_Z8get_timev() #2 comdat {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @gettimeofday(%struct.timeval* noundef %1, %struct.timezone* noundef null) #18
  %3 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = mul nsw i64 %4, 1000000
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %5, %7
  ret i64 %8
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* noundef, %struct.timezone* noundef) #7

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_Z12elapsed_timexx(i64 noundef %0, i64 noundef %1) #2 comdat {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = sub nsw i64 %5, %6
  %8 = sitofp i64 %7 to float
  %9 = fdiv contract float %8, 1.000000e+06
  ret float %9
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimer5ResetEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) #2 comdat align 2 {
  %2 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %2, align 8
  %3 = load %class.RDTimer*, %class.RDTimer** %2, align 8
  %4 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 1
  store i8 0, i8* %4, align 8
  %5 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 7
  store float 0.000000e+00, float* %5, align 4
  %6 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 6
  store float 0.000000e+00, float* %6, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN14PerfSerializerC2EPc(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %0, i8* noundef %1) unnamed_addr #8 comdat align 2 {
  %3 = alloca %class.PerfSerializer*, align 8
  %4 = alloca i8*, align 8
  store %class.PerfSerializer* %0, %class.PerfSerializer** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %class.PerfSerializer*, %class.PerfSerializer** %3, align 8
  %6 = bitcast %class.PerfSerializer* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV14PerfSerializer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %6, align 8
  %7 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 1
  store i8 1, i8* %7, align 8
  %8 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  store %struct._IO_FILE* null, %struct._IO_FILE** %8, align 8
  %9 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %9, align 8
  %10 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 5
  store i8 0, i8* %10, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %81

13:                                               ; preds = %2
  %14 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %15, i64 noundef 100, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), i8* noundef %16, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0)) #18
  %18 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 7
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %18, i64 0, i64 0
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %19, i64 noundef 100, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), i8* noundef %20, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i64 0, i64 0)) #18
  %22 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0
  %24 = call i32 @access(i8* noundef %23, i32 noundef 0) #18
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %13
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i64 0, i64 0))
  %29 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %29, i64 0, i64 0
  %31 = call %struct._IO_FILE* @fopen(i8* noundef %30, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0))
  %32 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  store %struct._IO_FILE* %31, %struct._IO_FILE** %32, align 8
  %33 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %33, align 8
  %35 = icmp eq %struct._IO_FILE* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.56, i64 0, i64 0))
  %39 = call i8* @__cxa_allocate_exception(i64 8) #18
  %40 = bitcast i8* %39 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i64 0, i64 0), i8** %40, align 16
  call void @__cxa_throw(i8* %39, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #24
  unreachable

41:                                               ; preds = %26
  %42 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 7
  %43 = getelementptr inbounds [100 x i8], [100 x i8]* %42, i64 0, i64 0
  %44 = call %struct._IO_FILE* @fopen(i8* noundef %43, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0))
  %45 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  store %struct._IO_FILE* %44, %struct._IO_FILE** %45, align 8
  %46 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %46, align 8
  %48 = icmp eq %struct._IO_FILE* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i64 0, i64 0))
  %52 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %52, align 8
  %54 = call i32 @fclose(%struct._IO_FILE* noundef %53)
  %55 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  store %struct._IO_FILE* null, %struct._IO_FILE** %55, align 8
  %56 = call i8* @__cxa_allocate_exception(i64 8) #18
  %57 = bitcast i8* %56 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i64 0, i64 0), i8** %57, align 16
  call void @__cxa_throw(i8* %56, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #24
  unreachable

58:                                               ; preds = %41
  %59 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 5
  store i8 0, i8* %59, align 8
  br label %76

60:                                               ; preds = %13
  %61 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  store %struct._IO_FILE* null, %struct._IO_FILE** %61, align 8
  %62 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %63 = getelementptr inbounds [100 x i8], [100 x i8]* %62, i64 0, i64 0
  %64 = call %struct._IO_FILE* @fopen(i8* noundef %63, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0))
  %65 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  store %struct._IO_FILE* %64, %struct._IO_FILE** %65, align 8
  %66 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %66, align 8
  %68 = icmp eq %struct._IO_FILE* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i64 0, i64 0))
  %72 = call i8* @__cxa_allocate_exception(i64 8) #18
  %73 = bitcast i8* %72 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i64 0, i64 0), i8** %73, align 16
  call void @__cxa_throw(i8* %72, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #24
  unreachable

74:                                               ; preds = %60
  %75 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 5
  store i8 1, i8* %75, align 8
  br label %76

76:                                               ; preds = %74, %58
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %78 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %79 = getelementptr inbounds [100 x i8], [100 x i8]* %78, i64 0, i64 0
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %77, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.61, i64 0, i64 0), i8* noundef %79)
  br label %84

81:                                               ; preds = %2
  %82 = call i8* @__cxa_allocate_exception(i64 8) #18
  %83 = bitcast i8* %82 to i8**
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i64 0, i64 0), i8** %83, align 16
  call void @__cxa_throw(i8* %82, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #24
  unreachable

84:                                               ; preds = %76
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN20SimplePerfSerializerD2Ev(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #14 comdat align 2 {
  %2 = alloca %class.SimplePerfSerializer*, align 8
  store %class.SimplePerfSerializer* %0, %class.SimplePerfSerializer** %2, align 8
  %3 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %2, align 8
  %4 = bitcast %class.SimplePerfSerializer* %3 to %class.PerfSerializer*
  call void @_ZN14PerfSerializerD2Ev(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %4) #18
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN20SimplePerfSerializerD0Ev(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #14 comdat align 2 {
  %2 = alloca %class.SimplePerfSerializer*, align 8
  store %class.SimplePerfSerializer* %0, %class.SimplePerfSerializer** %2, align 8
  %3 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %2, align 8
  call void @_ZN20SimplePerfSerializerD2Ev(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %3) #18
  %4 = bitcast %class.SimplePerfSerializer* %3 to i8*
  call void @_ZdlPv(i8* noundef %4) #21
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN20SimplePerfSerializer9SerializeEPK7RDTimer(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %0, %class.RDTimer* noundef %1) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.SimplePerfSerializer*, align 8
  %4 = alloca %class.RDTimer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca %"class.std::basic_string", align 8
  %8 = alloca %"class.std::basic_string", align 8
  %9 = alloca %"class.std::basic_string", align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %"class.std::basic_string", align 8
  %13 = alloca %"class.std::basic_string", align 8
  store %class.SimplePerfSerializer* %0, %class.SimplePerfSerializer** %3, align 8
  store %class.RDTimer* %1, %class.RDTimer** %4, align 8
  %14 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %3, align 8
  store i32 0, i32* %5, align 4
  store float 0.000000e+00, float* %6, align 4
  %15 = bitcast %class.SimplePerfSerializer* %14 to %class.PerfSerializer*
  %16 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %15, i32 0, i32 5
  %17 = load i8, i8* %16, align 8
  %18 = trunc i8 %17 to i1
  %19 = zext i1 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %150

21:                                               ; preds = %2
  %22 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 3
  %23 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 4
  %24 = bitcast %class.SimplePerfSerializer* %14 to %class.PerfSerializer*
  %25 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %24, i32 0, i32 3
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %25, align 8
  %27 = call i64 @getline(i8** noundef %22, i64* noundef %23, %struct._IO_FILE* noundef %26)
  %28 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 2
  store i64 %27, i64* %28, align 8
  %29 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 3
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @strtok(i8* noundef %30, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0)) #18
  %32 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.68, i64 0, i64 0))
  %39 = call i8* @__cxa_allocate_exception(i64 8) #18
  %40 = bitcast i8* %39 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i64 0, i64 0), i8** %40, align 16
  call void @__cxa_throw(i8* %39, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #24
  unreachable

41:                                               ; preds = %21
  %42 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %43 = load i8*, i8** %42, align 8
  %44 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  call void @_ZNK7RDTimer4TypeEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %7, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %44)
  %45 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %7) #18
  %46 = call i32 @strcmp(i8* noundef %43, i8* noundef %45) #22
  %47 = icmp ne i32 %46, 0
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %7) #18
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.70, i64 0, i64 0))
  %51 = call i8* @__cxa_allocate_exception(i64 8) #18
  %52 = bitcast i8* %51 to i8**
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.71, i64 0, i64 0), i8** %52, align 16
  call void @__cxa_throw(i8* %51, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #24
  unreachable

53:                                               ; preds = %41
  %54 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0)) #18
  %55 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %54, i8** %55, align 8
  %56 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %57 = load i8*, i8** %56, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %60, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.72, i64 0, i64 0))
  %62 = call i8* @__cxa_allocate_exception(i64 8) #18
  %63 = bitcast i8* %62 to i8**
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.73, i64 0, i64 0), i8** %63, align 16
  call void @__cxa_throw(i8* %62, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #24
  unreachable

64:                                               ; preds = %53
  %65 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  call void @_ZNK7RDTimer3MsgEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %8, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %68)
  %69 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %8) #18
  %70 = call i32 @strcmp(i8* noundef %67, i8* noundef %69) #22
  %71 = icmp ne i32 %70, 0
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %8) #18
  br i1 %71, label %72, label %86

72:                                               ; preds = %64
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %74 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %75 = load i8*, i8** %74, align 8
  %76 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  call void @_ZNK7RDTimer3MsgEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %9, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %76)
  %77 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %9) #18
  %78 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %73, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.74, i64 0, i64 0), i8* noundef %75, i8* noundef %77)
          to label %79 unwind label %82

79:                                               ; preds = %72
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %9) #18
  %80 = call i8* @__cxa_allocate_exception(i64 8) #18
  %81 = bitcast i8* %80 to i8**
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.75, i64 0, i64 0), i8** %81, align 16
  call void @__cxa_throw(i8* %80, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #24
  unreachable

82:                                               ; preds = %72
  %83 = landingpad { i8*, i32 }
          cleanup
  %84 = extractvalue { i8*, i32 } %83, 0
  store i8* %84, i8** %10, align 8
  %85 = extractvalue { i8*, i32 } %83, 1
  store i32 %85, i32* %11, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %9) #18
  br label %187

86:                                               ; preds = %64
  %87 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0)) #18
  %88 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %87, i8** %88, align 8
  %89 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %90 = load i8*, i8** %89, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %93, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.76, i64 0, i64 0))
  %95 = call i8* @__cxa_allocate_exception(i64 8) #18
  %96 = bitcast i8* %95 to i8**
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i64 0, i64 0), i8** %96, align 16
  call void @__cxa_throw(i8* %95, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #24
  unreachable

97:                                               ; preds = %86
  %98 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  %102 = call noundef zeroext i1 @_ZNK7RDTimer12AccumulatingEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %101)
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0)
  %105 = call i32 @strcmp(i8* noundef %100, i8* noundef %104) #22
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %97
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %108, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.80, i64 0, i64 0))
  %110 = call i8* @__cxa_allocate_exception(i64 8) #18
  %111 = bitcast i8* %110 to i8**
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.81, i64 0, i64 0), i8** %111, align 16
  call void @__cxa_throw(i8* %110, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #24
  unreachable

112:                                              ; preds = %97
  %113 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0)) #18
  %114 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %113, i8** %114, align 8
  %115 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %116 = load i8*, i8** %115, align 8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %119, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.82, i64 0, i64 0))
  %121 = call i8* @__cxa_allocate_exception(i64 8) #18
  %122 = bitcast i8* %121 to i8**
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.83, i64 0, i64 0), i8** %122, align 16
  call void @__cxa_throw(i8* %121, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #24
  unreachable

123:                                              ; preds = %112
  %124 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %125 = load i8*, i8** %124, align 8
  %126 = call contract double @atof(i8* noundef %125) #22
  %127 = fptrunc double %126 to float
  store float %127, float* %6, align 4
  %128 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0)) #18
  %129 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %128, i8** %129, align 8
  %130 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %131 = load i8*, i8** %130, align 8
  %132 = icmp eq i8* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %123
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %134, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.84, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %123
  %137 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @atoi(i8* noundef %142) #22
  store i32 %143, i32* %5, align 4
  br label %145

144:                                              ; preds = %136
  store i32 1, i32* %5, align 4
  br label %145

145:                                              ; preds = %144, %140
  %146 = load i32, i32* %5, align 4
  %147 = sitofp i32 %146 to float
  %148 = load float, float* %6, align 4
  %149 = fmul contract float %148, %147
  store float %149, float* %6, align 4
  br label %150

150:                                              ; preds = %145, %2
  %151 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  %152 = call contract noundef float @_ZNK7RDTimer4TimeEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %151)
  %153 = load float, float* %6, align 4
  %154 = fadd contract float %152, %153
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 %155, 1
  %157 = sitofp i32 %156 to float
  %158 = fdiv contract float %154, %157
  store float %158, float* %6, align 4
  %159 = bitcast %class.SimplePerfSerializer* %14 to %class.PerfSerializer*
  %160 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %159, i32 0, i32 4
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** %160, align 8
  %162 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  call void @_ZNK7RDTimer4TypeEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %12, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %162)
  %163 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12) #18
  %164 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  invoke void @_ZNK7RDTimer3MsgEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %13, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %164)
          to label %165 unwind label %178

165:                                              ; preds = %150
  %166 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %13) #18
  %167 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  %168 = invoke noundef zeroext i1 @_ZNK7RDTimer12AccumulatingEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %167)
          to label %169 unwind label %182

169:                                              ; preds = %165
  %170 = zext i1 %168 to i64
  %171 = select i1 %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0)
  %172 = load float, float* %6, align 4
  %173 = fpext float %172 to double
  %174 = load i32, i32* %5, align 4
  %175 = add nsw i32 %174, 1
  %176 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %161, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.85, i64 0, i64 0), i8* noundef %163, i8* noundef %166, i8* noundef %171, double noundef %173, i32 noundef %175)
          to label %177 unwind label %182

177:                                              ; preds = %169
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %13) #18
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12) #18
  ret void

178:                                              ; preds = %150
  %179 = landingpad { i8*, i32 }
          cleanup
  %180 = extractvalue { i8*, i32 } %179, 0
  store i8* %180, i8** %10, align 8
  %181 = extractvalue { i8*, i32 } %179, 1
  store i32 %181, i32* %11, align 4
  br label %186

182:                                              ; preds = %169, %165
  %183 = landingpad { i8*, i32 }
          cleanup
  %184 = extractvalue { i8*, i32 } %183, 0
  store i8* %184, i8** %10, align 8
  %185 = extractvalue { i8*, i32 } %183, 1
  store i32 %185, i32* %11, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %13) #18
  br label %186

186:                                              ; preds = %182, %178
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12) #18
  br label %187

187:                                              ; preds = %186, %82
  %188 = load i8*, i8** %10, align 8
  %189 = load i32, i32* %11, align 4
  %190 = insertvalue { i8*, i32 } undef, i8* %188, 0
  %191 = insertvalue { i8*, i32 } %190, i32 %189, 1
  resume { i8*, i32 } %191
}

; Function Attrs: nounwind
declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #7

; Function Attrs: nounwind
declare i32 @access(i8* noundef, i32 noundef) #7

declare i8* @__cxa_allocate_exception(i64)

declare void @__cxa_throw(i8*, i8*, i8*)

declare i32 @fclose(%struct._IO_FILE* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN14PerfSerializerD2Ev(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %0) unnamed_addr #14 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.PerfSerializer*, align 8
  %3 = alloca [200 x i8], align 16
  store %class.PerfSerializer* %0, %class.PerfSerializer** %2, align 8
  %4 = load %class.PerfSerializer*, %class.PerfSerializer** %2, align 8
  %5 = bitcast %class.PerfSerializer* %4 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV14PerfSerializer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %5, align 8
  %6 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %8 = icmp ne %struct._IO_FILE* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %12 = invoke i32 @fclose(%struct._IO_FILE* noundef %11)
          to label %13 unwind label %53

13:                                               ; preds = %9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.63, i64 0, i64 0))
          to label %16 unwind label %53

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16, %1
  %18 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %20 = icmp ne %struct._IO_FILE* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 4
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  %24 = invoke i32 @fclose(%struct._IO_FILE* noundef %23)
          to label %25 unwind label %53

25:                                               ; preds = %21
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.64, i64 0, i64 0))
          to label %28 unwind label %53

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %28, %17
  %30 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 5
  %31 = load i8, i8* %30, align 8
  %32 = trunc i8 %31 to i1
  %33 = zext i1 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %29
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 7
  %38 = getelementptr inbounds [100 x i8], [100 x i8]* %37, i64 0, i64 0
  %39 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 6
  %40 = getelementptr inbounds [100 x i8], [100 x i8]* %39, i64 0, i64 0
  %41 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.65, i64 0, i64 0), i8* noundef %38, i8* noundef %40)
          to label %42 unwind label %53

42:                                               ; preds = %35
  %43 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %44 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 7
  %45 = getelementptr inbounds [100 x i8], [100 x i8]* %44, i64 0, i64 0
  %46 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 6
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %46, i64 0, i64 0
  %48 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %43, i64 noundef 200, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i64 0, i64 0), i8* noundef %45, i8* noundef %47) #18
  %49 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %50 = invoke i32 @system(i8* noundef %49)
          to label %51 unwind label %53

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %29
  ret void

53:                                               ; preds = %42, %35, %25, %21, %13, %9
  %54 = landingpad { i8*, i32 }
          catch i8* null
  %55 = extractvalue { i8*, i32 } %54, 0
  call void @__clang_call_terminate(i8* %55) #19
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN14PerfSerializerD0Ev(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %0) unnamed_addr #14 comdat align 2 {
  %2 = alloca %class.PerfSerializer*, align 8
  store %class.PerfSerializer* %0, %class.PerfSerializer** %2, align 8
  %3 = load %class.PerfSerializer*, %class.PerfSerializer** %2, align 8
  call void @llvm.trap() #19
  unreachable
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #16 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #18
  call void @_ZSt9terminatev() #19
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

declare i32 @system(i8* noundef) #4

declare i64 @getline(i8** noundef, i64* noundef, %struct._IO_FILE* noundef) #4

; Function Attrs: nounwind
declare i8* @strtok(i8* noundef, i8* noundef) #7

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #10

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK7RDTimer4TypeEv(%"class.std::basic_string"* noalias sret(%"class.std::basic_string") align 8 %0, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %1) #0 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca %class.RDTimer*, align 8
  %5 = bitcast %"class.std::basic_string"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store %class.RDTimer* %1, %class.RDTimer** %4, align 8
  %6 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  %7 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %6, i32 0, i32 3
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %7)
  ret void
}

; Function Attrs: nounwind
declare noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) #7

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNK7RDTimer3MsgEv(%"class.std::basic_string"* noalias sret(%"class.std::basic_string") align 8 %0, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %1) #0 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca %class.RDTimer*, align 8
  %5 = bitcast %"class.std::basic_string"* %0 to i8*
  store i8* %5, i8** %3, align 8
  store %class.RDTimer* %1, %class.RDTimer** %4, align 8
  %6 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  %7 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %6, i32 0, i32 2
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %7)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7RDTimer12AccumulatingEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) #2 comdat align 2 {
  %2 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %2, align 8
  %3 = load %class.RDTimer*, %class.RDTimer** %2, align 8
  %4 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 1
  %5 = load i8, i8* %4, align 8
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: nounwind readonly willreturn
declare double @atof(i8* noundef) #10

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_ZNK7RDTimer4TimeEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) #2 comdat align 2 {
  %2 = alloca float, align 4
  %3 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %3, align 8
  %4 = load %class.RDTimer*, %class.RDTimer** %3, align 8
  %5 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %4, i32 0, i32 1
  %6 = load i8, i8* %5, align 8
  %7 = trunc i8 %6 to i1
  %8 = zext i1 %7 to i32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %4, i32 0, i32 6
  %12 = load float, float* %11, align 8
  store float %12, float* %2, align 4
  br label %16

13:                                               ; preds = %1
  %14 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %4, i32 0, i32 7
  %15 = load float, float* %14, align 4
  store float %15, float* %2, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = load float, float* %2, align 4
  ret float %17
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #17

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (float*, float*, i32, i32)** @_Z4Fan1PfS_ii to i8*), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %3 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (float*, float*, float*, i32, i32, i32)** @_Z4Fan2PfS_S_iii to i8*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { argmemonly nocallback nofree nounwind willreturn }
attributes #14 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { noinline noreturn nounwind }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }
attributes #22 = { nounwind readonly willreturn }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { noreturn }

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
