; ModuleID = 'hotspot.cu'
source_filename = "hotspot.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque

$_ZN4dim3C2Ejjj = comdat any

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
@.str.16 = private unnamed_addr constant [26 x i8] c"unable to allocate memory\00", align 1
@.str.17 = private unnamed_addr constant [94 x i8] c"pyramidHeight: %d\0AgridSize: [%d, %d]\0Aborder:[%d, %d]\0AblockGrid:[%d, %d]\0AtargetBlock:[%d, %d]\0A\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"Start computing the transient temperature\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Ending simulation\0A\00", align 1
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
  %51 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %39, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 noundef %40, double noundef %50) #11
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
  %37 = call i32 @feof(%struct._IO_FILE* noundef %36) #11
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  call void @_Z5fatalPc(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %40

40:                                               ; preds = %39, %32
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %42 = call i32 (i8*, i8*, ...) @sscanf(i8* noundef %41, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), float* noundef %13) #11
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
  call void @exit(i32 noundef 1) #12
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
define dso_local void @_Z3runiPPc(i32 noundef %0, i8** noundef %1) #0 {
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
  %22 = alloca [2 x float*], align 16
  %23 = alloca float*, align 8
  %24 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 60, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 7
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 6
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = load i8**, i8*** %4, align 8
  call void @_Z5usageiPPc(i32 noundef %31, i8** noundef %32)
  br label %33

33:                                               ; preds = %30, %27, %2
  %34 = load i8**, i8*** %4, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @atoi(i8* noundef %36) #13
  store i32 %37, i32* %6, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %33
  %40 = load i8**, i8*** %4, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @atoi(i8* noundef %42) #13
  store i32 %43, i32* %7, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %39
  %46 = load i8**, i8*** %4, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 2
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @atoi(i8* noundef %48) #13
  store i32 %49, i32* %15, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load i8**, i8*** %4, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 3
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @atoi(i8* noundef %54) #13
  store i32 %55, i32* %14, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51, %45, %39, %33
  %58 = load i32, i32* %3, align 4
  %59 = load i8**, i8*** %4, align 8
  call void @_Z5usageiPPc(i32 noundef %58, i8** noundef %59)
  br label %60

60:                                               ; preds = %57, %51
  %61 = load i8**, i8*** %4, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 4
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %11, align 8
  %64 = load i8**, i8*** %4, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 5
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %12, align 8
  %67 = load i32, i32* %3, align 4
  %68 = icmp eq i32 %67, 7
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  %70 = load i8**, i8*** %4, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 6
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %13, align 8
  br label %74

73:                                               ; preds = %60
  store i8* null, i8** %13, align 8
  br label %74

74:                                               ; preds = %73, %69
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = mul nsw i32 %75, %76
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %15, align 4
  %79 = mul nsw i32 %78, 2
  %80 = sdiv i32 %79, 2
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %15, align 4
  %82 = mul nsw i32 %81, 2
  %83 = sdiv i32 %82, 2
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %15, align 4
  %85 = mul nsw i32 %84, 2
  %86 = sub nsw i32 16, %85
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %15, align 4
  %88 = mul nsw i32 %87, 2
  %89 = sub nsw i32 16, %88
  store i32 %89, i32* %19, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %18, align 4
  %92 = sdiv i32 %90, %91
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %18, align 4
  %95 = srem i32 %93, %94
  %96 = icmp eq i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 0, i32 1
  %99 = add nsw i32 %92, %98
  store i32 %99, i32* %20, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %19, align 4
  %102 = sdiv i32 %100, %101
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %19, align 4
  %105 = srem i32 %103, %104
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 0, i32 1
  %109 = add nsw i32 %102, %108
  store i32 %109, i32* %21, align 4
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = mul i64 %111, 4
  %113 = call noalias i8* @malloc(i64 noundef %112) #14
  %114 = bitcast i8* %113 to float*
  store float* %114, float** %8, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 %116, 4
  %118 = call noalias i8* @malloc(i64 noundef %117) #14
  %119 = bitcast i8* %118 to float*
  store float* %119, float** %9, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = call noalias i8* @calloc(i64 noundef %121, i64 noundef 4) #15
  %123 = bitcast i8* %122 to float*
  store float* %123, float** %10, align 8
  %124 = load float*, float** %9, align 8
  %125 = icmp ne float* %124, null
  br i1 %125, label %126, label %132

126:                                              ; preds = %74
  %127 = load float*, float** %8, align 8
  %128 = icmp ne float* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load float*, float** %10, align 8
  %131 = icmp ne float* %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %129, %126, %74
  call void @_Z5fatalPc(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0))
  br label %133

133:                                              ; preds = %132, %129
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* %20, align 4
  %141 = load i32, i32* %21, align 4
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* %19, align 4
  %144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %134, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @.str.17, i64 0, i64 0), i32 noundef %135, i32 noundef %136, i32 noundef %137, i32 noundef %138, i32 noundef %139, i32 noundef %140, i32 noundef %141, i32 noundef %142, i32 noundef %143)
  %145 = load float*, float** %8, align 8
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load i8*, i8** %11, align 8
  call void @_Z9readinputPfiiPc(float* noundef %145, i32 noundef %146, i32 noundef %147, i8* noundef %148)
  %149 = load float*, float** %9, align 8
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %7, align 4
  %152 = load i8*, i8** %12, align 8
  call void @_Z9readinputPfiiPc(float* noundef %149, i32 noundef %150, i32 noundef %151, i8* noundef %152)
  %153 = getelementptr inbounds [2 x float*], [2 x float*]* %22, i64 0, i64 0
  %154 = bitcast float** %153 to i8**
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = mul i64 4, %156
  %158 = call i32 @hipMalloc(i8** noundef %154, i64 noundef %157)
  %159 = getelementptr inbounds [2 x float*], [2 x float*]* %22, i64 0, i64 1
  %160 = bitcast float** %159 to i8**
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = mul i64 4, %162
  %164 = call i32 @hipMalloc(i8** noundef %160, i64 noundef %163)
  %165 = getelementptr inbounds [2 x float*], [2 x float*]* %22, i64 0, i64 0
  %166 = load float*, float** %165, align 16
  %167 = bitcast float* %166 to i8*
  %168 = load float*, float** %8, align 8
  %169 = bitcast float* %168 to i8*
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = mul i64 4, %171
  %173 = call i32 @hipMemcpy(i8* noundef %167, i8* noundef %169, i64 noundef %172, i32 noundef 1)
  %174 = bitcast float** %23 to i8**
  %175 = load i32, i32* %5, align 4
  %176 = sext i32 %175 to i64
  %177 = mul i64 4, %176
  %178 = call i32 @hipMalloc(i8** noundef %174, i64 noundef %177)
  %179 = getelementptr inbounds [2 x float*], [2 x float*]* %22, i64 0, i64 0
  %180 = load float*, float** %179, align 16
  %181 = bitcast float* %180 to i8*
  %182 = load float*, float** %8, align 8
  %183 = bitcast float* %182 to i8*
  %184 = load i32, i32* %5, align 4
  %185 = sext i32 %184 to i64
  %186 = mul i64 4, %185
  %187 = call i32 @hipMemcpy(i8* noundef %181, i8* noundef %183, i64 noundef %186, i32 noundef 1)
  %188 = load float*, float** %23, align 8
  %189 = bitcast float* %188 to i8*
  %190 = load float*, float** %9, align 8
  %191 = bitcast float* %190 to i8*
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = mul i64 4, %193
  %195 = call i32 @hipMemcpy(i8* noundef %189, i8* noundef %191, i64 noundef %194, i32 noundef 1)
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %197 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %196, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0))
  %198 = load float*, float** %23, align 8
  %199 = getelementptr inbounds [2 x float*], [2 x float*]* %22, i64 0, i64 0
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* %20, align 4
  %205 = load i32, i32* %21, align 4
  %206 = load i32, i32* %16, align 4
  %207 = load i32, i32* %17, align 4
  %208 = call noundef i32 @_Z17compute_tran_tempPfPS_iiiiiiii(float* noundef %198, float** noundef %199, i32 noundef %200, i32 noundef %201, i32 noundef %202, i32 noundef %203, i32 noundef %204, i32 noundef %205, i32 noundef %206, i32 noundef %207)
  store i32 %208, i32* %24, align 4
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %210 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %209, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0))
  %211 = load float*, float** %10, align 8
  %212 = bitcast float* %211 to i8*
  %213 = load i32, i32* %24, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [2 x float*], [2 x float*]* %22, i64 0, i64 %214
  %216 = load float*, float** %215, align 8
  %217 = bitcast float* %216 to i8*
  %218 = load i32, i32* %5, align 4
  %219 = sext i32 %218 to i64
  %220 = mul i64 4, %219
  %221 = call i32 @hipMemcpy(i8* noundef %212, i8* noundef %217, i64 noundef %220, i32 noundef 2)
  %222 = load float*, float** %10, align 8
  %223 = load i32, i32* %6, align 4
  %224 = load i32, i32* %7, align 4
  %225 = load i8*, i8** %13, align 8
  call void @_Z11writeoutputPfiiPc(float* noundef %222, i32 noundef %223, i32 noundef %224, i8* noundef %225)
  %226 = load float*, float** %23, align 8
  %227 = bitcast float* %226 to i8*
  %228 = call i32 @hipFree(i8* noundef %227)
  %229 = getelementptr inbounds [2 x float*], [2 x float*]* %22, i64 0, i64 0
  %230 = load float*, float** %229, align 16
  %231 = bitcast float* %230 to i8*
  %232 = call i32 @hipFree(i8* noundef %231)
  %233 = getelementptr inbounds [2 x float*], [2 x float*]* %22, i64 0, i64 1
  %234 = load float*, float** %233, align 8
  %235 = bitcast float* %234 to i8*
  %236 = call i32 @hipFree(i8* noundef %235)
  %237 = load float*, float** %10, align 8
  %238 = bitcast float* %237 to i8*
  call void @free(i8* noundef %238) #11
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #8

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #9

; Function Attrs: nounwind allocsize(0,1)
declare noalias i8* @calloc(i64 noundef, i64 noundef) #10

declare i32 @hipMalloc(i8** noundef, i64 noundef) #1

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #1

declare i32 @hipFree(i8* noundef) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

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
attributes #9 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(0,1) }

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
