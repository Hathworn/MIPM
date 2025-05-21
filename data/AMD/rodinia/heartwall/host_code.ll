; ModuleID = 'main.cu'
source_filename = "main.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params_common_change = type { float*, i32 }
%struct.params_common = type { i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, float*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.params_unique = type { i32*, i32*, i32*, i32*, float*, i32, i32, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque
%struct.avi_t = type { i64, i64, i64, i64, double, [8 x i8], [8 x i8], i64, i64, [4 x i8], i64, i64, [8 x %struct.track_s], i64, i64, i64, i64, i64, [16 x i8]*, %struct.video_index_entry*, i64, i64, i32, i64, i32, i32 }
%struct.track_s = type { i64, i64, i64, i64, i64, i64, i64, i64, [4 x i8], i64, i64, i64, i64, %struct.audio_index_entry* }
%struct.audio_index_entry = type { i64, i64, i64 }
%struct.video_index_entry = type { i64, i64, i64 }

$_ZN4dim3C2Ejjj = comdat any

$__hip_gpubin_handle = comdat any

@common_change = dso_local global %struct.params_common_change zeroinitializer, align 8
@common = dso_local global %struct.params_common zeroinitializer, align 8
@h_unique = dso_local global [51 x %struct.params_unique] zeroinitializer, align 16
@d_unique = dso_local global %struct.params_unique* null, align 8
@_Z6kernel13params_common20params_common_changeP13params_unique = constant void (%struct.params_common*, float*, i32, %struct.params_unique*)* @_Z21__device_stub__kernel13params_common20params_common_changeP13params_unique, align 8
@stdout = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [22 x i8] c"Total AVI Frames: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Frames Processed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"endoPoints: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"epiPoints: %d\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"\0A---Frame %d---\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"\0A--endo--\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"\0A--epi--\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.9 = private unnamed_addr constant [25 x i8] c"WG size of kernel = %d \0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"ERROR: usage: heartwall <inputfile> <num of frames>\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Error with AVI_open_input_file\00", align 1
@.str.12 = private unnamed_addr constant [83 x i8] c"ERROR: %d is an incorrect number of frames specified, select in the range of 0-%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"frame progress: \00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@0 = private unnamed_addr constant [63 x i8] c"_Z6kernel13params_common20params_common_changeP13params_unique\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z21__device_stub__kernel13params_common20params_common_changeP13params_unique(%struct.params_common* noundef byval(%struct.params_common) align 8 %0, float* %1, i32 %2, %struct.params_unique* noundef %3) #0 {
  %5 = alloca %struct.params_common_change, align 8
  %6 = alloca %struct.params_unique*, align 8
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca { i64, i32 }, align 8
  %12 = alloca { i64, i32 }, align 8
  %13 = bitcast %struct.params_common_change* %5 to { float*, i32 }*
  %14 = getelementptr inbounds { float*, i32 }, { float*, i32 }* %13, i32 0, i32 0
  store float* %1, float** %14, align 8
  %15 = getelementptr inbounds { float*, i32 }, { float*, i32 }* %13, i32 0, i32 1
  store i32 %2, i32* %15, align 8
  store %struct.params_unique* %3, %struct.params_unique** %6, align 8
  %16 = alloca i8*, i64 3, align 16
  %17 = bitcast %struct.params_common* %0 to i8*
  %18 = getelementptr i8*, i8** %16, i32 0
  store i8* %17, i8** %18, align 8
  %19 = bitcast %struct.params_common_change* %5 to i8*
  %20 = getelementptr i8*, i8** %16, i32 1
  store i8* %19, i8** %20, align 8
  %21 = bitcast %struct.params_unique** %6 to i8*
  %22 = getelementptr i8*, i8** %16, i32 2
  store i8* %21, i8** %22, align 8
  %23 = call i32 @__hipPopCallConfiguration(%struct.dim3* %7, %struct.dim3* %8, i64* %9, i8** %10)
  %24 = load i64, i64* %9, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = bitcast { i64, i32 }* %11 to i8*
  %27 = bitcast %struct.dim3* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 12, i1 false)
  %28 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = bitcast { i64, i32 }* %12 to i8*
  %33 = bitcast %struct.dim3* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 12, i1 false)
  %34 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = bitcast i8* %25 to %struct.ihipStream_t*
  %39 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (%struct.params_common*, float*, i32, %struct.params_unique*)** @_Z6kernel13params_common20params_common_changeP13params_unique to i8*), i64 %29, i32 %31, i64 %35, i32 %37, i8** noundef %16, i64 noundef %24, %struct.ihipStream_t* noundef %38)
  br label %40

40:                                               ; preds = %4
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z10write_dataiiiPiS_iS_S_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32* noundef %3, i32* noundef %4, i32 noundef %5, i32* noundef %6, i32* noundef %7) #2 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef %21)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef %24)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 noundef %27)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %30 = load i32, i32* %14, align 4
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 noundef %30)
  store i32 0, i32* %18, align 4
  br label %32

32:                                               ; preds = %130, %8
  %33 = load i32, i32* %18, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %133

36:                                               ; preds = %32
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = load i32, i32* %18, align 4
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 noundef %38)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %41 = load i32, i32* %18, align 4
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 noundef %41)
  store i32 0, i32* %17, align 4
  br label %43

43:                                               ; preds = %59, %36
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 %51, %52
  %54 = add nsw i32 %50, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %49, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 noundef %57)
  br label %59

59:                                               ; preds = %47
  %60 = load i32, i32* %17, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %17, align 4
  br label %43, !llvm.loop !6

62:                                               ; preds = %43
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %63, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %65

65:                                               ; preds = %81, %62
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %9, align 4
  %75 = mul nsw i32 %73, %74
  %76 = add nsw i32 %72, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %71, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 noundef %79)
  br label %81

81:                                               ; preds = %69
  %82 = load i32, i32* %17, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %17, align 4
  br label %65, !llvm.loop !8

84:                                               ; preds = %65
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %86 = load i32, i32* %18, align 4
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %85, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 noundef %86)
  store i32 0, i32* %17, align 4
  br label %88

88:                                               ; preds = %104, %84
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %88
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %9, align 4
  %98 = mul nsw i32 %96, %97
  %99 = add nsw i32 %95, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %94, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %93, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 noundef %102)
  br label %104

104:                                              ; preds = %92
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %17, align 4
  br label %88, !llvm.loop !9

107:                                              ; preds = %88
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %108, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %110

110:                                              ; preds = %126, %107
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %129

114:                                              ; preds = %110
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %116 = load i32*, i32** %16, align 8
  %117 = load i32, i32* %18, align 4
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %9, align 4
  %120 = mul nsw i32 %118, %119
  %121 = add nsw i32 %117, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %116, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %115, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 noundef %124)
  br label %126

126:                                              ; preds = %114
  %127 = load i32, i32* %17, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %17, align 4
  br label %110, !llvm.loop !10

129:                                              ; preds = %110
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %18, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %18, align 4
  br label %32, !llvm.loop !11

133:                                              ; preds = %32
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %135 = call i32 @fflush(%struct._IO_FILE* noundef %134)
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %137 = call i32 @fclose(%struct._IO_FILE* noundef %136)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare i32 @fflush(%struct._IO_FILE* noundef) #3

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.dim3, align 4
  %7 = alloca %struct.dim3, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.avi_t*, align 8
  %12 = alloca float*, align 8
  %13 = alloca %struct.dim3, align 4
  %14 = alloca %struct.dim3, align 4
  %15 = alloca { i64, i32 }, align 4
  %16 = alloca { i64, i32 }, align 4
  %17 = alloca %struct.params_common, align 8
  %18 = alloca %struct.params_common_change, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 noundef 256)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %6, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %7, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 3
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0))
  call void @exit(i32 noundef 1) #10
  unreachable

26:                                               ; preds = %2
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call %struct.avi_t* @AVI_open_input_file(i8* noundef %30, i32 noundef 1)
  store %struct.avi_t* %31, %struct.avi_t** %11, align 8
  %32 = load %struct.avi_t*, %struct.avi_t** %11, align 8
  %33 = icmp eq %struct.avi_t* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  call void @AVI_print_error(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %1149

35:                                               ; preds = %26
  %36 = load %struct.avi_t*, %struct.avi_t** %11, align 8
  %37 = call i64 @AVI_video_frames(%struct.avi_t* noundef %36)
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 4), align 8
  %39 = load %struct.avi_t*, %struct.avi_t** %11, align 8
  %40 = call i32 @AVI_video_height(%struct.avi_t* noundef %39)
  store i32 %40, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 5), align 4
  %41 = load %struct.avi_t*, %struct.avi_t** %11, align 8
  %42 = call i32 @AVI_video_width(%struct.avi_t* noundef %41)
  store i32 %42, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 6), align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 5), align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 6), align 8
  %45 = mul nsw i32 %43, %44
  store i32 %45, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 7), align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 7), align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 4, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 8), align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 8), align 8
  %51 = sext i32 %50 to i64
  %52 = call i32 @hipMalloc(i8** noundef bitcast (%struct.params_common_change* @common_change to i8**), i64 noundef %51)
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @atoi(i8* noundef %55) #11
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %35
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 4), align 8
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59, %35
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 4), align 8
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %64, i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.12, i64 0, i64 0), i32 noundef %65, i32 noundef %66)
  store i32 0, i32* %3, align 4
  br label %1149

68:                                               ; preds = %59
  store i32 40, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 0), align 8
  store i32 25, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 1), align 4
  store i32 10, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 2), align 8
  store float 0x3FEBD70A40000000, float* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 3), align 4
  store i32 20, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 9), align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 9), align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 4, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 10), align 8
  %73 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 10), align 8
  %74 = sext i32 %73 to i64
  %75 = call noalias i8* @malloc(i64 noundef %74) #12
  %76 = bitcast i8* %75 to i32*
  store i32* %76, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 11), align 8
  %77 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 11), align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 369, i32* %78, align 4
  %79 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 11), align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  store i32 400, i32* %80, align 4
  %81 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 11), align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32 429, i32* %82, align 4
  %83 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 11), align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  store i32 452, i32* %84, align 4
  %85 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 11), align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  store i32 476, i32* %86, align 4
  %87 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 11), align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 5
  store i32 486, i32* %88, align 4
  %89 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 11), align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 6
  store i32 479, i32* %90, align 4
  %91 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 11), align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 7
  store i32 458, i32* %92, align 4
  %93 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 11), align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 8
  store i32 433, i32* %94, align 4
  %95 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 11), align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 9
  store i32 404, i32* %96, align 4
  %97 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 11), align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 10
  store i32 374, i32* %98, align 4
  %99 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 11), align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 11
  store i32 346, i32* %100, align 4
  %101 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 11), align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 12
  store i32 318, i32* %102, align 4
  %103 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 11), align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 13
  store i32 294, i32* %104, align 4
  %105 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 11), align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 14
  store i32 277, i32* %106, align 4
  %107 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 11), align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 15
  store i32 269, i32* %108, align 4
  %109 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 11), align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 16
  store i32 275, i32* %110, align 4
  %111 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 11), align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 17
  store i32 287, i32* %112, align 4
  %113 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 11), align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 18
  store i32 311, i32* %114, align 4
  %115 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 11), align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 19
  store i32 339, i32* %116, align 4
  %117 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 10), align 8
  %118 = sext i32 %117 to i64
  %119 = call i32 @hipMalloc(i8** noundef bitcast (i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 15) to i8**), i64 noundef %118)
  %120 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 15), align 8
  %121 = bitcast i32* %120 to i8*
  %122 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 11), align 8
  %123 = bitcast i32* %122 to i8*
  %124 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 10), align 8
  %125 = sext i32 %124 to i64
  %126 = call i32 @hipMemcpy(i8* noundef %121, i8* noundef %123, i64 noundef %125, i32 noundef 1)
  %127 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 10), align 8
  %128 = sext i32 %127 to i64
  %129 = call noalias i8* @malloc(i64 noundef %128) #12
  %130 = bitcast i8* %129 to i32*
  store i32* %130, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 12), align 8
  %131 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 12), align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  store i32 408, i32* %132, align 4
  %133 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 12), align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  store i32 406, i32* %134, align 4
  %135 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 12), align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  store i32 397, i32* %136, align 4
  %137 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 12), align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 3
  store i32 383, i32* %138, align 4
  %139 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 12), align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 4
  store i32 354, i32* %140, align 4
  %141 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 12), align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 5
  store i32 322, i32* %142, align 4
  %143 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 12), align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 6
  store i32 294, i32* %144, align 4
  %145 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 12), align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 7
  store i32 270, i32* %146, align 4
  %147 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 12), align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 8
  store i32 250, i32* %148, align 4
  %149 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 12), align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 9
  store i32 237, i32* %150, align 4
  %151 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 12), align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 10
  store i32 235, i32* %152, align 4
  %153 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 12), align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 11
  store i32 241, i32* %154, align 4
  %155 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 12), align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 12
  store i32 254, i32* %156, align 4
  %157 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 12), align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 13
  store i32 273, i32* %158, align 4
  %159 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 12), align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 14
  store i32 300, i32* %160, align 4
  %161 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 12), align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 15
  store i32 328, i32* %162, align 4
  %163 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 12), align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 16
  store i32 356, i32* %164, align 4
  %165 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 12), align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 17
  store i32 383, i32* %166, align 4
  %167 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 12), align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 18
  store i32 401, i32* %168, align 4
  %169 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 12), align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 19
  store i32 411, i32* %170, align 4
  %171 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 10), align 8
  %172 = sext i32 %171 to i64
  %173 = call i32 @hipMalloc(i8** noundef bitcast (i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 16) to i8**), i64 noundef %172)
  %174 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 16), align 8
  %175 = bitcast i32* %174 to i8*
  %176 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 12), align 8
  %177 = bitcast i32* %176 to i8*
  %178 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 10), align 8
  %179 = sext i32 %178 to i64
  %180 = call i32 @hipMemcpy(i8* noundef %175, i8* noundef %177, i64 noundef %179, i32 noundef 1)
  %181 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 10), align 8
  %182 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 4), align 8
  %183 = mul nsw i32 %181, %182
  %184 = sext i32 %183 to i64
  %185 = call noalias i8* @malloc(i64 noundef %184) #12
  %186 = bitcast i8* %185 to i32*
  store i32* %186, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 13), align 8
  %187 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 10), align 8
  %188 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 4), align 8
  %189 = mul nsw i32 %187, %188
  %190 = sext i32 %189 to i64
  %191 = call i32 @hipMalloc(i8** noundef bitcast (i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 17) to i8**), i64 noundef %190)
  %192 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 10), align 8
  %193 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 4), align 8
  %194 = mul nsw i32 %192, %193
  %195 = sext i32 %194 to i64
  %196 = call noalias i8* @malloc(i64 noundef %195) #12
  %197 = bitcast i8* %196 to i32*
  store i32* %197, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 14), align 8
  %198 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 10), align 8
  %199 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 4), align 8
  %200 = mul nsw i32 %198, %199
  %201 = sext i32 %200 to i64
  %202 = call i32 @hipMalloc(i8** noundef bitcast (i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 18) to i8**), i64 noundef %201)
  store i32 31, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 20), align 8
  %203 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 20), align 8
  %204 = sext i32 %203 to i64
  %205 = mul i64 4, %204
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 21), align 4
  %207 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 21), align 4
  %208 = sext i32 %207 to i64
  %209 = call noalias i8* @malloc(i64 noundef %208) #12
  %210 = bitcast i8* %209 to i32*
  store i32* %210, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %211 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  store i32 390, i32* %212, align 4
  %213 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 1
  store i32 419, i32* %214, align 4
  %215 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 2
  store i32 448, i32* %216, align 4
  %217 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 3
  store i32 474, i32* %218, align 4
  %219 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 4
  store i32 501, i32* %220, align 4
  %221 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 5
  store i32 519, i32* %222, align 4
  %223 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 6
  store i32 535, i32* %224, align 4
  %225 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 7
  store i32 542, i32* %226, align 4
  %227 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 8
  store i32 543, i32* %228, align 4
  %229 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 9
  store i32 538, i32* %230, align 4
  %231 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 10
  store i32 528, i32* %232, align 4
  %233 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 11
  store i32 511, i32* %234, align 4
  %235 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 12
  store i32 491, i32* %236, align 4
  %237 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 13
  store i32 466, i32* %238, align 4
  %239 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 14
  store i32 438, i32* %240, align 4
  %241 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 15
  store i32 406, i32* %242, align 4
  %243 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 16
  store i32 376, i32* %244, align 4
  %245 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 17
  store i32 347, i32* %246, align 4
  %247 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 18
  store i32 318, i32* %248, align 4
  %249 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 19
  store i32 291, i32* %250, align 4
  %251 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 20
  store i32 275, i32* %252, align 4
  %253 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 21
  store i32 259, i32* %254, align 4
  %255 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 22
  store i32 256, i32* %256, align 4
  %257 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 23
  store i32 252, i32* %258, align 4
  %259 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 24
  store i32 252, i32* %260, align 4
  %261 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 25
  store i32 257, i32* %262, align 4
  %263 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 26
  store i32 266, i32* %264, align 4
  %265 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 27
  store i32 283, i32* %266, align 4
  %267 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 28
  store i32 305, i32* %268, align 4
  %269 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 29
  store i32 331, i32* %270, align 4
  %271 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 30
  store i32 360, i32* %272, align 4
  %273 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 21), align 4
  %274 = sext i32 %273 to i64
  %275 = call i32 @hipMalloc(i8** noundef bitcast (i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 26) to i8**), i64 noundef %274)
  %276 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 26), align 8
  %277 = bitcast i32* %276 to i8*
  %278 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %279 = bitcast i32* %278 to i8*
  %280 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 21), align 4
  %281 = sext i32 %280 to i64
  %282 = call i32 @hipMemcpy(i8* noundef %277, i8* noundef %279, i64 noundef %281, i32 noundef 1)
  %283 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 21), align 4
  %284 = sext i32 %283 to i64
  %285 = call noalias i8* @malloc(i64 noundef %284) #12
  %286 = bitcast i8* %285 to i32*
  store i32* %286, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %287 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 0
  store i32 457, i32* %288, align 4
  %289 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 1
  store i32 454, i32* %290, align 4
  %291 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 2
  store i32 446, i32* %292, align 4
  %293 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 3
  store i32 431, i32* %294, align 4
  %295 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 4
  store i32 411, i32* %296, align 4
  %297 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 5
  store i32 388, i32* %298, align 4
  %299 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 6
  store i32 361, i32* %300, align 4
  %301 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 7
  store i32 331, i32* %302, align 4
  %303 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 8
  store i32 301, i32* %304, align 4
  %305 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 9
  store i32 273, i32* %306, align 4
  %307 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 10
  store i32 243, i32* %308, align 4
  %309 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 11
  store i32 218, i32* %310, align 4
  %311 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 12
  store i32 196, i32* %312, align 4
  %313 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 13
  store i32 178, i32* %314, align 4
  %315 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 14
  store i32 166, i32* %316, align 4
  %317 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 15
  store i32 157, i32* %318, align 4
  %319 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 16
  store i32 155, i32* %320, align 4
  %321 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 17
  store i32 165, i32* %322, align 4
  %323 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 18
  store i32 177, i32* %324, align 4
  %325 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 19
  store i32 197, i32* %326, align 4
  %327 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 20
  store i32 218, i32* %328, align 4
  %329 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 21
  store i32 248, i32* %330, align 4
  %331 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 22
  store i32 276, i32* %332, align 4
  %333 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 23
  store i32 304, i32* %334, align 4
  %335 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 24
  store i32 333, i32* %336, align 4
  %337 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 25
  store i32 361, i32* %338, align 4
  %339 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 26
  store i32 391, i32* %340, align 4
  %341 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 27
  store i32 415, i32* %342, align 4
  %343 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 28
  store i32 434, i32* %344, align 4
  %345 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 29
  store i32 448, i32* %346, align 4
  %347 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 30
  store i32 455, i32* %348, align 4
  %349 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 21), align 4
  %350 = sext i32 %349 to i64
  %351 = call i32 @hipMalloc(i8** noundef bitcast (i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 27) to i8**), i64 noundef %350)
  %352 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 27), align 8
  %353 = bitcast i32* %352 to i8*
  %354 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %355 = bitcast i32* %354 to i8*
  %356 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 21), align 4
  %357 = sext i32 %356 to i64
  %358 = call i32 @hipMemcpy(i8* noundef %353, i8* noundef %355, i64 noundef %357, i32 noundef 1)
  %359 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 21), align 4
  %360 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 4), align 8
  %361 = mul nsw i32 %359, %360
  %362 = sext i32 %361 to i64
  %363 = call noalias i8* @malloc(i64 noundef %362) #12
  %364 = bitcast i8* %363 to i32*
  store i32* %364, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 24), align 8
  %365 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 21), align 4
  %366 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 4), align 8
  %367 = mul nsw i32 %365, %366
  %368 = sext i32 %367 to i64
  %369 = call i32 @hipMalloc(i8** noundef bitcast (i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 28) to i8**), i64 noundef %368)
  %370 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 21), align 4
  %371 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 4), align 8
  %372 = mul nsw i32 %370, %371
  %373 = sext i32 %372 to i64
  %374 = call noalias i8* @malloc(i64 noundef %373) #12
  %375 = bitcast i8* %374 to i32*
  store i32* %375, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 25), align 8
  %376 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 21), align 4
  %377 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 4), align 8
  %378 = mul nsw i32 %376, %377
  %379 = sext i32 %378 to i64
  %380 = call i32 @hipMalloc(i8** noundef bitcast (i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 29) to i8**), i64 noundef %379)
  store i32 51, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 31), align 8
  %381 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 1), align 4
  %382 = add nsw i32 %381, 1
  %383 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 1), align 4
  %384 = add nsw i32 %382, %383
  store i32 %384, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 32), align 4
  %385 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 32), align 4
  store i32 %385, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 33), align 8
  %386 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 32), align 4
  %387 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 33), align 8
  %388 = mul nsw i32 %386, %387
  store i32 %388, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 34), align 4
  %389 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 34), align 4
  %390 = sext i32 %389 to i64
  %391 = mul i64 4, %390
  %392 = trunc i64 %391 to i32
  store i32 %392, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 35), align 8
  %393 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 35), align 8
  %394 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 9), align 4
  %395 = mul nsw i32 %393, %394
  %396 = sext i32 %395 to i64
  %397 = call i32 @hipMalloc(i8** noundef bitcast (float** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 19) to i8**), i64 noundef %396)
  %398 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 35), align 8
  %399 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 20), align 8
  %400 = mul nsw i32 %398, %399
  %401 = sext i32 %400 to i64
  %402 = call i32 @hipMalloc(i8** noundef bitcast (float** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 30) to i8**), i64 noundef %401)
  store i32 0, i32* %8, align 4
  br label %403

403:                                              ; preds = %438, %68
  %404 = load i32, i32* %8, align 4
  %405 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 9), align 4
  %406 = icmp slt i32 %404, %405
  br i1 %406, label %407, label %441

407:                                              ; preds = %403
  %408 = load i32, i32* %8, align 4
  %409 = load i32, i32* %8, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %410
  %412 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %411, i32 0, i32 5
  store i32 %408, i32* %412, align 8
  %413 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 15), align 8
  %414 = load i32, i32* %8, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %415
  %417 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %416, i32 0, i32 0
  store i32* %413, i32** %417, align 16
  %418 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 16), align 8
  %419 = load i32, i32* %8, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %420
  %422 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %421, i32 0, i32 1
  store i32* %418, i32** %422, align 8
  %423 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 17), align 8
  %424 = load i32, i32* %8, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %425
  %427 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %426, i32 0, i32 2
  store i32* %423, i32** %427, align 16
  %428 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 18), align 8
  %429 = load i32, i32* %8, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %430
  %432 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %431, i32 0, i32 3
  store i32* %428, i32** %432, align 8
  %433 = load float*, float** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 19), align 8
  %434 = load i32, i32* %8, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %435
  %437 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %436, i32 0, i32 4
  store float* %433, float** %437, align 16
  br label %438

438:                                              ; preds = %407
  %439 = load i32, i32* %8, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %8, align 4
  br label %403, !llvm.loop !12

441:                                              ; preds = %403
  %442 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 9), align 4
  store i32 %442, i32* %8, align 4
  br label %443

443:                                              ; preds = %480, %441
  %444 = load i32, i32* %8, align 4
  %445 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 31), align 8
  %446 = icmp slt i32 %444, %445
  br i1 %446, label %447, label %483

447:                                              ; preds = %443
  %448 = load i32, i32* %8, align 4
  %449 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 9), align 4
  %450 = sub nsw i32 %448, %449
  %451 = load i32, i32* %8, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %452
  %454 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %453, i32 0, i32 5
  store i32 %450, i32* %454, align 8
  %455 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 26), align 8
  %456 = load i32, i32* %8, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %457
  %459 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %458, i32 0, i32 0
  store i32* %455, i32** %459, align 16
  %460 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 27), align 8
  %461 = load i32, i32* %8, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %462
  %464 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %463, i32 0, i32 1
  store i32* %460, i32** %464, align 8
  %465 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 28), align 8
  %466 = load i32, i32* %8, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %467
  %469 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %468, i32 0, i32 2
  store i32* %465, i32** %469, align 16
  %470 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 29), align 8
  %471 = load i32, i32* %8, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %472
  %474 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %473, i32 0, i32 3
  store i32* %470, i32** %474, align 8
  %475 = load float*, float** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 30), align 8
  %476 = load i32, i32* %8, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %477
  %479 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %478, i32 0, i32 4
  store float* %475, float** %479, align 16
  br label %480

480:                                              ; preds = %447
  %481 = load i32, i32* %8, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %8, align 4
  br label %443, !llvm.loop !13

483:                                              ; preds = %443
  %484 = call i32 @hipMalloc(i8** noundef bitcast (%struct.params_unique** @d_unique to i8**), i64 noundef 8160)
  store i32 0, i32* %8, align 4
  br label %485

485:                                              ; preds = %501, %483
  %486 = load i32, i32* %8, align 4
  %487 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 31), align 8
  %488 = icmp slt i32 %486, %487
  br i1 %488, label %489, label %504

489:                                              ; preds = %485
  %490 = load i32, i32* %8, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %491
  %493 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %492, i32 0, i32 5
  %494 = load i32, i32* %493, align 8
  %495 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 34), align 4
  %496 = mul nsw i32 %494, %495
  %497 = load i32, i32* %8, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %498
  %500 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %499, i32 0, i32 6
  store i32 %496, i32* %500, align 4
  br label %501

501:                                              ; preds = %489
  %502 = load i32, i32* %8, align 4
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %8, align 4
  br label %485, !llvm.loop !14

504:                                              ; preds = %485
  %505 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 0), align 8
  %506 = mul nsw i32 2, %505
  %507 = add nsw i32 %506, 1
  store i32 %507, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 36), align 4
  %508 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 0), align 8
  %509 = mul nsw i32 2, %508
  %510 = add nsw i32 %509, 1
  store i32 %510, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 37), align 8
  %511 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 36), align 4
  %512 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 37), align 8
  %513 = mul nsw i32 %511, %512
  store i32 %513, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 38), align 4
  %514 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 38), align 4
  %515 = sext i32 %514 to i64
  %516 = mul i64 4, %515
  %517 = trunc i64 %516 to i32
  store i32 %517, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 39), align 8
  store i32 0, i32* %8, align 4
  br label %518

518:                                              ; preds = %531, %504
  %519 = load i32, i32* %8, align 4
  %520 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 31), align 8
  %521 = icmp slt i32 %519, %520
  br i1 %521, label %522, label %534

522:                                              ; preds = %518
  %523 = load i32, i32* %8, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %524
  %526 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %525, i32 0, i32 7
  %527 = bitcast float** %526 to i8**
  %528 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 39), align 8
  %529 = sext i32 %528 to i64
  %530 = call i32 @hipMalloc(i8** noundef %527, i64 noundef %529)
  br label %531

531:                                              ; preds = %522
  %532 = load i32, i32* %8, align 4
  %533 = add nsw i32 %532, 1
  store i32 %533, i32* %8, align 4
  br label %518, !llvm.loop !15

534:                                              ; preds = %518
  %535 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 32), align 4
  %536 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 36), align 4
  %537 = add nsw i32 %535, %536
  %538 = sub nsw i32 %537, 1
  store i32 %538, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 40), align 4
  %539 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 33), align 8
  %540 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 37), align 8
  %541 = add nsw i32 %539, %540
  %542 = sub nsw i32 %541, 1
  store i32 %542, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 41), align 8
  %543 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 40), align 4
  %544 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 41), align 8
  %545 = mul nsw i32 %543, %544
  store i32 %545, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 42), align 4
  %546 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 42), align 4
  %547 = sext i32 %546 to i64
  %548 = mul i64 4, %547
  %549 = trunc i64 %548 to i32
  store i32 %549, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 43), align 8
  store i32 0, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 44), align 4
  store i32 0, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 45), align 8
  store i32 0, i32* %8, align 4
  br label %550

550:                                              ; preds = %563, %534
  %551 = load i32, i32* %8, align 4
  %552 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 31), align 8
  %553 = icmp slt i32 %551, %552
  br i1 %553, label %554, label %566

554:                                              ; preds = %550
  %555 = load i32, i32* %8, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %556
  %558 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %557, i32 0, i32 8
  %559 = bitcast float** %558 to i8**
  %560 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 43), align 8
  %561 = sext i32 %560 to i64
  %562 = call i32 @hipMalloc(i8** noundef %559, i64 noundef %561)
  br label %563

563:                                              ; preds = %554
  %564 = load i32, i32* %8, align 4
  %565 = add nsw i32 %564, 1
  store i32 %565, i32* %8, align 4
  br label %550, !llvm.loop !16

566:                                              ; preds = %550
  %567 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 32), align 4
  store i32 %567, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 46), align 4
  %568 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 33), align 8
  store i32 %568, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 47), align 8
  %569 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 36), align 4
  %570 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 46), align 4
  %571 = mul nsw i32 2, %570
  %572 = add nsw i32 %569, %571
  store i32 %572, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 48), align 4
  %573 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 37), align 8
  %574 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 47), align 8
  %575 = mul nsw i32 2, %574
  %576 = add nsw i32 %573, %575
  store i32 %576, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 49), align 8
  %577 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 48), align 4
  %578 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 49), align 8
  %579 = mul nsw i32 %577, %578
  store i32 %579, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 50), align 4
  %580 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 50), align 4
  %581 = sext i32 %580 to i64
  %582 = mul i64 4, %581
  %583 = trunc i64 %582 to i32
  store i32 %583, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 51), align 8
  store i32 0, i32* %8, align 4
  br label %584

584:                                              ; preds = %597, %566
  %585 = load i32, i32* %8, align 4
  %586 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 31), align 8
  %587 = icmp slt i32 %585, %586
  br i1 %587, label %588, label %600

588:                                              ; preds = %584
  %589 = load i32, i32* %8, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %590
  %592 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %591, i32 0, i32 10
  %593 = bitcast float** %592 to i8**
  %594 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 51), align 8
  %595 = sext i32 %594 to i64
  %596 = call i32 @hipMalloc(i8** noundef %593, i64 noundef %595)
  br label %597

597:                                              ; preds = %588
  %598 = load i32, i32* %8, align 4
  %599 = add nsw i32 %598, 1
  store i32 %599, i32* %8, align 4
  br label %584, !llvm.loop !17

600:                                              ; preds = %584
  %601 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 32), align 4
  %602 = add nsw i32 1, %601
  store i32 %602, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 56), align 4
  %603 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 48), align 4
  %604 = sub nsw i32 %603, 1
  store i32 %604, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 57), align 8
  store i32 1, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 58), align 4
  %605 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 49), align 8
  store i32 %605, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 59), align 8
  %606 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 57), align 8
  %607 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 56), align 4
  %608 = sub nsw i32 %606, %607
  %609 = add nsw i32 %608, 1
  store i32 %609, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 52), align 4
  %610 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 59), align 8
  %611 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 58), align 4
  %612 = sub nsw i32 %610, %611
  %613 = add nsw i32 %612, 1
  store i32 %613, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 53), align 8
  %614 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 52), align 4
  %615 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 53), align 8
  %616 = mul nsw i32 %614, %615
  store i32 %616, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 54), align 4
  %617 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 54), align 4
  %618 = sext i32 %617 to i64
  %619 = mul i64 4, %618
  %620 = trunc i64 %619 to i32
  store i32 %620, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 55), align 8
  store i32 0, i32* %8, align 4
  br label %621

621:                                              ; preds = %634, %600
  %622 = load i32, i32* %8, align 4
  %623 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 31), align 8
  %624 = icmp slt i32 %622, %623
  br i1 %624, label %625, label %637

625:                                              ; preds = %621
  %626 = load i32, i32* %8, align 4
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %627
  %629 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %628, i32 0, i32 11
  %630 = bitcast float** %629 to i8**
  %631 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 55), align 8
  %632 = sext i32 %631 to i64
  %633 = call i32 @hipMalloc(i8** noundef %630, i64 noundef %632)
  br label %634

634:                                              ; preds = %625
  %635 = load i32, i32* %8, align 4
  %636 = add nsw i32 %635, 1
  store i32 %636, i32* %8, align 4
  br label %621, !llvm.loop !18

637:                                              ; preds = %621
  store i32 1, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 60), align 4
  %638 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 48), align 4
  %639 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 32), align 4
  %640 = sub nsw i32 %638, %639
  %641 = sub nsw i32 %640, 1
  store i32 %641, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 61), align 8
  store i32 1, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 62), align 4
  %642 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 49), align 8
  store i32 %642, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 63), align 8
  %643 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 61), align 8
  %644 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 60), align 4
  %645 = sub nsw i32 %643, %644
  %646 = add nsw i32 %645, 1
  store i32 %646, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 64), align 4
  %647 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 63), align 8
  %648 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 62), align 4
  %649 = sub nsw i32 %647, %648
  %650 = add nsw i32 %649, 1
  store i32 %650, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 65), align 8
  %651 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 64), align 4
  %652 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 65), align 8
  %653 = mul nsw i32 %651, %652
  store i32 %653, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 66), align 4
  %654 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 66), align 4
  %655 = sext i32 %654 to i64
  %656 = mul i64 4, %655
  %657 = trunc i64 %656 to i32
  store i32 %657, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 67), align 8
  store i32 0, i32* %8, align 4
  br label %658

658:                                              ; preds = %671, %637
  %659 = load i32, i32* %8, align 4
  %660 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 31), align 8
  %661 = icmp slt i32 %659, %660
  br i1 %661, label %662, label %674

662:                                              ; preds = %658
  %663 = load i32, i32* %8, align 4
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %664
  %666 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %665, i32 0, i32 12
  %667 = bitcast float** %666 to i8**
  %668 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 67), align 8
  %669 = sext i32 %668 to i64
  %670 = call i32 @hipMalloc(i8** noundef %667, i64 noundef %669)
  br label %671

671:                                              ; preds = %662
  %672 = load i32, i32* %8, align 4
  %673 = add nsw i32 %672, 1
  store i32 %673, i32* %8, align 4
  br label %658, !llvm.loop !19

674:                                              ; preds = %658
  store i32 1, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 72), align 4
  %675 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 64), align 4
  store i32 %675, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 73), align 8
  %676 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 33), align 8
  %677 = add nsw i32 1, %676
  store i32 %677, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 74), align 4
  %678 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 65), align 8
  %679 = sub nsw i32 %678, 1
  store i32 %679, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 75), align 8
  %680 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 73), align 8
  %681 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 72), align 4
  %682 = sub nsw i32 %680, %681
  %683 = add nsw i32 %682, 1
  store i32 %683, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 68), align 4
  %684 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 75), align 8
  %685 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 74), align 4
  %686 = sub nsw i32 %684, %685
  %687 = add nsw i32 %686, 1
  store i32 %687, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 69), align 8
  %688 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 68), align 4
  %689 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 69), align 8
  %690 = mul nsw i32 %688, %689
  store i32 %690, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 70), align 4
  %691 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 70), align 4
  %692 = sext i32 %691 to i64
  %693 = mul i64 4, %692
  %694 = trunc i64 %693 to i32
  store i32 %694, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 71), align 8
  store i32 0, i32* %8, align 4
  br label %695

695:                                              ; preds = %708, %674
  %696 = load i32, i32* %8, align 4
  %697 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 31), align 8
  %698 = icmp slt i32 %696, %697
  br i1 %698, label %699, label %711

699:                                              ; preds = %695
  %700 = load i32, i32* %8, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %701
  %703 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %702, i32 0, i32 13
  %704 = bitcast float** %703 to i8**
  %705 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 71), align 8
  %706 = sext i32 %705 to i64
  %707 = call i32 @hipMalloc(i8** noundef %704, i64 noundef %706)
  br label %708

708:                                              ; preds = %699
  %709 = load i32, i32* %8, align 4
  %710 = add nsw i32 %709, 1
  store i32 %710, i32* %8, align 4
  br label %695, !llvm.loop !20

711:                                              ; preds = %695
  store i32 1, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 76), align 4
  %712 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 64), align 4
  store i32 %712, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 77), align 8
  store i32 1, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 78), align 4
  %713 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 65), align 8
  %714 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 33), align 8
  %715 = sub nsw i32 %713, %714
  %716 = sub nsw i32 %715, 1
  store i32 %716, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 79), align 8
  %717 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 77), align 8
  %718 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 76), align 4
  %719 = sub nsw i32 %717, %718
  %720 = add nsw i32 %719, 1
  store i32 %720, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 80), align 4
  %721 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 79), align 8
  %722 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 78), align 4
  %723 = sub nsw i32 %721, %722
  %724 = add nsw i32 %723, 1
  store i32 %724, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 81), align 8
  %725 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 80), align 4
  %726 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 81), align 8
  %727 = mul nsw i32 %725, %726
  store i32 %727, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 82), align 4
  %728 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 82), align 4
  %729 = sext i32 %728 to i64
  %730 = mul i64 4, %729
  %731 = trunc i64 %730 to i32
  store i32 %731, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 83), align 8
  store i32 0, i32* %8, align 4
  br label %732

732:                                              ; preds = %745, %711
  %733 = load i32, i32* %8, align 4
  %734 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 31), align 8
  %735 = icmp slt i32 %733, %734
  br i1 %735, label %736, label %748

736:                                              ; preds = %732
  %737 = load i32, i32* %8, align 4
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %738
  %740 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %739, i32 0, i32 14
  %741 = bitcast float** %740 to i8**
  %742 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 83), align 8
  %743 = sext i32 %742 to i64
  %744 = call i32 @hipMalloc(i8** noundef %741, i64 noundef %743)
  br label %745

745:                                              ; preds = %736
  %746 = load i32, i32* %8, align 4
  %747 = add nsw i32 %746, 1
  store i32 %747, i32* %8, align 4
  br label %732, !llvm.loop !21

748:                                              ; preds = %732
  %749 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 36), align 4
  store i32 %749, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 84), align 4
  %750 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 37), align 8
  store i32 %750, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 85), align 8
  %751 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 38), align 4
  store i32 %751, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 86), align 4
  %752 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 39), align 8
  store i32 %752, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 87), align 8
  store i32 0, i32* %8, align 4
  br label %753

753:                                              ; preds = %766, %748
  %754 = load i32, i32* %8, align 4
  %755 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 31), align 8
  %756 = icmp slt i32 %754, %755
  br i1 %756, label %757, label %769

757:                                              ; preds = %753
  %758 = load i32, i32* %8, align 4
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %759
  %761 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %760, i32 0, i32 15
  %762 = bitcast float** %761 to i8**
  %763 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 87), align 8
  %764 = sext i32 %763 to i64
  %765 = call i32 @hipMalloc(i8** noundef %762, i64 noundef %764)
  br label %766

766:                                              ; preds = %757
  %767 = load i32, i32* %8, align 4
  %768 = add nsw i32 %767, 1
  store i32 %768, i32* %8, align 4
  br label %753, !llvm.loop !22

769:                                              ; preds = %753
  %770 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 80), align 4
  store i32 %770, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 88), align 4
  %771 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 81), align 8
  store i32 %771, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 89), align 8
  %772 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 82), align 4
  store i32 %772, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 90), align 4
  %773 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 83), align 8
  store i32 %773, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 91), align 8
  store i32 0, i32* %8, align 4
  br label %774

774:                                              ; preds = %787, %769
  %775 = load i32, i32* %8, align 4
  %776 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 31), align 8
  %777 = icmp slt i32 %775, %776
  br i1 %777, label %778, label %790

778:                                              ; preds = %774
  %779 = load i32, i32* %8, align 4
  %780 = sext i32 %779 to i64
  %781 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %780
  %782 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %781, i32 0, i32 16
  %783 = bitcast float** %782 to i8**
  %784 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 91), align 8
  %785 = sext i32 %784 to i64
  %786 = call i32 @hipMalloc(i8** noundef %783, i64 noundef %785)
  br label %787

787:                                              ; preds = %778
  %788 = load i32, i32* %8, align 4
  %789 = add nsw i32 %788, 1
  store i32 %789, i32* %8, align 4
  br label %774, !llvm.loop !23

790:                                              ; preds = %774
  %791 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 32), align 4
  store i32 %791, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 92), align 4
  %792 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 33), align 8
  store i32 %792, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 93), align 8
  %793 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 34), align 4
  store i32 %793, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 94), align 4
  %794 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 35), align 8
  store i32 %794, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 95), align 8
  store i32 0, i32* %8, align 4
  br label %795

795:                                              ; preds = %808, %790
  %796 = load i32, i32* %8, align 4
  %797 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 31), align 8
  %798 = icmp slt i32 %796, %797
  br i1 %798, label %799, label %811

799:                                              ; preds = %795
  %800 = load i32, i32* %8, align 4
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %801
  %803 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %802, i32 0, i32 17
  %804 = bitcast float** %803 to i8**
  %805 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 95), align 8
  %806 = sext i32 %805 to i64
  %807 = call i32 @hipMalloc(i8** noundef %804, i64 noundef %806)
  br label %808

808:                                              ; preds = %799
  %809 = load i32, i32* %8, align 4
  %810 = add nsw i32 %809, 1
  store i32 %810, i32* %8, align 4
  br label %795, !llvm.loop !24

811:                                              ; preds = %795
  %812 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 32), align 4
  %813 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 0), align 8
  %814 = add nsw i32 %813, 1
  %815 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 0), align 8
  %816 = add nsw i32 %814, %815
  %817 = add nsw i32 %812, %816
  %818 = sub nsw i32 %817, 1
  store i32 %818, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 96), align 4
  %819 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 96), align 4
  store i32 %819, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 97), align 8
  %820 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 96), align 4
  %821 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 97), align 8
  %822 = mul nsw i32 %820, %821
  store i32 %822, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 98), align 4
  %823 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 98), align 4
  %824 = sext i32 %823 to i64
  %825 = mul i64 4, %824
  %826 = trunc i64 %825 to i32
  store i32 %826, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 99), align 8
  store i32 0, i32* %8, align 4
  br label %827

827:                                              ; preds = %840, %811
  %828 = load i32, i32* %8, align 4
  %829 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 31), align 8
  %830 = icmp slt i32 %828, %829
  br i1 %830, label %831, label %843

831:                                              ; preds = %827
  %832 = load i32, i32* %8, align 4
  %833 = sext i32 %832 to i64
  %834 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %833
  %835 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %834, i32 0, i32 18
  %836 = bitcast float** %835 to i8**
  %837 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 99), align 8
  %838 = sext i32 %837 to i64
  %839 = call i32 @hipMalloc(i8** noundef %836, i64 noundef %838)
  br label %840

840:                                              ; preds = %831
  %841 = load i32, i32* %8, align 4
  %842 = add nsw i32 %841, 1
  store i32 %842, i32* %8, align 4
  br label %827, !llvm.loop !25

843:                                              ; preds = %827
  %844 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 2), align 8
  store i32 %844, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 100), align 4
  %845 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 100), align 4
  store i32 %845, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 101), align 8
  %846 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 100), align 4
  %847 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 101), align 8
  %848 = mul nsw i32 %846, %847
  store i32 %848, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 102), align 4
  %849 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 102), align 4
  %850 = sext i32 %849 to i64
  %851 = mul i64 4, %850
  %852 = trunc i64 %851 to i32
  store i32 %852, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 103), align 8
  %853 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 96), align 4
  store i32 %853, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 104), align 4
  %854 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 97), align 8
  store i32 %854, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 105), align 8
  %855 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 104), align 4
  %856 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 105), align 8
  %857 = mul nsw i32 %855, %856
  store i32 %857, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 106), align 4
  %858 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 106), align 4
  %859 = sext i32 %858 to i64
  %860 = mul i64 4, %859
  %861 = trunc i64 %860 to i32
  store i32 %861, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 107), align 8
  %862 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 100), align 4
  %863 = sub nsw i32 %862, 1
  %864 = sdiv i32 %863, 2
  store i32 %864, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 108), align 4
  %865 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 100), align 4
  %866 = sub nsw i32 %865, 1
  %867 = srem i32 %866, 2
  %868 = sitofp i32 %867 to double
  %869 = fcmp contract ogt double %868, 5.000000e-01
  br i1 %869, label %870, label %873

870:                                              ; preds = %843
  %871 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 108), align 4
  %872 = add nsw i32 %871, 1
  store i32 %872, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 108), align 4
  br label %873

873:                                              ; preds = %870, %843
  %874 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 101), align 8
  %875 = sub nsw i32 %874, 1
  %876 = sdiv i32 %875, 2
  store i32 %876, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 109), align 8
  %877 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 101), align 8
  %878 = sub nsw i32 %877, 1
  %879 = srem i32 %878, 2
  %880 = sitofp i32 %879 to double
  %881 = fcmp contract ogt double %880, 5.000000e-01
  br i1 %881, label %882, label %885

882:                                              ; preds = %873
  %883 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 109), align 8
  %884 = add nsw i32 %883, 1
  store i32 %884, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 109), align 8
  br label %885

885:                                              ; preds = %882, %873
  store i32 0, i32* %8, align 4
  br label %886

886:                                              ; preds = %899, %885
  %887 = load i32, i32* %8, align 4
  %888 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 31), align 8
  %889 = icmp slt i32 %887, %888
  br i1 %889, label %890, label %902

890:                                              ; preds = %886
  %891 = load i32, i32* %8, align 4
  %892 = sext i32 %891 to i64
  %893 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %892
  %894 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %893, i32 0, i32 20
  %895 = bitcast float** %894 to i8**
  %896 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 107), align 8
  %897 = sext i32 %896 to i64
  %898 = call i32 @hipMalloc(i8** noundef %895, i64 noundef %897)
  br label %899

899:                                              ; preds = %890
  %900 = load i32, i32* %8, align 4
  %901 = add nsw i32 %900, 1
  store i32 %901, i32* %8, align 4
  br label %886, !llvm.loop !26

902:                                              ; preds = %886
  %903 = getelementptr inbounds %struct.dim3, %struct.dim3* %6, i32 0, i32 0
  store i32 256, i32* %903, align 4
  %904 = getelementptr inbounds %struct.dim3, %struct.dim3* %6, i32 0, i32 1
  store i32 1, i32* %904, align 4
  %905 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 31), align 8
  %906 = getelementptr inbounds %struct.dim3, %struct.dim3* %7, i32 0, i32 0
  store i32 %905, i32* %906, align 4
  %907 = getelementptr inbounds %struct.dim3, %struct.dim3* %7, i32 0, i32 1
  store i32 1, i32* %907, align 4
  %908 = load %struct.params_unique*, %struct.params_unique** @d_unique, align 8
  %909 = bitcast %struct.params_unique* %908 to i8*
  %910 = call i32 @hipMemcpy(i8* noundef %909, i8* noundef bitcast ([51 x %struct.params_unique]* @h_unique to i8*), i64 noundef 8160, i32 noundef 1)
  %911 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %912 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %911, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %913 = call i32 @fflush(%struct._IO_FILE* noundef null)
  store i32 0, i32* getelementptr inbounds (%struct.params_common_change, %struct.params_common_change* @common_change, i32 0, i32 1), align 8
  br label %914

914:                                              ; preds = %965, %902
  %915 = load i32, i32* getelementptr inbounds (%struct.params_common_change, %struct.params_common_change* @common_change, i32 0, i32 1), align 8
  %916 = load i32, i32* %9, align 4
  %917 = icmp slt i32 %915, %916
  br i1 %917, label %918, label %968

918:                                              ; preds = %914
  %919 = load %struct.avi_t*, %struct.avi_t** %11, align 8
  %920 = load i32, i32* getelementptr inbounds (%struct.params_common_change, %struct.params_common_change* @common_change, i32 0, i32 1), align 8
  %921 = call float* @get_frame(%struct.avi_t* noundef %919, i32 noundef %920, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  store float* %921, float** %12, align 8
  %922 = load float*, float** getelementptr inbounds (%struct.params_common_change, %struct.params_common_change* @common_change, i32 0, i32 0), align 8
  %923 = bitcast float* %922 to i8*
  %924 = load float*, float** %12, align 8
  %925 = bitcast float* %924 to i8*
  %926 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 8), align 8
  %927 = sext i32 %926 to i64
  %928 = call i32 @hipMemcpy(i8* noundef %923, i8* noundef %925, i64 noundef %927, i32 noundef 1)
  br label %929

929:                                              ; preds = %918
  %930 = bitcast %struct.dim3* %13 to i8*
  %931 = bitcast %struct.dim3* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %930, i8* align 4 %931, i64 12, i1 false)
  %932 = bitcast %struct.dim3* %14 to i8*
  %933 = bitcast %struct.dim3* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %932, i8* align 4 %933, i64 12, i1 false)
  %934 = bitcast { i64, i32 }* %15 to i8*
  %935 = bitcast %struct.dim3* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %934, i8* align 4 %935, i64 12, i1 false)
  %936 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %937 = load i64, i64* %936, align 4
  %938 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %939 = load i32, i32* %938, align 4
  %940 = bitcast { i64, i32 }* %16 to i8*
  %941 = bitcast %struct.dim3* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %940, i8* align 4 %941, i64 12, i1 false)
  %942 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %943 = load i64, i64* %942, align 4
  %944 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %945 = load i32, i32* %944, align 4
  %946 = call i32 @__hipPushCallConfiguration(i64 %937, i32 %939, i64 %943, i32 %945, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %947 = icmp ne i32 %946, 0
  br i1 %947, label %957, label %948

948:                                              ; preds = %929
  %949 = bitcast %struct.params_common* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %949, i8* align 8 bitcast (%struct.params_common* @common to i8*), i64 520, i1 false)
  %950 = bitcast %struct.params_common_change* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %950, i8* align 8 bitcast (%struct.params_common_change* @common_change to i8*), i64 16, i1 false)
  %951 = load %struct.params_unique*, %struct.params_unique** @d_unique, align 8
  %952 = bitcast %struct.params_common_change* %18 to { float*, i32 }*
  %953 = getelementptr inbounds { float*, i32 }, { float*, i32 }* %952, i32 0, i32 0
  %954 = load float*, float** %953, align 8
  %955 = getelementptr inbounds { float*, i32 }, { float*, i32 }* %952, i32 0, i32 1
  %956 = load i32, i32* %955, align 8
  call void @_Z21__device_stub__kernel13params_common20params_common_changeP13params_unique(%struct.params_common* noundef byval(%struct.params_common) align 8 %17, float* %954, i32 %956, %struct.params_unique* noundef %951)
  br label %957

957:                                              ; preds = %948, %929
  br label %958

958:                                              ; preds = %957
  %959 = load float*, float** %12, align 8
  %960 = bitcast float* %959 to i8*
  call void @free(i8* noundef %960) #13
  %961 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %962 = load i32, i32* getelementptr inbounds (%struct.params_common_change, %struct.params_common_change* @common_change, i32 0, i32 1), align 8
  %963 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %961, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 noundef %962)
  %964 = call i32 @fflush(%struct._IO_FILE* noundef null)
  br label %965

965:                                              ; preds = %958
  %966 = load i32, i32* getelementptr inbounds (%struct.params_common_change, %struct.params_common_change* @common_change, i32 0, i32 1), align 8
  %967 = add nsw i32 %966, 1
  store i32 %967, i32* getelementptr inbounds (%struct.params_common_change, %struct.params_common_change* @common_change, i32 0, i32 1), align 8
  br label %914, !llvm.loop !27

968:                                              ; preds = %914
  %969 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %970 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %969, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %971 = call i32 @fflush(%struct._IO_FILE* noundef null)
  %972 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 13), align 8
  %973 = bitcast i32* %972 to i8*
  %974 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 17), align 8
  %975 = bitcast i32* %974 to i8*
  %976 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 10), align 8
  %977 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 4), align 8
  %978 = mul nsw i32 %976, %977
  %979 = sext i32 %978 to i64
  %980 = call i32 @hipMemcpy(i8* noundef %973, i8* noundef %975, i64 noundef %979, i32 noundef 2)
  %981 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 14), align 8
  %982 = bitcast i32* %981 to i8*
  %983 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 18), align 8
  %984 = bitcast i32* %983 to i8*
  %985 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 10), align 8
  %986 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 4), align 8
  %987 = mul nsw i32 %985, %986
  %988 = sext i32 %987 to i64
  %989 = call i32 @hipMemcpy(i8* noundef %982, i8* noundef %984, i64 noundef %988, i32 noundef 2)
  %990 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 24), align 8
  %991 = bitcast i32* %990 to i8*
  %992 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 28), align 8
  %993 = bitcast i32* %992 to i8*
  %994 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 21), align 4
  %995 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 4), align 8
  %996 = mul nsw i32 %994, %995
  %997 = sext i32 %996 to i64
  %998 = call i32 @hipMemcpy(i8* noundef %991, i8* noundef %993, i64 noundef %997, i32 noundef 2)
  %999 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 25), align 8
  %1000 = bitcast i32* %999 to i8*
  %1001 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 29), align 8
  %1002 = bitcast i32* %1001 to i8*
  %1003 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 21), align 4
  %1004 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 4), align 8
  %1005 = mul nsw i32 %1003, %1004
  %1006 = sext i32 %1005 to i64
  %1007 = call i32 @hipMemcpy(i8* noundef %1000, i8* noundef %1002, i64 noundef %1006, i32 noundef 2)
  %1008 = load float*, float** getelementptr inbounds (%struct.params_common_change, %struct.params_common_change* @common_change, i32 0, i32 0), align 8
  %1009 = bitcast float* %1008 to i8*
  %1010 = call i32 @hipFree(i8* noundef %1009)
  %1011 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 11), align 8
  %1012 = bitcast i32* %1011 to i8*
  call void @free(i8* noundef %1012) #13
  %1013 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 12), align 8
  %1014 = bitcast i32* %1013 to i8*
  call void @free(i8* noundef %1014) #13
  %1015 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 13), align 8
  %1016 = bitcast i32* %1015 to i8*
  call void @free(i8* noundef %1016) #13
  %1017 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 14), align 8
  %1018 = bitcast i32* %1017 to i8*
  call void @free(i8* noundef %1018) #13
  %1019 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 15), align 8
  %1020 = bitcast i32* %1019 to i8*
  %1021 = call i32 @hipFree(i8* noundef %1020)
  %1022 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 16), align 8
  %1023 = bitcast i32* %1022 to i8*
  %1024 = call i32 @hipFree(i8* noundef %1023)
  %1025 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 17), align 8
  %1026 = bitcast i32* %1025 to i8*
  %1027 = call i32 @hipFree(i8* noundef %1026)
  %1028 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 18), align 8
  %1029 = bitcast i32* %1028 to i8*
  %1030 = call i32 @hipFree(i8* noundef %1029)
  %1031 = load float*, float** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 19), align 8
  %1032 = bitcast float* %1031 to i8*
  %1033 = call i32 @hipFree(i8* noundef %1032)
  %1034 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 22), align 8
  %1035 = bitcast i32* %1034 to i8*
  call void @free(i8* noundef %1035) #13
  %1036 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 23), align 8
  %1037 = bitcast i32* %1036 to i8*
  call void @free(i8* noundef %1037) #13
  %1038 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 24), align 8
  %1039 = bitcast i32* %1038 to i8*
  call void @free(i8* noundef %1039) #13
  %1040 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 25), align 8
  %1041 = bitcast i32* %1040 to i8*
  call void @free(i8* noundef %1041) #13
  %1042 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 26), align 8
  %1043 = bitcast i32* %1042 to i8*
  %1044 = call i32 @hipFree(i8* noundef %1043)
  %1045 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 27), align 8
  %1046 = bitcast i32* %1045 to i8*
  %1047 = call i32 @hipFree(i8* noundef %1046)
  %1048 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 28), align 8
  %1049 = bitcast i32* %1048 to i8*
  %1050 = call i32 @hipFree(i8* noundef %1049)
  %1051 = load i32*, i32** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 29), align 8
  %1052 = bitcast i32* %1051 to i8*
  %1053 = call i32 @hipFree(i8* noundef %1052)
  %1054 = load float*, float** getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 30), align 8
  %1055 = bitcast float* %1054 to i8*
  %1056 = call i32 @hipFree(i8* noundef %1055)
  store i32 0, i32* %8, align 4
  br label %1057

1057:                                             ; preds = %1146, %968
  %1058 = load i32, i32* %8, align 4
  %1059 = load i32, i32* getelementptr inbounds (%struct.params_common, %struct.params_common* @common, i32 0, i32 31), align 8
  %1060 = icmp slt i32 %1058, %1059
  br i1 %1060, label %1061, label %1149

1061:                                             ; preds = %1057
  %1062 = load i32, i32* %8, align 4
  %1063 = sext i32 %1062 to i64
  %1064 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %1063
  %1065 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %1064, i32 0, i32 7
  %1066 = load float*, float** %1065, align 16
  %1067 = bitcast float* %1066 to i8*
  %1068 = call i32 @hipFree(i8* noundef %1067)
  %1069 = load i32, i32* %8, align 4
  %1070 = sext i32 %1069 to i64
  %1071 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %1070
  %1072 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %1071, i32 0, i32 8
  %1073 = load float*, float** %1072, align 8
  %1074 = bitcast float* %1073 to i8*
  %1075 = call i32 @hipFree(i8* noundef %1074)
  %1076 = load i32, i32* %8, align 4
  %1077 = sext i32 %1076 to i64
  %1078 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %1077
  %1079 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %1078, i32 0, i32 10
  %1080 = load float*, float** %1079, align 8
  %1081 = bitcast float* %1080 to i8*
  %1082 = call i32 @hipFree(i8* noundef %1081)
  %1083 = load i32, i32* %8, align 4
  %1084 = sext i32 %1083 to i64
  %1085 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %1084
  %1086 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %1085, i32 0, i32 11
  %1087 = load float*, float** %1086, align 16
  %1088 = bitcast float* %1087 to i8*
  %1089 = call i32 @hipFree(i8* noundef %1088)
  %1090 = load i32, i32* %8, align 4
  %1091 = sext i32 %1090 to i64
  %1092 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %1091
  %1093 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %1092, i32 0, i32 12
  %1094 = load float*, float** %1093, align 8
  %1095 = bitcast float* %1094 to i8*
  %1096 = call i32 @hipFree(i8* noundef %1095)
  %1097 = load i32, i32* %8, align 4
  %1098 = sext i32 %1097 to i64
  %1099 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %1098
  %1100 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %1099, i32 0, i32 13
  %1101 = load float*, float** %1100, align 16
  %1102 = bitcast float* %1101 to i8*
  %1103 = call i32 @hipFree(i8* noundef %1102)
  %1104 = load i32, i32* %8, align 4
  %1105 = sext i32 %1104 to i64
  %1106 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %1105
  %1107 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %1106, i32 0, i32 14
  %1108 = load float*, float** %1107, align 8
  %1109 = bitcast float* %1108 to i8*
  %1110 = call i32 @hipFree(i8* noundef %1109)
  %1111 = load i32, i32* %8, align 4
  %1112 = sext i32 %1111 to i64
  %1113 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %1112
  %1114 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %1113, i32 0, i32 15
  %1115 = load float*, float** %1114, align 16
  %1116 = bitcast float* %1115 to i8*
  %1117 = call i32 @hipFree(i8* noundef %1116)
  %1118 = load i32, i32* %8, align 4
  %1119 = sext i32 %1118 to i64
  %1120 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %1119
  %1121 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %1120, i32 0, i32 16
  %1122 = load float*, float** %1121, align 8
  %1123 = bitcast float* %1122 to i8*
  %1124 = call i32 @hipFree(i8* noundef %1123)
  %1125 = load i32, i32* %8, align 4
  %1126 = sext i32 %1125 to i64
  %1127 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %1126
  %1128 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %1127, i32 0, i32 17
  %1129 = load float*, float** %1128, align 16
  %1130 = bitcast float* %1129 to i8*
  %1131 = call i32 @hipFree(i8* noundef %1130)
  %1132 = load i32, i32* %8, align 4
  %1133 = sext i32 %1132 to i64
  %1134 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %1133
  %1135 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %1134, i32 0, i32 18
  %1136 = load float*, float** %1135, align 8
  %1137 = bitcast float* %1136 to i8*
  %1138 = call i32 @hipFree(i8* noundef %1137)
  %1139 = load i32, i32* %8, align 4
  %1140 = sext i32 %1139 to i64
  %1141 = getelementptr inbounds [51 x %struct.params_unique], [51 x %struct.params_unique]* @h_unique, i64 0, i64 %1140
  %1142 = getelementptr inbounds %struct.params_unique, %struct.params_unique* %1141, i32 0, i32 20
  %1143 = load float*, float** %1142, align 8
  %1144 = bitcast float* %1143 to i8*
  %1145 = call i32 @hipFree(i8* noundef %1144)
  br label %1146

1146:                                             ; preds = %1061
  %1147 = load i32, i32* %8, align 4
  %1148 = add nsw i32 %1147, 1
  store i32 %1148, i32* %8, align 4
  br label %1057, !llvm.loop !28

1149:                                             ; preds = %34, %63, %1057
  %1150 = load i32, i32* %3, align 4
  ret i32 %1150
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

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #6

declare %struct.avi_t* @AVI_open_input_file(i8* noundef, i32 noundef) #3

declare void @AVI_print_error(i8* noundef) #3

declare i64 @AVI_video_frames(%struct.avi_t* noundef) #3

declare i32 @AVI_video_height(%struct.avi_t* noundef) #3

declare i32 @AVI_video_width(%struct.avi_t* noundef) #3

declare i32 @hipMalloc(i8** noundef, i64 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #7

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #8

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #3

declare float* @get_frame(%struct.avi_t* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

declare i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #9

declare i32 @hipFree(i8* noundef) #3

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (%struct.params_common*, float*, i32, %struct.params_unique*)** @_Z6kernel13params_common20params_common_changeP13params_unique to i8*), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
attributes #4 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind }

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
