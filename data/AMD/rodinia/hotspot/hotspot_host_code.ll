; ModuleID = 'hip/hotspot/hotspot.cu'
source_filename = "hip/hotspot/hotspot.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque
%class.RDTimerCPU = type { %class.RDTimer }
%class.RDTimer = type { i32 (...)**, i8, %"class.std::basic_string", %"class.std::basic_string", i64, i64, float, float }
%"class.std::basic_string" = type { %"struct.std::basic_string<char>::_Alloc_hider" }
%"struct.std::basic_string<char>::_Alloc_hider" = type { i8* }
%"class.std::allocator" = type { i8 }
%class.SimplePerfSerializer = type { %class.PerfSerializer.base, i32, i64, i8*, i64, i8* }
%class.PerfSerializer.base = type <{ i32 (...)**, i8, [7 x i8], %struct._IO_FILE*, %struct._IO_FILE*, i8, [100 x i8], [100 x i8] }>
%class.PerfSerializer = type <{ i32 (...)**, i8, [7 x i8], %struct._IO_FILE*, %struct._IO_FILE*, i8, [100 x i8], [100 x i8], [7 x i8] }>
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

$_ZN4dim3C2Ejjj = comdat any

$_ZN10RDTimerCPUC2ESs = comdat any

$_ZN7RDTimer5ResetESs = comdat any

$_ZN20SimplePerfSerializerC2EPc = comdat any

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

@t_chip = dso_local global float 0x3F40624DE0000000, align 4
@chip_height = dso_local global float 0x3F90624DE0000000, align 4
@chip_width = dso_local global float 0x3F90624DE0000000, align 4
@amb_temp = dso_local global float 8.000000e+01, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [11 x i8] c"error: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"The file was not opened\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"%d\09%g\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"not enough lines in file\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"invalid file format\00", align 1
@_Z14calculate_tempiPfS_S_iiiiffffff = constant void (i32, float*, float*, float*, i32, i32, i32, i32, float, float, float, float, float, float)* @_Z29__device_stub__calculate_tempiPfS_S_iiiiffffff, align 8
@.str.8 = private unnamed_addr constant [100 x i8] c"Usage: %s <grid_rows/grid_cols> <pyramid_height> <sim_time> <temp_file> <power_file> <output_file>\0A\00", align 1
@.str.9 = private unnamed_addr constant [78 x i8] c"\09<grid_rows/grid_cols>  - number of rows/cols in the grid (positive integer)\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"\09<pyramid_height> - pyramid heigh(positive integer)\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"\09<sim_time>   - number of iterations\0A\00", align 1
@.str.12 = private unnamed_addr constant [89 x i8] c"\09<temp_file>  - name of the file containing the initial temperature values of each cell\0A\00", align 1
@.str.13 = private unnamed_addr constant [86 x i8] c"\09<power_file> - name of the file containing the dissipated power values of each cell\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"\09<output_file> - name of the output file\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"WG size of kernel = %d X %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"Overall CPU Time\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"unable to allocate memory\00", align 1
@.str.19 = private unnamed_addr constant [94 x i8] c"pyramidHeight: %d\0AgridSize: [%d, %d]\0Aborder:[%d, %d]\0AblockGrid:[%d, %d]\0AtargetBlock:[%d, %d]\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"Malloc Time\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"CPU to GPU Transfer Time\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"Start computing the transient temperature\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"COMPUTE:Kernel Execution Time\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"Ending simulation\0A\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"GPU to CPU Transfer Time\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"time CPU to GPU memory copy = %lfs\0A\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"time GPU to CPU memory copy back = %lfs\0A\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"time GPU malloc = %lfs\0A\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"time kernel = %lfs\0A\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"Overall CPU time = %lfs\0A\00", align 1
@_ZTV10RDTimerCPU = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI10RDTimerCPU to i8*), i8* bitcast (void (%class.RDTimerCPU*)* @_ZN10RDTimerCPUD2Ev to i8*), i8* bitcast (void (%class.RDTimerCPU*)* @_ZN10RDTimerCPUD0Ev to i8*), i8* bitcast (void (%class.RDTimerCPU*)* @_ZN10RDTimerCPU5StartEv to i8*), i8* bitcast (float (%class.RDTimerCPU*)* @_ZN10RDTimerCPU4StopEv to i8*), i8* bitcast (float (%class.RDTimerCPU*)* @_ZN10RDTimerCPU10AccumulateEv to i8*)] }, comdat, align 8
@.str.31 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS10RDTimerCPU = linkonce_odr dso_local constant [13 x i8] c"10RDTimerCPU\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS7RDTimer = linkonce_odr dso_local constant [9 x i8] c"7RDTimer\00", comdat, align 1
@_ZTI7RDTimer = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_ZTS7RDTimer, i32 0, i32 0) }, comdat, align 8
@_ZTI10RDTimerCPU = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @_ZTS10RDTimerCPU, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7RDTimer to i8*) }, comdat, align 8
@_ZTV7RDTimer = linkonce_odr dso_local unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI7RDTimer to i8*), i8* bitcast (void (%class.RDTimer*)* @_ZN7RDTimerD2Ev to i8*), i8* bitcast (void (%class.RDTimer*)* @_ZN7RDTimerD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.32 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@_ZTV20SimplePerfSerializer = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI20SimplePerfSerializer to i8*), i8* bitcast (void (%class.SimplePerfSerializer*)* @_ZN20SimplePerfSerializerD2Ev to i8*), i8* bitcast (void (%class.SimplePerfSerializer*)* @_ZN20SimplePerfSerializerD0Ev to i8*), i8* bitcast (void (%class.SimplePerfSerializer*, %class.RDTimer*)* @_ZN20SimplePerfSerializer9SerializeEPK7RDTimer to i8*)] }, comdat, align 8
@_ZTS20SimplePerfSerializer = linkonce_odr dso_local constant [23 x i8] c"20SimplePerfSerializer\00", comdat, align 1
@_ZTS14PerfSerializer = linkonce_odr dso_local constant [17 x i8] c"14PerfSerializer\00", comdat, align 1
@_ZTI14PerfSerializer = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @_ZTS14PerfSerializer, i32 0, i32 0) }, comdat, align 8
@_ZTI20SimplePerfSerializer = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @_ZTS20SimplePerfSerializer, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI14PerfSerializer to i8*) }, comdat, align 8
@_ZTV14PerfSerializer = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI14PerfSerializer to i8*), i8* bitcast (void (%class.PerfSerializer*)* @_ZN14PerfSerializerD2Ev to i8*), i8* bitcast (void (%class.PerfSerializer*)* @_ZN14PerfSerializerD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.33 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c".perf\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c".perf.tmp\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"File exists\0A\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"Could not open 1\0A\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"Could not open\00", align 1
@_ZTIPKc = external constant i8*
@.str.39 = private unnamed_addr constant [18 x i8] c"Could not open 2\0A\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"Could not open 3\0A\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"Opened file %s for performance log\0A\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"did not specify file\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"Closed performance log 1\0A\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"Closed performance log 2\0A\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"COPYING FILE: %s to %s\0A\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"mv %s %s\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"malformed line\0A\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"malformed line\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"incompatible platform type\0A\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"incompatible platform type\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"malformed line, second token\0A\00", align 1
@.str.53 = private unnamed_addr constant [39 x i8] c"malformed malformed line, second token\00", align 1
@.str.54 = private unnamed_addr constant [28 x i8] c"incompatible message:%s,%s\0A\00", align 1
@.str.55 = private unnamed_addr constant [34 x i8] c"incompatible incompatible message\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"malformed line, third token\0A\00", align 1
@.str.57 = private unnamed_addr constant [28 x i8] c"malformed line, third token\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"ACCUM\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"ONEOFF\00", align 1
@.str.60 = private unnamed_addr constant [25 x i8] c"incompatible timer type\0A\00", align 1
@.str.61 = private unnamed_addr constant [37 x i8] c"incompatible incompatible timer type\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"malformed line forth token\0A\00", align 1
@.str.63 = private unnamed_addr constant [27 x i8] c"malformed line forth token\00", align 1
@.str.64 = private unnamed_addr constant [66 x i8] c"INFO: number of trials so far not found. Old format. Will update\0A\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"%s, %s, %s, %f, %d\0A\00", align 1
@0 = private unnamed_addr constant [36 x i8] c"_Z14calculate_tempiPfS_S_iiiiffffff\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z5fatalPc(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* noundef %4)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z11writeoutputPfiiPc(float* noundef %0, i32 noundef %1, i32 noundef %2, i8* noundef %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct._IO_FILE*, align 8
  %13 = alloca [256 x i8], align 16
  store float* %0, float** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %4
  %17 = load i8*, i8** %8, align 8
  %18 = call %struct._IO_FILE* @fopen(i8* noundef %17, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %18, %struct._IO_FILE** %12, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %20 = icmp eq %struct._IO_FILE* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %24, %struct._IO_FILE** %12, align 8
  br label %25

25:                                               ; preds = %21, %16
  br label %28

26:                                               ; preds = %4
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %27, %struct._IO_FILE** %12, align 8
  br label %28

28:                                               ; preds = %26, %25
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %61, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %64

33:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %57, %33
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %40 = load i32, i32* %11, align 4
  %41 = load float*, float** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %41, i64 %47
  %49 = load float, float* %48, align 4
  %50 = fpext float %49 to double
  %51 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %39, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 noundef %40, double noundef %50) #17
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %54 = call i32 @fputs(i8* noundef %52, %struct._IO_FILE* noundef %53)
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %38
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %34, !llvm.loop !6

60:                                               ; preds = %34
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %29, !llvm.loop !8

64:                                               ; preds = %29
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %66 = call i32 @fflush(%struct._IO_FILE* noundef %65)
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %68 = call i32 @fclose(%struct._IO_FILE* noundef %67)
  ret void
}

declare %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8* noundef, i8* noundef, ...) #2

declare i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

declare i32 @fflush(%struct._IO_FILE* noundef) #1

declare i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z9readinputPfiiPc(float* noundef %0, i32 noundef %1, i32 noundef %2, i8* noundef %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct._IO_FILE*, align 8
  %12 = alloca [256 x i8], align 16
  %13 = alloca float, align 4
  store float* %0, float** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call %struct._IO_FILE* @fopen(i8* noundef %14, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store %struct._IO_FILE* %15, %struct._IO_FILE** %11, align 8
  %16 = icmp eq %struct._IO_FILE* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %4
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %59, %20
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %23, 1
  %25 = icmp sle i32 %22, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %55, %26
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, 1
  %31 = icmp sle i32 %28, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %27
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %35 = call i8* @fgets(i8* noundef %33, i32 noundef 256, %struct._IO_FILE* noundef %34)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %37 = call i32 @feof(%struct._IO_FILE* noundef %36) #17
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  call void @_Z5fatalPc(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %40

40:                                               ; preds = %39, %32
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %42 = call i32 (i8*, i8*, ...) @sscanf(i8* noundef %41, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), float* noundef %13) #17
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  call void @_Z5fatalPc(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %45

45:                                               ; preds = %44, %40
  %46 = load float, float* %13, align 4
  %47 = load float*, float** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %47, i64 %53
  store float %46, float* %54, align 4
  br label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %27, !llvm.loop !9

58:                                               ; preds = %27
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %21, !llvm.loop !10

62:                                               ; preds = %21
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %64 = call i32 @fclose(%struct._IO_FILE* noundef %63)
  ret void
}

declare i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* noundef) #2

; Function Attrs: nounwind
declare i32 @sscanf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z29__device_stub__calculate_tempiPfS_S_iiiiffffff(i32 noundef %0, float* noundef %1, float* noundef %2, float* noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, float noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12, float noundef %13) #3 {
  %15 = alloca i32, align 4
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
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
  store i32 %0, i32* %15, align 4
  store float* %1, float** %16, align 8
  store float* %2, float** %17, align 8
  store float* %3, float** %18, align 8
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store float %8, float* %23, align 4
  store float %9, float* %24, align 4
  store float %10, float* %25, align 4
  store float %11, float* %26, align 4
  store float %12, float* %27, align 4
  store float %13, float* %28, align 4
  %35 = alloca i8*, i64 14, align 16
  %36 = bitcast i32* %15 to i8*
  %37 = getelementptr i8*, i8** %35, i32 0
  store i8* %36, i8** %37, align 8
  %38 = bitcast float** %16 to i8*
  %39 = getelementptr i8*, i8** %35, i32 1
  store i8* %38, i8** %39, align 8
  %40 = bitcast float** %17 to i8*
  %41 = getelementptr i8*, i8** %35, i32 2
  store i8* %40, i8** %41, align 8
  %42 = bitcast float** %18 to i8*
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
  %50 = bitcast i32* %22 to i8*
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
  %80 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i32, float*, float*, float*, i32, i32, i32, i32, float, float, float, float, float, float)** @_Z14calculate_tempiPfS_S_iiiiffffff to i8*), i64 %70, i32 %72, i64 %76, i32 %78, i8** noundef %35, i64 noundef %65, %struct.ihipStream_t* noundef %79)
  br label %81

81:                                               ; preds = %14
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_Z17compute_tran_tempPfPS_iiiiiiii(float* noundef %0, float** noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #0 {
  %11 = alloca float*, align 8
  %12 = alloca float**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.dim3, align 4
  %22 = alloca %struct.dim3, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
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
  %36 = alloca %struct.dim3, align 4
  %37 = alloca %struct.dim3, align 4
  %38 = alloca { i64, i32 }, align 4
  %39 = alloca { i64, i32 }, align 4
  store float* %0, float** %11, align 8
  store float** %1, float*** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %21, i32 noundef 16, i32 noundef 16, i32 noundef 1)
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %18, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %22, i32 noundef %40, i32 noundef %41, i32 noundef 1)
  %42 = load float, float* @chip_height, align 4
  %43 = load i32, i32* %14, align 4
  %44 = sitofp i32 %43 to float
  %45 = fdiv contract float %42, %44
  store float %45, float* %23, align 4
  %46 = load float, float* @chip_width, align 4
  %47 = load i32, i32* %13, align 4
  %48 = sitofp i32 %47 to float
  %49 = fdiv contract float %46, %48
  store float %49, float* %24, align 4
  %50 = load float, float* @t_chip, align 4
  %51 = fpext float %50 to double
  %52 = fmul contract double 8.750000e+05, %51
  %53 = load float, float* %24, align 4
  %54 = fpext float %53 to double
  %55 = fmul contract double %52, %54
  %56 = load float, float* %23, align 4
  %57 = fpext float %56 to double
  %58 = fmul contract double %55, %57
  %59 = fptrunc double %58 to float
  store float %59, float* %25, align 4
  %60 = load float, float* %24, align 4
  %61 = fpext float %60 to double
  %62 = load float, float* @t_chip, align 4
  %63 = fpext float %62 to double
  %64 = fmul contract double 2.000000e+02, %63
  %65 = load float, float* %23, align 4
  %66 = fpext float %65 to double
  %67 = fmul contract double %64, %66
  %68 = fdiv contract double %61, %67
  %69 = fptrunc double %68 to float
  store float %69, float* %26, align 4
  %70 = load float, float* %23, align 4
  %71 = fpext float %70 to double
  %72 = load float, float* @t_chip, align 4
  %73 = fpext float %72 to double
  %74 = fmul contract double 2.000000e+02, %73
  %75 = load float, float* %24, align 4
  %76 = fpext float %75 to double
  %77 = fmul contract double %74, %76
  %78 = fdiv contract double %71, %77
  %79 = fptrunc double %78 to float
  store float %79, float* %27, align 4
  %80 = load float, float* @t_chip, align 4
  %81 = load float, float* %23, align 4
  %82 = fmul contract float 1.000000e+02, %81
  %83 = load float, float* %24, align 4
  %84 = fmul contract float %82, %83
  %85 = fdiv contract float %80, %84
  store float %85, float* %28, align 4
  %86 = load float, float* @t_chip, align 4
  %87 = fpext float %86 to double
  %88 = fmul contract double 5.000000e-01, %87
  %89 = fmul contract double %88, 1.750000e+06
  %90 = fdiv contract double 3.000000e+06, %89
  %91 = fptrunc double %90 to float
  store float %91, float* %29, align 4
  %92 = load float, float* %29, align 4
  %93 = fpext float %92 to double
  %94 = fdiv contract double 1.000000e-03, %93
  %95 = fptrunc double %94 to float
  store float %95, float* %30, align 4
  store float 0x3F50624DE0000000, float* %32, align 4
  store i32 1, i32* %33, align 4
  store i32 0, i32* %34, align 4
  store float 0.000000e+00, float* %31, align 4
  br label %96

96:                                               ; preds = %166, %10
  %97 = load float, float* %31, align 4
  %98 = load i32, i32* %15, align 4
  %99 = sitofp i32 %98 to float
  %100 = fcmp contract olt float %97, %99
  br i1 %100, label %101, label %171

101:                                              ; preds = %96
  %102 = load i32, i32* %33, align 4
  store i32 %102, i32* %35, align 4
  %103 = load i32, i32* %34, align 4
  store i32 %103, i32* %33, align 4
  %104 = load i32, i32* %35, align 4
  store i32 %104, i32* %34, align 4
  br label %105

105:                                              ; preds = %101
  %106 = bitcast %struct.dim3* %36 to i8*
  %107 = bitcast %struct.dim3* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %106, i8* align 4 %107, i64 12, i1 false)
  %108 = bitcast %struct.dim3* %37 to i8*
  %109 = bitcast %struct.dim3* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %108, i8* align 4 %109, i64 12, i1 false)
  %110 = bitcast { i64, i32 }* %38 to i8*
  %111 = bitcast %struct.dim3* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %110, i8* align 4 %111, i64 12, i1 false)
  %112 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %38, i32 0, i32 0
  %113 = load i64, i64* %112, align 4
  %114 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %38, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = bitcast { i64, i32 }* %39 to i8*
  %117 = bitcast %struct.dim3* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %116, i8* align 4 %117, i64 12, i1 false)
  %118 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %39, i32 0, i32 0
  %119 = load i64, i64* %118, align 4
  %120 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %39, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @__hipPushCallConfiguration(i64 %113, i32 %115, i64 %119, i32 %121, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %164, label %124

124:                                              ; preds = %105
  %125 = load i32, i32* %16, align 4
  %126 = sitofp i32 %125 to float
  %127 = load i32, i32* %15, align 4
  %128 = sitofp i32 %127 to float
  %129 = load float, float* %31, align 4
  %130 = fsub contract float %128, %129
  %131 = fcmp contract ole float %126, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %124
  %133 = load i32, i32* %16, align 4
  %134 = sitofp i32 %133 to float
  br label %140

135:                                              ; preds = %124
  %136 = load i32, i32* %15, align 4
  %137 = sitofp i32 %136 to float
  %138 = load float, float* %31, align 4
  %139 = fsub contract float %137, %138
  br label %140

140:                                              ; preds = %135, %132
  %141 = phi contract float [ %134, %132 ], [ %139, %135 ]
  %142 = fptosi float %141 to i32
  %143 = load float*, float** %11, align 8
  %144 = load float**, float*** %12, align 8
  %145 = load i32, i32* %33, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float*, float** %144, i64 %146
  %148 = load float*, float** %147, align 8
  %149 = load float**, float*** %12, align 8
  %150 = load i32, i32* %34, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float*, float** %149, i64 %151
  %153 = load float*, float** %152, align 8
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %19, align 4
  %157 = load i32, i32* %20, align 4
  %158 = load float, float* %25, align 4
  %159 = load float, float* %26, align 4
  %160 = load float, float* %27, align 4
  %161 = load float, float* %28, align 4
  %162 = load float, float* %30, align 4
  %163 = load float, float* %32, align 4
  call void @_Z29__device_stub__calculate_tempiPfS_S_iiiiffffff(i32 noundef %142, float* noundef %143, float* noundef %148, float* noundef %153, i32 noundef %154, i32 noundef %155, i32 noundef %156, i32 noundef %157, float noundef %158, float noundef %159, float noundef %160, float noundef %161, float noundef %162, float noundef %163)
  br label %164

164:                                              ; preds = %140, %105
  br label %165

165:                                              ; preds = %164
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %16, align 4
  %168 = sitofp i32 %167 to float
  %169 = load float, float* %31, align 4
  %170 = fadd contract float %169, %168
  store float %170, float* %31, align 4
  br label %96, !llvm.loop !11

171:                                              ; preds = %96
  %172 = load i32, i32* %34, align 4
  ret i32 %172
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 comdat align 2 {
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

declare i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z5usageiPPc(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8**, i8*** %4, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @.str.8, i64 0, i64 0), i8* noundef %8)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.9, i64 0, i64 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str.12, i64 0, i64 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.13, i64 0, i64 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0))
  call void @exit(i32 noundef 1) #18
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #6

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1) #7 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32 noundef 16, i32 noundef 16)
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  call void @_Z3runiPPc(i32 noundef %8, i8** noundef %9)
  ret i32 0
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z3runiPPc(i32 noundef %0, i8** noundef %1) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca %class.RDTimerCPU*, align 8
  %28 = alloca %"class.std::basic_string", align 8
  %29 = alloca %"class.std::allocator", align 1
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i1, align 1
  %33 = alloca %"class.std::basic_string", align 8
  %34 = alloca %"class.std::allocator", align 1
  %35 = alloca [2 x float*], align 16
  %36 = alloca float*, align 8
  %37 = alloca %class.SimplePerfSerializer*, align 8
  %38 = alloca %class.RDTimerCPU*, align 8
  %39 = alloca %"class.std::basic_string", align 8
  %40 = alloca %"class.std::allocator", align 1
  %41 = alloca i1, align 1
  %42 = alloca %"class.std::basic_string", align 8
  %43 = alloca %"class.std::allocator", align 1
  %44 = alloca %"class.std::basic_string", align 8
  %45 = alloca %"class.std::allocator", align 1
  %46 = alloca %"class.std::basic_string", align 8
  %47 = alloca %"class.std::allocator", align 1
  %48 = alloca i32, align 4
  %49 = alloca %"class.std::basic_string", align 8
  %50 = alloca %"class.std::allocator", align 1
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 60, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 7
  br i1 %52, label %53, label %59

53:                                               ; preds = %2
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 6
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %3, align 4
  %58 = load i8**, i8*** %4, align 8
  call void @_Z5usageiPPc(i32 noundef %57, i8** noundef %58)
  br label %59

59:                                               ; preds = %56, %53, %2
  %60 = load i8**, i8*** %4, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @atoi(i8* noundef %62) #19
  store i32 %63, i32* %6, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %83, label %65

65:                                               ; preds = %59
  %66 = load i8**, i8*** %4, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @atoi(i8* noundef %68) #19
  store i32 %69, i32* %7, align 4
  %70 = icmp sle i32 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %65
  %72 = load i8**, i8*** %4, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 2
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @atoi(i8* noundef %74) #19
  store i32 %75, i32* %15, align 4
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load i8**, i8*** %4, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 3
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @atoi(i8* noundef %80) #19
  store i32 %81, i32* %14, align 4
  %82 = icmp sle i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77, %71, %65, %59
  %84 = load i32, i32* %3, align 4
  %85 = load i8**, i8*** %4, align 8
  call void @_Z5usageiPPc(i32 noundef %84, i8** noundef %85)
  br label %86

86:                                               ; preds = %83, %77
  %87 = load i8**, i8*** %4, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 4
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %11, align 8
  %90 = load i8**, i8*** %4, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 5
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %12, align 8
  %93 = load i32, i32* %3, align 4
  %94 = icmp eq i32 %93, 7
  br i1 %94, label %95, label %99

95:                                               ; preds = %86
  %96 = load i8**, i8*** %4, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 6
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %13, align 8
  br label %100

99:                                               ; preds = %86
  store i8* null, i8** %13, align 8
  br label %100

100:                                              ; preds = %99, %95
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = mul nsw i32 %101, %102
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %15, align 4
  %105 = mul nsw i32 %104, 2
  %106 = sdiv i32 %105, 2
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %15, align 4
  %108 = mul nsw i32 %107, 2
  %109 = sdiv i32 %108, 2
  store i32 %109, i32* %17, align 4
  %110 = load i32, i32* %15, align 4
  %111 = mul nsw i32 %110, 2
  %112 = sub nsw i32 16, %111
  store i32 %112, i32* %18, align 4
  %113 = load i32, i32* %15, align 4
  %114 = mul nsw i32 %113, 2
  %115 = sub nsw i32 16, %114
  store i32 %115, i32* %19, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %18, align 4
  %118 = sdiv i32 %116, %117
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %18, align 4
  %121 = srem i32 %119, %120
  %122 = icmp eq i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 0, i32 1
  %125 = add nsw i32 %118, %124
  store i32 %125, i32* %20, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %19, align 4
  %128 = sdiv i32 %126, %127
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %19, align 4
  %131 = srem i32 %129, %130
  %132 = icmp eq i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 0, i32 1
  %135 = add nsw i32 %128, %134
  store i32 %135, i32* %21, align 4
  %136 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 56) #20
  store i1 true, i1* %32, align 1
  %137 = bitcast i8* %136 to %class.RDTimerCPU*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %29) #17
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %28, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %29)
          to label %138 unwind label %172

138:                                              ; preds = %100
  invoke void @_ZN10RDTimerCPUC2ESs(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %137, %"class.std::basic_string"* noundef %28)
          to label %139 unwind label %176

139:                                              ; preds = %138
  store i1 false, i1* %32, align 1
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %28) #17
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %29) #17
  store %class.RDTimerCPU* %137, %class.RDTimerCPU** %27, align 8
  %140 = load %class.RDTimerCPU*, %class.RDTimerCPU** %27, align 8
  %141 = bitcast %class.RDTimerCPU* %140 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %34) #17
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %33, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %34)
          to label %142 unwind label %184

142:                                              ; preds = %139
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %141, %"class.std::basic_string"* noundef %33)
          to label %143 unwind label %188

143:                                              ; preds = %142
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %33) #17
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %34) #17
  %144 = load %class.RDTimerCPU*, %class.RDTimerCPU** %27, align 8
  %145 = bitcast %class.RDTimerCPU* %144 to void (%class.RDTimerCPU*)***
  %146 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %145, align 8
  %147 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %146, i64 2
  %148 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %147, align 8
  call void %148(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %144)
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = mul i64 %150, 4
  %152 = call noalias i8* @malloc(i64 noundef %151) #21
  %153 = bitcast i8* %152 to float*
  store float* %153, float** %8, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = mul i64 %155, 4
  %157 = call noalias i8* @malloc(i64 noundef %156) #21
  %158 = bitcast i8* %157 to float*
  store float* %158, float** %9, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = call noalias i8* @calloc(i64 noundef %160, i64 noundef 4) #22
  %162 = bitcast i8* %161 to float*
  store float* %162, float** %10, align 8
  %163 = load float*, float** %9, align 8
  %164 = icmp ne float* %163, null
  br i1 %164, label %165, label %171

165:                                              ; preds = %143
  %166 = load float*, float** %8, align 8
  %167 = icmp ne float* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load float*, float** %10, align 8
  %170 = icmp ne float* %169, null
  br i1 %170, label %193, label %171

171:                                              ; preds = %168, %165, %143
  call void @_Z5fatalPc(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0))
  br label %193

172:                                              ; preds = %100
  %173 = landingpad { i8*, i32 }
          cleanup
  %174 = extractvalue { i8*, i32 } %173, 0
  store i8* %174, i8** %30, align 8
  %175 = extractvalue { i8*, i32 } %173, 1
  store i32 %175, i32* %31, align 4
  br label %180

176:                                              ; preds = %138
  %177 = landingpad { i8*, i32 }
          cleanup
  %178 = extractvalue { i8*, i32 } %177, 0
  store i8* %178, i8** %30, align 8
  %179 = extractvalue { i8*, i32 } %177, 1
  store i32 %179, i32* %31, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %28) #17
  br label %180

180:                                              ; preds = %176, %172
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %29) #17
  %181 = load i1, i1* %32, align 1
  br i1 %181, label %182, label %183

182:                                              ; preds = %180
  call void @_ZdlPv(i8* noundef %136) #23
  br label %183

183:                                              ; preds = %182, %180
  br label %501

184:                                              ; preds = %139
  %185 = landingpad { i8*, i32 }
          cleanup
  %186 = extractvalue { i8*, i32 } %185, 0
  store i8* %186, i8** %30, align 8
  %187 = extractvalue { i8*, i32 } %185, 1
  store i32 %187, i32* %31, align 4
  br label %192

188:                                              ; preds = %142
  %189 = landingpad { i8*, i32 }
          cleanup
  %190 = extractvalue { i8*, i32 } %189, 0
  store i8* %190, i8** %30, align 8
  %191 = extractvalue { i8*, i32 } %189, 1
  store i32 %191, i32* %31, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %33) #17
  br label %192

192:                                              ; preds = %188, %184
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %34) #17
  br label %501

193:                                              ; preds = %171, %168
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %195 = load i32, i32* %15, align 4
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* %16, align 4
  %199 = load i32, i32* %17, align 4
  %200 = load i32, i32* %20, align 4
  %201 = load i32, i32* %21, align 4
  %202 = load i32, i32* %18, align 4
  %203 = load i32, i32* %19, align 4
  %204 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %194, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @.str.19, i64 0, i64 0), i32 noundef %195, i32 noundef %196, i32 noundef %197, i32 noundef %198, i32 noundef %199, i32 noundef %200, i32 noundef %201, i32 noundef %202, i32 noundef %203)
  %205 = load float*, float** %8, align 8
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* %7, align 4
  %208 = load i8*, i8** %11, align 8
  call void @_Z9readinputPfiiPc(float* noundef %205, i32 noundef %206, i32 noundef %207, i8* noundef %208)
  %209 = load float*, float** %9, align 8
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* %7, align 4
  %212 = load i8*, i8** %12, align 8
  call void @_Z9readinputPfiiPc(float* noundef %209, i32 noundef %210, i32 noundef %211, i8* noundef %212)
  %213 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 272) #20
  %214 = bitcast i8* %213 to %class.SimplePerfSerializer*
  %215 = load i8**, i8*** %4, align 8
  %216 = getelementptr inbounds i8*, i8** %215, i64 0
  %217 = load i8*, i8** %216, align 8
  invoke void @_ZN20SimplePerfSerializerC2EPc(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %214, i8* noundef %217)
          to label %218 unwind label %449

218:                                              ; preds = %193
  store %class.SimplePerfSerializer* %214, %class.SimplePerfSerializer** %37, align 8
  %219 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 56) #20
  store i1 true, i1* %41, align 1
  %220 = bitcast i8* %219 to %class.RDTimerCPU*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %40) #17
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %39, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %40)
          to label %221 unwind label %453

221:                                              ; preds = %218
  invoke void @_ZN10RDTimerCPUC2ESs(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %220, %"class.std::basic_string"* noundef %39)
          to label %222 unwind label %457

222:                                              ; preds = %221
  store i1 false, i1* %41, align 1
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %39) #17
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %40) #17
  store %class.RDTimerCPU* %220, %class.RDTimerCPU** %38, align 8
  %223 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %224 = bitcast %class.RDTimerCPU* %223 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %43) #17
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %42, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %43)
          to label %225 unwind label %465

225:                                              ; preds = %222
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %224, %"class.std::basic_string"* noundef %42)
          to label %226 unwind label %469

226:                                              ; preds = %225
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %42) #17
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %43) #17
  %227 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %228 = bitcast %class.RDTimerCPU* %227 to void (%class.RDTimerCPU*)***
  %229 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %228, align 8
  %230 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %229, i64 2
  %231 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %230, align 8
  call void %231(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %227)
  %232 = getelementptr inbounds [2 x float*], [2 x float*]* %35, i64 0, i64 0
  %233 = bitcast float** %232 to i8**
  %234 = load i32, i32* %5, align 4
  %235 = sext i32 %234 to i64
  %236 = mul i64 4, %235
  %237 = call i32 @hipMalloc(i8** noundef %233, i64 noundef %236)
  %238 = getelementptr inbounds [2 x float*], [2 x float*]* %35, i64 0, i64 1
  %239 = bitcast float** %238 to i8**
  %240 = load i32, i32* %5, align 4
  %241 = sext i32 %240 to i64
  %242 = mul i64 4, %241
  %243 = call i32 @hipMalloc(i8** noundef %239, i64 noundef %242)
  %244 = getelementptr inbounds [2 x float*], [2 x float*]* %35, i64 0, i64 0
  %245 = load float*, float** %244, align 16
  %246 = bitcast float* %245 to i8*
  %247 = load float*, float** %8, align 8
  %248 = bitcast float* %247 to i8*
  %249 = load i32, i32* %5, align 4
  %250 = sext i32 %249 to i64
  %251 = mul i64 4, %250
  %252 = call i32 @hipMemcpy(i8* noundef %246, i8* noundef %248, i64 noundef %251, i32 noundef 1)
  %253 = bitcast float** %36 to i8**
  %254 = load i32, i32* %5, align 4
  %255 = sext i32 %254 to i64
  %256 = mul i64 4, %255
  %257 = call i32 @hipMalloc(i8** noundef %253, i64 noundef %256)
  %258 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %259 = bitcast %class.RDTimerCPU* %258 to float (%class.RDTimerCPU*)***
  %260 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %259, align 8
  %261 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %260, i64 3
  %262 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %261, align 8
  %263 = call contract noundef float %262(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %258)
  store float %263, float* %22, align 4
  %264 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %37, align 8
  %265 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %266 = bitcast %class.RDTimerCPU* %265 to %class.RDTimer*
  %267 = bitcast %class.SimplePerfSerializer* %264 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %268 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %267, align 8
  %269 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %268, i64 2
  %270 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %269, align 8
  call void %270(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %264, %class.RDTimer* noundef %266)
  %271 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %272 = bitcast %class.RDTimerCPU* %271 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %45) #17
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %44, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %45)
          to label %273 unwind label %474

273:                                              ; preds = %226
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %272, %"class.std::basic_string"* noundef %44)
          to label %274 unwind label %478

274:                                              ; preds = %273
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %44) #17
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %45) #17
  %275 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %276 = bitcast %class.RDTimerCPU* %275 to void (%class.RDTimerCPU*)***
  %277 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %276, align 8
  %278 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %277, i64 2
  %279 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %278, align 8
  call void %279(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %275)
  %280 = getelementptr inbounds [2 x float*], [2 x float*]* %35, i64 0, i64 0
  %281 = load float*, float** %280, align 16
  %282 = bitcast float* %281 to i8*
  %283 = load float*, float** %8, align 8
  %284 = bitcast float* %283 to i8*
  %285 = load i32, i32* %5, align 4
  %286 = sext i32 %285 to i64
  %287 = mul i64 4, %286
  %288 = call i32 @hipMemcpy(i8* noundef %282, i8* noundef %284, i64 noundef %287, i32 noundef 1)
  %289 = load float*, float** %36, align 8
  %290 = bitcast float* %289 to i8*
  %291 = load float*, float** %9, align 8
  %292 = bitcast float* %291 to i8*
  %293 = load i32, i32* %5, align 4
  %294 = sext i32 %293 to i64
  %295 = mul i64 4, %294
  %296 = call i32 @hipMemcpy(i8* noundef %290, i8* noundef %292, i64 noundef %295, i32 noundef 1)
  %297 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %298 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %297, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0))
  %299 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %300 = bitcast %class.RDTimerCPU* %299 to float (%class.RDTimerCPU*)***
  %301 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %300, align 8
  %302 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %301, i64 3
  %303 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %302, align 8
  %304 = call contract noundef float %303(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %299)
  store float %304, float* %23, align 4
  %305 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %37, align 8
  %306 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %307 = bitcast %class.RDTimerCPU* %306 to %class.RDTimer*
  %308 = bitcast %class.SimplePerfSerializer* %305 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %309 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %308, align 8
  %310 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %309, i64 2
  %311 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %310, align 8
  call void %311(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %305, %class.RDTimer* noundef %307)
  %312 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %313 = bitcast %class.RDTimerCPU* %312 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %47) #17
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %46, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %47)
          to label %314 unwind label %483

314:                                              ; preds = %274
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %313, %"class.std::basic_string"* noundef %46)
          to label %315 unwind label %487

315:                                              ; preds = %314
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %46) #17
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %47) #17
  %316 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %317 = bitcast %class.RDTimerCPU* %316 to void (%class.RDTimerCPU*)***
  %318 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %317, align 8
  %319 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %318, i64 2
  %320 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %319, align 8
  call void %320(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %316)
  %321 = load float*, float** %36, align 8
  %322 = getelementptr inbounds [2 x float*], [2 x float*]* %35, i64 0, i64 0
  %323 = load i32, i32* %7, align 4
  %324 = load i32, i32* %6, align 4
  %325 = load i32, i32* %14, align 4
  %326 = load i32, i32* %15, align 4
  %327 = load i32, i32* %20, align 4
  %328 = load i32, i32* %21, align 4
  %329 = load i32, i32* %16, align 4
  %330 = load i32, i32* %17, align 4
  %331 = call noundef i32 @_Z17compute_tran_tempPfPS_iiiiiiii(float* noundef %321, float** noundef %322, i32 noundef %323, i32 noundef %324, i32 noundef %325, i32 noundef %326, i32 noundef %327, i32 noundef %328, i32 noundef %329, i32 noundef %330)
  store i32 %331, i32* %48, align 4
  %332 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %333 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %332, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0))
  %334 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %335 = bitcast %class.RDTimerCPU* %334 to float (%class.RDTimerCPU*)***
  %336 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %335, align 8
  %337 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %336, i64 3
  %338 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %337, align 8
  %339 = call contract noundef float %338(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %334)
  store float %339, float* %24, align 4
  %340 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %37, align 8
  %341 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %342 = bitcast %class.RDTimerCPU* %341 to %class.RDTimer*
  %343 = bitcast %class.SimplePerfSerializer* %340 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %344 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %343, align 8
  %345 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %344, i64 2
  %346 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %345, align 8
  call void %346(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %340, %class.RDTimer* noundef %342)
  %347 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %348 = bitcast %class.RDTimerCPU* %347 to %class.RDTimer*
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %50) #17
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %49, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %50)
          to label %349 unwind label %492

349:                                              ; preds = %315
  invoke void @_ZN7RDTimer5ResetESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %348, %"class.std::basic_string"* noundef %49)
          to label %350 unwind label %496

350:                                              ; preds = %349
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %49) #17
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %50) #17
  %351 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %352 = bitcast %class.RDTimerCPU* %351 to void (%class.RDTimerCPU*)***
  %353 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %352, align 8
  %354 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %353, i64 2
  %355 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %354, align 8
  call void %355(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %351)
  %356 = load float*, float** %10, align 8
  %357 = bitcast float* %356 to i8*
  %358 = load i32, i32* %48, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [2 x float*], [2 x float*]* %35, i64 0, i64 %359
  %361 = load float*, float** %360, align 8
  %362 = bitcast float* %361 to i8*
  %363 = load i32, i32* %5, align 4
  %364 = sext i32 %363 to i64
  %365 = mul i64 4, %364
  %366 = call i32 @hipMemcpy(i8* noundef %357, i8* noundef %362, i64 noundef %365, i32 noundef 2)
  %367 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %368 = bitcast %class.RDTimerCPU* %367 to float (%class.RDTimerCPU*)***
  %369 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %368, align 8
  %370 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %369, i64 3
  %371 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %370, align 8
  %372 = call contract noundef float %371(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %367)
  store float %372, float* %25, align 4
  %373 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %37, align 8
  %374 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %375 = bitcast %class.RDTimerCPU* %374 to %class.RDTimer*
  %376 = bitcast %class.SimplePerfSerializer* %373 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %377 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %376, align 8
  %378 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %377, i64 2
  %379 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %378, align 8
  call void %379(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %373, %class.RDTimer* noundef %375)
  %380 = load float*, float** %10, align 8
  %381 = load i32, i32* %6, align 4
  %382 = load i32, i32* %7, align 4
  %383 = load i8*, i8** %13, align 8
  call void @_Z11writeoutputPfiiPc(float* noundef %380, i32 noundef %381, i32 noundef %382, i8* noundef %383)
  %384 = load %class.RDTimerCPU*, %class.RDTimerCPU** %27, align 8
  %385 = bitcast %class.RDTimerCPU* %384 to float (%class.RDTimerCPU*)***
  %386 = load float (%class.RDTimerCPU*)**, float (%class.RDTimerCPU*)*** %385, align 8
  %387 = getelementptr inbounds float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %386, i64 3
  %388 = load float (%class.RDTimerCPU*)*, float (%class.RDTimerCPU*)** %387, align 8
  %389 = call contract noundef float %388(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %384)
  store float %389, float* %26, align 4
  %390 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %37, align 8
  %391 = load %class.RDTimerCPU*, %class.RDTimerCPU** %27, align 8
  %392 = bitcast %class.RDTimerCPU* %391 to %class.RDTimer*
  %393 = bitcast %class.SimplePerfSerializer* %390 to void (%class.SimplePerfSerializer*, %class.RDTimer*)***
  %394 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)**, void (%class.SimplePerfSerializer*, %class.RDTimer*)*** %393, align 8
  %395 = getelementptr inbounds void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %394, i64 2
  %396 = load void (%class.SimplePerfSerializer*, %class.RDTimer*)*, void (%class.SimplePerfSerializer*, %class.RDTimer*)** %395, align 8
  call void %396(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %390, %class.RDTimer* noundef %392)
  %397 = load float, float* %23, align 4
  %398 = fpext float %397 to double
  %399 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0), double noundef %398)
  %400 = load float, float* %25, align 4
  %401 = fpext float %400 to double
  %402 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i64 0, i64 0), double noundef %401)
  %403 = load float, float* %22, align 4
  %404 = fpext float %403 to double
  %405 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0), double noundef %404)
  %406 = load float, float* %24, align 4
  %407 = fpext float %406 to double
  %408 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0), double noundef %407)
  %409 = load float, float* %26, align 4
  %410 = fpext float %409 to double
  %411 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0), double noundef %410)
  %412 = load %class.RDTimerCPU*, %class.RDTimerCPU** %38, align 8
  %413 = icmp eq %class.RDTimerCPU* %412, null
  br i1 %413, label %419, label %414

414:                                              ; preds = %350
  %415 = bitcast %class.RDTimerCPU* %412 to void (%class.RDTimerCPU*)***
  %416 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %415, align 8
  %417 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %416, i64 1
  %418 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %417, align 8
  call void %418(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %412) #17
  br label %419

419:                                              ; preds = %414, %350
  %420 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %37, align 8
  %421 = icmp eq %class.SimplePerfSerializer* %420, null
  br i1 %421, label %427, label %422

422:                                              ; preds = %419
  %423 = bitcast %class.SimplePerfSerializer* %420 to void (%class.SimplePerfSerializer*)***
  %424 = load void (%class.SimplePerfSerializer*)**, void (%class.SimplePerfSerializer*)*** %423, align 8
  %425 = getelementptr inbounds void (%class.SimplePerfSerializer*)*, void (%class.SimplePerfSerializer*)** %424, i64 1
  %426 = load void (%class.SimplePerfSerializer*)*, void (%class.SimplePerfSerializer*)** %425, align 8
  call void %426(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %420) #17
  br label %427

427:                                              ; preds = %422, %419
  %428 = load %class.RDTimerCPU*, %class.RDTimerCPU** %27, align 8
  %429 = icmp eq %class.RDTimerCPU* %428, null
  br i1 %429, label %435, label %430

430:                                              ; preds = %427
  %431 = bitcast %class.RDTimerCPU* %428 to void (%class.RDTimerCPU*)***
  %432 = load void (%class.RDTimerCPU*)**, void (%class.RDTimerCPU*)*** %431, align 8
  %433 = getelementptr inbounds void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %432, i64 1
  %434 = load void (%class.RDTimerCPU*)*, void (%class.RDTimerCPU*)** %433, align 8
  call void %434(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %428) #17
  br label %435

435:                                              ; preds = %430, %427
  %436 = load float*, float** %36, align 8
  %437 = bitcast float* %436 to i8*
  %438 = call i32 @hipFree(i8* noundef %437)
  %439 = getelementptr inbounds [2 x float*], [2 x float*]* %35, i64 0, i64 0
  %440 = load float*, float** %439, align 16
  %441 = bitcast float* %440 to i8*
  %442 = call i32 @hipFree(i8* noundef %441)
  %443 = getelementptr inbounds [2 x float*], [2 x float*]* %35, i64 0, i64 1
  %444 = load float*, float** %443, align 8
  %445 = bitcast float* %444 to i8*
  %446 = call i32 @hipFree(i8* noundef %445)
  %447 = load float*, float** %10, align 8
  %448 = bitcast float* %447 to i8*
  call void @free(i8* noundef %448) #17
  ret void

449:                                              ; preds = %193
  %450 = landingpad { i8*, i32 }
          cleanup
  %451 = extractvalue { i8*, i32 } %450, 0
  store i8* %451, i8** %30, align 8
  %452 = extractvalue { i8*, i32 } %450, 1
  store i32 %452, i32* %31, align 4
  call void @_ZdlPv(i8* noundef %213) #23
  br label %501

453:                                              ; preds = %218
  %454 = landingpad { i8*, i32 }
          cleanup
  %455 = extractvalue { i8*, i32 } %454, 0
  store i8* %455, i8** %30, align 8
  %456 = extractvalue { i8*, i32 } %454, 1
  store i32 %456, i32* %31, align 4
  br label %461

457:                                              ; preds = %221
  %458 = landingpad { i8*, i32 }
          cleanup
  %459 = extractvalue { i8*, i32 } %458, 0
  store i8* %459, i8** %30, align 8
  %460 = extractvalue { i8*, i32 } %458, 1
  store i32 %460, i32* %31, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %39) #17
  br label %461

461:                                              ; preds = %457, %453
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %40) #17
  %462 = load i1, i1* %41, align 1
  br i1 %462, label %463, label %464

463:                                              ; preds = %461
  call void @_ZdlPv(i8* noundef %219) #23
  br label %464

464:                                              ; preds = %463, %461
  br label %501

465:                                              ; preds = %222
  %466 = landingpad { i8*, i32 }
          cleanup
  %467 = extractvalue { i8*, i32 } %466, 0
  store i8* %467, i8** %30, align 8
  %468 = extractvalue { i8*, i32 } %466, 1
  store i32 %468, i32* %31, align 4
  br label %473

469:                                              ; preds = %225
  %470 = landingpad { i8*, i32 }
          cleanup
  %471 = extractvalue { i8*, i32 } %470, 0
  store i8* %471, i8** %30, align 8
  %472 = extractvalue { i8*, i32 } %470, 1
  store i32 %472, i32* %31, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %42) #17
  br label %473

473:                                              ; preds = %469, %465
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %43) #17
  br label %501

474:                                              ; preds = %226
  %475 = landingpad { i8*, i32 }
          cleanup
  %476 = extractvalue { i8*, i32 } %475, 0
  store i8* %476, i8** %30, align 8
  %477 = extractvalue { i8*, i32 } %475, 1
  store i32 %477, i32* %31, align 4
  br label %482

478:                                              ; preds = %273
  %479 = landingpad { i8*, i32 }
          cleanup
  %480 = extractvalue { i8*, i32 } %479, 0
  store i8* %480, i8** %30, align 8
  %481 = extractvalue { i8*, i32 } %479, 1
  store i32 %481, i32* %31, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %44) #17
  br label %482

482:                                              ; preds = %478, %474
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %45) #17
  br label %501

483:                                              ; preds = %274
  %484 = landingpad { i8*, i32 }
          cleanup
  %485 = extractvalue { i8*, i32 } %484, 0
  store i8* %485, i8** %30, align 8
  %486 = extractvalue { i8*, i32 } %484, 1
  store i32 %486, i32* %31, align 4
  br label %491

487:                                              ; preds = %314
  %488 = landingpad { i8*, i32 }
          cleanup
  %489 = extractvalue { i8*, i32 } %488, 0
  store i8* %489, i8** %30, align 8
  %490 = extractvalue { i8*, i32 } %488, 1
  store i32 %490, i32* %31, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %46) #17
  br label %491

491:                                              ; preds = %487, %483
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %47) #17
  br label %501

492:                                              ; preds = %315
  %493 = landingpad { i8*, i32 }
          cleanup
  %494 = extractvalue { i8*, i32 } %493, 0
  store i8* %494, i8** %30, align 8
  %495 = extractvalue { i8*, i32 } %493, 1
  store i32 %495, i32* %31, align 4
  br label %500

496:                                              ; preds = %349
  %497 = landingpad { i8*, i32 }
          cleanup
  %498 = extractvalue { i8*, i32 } %497, 0
  store i8* %498, i8** %30, align 8
  %499 = extractvalue { i8*, i32 } %497, 1
  store i32 %499, i32* %31, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %49) #17
  br label %500

500:                                              ; preds = %496, %492
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %50) #17
  br label %501

501:                                              ; preds = %500, %491, %482, %473, %464, %449, %192, %183
  %502 = load i8*, i8** %30, align 8
  %503 = load i32, i32* %31, align 4
  %504 = insertvalue { i8*, i32 } undef, i8* %502, 0
  %505 = insertvalue { i8*, i32 } %504, i32 %503, 1
  resume { i8*, i32 } %505
}

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) #9

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

declare void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i8* noundef, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN10RDTimerCPUC2ESs(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0, %"class.std::basic_string"* noundef %1) unnamed_addr #10 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %4) #17
  %10 = bitcast %class.RDTimerCPU* %7 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV10RDTimerCPU, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %10, align 8
  %11 = bitcast %class.RDTimerCPU* %7 to %class.RDTimer*
  %12 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %11, i32 0, i32 3
  %13 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSEPKc(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0))
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
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %4) #17
  br label %24

19:                                               ; preds = %9
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = extractvalue { i8*, i32 } %20, 0
  store i8* %21, i8** %5, align 8
  %22 = extractvalue { i8*, i32 } %20, 1
  store i32 %22, i32* %6, align 4
  %23 = bitcast %class.RDTimerCPU* %7 to %class.RDTimer*
  call void @_ZN7RDTimerD2Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %23) #17
  br label %24

24:                                               ; preds = %19, %15
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = insertvalue { i8*, i32 } undef, i8* %25, 0
  %28 = insertvalue { i8*, i32 } %27, i32 %26, 1
  resume { i8*, i32 } %28
}

; Function Attrs: nounwind
declare void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) #11

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

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #12

; Function Attrs: nounwind allocsize(0,1)
declare noalias i8* @calloc(i64 noundef, i64 noundef) #13

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN20SimplePerfSerializerC2EPc(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %0, i8* noundef %1) unnamed_addr #10 comdat align 2 {
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

declare i32 @hipMalloc(i8** noundef, i64 noundef) #1

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #1

declare i32 @printf(i8* noundef, ...) #1

declare i32 @hipFree(i8* noundef) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

declare void @_ZNSsC1ERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimerC2ESs(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0, %"class.std::basic_string"* noundef %1) unnamed_addr #10 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #17
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %11, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4)
          to label %12 unwind label %17

12:                                               ; preds = %2
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #17
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
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #17
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %10) #17
  br label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %25 = insertvalue { i8*, i32 } %24, i32 %23, 1
  resume { i8*, i32 } %25
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSEPKc(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10RDTimerCPUD2Ev(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %class.RDTimerCPU*, align 8
  store %class.RDTimerCPU* %0, %class.RDTimerCPU** %2, align 8
  %3 = load %class.RDTimerCPU*, %class.RDTimerCPU** %2, align 8
  %4 = bitcast %class.RDTimerCPU* %3 to %class.RDTimer*
  call void @_ZN7RDTimerD2Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %4) #17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN10RDTimerCPUD0Ev(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %class.RDTimerCPU*, align 8
  store %class.RDTimerCPU* %0, %class.RDTimerCPU** %2, align 8
  %3 = load %class.RDTimerCPU*, %class.RDTimerCPU** %2, align 8
  call void @_ZN10RDTimerCPUD2Ev(%class.RDTimerCPU* noundef nonnull align 8 dereferenceable(56) %3) #17
  %4 = bitcast %class.RDTimerCPU* %3 to i8*
  call void @_ZdlPv(i8* noundef %4) #23
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
define linkonce_odr dso_local void @_ZN7RDTimerD2Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %2, align 8
  %3 = load %class.RDTimer*, %class.RDTimer** %2, align 8
  %4 = bitcast %class.RDTimer* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV7RDTimer, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  %5 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 3
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %5) #17
  %6 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 2
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %6) #17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimerD0Ev(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %2, align 8
  %3 = load %class.RDTimer*, %class.RDTimer** %2, align 8
  call void @llvm.trap() #18
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #14

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_Z8get_timev() #15 comdat {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @gettimeofday(%struct.timeval* noundef %1, %struct.timezone* noundef null) #17
  %3 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = mul nsw i64 %4, 1000000
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %5, %7
  ret i64 %8
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* noundef, %struct.timezone* noundef) #2

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_Z12elapsed_timexx(i64 noundef %0, i64 noundef %1) #15 comdat {
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

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSsaSERKSs(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN7RDTimer5ResetEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) #15 comdat align 2 {
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
define linkonce_odr dso_local void @_ZN14PerfSerializerC2EPc(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %0, i8* noundef %1) unnamed_addr #10 comdat align 2 {
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
  %17 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %15, i64 noundef 100, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i8* noundef %16, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0)) #17
  %18 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 7
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %18, i64 0, i64 0
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %19, i64 noundef 100, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i8* noundef %20, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0)) #17
  %22 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0
  %24 = call i32 @access(i8* noundef %23, i32 noundef 0) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %13
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0))
  %29 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 6
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %29, i64 0, i64 0
  %31 = call %struct._IO_FILE* @fopen(i8* noundef %30, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %32 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  store %struct._IO_FILE* %31, %struct._IO_FILE** %32, align 8
  %33 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %33, align 8
  %35 = icmp eq %struct._IO_FILE* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0))
  %39 = call i8* @__cxa_allocate_exception(i64 8) #17
  %40 = bitcast i8* %39 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), i8** %40, align 16
  call void @__cxa_throw(i8* %39, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #24
  unreachable

41:                                               ; preds = %26
  %42 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 7
  %43 = getelementptr inbounds [100 x i8], [100 x i8]* %42, i64 0, i64 0
  %44 = call %struct._IO_FILE* @fopen(i8* noundef %43, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %45 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  store %struct._IO_FILE* %44, %struct._IO_FILE** %45, align 8
  %46 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %46, align 8
  %48 = icmp eq %struct._IO_FILE* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i64 0, i64 0))
  %52 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %52, align 8
  %54 = call i32 @fclose(%struct._IO_FILE* noundef %53)
  %55 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 3
  store %struct._IO_FILE* null, %struct._IO_FILE** %55, align 8
  %56 = call i8* @__cxa_allocate_exception(i64 8) #17
  %57 = bitcast i8* %56 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), i8** %57, align 16
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
  %64 = call %struct._IO_FILE* @fopen(i8* noundef %63, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %65 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  store %struct._IO_FILE* %64, %struct._IO_FILE** %65, align 8
  %66 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %5, i32 0, i32 4
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %66, align 8
  %68 = icmp eq %struct._IO_FILE* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i64 0, i64 0))
  %72 = call i8* @__cxa_allocate_exception(i64 8) #17
  %73 = bitcast i8* %72 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), i8** %73, align 16
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
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %77, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i64 0, i64 0), i8* noundef %79)
  br label %84

81:                                               ; preds = %2
  %82 = call i8* @__cxa_allocate_exception(i64 8) #17
  %83 = bitcast i8* %82 to i8**
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i64 0, i64 0), i8** %83, align 16
  call void @__cxa_throw(i8* %82, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #24
  unreachable

84:                                               ; preds = %76
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN20SimplePerfSerializerD2Ev(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %class.SimplePerfSerializer*, align 8
  store %class.SimplePerfSerializer* %0, %class.SimplePerfSerializer** %2, align 8
  %3 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %2, align 8
  %4 = bitcast %class.SimplePerfSerializer* %3 to %class.PerfSerializer*
  call void @_ZN14PerfSerializerD2Ev(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %4) #17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN20SimplePerfSerializerD0Ev(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %class.SimplePerfSerializer*, align 8
  store %class.SimplePerfSerializer* %0, %class.SimplePerfSerializer** %2, align 8
  %3 = load %class.SimplePerfSerializer*, %class.SimplePerfSerializer** %2, align 8
  call void @_ZN20SimplePerfSerializerD2Ev(%class.SimplePerfSerializer* noundef nonnull align 8 dereferenceable(272) %3) #17
  %4 = bitcast %class.SimplePerfSerializer* %3 to i8*
  call void @_ZdlPv(i8* noundef %4) #23
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
  %31 = call i8* @strtok(i8* noundef %30, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #17
  %32 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i64 0, i64 0))
  %39 = call i8* @__cxa_allocate_exception(i64 8) #17
  %40 = bitcast i8* %39 to i8**
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0), i8** %40, align 16
  call void @__cxa_throw(i8* %39, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #24
  unreachable

41:                                               ; preds = %21
  %42 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %43 = load i8*, i8** %42, align 8
  %44 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  call void @_ZNK7RDTimer4TypeEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %7, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %44)
  %45 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %7) #17
  %46 = call i32 @strcmp(i8* noundef %43, i8* noundef %45) #19
  %47 = icmp ne i32 %46, 0
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %7) #17
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.50, i64 0, i64 0))
  %51 = call i8* @__cxa_allocate_exception(i64 8) #17
  %52 = bitcast i8* %51 to i8**
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i64 0, i64 0), i8** %52, align 16
  call void @__cxa_throw(i8* %51, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #24
  unreachable

53:                                               ; preds = %41
  %54 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #17
  %55 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %54, i8** %55, align 8
  %56 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %57 = load i8*, i8** %56, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %60, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.52, i64 0, i64 0))
  %62 = call i8* @__cxa_allocate_exception(i64 8) #17
  %63 = bitcast i8* %62 to i8**
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.53, i64 0, i64 0), i8** %63, align 16
  call void @__cxa_throw(i8* %62, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #24
  unreachable

64:                                               ; preds = %53
  %65 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  call void @_ZNK7RDTimer3MsgEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %8, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %68)
  %69 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %8) #17
  %70 = call i32 @strcmp(i8* noundef %67, i8* noundef %69) #19
  %71 = icmp ne i32 %70, 0
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %8) #17
  br i1 %71, label %72, label %86

72:                                               ; preds = %64
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %74 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %75 = load i8*, i8** %74, align 8
  %76 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  call void @_ZNK7RDTimer3MsgEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %9, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %76)
  %77 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %9) #17
  %78 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %73, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.54, i64 0, i64 0), i8* noundef %75, i8* noundef %77)
          to label %79 unwind label %82

79:                                               ; preds = %72
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %9) #17
  %80 = call i8* @__cxa_allocate_exception(i64 8) #17
  %81 = bitcast i8* %80 to i8**
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.55, i64 0, i64 0), i8** %81, align 16
  call void @__cxa_throw(i8* %80, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #24
  unreachable

82:                                               ; preds = %72
  %83 = landingpad { i8*, i32 }
          cleanup
  %84 = extractvalue { i8*, i32 } %83, 0
  store i8* %84, i8** %10, align 8
  %85 = extractvalue { i8*, i32 } %83, 1
  store i32 %85, i32* %11, align 4
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %9) #17
  br label %187

86:                                               ; preds = %64
  %87 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #17
  %88 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %87, i8** %88, align 8
  %89 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %90 = load i8*, i8** %89, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %93, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.56, i64 0, i64 0))
  %95 = call i8* @__cxa_allocate_exception(i64 8) #17
  %96 = bitcast i8* %95 to i8**
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.57, i64 0, i64 0), i8** %96, align 16
  call void @__cxa_throw(i8* %95, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #24
  unreachable

97:                                               ; preds = %86
  %98 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  %102 = call noundef zeroext i1 @_ZNK7RDTimer12AccumulatingEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %101)
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0)
  %105 = call i32 @strcmp(i8* noundef %100, i8* noundef %104) #19
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %97
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %108, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.60, i64 0, i64 0))
  %110 = call i8* @__cxa_allocate_exception(i64 8) #17
  %111 = bitcast i8* %110 to i8**
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.61, i64 0, i64 0), i8** %111, align 16
  call void @__cxa_throw(i8* %110, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #24
  unreachable

112:                                              ; preds = %97
  %113 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #17
  %114 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %113, i8** %114, align 8
  %115 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %116 = load i8*, i8** %115, align 8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %119, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.62, i64 0, i64 0))
  %121 = call i8* @__cxa_allocate_exception(i64 8) #17
  %122 = bitcast i8* %121 to i8**
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.63, i64 0, i64 0), i8** %122, align 16
  call void @__cxa_throw(i8* %121, i8* bitcast (i8** @_ZTIPKc to i8*), i8* null) #24
  unreachable

123:                                              ; preds = %112
  %124 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %125 = load i8*, i8** %124, align 8
  %126 = call contract double @atof(i8* noundef %125) #19
  %127 = fptrunc double %126 to float
  store float %127, float* %6, align 4
  %128 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #17
  %129 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  store i8* %128, i8** %129, align 8
  %130 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %131 = load i8*, i8** %130, align 8
  %132 = icmp eq i8* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %123
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %134, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.64, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %123
  %137 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = getelementptr inbounds %class.SimplePerfSerializer, %class.SimplePerfSerializer* %14, i32 0, i32 5
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @atoi(i8* noundef %142) #19
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
  %163 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12) #17
  %164 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  invoke void @_ZNK7RDTimer3MsgEv(%"class.std::basic_string"* sret(%"class.std::basic_string") align 8 %13, %class.RDTimer* noundef nonnull align 8 dereferenceable(56) %164)
          to label %165 unwind label %178

165:                                              ; preds = %150
  %166 = call noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %13) #17
  %167 = load %class.RDTimer*, %class.RDTimer** %4, align 8
  %168 = invoke noundef zeroext i1 @_ZNK7RDTimer12AccumulatingEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %167)
          to label %169 unwind label %182

169:                                              ; preds = %165
  %170 = zext i1 %168 to i64
  %171 = select i1 %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0)
  %172 = load float, float* %6, align 4
  %173 = fpext float %172 to double
  %174 = load i32, i32* %5, align 4
  %175 = add nsw i32 %174, 1
  %176 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %161, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.65, i64 0, i64 0), i8* noundef %163, i8* noundef %166, i8* noundef %171, double noundef %173, i32 noundef %175)
          to label %177 unwind label %182

177:                                              ; preds = %169
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %13) #17
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12) #17
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
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %13) #17
  br label %186

186:                                              ; preds = %182, %178
  call void @_ZNSsD1Ev(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8) %12) #17
  br label %187

187:                                              ; preds = %186, %82
  %188 = load i8*, i8** %10, align 8
  %189 = load i32, i32* %11, align 4
  %190 = insertvalue { i8*, i32 } undef, i8* %188, 0
  %191 = insertvalue { i8*, i32 } %190, i32 %189, 1
  resume { i8*, i32 } %191
}

; Function Attrs: nounwind
declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #2

; Function Attrs: nounwind
declare i32 @access(i8* noundef, i32 noundef) #2

declare i8* @__cxa_allocate_exception(i64)

declare void @__cxa_throw(i8*, i8*, i8*)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN14PerfSerializerD2Ev(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %0) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %15 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.43, i64 0, i64 0))
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
  %27 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.44, i64 0, i64 0))
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
  %41 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i64 0, i64 0), i8* noundef %38, i8* noundef %40)
          to label %42 unwind label %53

42:                                               ; preds = %35
  %43 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %44 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 7
  %45 = getelementptr inbounds [100 x i8], [100 x i8]* %44, i64 0, i64 0
  %46 = getelementptr inbounds %class.PerfSerializer, %class.PerfSerializer* %4, i32 0, i32 6
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %46, i64 0, i64 0
  %48 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %43, i64 noundef 200, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0), i8* noundef %45, i8* noundef %47) #17
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
  call void @__clang_call_terminate(i8* %55) #18
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN14PerfSerializerD0Ev(%class.PerfSerializer* noundef nonnull align 8 dereferenceable(233) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %class.PerfSerializer*, align 8
  store %class.PerfSerializer* %0, %class.PerfSerializer** %2, align 8
  %3 = load %class.PerfSerializer*, %class.PerfSerializer** %2, align 8
  call void @llvm.trap() #18
  unreachable
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #16 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #17
  call void @_ZSt9terminatev() #18
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

declare i32 @system(i8* noundef) #1

declare i64 @getline(i8** noundef, i64* noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare i8* @strtok(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #8

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
declare noundef i8* @_ZNKSs5c_strEv(%"class.std::basic_string"* noundef nonnull align 8 dereferenceable(8)) #2

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
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7RDTimer12AccumulatingEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) #15 comdat align 2 {
  %2 = alloca %class.RDTimer*, align 8
  store %class.RDTimer* %0, %class.RDTimer** %2, align 8
  %3 = load %class.RDTimer*, %class.RDTimer** %2, align 8
  %4 = getelementptr inbounds %class.RDTimer, %class.RDTimer* %3, i32 0, i32 1
  %5 = load i8, i8* %4, align 8
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: nounwind readonly willreturn
declare double @atof(i8* noundef) #8

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_ZNK7RDTimer4TimeEv(%class.RDTimer* noundef nonnull align 8 dereferenceable(56) %0) #15 comdat align 2 {
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

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i32, float*, float*, float*, i32, i32, i32, i32, float, float, float, float, float, float)** @_Z14calculate_tempiPfS_S_iiiiffffff to i8*), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn }
attributes #5 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline noreturn nounwind }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind allocsize(0,1) }
attributes #23 = { builtin nounwind }
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
