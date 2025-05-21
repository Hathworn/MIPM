; ModuleID = 'gaussian.cu'
source_filename = "gaussian.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque

$_ZSt3expf = comdat any

$_ZN4dim3C2Ejjj = comdat any

$_ZSt3absf = comdat any

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
@.str.21 = private unnamed_addr constant [47 x i8] c"Create matrix internally in parse, size = %d \0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"Read file from %s \0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"Matrix m is: \0A\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"Matrix a is: \0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"Array b is: \0A\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"The final solution is: \0A\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_Z4Fan1PfS_ii = constant void (float*, float*, i32, i32)* @_Z19__device_stub__Fan1PfS_ii, align 8
@_Z4Fan2PfS_S_iii = constant void (float*, float*, float*, i32, i32, i32)* @_Z19__device_stub__Fan2PfS_S_iii, align 8
@.str.29 = private unnamed_addr constant [5 x i8] c"Fan2\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"%8.2f \00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"%.2f \00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.34 = private unnamed_addr constant [21 x i8] c"Cuda error: %s: %s.\0A\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"Test Failed\0A\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"out[%d]: %f; b[%d]:%f; diff:%f\0A\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"Test Pass\0A\00", align 1
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
  %4 = call contract float @expf(float noundef %3) #13
  ret float %4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 noundef 512, i32 noundef 4, i32 noundef 4)
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %36

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.9, i64 0, i64 0))
  %23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.11, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  call void @exit(i32 noundef 0) #14
  unreachable

36:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %37

37:                                               ; preds = %123, %36
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %126

41:                                               ; preds = %37
  %42 = load i8**, i8*** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 45
  br i1 %50, label %51, label %122

51:                                               ; preds = %41
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  store i8 %58, i8* %9, align 1
  %59 = load i8, i8* %9, align 1
  %60 = sext i8 %59 to i32
  switch i32 %60, label %121 [
    i32 115, label %61
    i32 102, label %106
    i32 113, label %120
  ]

61:                                               ; preds = %51
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  %64 = load i8**, i8*** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @atoi(i8* noundef %68) #15
  store i32 %69, i32* @Size, align 4
  %70 = load i32, i32* @Size, align 4
  %71 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i64 0, i64 0), i32 noundef %70)
  %72 = load i32, i32* @Size, align 4
  %73 = load i32, i32* @Size, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = call noalias i8* @malloc(i64 noundef %76) #16
  %78 = bitcast i8* %77 to float*
  store float* %78, float** @a, align 8
  %79 = load float*, float** @a, align 8
  %80 = load i32, i32* @Size, align 4
  call void @_Z13create_matrixPfi(float* noundef %79, i32 noundef %80)
  %81 = load i32, i32* @Size, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = call noalias i8* @malloc(i64 noundef %83) #16
  %85 = bitcast i8* %84 to float*
  store float* %85, float** @b, align 8
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %95, %61
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @Size, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load float*, float** @b, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %91, i64 %93
  store float 1.000000e+00, float* %94, align 4
  br label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %86, !llvm.loop !10

98:                                               ; preds = %86
  %99 = load i32, i32* @Size, align 4
  %100 = load i32, i32* @Size, align 4
  %101 = mul nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 4
  %104 = call noalias i8* @malloc(i64 noundef %103) #16
  %105 = bitcast i8* %104 to float*
  store float* %105, float** @m, align 8
  br label %121

106:                                              ; preds = %51
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  %109 = load i8**, i8*** %5, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i8* noundef %113)
  %115 = load i8**, i8*** %5, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  call void @_Z15InitProblemOncePc(i8* noundef %119)
  br label %121

120:                                              ; preds = %51
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %51, %120, %106, %98
  br label %122

122:                                              ; preds = %121, %41
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %37, !llvm.loop !11

126:                                              ; preds = %37
  call void @_Z10InitPerRunv()
  call void @_Z10ForwardSubv()
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %126
  %130 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  %131 = load float*, float** @m, align 8
  %132 = load i32, i32* @Size, align 4
  %133 = load i32, i32* @Size, align 4
  call void @_Z8PrintMatPfii(float* noundef %131, i32 noundef %132, i32 noundef %133)
  %134 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0))
  %135 = load float*, float** @a, align 8
  %136 = load i32, i32* @Size, align 4
  %137 = load i32, i32* @Size, align 4
  call void @_Z8PrintMatPfii(float* noundef %135, i32 noundef %136, i32 noundef %137)
  %138 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  %139 = load float*, float** @b, align 8
  %140 = load i32, i32* @Size, align 4
  call void @_Z8PrintAryPfi(float* noundef %139, i32 noundef %140)
  br label %141

141:                                              ; preds = %129, %126
  call void @_Z7BackSubv()
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0))
  %146 = load float*, float** @finalVec, align 8
  %147 = load i32, i32* @Size, align 4
  call void @_Z8PrintAryPfi(float* noundef %146, i32 noundef %147)
  br label %148

148:                                              ; preds = %144, %141
  call void @_Z12VerifyResultv()
  %149 = load float*, float** @m, align 8
  %150 = bitcast float* %149 to i8*
  call void @free(i8* noundef %150) #13
  %151 = load float*, float** @a, align 8
  %152 = bitcast float* %151 to i8*
  call void @free(i8* noundef %152) #13
  %153 = load float*, float** @b, align 8
  %154 = bitcast float* %153 to i8*
  call void @free(i8* noundef %154) #13
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare i32 @printf(i8* noundef, ...) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #5

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #6

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #7

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z15InitProblemOncePc(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call %struct._IO_FILE* @fopen(i8* noundef %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0))
  store %struct._IO_FILE* %4, %struct._IO_FILE** @fp, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32* noundef @Size)
  %7 = load i32, i32* @Size, align 4
  %8 = load i32, i32* @Size, align 4
  %9 = mul nsw i32 %7, %8
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = call noalias i8* @malloc(i64 noundef %11) #16
  %13 = bitcast i8* %12 to float*
  store float* %13, float** @a, align 8
  %14 = load float*, float** @a, align 8
  %15 = load i32, i32* @Size, align 4
  %16 = load i32, i32* @Size, align 4
  call void @_Z7InitMatPfii(float* noundef %14, i32 noundef %15, i32 noundef %16)
  %17 = load i32, i32* @Size, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = call noalias i8* @malloc(i64 noundef %19) #16
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
  %29 = call noalias i8* @malloc(i64 noundef %28) #16
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
define dso_local void @_Z10ForwardSubv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float*, align 8
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dim3, align 4
  %8 = alloca %struct.dim3, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 4
  %12 = alloca %struct.dim3, align 4
  %13 = alloca %struct.dim3, align 4
  %14 = alloca %struct.dim3, align 4
  %15 = alloca { i64, i32 }, align 4
  %16 = alloca { i64, i32 }, align 4
  %17 = alloca %struct.dim3, align 4
  %18 = alloca %struct.dim3, align 4
  %19 = alloca { i64, i32 }, align 4
  %20 = alloca { i64, i32 }, align 4
  %21 = bitcast float** %2 to i8**
  %22 = load i32, i32* @Size, align 4
  %23 = load i32, i32* @Size, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = call i32 @hipMalloc(i8** noundef %21, i64 noundef %26)
  %28 = bitcast float** %3 to i8**
  %29 = load i32, i32* @Size, align 4
  %30 = load i32, i32* @Size, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = call i32 @hipMalloc(i8** noundef %28, i64 noundef %33)
  %35 = bitcast float** %4 to i8**
  %36 = load i32, i32* @Size, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = call i32 @hipMalloc(i8** noundef %35, i64 noundef %38)
  %40 = load float*, float** %2, align 8
  %41 = bitcast float* %40 to i8*
  %42 = load float*, float** @m, align 8
  %43 = bitcast float* %42 to i8*
  %44 = load i32, i32* @Size, align 4
  %45 = load i32, i32* @Size, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 4
  %49 = call i32 @hipMemcpy(i8* noundef %41, i8* noundef %43, i64 noundef %48, i32 noundef 1)
  %50 = load float*, float** %3, align 8
  %51 = bitcast float* %50 to i8*
  %52 = load float*, float** @a, align 8
  %53 = bitcast float* %52 to i8*
  %54 = load i32, i32* @Size, align 4
  %55 = load i32, i32* @Size, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = call i32 @hipMemcpy(i8* noundef %51, i8* noundef %53, i64 noundef %58, i32 noundef 1)
  %60 = load float*, float** %4, align 8
  %61 = bitcast float* %60 to i8*
  %62 = load float*, float** @b, align 8
  %63 = bitcast float* %62 to i8*
  %64 = load i32, i32* @Size, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = call i32 @hipMemcpy(i8* noundef %61, i8* noundef %63, i64 noundef %66, i32 noundef 1)
  store i32 512, i32* %5, align 4
  %68 = load i32, i32* @Size, align 4
  %69 = load i32, i32* %5, align 4
  %70 = sdiv i32 %68, %69
  %71 = load i32, i32* @Size, align 4
  %72 = load i32, i32* %5, align 4
  %73 = srem i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 0, i32 1
  %78 = add nsw i32 %70, %77
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %5, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %7, i32 noundef %79, i32 noundef 1, i32 noundef 1)
  %80 = load i32, i32* %6, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %8, i32 noundef %80, i32 noundef 1, i32 noundef 1)
  store i32 4, i32* %9, align 4
  %81 = load i32, i32* @Size, align 4
  %82 = load i32, i32* %9, align 4
  %83 = sdiv i32 %81, %82
  %84 = load i32, i32* @Size, align 4
  %85 = load i32, i32* %9, align 4
  %86 = srem i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 0, i32 1
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = add nsw i32 %83, %92
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %11, i32 noundef %94, i32 noundef %95, i32 noundef 1)
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %12, i32 noundef %96, i32 noundef %97, i32 noundef 1)
  store i32 0, i32* %1, align 4
  br label %98

98:                                               ; preds = %162, %0
  %99 = load i32, i32* %1, align 4
  %100 = load i32, i32* @Size, align 4
  %101 = sub nsw i32 %100, 1
  %102 = icmp slt i32 %99, %101
  br i1 %102, label %103, label %165

103:                                              ; preds = %98
  br label %104

104:                                              ; preds = %103
  %105 = bitcast %struct.dim3* %13 to i8*
  %106 = bitcast %struct.dim3* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %105, i8* align 4 %106, i64 12, i1 false)
  %107 = bitcast %struct.dim3* %14 to i8*
  %108 = bitcast %struct.dim3* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %107, i8* align 4 %108, i64 12, i1 false)
  %109 = bitcast { i64, i32 }* %15 to i8*
  %110 = bitcast %struct.dim3* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %109, i8* align 4 %110, i64 12, i1 false)
  %111 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %112 = load i64, i64* %111, align 4
  %113 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = bitcast { i64, i32 }* %16 to i8*
  %116 = bitcast %struct.dim3* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %115, i8* align 4 %116, i64 12, i1 false)
  %117 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %118 = load i64, i64* %117, align 4
  %119 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @__hipPushCallConfiguration(i64 %112, i32 %114, i64 %118, i32 %120, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %104
  %124 = load float*, float** %2, align 8
  %125 = load float*, float** %3, align 8
  %126 = load i32, i32* @Size, align 4
  %127 = load i32, i32* %1, align 4
  call void @_Z19__device_stub__Fan1PfS_ii(float* noundef %124, float* noundef %125, i32 noundef %126, i32 noundef %127)
  br label %128

128:                                              ; preds = %123, %104
  br label %129

129:                                              ; preds = %128
  %130 = call i32 @hipDeviceSynchronize()
  br label %131

131:                                              ; preds = %129
  %132 = bitcast %struct.dim3* %17 to i8*
  %133 = bitcast %struct.dim3* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %132, i8* align 4 %133, i64 12, i1 false)
  %134 = bitcast %struct.dim3* %18 to i8*
  %135 = bitcast %struct.dim3* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %134, i8* align 4 %135, i64 12, i1 false)
  %136 = bitcast { i64, i32 }* %19 to i8*
  %137 = bitcast %struct.dim3* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %136, i8* align 4 %137, i64 12, i1 false)
  %138 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %139 = load i64, i64* %138, align 4
  %140 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = bitcast { i64, i32 }* %20 to i8*
  %143 = bitcast %struct.dim3* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %142, i8* align 4 %143, i64 12, i1 false)
  %144 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 0
  %145 = load i64, i64* %144, align 4
  %146 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @__hipPushCallConfiguration(i64 %139, i32 %141, i64 %145, i32 %147, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %159, label %150

150:                                              ; preds = %131
  %151 = load float*, float** %2, align 8
  %152 = load float*, float** %3, align 8
  %153 = load float*, float** %4, align 8
  %154 = load i32, i32* @Size, align 4
  %155 = load i32, i32* @Size, align 4
  %156 = load i32, i32* %1, align 4
  %157 = sub nsw i32 %155, %156
  %158 = load i32, i32* %1, align 4
  call void @_Z19__device_stub__Fan2PfS_S_iii(float* noundef %151, float* noundef %152, float* noundef %153, i32 noundef %154, i32 noundef %157, i32 noundef %158)
  br label %159

159:                                              ; preds = %150, %131
  br label %160

160:                                              ; preds = %159
  %161 = call i32 @hipDeviceSynchronize()
  call void @_Z14checkCUDAErrorPKc(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160
  %163 = load i32, i32* %1, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %1, align 4
  br label %98, !llvm.loop !13

165:                                              ; preds = %98
  %166 = load float*, float** @m, align 8
  %167 = bitcast float* %166 to i8*
  %168 = load float*, float** %2, align 8
  %169 = bitcast float* %168 to i8*
  %170 = load i32, i32* @Size, align 4
  %171 = load i32, i32* @Size, align 4
  %172 = mul nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  %174 = mul i64 %173, 4
  %175 = call i32 @hipMemcpy(i8* noundef %167, i8* noundef %169, i64 noundef %174, i32 noundef 2)
  %176 = load float*, float** @a, align 8
  %177 = bitcast float* %176 to i8*
  %178 = load float*, float** %3, align 8
  %179 = bitcast float* %178 to i8*
  %180 = load i32, i32* @Size, align 4
  %181 = load i32, i32* @Size, align 4
  %182 = mul nsw i32 %180, %181
  %183 = sext i32 %182 to i64
  %184 = mul i64 %183, 4
  %185 = call i32 @hipMemcpy(i8* noundef %177, i8* noundef %179, i64 noundef %184, i32 noundef 2)
  %186 = load float*, float** @b, align 8
  %187 = bitcast float* %186 to i8*
  %188 = load float*, float** %4, align 8
  %189 = bitcast float* %188 to i8*
  %190 = load i32, i32* @Size, align 4
  %191 = sext i32 %190 to i64
  %192 = mul i64 %191, 4
  %193 = call i32 @hipMemcpy(i8* noundef %187, i8* noundef %189, i64 noundef %192, i32 noundef 2)
  %194 = load float*, float** %2, align 8
  %195 = bitcast float* %194 to i8*
  %196 = call i32 @hipFree(i8* noundef %195)
  %197 = load float*, float** %3, align 8
  %198 = bitcast float* %197 to i8*
  %199 = call i32 @hipFree(i8* noundef %198)
  %200 = load float*, float** %4, align 8
  %201 = bitcast float* %200 to i8*
  %202 = call i32 @hipFree(i8* noundef %201)
  ret void
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
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), double noundef %29)
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
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), double noundef %16)
  br label %18

18:                                               ; preds = %10
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %6, !llvm.loop !16

21:                                               ; preds = %6
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0))
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z7BackSubv() #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @Size, align 4
  %4 = sext i32 %3 to i64
  %5 = mul i64 %4, 4
  %6 = call noalias i8* @malloc(i64 noundef %5) #16
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
  %47 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0))
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
  %66 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i64 0, i64 0), i32 noundef %48, double noundef %50, i32 noundef %51, double noundef %57, double noundef %65)
  br label %73

67:                                               ; preds = %35
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %1, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %1, align 4
  br label %4, !llvm.loop !20

71:                                               ; preds = %4
  %72 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %46
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #8

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
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), float* noundef %28)
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
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), float* noundef %15)
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
define dso_local void @_Z19__device_stub__Fan1PfS_ii(float* noundef %0, float* noundef %1, i32 noundef %2, i32 noundef %3) #9 {
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
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z19__device_stub__Fan2PfS_S_iii(float* noundef %0, float* noundef %1, float* noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #9 {
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
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #11 comdat align 2 {
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
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i64 0, i64 0), i8* noundef %9, i8* noundef %11)
  call void @exit(i32 noundef 1) #14
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
declare float @expf(float noundef) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #12

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
attributes #6 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly nocallback nofree nounwind willreturn }
attributes #11 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind readonly willreturn }
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
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
