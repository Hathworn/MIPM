; ModuleID = 'hip/pathfinder/pathfinder_hip.cu'
source_filename = "hip/pathfinder/pathfinder_hip.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque

$_ZN4dim3C2Ejjj = comdat any

$__hip_gpubin_handle = comdat any

@rows = dso_local global i32 0, align 4
@cols = dso_local global i32 0, align 4
@data = dso_local global i32* null, align 8
@wall = dso_local global i32** null, align 8
@result = dso_local global i32* null, align 8
@resultsRef = dso_local global i32* null, align 8
@pyramid_height = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Usage: dynproc row_len col_len pyramid_height\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"error: %s\0A\00", align 1
@_Z14dynproc_kerneliPiS_S_iiii = constant void (i32, i32*, i32*, i32*, i32, i32, i32, i32)* @_Z29__device_stub__dynproc_kerneliPiS_S_iiii, align 8
@.str.2 = private unnamed_addr constant [92 x i8] c"pyramidHeight: %d\0AgridSize: [%d]\0Aborder:[%d]\0AblockSize: %d\0AblockGrid:[%d]\0AtargetBlock:[%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed results at %d %d %d\0A\00", align 1
@0 = private unnamed_addr constant [30 x i8] c"_Z14dynproc_kerneliPiS_S_iiii\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z4initiPPc(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load i8**, i8*** %4, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @atoi(i8* noundef %15) #12
  store i32 %16, i32* @cols, align 4
  %17 = load i8**, i8*** %4, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 2
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @atoi(i8* noundef %19) #12
  store i32 %20, i32* @rows, align 4
  %21 = load i8**, i8*** %4, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 3
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @atoi(i8* noundef %23) #12
  store i32 %24, i32* @pyramid_height, align 4
  br label %27

25:                                               ; preds = %2
  %26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 noundef 0) #13
  unreachable

27:                                               ; preds = %12
  %28 = load i32, i32* @rows, align 4
  %29 = load i32, i32* @cols, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %31, i64 4)
  %33 = extractvalue { i64, i1 } %32, 1
  %34 = extractvalue { i64, i1 } %32, 0
  %35 = select i1 %33, i64 -1, i64 %34
  %36 = call noalias noundef nonnull i8* @_Znam(i64 noundef %35) #14
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** @data, align 8
  %38 = load i32, i32* @rows, align 4
  %39 = sext i32 %38 to i64
  %40 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %39, i64 8)
  %41 = extractvalue { i64, i1 } %40, 1
  %42 = extractvalue { i64, i1 } %40, 0
  %43 = select i1 %41, i64 -1, i64 %42
  %44 = call noalias noundef nonnull i8* @_Znam(i64 noundef %43) #14
  %45 = bitcast i8* %44 to i32**
  store i32** %45, i32*** @wall, align 8
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %61, %27
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @rows, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load i32*, i32** @data, align 8
  %52 = load i32, i32* @cols, align 4
  %53 = load i32, i32* %5, align 4
  %54 = mul nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load i32**, i32*** @wall, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  store i32* %56, i32** %60, align 8
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %46, !llvm.loop !6

64:                                               ; preds = %46
  %65 = load i32, i32* @cols, align 4
  %66 = sext i32 %65 to i64
  %67 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %66, i64 4)
  %68 = extractvalue { i64, i1 } %67, 1
  %69 = extractvalue { i64, i1 } %67, 0
  %70 = select i1 %68, i64 -1, i64 %69
  %71 = call noalias noundef nonnull i8* @_Znam(i64 noundef %70) #14
  %72 = bitcast i8* %71 to i32*
  store i32* %72, i32** @result, align 8
  %73 = load i32, i32* @cols, align 4
  %74 = sext i32 %73 to i64
  %75 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %74, i64 4)
  %76 = extractvalue { i64, i1 } %75, 1
  %77 = extractvalue { i64, i1 } %75, 0
  %78 = select i1 %76, i64 -1, i64 %77
  %79 = call noalias noundef nonnull i8* @_Znam(i64 noundef %78) #14
  %80 = bitcast i8* %79 to i32*
  store i32* %80, i32** @resultsRef, align 8
  store i32 9, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  call void @srand(i32 noundef %81) #15
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %106, %64
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @rows, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %109

86:                                               ; preds = %82
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %102, %86
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @cols, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = call i32 @rand() #15
  %93 = srem i32 %92, 10
  %94 = load i32**, i32*** @wall, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %93, i32* %101, align 4
  br label %102

102:                                              ; preds = %91
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %87, !llvm.loop !8

105:                                              ; preds = %87
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %82, !llvm.loop !9

109:                                              ; preds = %82
  store i32 0, i32* %9, align 4
  br label %110

110:                                              ; preds = %126, %109
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @cols, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %129

114:                                              ; preds = %110
  %115 = load i32**, i32*** @wall, align 8
  %116 = getelementptr inbounds i32*, i32** %115, i64 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** @resultsRef, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %121, i32* %125, align 4
  br label %126

126:                                              ; preds = %114
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %110, !llvm.loop !10

129:                                              ; preds = %110
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #1

declare i32 @printf(i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znam(i64 noundef) #5

; Function Attrs: nounwind
declare void @srand(i32 noundef) #6

; Function Attrs: nounwind
declare i32 @rand() #6

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z5fatalPc(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* noundef %4)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z29__device_stub__dynproc_kerneliPiS_S_iiii(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32* noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #7 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.dim3, align 8
  %18 = alloca %struct.dim3, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca { i64, i32 }, align 8
  %22 = alloca { i64, i32 }, align 8
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %23 = alloca i8*, i64 8, align 16
  %24 = bitcast i32* %9 to i8*
  %25 = getelementptr i8*, i8** %23, i32 0
  store i8* %24, i8** %25, align 8
  %26 = bitcast i32** %10 to i8*
  %27 = getelementptr i8*, i8** %23, i32 1
  store i8* %26, i8** %27, align 8
  %28 = bitcast i32** %11 to i8*
  %29 = getelementptr i8*, i8** %23, i32 2
  store i8* %28, i8** %29, align 8
  %30 = bitcast i32** %12 to i8*
  %31 = getelementptr i8*, i8** %23, i32 3
  store i8* %30, i8** %31, align 8
  %32 = bitcast i32* %13 to i8*
  %33 = getelementptr i8*, i8** %23, i32 4
  store i8* %32, i8** %33, align 8
  %34 = bitcast i32* %14 to i8*
  %35 = getelementptr i8*, i8** %23, i32 5
  store i8* %34, i8** %35, align 8
  %36 = bitcast i32* %15 to i8*
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
  %56 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i32, i32*, i32*, i32*, i32, i32, i32, i32)** @_Z14dynproc_kerneliPiS_S_iiii to i8*), i64 %46, i32 %48, i64 %52, i32 %54, i8** noundef %23, i64 noundef %41, %struct.ihipStream_t* noundef %55)
  br label %57

57:                                               ; preds = %8
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_Z9calc_pathPiPS_iiiii(i32* noundef %0, i32** noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dim3, align 4
  %16 = alloca %struct.dim3, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.dim3, align 4
  %22 = alloca %struct.dim3, align 4
  %23 = alloca { i64, i32 }, align 4
  %24 = alloca { i64, i32 }, align 4
  store i32* %0, i32** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %15, i32 noundef 256, i32 noundef 1, i32 noundef 1)
  %25 = load i32, i32* %13, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %16, i32 noundef %25, i32 noundef 1, i32 noundef 1)
  store i32 1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %26

26:                                               ; preds = %87, %7
  %27 = load i32, i32* %19, align 4
  %28 = load i32, i32* %10, align 4
  %29 = sub nsw i32 %28, 1
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %91

31:                                               ; preds = %26
  %32 = load i32, i32* %17, align 4
  store i32 %32, i32* %20, align 4
  %33 = load i32, i32* %18, align 4
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %20, align 4
  store i32 %34, i32* %18, align 4
  br label %35

35:                                               ; preds = %31
  %36 = bitcast %struct.dim3* %21 to i8*
  %37 = bitcast %struct.dim3* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 12, i1 false)
  %38 = bitcast %struct.dim3* %22 to i8*
  %39 = bitcast %struct.dim3* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 12, i1 false)
  %40 = bitcast { i64, i32 }* %23 to i8*
  %41 = bitcast %struct.dim3* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 12, i1 false)
  %42 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 0
  %43 = load i64, i64* %42, align 4
  %44 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = bitcast { i64, i32 }* %24 to i8*
  %47 = bitcast %struct.dim3* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 12, i1 false)
  %48 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 0
  %49 = load i64, i64* %48, align 4
  %50 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %24, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @__hipPushCallConfiguration(i64 %43, i32 %45, i64 %49, i32 %51, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %85, label %54

54:                                               ; preds = %35
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %19, align 4
  %58 = sub nsw i32 %56, %57
  %59 = sub nsw i32 %58, 1
  %60 = icmp sle i32 %55, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %12, align 4
  br label %68

63:                                               ; preds = %54
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %19, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sub nsw i32 %66, 1
  br label %68

68:                                               ; preds = %63, %61
  %69 = phi i32 [ %62, %61 ], [ %67, %63 ]
  %70 = load i32*, i32** %8, align 8
  %71 = load i32**, i32*** %9, align 8
  %72 = load i32, i32* %17, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = load i32**, i32*** %9, align 8
  %77 = load i32, i32* %18, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %14, align 4
  call void @_Z29__device_stub__dynproc_kerneliPiS_S_iiii(i32 noundef %69, i32* noundef %70, i32* noundef %75, i32* noundef %80, i32 noundef %81, i32 noundef %82, i32 noundef %83, i32 noundef %84)
  br label %85

85:                                               ; preds = %68, %35
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %19, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %19, align 4
  br label %26, !llvm.loop !11

91:                                               ; preds = %26
  %92 = load i32, i32* %18, align 4
  ret i32 %92
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

declare i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) #2

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1) #10 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i32 @hipGetDeviceCount(i32* noundef %6)
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @hipSetDevice(i32 noundef 0)
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call noundef i32 @_Z3runiPPc(i32 noundef %14, i8** noundef %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  ret i32 %17
}

declare i32 @hipGetDeviceCount(i32* noundef) #2

declare i32 @hipSetDevice(i32 noundef) #2

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_Z3runiPPc(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca [2 x i32*], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i8**, i8*** %4, align 8
  call void @_Z4initiPPc(i32 noundef %20, i8** noundef %21)
  %22 = load i32, i32* @pyramid_height, align 4
  %23 = mul nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @pyramid_height, align 4
  %25 = mul nsw i32 %24, 1
  %26 = mul nsw i32 %25, 2
  %27 = sub nsw i32 256, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @cols, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sdiv i32 %28, %29
  %31 = load i32, i32* @cols, align 4
  %32 = load i32, i32* %7, align 4
  %33 = srem i32 %31, %32
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 1
  %37 = add nsw i32 %30, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @pyramid_height, align 4
  %39 = load i32, i32* @cols, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([92 x i8], [92 x i8]* @.str.2, i64 0, i64 0), i32 noundef %38, i32 noundef %39, i32 noundef %40, i32 noundef 256, i32 noundef %41, i32 noundef %42)
  %44 = load i32, i32* @rows, align 4
  %45 = load i32, i32* @cols, align 4
  %46 = mul nsw i32 %44, %45
  store i32 %46, i32* %11, align 4
  %47 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 0
  %48 = bitcast i32** %47 to i8**
  %49 = load i32, i32* @cols, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 4, %50
  %52 = call i32 @hipMalloc(i8** noundef %48, i64 noundef %51)
  %53 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 1
  %54 = bitcast i32** %53 to i8**
  %55 = load i32, i32* @cols, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 4, %56
  %58 = call i32 @hipMalloc(i8** noundef %54, i64 noundef %57)
  %59 = bitcast i32** %9 to i8**
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @cols, align 4
  %62 = sub nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = mul i64 4, %63
  %65 = call i32 @hipMalloc(i8** noundef %59, i64 noundef %64)
  %66 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 0
  %67 = load i32*, i32** %66, align 16
  %68 = bitcast i32* %67 to i8*
  %69 = load i32*, i32** @data, align 8
  %70 = bitcast i32* %69 to i8*
  %71 = load i32, i32* @cols, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 4, %72
  %74 = call i32 @hipMemcpy(i8* noundef %68, i8* noundef %70, i64 noundef %73, i32 noundef 1)
  %75 = load i32*, i32** %9, align 8
  %76 = bitcast i32* %75 to i8*
  %77 = load i32*, i32** @data, align 8
  %78 = load i32, i32* @cols, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = bitcast i32* %80 to i8*
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @cols, align 4
  %84 = sub nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = mul i64 4, %85
  %87 = call i32 @hipMemcpy(i8* noundef %76, i8* noundef %81, i64 noundef %86, i32 noundef 1)
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 0
  %90 = load i32, i32* @rows, align 4
  %91 = load i32, i32* @cols, align 4
  %92 = load i32, i32* @pyramid_height, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call noundef i32 @_Z9calc_pathPiPS_iiiii(i32* noundef %88, i32** noundef %89, i32 noundef %90, i32 noundef %91, i32 noundef %92, i32 noundef %93, i32 noundef %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32*, i32** @result, align 8
  %97 = bitcast i32* %96 to i8*
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = bitcast i32* %101 to i8*
  %103 = load i32, i32* @cols, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 4, %104
  %106 = call i32 @hipMemcpy(i8* noundef %97, i8* noundef %102, i64 noundef %105, i32 noundef 2)
  %107 = load i32*, i32** @resultsRef, align 8
  store i32* %107, i32** %14, align 8
  %108 = load i32, i32* @cols, align 4
  %109 = sext i32 %108 to i64
  %110 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %109, i64 4)
  %111 = extractvalue { i64, i1 } %110, 1
  %112 = extractvalue { i64, i1 } %110, 0
  %113 = select i1 %111, i64 -1, i64 %112
  %114 = call noalias noundef nonnull i8* @_Znam(i64 noundef %113) #14
  %115 = bitcast i8* %114 to i32*
  store i32* %115, i32** %13, align 8
  store i32 0, i32* %17, align 4
  br label %116

116:                                              ; preds = %203, %2
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* @rows, align 4
  %119 = sub nsw i32 %118, 1
  %120 = icmp slt i32 %117, %119
  br i1 %120, label %121, label %206

121:                                              ; preds = %116
  %122 = load i32*, i32** %13, align 8
  store i32* %122, i32** %15, align 8
  %123 = load i32*, i32** %14, align 8
  store i32* %123, i32** %13, align 8
  %124 = load i32*, i32** %15, align 8
  store i32* %124, i32** %14, align 8
  store i32 0, i32* %18, align 4
  br label %125

125:                                              ; preds = %199, %121
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* @cols, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %202

129:                                              ; preds = %125
  %130 = load i32*, i32** %13, align 8
  %131 = load i32, i32* %18, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* %18, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %157

137:                                              ; preds = %129
  %138 = load i32, i32* %16, align 4
  %139 = load i32*, i32** %13, align 8
  %140 = load i32, i32* %18, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = icmp sle i32 %138, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %137
  %147 = load i32, i32* %16, align 4
  br label %155

148:                                              ; preds = %137
  %149 = load i32*, i32** %13, align 8
  %150 = load i32, i32* %18, align 4
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  %154 = load i32, i32* %153, align 4
  br label %155

155:                                              ; preds = %148, %146
  %156 = phi i32 [ %147, %146 ], [ %154, %148 ]
  store i32 %156, i32* %16, align 4
  br label %157

157:                                              ; preds = %155, %129
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* @cols, align 4
  %160 = sub nsw i32 %159, 1
  %161 = icmp slt i32 %158, %160
  br i1 %161, label %162, label %182

162:                                              ; preds = %157
  %163 = load i32, i32* %16, align 4
  %164 = load i32*, i32** %13, align 8
  %165 = load i32, i32* %18, align 4
  %166 = add nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = icmp sle i32 %163, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %162
  %172 = load i32, i32* %16, align 4
  br label %180

173:                                              ; preds = %162
  %174 = load i32*, i32** %13, align 8
  %175 = load i32, i32* %18, align 4
  %176 = add nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  %179 = load i32, i32* %178, align 4
  br label %180

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %172, %171 ], [ %179, %173 ]
  store i32 %181, i32* %16, align 4
  br label %182

182:                                              ; preds = %180, %157
  %183 = load i32**, i32*** @wall, align 8
  %184 = load i32, i32* %17, align 4
  %185 = add nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32*, i32** %183, i64 %186
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %18, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %16, align 4
  %194 = add nsw i32 %192, %193
  %195 = load i32*, i32** %14, align 8
  %196 = load i32, i32* %18, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32 %194, i32* %198, align 4
  br label %199

199:                                              ; preds = %182
  %200 = load i32, i32* %18, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %18, align 4
  br label %125, !llvm.loop !12

202:                                              ; preds = %125
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %17, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %17, align 4
  br label %116, !llvm.loop !13

206:                                              ; preds = %116
  store i32 0, i32* %19, align 4
  br label %207

207:                                              ; preds = %237, %206
  %208 = load i32, i32* %19, align 4
  %209 = load i32, i32* @cols, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %240

211:                                              ; preds = %207
  %212 = load i32*, i32** @result, align 8
  %213 = load i32, i32* %19, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i32*, i32** %14, align 8
  %218 = load i32, i32* %19, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %216, %221
  br i1 %222, label %223, label %236

223:                                              ; preds = %211
  %224 = load i32, i32* %19, align 4
  %225 = load i32*, i32** @result, align 8
  %226 = load i32, i32* %19, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load i32*, i32** %14, align 8
  %231 = load i32, i32* %19, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 noundef %224, i32 noundef %229, i32 noundef %234)
  store i32 1, i32* %5, align 4
  br label %236

236:                                              ; preds = %223, %211
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %19, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %19, align 4
  br label %207, !llvm.loop !14

240:                                              ; preds = %207
  %241 = load i32*, i32** %9, align 8
  %242 = bitcast i32* %241 to i8*
  %243 = call i32 @hipFree(i8* noundef %242)
  %244 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 0
  %245 = load i32*, i32** %244, align 16
  %246 = bitcast i32* %245 to i8*
  %247 = call i32 @hipFree(i8* noundef %246)
  %248 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 1
  %249 = load i32*, i32** %248, align 8
  %250 = bitcast i32* %249 to i8*
  %251 = call i32 @hipFree(i8* noundef %250)
  %252 = load i32*, i32** @data, align 8
  %253 = icmp eq i32* %252, null
  br i1 %253, label %256, label %254

254:                                              ; preds = %240
  %255 = bitcast i32* %252 to i8*
  call void @_ZdaPv(i8* noundef %255) #16
  br label %256

256:                                              ; preds = %254, %240
  %257 = load i32**, i32*** @wall, align 8
  %258 = icmp eq i32** %257, null
  br i1 %258, label %261, label %259

259:                                              ; preds = %256
  %260 = bitcast i32** %257 to i8*
  call void @_ZdaPv(i8* noundef %260) #16
  br label %261

261:                                              ; preds = %259, %256
  %262 = load i32*, i32** @result, align 8
  %263 = icmp eq i32* %262, null
  br i1 %263, label %266, label %264

264:                                              ; preds = %261
  %265 = bitcast i32* %262 to i8*
  call void @_ZdaPv(i8* noundef %265) #16
  br label %266

266:                                              ; preds = %264, %261
  %267 = load i32*, i32** %14, align 8
  %268 = icmp eq i32* %267, null
  br i1 %268, label %271, label %269

269:                                              ; preds = %266
  %270 = bitcast i32* %267 to i8*
  call void @_ZdaPv(i8* noundef %270) #16
  br label %271

271:                                              ; preds = %269, %266
  %272 = load i32*, i32** %13, align 8
  %273 = icmp eq i32* %272, null
  br i1 %273, label %276, label %274

274:                                              ; preds = %271
  %275 = bitcast i32* %272 to i8*
  call void @_ZdaPv(i8* noundef %275) #16
  br label %276

276:                                              ; preds = %274, %271
  %277 = load i32, i32* %5, align 4
  ret i32 %277
}

declare i32 @hipMalloc(i8** noundef, i64 noundef) #2

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #2

declare i32 @hipFree(i8* noundef) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8* noundef) #11

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i32, i32*, i32*, i32*, i32, i32, i32, i32)** @_Z14dynproc_kerneliPiS_S_iiii to i8*), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nocallback nofree nounwind willreturn }
attributes #9 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { noreturn nounwind }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }

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
