; ModuleID = 'hip/myocyte/main.hip.cu'
source_filename = "hip/myocyte/main.hip.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque

$_ZN4dim3C2Ejjj = comdat any

$_ZSt5isnanf = comdat any

$_ZSt5isinff = comdat any

$_ZSt4fabsf = comdat any

$_ZSt3powff = comdat any

$__hip_gpubin_handle = comdat any

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"The file was not created/opened for writing\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"The file was not opened for reading\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@_Z6kerneliPfS_S_S_ = constant void (i32, float*, float*, float*, float*)* @_Z21__device_stub__kerneliPfS_S_S_, align 8
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E6c_1_11 = internal constant float 0x3FA8FD8FE0000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E2c6 = internal constant float 0x3FD4B94BA0000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E5c_7_8 = internal constant float 0x3FD0750760000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E6c_9_10 = internal constant float 0x3FA0750760000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E2a2 = internal constant float 0x3FB2F684C0000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E2a3 = internal constant float 0x3FBC71C720000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E2a4 = internal constant float 0x3FC5555560000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E2a5 = internal constant float 0x3FDAAAAAA0000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E2a6 = internal constant float 5.000000e-01, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E2a7 = internal constant float 0x3FEAAAAAA0000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E2a8 = internal constant float 0x3FC5555560000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E2a9 = internal constant float 0x3FE5555560000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E3a10 = internal constant float 0x3FD5555560000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E3b31 = internal constant float 0x3F9C71C720000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E3b32 = internal constant float 0x3FB5555560000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E3b41 = internal constant float 0x3FA5555560000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E3b43 = internal constant float 1.250000e-01, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E3b51 = internal constant float 0x3FDAAAAAA0000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E3b53 = internal constant float -1.562500e+00, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E3b54 = internal constant float 1.562500e+00, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E3b61 = internal constant float 0x3FA99999A0000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E3b64 = internal constant float 2.500000e-01, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E3b65 = internal constant float 0x3FC99999A0000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E3b71 = internal constant float 0xBFCDA12F60000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E3b74 = internal constant float 0x3FF284BDA0000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E3b75 = internal constant float 0xC003425EE0000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E3b76 = internal constant float 0x400284BDA0000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E3b81 = internal constant float 0x3FBA740DA0000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E3b85 = internal constant float 0x3FD159E260000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E3b86 = internal constant float 0xBFCC71C720000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E3b87 = internal constant float 0x3F8D950C80000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E3b91 = internal constant float 2.000000e+00, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E3b94 = internal constant float 0xC021AAAAA0000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E3b95 = internal constant float 0x402F49F4A0000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E3b96 = internal constant float 0xC027C71C80000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E3b97 = internal constant float 0x3FE7D27D20000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E3b98 = internal constant float 3.000000e+00, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E5b10_1 = internal constant float 0xBFEAF684C0000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E5b10_4 = internal constant float 0x3FCB425EE0000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E5b10_5 = internal constant float 0xC01CEB2400000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E5b10_6 = internal constant float 0x4017097B40000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E5b10_7 = internal constant float 0xBFD4444440000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E5b10_8 = internal constant float 0x4006AAAAA0000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E5b10_9 = internal constant float 0xBFB5555560000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E5b11_1 = internal constant float 0x3FE29959A0000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E5b11_4 = internal constant float 0xC000A25760000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E5b11_5 = internal constant float 0x40118B9D20000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E5b11_6 = internal constant float 0xC00D5DA8A0000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E5b11_7 = internal constant float 0x3FE0A5D680000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E5b11_8 = internal constant float 0x3FE18F9C20000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E5b11_9 = internal constant float 0x3FD18F9C20000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E6b11_10 = internal constant float 0x3FDC18F9C0000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E5b12_1 = internal constant float 0x3F8DF881E0000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E5b12_6 = internal constant float 0xBFC2BB5120000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E5b12_7 = internal constant float 0xBF8DF881E0000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E5b12_8 = internal constant float 0xBFB2BB5120000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E5b12_9 = internal constant float 0x3FB2BB5120000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E6b12_10 = internal constant float 0x3FC2BB5120000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E5b13_1 = internal constant float 0xBFDBBD10C0000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E5b13_4 = internal constant float 0xC000A25760000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E5b13_5 = internal constant float 0x40118B9D20000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E5b13_6 = internal constant float 0xC00C31F380000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E5b13_7 = internal constant float 0x3FE11DB8A0000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E5b13_8 = internal constant float 0x3FE3E70640000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E5b13_9 = internal constant float 0x3FC9C18FA0000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E6b13_10 = internal constant float 0x3FD2BB5120000000, align 4
@_ZZ21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_E10err_factor = internal constant float 0xBFA8FD8FE0000000, align 4
@.str.7 = private unnamed_addr constant [119 x i8] c"ERROR: trying to allocate more than 1.0GB of memory, decrease workload and span parameters or change memory parameter\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"../../data/myocyte/y.txt\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"../../data/myocyte/params.txt\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"STATUS: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"output.txt\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"fopen example\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"WORKLOAD %d:\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"\09TIME %d:\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"\09\09y[%d][%d][%d]=%10.7e\0A\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"Time spent in different stages of the application:\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"%.12f s, %.12f %% : SETUP VARIABLES\0A\00", align 1
@.str.18 = private unnamed_addr constant [56 x i8] c"%.12f s, %.12f %% : ALLOCATE CPU MEMORY AND GPU MEMORY\0A\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"%.12f s, %.12f %% : READ DATA FROM FILES\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"%.12f s, %.12f %% : RUN COMPUTATION\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"%.12f s, %.12f %% : FREE MEMORY\0A\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"Total time:\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"%.12f s\0A\00", align 1
@_Z8solver_2iiPfS_S_S_S_S_S_S_S_ = constant void (i32, i32, float*, float*, float*, float*, float*, float*, float*, float*, float*)* @_Z23__device_stub__solver_2iiPfS_S_S_S_S_S_S_S_, align 8
@.str.24 = private unnamed_addr constant [62 x i8] c"%.12f s, %.12f %% : READ DATA FROM FILES, COPY TO GPU MEMORY\0A\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"%.12f s, %.12f %% : RUN GPU KERNEL\0A\00", align 1
@.str.26 = private unnamed_addr constant [49 x i8] c"%.12f s, %.12f %% : COPY GPU DATA TO CPU MEMORY\0A\00", align 1
@.str.27 = private unnamed_addr constant [83 x i8] c"ERROR: %d is the incorrect number of arguments, the number of arguments must be 3\0A\00", align 1
@.str.28 = private unnamed_addr constant [72 x i8] c"ERROR: %d is the incorrect end of simulation interval, use numbers > 0\0A\00", align 1
@.str.29 = private unnamed_addr constant [79 x i8] c"ERROR: %d is the incorrect number of instances of simulation, use numbers > 0\0A\00", align 1
@.str.30 = private unnamed_addr constant [74 x i8] c"ERROR: %d is the incorrect mode, it should be omitted or equal to 0 or 1\0A\00", align 1
@0 = private unnamed_addr constant [19 x i8] c"_Z6kerneliPfS_S_S_\00", align 1
@1 = private unnamed_addr constant [32 x i8] c"_Z8solver_2iiPfS_S_S_S_S_S_S_S_\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z5writePcPfiiii(i8* noundef %0, float* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
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
  br label %94

22:                                               ; preds = %6
  %23 = load i32, i32* %11, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %22
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %54, %25
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %26
  store i32 0, i32* %15, align 4
  br label %31

31:                                               ; preds = %48, %30
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %37 = load float*, float** %8, align 8
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %10, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load i32, i32* %15, align 4
  %42 = add nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %37, i64 %43
  %45 = load float, float* %44, align 4
  %46 = fpext float %45 to double
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double noundef %46)
  br label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %15, align 4
  br label %31, !llvm.loop !6

51:                                               ; preds = %31
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %52, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %14, align 4
  br label %26, !llvm.loop !8

57:                                               ; preds = %26
  br label %91

58:                                               ; preds = %22
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %87, %58
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %90

63:                                               ; preds = %59
  store i32 0, i32* %15, align 4
  br label %64

64:                                               ; preds = %81, %63
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %64
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %70 = load float*, float** %8, align 8
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %9, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %70, i64 %76
  %78 = load float, float* %77, align 4
  %79 = fpext float %78 to double
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %69, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double noundef %79)
  br label %81

81:                                               ; preds = %68
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %15, align 4
  br label %64, !llvm.loop !9

84:                                               ; preds = %64
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %85, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  br label %59, !llvm.loop !10

90:                                               ; preds = %59
  br label %91

91:                                               ; preds = %90, %57
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %93 = call i32 @fclose(%struct._IO_FILE* noundef %92)
  br label %94

94:                                               ; preds = %91, %20
  ret void
}

declare %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare i32 @printf(i8* noundef, ...) #1

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z4readPKcPfiii(i8* noundef %0, float* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct._IO_FILE*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  store i8* %0, i8** %6, align 8
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call %struct._IO_FILE* @fopen(i8* noundef %15, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store %struct._IO_FILE* %16, %struct._IO_FILE** %11, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %18 = icmp eq %struct._IO_FILE* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %87

21:                                               ; preds = %5
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %21
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %50, %24
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %25
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %46, %29
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), float* noundef %14)
  %37 = load float, float* %14, align 4
  %38 = load float*, float** %7, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %9, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %38, i64 %44
  store float %37, float* %45, align 4
  br label %46

46:                                               ; preds = %34
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %13, align 4
  br label %30, !llvm.loop !11

49:                                               ; preds = %30
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  br label %25, !llvm.loop !12

53:                                               ; preds = %25
  br label %84

54:                                               ; preds = %21
  store i32 0, i32* %12, align 4
  br label %55

55:                                               ; preds = %80, %54
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %55
  store i32 0, i32* %13, align 4
  br label %60

60:                                               ; preds = %76, %59
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %60
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %65, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), float* noundef %14)
  %67 = load float, float* %14, align 4
  %68 = load float*, float** %7, align 8
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %8, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %68, i64 %74
  store float %67, float* %75, align 4
  br label %76

76:                                               ; preds = %64
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %60, !llvm.loop !13

79:                                               ; preds = %60
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %55, !llvm.loop !14

83:                                               ; preds = %55
  br label %84

84:                                               ; preds = %83, %53
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %86 = call i32 @fclose(%struct._IO_FILE* noundef %85)
  br label %87

87:                                               ; preds = %84, %19
  ret void
}

declare i32 @fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i64 @_Z8get_timev() #2 {
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
declare i32 @gettimeofday(%struct.timeval* noundef, %struct.timezone* noundef) #3

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z10kernel_finPfiiiiS_S_fff(float* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float* noundef %5, float* noundef %6, float noundef %7, float noundef %8, float noundef %9) #2 {
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
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
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  %37 = alloca float, align 4
  %38 = alloca float, align 4
  %39 = alloca float, align 4
  store float* %0, float** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store float* %5, float** %16, align 8
  store float* %6, float** %17, align 8
  store float %7, float* %18, align 4
  store float %8, float* %19, align 4
  store float %9, float* %20, align 4
  %40 = load float*, float** %16, align 8
  %41 = getelementptr inbounds float, float* %40, i64 2
  %42 = load float, float* %41, align 4
  store float %42, float* %21, align 4
  %43 = load float*, float** %16, align 8
  %44 = getelementptr inbounds float, float* %43, i64 3
  %45 = load float, float* %44, align 4
  store float %45, float* %22, align 4
  store float 0x3DB796C3A0000000, float* %23, align 4
  store float 0x3D14079E40000000, float* %24, align 4
  store float 0x3D6739EC20000000, float* %25, align 4
  store float 0x3D03561180000000, float* %26, align 4
  store float 0x3F56F00680000000, float* %27, align 4
  %46 = load float, float* %27, align 4
  %47 = fpext float %46 to double
  %48 = fdiv contract double %47, 2.000000e-01
  %49 = fptrunc double %48 to float
  store float %49, float* %28, align 4
  %50 = load float, float* %27, align 4
  %51 = fdiv contract float %50, 1.000000e+02
  store float %51, float* %29, align 4
  %52 = load float, float* %28, align 4
  store float %52, float* %30, align 4
  %53 = load float, float* %28, align 4
  store float %53, float* %31, align 4
  %54 = load float*, float** %17, align 8
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 35
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %54, i64 %57
  %59 = load float, float* %58, align 4
  %60 = fpext float %59 to double
  %61 = load float, float* %18, align 4
  %62 = fpext float %61 to double
  %63 = fmul contract double 1.000000e-03, %62
  %64 = fadd contract double %60, %63
  %65 = fptrunc double %64 to float
  %66 = load float*, float** %17, align 8
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 35
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %66, i64 %69
  store float %65, float* %70, align 4
  %71 = load float*, float** %17, align 8
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 36
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %71, i64 %74
  %76 = load float, float* %75, align 4
  %77 = fpext float %76 to double
  %78 = load float, float* %19, align 4
  %79 = fpext float %78 to double
  %80 = fmul contract double 1.000000e-03, %79
  %81 = fadd contract double %77, %80
  %82 = fptrunc double %81 to float
  %83 = load float*, float** %17, align 8
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 36
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %83, i64 %86
  store float %82, float* %87, align 4
  %88 = load float*, float** %17, align 8
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 37
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %88, i64 %91
  %93 = load float, float* %92, align 4
  %94 = fpext float %93 to double
  %95 = load float, float* %20, align 4
  %96 = fpext float %95 to double
  %97 = fmul contract double 1.000000e-03, %96
  %98 = fadd contract double %94, %97
  %99 = fptrunc double %98 to float
  %100 = load float*, float** %17, align 8
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 37
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float, float* %100, i64 %103
  store float %99, float* %104, align 4
  %105 = load float*, float** %11, align 8
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 0
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %105, i64 %108
  %110 = load float, float* %109, align 4
  %111 = load float*, float** %11, align 8
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %111, i64 %114
  %116 = load float, float* %115, align 4
  %117 = fadd contract float %110, %116
  %118 = load float*, float** %11, align 8
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, 2
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %118, i64 %121
  %123 = load float, float* %122, align 4
  %124 = fadd contract float %117, %123
  %125 = load float*, float** %11, align 8
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 3
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, float* %125, i64 %128
  %130 = load float, float* %129, align 4
  %131 = fadd contract float %124, %130
  %132 = load float*, float** %11, align 8
  %133 = load i32, i32* %13, align 4
  %134 = add nsw i32 %133, 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float, float* %132, i64 %135
  %137 = load float, float* %136, align 4
  %138 = fadd contract float %131, %137
  %139 = load float*, float** %11, align 8
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 5
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float, float* %139, i64 %142
  %144 = load float, float* %143, align 4
  %145 = fadd contract float %138, %144
  %146 = load float, float* %22, align 4
  %147 = load float*, float** %11, align 8
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, 6
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds float, float* %147, i64 %150
  %152 = load float, float* %151, align 4
  %153 = load float*, float** %11, align 8
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %154, 7
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, float* %153, i64 %156
  %158 = load float, float* %157, align 4
  %159 = fadd contract float %152, %158
  %160 = load float*, float** %11, align 8
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %161, 8
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds float, float* %160, i64 %163
  %165 = load float, float* %164, align 4
  %166 = fadd contract float %159, %165
  %167 = load float*, float** %11, align 8
  %168 = load i32, i32* %13, align 4
  %169 = add nsw i32 %168, 9
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds float, float* %167, i64 %170
  %172 = load float, float* %171, align 4
  %173 = fadd contract float %166, %172
  %174 = fmul contract float %146, %173
  %175 = fadd contract float %145, %174
  %176 = load float*, float** %11, align 8
  %177 = load i32, i32* %13, align 4
  %178 = add nsw i32 %177, 12
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %176, i64 %179
  %181 = load float, float* %180, align 4
  %182 = fadd contract float %175, %181
  %183 = load float*, float** %11, align 8
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %184, 13
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float, float* %183, i64 %186
  %188 = load float, float* %187, align 4
  %189 = fadd contract float %182, %188
  %190 = load float*, float** %11, align 8
  %191 = load i32, i32* %13, align 4
  %192 = add nsw i32 %191, 14
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds float, float* %190, i64 %193
  %195 = load float, float* %194, align 4
  %196 = fadd contract float %189, %195
  store float %196, float* %32, align 4
  %197 = load float, float* %21, align 4
  %198 = load float, float* %32, align 4
  %199 = fsub contract float %197, %198
  store float %199, float* %33, align 4
  %200 = load float, float* %27, align 4
  %201 = load float*, float** %11, align 8
  %202 = load i32, i32* %13, align 4
  %203 = add nsw i32 %202, 0
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds float, float* %201, i64 %204
  %206 = load float, float* %205, align 4
  %207 = fmul contract float %200, %206
  %208 = load float, float* %28, align 4
  %209 = load float, float* %33, align 4
  %210 = fmul contract float %208, %209
  %211 = load float*, float** %11, align 8
  %212 = load i32, i32* %14, align 4
  %213 = add nsw i32 %212, 0
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %211, i64 %214
  %216 = load float, float* %215, align 4
  %217 = fmul contract float %210, %216
  %218 = fsub contract float %207, %217
  %219 = fpext float %218 to double
  %220 = fmul contract double 1.000000e-03, %219
  %221 = fptrunc double %220 to float
  store float %221, float* %34, align 4
  %222 = load float, float* %29, align 4
  %223 = load float*, float** %11, align 8
  %224 = load i32, i32* %13, align 4
  %225 = add nsw i32 %224, 1
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds float, float* %223, i64 %226
  %228 = load float, float* %227, align 4
  %229 = fmul contract float %222, %228
  %230 = load float, float* %30, align 4
  %231 = load float, float* %33, align 4
  %232 = fmul contract float %230, %231
  %233 = load float*, float** %11, align 8
  %234 = load i32, i32* %14, align 4
  %235 = add nsw i32 %234, 1
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds float, float* %233, i64 %236
  %238 = load float, float* %237, align 4
  %239 = fmul contract float %232, %238
  %240 = fsub contract float %229, %239
  %241 = fpext float %240 to double
  %242 = fmul contract double 1.000000e-03, %241
  %243 = fptrunc double %242 to float
  store float %243, float* %35, align 4
  %244 = load float, float* %29, align 4
  %245 = load float*, float** %11, align 8
  %246 = load i32, i32* %13, align 4
  %247 = add nsw i32 %246, 2
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds float, float* %245, i64 %248
  %250 = load float, float* %249, align 4
  %251 = fmul contract float %244, %250
  %252 = load float, float* %31, align 4
  %253 = load float, float* %33, align 4
  %254 = fmul contract float %252, %253
  %255 = load float*, float** %11, align 8
  %256 = load i32, i32* %14, align 4
  %257 = add nsw i32 %256, 2
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds float, float* %255, i64 %258
  %260 = load float, float* %259, align 4
  %261 = fmul contract float %254, %260
  %262 = fsub contract float %251, %261
  %263 = fpext float %262 to double
  %264 = fmul contract double 1.000000e-03, %263
  %265 = fptrunc double %264 to float
  store float %265, float* %36, align 4
  %266 = load float, float* %26, align 4
  %267 = load float*, float** %11, align 8
  %268 = load i32, i32* %14, align 4
  %269 = add nsw i32 %268, 0
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds float, float* %267, i64 %270
  %272 = load float, float* %271, align 4
  %273 = load float*, float** %11, align 8
  %274 = load i32, i32* %15, align 4
  %275 = add nsw i32 %274, 0
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds float, float* %273, i64 %276
  %278 = load float, float* %277, align 4
  %279 = fsub contract float %272, %278
  %280 = fmul contract float %266, %279
  store float %280, float* %37, align 4
  %281 = load float, float* %26, align 4
  %282 = load float*, float** %11, align 8
  %283 = load i32, i32* %14, align 4
  %284 = add nsw i32 %283, 1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds float, float* %282, i64 %285
  %287 = load float, float* %286, align 4
  %288 = load float*, float** %11, align 8
  %289 = load i32, i32* %15, align 4
  %290 = add nsw i32 %289, 1
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds float, float* %288, i64 %291
  %293 = load float, float* %292, align 4
  %294 = fsub contract float %287, %293
  %295 = fmul contract float %281, %294
  store float %295, float* %38, align 4
  %296 = load float, float* %26, align 4
  %297 = load float*, float** %11, align 8
  %298 = load i32, i32* %14, align 4
  %299 = add nsw i32 %298, 2
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds float, float* %297, i64 %300
  %302 = load float, float* %301, align 4
  %303 = load float*, float** %11, align 8
  %304 = load i32, i32* %15, align 4
  %305 = add nsw i32 %304, 2
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds float, float* %303, i64 %306
  %308 = load float, float* %307, align 4
  %309 = fsub contract float %302, %308
  %310 = fmul contract float %296, %309
  store float %310, float* %39, align 4
  %311 = load float*, float** %17, align 8
  %312 = load i32, i32* %13, align 4
  %313 = add nsw i32 %312, 0
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds float, float* %311, i64 %314
  %316 = load float, float* %315, align 4
  %317 = load float, float* %34, align 4
  %318 = fsub contract float %316, %317
  %319 = load float*, float** %17, align 8
  %320 = load i32, i32* %13, align 4
  %321 = add nsw i32 %320, 0
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds float, float* %319, i64 %322
  store float %318, float* %323, align 4
  %324 = load float*, float** %17, align 8
  %325 = load i32, i32* %13, align 4
  %326 = add nsw i32 %325, 1
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds float, float* %324, i64 %327
  %329 = load float, float* %328, align 4
  %330 = load float, float* %35, align 4
  %331 = fsub contract float %329, %330
  %332 = load float*, float** %17, align 8
  %333 = load i32, i32* %13, align 4
  %334 = add nsw i32 %333, 1
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds float, float* %332, i64 %335
  store float %331, float* %336, align 4
  %337 = load float*, float** %17, align 8
  %338 = load i32, i32* %13, align 4
  %339 = add nsw i32 %338, 2
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds float, float* %337, i64 %340
  %342 = load float, float* %341, align 4
  %343 = load float, float* %36, align 4
  %344 = fsub contract float %342, %343
  %345 = load float*, float** %17, align 8
  %346 = load i32, i32* %13, align 4
  %347 = add nsw i32 %346, 2
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds float, float* %345, i64 %348
  store float %344, float* %349, align 4
  %350 = load float*, float** %17, align 8
  %351 = load i32, i32* %14, align 4
  %352 = add nsw i32 %351, 0
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds float, float* %350, i64 %353
  %355 = load float, float* %354, align 4
  %356 = load float, float* %34, align 4
  %357 = load float, float* %24, align 4
  %358 = fmul contract float %356, %357
  %359 = load float, float* %25, align 4
  %360 = fdiv contract float %358, %359
  %361 = fadd contract float %355, %360
  %362 = load float, float* %37, align 4
  %363 = load float, float* %25, align 4
  %364 = fdiv contract float %362, %363
  %365 = fsub contract float %361, %364
  %366 = load float*, float** %17, align 8
  %367 = load i32, i32* %14, align 4
  %368 = add nsw i32 %367, 0
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds float, float* %366, i64 %369
  store float %365, float* %370, align 4
  %371 = load float*, float** %17, align 8
  %372 = load i32, i32* %14, align 4
  %373 = add nsw i32 %372, 1
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds float, float* %371, i64 %374
  %376 = load float, float* %375, align 4
  %377 = load float, float* %35, align 4
  %378 = load float, float* %24, align 4
  %379 = fmul contract float %377, %378
  %380 = load float, float* %25, align 4
  %381 = fdiv contract float %379, %380
  %382 = fadd contract float %376, %381
  %383 = load float, float* %38, align 4
  %384 = load float, float* %25, align 4
  %385 = fdiv contract float %383, %384
  %386 = fsub contract float %382, %385
  %387 = load float*, float** %17, align 8
  %388 = load i32, i32* %14, align 4
  %389 = add nsw i32 %388, 1
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds float, float* %387, i64 %390
  store float %386, float* %391, align 4
  %392 = load float*, float** %17, align 8
  %393 = load i32, i32* %14, align 4
  %394 = add nsw i32 %393, 2
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds float, float* %392, i64 %395
  %397 = load float, float* %396, align 4
  %398 = load float, float* %36, align 4
  %399 = load float, float* %24, align 4
  %400 = fmul contract float %398, %399
  %401 = load float, float* %25, align 4
  %402 = fdiv contract float %400, %401
  %403 = fadd contract float %397, %402
  %404 = load float, float* %39, align 4
  %405 = load float, float* %25, align 4
  %406 = fdiv contract float %404, %405
  %407 = fsub contract float %403, %406
  %408 = load float*, float** %17, align 8
  %409 = load i32, i32* %14, align 4
  %410 = add nsw i32 %409, 2
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds float, float* %408, i64 %411
  store float %407, float* %412, align 4
  %413 = load float*, float** %17, align 8
  %414 = load i32, i32* %15, align 4
  %415 = add nsw i32 %414, 0
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds float, float* %413, i64 %416
  %418 = load float, float* %417, align 4
  %419 = load float, float* %37, align 4
  %420 = load float, float* %23, align 4
  %421 = fdiv contract float %419, %420
  %422 = fadd contract float %418, %421
  %423 = load float*, float** %17, align 8
  %424 = load i32, i32* %15, align 4
  %425 = add nsw i32 %424, 0
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds float, float* %423, i64 %426
  store float %422, float* %427, align 4
  %428 = load float*, float** %17, align 8
  %429 = load i32, i32* %15, align 4
  %430 = add nsw i32 %429, 1
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds float, float* %428, i64 %431
  %433 = load float, float* %432, align 4
  %434 = load float, float* %38, align 4
  %435 = load float, float* %23, align 4
  %436 = fdiv contract float %434, %435
  %437 = fadd contract float %433, %436
  %438 = load float*, float** %17, align 8
  %439 = load i32, i32* %15, align 4
  %440 = add nsw i32 %439, 1
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds float, float* %438, i64 %441
  store float %437, float* %442, align 4
  %443 = load float*, float** %17, align 8
  %444 = load i32, i32* %15, align 4
  %445 = add nsw i32 %444, 2
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds float, float* %443, i64 %446
  %448 = load float, float* %447, align 4
  %449 = load float, float* %39, align 4
  %450 = load float, float* %23, align 4
  %451 = fdiv contract float %449, %450
  %452 = fadd contract float %448, %451
  %453 = load float*, float** %17, align 8
  %454 = load i32, i32* %15, align 4
  %455 = add nsw i32 %454, 2
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds float, float* %453, i64 %456
  store float %452, float* %457, align 4
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z21__device_stub__kerneliPfS_S_S_(i32 noundef %0, float* noundef %1, float* noundef %2, float* noundef %3, float* noundef %4) #4 {
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca { i64, i32 }, align 8
  %16 = alloca { i64, i32 }, align 8
  store i32 %0, i32* %6, align 4
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  %17 = alloca i8*, i64 5, align 16
  %18 = bitcast i32* %6 to i8*
  %19 = getelementptr i8*, i8** %17, i32 0
  store i8* %18, i8** %19, align 8
  %20 = bitcast float** %7 to i8*
  %21 = getelementptr i8*, i8** %17, i32 1
  store i8* %20, i8** %21, align 8
  %22 = bitcast float** %8 to i8*
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
  %44 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i32, float*, float*, float*, float*)** @_Z6kerneliPfS_S_S_ to i8*), i64 %34, i32 %36, i64 %40, i32 %42, i8** noundef %17, i64 noundef %29, %struct.ihipStream_t* noundef %43)
  br label %45

45:                                               ; preds = %5
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z6masterfPfS_S_S_S_S_S_S_(float noundef %0, float* noundef %1, float* noundef %2, float* noundef %3, float* noundef %4, float* noundef %5, float* noundef %6, float* noundef %7, float* noundef %8) #0 {
  %10 = alloca float, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.dim3, align 4
  %25 = alloca %struct.dim3, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.dim3, align 4
  %31 = alloca %struct.dim3, align 4
  %32 = alloca { i64, i32 }, align 4
  %33 = alloca { i64, i32 }, align 4
  store float %0, float* %10, align 4
  store float* %1, float** %11, align 8
  store float* %2, float** %12, align 8
  store float* %3, float** %13, align 8
  store float* %4, float** %14, align 8
  store float* %5, float** %15, align 8
  store float* %6, float** %16, align 8
  store float* %7, float** %17, align 8
  store float* %8, float** %18, align 8
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %24, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %25, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  store i32 364, i32* %26, align 4
  store i32 364, i32* %27, align 4
  store i32 72, i32* %28, align 4
  store i32 12, i32* %29, align 4
  %34 = load float*, float** %15, align 8
  %35 = bitcast float* %34 to i8*
  %36 = load float*, float** %11, align 8
  %37 = bitcast float* %36 to i8*
  %38 = load i32, i32* %26, align 4
  %39 = sext i32 %38 to i64
  %40 = call i32 @hipMemcpy(i8* noundef %35, i8* noundef %37, i64 noundef %39, i32 noundef 1)
  %41 = load float*, float** %17, align 8
  %42 = bitcast float* %41 to i8*
  %43 = load float*, float** %12, align 8
  %44 = bitcast float* %43 to i8*
  %45 = load i32, i32* %28, align 4
  %46 = sext i32 %45 to i64
  %47 = call i32 @hipMemcpy(i8* noundef %42, i8* noundef %44, i64 noundef %46, i32 noundef 1)
  %48 = getelementptr inbounds %struct.dim3, %struct.dim3* %24, i32 0, i32 0
  store i32 32, i32* %48, align 4
  %49 = getelementptr inbounds %struct.dim3, %struct.dim3* %24, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = getelementptr inbounds %struct.dim3, %struct.dim3* %25, i32 0, i32 0
  store i32 2, i32* %50, align 4
  %51 = getelementptr inbounds %struct.dim3, %struct.dim3* %25, i32 0, i32 1
  store i32 1, i32* %51, align 4
  br label %52

52:                                               ; preds = %9
  %53 = bitcast %struct.dim3* %30 to i8*
  %54 = bitcast %struct.dim3* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 12, i1 false)
  %55 = bitcast %struct.dim3* %31 to i8*
  %56 = bitcast %struct.dim3* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 12, i1 false)
  %57 = bitcast { i64, i32 }* %32 to i8*
  %58 = bitcast %struct.dim3* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 12, i1 false)
  %59 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %32, i32 0, i32 0
  %60 = load i64, i64* %59, align 4
  %61 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %32, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = bitcast { i64, i32 }* %33 to i8*
  %64 = bitcast %struct.dim3* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 12, i1 false)
  %65 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %33, i32 0, i32 0
  %66 = load i64, i64* %65, align 4
  %67 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %33, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @__hipPushCallConfiguration(i64 %60, i32 %62, i64 %66, i32 %68, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %52
  %72 = load float, float* %10, align 4
  %73 = fptosi float %72 to i32
  %74 = load float*, float** %15, align 8
  %75 = load float*, float** %16, align 8
  %76 = load float*, float** %17, align 8
  %77 = load float*, float** %18, align 8
  call void @_Z21__device_stub__kerneliPfS_S_S_(i32 noundef %73, float* noundef %74, float* noundef %75, float* noundef %76, float* noundef %77)
  br label %78

78:                                               ; preds = %71, %52
  br label %79

79:                                               ; preds = %78
  %80 = load float*, float** %13, align 8
  %81 = bitcast float* %80 to i8*
  %82 = load float*, float** %16, align 8
  %83 = bitcast float* %82 to i8*
  %84 = load i32, i32* %27, align 4
  %85 = sext i32 %84 to i64
  %86 = call i32 @hipMemcpy(i8* noundef %81, i8* noundef %83, i64 noundef %85, i32 noundef 2)
  %87 = load float*, float** %14, align 8
  %88 = bitcast float* %87 to i8*
  %89 = load float*, float** %18, align 8
  %90 = bitcast float* %89 to i8*
  %91 = load i32, i32* %29, align 4
  %92 = sext i32 %91 to i64
  %93 = call i32 @hipMemcpy(i8* noundef %88, i8* noundef %90, i64 noundef %92, i32 noundef 2)
  store i32 0, i32* %20, align 4
  store i32 46, i32* %21, align 4
  store i32 61, i32* %22, align 4
  store i32 76, i32* %23, align 4
  %94 = load float*, float** %11, align 8
  %95 = load i32, i32* %20, align 4
  %96 = load i32, i32* %21, align 4
  %97 = load i32, i32* %22, align 4
  %98 = load i32, i32* %23, align 4
  %99 = load float*, float** %12, align 8
  %100 = load float*, float** %13, align 8
  %101 = load float*, float** %14, align 8
  %102 = getelementptr inbounds float, float* %101, i64 0
  %103 = load float, float* %102, align 4
  %104 = load float*, float** %14, align 8
  %105 = getelementptr inbounds float, float* %104, i64 1
  %106 = load float, float* %105, align 4
  %107 = load float*, float** %14, align 8
  %108 = getelementptr inbounds float, float* %107, i64 2
  %109 = load float, float* %108, align 4
  call void @_Z10kernel_finPfiiiiS_S_fff(float* noundef %94, i32 noundef %95, i32 noundef %96, i32 noundef %97, i32 noundef %98, float* noundef %99, float* noundef %100, float noundef %103, float noundef %106, float noundef %109)
  store i32 0, i32* %19, align 4
  br label %110

110:                                              ; preds = %143, %79
  %111 = load i32, i32* %19, align 4
  %112 = icmp slt i32 %111, 91
  br i1 %112, label %113, label %146

113:                                              ; preds = %110
  %114 = load float*, float** %13, align 8
  %115 = load i32, i32* %19, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds float, float* %114, i64 %116
  %118 = load float, float* %117, align 4
  %119 = call noundef zeroext i1 @_ZSt5isnanf(float noundef %118)
  %120 = zext i1 %119 to i32
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %127

122:                                              ; preds = %113
  %123 = load float*, float** %13, align 8
  %124 = load i32, i32* %19, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, float* %123, i64 %125
  store float 0x3F1A36E2E0000000, float* %126, align 4
  br label %142

127:                                              ; preds = %113
  %128 = load float*, float** %13, align 8
  %129 = load i32, i32* %19, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %128, i64 %130
  %132 = load float, float* %131, align 4
  %133 = call noundef zeroext i1 @_ZSt5isinff(float noundef %132)
  %134 = zext i1 %133 to i32
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %141

136:                                              ; preds = %127
  %137 = load float*, float** %13, align 8
  %138 = load i32, i32* %19, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float, float* %137, i64 %139
  store float 0x3F1A36E2E0000000, float* %140, align 4
  br label %141

141:                                              ; preds = %136, %127
  br label %142

142:                                              ; preds = %141, %122
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %19, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %19, align 4
  br label %110, !llvm.loop !15

146:                                              ; preds = %110
  ret void
}

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

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #1

declare i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSt5isnanf(float noundef %0) #2 comdat {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = fcmp contract uno float %3, %3
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSt5isinff(float noundef %0) #2 comdat {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = call contract float @llvm.fabs.f32(float %3) #12
  %5 = fcmp contract oeq float %4, 0x7FF0000000000000
  ret i1 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_(float noundef %0, float noundef %1, float* noundef %2, float* noundef %3, float* noundef %4, float* noundef %5, float* noundef %6, float* noundef %7, float* noundef %8, float* noundef %9, float* noundef %10) #0 {
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float*, align 8
  %26 = alloca float**, align 8
  %27 = alloca i32, align 4
  store float %0, float* %12, align 4
  store float %1, float* %13, align 4
  store float* %2, float** %14, align 8
  store float* %3, float** %15, align 8
  store float* %4, float** %16, align 8
  store float* %5, float** %17, align 8
  store float* %6, float** %18, align 8
  store float* %7, float** %19, align 8
  store float* %8, float** %20, align 8
  store float* %9, float** %21, align 8
  store float* %10, float** %22, align 8
  %28 = load float, float* %13, align 4
  %29 = fmul contract float 0x3FB2F684C0000000, %28
  store float %29, float* %23, align 4
  %30 = call noalias i8* @malloc(i64 noundef 364) #13
  %31 = bitcast i8* %30 to float*
  store float* %31, float** %25, align 8
  %32 = call noalias i8* @malloc(i64 noundef 104) #13
  %33 = bitcast i8* %32 to float**
  store float** %33, float*** %26, align 8
  store i32 0, i32* %27, align 4
  br label %34

34:                                               ; preds = %44, %11
  %35 = load i32, i32* %27, align 4
  %36 = icmp slt i32 %35, 13
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = call noalias i8* @malloc(i64 noundef 364) #13
  %39 = bitcast i8* %38 to float*
  %40 = load float**, float*** %26, align 8
  %41 = load i32, i32* %27, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float*, float** %40, i64 %42
  store float* %39, float** %43, align 8
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %27, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %27, align 4
  br label %34, !llvm.loop !16

47:                                               ; preds = %34
  %48 = load float, float* %12, align 4
  store float %48, float* %24, align 4
  store i32 0, i32* %27, align 4
  br label %49

49:                                               ; preds = %62, %47
  %50 = load i32, i32* %27, align 4
  %51 = icmp slt i32 %50, 91
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load float*, float** %14, align 8
  %54 = load i32, i32* %27, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %53, i64 %55
  %57 = load float, float* %56, align 4
  %58 = load float*, float** %25, align 8
  %59 = load i32, i32* %27, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %58, i64 %60
  store float %57, float* %61, align 4
  br label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %27, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %27, align 4
  br label %49, !llvm.loop !17

65:                                               ; preds = %49
  %66 = load float, float* %24, align 4
  %67 = load float*, float** %25, align 8
  %68 = load float*, float** %17, align 8
  %69 = load float**, float*** %26, align 8
  %70 = getelementptr inbounds float*, float** %69, i64 0
  %71 = load float*, float** %70, align 8
  %72 = load float*, float** %18, align 8
  %73 = load float*, float** %19, align 8
  %74 = load float*, float** %20, align 8
  %75 = load float*, float** %21, align 8
  %76 = load float*, float** %22, align 8
  call void @_Z6masterfPfS_S_S_S_S_S_S_(float noundef %66, float* noundef %67, float* noundef %68, float* noundef %71, float* noundef %72, float* noundef %73, float* noundef %74, float* noundef %75, float* noundef %76)
  %77 = load float, float* %12, align 4
  %78 = load float, float* %23, align 4
  %79 = fadd contract float %77, %78
  store float %79, float* %24, align 4
  store i32 0, i32* %27, align 4
  br label %80

80:                                               ; preds = %103, %65
  %81 = load i32, i32* %27, align 4
  %82 = icmp slt i32 %81, 91
  br i1 %82, label %83, label %106

83:                                               ; preds = %80
  %84 = load float*, float** %14, align 8
  %85 = load i32, i32* %27, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %84, i64 %86
  %88 = load float, float* %87, align 4
  %89 = load float, float* %23, align 4
  %90 = load float**, float*** %26, align 8
  %91 = getelementptr inbounds float*, float** %90, i64 0
  %92 = load float*, float** %91, align 8
  %93 = load i32, i32* %27, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* %92, i64 %94
  %96 = load float, float* %95, align 4
  %97 = fmul contract float %89, %96
  %98 = fadd contract float %88, %97
  %99 = load float*, float** %25, align 8
  %100 = load i32, i32* %27, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, float* %99, i64 %101
  store float %98, float* %102, align 4
  br label %103

103:                                              ; preds = %83
  %104 = load i32, i32* %27, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %27, align 4
  br label %80, !llvm.loop !18

106:                                              ; preds = %80
  %107 = load float, float* %24, align 4
  %108 = load float*, float** %25, align 8
  %109 = load float*, float** %17, align 8
  %110 = load float**, float*** %26, align 8
  %111 = getelementptr inbounds float*, float** %110, i64 1
  %112 = load float*, float** %111, align 8
  %113 = load float*, float** %18, align 8
  %114 = load float*, float** %19, align 8
  %115 = load float*, float** %20, align 8
  %116 = load float*, float** %21, align 8
  %117 = load float*, float** %22, align 8
  call void @_Z6masterfPfS_S_S_S_S_S_S_(float noundef %107, float* noundef %108, float* noundef %109, float* noundef %112, float* noundef %113, float* noundef %114, float* noundef %115, float* noundef %116, float* noundef %117)
  %118 = load float, float* %12, align 4
  %119 = load float, float* %13, align 4
  %120 = fmul contract float 0x3FBC71C720000000, %119
  %121 = fadd contract float %118, %120
  store float %121, float* %24, align 4
  store i32 0, i32* %27, align 4
  br label %122

122:                                              ; preds = %155, %106
  %123 = load i32, i32* %27, align 4
  %124 = icmp slt i32 %123, 91
  br i1 %124, label %125, label %158

125:                                              ; preds = %122
  %126 = load float*, float** %14, align 8
  %127 = load i32, i32* %27, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, float* %126, i64 %128
  %130 = load float, float* %129, align 4
  %131 = load float, float* %13, align 4
  %132 = load float**, float*** %26, align 8
  %133 = getelementptr inbounds float*, float** %132, i64 0
  %134 = load float*, float** %133, align 8
  %135 = load i32, i32* %27, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %134, i64 %136
  %138 = load float, float* %137, align 4
  %139 = fmul contract float 0x3F9C71C720000000, %138
  %140 = load float**, float*** %26, align 8
  %141 = getelementptr inbounds float*, float** %140, i64 1
  %142 = load float*, float** %141, align 8
  %143 = load i32, i32* %27, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds float, float* %142, i64 %144
  %146 = load float, float* %145, align 4
  %147 = fmul contract float 0x3FB5555560000000, %146
  %148 = fadd contract float %139, %147
  %149 = fmul contract float %131, %148
  %150 = fadd contract float %130, %149
  %151 = load float*, float** %25, align 8
  %152 = load i32, i32* %27, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %151, i64 %153
  store float %150, float* %154, align 4
  br label %155

155:                                              ; preds = %125
  %156 = load i32, i32* %27, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %27, align 4
  br label %122, !llvm.loop !19

158:                                              ; preds = %122
  %159 = load float, float* %24, align 4
  %160 = load float*, float** %25, align 8
  %161 = load float*, float** %17, align 8
  %162 = load float**, float*** %26, align 8
  %163 = getelementptr inbounds float*, float** %162, i64 2
  %164 = load float*, float** %163, align 8
  %165 = load float*, float** %18, align 8
  %166 = load float*, float** %19, align 8
  %167 = load float*, float** %20, align 8
  %168 = load float*, float** %21, align 8
  %169 = load float*, float** %22, align 8
  call void @_Z6masterfPfS_S_S_S_S_S_S_(float noundef %159, float* noundef %160, float* noundef %161, float* noundef %164, float* noundef %165, float* noundef %166, float* noundef %167, float* noundef %168, float* noundef %169)
  %170 = load float, float* %12, align 4
  %171 = load float, float* %13, align 4
  %172 = fmul contract float 0x3FC5555560000000, %171
  %173 = fadd contract float %170, %172
  store float %173, float* %24, align 4
  store i32 0, i32* %27, align 4
  br label %174

174:                                              ; preds = %207, %158
  %175 = load i32, i32* %27, align 4
  %176 = icmp slt i32 %175, 91
  br i1 %176, label %177, label %210

177:                                              ; preds = %174
  %178 = load float*, float** %14, align 8
  %179 = load i32, i32* %27, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float, float* %178, i64 %180
  %182 = load float, float* %181, align 4
  %183 = load float, float* %13, align 4
  %184 = load float**, float*** %26, align 8
  %185 = getelementptr inbounds float*, float** %184, i64 0
  %186 = load float*, float** %185, align 8
  %187 = load i32, i32* %27, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds float, float* %186, i64 %188
  %190 = load float, float* %189, align 4
  %191 = fmul contract float 0x3FA5555560000000, %190
  %192 = load float**, float*** %26, align 8
  %193 = getelementptr inbounds float*, float** %192, i64 2
  %194 = load float*, float** %193, align 8
  %195 = load i32, i32* %27, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds float, float* %194, i64 %196
  %198 = load float, float* %197, align 4
  %199 = fmul contract float 1.250000e-01, %198
  %200 = fadd contract float %191, %199
  %201 = fmul contract float %183, %200
  %202 = fadd contract float %182, %201
  %203 = load float*, float** %25, align 8
  %204 = load i32, i32* %27, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds float, float* %203, i64 %205
  store float %202, float* %206, align 4
  br label %207

207:                                              ; preds = %177
  %208 = load i32, i32* %27, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %27, align 4
  br label %174, !llvm.loop !20

210:                                              ; preds = %174
  %211 = load float, float* %24, align 4
  %212 = load float*, float** %25, align 8
  %213 = load float*, float** %17, align 8
  %214 = load float**, float*** %26, align 8
  %215 = getelementptr inbounds float*, float** %214, i64 3
  %216 = load float*, float** %215, align 8
  %217 = load float*, float** %18, align 8
  %218 = load float*, float** %19, align 8
  %219 = load float*, float** %20, align 8
  %220 = load float*, float** %21, align 8
  %221 = load float*, float** %22, align 8
  call void @_Z6masterfPfS_S_S_S_S_S_S_(float noundef %211, float* noundef %212, float* noundef %213, float* noundef %216, float* noundef %217, float* noundef %218, float* noundef %219, float* noundef %220, float* noundef %221)
  %222 = load float, float* %12, align 4
  %223 = load float, float* %13, align 4
  %224 = fmul contract float 0x3FDAAAAAA0000000, %223
  %225 = fadd contract float %222, %224
  store float %225, float* %24, align 4
  store i32 0, i32* %27, align 4
  br label %226

226:                                              ; preds = %268, %210
  %227 = load i32, i32* %27, align 4
  %228 = icmp slt i32 %227, 91
  br i1 %228, label %229, label %271

229:                                              ; preds = %226
  %230 = load float*, float** %14, align 8
  %231 = load i32, i32* %27, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float, float* %230, i64 %232
  %234 = load float, float* %233, align 4
  %235 = load float, float* %13, align 4
  %236 = load float**, float*** %26, align 8
  %237 = getelementptr inbounds float*, float** %236, i64 0
  %238 = load float*, float** %237, align 8
  %239 = load i32, i32* %27, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds float, float* %238, i64 %240
  %242 = load float, float* %241, align 4
  %243 = fmul contract float 0x3FDAAAAAA0000000, %242
  %244 = load float**, float*** %26, align 8
  %245 = getelementptr inbounds float*, float** %244, i64 2
  %246 = load float*, float** %245, align 8
  %247 = load i32, i32* %27, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds float, float* %246, i64 %248
  %250 = load float, float* %249, align 4
  %251 = fmul contract float -1.562500e+00, %250
  %252 = fadd contract float %243, %251
  %253 = load float**, float*** %26, align 8
  %254 = getelementptr inbounds float*, float** %253, i64 3
  %255 = load float*, float** %254, align 8
  %256 = load i32, i32* %27, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds float, float* %255, i64 %257
  %259 = load float, float* %258, align 4
  %260 = fmul contract float 1.562500e+00, %259
  %261 = fadd contract float %252, %260
  %262 = fmul contract float %235, %261
  %263 = fadd contract float %234, %262
  %264 = load float*, float** %25, align 8
  %265 = load i32, i32* %27, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds float, float* %264, i64 %266
  store float %263, float* %267, align 4
  br label %268

268:                                              ; preds = %229
  %269 = load i32, i32* %27, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %27, align 4
  br label %226, !llvm.loop !21

271:                                              ; preds = %226
  %272 = load float, float* %24, align 4
  %273 = load float*, float** %25, align 8
  %274 = load float*, float** %17, align 8
  %275 = load float**, float*** %26, align 8
  %276 = getelementptr inbounds float*, float** %275, i64 4
  %277 = load float*, float** %276, align 8
  %278 = load float*, float** %18, align 8
  %279 = load float*, float** %19, align 8
  %280 = load float*, float** %20, align 8
  %281 = load float*, float** %21, align 8
  %282 = load float*, float** %22, align 8
  call void @_Z6masterfPfS_S_S_S_S_S_S_(float noundef %272, float* noundef %273, float* noundef %274, float* noundef %277, float* noundef %278, float* noundef %279, float* noundef %280, float* noundef %281, float* noundef %282)
  %283 = load float, float* %12, align 4
  %284 = load float, float* %13, align 4
  %285 = fmul contract float 5.000000e-01, %284
  %286 = fadd contract float %283, %285
  store float %286, float* %24, align 4
  store i32 0, i32* %27, align 4
  br label %287

287:                                              ; preds = %329, %271
  %288 = load i32, i32* %27, align 4
  %289 = icmp slt i32 %288, 91
  br i1 %289, label %290, label %332

290:                                              ; preds = %287
  %291 = load float*, float** %14, align 8
  %292 = load i32, i32* %27, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds float, float* %291, i64 %293
  %295 = load float, float* %294, align 4
  %296 = load float, float* %13, align 4
  %297 = load float**, float*** %26, align 8
  %298 = getelementptr inbounds float*, float** %297, i64 0
  %299 = load float*, float** %298, align 8
  %300 = load i32, i32* %27, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds float, float* %299, i64 %301
  %303 = load float, float* %302, align 4
  %304 = fmul contract float 0x3FA99999A0000000, %303
  %305 = load float**, float*** %26, align 8
  %306 = getelementptr inbounds float*, float** %305, i64 3
  %307 = load float*, float** %306, align 8
  %308 = load i32, i32* %27, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds float, float* %307, i64 %309
  %311 = load float, float* %310, align 4
  %312 = fmul contract float 2.500000e-01, %311
  %313 = fadd contract float %304, %312
  %314 = load float**, float*** %26, align 8
  %315 = getelementptr inbounds float*, float** %314, i64 4
  %316 = load float*, float** %315, align 8
  %317 = load i32, i32* %27, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds float, float* %316, i64 %318
  %320 = load float, float* %319, align 4
  %321 = fmul contract float 0x3FC99999A0000000, %320
  %322 = fadd contract float %313, %321
  %323 = fmul contract float %296, %322
  %324 = fadd contract float %295, %323
  %325 = load float*, float** %25, align 8
  %326 = load i32, i32* %27, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds float, float* %325, i64 %327
  store float %324, float* %328, align 4
  br label %329

329:                                              ; preds = %290
  %330 = load i32, i32* %27, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %27, align 4
  br label %287, !llvm.loop !22

332:                                              ; preds = %287
  %333 = load float, float* %24, align 4
  %334 = load float*, float** %25, align 8
  %335 = load float*, float** %17, align 8
  %336 = load float**, float*** %26, align 8
  %337 = getelementptr inbounds float*, float** %336, i64 5
  %338 = load float*, float** %337, align 8
  %339 = load float*, float** %18, align 8
  %340 = load float*, float** %19, align 8
  %341 = load float*, float** %20, align 8
  %342 = load float*, float** %21, align 8
  %343 = load float*, float** %22, align 8
  call void @_Z6masterfPfS_S_S_S_S_S_S_(float noundef %333, float* noundef %334, float* noundef %335, float* noundef %338, float* noundef %339, float* noundef %340, float* noundef %341, float* noundef %342, float* noundef %343)
  %344 = load float, float* %12, align 4
  %345 = load float, float* %13, align 4
  %346 = fmul contract float 0x3FEAAAAAA0000000, %345
  %347 = fadd contract float %344, %346
  store float %347, float* %24, align 4
  store i32 0, i32* %27, align 4
  br label %348

348:                                              ; preds = %399, %332
  %349 = load i32, i32* %27, align 4
  %350 = icmp slt i32 %349, 91
  br i1 %350, label %351, label %402

351:                                              ; preds = %348
  %352 = load float*, float** %14, align 8
  %353 = load i32, i32* %27, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds float, float* %352, i64 %354
  %356 = load float, float* %355, align 4
  %357 = load float, float* %13, align 4
  %358 = load float**, float*** %26, align 8
  %359 = getelementptr inbounds float*, float** %358, i64 0
  %360 = load float*, float** %359, align 8
  %361 = load i32, i32* %27, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds float, float* %360, i64 %362
  %364 = load float, float* %363, align 4
  %365 = fmul contract float 0xBFCDA12F60000000, %364
  %366 = load float**, float*** %26, align 8
  %367 = getelementptr inbounds float*, float** %366, i64 3
  %368 = load float*, float** %367, align 8
  %369 = load i32, i32* %27, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds float, float* %368, i64 %370
  %372 = load float, float* %371, align 4
  %373 = fmul contract float 0x3FF284BDA0000000, %372
  %374 = fadd contract float %365, %373
  %375 = load float**, float*** %26, align 8
  %376 = getelementptr inbounds float*, float** %375, i64 4
  %377 = load float*, float** %376, align 8
  %378 = load i32, i32* %27, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds float, float* %377, i64 %379
  %381 = load float, float* %380, align 4
  %382 = fmul contract float 0xC003425EE0000000, %381
  %383 = fadd contract float %374, %382
  %384 = load float**, float*** %26, align 8
  %385 = getelementptr inbounds float*, float** %384, i64 5
  %386 = load float*, float** %385, align 8
  %387 = load i32, i32* %27, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds float, float* %386, i64 %388
  %390 = load float, float* %389, align 4
  %391 = fmul contract float 0x400284BDA0000000, %390
  %392 = fadd contract float %383, %391
  %393 = fmul contract float %357, %392
  %394 = fadd contract float %356, %393
  %395 = load float*, float** %25, align 8
  %396 = load i32, i32* %27, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds float, float* %395, i64 %397
  store float %394, float* %398, align 4
  br label %399

399:                                              ; preds = %351
  %400 = load i32, i32* %27, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %27, align 4
  br label %348, !llvm.loop !23

402:                                              ; preds = %348
  %403 = load float, float* %24, align 4
  %404 = load float*, float** %25, align 8
  %405 = load float*, float** %17, align 8
  %406 = load float**, float*** %26, align 8
  %407 = getelementptr inbounds float*, float** %406, i64 6
  %408 = load float*, float** %407, align 8
  %409 = load float*, float** %18, align 8
  %410 = load float*, float** %19, align 8
  %411 = load float*, float** %20, align 8
  %412 = load float*, float** %21, align 8
  %413 = load float*, float** %22, align 8
  call void @_Z6masterfPfS_S_S_S_S_S_S_(float noundef %403, float* noundef %404, float* noundef %405, float* noundef %408, float* noundef %409, float* noundef %410, float* noundef %411, float* noundef %412, float* noundef %413)
  %414 = load float, float* %12, align 4
  %415 = load float, float* %13, align 4
  %416 = fmul contract float 0x3FC5555560000000, %415
  %417 = fadd contract float %414, %416
  store float %417, float* %24, align 4
  store i32 0, i32* %27, align 4
  br label %418

418:                                              ; preds = %469, %402
  %419 = load i32, i32* %27, align 4
  %420 = icmp slt i32 %419, 91
  br i1 %420, label %421, label %472

421:                                              ; preds = %418
  %422 = load float*, float** %14, align 8
  %423 = load i32, i32* %27, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds float, float* %422, i64 %424
  %426 = load float, float* %425, align 4
  %427 = load float, float* %13, align 4
  %428 = load float**, float*** %26, align 8
  %429 = getelementptr inbounds float*, float** %428, i64 0
  %430 = load float*, float** %429, align 8
  %431 = load i32, i32* %27, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds float, float* %430, i64 %432
  %434 = load float, float* %433, align 4
  %435 = fmul contract float 0x3FBA740DA0000000, %434
  %436 = load float**, float*** %26, align 8
  %437 = getelementptr inbounds float*, float** %436, i64 4
  %438 = load float*, float** %437, align 8
  %439 = load i32, i32* %27, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds float, float* %438, i64 %440
  %442 = load float, float* %441, align 4
  %443 = fmul contract float 0x3FD159E260000000, %442
  %444 = fadd contract float %435, %443
  %445 = load float**, float*** %26, align 8
  %446 = getelementptr inbounds float*, float** %445, i64 5
  %447 = load float*, float** %446, align 8
  %448 = load i32, i32* %27, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds float, float* %447, i64 %449
  %451 = load float, float* %450, align 4
  %452 = fmul contract float 0xBFCC71C720000000, %451
  %453 = fadd contract float %444, %452
  %454 = load float**, float*** %26, align 8
  %455 = getelementptr inbounds float*, float** %454, i64 6
  %456 = load float*, float** %455, align 8
  %457 = load i32, i32* %27, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds float, float* %456, i64 %458
  %460 = load float, float* %459, align 4
  %461 = fmul contract float 0x3F8D950C80000000, %460
  %462 = fadd contract float %453, %461
  %463 = fmul contract float %427, %462
  %464 = fadd contract float %426, %463
  %465 = load float*, float** %25, align 8
  %466 = load i32, i32* %27, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds float, float* %465, i64 %467
  store float %464, float* %468, align 4
  br label %469

469:                                              ; preds = %421
  %470 = load i32, i32* %27, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %27, align 4
  br label %418, !llvm.loop !24

472:                                              ; preds = %418
  %473 = load float, float* %24, align 4
  %474 = load float*, float** %25, align 8
  %475 = load float*, float** %17, align 8
  %476 = load float**, float*** %26, align 8
  %477 = getelementptr inbounds float*, float** %476, i64 7
  %478 = load float*, float** %477, align 8
  %479 = load float*, float** %18, align 8
  %480 = load float*, float** %19, align 8
  %481 = load float*, float** %20, align 8
  %482 = load float*, float** %21, align 8
  %483 = load float*, float** %22, align 8
  call void @_Z6masterfPfS_S_S_S_S_S_S_(float noundef %473, float* noundef %474, float* noundef %475, float* noundef %478, float* noundef %479, float* noundef %480, float* noundef %481, float* noundef %482, float* noundef %483)
  %484 = load float, float* %12, align 4
  %485 = load float, float* %13, align 4
  %486 = fmul contract float 0x3FE5555560000000, %485
  %487 = fadd contract float %484, %486
  store float %487, float* %24, align 4
  store i32 0, i32* %27, align 4
  br label %488

488:                                              ; preds = %557, %472
  %489 = load i32, i32* %27, align 4
  %490 = icmp slt i32 %489, 91
  br i1 %490, label %491, label %560

491:                                              ; preds = %488
  %492 = load float*, float** %14, align 8
  %493 = load i32, i32* %27, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds float, float* %492, i64 %494
  %496 = load float, float* %495, align 4
  %497 = load float, float* %13, align 4
  %498 = load float**, float*** %26, align 8
  %499 = getelementptr inbounds float*, float** %498, i64 0
  %500 = load float*, float** %499, align 8
  %501 = load i32, i32* %27, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds float, float* %500, i64 %502
  %504 = load float, float* %503, align 4
  %505 = fmul contract float 2.000000e+00, %504
  %506 = load float**, float*** %26, align 8
  %507 = getelementptr inbounds float*, float** %506, i64 3
  %508 = load float*, float** %507, align 8
  %509 = load i32, i32* %27, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds float, float* %508, i64 %510
  %512 = load float, float* %511, align 4
  %513 = fmul contract float 0xC021AAAAA0000000, %512
  %514 = fadd contract float %505, %513
  %515 = load float**, float*** %26, align 8
  %516 = getelementptr inbounds float*, float** %515, i64 4
  %517 = load float*, float** %516, align 8
  %518 = load i32, i32* %27, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds float, float* %517, i64 %519
  %521 = load float, float* %520, align 4
  %522 = fmul contract float 0x402F49F4A0000000, %521
  %523 = fadd contract float %514, %522
  %524 = load float**, float*** %26, align 8
  %525 = getelementptr inbounds float*, float** %524, i64 5
  %526 = load float*, float** %525, align 8
  %527 = load i32, i32* %27, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds float, float* %526, i64 %528
  %530 = load float, float* %529, align 4
  %531 = fmul contract float 0xC027C71C80000000, %530
  %532 = fadd contract float %523, %531
  %533 = load float**, float*** %26, align 8
  %534 = getelementptr inbounds float*, float** %533, i64 6
  %535 = load float*, float** %534, align 8
  %536 = load i32, i32* %27, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds float, float* %535, i64 %537
  %539 = load float, float* %538, align 4
  %540 = fmul contract float 0x3FE7D27D20000000, %539
  %541 = fadd contract float %532, %540
  %542 = load float**, float*** %26, align 8
  %543 = getelementptr inbounds float*, float** %542, i64 7
  %544 = load float*, float** %543, align 8
  %545 = load i32, i32* %27, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds float, float* %544, i64 %546
  %548 = load float, float* %547, align 4
  %549 = fmul contract float 3.000000e+00, %548
  %550 = fadd contract float %541, %549
  %551 = fmul contract float %497, %550
  %552 = fadd contract float %496, %551
  %553 = load float*, float** %25, align 8
  %554 = load i32, i32* %27, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds float, float* %553, i64 %555
  store float %552, float* %556, align 4
  br label %557

557:                                              ; preds = %491
  %558 = load i32, i32* %27, align 4
  %559 = add nsw i32 %558, 1
  store i32 %559, i32* %27, align 4
  br label %488, !llvm.loop !25

560:                                              ; preds = %488
  %561 = load float, float* %24, align 4
  %562 = load float*, float** %25, align 8
  %563 = load float*, float** %17, align 8
  %564 = load float**, float*** %26, align 8
  %565 = getelementptr inbounds float*, float** %564, i64 8
  %566 = load float*, float** %565, align 8
  %567 = load float*, float** %18, align 8
  %568 = load float*, float** %19, align 8
  %569 = load float*, float** %20, align 8
  %570 = load float*, float** %21, align 8
  %571 = load float*, float** %22, align 8
  call void @_Z6masterfPfS_S_S_S_S_S_S_(float noundef %561, float* noundef %562, float* noundef %563, float* noundef %566, float* noundef %567, float* noundef %568, float* noundef %569, float* noundef %570, float* noundef %571)
  %572 = load float, float* %12, align 4
  %573 = load float, float* %13, align 4
  %574 = fmul contract float 0x3FD5555560000000, %573
  %575 = fadd contract float %572, %574
  store float %575, float* %24, align 4
  store i32 0, i32* %27, align 4
  br label %576

576:                                              ; preds = %654, %560
  %577 = load i32, i32* %27, align 4
  %578 = icmp slt i32 %577, 91
  br i1 %578, label %579, label %657

579:                                              ; preds = %576
  %580 = load float*, float** %14, align 8
  %581 = load i32, i32* %27, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds float, float* %580, i64 %582
  %584 = load float, float* %583, align 4
  %585 = load float, float* %13, align 4
  %586 = load float**, float*** %26, align 8
  %587 = getelementptr inbounds float*, float** %586, i64 0
  %588 = load float*, float** %587, align 8
  %589 = load i32, i32* %27, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds float, float* %588, i64 %590
  %592 = load float, float* %591, align 4
  %593 = fmul contract float 0xBFEAF684C0000000, %592
  %594 = load float**, float*** %26, align 8
  %595 = getelementptr inbounds float*, float** %594, i64 3
  %596 = load float*, float** %595, align 8
  %597 = load i32, i32* %27, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds float, float* %596, i64 %598
  %600 = load float, float* %599, align 4
  %601 = fmul contract float 0x3FCB425EE0000000, %600
  %602 = fadd contract float %593, %601
  %603 = load float**, float*** %26, align 8
  %604 = getelementptr inbounds float*, float** %603, i64 4
  %605 = load float*, float** %604, align 8
  %606 = load i32, i32* %27, align 4
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds float, float* %605, i64 %607
  %609 = load float, float* %608, align 4
  %610 = fmul contract float 0xC01CEB2400000000, %609
  %611 = fadd contract float %602, %610
  %612 = load float**, float*** %26, align 8
  %613 = getelementptr inbounds float*, float** %612, i64 5
  %614 = load float*, float** %613, align 8
  %615 = load i32, i32* %27, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds float, float* %614, i64 %616
  %618 = load float, float* %617, align 4
  %619 = fmul contract float 0x4017097B40000000, %618
  %620 = fadd contract float %611, %619
  %621 = load float**, float*** %26, align 8
  %622 = getelementptr inbounds float*, float** %621, i64 6
  %623 = load float*, float** %622, align 8
  %624 = load i32, i32* %27, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds float, float* %623, i64 %625
  %627 = load float, float* %626, align 4
  %628 = fmul contract float 0xBFD4444440000000, %627
  %629 = fadd contract float %620, %628
  %630 = load float**, float*** %26, align 8
  %631 = getelementptr inbounds float*, float** %630, i64 7
  %632 = load float*, float** %631, align 8
  %633 = load i32, i32* %27, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds float, float* %632, i64 %634
  %636 = load float, float* %635, align 4
  %637 = fmul contract float 0x4006AAAAA0000000, %636
  %638 = fadd contract float %629, %637
  %639 = load float**, float*** %26, align 8
  %640 = getelementptr inbounds float*, float** %639, i64 8
  %641 = load float*, float** %640, align 8
  %642 = load i32, i32* %27, align 4
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds float, float* %641, i64 %643
  %645 = load float, float* %644, align 4
  %646 = fmul contract float 0xBFB5555560000000, %645
  %647 = fadd contract float %638, %646
  %648 = fmul contract float %585, %647
  %649 = fadd contract float %584, %648
  %650 = load float*, float** %25, align 8
  %651 = load i32, i32* %27, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds float, float* %650, i64 %652
  store float %649, float* %653, align 4
  br label %654

654:                                              ; preds = %579
  %655 = load i32, i32* %27, align 4
  %656 = add nsw i32 %655, 1
  store i32 %656, i32* %27, align 4
  br label %576, !llvm.loop !26

657:                                              ; preds = %576
  %658 = load float, float* %24, align 4
  %659 = load float*, float** %25, align 8
  %660 = load float*, float** %17, align 8
  %661 = load float**, float*** %26, align 8
  %662 = getelementptr inbounds float*, float** %661, i64 9
  %663 = load float*, float** %662, align 8
  %664 = load float*, float** %18, align 8
  %665 = load float*, float** %19, align 8
  %666 = load float*, float** %20, align 8
  %667 = load float*, float** %21, align 8
  %668 = load float*, float** %22, align 8
  call void @_Z6masterfPfS_S_S_S_S_S_S_(float noundef %658, float* noundef %659, float* noundef %660, float* noundef %663, float* noundef %664, float* noundef %665, float* noundef %666, float* noundef %667, float* noundef %668)
  %669 = load float, float* %12, align 4
  %670 = load float, float* %13, align 4
  %671 = fadd contract float %669, %670
  store float %671, float* %24, align 4
  store i32 0, i32* %27, align 4
  br label %672

672:                                              ; preds = %759, %657
  %673 = load i32, i32* %27, align 4
  %674 = icmp slt i32 %673, 91
  br i1 %674, label %675, label %762

675:                                              ; preds = %672
  %676 = load float*, float** %14, align 8
  %677 = load i32, i32* %27, align 4
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds float, float* %676, i64 %678
  %680 = load float, float* %679, align 4
  %681 = load float, float* %13, align 4
  %682 = load float**, float*** %26, align 8
  %683 = getelementptr inbounds float*, float** %682, i64 0
  %684 = load float*, float** %683, align 8
  %685 = load i32, i32* %27, align 4
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds float, float* %684, i64 %686
  %688 = load float, float* %687, align 4
  %689 = fmul contract float 0x3FE29959A0000000, %688
  %690 = load float**, float*** %26, align 8
  %691 = getelementptr inbounds float*, float** %690, i64 3
  %692 = load float*, float** %691, align 8
  %693 = load i32, i32* %27, align 4
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds float, float* %692, i64 %694
  %696 = load float, float* %695, align 4
  %697 = fmul contract float 0xC000A25760000000, %696
  %698 = fadd contract float %689, %697
  %699 = load float**, float*** %26, align 8
  %700 = getelementptr inbounds float*, float** %699, i64 4
  %701 = load float*, float** %700, align 8
  %702 = load i32, i32* %27, align 4
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds float, float* %701, i64 %703
  %705 = load float, float* %704, align 4
  %706 = fmul contract float 0x40118B9D20000000, %705
  %707 = fadd contract float %698, %706
  %708 = load float**, float*** %26, align 8
  %709 = getelementptr inbounds float*, float** %708, i64 5
  %710 = load float*, float** %709, align 8
  %711 = load i32, i32* %27, align 4
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds float, float* %710, i64 %712
  %714 = load float, float* %713, align 4
  %715 = fmul contract float 0xC00D5DA8A0000000, %714
  %716 = fadd contract float %707, %715
  %717 = load float**, float*** %26, align 8
  %718 = getelementptr inbounds float*, float** %717, i64 6
  %719 = load float*, float** %718, align 8
  %720 = load i32, i32* %27, align 4
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds float, float* %719, i64 %721
  %723 = load float, float* %722, align 4
  %724 = fmul contract float 0x3FE0A5D680000000, %723
  %725 = fadd contract float %716, %724
  %726 = load float**, float*** %26, align 8
  %727 = getelementptr inbounds float*, float** %726, i64 7
  %728 = load float*, float** %727, align 8
  %729 = load i32, i32* %27, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds float, float* %728, i64 %730
  %732 = load float, float* %731, align 4
  %733 = fmul contract float 0x3FE18F9C20000000, %732
  %734 = fadd contract float %725, %733
  %735 = load float**, float*** %26, align 8
  %736 = getelementptr inbounds float*, float** %735, i64 8
  %737 = load float*, float** %736, align 8
  %738 = load i32, i32* %27, align 4
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds float, float* %737, i64 %739
  %741 = load float, float* %740, align 4
  %742 = fmul contract float 0x3FD18F9C20000000, %741
  %743 = fadd contract float %734, %742
  %744 = load float**, float*** %26, align 8
  %745 = getelementptr inbounds float*, float** %744, i64 9
  %746 = load float*, float** %745, align 8
  %747 = load i32, i32* %27, align 4
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds float, float* %746, i64 %748
  %750 = load float, float* %749, align 4
  %751 = fmul contract float 0x3FDC18F9C0000000, %750
  %752 = fadd contract float %743, %751
  %753 = fmul contract float %681, %752
  %754 = fadd contract float %680, %753
  %755 = load float*, float** %25, align 8
  %756 = load i32, i32* %27, align 4
  %757 = sext i32 %756 to i64
  %758 = getelementptr inbounds float, float* %755, i64 %757
  store float %754, float* %758, align 4
  br label %759

759:                                              ; preds = %675
  %760 = load i32, i32* %27, align 4
  %761 = add nsw i32 %760, 1
  store i32 %761, i32* %27, align 4
  br label %672, !llvm.loop !27

762:                                              ; preds = %672
  %763 = load float, float* %24, align 4
  %764 = load float*, float** %25, align 8
  %765 = load float*, float** %17, align 8
  %766 = load float**, float*** %26, align 8
  %767 = getelementptr inbounds float*, float** %766, i64 10
  %768 = load float*, float** %767, align 8
  %769 = load float*, float** %18, align 8
  %770 = load float*, float** %19, align 8
  %771 = load float*, float** %20, align 8
  %772 = load float*, float** %21, align 8
  %773 = load float*, float** %22, align 8
  call void @_Z6masterfPfS_S_S_S_S_S_S_(float noundef %763, float* noundef %764, float* noundef %765, float* noundef %768, float* noundef %769, float* noundef %770, float* noundef %771, float* noundef %772, float* noundef %773)
  %774 = load float, float* %12, align 4
  store float %774, float* %24, align 4
  store i32 0, i32* %27, align 4
  br label %775

775:                                              ; preds = %844, %762
  %776 = load i32, i32* %27, align 4
  %777 = icmp slt i32 %776, 91
  br i1 %777, label %778, label %847

778:                                              ; preds = %775
  %779 = load float*, float** %14, align 8
  %780 = load i32, i32* %27, align 4
  %781 = sext i32 %780 to i64
  %782 = getelementptr inbounds float, float* %779, i64 %781
  %783 = load float, float* %782, align 4
  %784 = load float, float* %13, align 4
  %785 = load float**, float*** %26, align 8
  %786 = getelementptr inbounds float*, float** %785, i64 0
  %787 = load float*, float** %786, align 8
  %788 = load i32, i32* %27, align 4
  %789 = sext i32 %788 to i64
  %790 = getelementptr inbounds float, float* %787, i64 %789
  %791 = load float, float* %790, align 4
  %792 = fmul contract float 0x3F8DF881E0000000, %791
  %793 = load float**, float*** %26, align 8
  %794 = getelementptr inbounds float*, float** %793, i64 5
  %795 = load float*, float** %794, align 8
  %796 = load i32, i32* %27, align 4
  %797 = sext i32 %796 to i64
  %798 = getelementptr inbounds float, float* %795, i64 %797
  %799 = load float, float* %798, align 4
  %800 = fmul contract float 0xBFC2BB5120000000, %799
  %801 = fadd contract float %792, %800
  %802 = load float**, float*** %26, align 8
  %803 = getelementptr inbounds float*, float** %802, i64 6
  %804 = load float*, float** %803, align 8
  %805 = load i32, i32* %27, align 4
  %806 = sext i32 %805 to i64
  %807 = getelementptr inbounds float, float* %804, i64 %806
  %808 = load float, float* %807, align 4
  %809 = fmul contract float 0xBF8DF881E0000000, %808
  %810 = fadd contract float %801, %809
  %811 = load float**, float*** %26, align 8
  %812 = getelementptr inbounds float*, float** %811, i64 7
  %813 = load float*, float** %812, align 8
  %814 = load i32, i32* %27, align 4
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds float, float* %813, i64 %815
  %817 = load float, float* %816, align 4
  %818 = fmul contract float 0xBFB2BB5120000000, %817
  %819 = fadd contract float %810, %818
  %820 = load float**, float*** %26, align 8
  %821 = getelementptr inbounds float*, float** %820, i64 8
  %822 = load float*, float** %821, align 8
  %823 = load i32, i32* %27, align 4
  %824 = sext i32 %823 to i64
  %825 = getelementptr inbounds float, float* %822, i64 %824
  %826 = load float, float* %825, align 4
  %827 = fmul contract float 0x3FB2BB5120000000, %826
  %828 = fadd contract float %819, %827
  %829 = load float**, float*** %26, align 8
  %830 = getelementptr inbounds float*, float** %829, i64 9
  %831 = load float*, float** %830, align 8
  %832 = load i32, i32* %27, align 4
  %833 = sext i32 %832 to i64
  %834 = getelementptr inbounds float, float* %831, i64 %833
  %835 = load float, float* %834, align 4
  %836 = fmul contract float 0x3FC2BB5120000000, %835
  %837 = fadd contract float %828, %836
  %838 = fmul contract float %784, %837
  %839 = fadd contract float %783, %838
  %840 = load float*, float** %25, align 8
  %841 = load i32, i32* %27, align 4
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds float, float* %840, i64 %842
  store float %839, float* %843, align 4
  br label %844

844:                                              ; preds = %778
  %845 = load i32, i32* %27, align 4
  %846 = add nsw i32 %845, 1
  store i32 %846, i32* %27, align 4
  br label %775, !llvm.loop !28

847:                                              ; preds = %775
  %848 = load float, float* %24, align 4
  %849 = load float*, float** %25, align 8
  %850 = load float*, float** %17, align 8
  %851 = load float**, float*** %26, align 8
  %852 = getelementptr inbounds float*, float** %851, i64 11
  %853 = load float*, float** %852, align 8
  %854 = load float*, float** %18, align 8
  %855 = load float*, float** %19, align 8
  %856 = load float*, float** %20, align 8
  %857 = load float*, float** %21, align 8
  %858 = load float*, float** %22, align 8
  call void @_Z6masterfPfS_S_S_S_S_S_S_(float noundef %848, float* noundef %849, float* noundef %850, float* noundef %853, float* noundef %854, float* noundef %855, float* noundef %856, float* noundef %857, float* noundef %858)
  %859 = load float, float* %12, align 4
  %860 = load float, float* %13, align 4
  %861 = fadd contract float %859, %860
  store float %861, float* %24, align 4
  store i32 0, i32* %27, align 4
  br label %862

862:                                              ; preds = %957, %847
  %863 = load i32, i32* %27, align 4
  %864 = icmp slt i32 %863, 91
  br i1 %864, label %865, label %960

865:                                              ; preds = %862
  %866 = load float*, float** %14, align 8
  %867 = load i32, i32* %27, align 4
  %868 = sext i32 %867 to i64
  %869 = getelementptr inbounds float, float* %866, i64 %868
  %870 = load float, float* %869, align 4
  %871 = load float, float* %13, align 4
  %872 = load float**, float*** %26, align 8
  %873 = getelementptr inbounds float*, float** %872, i64 0
  %874 = load float*, float** %873, align 8
  %875 = load i32, i32* %27, align 4
  %876 = sext i32 %875 to i64
  %877 = getelementptr inbounds float, float* %874, i64 %876
  %878 = load float, float* %877, align 4
  %879 = fmul contract float 0xBFDBBD10C0000000, %878
  %880 = load float**, float*** %26, align 8
  %881 = getelementptr inbounds float*, float** %880, i64 3
  %882 = load float*, float** %881, align 8
  %883 = load i32, i32* %27, align 4
  %884 = sext i32 %883 to i64
  %885 = getelementptr inbounds float, float* %882, i64 %884
  %886 = load float, float* %885, align 4
  %887 = fmul contract float 0xC000A25760000000, %886
  %888 = fadd contract float %879, %887
  %889 = load float**, float*** %26, align 8
  %890 = getelementptr inbounds float*, float** %889, i64 4
  %891 = load float*, float** %890, align 8
  %892 = load i32, i32* %27, align 4
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds float, float* %891, i64 %893
  %895 = load float, float* %894, align 4
  %896 = fmul contract float 0x40118B9D20000000, %895
  %897 = fadd contract float %888, %896
  %898 = load float**, float*** %26, align 8
  %899 = getelementptr inbounds float*, float** %898, i64 5
  %900 = load float*, float** %899, align 8
  %901 = load i32, i32* %27, align 4
  %902 = sext i32 %901 to i64
  %903 = getelementptr inbounds float, float* %900, i64 %902
  %904 = load float, float* %903, align 4
  %905 = fmul contract float 0xC00C31F380000000, %904
  %906 = fadd contract float %897, %905
  %907 = load float**, float*** %26, align 8
  %908 = getelementptr inbounds float*, float** %907, i64 6
  %909 = load float*, float** %908, align 8
  %910 = load i32, i32* %27, align 4
  %911 = sext i32 %910 to i64
  %912 = getelementptr inbounds float, float* %909, i64 %911
  %913 = load float, float* %912, align 4
  %914 = fmul contract float 0x3FE11DB8A0000000, %913
  %915 = fadd contract float %906, %914
  %916 = load float**, float*** %26, align 8
  %917 = getelementptr inbounds float*, float** %916, i64 7
  %918 = load float*, float** %917, align 8
  %919 = load i32, i32* %27, align 4
  %920 = sext i32 %919 to i64
  %921 = getelementptr inbounds float, float* %918, i64 %920
  %922 = load float, float* %921, align 4
  %923 = fmul contract float 0x3FE3E70640000000, %922
  %924 = fadd contract float %915, %923
  %925 = load float**, float*** %26, align 8
  %926 = getelementptr inbounds float*, float** %925, i64 8
  %927 = load float*, float** %926, align 8
  %928 = load i32, i32* %27, align 4
  %929 = sext i32 %928 to i64
  %930 = getelementptr inbounds float, float* %927, i64 %929
  %931 = load float, float* %930, align 4
  %932 = fmul contract float 0x3FC9C18FA0000000, %931
  %933 = fadd contract float %924, %932
  %934 = load float**, float*** %26, align 8
  %935 = getelementptr inbounds float*, float** %934, i64 9
  %936 = load float*, float** %935, align 8
  %937 = load i32, i32* %27, align 4
  %938 = sext i32 %937 to i64
  %939 = getelementptr inbounds float, float* %936, i64 %938
  %940 = load float, float* %939, align 4
  %941 = fmul contract float 0x3FD2BB5120000000, %940
  %942 = fadd contract float %933, %941
  %943 = load float**, float*** %26, align 8
  %944 = getelementptr inbounds float*, float** %943, i64 11
  %945 = load float*, float** %944, align 8
  %946 = load i32, i32* %27, align 4
  %947 = sext i32 %946 to i64
  %948 = getelementptr inbounds float, float* %945, i64 %947
  %949 = load float, float* %948, align 4
  %950 = fadd contract float %942, %949
  %951 = fmul contract float %871, %950
  %952 = fadd contract float %870, %951
  %953 = load float*, float** %25, align 8
  %954 = load i32, i32* %27, align 4
  %955 = sext i32 %954 to i64
  %956 = getelementptr inbounds float, float* %953, i64 %955
  store float %952, float* %956, align 4
  br label %957

957:                                              ; preds = %865
  %958 = load i32, i32* %27, align 4
  %959 = add nsw i32 %958, 1
  store i32 %959, i32* %27, align 4
  br label %862, !llvm.loop !29

960:                                              ; preds = %862
  %961 = load float, float* %24, align 4
  %962 = load float*, float** %25, align 8
  %963 = load float*, float** %17, align 8
  %964 = load float**, float*** %26, align 8
  %965 = getelementptr inbounds float*, float** %964, i64 12
  %966 = load float*, float** %965, align 8
  %967 = load float*, float** %18, align 8
  %968 = load float*, float** %19, align 8
  %969 = load float*, float** %20, align 8
  %970 = load float*, float** %21, align 8
  %971 = load float*, float** %22, align 8
  call void @_Z6masterfPfS_S_S_S_S_S_S_(float noundef %961, float* noundef %962, float* noundef %963, float* noundef %966, float* noundef %967, float* noundef %968, float* noundef %969, float* noundef %970, float* noundef %971)
  store i32 0, i32* %27, align 4
  br label %972

972:                                              ; preds = %1047, %960
  %973 = load i32, i32* %27, align 4
  %974 = icmp slt i32 %973, 91
  br i1 %974, label %975, label %1050

975:                                              ; preds = %972
  %976 = load float*, float** %14, align 8
  %977 = load i32, i32* %27, align 4
  %978 = sext i32 %977 to i64
  %979 = getelementptr inbounds float, float* %976, i64 %978
  %980 = load float, float* %979, align 4
  %981 = load float, float* %13, align 4
  %982 = load float**, float*** %26, align 8
  %983 = getelementptr inbounds float*, float** %982, i64 0
  %984 = load float*, float** %983, align 8
  %985 = load i32, i32* %27, align 4
  %986 = sext i32 %985 to i64
  %987 = getelementptr inbounds float, float* %984, i64 %986
  %988 = load float, float* %987, align 4
  %989 = load float**, float*** %26, align 8
  %990 = getelementptr inbounds float*, float** %989, i64 10
  %991 = load float*, float** %990, align 8
  %992 = load i32, i32* %27, align 4
  %993 = sext i32 %992 to i64
  %994 = getelementptr inbounds float, float* %991, i64 %993
  %995 = load float, float* %994, align 4
  %996 = fadd contract float %988, %995
  %997 = fmul contract float 0x3FA8FD8FE0000000, %996
  %998 = load float**, float*** %26, align 8
  %999 = getelementptr inbounds float*, float** %998, i64 5
  %1000 = load float*, float** %999, align 8
  %1001 = load i32, i32* %27, align 4
  %1002 = sext i32 %1001 to i64
  %1003 = getelementptr inbounds float, float* %1000, i64 %1002
  %1004 = load float, float* %1003, align 4
  %1005 = fmul contract float 0x3FD4B94BA0000000, %1004
  %1006 = fadd contract float %997, %1005
  %1007 = load float**, float*** %26, align 8
  %1008 = getelementptr inbounds float*, float** %1007, i64 6
  %1009 = load float*, float** %1008, align 8
  %1010 = load i32, i32* %27, align 4
  %1011 = sext i32 %1010 to i64
  %1012 = getelementptr inbounds float, float* %1009, i64 %1011
  %1013 = load float, float* %1012, align 4
  %1014 = load float**, float*** %26, align 8
  %1015 = getelementptr inbounds float*, float** %1014, i64 7
  %1016 = load float*, float** %1015, align 8
  %1017 = load i32, i32* %27, align 4
  %1018 = sext i32 %1017 to i64
  %1019 = getelementptr inbounds float, float* %1016, i64 %1018
  %1020 = load float, float* %1019, align 4
  %1021 = fadd contract float %1013, %1020
  %1022 = fmul contract float 0x3FD0750760000000, %1021
  %1023 = fadd contract float %1006, %1022
  %1024 = load float**, float*** %26, align 8
  %1025 = getelementptr inbounds float*, float** %1024, i64 8
  %1026 = load float*, float** %1025, align 8
  %1027 = load i32, i32* %27, align 4
  %1028 = sext i32 %1027 to i64
  %1029 = getelementptr inbounds float, float* %1026, i64 %1028
  %1030 = load float, float* %1029, align 4
  %1031 = load float**, float*** %26, align 8
  %1032 = getelementptr inbounds float*, float** %1031, i64 9
  %1033 = load float*, float** %1032, align 8
  %1034 = load i32, i32* %27, align 4
  %1035 = sext i32 %1034 to i64
  %1036 = getelementptr inbounds float, float* %1033, i64 %1035
  %1037 = load float, float* %1036, align 4
  %1038 = fadd contract float %1030, %1037
  %1039 = fmul contract float 0x3FA0750760000000, %1038
  %1040 = fadd contract float %1023, %1039
  %1041 = fmul contract float %981, %1040
  %1042 = fadd contract float %980, %1041
  %1043 = load float*, float** %15, align 8
  %1044 = load i32, i32* %27, align 4
  %1045 = sext i32 %1044 to i64
  %1046 = getelementptr inbounds float, float* %1043, i64 %1045
  store float %1042, float* %1046, align 4
  br label %1047

1047:                                             ; preds = %975
  %1048 = load i32, i32* %27, align 4
  %1049 = add nsw i32 %1048, 1
  store i32 %1049, i32* %27, align 4
  br label %972, !llvm.loop !30

1050:                                             ; preds = %972
  store i32 0, i32* %27, align 4
  br label %1051

1051:                                             ; preds = %1092, %1050
  %1052 = load i32, i32* %27, align 4
  %1053 = icmp slt i32 %1052, 91
  br i1 %1053, label %1054, label %1095

1054:                                             ; preds = %1051
  %1055 = load float**, float*** %26, align 8
  %1056 = getelementptr inbounds float*, float** %1055, i64 0
  %1057 = load float*, float** %1056, align 8
  %1058 = load i32, i32* %27, align 4
  %1059 = sext i32 %1058 to i64
  %1060 = getelementptr inbounds float, float* %1057, i64 %1059
  %1061 = load float, float* %1060, align 4
  %1062 = load float**, float*** %26, align 8
  %1063 = getelementptr inbounds float*, float** %1062, i64 10
  %1064 = load float*, float** %1063, align 8
  %1065 = load i32, i32* %27, align 4
  %1066 = sext i32 %1065 to i64
  %1067 = getelementptr inbounds float, float* %1064, i64 %1066
  %1068 = load float, float* %1067, align 4
  %1069 = fadd contract float %1061, %1068
  %1070 = load float**, float*** %26, align 8
  %1071 = getelementptr inbounds float*, float** %1070, i64 11
  %1072 = load float*, float** %1071, align 8
  %1073 = load i32, i32* %27, align 4
  %1074 = sext i32 %1073 to i64
  %1075 = getelementptr inbounds float, float* %1072, i64 %1074
  %1076 = load float, float* %1075, align 4
  %1077 = fsub contract float %1069, %1076
  %1078 = load float**, float*** %26, align 8
  %1079 = getelementptr inbounds float*, float** %1078, i64 12
  %1080 = load float*, float** %1079, align 8
  %1081 = load i32, i32* %27, align 4
  %1082 = sext i32 %1081 to i64
  %1083 = getelementptr inbounds float, float* %1080, i64 %1082
  %1084 = load float, float* %1083, align 4
  %1085 = fsub contract float %1077, %1084
  %1086 = fmul contract float 0xBFA8FD8FE0000000, %1085
  %1087 = call contract noundef float @_ZSt4fabsf(float noundef %1086)
  %1088 = load float*, float** %16, align 8
  %1089 = load i32, i32* %27, align 4
  %1090 = sext i32 %1089 to i64
  %1091 = getelementptr inbounds float, float* %1088, i64 %1090
  store float %1087, float* %1091, align 4
  br label %1092

1092:                                             ; preds = %1054
  %1093 = load i32, i32* %27, align 4
  %1094 = add nsw i32 %1093, 1
  store i32 %1094, i32* %27, align 4
  br label %1051, !llvm.loop !31

1095:                                             ; preds = %1051
  %1096 = load float*, float** %25, align 8
  %1097 = bitcast float* %1096 to i8*
  call void @free(i8* noundef %1097) #11
  %1098 = load float**, float*** %26, align 8
  %1099 = bitcast float** %1098 to i8*
  call void @free(i8* noundef %1099) #11
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #7

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_ZSt4fabsf(float noundef %0) #2 comdat {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = call contract float @llvm.fabs.f32(float %3)
  ret float %4
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_Z6solverPPfS_iS_S_S_S_S_S_(float** noundef %0, float* noundef %1, i32 noundef %2, float* noundef %3, float* noundef %4, float* noundef %5, float* noundef %6, float* noundef %7, float* noundef %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca float**, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca i32, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float*, align 8
  %30 = alloca float*, align 8
  %31 = alloca float*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store float** %0, float*** %11, align 8
  store float* %1, float** %12, align 8
  store i32 %2, i32* %13, align 4
  store float* %3, float** %14, align 8
  store float* %4, float** %15, align 8
  store float* %5, float** %16, align 8
  store float* %6, float** %17, align 8
  store float* %7, float** %18, align 8
  store float* %8, float** %19, align 8
  %35 = call noalias i8* @malloc(i64 noundef 364) #13
  %36 = bitcast i8* %35 to float*
  store float* %36, float** %29, align 8
  %37 = call noalias i8* @malloc(i64 noundef 364) #13
  %38 = bitcast i8* %37 to float*
  store float* %38, float** %30, align 8
  %39 = call noalias i8* @malloc(i64 noundef 364) #13
  %40 = bitcast i8* %39 to float*
  store float* %40, float** %31, align 8
  store float 0x3FC24924A0000000, float* %20, align 4
  store float 1.000000e+00, float* %24, align 4
  %41 = load float, float* %24, align 4
  store float %41, float* %23, align 4
  store i32 0, i32* %26, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %26, align 4
  %44 = sub nsw i32 %42, %43
  %45 = sitofp i32 %44 to float
  %46 = fdiv contract float 1.000000e+01, %45
  store float %46, float* %25, align 4
  %47 = load float*, float** %12, align 8
  %48 = getelementptr inbounds float, float* %47, i64 0
  store float 0.000000e+00, float* %48, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %26, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %9
  %53 = load float, float* %23, align 4
  %54 = fpext float %53 to double
  %55 = fcmp contract ole double %54, 0.000000e+00
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %9
  store i32 -2, i32* %10, align 4
  br label %347

57:                                               ; preds = %52
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %26, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 0, i32* %10, align 4
  br label %347

62:                                               ; preds = %57
  %63 = load float, float* %23, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %26, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sitofp i32 %66 to float
  %68 = fcmp contract ogt float %63, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load i32, i32* %13, align 4
  %71 = sitofp i32 %70 to float
  %72 = load i32, i32* %26, align 4
  %73 = sitofp i32 %72 to float
  %74 = fsub contract float %71, %73
  store float %74, float* %23, align 4
  br label %75

75:                                               ; preds = %69, %62
  store i32 1, i32* %34, align 4
  br label %76

76:                                               ; preds = %337, %75
  %77 = load i32, i32* %34, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp sle i32 %77, %78
  br i1 %79, label %80, label %340

80:                                               ; preds = %76
  %81 = load i32, i32* %34, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sitofp i32 %82 to float
  %84 = load float*, float** %12, align 8
  %85 = load i32, i32* %34, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %84, i64 %86
  store float %83, float* %87, align 4
  %88 = load float, float* %24, align 4
  store float %88, float* %23, align 4
  store float 1.000000e+00, float* %28, align 4
  store i32 0, i32* %33, align 4
  br label %89

89:                                               ; preds = %318, %80
  %90 = load i32, i32* %33, align 4
  %91 = icmp slt i32 %90, 12
  br i1 %91, label %92, label %321

92:                                               ; preds = %89
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store float 4.000000e+00, float* %27, align 4
  %93 = load float*, float** %12, align 8
  %94 = load i32, i32* %34, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %93, i64 %95
  %97 = load float, float* %96, align 4
  %98 = load float, float* %23, align 4
  %99 = load float**, float*** %11, align 8
  %100 = load i32, i32* %34, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float*, float** %99, i64 %102
  %104 = load float*, float** %103, align 8
  %105 = load float**, float*** %11, align 8
  %106 = load i32, i32* %34, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float*, float** %105, i64 %107
  %109 = load float*, float** %108, align 8
  %110 = load float*, float** %29, align 8
  %111 = load float*, float** %14, align 8
  %112 = load float*, float** %15, align 8
  %113 = load float*, float** %16, align 8
  %114 = load float*, float** %17, align 8
  %115 = load float*, float** %18, align 8
  %116 = load float*, float** %19, align 8
  call void @_Z21embedded_fehlberg_7_8ffPfS_S_S_S_S_S_S_S_(float noundef %97, float noundef %98, float* noundef %104, float* noundef %109, float* noundef %110, float* noundef %111, float* noundef %112, float* noundef %113, float* noundef %114, float* noundef %115, float* noundef %116)
  store i32 0, i32* %32, align 4
  br label %117

117:                                              ; preds = %129, %92
  %118 = load i32, i32* %32, align 4
  %119 = icmp slt i32 %118, 91
  br i1 %119, label %120, label %132

120:                                              ; preds = %117
  %121 = load float*, float** %29, align 8
  %122 = load i32, i32* %32, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds float, float* %121, i64 %123
  %125 = load float, float* %124, align 4
  %126 = fcmp contract ogt float %125, 0.000000e+00
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  store i32 1, i32* %21, align 4
  br label %128

128:                                              ; preds = %127, %120
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %32, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %32, align 4
  br label %117, !llvm.loop !32

132:                                              ; preds = %117
  %133 = load i32, i32* %21, align 4
  %134 = icmp ne i32 %133, 1
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store float 4.000000e+00, float* %28, align 4
  br label %321

136:                                              ; preds = %132
  store i32 0, i32* %32, align 4
  br label %137

137:                                              ; preds = %212, %136
  %138 = load i32, i32* %32, align 4
  %139 = icmp slt i32 %138, 91
  br i1 %139, label %140, label %215

140:                                              ; preds = %137
  %141 = load float**, float*** %11, align 8
  %142 = load i32, i32* %34, align 4
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds float*, float** %141, i64 %144
  %146 = load float*, float** %145, align 8
  %147 = load i32, i32* %32, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %146, i64 %148
  %150 = load float, float* %149, align 4
  %151 = fpext float %150 to double
  %152 = fcmp contract oeq double %151, 0.000000e+00
  br i1 %152, label %153, label %159

153:                                              ; preds = %140
  %154 = load float, float* %25, align 4
  %155 = load float*, float** %31, align 8
  %156 = load i32, i32* %32, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds float, float* %155, i64 %157
  store float %154, float* %158, align 4
  br label %175

159:                                              ; preds = %140
  %160 = load float**, float*** %11, align 8
  %161 = load i32, i32* %34, align 4
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds float*, float** %160, i64 %163
  %165 = load float*, float** %164, align 8
  %166 = load i32, i32* %32, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float, float* %165, i64 %167
  %169 = load float, float* %168, align 4
  %170 = call contract noundef float @_ZSt4fabsf(float noundef %169)
  %171 = load float*, float** %31, align 8
  %172 = load i32, i32* %32, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds float, float* %171, i64 %173
  store float %170, float* %174, align 4
  br label %175

175:                                              ; preds = %159, %153
  %176 = load float, float* %25, align 4
  %177 = load float*, float** %31, align 8
  %178 = load i32, i32* %32, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %177, i64 %179
  %181 = load float, float* %180, align 4
  %182 = fmul contract float %176, %181
  %183 = load float*, float** %29, align 8
  %184 = load i32, i32* %32, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float, float* %183, i64 %185
  %187 = load float, float* %186, align 4
  %188 = fdiv contract float %182, %187
  %189 = load float, float* %20, align 4
  %190 = call contract noundef float @_ZSt3powff(float noundef %188, float noundef %189)
  %191 = fpext float %190 to double
  %192 = fmul contract double 8.000000e-01, %191
  %193 = fptrunc double %192 to float
  %194 = load float*, float** %30, align 8
  %195 = load i32, i32* %32, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds float, float* %194, i64 %196
  store float %193, float* %197, align 4
  %198 = load float*, float** %30, align 8
  %199 = load i32, i32* %32, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds float, float* %198, i64 %200
  %202 = load float, float* %201, align 4
  %203 = load float, float* %27, align 4
  %204 = fcmp contract olt float %202, %203
  br i1 %204, label %205, label %211

205:                                              ; preds = %175
  %206 = load float*, float** %30, align 8
  %207 = load i32, i32* %32, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %206, i64 %208
  %210 = load float, float* %209, align 4
  store float %210, float* %27, align 4
  br label %211

211:                                              ; preds = %205, %175
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %32, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %32, align 4
  br label %137, !llvm.loop !33

215:                                              ; preds = %137
  %216 = load float, float* %27, align 4
  %217 = fpext float %216 to double
  %218 = fcmp contract olt double %217, 1.250000e-01
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  br label %223

220:                                              ; preds = %215
  %221 = load float, float* %27, align 4
  %222 = fpext float %221 to double
  br label %223

223:                                              ; preds = %220, %219
  %224 = phi contract double [ 1.250000e-01, %219 ], [ %222, %220 ]
  %225 = fcmp contract olt double %224, 4.000000e+00
  br i1 %225, label %226, label %236

226:                                              ; preds = %223
  %227 = load float, float* %27, align 4
  %228 = fpext float %227 to double
  %229 = fcmp contract olt double %228, 1.250000e-01
  br i1 %229, label %230, label %231

230:                                              ; preds = %226
  br label %234

231:                                              ; preds = %226
  %232 = load float, float* %27, align 4
  %233 = fpext float %232 to double
  br label %234

234:                                              ; preds = %231, %230
  %235 = phi contract double [ 1.250000e-01, %230 ], [ %233, %231 ]
  br label %237

236:                                              ; preds = %223
  br label %237

237:                                              ; preds = %236, %234
  %238 = phi contract double [ %235, %234 ], [ 4.000000e+00, %236 ]
  %239 = fptrunc double %238 to float
  store float %239, float* %28, align 4
  store i32 0, i32* %32, align 4
  br label %240

240:                                              ; preds = %259, %237
  %241 = load i32, i32* %32, align 4
  %242 = icmp slt i32 %241, 91
  br i1 %242, label %243, label %262

243:                                              ; preds = %240
  %244 = load float*, float** %29, align 8
  %245 = load i32, i32* %32, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds float, float* %244, i64 %246
  %248 = load float, float* %247, align 4
  %249 = load float, float* %25, align 4
  %250 = load float*, float** %31, align 8
  %251 = load i32, i32* %32, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds float, float* %250, i64 %252
  %254 = load float, float* %253, align 4
  %255 = fmul contract float %249, %254
  %256 = fcmp contract ogt float %248, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %243
  store i32 1, i32* %22, align 4
  br label %258

258:                                              ; preds = %257, %243
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %32, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %32, align 4
  br label %240, !llvm.loop !34

262:                                              ; preds = %240
  %263 = load i32, i32* %22, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %262
  br label %321

266:                                              ; preds = %262
  %267 = load float, float* %23, align 4
  %268 = load float, float* %28, align 4
  %269 = fmul contract float %267, %268
  store float %269, float* %23, align 4
  %270 = load float, float* %23, align 4
  %271 = fpext float %270 to double
  %272 = fcmp contract oge double %271, 9.000000e-01
  br i1 %272, label %273, label %274

273:                                              ; preds = %266
  store float 0x3FECCCCCC0000000, float* %23, align 4
  br label %274

274:                                              ; preds = %273, %266
  %275 = load float*, float** %12, align 8
  %276 = load i32, i32* %34, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds float, float* %275, i64 %277
  %279 = load float, float* %278, align 4
  %280 = load float, float* %23, align 4
  %281 = fadd contract float %279, %280
  %282 = load i32, i32* %13, align 4
  %283 = sitofp i32 %282 to float
  %284 = fcmp contract ogt float %281, %283
  br i1 %284, label %285, label %294

285:                                              ; preds = %274
  %286 = load i32, i32* %13, align 4
  %287 = sitofp i32 %286 to float
  %288 = load float*, float** %12, align 8
  %289 = load i32, i32* %34, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds float, float* %288, i64 %290
  %292 = load float, float* %291, align 4
  %293 = fsub contract float %287, %292
  store float %293, float* %23, align 4
  br label %317

294:                                              ; preds = %274
  %295 = load float*, float** %12, align 8
  %296 = load i32, i32* %34, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds float, float* %295, i64 %297
  %299 = load float, float* %298, align 4
  %300 = load float, float* %23, align 4
  %301 = fadd contract float %299, %300
  %302 = fpext float %301 to double
  %303 = load float, float* %23, align 4
  %304 = fpext float %303 to double
  %305 = fmul contract double 5.000000e-01, %304
  %306 = fadd contract double %302, %305
  %307 = load i32, i32* %13, align 4
  %308 = sitofp i32 %307 to float
  %309 = fpext float %308 to double
  %310 = fcmp contract ogt double %306, %309
  br i1 %310, label %311, label %316

311:                                              ; preds = %294
  %312 = load float, float* %23, align 4
  %313 = fpext float %312 to double
  %314 = fmul contract double 5.000000e-01, %313
  %315 = fptrunc double %314 to float
  store float %315, float* %23, align 4
  br label %316

316:                                              ; preds = %311, %294
  br label %317

317:                                              ; preds = %316, %285
  br label %318

318:                                              ; preds = %317
  %319 = load i32, i32* %33, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %33, align 4
  br label %89, !llvm.loop !35

321:                                              ; preds = %265, %135, %89
  %322 = load float*, float** %12, align 8
  %323 = load i32, i32* %34, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds float, float* %322, i64 %324
  %326 = load float, float* %325, align 4
  %327 = load float, float* %23, align 4
  %328 = fadd contract float %326, %327
  %329 = load float*, float** %12, align 8
  %330 = load i32, i32* %34, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds float, float* %329, i64 %331
  store float %328, float* %332, align 4
  %333 = load i32, i32* %33, align 4
  %334 = icmp sge i32 %333, 12
  br i1 %334, label %335, label %336

335:                                              ; preds = %321
  store i32 -1, i32* %10, align 4
  br label %347

336:                                              ; preds = %321
  br label %337

337:                                              ; preds = %336
  %338 = load i32, i32* %34, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %34, align 4
  br label %76, !llvm.loop !36

340:                                              ; preds = %76
  %341 = load float*, float** %29, align 8
  %342 = bitcast float* %341 to i8*
  call void @free(i8* noundef %342) #11
  %343 = load float*, float** %30, align 8
  %344 = bitcast float* %343 to i8*
  call void @free(i8* noundef %344) #11
  %345 = load float*, float** %31, align 8
  %346 = bitcast float* %345 to i8*
  call void @free(i8* noundef %346) #11
  store i32 0, i32* %10, align 4
  br label %347

347:                                              ; preds = %340, %335, %61, %56
  %348 = load i32, i32* %10, align 4
  ret i32 %348
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_ZSt3powff(float noundef %0, float noundef %1) #2 comdat {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = call contract float @powf(float noundef %5, float noundef %6) #11
  ret float %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_Z4workii(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float***, align 8
  %17 = alloca float**, align 8
  %18 = alloca float**, align 8
  %19 = alloca float*, align 8
  %20 = alloca i32, align 4
  %21 = alloca float*, align 8
  %22 = alloca i32, align 4
  %23 = alloca float*, align 8
  %24 = alloca i32, align 4
  %25 = alloca float*, align 8
  %26 = alloca i32, align 4
  %27 = alloca float*, align 8
  %28 = alloca %struct._IO_FILE*, align 8
  %29 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %30 = call noundef i64 @_Z8get_timev()
  store i64 %30, i64* %6, align 8
  %31 = call noundef i64 @_Z8get_timev()
  store i64 %31, i64* %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  %35 = mul nsw i32 %32, %34
  %36 = mul nsw i32 %35, 91
  %37 = mul nsw i32 %36, 4
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp sgt i64 %39, 1000000000
  br i1 %40, label %41, label %43

41:                                               ; preds = %2
  %42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([119 x i8], [119 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %466

43:                                               ; preds = %2
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 8
  %47 = call noalias i8* @malloc(i64 noundef %46) #13
  %48 = bitcast i8* %47 to float***
  store float*** %48, float**** %16, align 8
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %84, %43
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %87

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 1, %54
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 8
  %58 = call noalias i8* @malloc(i64 noundef %57) #13
  %59 = bitcast i8* %58 to float**
  %60 = load float***, float**** %16, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float**, float*** %60, i64 %62
  store float** %59, float*** %63, align 8
  store i32 0, i32* %14, align 4
  br label %64

64:                                               ; preds = %80, %53
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 1, %66
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %64
  %70 = call noalias i8* @malloc(i64 noundef 364) #13
  %71 = bitcast i8* %70 to float*
  %72 = load float***, float**** %16, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float**, float*** %72, i64 %74
  %76 = load float**, float*** %75, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float*, float** %76, i64 %78
  store float* %71, float** %79, align 8
  br label %80

80:                                               ; preds = %69
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %14, align 4
  br label %64, !llvm.loop !37

83:                                               ; preds = %64
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %13, align 4
  br label %49, !llvm.loop !38

87:                                               ; preds = %49
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 8
  %91 = call noalias i8* @malloc(i64 noundef %90) #13
  %92 = bitcast i8* %91 to float**
  store float** %92, float*** %17, align 8
  store i32 0, i32* %13, align 4
  br label %93

93:                                               ; preds = %108, %87
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %93
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 1, %98
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 4
  %102 = call noalias i8* @malloc(i64 noundef %101) #13
  %103 = bitcast i8* %102 to float*
  %104 = load float**, float*** %17, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float*, float** %104, i64 %106
  store float* %103, float** %107, align 8
  br label %108

108:                                              ; preds = %97
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  br label %93, !llvm.loop !39

111:                                              ; preds = %93
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 8
  %115 = call noalias i8* @malloc(i64 noundef %114) #13
  %116 = bitcast i8* %115 to float**
  store float** %116, float*** %18, align 8
  store i32 0, i32* %13, align 4
  br label %117

117:                                              ; preds = %128, %111
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %117
  %122 = call noalias i8* @malloc(i64 noundef 72) #13
  %123 = bitcast i8* %122 to float*
  %124 = load float**, float*** %18, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float*, float** %124, i64 %126
  store float* %123, float** %127, align 8
  br label %128

128:                                              ; preds = %121
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %13, align 4
  br label %117, !llvm.loop !40

131:                                              ; preds = %117
  %132 = call noalias i8* @malloc(i64 noundef 12) #13
  %133 = bitcast i8* %132 to float*
  store float* %133, float** %19, align 8
  store i32 364, i32* %20, align 4
  %134 = bitcast float** %21 to i8**
  %135 = load i32, i32* %20, align 4
  %136 = sext i32 %135 to i64
  %137 = call i32 @hipMalloc(i8** noundef %134, i64 noundef %136)
  store i32 364, i32* %22, align 4
  %138 = bitcast float** %23 to i8**
  %139 = load i32, i32* %22, align 4
  %140 = sext i32 %139 to i64
  %141 = call i32 @hipMalloc(i8** noundef %138, i64 noundef %140)
  store i32 72, i32* %24, align 4
  %142 = bitcast float** %25 to i8**
  %143 = load i32, i32* %24, align 4
  %144 = sext i32 %143 to i64
  %145 = call i32 @hipMalloc(i8** noundef %142, i64 noundef %144)
  store i32 12, i32* %26, align 4
  %146 = bitcast float** %27 to i8**
  %147 = load i32, i32* %26, align 4
  %148 = sext i32 %147 to i64
  %149 = call i32 @hipMalloc(i8** noundef %146, i64 noundef %148)
  %150 = call noundef i64 @_Z8get_timev()
  store i64 %150, i64* %8, align 8
  store i32 0, i32* %13, align 4
  br label %151

151:                                              ; preds = %163, %131
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %5, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %166

155:                                              ; preds = %151
  %156 = load float***, float**** %16, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds float**, float*** %156, i64 %158
  %160 = load float**, float*** %159, align 8
  %161 = getelementptr inbounds float*, float** %160, i64 0
  %162 = load float*, float** %161, align 8
  call void @_Z4readPKcPfiii(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), float* noundef %162, i32 noundef 91, i32 noundef 1, i32 noundef 0)
  br label %163

163:                                              ; preds = %155
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %13, align 4
  br label %151, !llvm.loop !41

166:                                              ; preds = %151
  store i32 0, i32* %13, align 4
  br label %167

167:                                              ; preds = %177, %166
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* %5, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %180

171:                                              ; preds = %167
  %172 = load float**, float*** %18, align 8
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float*, float** %172, i64 %174
  %176 = load float*, float** %175, align 8
  call void @_Z4readPKcPfiii(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), float* noundef %176, i32 noundef 18, i32 noundef 1, i32 noundef 0)
  br label %177

177:                                              ; preds = %171
  %178 = load i32, i32* %13, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %13, align 4
  br label %167, !llvm.loop !42

180:                                              ; preds = %167
  %181 = call noundef i64 @_Z8get_timev()
  store i64 %181, i64* %9, align 8
  store i32 0, i32* %13, align 4
  br label %182

182:                                              ; preds = %215, %180
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* %5, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %218

186:                                              ; preds = %182
  %187 = load float***, float**** %16, align 8
  %188 = load i32, i32* %13, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float**, float*** %187, i64 %189
  %191 = load float**, float*** %190, align 8
  %192 = load float**, float*** %17, align 8
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float*, float** %192, i64 %194
  %196 = load float*, float** %195, align 8
  %197 = load i32, i32* %4, align 4
  %198 = load float**, float*** %18, align 8
  %199 = load i32, i32* %13, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds float*, float** %198, i64 %200
  %202 = load float*, float** %201, align 8
  %203 = load float*, float** %19, align 8
  %204 = load float*, float** %21, align 8
  %205 = load float*, float** %23, align 8
  %206 = load float*, float** %25, align 8
  %207 = load float*, float** %27, align 8
  %208 = call noundef i32 @_Z6solverPPfS_iS_S_S_S_S_S_(float** noundef %191, float* noundef %196, i32 noundef %197, float* noundef %202, float* noundef %203, float* noundef %204, float* noundef %205, float* noundef %206, float* noundef %207)
  store i32 %208, i32* %15, align 4
  %209 = load i32, i32* %15, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %186
  %212 = load i32, i32* %15, align 4
  %213 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 noundef %212)
  br label %214

214:                                              ; preds = %211, %186
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %13, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %13, align 4
  br label %182, !llvm.loop !43

218:                                              ; preds = %182
  %219 = call noundef i64 @_Z8get_timev()
  store i64 %219, i64* %10, align 8
  %220 = call %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %220, %struct._IO_FILE** %28, align 8
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** %28, align 8
  %222 = icmp eq %struct._IO_FILE* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %218
  %224 = load %struct._IO_FILE*, %struct._IO_FILE** %28, align 8
  %225 = call i32 @fputs(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), %struct._IO_FILE* noundef %224)
  store i32 -1, i32* %3, align 4
  br label %466

226:                                              ; preds = %218
  store i32 0, i32* %13, align 4
  br label %227

227:                                              ; preds = %275, %226
  %228 = load i32, i32* %13, align 4
  %229 = load i32, i32* %5, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %278

231:                                              ; preds = %227
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** %28, align 8
  %233 = load i32, i32* %13, align 4
  %234 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %232, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 noundef %233)
  store i32 0, i32* %14, align 4
  br label %235

235:                                              ; preds = %271, %231
  %236 = load i32, i32* %14, align 4
  %237 = load i32, i32* %4, align 4
  %238 = add nsw i32 %237, 1
  %239 = icmp slt i32 %236, %238
  br i1 %239, label %240, label %274

240:                                              ; preds = %235
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** %28, align 8
  %242 = load i32, i32* %14, align 4
  %243 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %241, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 noundef %242)
  store i32 0, i32* %29, align 4
  br label %244

244:                                              ; preds = %267, %240
  %245 = load i32, i32* %29, align 4
  %246 = icmp slt i32 %245, 91
  br i1 %246, label %247, label %270

247:                                              ; preds = %244
  %248 = load %struct._IO_FILE*, %struct._IO_FILE** %28, align 8
  %249 = load i32, i32* %13, align 4
  %250 = load i32, i32* %14, align 4
  %251 = load i32, i32* %29, align 4
  %252 = load float***, float**** %16, align 8
  %253 = load i32, i32* %13, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds float**, float*** %252, i64 %254
  %256 = load float**, float*** %255, align 8
  %257 = load i32, i32* %14, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds float*, float** %256, i64 %258
  %260 = load float*, float** %259, align 8
  %261 = load i32, i32* %29, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds float, float* %260, i64 %262
  %264 = load float, float* %263, align 4
  %265 = fpext float %264 to double
  %266 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %248, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 noundef %249, i32 noundef %250, i32 noundef %251, double noundef %265)
  br label %267

267:                                              ; preds = %247
  %268 = load i32, i32* %29, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %29, align 4
  br label %244, !llvm.loop !44

270:                                              ; preds = %244
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %14, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %14, align 4
  br label %235, !llvm.loop !45

274:                                              ; preds = %235
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %13, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %13, align 4
  br label %227, !llvm.loop !46

278:                                              ; preds = %227
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** %28, align 8
  %280 = call i32 @fclose(%struct._IO_FILE* noundef %279)
  store i32 0, i32* %13, align 4
  br label %281

281:                                              ; preds = %312, %278
  %282 = load i32, i32* %13, align 4
  %283 = load i32, i32* %5, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %315

285:                                              ; preds = %281
  store i32 0, i32* %14, align 4
  br label %286

286:                                              ; preds = %302, %285
  %287 = load i32, i32* %14, align 4
  %288 = load i32, i32* %4, align 4
  %289 = add nsw i32 1, %288
  %290 = icmp slt i32 %287, %289
  br i1 %290, label %291, label %305

291:                                              ; preds = %286
  %292 = load float***, float**** %16, align 8
  %293 = load i32, i32* %13, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds float**, float*** %292, i64 %294
  %296 = load float**, float*** %295, align 8
  %297 = load i32, i32* %14, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds float*, float** %296, i64 %298
  %300 = load float*, float** %299, align 8
  %301 = bitcast float* %300 to i8*
  call void @free(i8* noundef %301) #11
  br label %302

302:                                              ; preds = %291
  %303 = load i32, i32* %14, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %14, align 4
  br label %286, !llvm.loop !47

305:                                              ; preds = %286
  %306 = load float***, float**** %16, align 8
  %307 = load i32, i32* %13, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds float**, float*** %306, i64 %308
  %310 = load float**, float*** %309, align 8
  %311 = bitcast float** %310 to i8*
  call void @free(i8* noundef %311) #11
  br label %312

312:                                              ; preds = %305
  %313 = load i32, i32* %13, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %13, align 4
  br label %281, !llvm.loop !48

315:                                              ; preds = %281
  %316 = load float***, float**** %16, align 8
  %317 = bitcast float*** %316 to i8*
  call void @free(i8* noundef %317) #11
  store i32 0, i32* %13, align 4
  br label %318

318:                                              ; preds = %329, %315
  %319 = load i32, i32* %13, align 4
  %320 = load i32, i32* %5, align 4
  %321 = icmp slt i32 %319, %320
  br i1 %321, label %322, label %332

322:                                              ; preds = %318
  %323 = load float**, float*** %17, align 8
  %324 = load i32, i32* %13, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds float*, float** %323, i64 %325
  %327 = load float*, float** %326, align 8
  %328 = bitcast float* %327 to i8*
  call void @free(i8* noundef %328) #11
  br label %329

329:                                              ; preds = %322
  %330 = load i32, i32* %13, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %13, align 4
  br label %318, !llvm.loop !49

332:                                              ; preds = %318
  %333 = load float**, float*** %17, align 8
  %334 = bitcast float** %333 to i8*
  call void @free(i8* noundef %334) #11
  store i32 0, i32* %13, align 4
  br label %335

335:                                              ; preds = %346, %332
  %336 = load i32, i32* %13, align 4
  %337 = load i32, i32* %5, align 4
  %338 = icmp slt i32 %336, %337
  br i1 %338, label %339, label %349

339:                                              ; preds = %335
  %340 = load float**, float*** %18, align 8
  %341 = load i32, i32* %13, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds float*, float** %340, i64 %342
  %344 = load float*, float** %343, align 8
  %345 = bitcast float* %344 to i8*
  call void @free(i8* noundef %345) #11
  br label %346

346:                                              ; preds = %339
  %347 = load i32, i32* %13, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %13, align 4
  br label %335, !llvm.loop !50

349:                                              ; preds = %335
  %350 = load float**, float*** %18, align 8
  %351 = bitcast float** %350 to i8*
  call void @free(i8* noundef %351) #11
  %352 = call noundef i64 @_Z8get_timev()
  store i64 %352, i64* %11, align 8
  %353 = load float*, float** %19, align 8
  %354 = bitcast float* %353 to i8*
  call void @free(i8* noundef %354) #11
  %355 = load float*, float** %21, align 8
  %356 = bitcast float* %355 to i8*
  %357 = call i32 @hipFree(i8* noundef %356)
  %358 = load float*, float** %23, align 8
  %359 = bitcast float* %358 to i8*
  %360 = call i32 @hipFree(i8* noundef %359)
  %361 = load float*, float** %25, align 8
  %362 = bitcast float* %361 to i8*
  %363 = call i32 @hipFree(i8* noundef %362)
  %364 = load float*, float** %27, align 8
  %365 = bitcast float* %364 to i8*
  %366 = call i32 @hipFree(i8* noundef %365)
  %367 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.16, i64 0, i64 0))
  %368 = load i64, i64* %7, align 8
  %369 = load i64, i64* %6, align 8
  %370 = sub nsw i64 %368, %369
  %371 = sitofp i64 %370 to float
  %372 = fdiv contract float %371, 1.000000e+06
  %373 = fpext float %372 to double
  %374 = load i64, i64* %7, align 8
  %375 = load i64, i64* %6, align 8
  %376 = sub nsw i64 %374, %375
  %377 = sitofp i64 %376 to float
  %378 = load i64, i64* %11, align 8
  %379 = load i64, i64* %6, align 8
  %380 = sub nsw i64 %378, %379
  %381 = sitofp i64 %380 to float
  %382 = fdiv contract float %377, %381
  %383 = fmul contract float %382, 1.000000e+02
  %384 = fpext float %383 to double
  %385 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), double noundef %373, double noundef %384)
  %386 = load i64, i64* %8, align 8
  %387 = load i64, i64* %7, align 8
  %388 = sub nsw i64 %386, %387
  %389 = sitofp i64 %388 to float
  %390 = fdiv contract float %389, 1.000000e+06
  %391 = fpext float %390 to double
  %392 = load i64, i64* %8, align 8
  %393 = load i64, i64* %7, align 8
  %394 = sub nsw i64 %392, %393
  %395 = sitofp i64 %394 to float
  %396 = load i64, i64* %11, align 8
  %397 = load i64, i64* %6, align 8
  %398 = sub nsw i64 %396, %397
  %399 = sitofp i64 %398 to float
  %400 = fdiv contract float %395, %399
  %401 = fmul contract float %400, 1.000000e+02
  %402 = fpext float %401 to double
  %403 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.18, i64 0, i64 0), double noundef %391, double noundef %402)
  %404 = load i64, i64* %9, align 8
  %405 = load i64, i64* %8, align 8
  %406 = sub nsw i64 %404, %405
  %407 = sitofp i64 %406 to float
  %408 = fdiv contract float %407, 1.000000e+06
  %409 = fpext float %408 to double
  %410 = load i64, i64* %9, align 8
  %411 = load i64, i64* %8, align 8
  %412 = sub nsw i64 %410, %411
  %413 = sitofp i64 %412 to float
  %414 = load i64, i64* %11, align 8
  %415 = load i64, i64* %6, align 8
  %416 = sub nsw i64 %414, %415
  %417 = sitofp i64 %416 to float
  %418 = fdiv contract float %413, %417
  %419 = fmul contract float %418, 1.000000e+02
  %420 = fpext float %419 to double
  %421 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i64 0, i64 0), double noundef %409, double noundef %420)
  %422 = load i64, i64* %10, align 8
  %423 = load i64, i64* %9, align 8
  %424 = sub nsw i64 %422, %423
  %425 = sitofp i64 %424 to float
  %426 = fdiv contract float %425, 1.000000e+06
  %427 = fpext float %426 to double
  %428 = load i64, i64* %10, align 8
  %429 = load i64, i64* %9, align 8
  %430 = sub nsw i64 %428, %429
  %431 = sitofp i64 %430 to float
  %432 = load i64, i64* %11, align 8
  %433 = load i64, i64* %6, align 8
  %434 = sub nsw i64 %432, %433
  %435 = sitofp i64 %434 to float
  %436 = fdiv contract float %431, %435
  %437 = fmul contract float %436, 1.000000e+02
  %438 = fpext float %437 to double
  %439 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0), double noundef %427, double noundef %438)
  %440 = load i64, i64* %11, align 8
  %441 = load i64, i64* %10, align 8
  %442 = sub nsw i64 %440, %441
  %443 = sitofp i64 %442 to float
  %444 = fdiv contract float %443, 1.000000e+06
  %445 = fpext float %444 to double
  %446 = load i64, i64* %11, align 8
  %447 = load i64, i64* %10, align 8
  %448 = sub nsw i64 %446, %447
  %449 = sitofp i64 %448 to float
  %450 = load i64, i64* %11, align 8
  %451 = load i64, i64* %6, align 8
  %452 = sub nsw i64 %450, %451
  %453 = sitofp i64 %452 to float
  %454 = fdiv contract float %449, %453
  %455 = fmul contract float %454, 1.000000e+02
  %456 = fpext float %455 to double
  %457 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0), double noundef %445, double noundef %456)
  %458 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0))
  %459 = load i64, i64* %11, align 8
  %460 = load i64, i64* %6, align 8
  %461 = sub nsw i64 %459, %460
  %462 = sitofp i64 %461 to float
  %463 = fdiv contract float %462, 1.000000e+06
  %464 = fpext float %463 to double
  %465 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), double noundef %464)
  store i32 0, i32* %3, align 4
  br label %466

466:                                              ; preds = %349, %223, %41
  %467 = load i32, i32* %3, align 4
  ret i32 %467
}

declare i32 @hipMalloc(i8** noundef, i64 noundef) #1

declare i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

declare i32 @hipFree(i8* noundef) #1

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z23__device_stub__solver_2iiPfS_S_S_S_S_S_S_S_(i32 noundef %0, i32 noundef %1, float* noundef %2, float* noundef %3, float* noundef %4, float* noundef %5, float* noundef %6, float* noundef %7, float* noundef %8, float* noundef %9, float* noundef %10) #4 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca %struct.dim3, align 8
  %24 = alloca %struct.dim3, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca { i64, i32 }, align 8
  %28 = alloca { i64, i32 }, align 8
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store float* %2, float** %14, align 8
  store float* %3, float** %15, align 8
  store float* %4, float** %16, align 8
  store float* %5, float** %17, align 8
  store float* %6, float** %18, align 8
  store float* %7, float** %19, align 8
  store float* %8, float** %20, align 8
  store float* %9, float** %21, align 8
  store float* %10, float** %22, align 8
  %29 = alloca i8*, i64 11, align 16
  %30 = bitcast i32* %12 to i8*
  %31 = getelementptr i8*, i8** %29, i32 0
  store i8* %30, i8** %31, align 8
  %32 = bitcast i32* %13 to i8*
  %33 = getelementptr i8*, i8** %29, i32 1
  store i8* %32, i8** %33, align 8
  %34 = bitcast float** %14 to i8*
  %35 = getelementptr i8*, i8** %29, i32 2
  store i8* %34, i8** %35, align 8
  %36 = bitcast float** %15 to i8*
  %37 = getelementptr i8*, i8** %29, i32 3
  store i8* %36, i8** %37, align 8
  %38 = bitcast float** %16 to i8*
  %39 = getelementptr i8*, i8** %29, i32 4
  store i8* %38, i8** %39, align 8
  %40 = bitcast float** %17 to i8*
  %41 = getelementptr i8*, i8** %29, i32 5
  store i8* %40, i8** %41, align 8
  %42 = bitcast float** %18 to i8*
  %43 = getelementptr i8*, i8** %29, i32 6
  store i8* %42, i8** %43, align 8
  %44 = bitcast float** %19 to i8*
  %45 = getelementptr i8*, i8** %29, i32 7
  store i8* %44, i8** %45, align 8
  %46 = bitcast float** %20 to i8*
  %47 = getelementptr i8*, i8** %29, i32 8
  store i8* %46, i8** %47, align 8
  %48 = bitcast float** %21 to i8*
  %49 = getelementptr i8*, i8** %29, i32 9
  store i8* %48, i8** %49, align 8
  %50 = bitcast float** %22 to i8*
  %51 = getelementptr i8*, i8** %29, i32 10
  store i8* %50, i8** %51, align 8
  %52 = call i32 @__hipPopCallConfiguration(%struct.dim3* %23, %struct.dim3* %24, i64* %25, i8** %26)
  %53 = load i64, i64* %25, align 8
  %54 = load i8*, i8** %26, align 8
  %55 = bitcast { i64, i32 }* %27 to i8*
  %56 = bitcast %struct.dim3* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 12, i1 false)
  %57 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %27, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %27, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = bitcast { i64, i32 }* %28 to i8*
  %62 = bitcast %struct.dim3* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 12, i1 false)
  %63 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = bitcast i8* %54 to %struct.ihipStream_t*
  %68 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i32, i32, float*, float*, float*, float*, float*, float*, float*, float*, float*)** @_Z8solver_2iiPfS_S_S_S_S_S_S_S_ to i8*), i64 %58, i32 %60, i64 %64, i32 %66, i8** noundef %29, i64 noundef %53, %struct.ihipStream_t* noundef %67)
  br label %69

69:                                               ; preds = %11
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_Z6work_2ii(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca i64, align 8
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  %21 = alloca i64, align 8
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  %24 = alloca i32, align 4
  %25 = alloca float*, align 8
  %26 = alloca i32, align 4
  %27 = alloca float*, align 8
  %28 = alloca i32, align 4
  %29 = alloca float*, align 8
  %30 = alloca i32, align 4
  %31 = alloca float*, align 8
  %32 = alloca i32, align 4
  %33 = alloca float*, align 8
  %34 = alloca i32, align 4
  %35 = alloca float*, align 8
  %36 = alloca i32, align 4
  %37 = alloca %struct.dim3, align 4
  %38 = alloca %struct.dim3, align 4
  %39 = alloca i32, align 4
  %40 = alloca %struct.dim3, align 4
  %41 = alloca %struct.dim3, align 4
  %42 = alloca { i64, i32 }, align 4
  %43 = alloca { i64, i32 }, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %44 = call noundef i64 @_Z8get_timev()
  store i64 %44, i64* %6, align 8
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %37, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %38, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  %45 = call noundef i64 @_Z8get_timev()
  store i64 %45, i64* %7, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  %49 = mul nsw i32 %46, %48
  %50 = mul nsw i32 %49, 91
  %51 = mul nsw i32 %50, 4
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %13, align 8
  %53 = load i64, i64* %13, align 8
  %54 = icmp sgt i64 %53, 1000000000
  br i1 %54, label %55, label %57

55:                                               ; preds = %2
  %56 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([119 x i8], [119 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %449

57:                                               ; preds = %2
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  %61 = mul nsw i32 %58, %60
  %62 = mul nsw i32 %61, 91
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  store i64 %64, i64* %18, align 8
  %65 = load i64, i64* %18, align 8
  %66 = call noalias i8* @malloc(i64 noundef %65) #13
  %67 = bitcast i8* %66 to float*
  store float* %67, float** %16, align 8
  %68 = bitcast float** %17 to i8**
  %69 = load i64, i64* %18, align 8
  %70 = call i32 @hipMalloc(i8** noundef %68, i64 noundef %69)
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  %74 = mul nsw i32 %71, %73
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  store i64 %76, i64* %21, align 8
  %77 = load i64, i64* %21, align 8
  %78 = call noalias i8* @malloc(i64 noundef %77) #13
  %79 = bitcast i8* %78 to float*
  store float* %79, float** %19, align 8
  %80 = bitcast float** %20 to i8**
  %81 = load i64, i64* %21, align 8
  %82 = call i32 @hipMalloc(i8** noundef %80, i64 noundef %81)
  %83 = load i32, i32* %5, align 4
  %84 = mul nsw i32 %83, 18
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 4
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %24, align 4
  %88 = load i32, i32* %24, align 4
  %89 = sext i32 %88 to i64
  %90 = call noalias i8* @malloc(i64 noundef %89) #13
  %91 = bitcast i8* %90 to float*
  store float* %91, float** %22, align 8
  %92 = bitcast float** %23 to i8**
  %93 = load i32, i32* %24, align 4
  %94 = sext i32 %93 to i64
  %95 = call i32 @hipMalloc(i8** noundef %92, i64 noundef %94)
  %96 = load i32, i32* %5, align 4
  %97 = mul nsw i32 %96, 3
  %98 = sext i32 %97 to i64
  %99 = mul i64 %98, 4
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %26, align 4
  %101 = bitcast float** %25 to i8**
  %102 = load i32, i32* %26, align 4
  %103 = sext i32 %102 to i64
  %104 = call i32 @hipMalloc(i8** noundef %101, i64 noundef %103)
  %105 = load i32, i32* %5, align 4
  %106 = mul nsw i32 %105, 91
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %28, align 4
  %110 = bitcast float** %27 to i8**
  %111 = load i32, i32* %28, align 4
  %112 = sext i32 %111 to i64
  %113 = call i32 @hipMalloc(i8** noundef %110, i64 noundef %112)
  %114 = load i32, i32* %5, align 4
  %115 = mul nsw i32 %114, 91
  %116 = sext i32 %115 to i64
  %117 = mul i64 %116, 4
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %30, align 4
  %119 = bitcast float** %29 to i8**
  %120 = load i32, i32* %30, align 4
  %121 = sext i32 %120 to i64
  %122 = call i32 @hipMalloc(i8** noundef %119, i64 noundef %121)
  %123 = load i32, i32* %5, align 4
  %124 = mul nsw i32 %123, 91
  %125 = sext i32 %124 to i64
  %126 = mul i64 %125, 4
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %32, align 4
  %128 = bitcast float** %31 to i8**
  %129 = load i32, i32* %32, align 4
  %130 = sext i32 %129 to i64
  %131 = call i32 @hipMalloc(i8** noundef %128, i64 noundef %130)
  %132 = load i32, i32* %5, align 4
  %133 = mul nsw i32 %132, 91
  %134 = sext i32 %133 to i64
  %135 = mul i64 %134, 4
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %34, align 4
  %137 = bitcast float** %33 to i8**
  %138 = load i32, i32* %34, align 4
  %139 = sext i32 %138 to i64
  %140 = call i32 @hipMalloc(i8** noundef %137, i64 noundef %139)
  %141 = load i32, i32* %5, align 4
  %142 = mul nsw i32 %141, 13
  %143 = mul nsw i32 %142, 91
  %144 = sext i32 %143 to i64
  %145 = mul i64 %144, 4
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %36, align 4
  %147 = bitcast float** %35 to i8**
  %148 = load i32, i32* %36, align 4
  %149 = sext i32 %148 to i64
  %150 = call i32 @hipMalloc(i8** noundef %147, i64 noundef %149)
  %151 = call noundef i64 @_Z8get_timev()
  store i64 %151, i64* %8, align 8
  store i32 0, i32* %14, align 4
  br label %152

152:                                              ; preds = %166, %57
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %5, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %169

156:                                              ; preds = %152
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* %4, align 4
  %159 = add nsw i32 %158, 1
  %160 = mul nsw i32 %157, %159
  %161 = add nsw i32 %160, 0
  store i32 %161, i32* %15, align 4
  %162 = load float*, float** %19, align 8
  %163 = load i32, i32* %15, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds float, float* %162, i64 %164
  store float 0.000000e+00, float* %165, align 4
  br label %166

166:                                              ; preds = %156
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %14, align 4
  br label %152, !llvm.loop !51

169:                                              ; preds = %152
  %170 = load float*, float** %20, align 8
  %171 = bitcast float* %170 to i8*
  %172 = load float*, float** %19, align 8
  %173 = bitcast float* %172 to i8*
  %174 = load i64, i64* %21, align 8
  %175 = call i32 @hipMemcpy(i8* noundef %171, i8* noundef %173, i64 noundef %174, i32 noundef 1)
  store i32 0, i32* %14, align 4
  br label %176

176:                                              ; preds = %191, %169
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* %5, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %194

180:                                              ; preds = %176
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* %4, align 4
  %183 = add nsw i32 %182, 1
  %184 = mul nsw i32 %183, 91
  %185 = mul nsw i32 %181, %184
  %186 = add nsw i32 %185, 0
  store i32 %186, i32* %15, align 4
  %187 = load float*, float** %16, align 8
  %188 = load i32, i32* %15, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %187, i64 %189
  call void @_Z4readPKcPfiii(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), float* noundef %190, i32 noundef 91, i32 noundef 1, i32 noundef 0)
  br label %191

191:                                              ; preds = %180
  %192 = load i32, i32* %14, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %14, align 4
  br label %176, !llvm.loop !52

194:                                              ; preds = %176
  %195 = load float*, float** %17, align 8
  %196 = bitcast float* %195 to i8*
  %197 = load float*, float** %16, align 8
  %198 = bitcast float* %197 to i8*
  %199 = load i64, i64* %18, align 8
  %200 = call i32 @hipMemcpy(i8* noundef %196, i8* noundef %198, i64 noundef %199, i32 noundef 1)
  store i32 0, i32* %14, align 4
  br label %201

201:                                              ; preds = %212, %194
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* %5, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %215

205:                                              ; preds = %201
  %206 = load i32, i32* %14, align 4
  %207 = mul nsw i32 %206, 18
  store i32 %207, i32* %15, align 4
  %208 = load float*, float** %22, align 8
  %209 = load i32, i32* %15, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds float, float* %208, i64 %210
  call void @_Z4readPKcPfiii(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), float* noundef %211, i32 noundef 18, i32 noundef 1, i32 noundef 0)
  br label %212

212:                                              ; preds = %205
  %213 = load i32, i32* %14, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %14, align 4
  br label %201, !llvm.loop !53

215:                                              ; preds = %201
  %216 = load float*, float** %23, align 8
  %217 = bitcast float* %216 to i8*
  %218 = load float*, float** %22, align 8
  %219 = bitcast float* %218 to i8*
  %220 = load i32, i32* %24, align 4
  %221 = sext i32 %220 to i64
  %222 = call i32 @hipMemcpy(i8* noundef %217, i8* noundef %219, i64 noundef %221, i32 noundef 1)
  %223 = call noundef i64 @_Z8get_timev()
  store i64 %223, i64* %9, align 8
  %224 = load i32, i32* %5, align 4
  %225 = icmp eq i32 %224, 1
  br i1 %225, label %226, label %231

226:                                              ; preds = %215
  %227 = getelementptr inbounds %struct.dim3, %struct.dim3* %37, i32 0, i32 0
  store i32 32, i32* %227, align 4
  %228 = getelementptr inbounds %struct.dim3, %struct.dim3* %37, i32 0, i32 1
  store i32 1, i32* %228, align 4
  %229 = getelementptr inbounds %struct.dim3, %struct.dim3* %38, i32 0, i32 0
  store i32 4, i32* %229, align 4
  %230 = getelementptr inbounds %struct.dim3, %struct.dim3* %38, i32 0, i32 1
  store i32 1, i32* %230, align 4
  br label %250

231:                                              ; preds = %215
  %232 = getelementptr inbounds %struct.dim3, %struct.dim3* %37, i32 0, i32 0
  store i32 32, i32* %232, align 4
  %233 = getelementptr inbounds %struct.dim3, %struct.dim3* %37, i32 0, i32 1
  store i32 1, i32* %233, align 4
  %234 = load i32, i32* %5, align 4
  %235 = getelementptr inbounds %struct.dim3, %struct.dim3* %37, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = udiv i32 %234, %236
  store i32 %237, i32* %39, align 4
  %238 = load i32, i32* %5, align 4
  %239 = getelementptr inbounds %struct.dim3, %struct.dim3* %37, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = urem i32 %238, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %231
  %244 = load i32, i32* %39, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %39, align 4
  br label %246

246:                                              ; preds = %243, %231
  %247 = load i32, i32* %39, align 4
  %248 = getelementptr inbounds %struct.dim3, %struct.dim3* %38, i32 0, i32 0
  store i32 %247, i32* %248, align 4
  %249 = getelementptr inbounds %struct.dim3, %struct.dim3* %38, i32 0, i32 1
  store i32 1, i32* %249, align 4
  br label %250

250:                                              ; preds = %246, %226
  br label %251

251:                                              ; preds = %250
  %252 = bitcast %struct.dim3* %40 to i8*
  %253 = bitcast %struct.dim3* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %252, i8* align 4 %253, i64 12, i1 false)
  %254 = bitcast %struct.dim3* %41 to i8*
  %255 = bitcast %struct.dim3* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %254, i8* align 4 %255, i64 12, i1 false)
  %256 = bitcast { i64, i32 }* %42 to i8*
  %257 = bitcast %struct.dim3* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %256, i8* align 4 %257, i64 12, i1 false)
  %258 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %42, i32 0, i32 0
  %259 = load i64, i64* %258, align 4
  %260 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %42, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = bitcast { i64, i32 }* %43 to i8*
  %263 = bitcast %struct.dim3* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %262, i8* align 4 %263, i64 12, i1 false)
  %264 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %43, i32 0, i32 0
  %265 = load i64, i64* %264, align 4
  %266 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %43, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @__hipPushCallConfiguration(i64 %259, i32 %261, i64 %265, i32 %267, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %282, label %270

270:                                              ; preds = %251
  %271 = load i32, i32* %5, align 4
  %272 = load i32, i32* %4, align 4
  %273 = load float*, float** %20, align 8
  %274 = load float*, float** %17, align 8
  %275 = load float*, float** %23, align 8
  %276 = load float*, float** %25, align 8
  %277 = load float*, float** %27, align 8
  %278 = load float*, float** %29, align 8
  %279 = load float*, float** %31, align 8
  %280 = load float*, float** %33, align 8
  %281 = load float*, float** %35, align 8
  call void @_Z23__device_stub__solver_2iiPfS_S_S_S_S_S_S_S_(i32 noundef %271, i32 noundef %272, float* noundef %273, float* noundef %274, float* noundef %275, float* noundef %276, float* noundef %277, float* noundef %278, float* noundef %279, float* noundef %280, float* noundef %281)
  br label %282

282:                                              ; preds = %270, %251
  br label %283

283:                                              ; preds = %282
  %284 = call noundef i64 @_Z8get_timev()
  store i64 %284, i64* %10, align 8
  %285 = load float*, float** %19, align 8
  %286 = bitcast float* %285 to i8*
  %287 = load float*, float** %20, align 8
  %288 = bitcast float* %287 to i8*
  %289 = load i64, i64* %21, align 8
  %290 = call i32 @hipMemcpy(i8* noundef %286, i8* noundef %288, i64 noundef %289, i32 noundef 2)
  %291 = load float*, float** %16, align 8
  %292 = bitcast float* %291 to i8*
  %293 = load float*, float** %17, align 8
  %294 = bitcast float* %293 to i8*
  %295 = load i64, i64* %18, align 8
  %296 = call i32 @hipMemcpy(i8* noundef %292, i8* noundef %294, i64 noundef %295, i32 noundef 2)
  %297 = call noundef i64 @_Z8get_timev()
  store i64 %297, i64* %11, align 8
  %298 = load float*, float** %16, align 8
  %299 = bitcast float* %298 to i8*
  call void @free(i8* noundef %299) #11
  %300 = load float*, float** %17, align 8
  %301 = bitcast float* %300 to i8*
  %302 = call i32 @hipFree(i8* noundef %301)
  %303 = load float*, float** %19, align 8
  %304 = bitcast float* %303 to i8*
  call void @free(i8* noundef %304) #11
  %305 = load float*, float** %20, align 8
  %306 = bitcast float* %305 to i8*
  %307 = call i32 @hipFree(i8* noundef %306)
  %308 = load float*, float** %22, align 8
  %309 = bitcast float* %308 to i8*
  call void @free(i8* noundef %309) #11
  %310 = load float*, float** %23, align 8
  %311 = bitcast float* %310 to i8*
  %312 = call i32 @hipFree(i8* noundef %311)
  %313 = load float*, float** %25, align 8
  %314 = bitcast float* %313 to i8*
  %315 = call i32 @hipFree(i8* noundef %314)
  %316 = load float*, float** %27, align 8
  %317 = bitcast float* %316 to i8*
  %318 = call i32 @hipFree(i8* noundef %317)
  %319 = load float*, float** %29, align 8
  %320 = bitcast float* %319 to i8*
  %321 = call i32 @hipFree(i8* noundef %320)
  %322 = load float*, float** %31, align 8
  %323 = bitcast float* %322 to i8*
  %324 = call i32 @hipFree(i8* noundef %323)
  %325 = load float*, float** %33, align 8
  %326 = bitcast float* %325 to i8*
  %327 = call i32 @hipFree(i8* noundef %326)
  %328 = load float*, float** %35, align 8
  %329 = bitcast float* %328 to i8*
  %330 = call i32 @hipFree(i8* noundef %329)
  %331 = call noundef i64 @_Z8get_timev()
  store i64 %331, i64* %12, align 8
  %332 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.16, i64 0, i64 0))
  %333 = load i64, i64* %7, align 8
  %334 = load i64, i64* %6, align 8
  %335 = sub nsw i64 %333, %334
  %336 = sitofp i64 %335 to float
  %337 = fdiv contract float %336, 1.000000e+06
  %338 = fpext float %337 to double
  %339 = load i64, i64* %7, align 8
  %340 = load i64, i64* %6, align 8
  %341 = sub nsw i64 %339, %340
  %342 = sitofp i64 %341 to float
  %343 = load i64, i64* %12, align 8
  %344 = load i64, i64* %6, align 8
  %345 = sub nsw i64 %343, %344
  %346 = sitofp i64 %345 to float
  %347 = fdiv contract float %342, %346
  %348 = fmul contract float %347, 1.000000e+02
  %349 = fpext float %348 to double
  %350 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), double noundef %338, double noundef %349)
  %351 = load i64, i64* %8, align 8
  %352 = load i64, i64* %7, align 8
  %353 = sub nsw i64 %351, %352
  %354 = sitofp i64 %353 to float
  %355 = fdiv contract float %354, 1.000000e+06
  %356 = fpext float %355 to double
  %357 = load i64, i64* %8, align 8
  %358 = load i64, i64* %7, align 8
  %359 = sub nsw i64 %357, %358
  %360 = sitofp i64 %359 to float
  %361 = load i64, i64* %12, align 8
  %362 = load i64, i64* %6, align 8
  %363 = sub nsw i64 %361, %362
  %364 = sitofp i64 %363 to float
  %365 = fdiv contract float %360, %364
  %366 = fmul contract float %365, 1.000000e+02
  %367 = fpext float %366 to double
  %368 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.18, i64 0, i64 0), double noundef %356, double noundef %367)
  %369 = load i64, i64* %9, align 8
  %370 = load i64, i64* %8, align 8
  %371 = sub nsw i64 %369, %370
  %372 = sitofp i64 %371 to float
  %373 = fdiv contract float %372, 1.000000e+06
  %374 = fpext float %373 to double
  %375 = load i64, i64* %9, align 8
  %376 = load i64, i64* %8, align 8
  %377 = sub nsw i64 %375, %376
  %378 = sitofp i64 %377 to float
  %379 = load i64, i64* %12, align 8
  %380 = load i64, i64* %6, align 8
  %381 = sub nsw i64 %379, %380
  %382 = sitofp i64 %381 to float
  %383 = fdiv contract float %378, %382
  %384 = fmul contract float %383, 1.000000e+02
  %385 = fpext float %384 to double
  %386 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.24, i64 0, i64 0), double noundef %374, double noundef %385)
  %387 = load i64, i64* %10, align 8
  %388 = load i64, i64* %9, align 8
  %389 = sub nsw i64 %387, %388
  %390 = sitofp i64 %389 to float
  %391 = fdiv contract float %390, 1.000000e+06
  %392 = fpext float %391 to double
  %393 = load i64, i64* %10, align 8
  %394 = load i64, i64* %9, align 8
  %395 = sub nsw i64 %393, %394
  %396 = sitofp i64 %395 to float
  %397 = load i64, i64* %12, align 8
  %398 = load i64, i64* %6, align 8
  %399 = sub nsw i64 %397, %398
  %400 = sitofp i64 %399 to float
  %401 = fdiv contract float %396, %400
  %402 = fmul contract float %401, 1.000000e+02
  %403 = fpext float %402 to double
  %404 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0), double noundef %392, double noundef %403)
  %405 = load i64, i64* %11, align 8
  %406 = load i64, i64* %10, align 8
  %407 = sub nsw i64 %405, %406
  %408 = sitofp i64 %407 to float
  %409 = fdiv contract float %408, 1.000000e+06
  %410 = fpext float %409 to double
  %411 = load i64, i64* %11, align 8
  %412 = load i64, i64* %10, align 8
  %413 = sub nsw i64 %411, %412
  %414 = sitofp i64 %413 to float
  %415 = load i64, i64* %12, align 8
  %416 = load i64, i64* %6, align 8
  %417 = sub nsw i64 %415, %416
  %418 = sitofp i64 %417 to float
  %419 = fdiv contract float %414, %418
  %420 = fmul contract float %419, 1.000000e+02
  %421 = fpext float %420 to double
  %422 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.26, i64 0, i64 0), double noundef %410, double noundef %421)
  %423 = load i64, i64* %12, align 8
  %424 = load i64, i64* %11, align 8
  %425 = sub nsw i64 %423, %424
  %426 = sitofp i64 %425 to float
  %427 = fdiv contract float %426, 1.000000e+06
  %428 = fpext float %427 to double
  %429 = load i64, i64* %12, align 8
  %430 = load i64, i64* %11, align 8
  %431 = sub nsw i64 %429, %430
  %432 = sitofp i64 %431 to float
  %433 = load i64, i64* %12, align 8
  %434 = load i64, i64* %6, align 8
  %435 = sub nsw i64 %433, %434
  %436 = sitofp i64 %435 to float
  %437 = fdiv contract float %432, %436
  %438 = fmul contract float %437, 1.000000e+02
  %439 = fpext float %438 to double
  %440 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0), double noundef %428, double noundef %439)
  %441 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0))
  %442 = load i64, i64* %12, align 8
  %443 = load i64, i64* %6, align 8
  %444 = sub nsw i64 %442, %443
  %445 = sitofp i64 %444 to float
  %446 = fdiv contract float %445, 1.000000e+06
  %447 = fpext float %446 to double
  %448 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), double noundef %447)
  store i32 0, i32* %3, align 4
  br label %449

449:                                              ; preds = %283, %55
  %450 = load i32, i32* %3, align 4
  ret i32 %450
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1) #8 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 5
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = sub nsw i32 %12, 1
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.27, i64 0, i64 0), i32 noundef %13)
  store i32 0, i32* %3, align 4
  br label %61

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @atoi(i8* noundef %18) #14
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.28, i64 0, i64 0), i32 noundef %23)
  store i32 0, i32* %3, align 4
  br label %61

25:                                               ; preds = %15
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 2
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @atoi(i8* noundef %28) #14
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.29, i64 0, i64 0), i32 noundef %33)
  store i32 0, i32* %3, align 4
  br label %61

35:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 3
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @atoi(i8* noundef %38) #14
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.30, i64 0, i64 0), i32 noundef %46)
  store i32 0, i32* %3, align 4
  br label %61

48:                                               ; preds = %42, %35
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call noundef i32 @_Z4workii(i32 noundef %53, i32 noundef %54)
  br label %60

56:                                               ; preds = %49
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call noundef i32 @_Z6work_2ii(i32 noundef %57, i32 noundef %58)
  br label %60

60:                                               ; preds = %56, %52
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %45, %32, %22, %11
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nounwind
declare float @powf(float noundef, float noundef) #3

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i32, float*, float*, float*, float*)** @_Z6kerneliPfS_S_S_ to i8*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %3 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i32, i32, float*, float*, float*, float*, float*, float*, float*, float*, float*)** @_Z8solver_2iiPfS_S_S_S_S_S_S_S_ to i8*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
attributes #2 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nocallback nofree nounwind willreturn }
attributes #6 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { readnone }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readonly willreturn }

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
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
!48 = distinct !{!48, !7}
!49 = distinct !{!49, !7}
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !7}
!52 = distinct !{!52, !7}
!53 = distinct !{!53, !7}
