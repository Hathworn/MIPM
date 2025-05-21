; ModuleID = 'spmv.cpp'
source_filename = "spmv.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.texture = type { %struct.textureReference }
%struct.textureReference = type { i32, i32, i32, [3 x i32], %struct.hipChannelFormatDesc, i32, i32, i32, float, float, float, %struct.__hip_texture*, i32, i32 }
%struct.hipChannelFormatDesc = type { i32, i32, i32, i32, i32 }
%struct.__hip_texture = type opaque
%struct.pb_Parameters = type { i8*, i8** }
%struct.pb_Timer = type { i32, i64, i64 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.pb_TimerSet = type { i32, %struct.pb_async_time_marker_list*, i64, i64, [8 x %struct.pb_Timer], [8 x %struct.pb_SubTimerList*] }
%struct.pb_async_time_marker_list = type { i8*, i32, i8*, %struct.pb_async_time_marker_list* }
%struct.pb_SubTimerList = type { %struct.pb_SubTimer*, %struct.pb_SubTimer* }
%struct.pb_SubTimer = type { i8*, %struct.pb_Timer, %struct.pb_SubTimer* }
%struct.ihipEvent_t = type opaque
%struct.ihipStream_t = type opaque
%struct.dim3 = type { i32, i32, i32 }
%struct._mat_entry = type { i32, i32, float }
%struct._row_stats = type { i32, i32, i32, i32 }
%struct.hipDeviceProp_t = type { [256 x i8], i64, i64, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.hipDeviceArch_t, i32, i32, i32, i32, i64, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32*, i32*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hipDeviceArch_t = type { i32 }

$__hip_gpubin_handle = comdat any

@.str = private unnamed_addr constant [32 x i8] c"Expecting file name after '-o'\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Expecting file name after '-i'\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Unexpected command-line parameter\0A\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"Ignoring attempt to start a running timer\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Warning: Timer was not stopped\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Warning: Subtimer was not stopped\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"Ignoring attempt to start running timer and subtimer\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Ignoring attempt to stop a stopped timer\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Warning: Timer was not running\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Warning: Subtimer was not running\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"Ignoring attempt to stop stopped timer and subtimer\0A\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"Elapsed time from a running timer is inaccurate\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Kernel\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"Copy\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"Driver\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"Copy Async\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"Compute\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"%-*s: %f\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c" -%-*s: %f\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"CPU/Kernel Overlap: %f\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"Timer Wall Time: %f\0A\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"Cannot open input file\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"%d %d %d %d %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"Cannot open output file\0A\00", align 1
@tex_x_float = internal global %struct.texture zeroinitializer, align 16
@jds_ptr_int = internal global [5000 x i32] undef, align 16
@sh_zcnt_int = internal global [5000 x i32] undef, align 16
@_Z14spmv_jds_naivePfPKfPKiS3_S1_S3_i = dso_local constant void (float*, float*, i32*, i32*, float*, i32*, i32)* @_Z29__device_stub__spmv_jds_naivePfPKfPKiS3_S1_S3_i, align 8
@.str.28 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"Sorry, this application does not support \00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"Market Market type: [%s]\0A\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"%d %d %f\0A\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [113 x i8] c"Converting COO to JDS format (%dx%d)\0A%d matrix entries, warp size = %d, row padding align = %d, pack size = %d\0A\0A\00", align 1
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.35 = private unnamed_addr constant [36 x i8] c"Padding data....%d rows, %d groups\0A\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c"Padding warp group %d to %d items, zn = %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"Allocating data space: %d entries (%f%% padding)\0A\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"[%d row%d=%.3f]\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.42 = private unnamed_addr constant [58 x i8] c"Finished converting.\0AJDS format has %d columns, %d rows.\0A\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"nz_count_len = %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"Expecting one two filenames\0A\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"Input file %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [25 x i8] c"CUDA error: %s, line %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [60 x i8] c"mm_read_unsymetric: Could not process Matrix Market banner \00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c" in file [%s]\0A\00", align 1
@.str.52 = private unnamed_addr constant [57 x i8] c"read_unsymmetric_sparse(): could not parse matrix size.\0A\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"%d %d %lg\0A\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"%s %s %s %s %s\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"%%MatrixMarket\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"coordinate\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"complex\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"general\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"symmetric\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"hermitian\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"skew-symmetric\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"%d %d %lg %lg\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.74 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"%d %d %20.16g\0A\00", align 1
@.str.77 = private unnamed_addr constant [23 x i8] c"%d %d %20.16g %20.16g\0A\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"%s %s %s %s\00", align 1
@.str.79 = private unnamed_addr constant [17 x i8] c"delete_argument\0A\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"next_argument\0A\00", align 1
@0 = private unnamed_addr constant [37 x i8] c"_Z14spmv_jds_naivePfPKfPKiS3_S1_S3_i\00", align 1
@1 = private unnamed_addr constant [12 x i8] c"tex_x_float\00", align 1
@2 = private unnamed_addr constant [12 x i8] c"jds_ptr_int\00", align 1
@3 = private unnamed_addr constant [12 x i8] c"sh_zcnt_int\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_spmv.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]
@str = private unnamed_addr constant [40 x i8] c"Could not process Matrix Market banner.\00", align 1
@str.81 = private unnamed_addr constant [57 x i8] c"CUDA accelerated sparse matrix vector multiplication****\00", align 1
@str.82 = private unnamed_addr constant [93 x i8] c"Original version by Li-Wen Chang <lchang20@illinois.edu> and Shengzhao Wu<wu14@illinois.edu>\00", align 1
@str.83 = private unnamed_addr constant [56 x i8] c"This version maintained by Chris Rodrigues  ***********\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias %struct.pb_Parameters* @pb_ReadParameters(i32* nocapture %0, i8** %1) local_unnamed_addr #0 {
  %3 = tail call noalias align 16 dereferenceable_or_null(16) i8* @malloc(i64 16) #25
  %4 = bitcast i8* %3 to %struct.pb_Parameters*
  %5 = getelementptr inbounds %struct.pb_Parameters, %struct.pb_Parameters* %4, i64 0, i32 0
  store i8* null, i8** %5, align 16, !tbaa !3
  %6 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #25
  %7 = bitcast i8* %6 to i8**
  %8 = getelementptr inbounds %struct.pb_Parameters, %struct.pb_Parameters* %4, i64 0, i32 1
  %9 = bitcast i8*** %8 to i8**
  store i8* %6, i8** %9, align 8, !tbaa !8
  store i8* null, i8** %7, align 16, !tbaa !9
  %10 = load i32, i32* %0, align 4, !tbaa !10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %125, label %12

12:                                               ; preds = %2, %119
  %13 = phi i32 [ %123, %119 ], [ %10, %2 ]
  %14 = phi i8** [ %122, %119 ], [ %1, %2 ]
  %15 = phi i8** [ %121, %119 ], [ %1, %2 ]
  %16 = phi i32 [ %120, %119 ], [ 0, %2 ]
  %17 = load i8*, i8** %15, align 8, !tbaa !9
  %18 = load i8, i8* %17, align 1, !tbaa !12
  %19 = icmp eq i8 %18, 45
  br i1 %19, label %20, label %108

20:                                               ; preds = %12
  %21 = getelementptr inbounds i8, i8* %17, i64 1
  %22 = load i8, i8* %21, align 1, !tbaa !12
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %108, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds i8, i8* %17, i64 2
  %26 = load i8, i8* %25, align 1, !tbaa !12
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %108

28:                                               ; preds = %24
  %29 = icmp slt i32 %16, %13
  br i1 %29, label %34, label %30

30:                                               ; preds = %28
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %32 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.79, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %31) #26
  %33 = load i8, i8* %21, align 1, !tbaa !12
  br label %34

34:                                               ; preds = %28, %30
  %35 = phi i8 [ %22, %28 ], [ %33, %30 ]
  %36 = add nsw i32 %13, -1
  %37 = getelementptr inbounds i8*, i8** %15, i64 1
  %38 = sext i8 %35 to i32
  switch i32 %38, label %283 [
    i32 111, label %39
    i32 105, label %52
    i32 45, label %127
  ]

39:                                               ; preds = %34
  %40 = icmp eq i32 %16, %36
  br i1 %40, label %283, label %41

41:                                               ; preds = %39
  %42 = load i8*, i8** %5, align 16, !tbaa !3
  tail call void @free(i8* %42) #25
  %43 = load i8*, i8** %37, align 8, !tbaa !9
  %44 = icmp slt i32 %16, %36
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %47 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.79, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %46) #26
  br label %48

48:                                               ; preds = %41, %45
  %49 = add nsw i32 %13, -2
  %50 = getelementptr inbounds i8*, i8** %15, i64 2
  %51 = tail call noalias i8* @strdup(i8* %43) #25
  store i8* %51, i8** %5, align 16, !tbaa !3
  br label %119

52:                                               ; preds = %34
  %53 = icmp eq i32 %16, %36
  br i1 %53, label %283, label %54

54:                                               ; preds = %52
  %55 = load i8*, i8** %37, align 8, !tbaa !9
  %56 = icmp slt i32 %16, %36
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %59 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.79, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %58) #26
  br label %60

60:                                               ; preds = %54, %57
  %61 = add nsw i32 %13, -2
  br label %62

62:                                               ; preds = %69, %60
  %63 = phi i64 [ %71, %69 ], [ 0, %60 ]
  %64 = phi i32 [ %70, %69 ], [ 1, %60 ]
  %65 = getelementptr inbounds i8, i8* %55, i64 %63
  %66 = load i8, i8* %65, align 1, !tbaa !12
  switch i8 %66, label %69 [
    i8 0, label %72
    i8 44, label %67
  ]

67:                                               ; preds = %62
  %68 = add nsw i32 %64, 1
  br label %69

69:                                               ; preds = %67, %62
  %70 = phi i32 [ %68, %67 ], [ %64, %62 ]
  %71 = add nuw i64 %63, 1
  br label %62, !llvm.loop !13

72:                                               ; preds = %62
  %73 = getelementptr inbounds i8*, i8** %15, i64 2
  %74 = add nsw i32 %64, 1
  %75 = sext i32 %74 to i64
  %76 = shl nsw i64 %75, 3
  %77 = tail call noalias align 16 i8* @malloc(i64 %76) #25
  %78 = bitcast i8* %77 to i8**
  %79 = icmp sgt i32 %64, 0
  br i1 %79, label %80, label %104

80:                                               ; preds = %72
  %81 = zext i32 %64 to i64
  br label %82

82:                                               ; preds = %90, %80
  %83 = phi i64 [ 0, %80 ], [ %102, %90 ]
  %84 = phi i8* [ %55, %80 ], [ %101, %90 ]
  br label %85

85:                                               ; preds = %88, %82
  %86 = phi i8* [ %89, %88 ], [ %84, %82 ]
  %87 = load i8, i8* %86, align 1, !tbaa !12
  switch i8 %87, label %88 [
    i8 44, label %90
    i8 0, label %90
  ]

88:                                               ; preds = %85
  %89 = getelementptr inbounds i8, i8* %86, i64 1
  br label %85, !llvm.loop !15

90:                                               ; preds = %85, %85
  %91 = ptrtoint i8* %86 to i64
  %92 = ptrtoint i8* %84 to i64
  %93 = sub i64 %91, %92
  %94 = shl i64 %93, 32
  %95 = add i64 %94, 4294967296
  %96 = ashr exact i64 %95, 32
  %97 = tail call noalias align 16 i8* @malloc(i64 %96) #25
  %98 = getelementptr inbounds i8*, i8** %78, i64 %83
  store i8* %97, i8** %98, align 8, !tbaa !9
  %99 = ashr exact i64 %94, 32
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %97, i8* align 1 %84, i64 %99, i1 false) #25
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  store i8 0, i8* %100, align 1, !tbaa !12
  %101 = getelementptr inbounds i8, i8* %86, i64 1
  %102 = add nuw nsw i64 %83, 1
  %103 = icmp eq i64 %102, %81
  br i1 %103, label %104, label %82, !llvm.loop !16

104:                                              ; preds = %90, %72
  %105 = phi i32 [ 0, %72 ], [ %64, %90 ]
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %78, i64 %106
  store i8* null, i8** %107, align 8, !tbaa !9
  store i8* %77, i8** %9, align 8, !tbaa !8
  br label %119

108:                                              ; preds = %24, %20, %12
  %109 = icmp slt i32 %16, %13
  br i1 %109, label %114, label %110

110:                                              ; preds = %108
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %112 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.80, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %111) #26
  %113 = load i8*, i8** %15, align 8, !tbaa !9
  br label %114

114:                                              ; preds = %108, %110
  %115 = phi i8* [ %17, %108 ], [ %113, %110 ]
  %116 = getelementptr inbounds i8*, i8** %15, i64 1
  %117 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8* %115, i8** %14, align 8, !tbaa !9
  %118 = add nsw i32 %16, 1
  br label %119

119:                                              ; preds = %114, %104, %48
  %120 = phi i32 [ %118, %114 ], [ %16, %104 ], [ %16, %48 ]
  %121 = phi i8** [ %116, %114 ], [ %73, %104 ], [ %50, %48 ]
  %122 = phi i8** [ %117, %114 ], [ %14, %104 ], [ %14, %48 ]
  %123 = phi i32 [ %13, %114 ], [ %61, %104 ], [ %49, %48 ]
  %124 = icmp eq i32 %120, %123
  br i1 %124, label %125, label %12

125:                                              ; preds = %119, %2
  %126 = phi i32 [ 0, %2 ], [ %120, %119 ]
  store i32 %126, i32* %0, align 4, !tbaa !10
  br label %302

127:                                              ; preds = %34
  store i32 %36, i32* %0, align 4, !tbaa !10
  %128 = icmp slt i32 %16, %36
  br i1 %128, label %129, label %302

129:                                              ; preds = %127
  %130 = add i32 %13, -2
  %131 = sub i32 %130, %16
  %132 = zext i32 %131 to i64
  %133 = add nuw nsw i64 %132, 1
  %134 = icmp ult i32 %131, 3
  br i1 %134, label %228, label %135

135:                                              ; preds = %129
  %136 = add i32 %13, -2
  %137 = sub i32 %136, %16
  %138 = zext i32 %137 to i64
  %139 = add nuw nsw i64 %138, 1
  %140 = getelementptr i8*, i8** %14, i64 %139
  %141 = getelementptr i8*, i8** %37, i64 %139
  %142 = icmp ult i8** %14, %141
  %143 = icmp ult i8** %37, %140
  %144 = and i1 %142, %143
  br i1 %144, label %228, label %145

145:                                              ; preds = %135
  %146 = and i64 %133, 8589934588
  %147 = getelementptr i8*, i8** %37, i64 %146
  %148 = getelementptr i8*, i8** %14, i64 %146
  %149 = trunc i64 %146 to i32
  %150 = add i32 %16, %149
  %151 = add nsw i64 %146, -4
  %152 = lshr exact i64 %151, 2
  %153 = add nuw nsw i64 %152, 1
  %154 = and i64 %153, 3
  %155 = icmp ult i64 %151, 12
  br i1 %155, label %207, label %156

156:                                              ; preds = %145
  %157 = and i64 %153, 9223372036854775804
  br label %158

158:                                              ; preds = %158, %156
  %159 = phi i64 [ 0, %156 ], [ %204, %158 ]
  %160 = phi i64 [ 0, %156 ], [ %205, %158 ]
  %161 = getelementptr i8*, i8** %37, i64 %159
  %162 = getelementptr i8*, i8** %14, i64 %159
  %163 = bitcast i8** %161 to <2 x i8*>*
  %164 = load <2 x i8*>, <2 x i8*>* %163, align 8, !tbaa !9, !alias.scope !17
  %165 = getelementptr i8*, i8** %161, i64 2
  %166 = bitcast i8** %165 to <2 x i8*>*
  %167 = load <2 x i8*>, <2 x i8*>* %166, align 8, !tbaa !9, !alias.scope !17
  %168 = bitcast i8** %162 to <2 x i8*>*
  store <2 x i8*> %164, <2 x i8*>* %168, align 8, !tbaa !9, !alias.scope !20, !noalias !17
  %169 = getelementptr i8*, i8** %162, i64 2
  %170 = bitcast i8** %169 to <2 x i8*>*
  store <2 x i8*> %167, <2 x i8*>* %170, align 8, !tbaa !9, !alias.scope !20, !noalias !17
  %171 = or i64 %159, 4
  %172 = getelementptr i8*, i8** %37, i64 %171
  %173 = getelementptr i8*, i8** %14, i64 %171
  %174 = bitcast i8** %172 to <2 x i8*>*
  %175 = load <2 x i8*>, <2 x i8*>* %174, align 8, !tbaa !9, !alias.scope !17
  %176 = getelementptr i8*, i8** %172, i64 2
  %177 = bitcast i8** %176 to <2 x i8*>*
  %178 = load <2 x i8*>, <2 x i8*>* %177, align 8, !tbaa !9, !alias.scope !17
  %179 = bitcast i8** %173 to <2 x i8*>*
  store <2 x i8*> %175, <2 x i8*>* %179, align 8, !tbaa !9, !alias.scope !20, !noalias !17
  %180 = getelementptr i8*, i8** %173, i64 2
  %181 = bitcast i8** %180 to <2 x i8*>*
  store <2 x i8*> %178, <2 x i8*>* %181, align 8, !tbaa !9, !alias.scope !20, !noalias !17
  %182 = or i64 %159, 8
  %183 = getelementptr i8*, i8** %37, i64 %182
  %184 = getelementptr i8*, i8** %14, i64 %182
  %185 = bitcast i8** %183 to <2 x i8*>*
  %186 = load <2 x i8*>, <2 x i8*>* %185, align 8, !tbaa !9, !alias.scope !17
  %187 = getelementptr i8*, i8** %183, i64 2
  %188 = bitcast i8** %187 to <2 x i8*>*
  %189 = load <2 x i8*>, <2 x i8*>* %188, align 8, !tbaa !9, !alias.scope !17
  %190 = bitcast i8** %184 to <2 x i8*>*
  store <2 x i8*> %186, <2 x i8*>* %190, align 8, !tbaa !9, !alias.scope !20, !noalias !17
  %191 = getelementptr i8*, i8** %184, i64 2
  %192 = bitcast i8** %191 to <2 x i8*>*
  store <2 x i8*> %189, <2 x i8*>* %192, align 8, !tbaa !9, !alias.scope !20, !noalias !17
  %193 = or i64 %159, 12
  %194 = getelementptr i8*, i8** %37, i64 %193
  %195 = getelementptr i8*, i8** %14, i64 %193
  %196 = bitcast i8** %194 to <2 x i8*>*
  %197 = load <2 x i8*>, <2 x i8*>* %196, align 8, !tbaa !9, !alias.scope !17
  %198 = getelementptr i8*, i8** %194, i64 2
  %199 = bitcast i8** %198 to <2 x i8*>*
  %200 = load <2 x i8*>, <2 x i8*>* %199, align 8, !tbaa !9, !alias.scope !17
  %201 = bitcast i8** %195 to <2 x i8*>*
  store <2 x i8*> %197, <2 x i8*>* %201, align 8, !tbaa !9, !alias.scope !20, !noalias !17
  %202 = getelementptr i8*, i8** %195, i64 2
  %203 = bitcast i8** %202 to <2 x i8*>*
  store <2 x i8*> %200, <2 x i8*>* %203, align 8, !tbaa !9, !alias.scope !20, !noalias !17
  %204 = add nuw i64 %159, 16
  %205 = add nuw i64 %160, 4
  %206 = icmp eq i64 %205, %157
  br i1 %206, label %207, label %158, !llvm.loop !22

207:                                              ; preds = %158, %145
  %208 = phi i64 [ 0, %145 ], [ %204, %158 ]
  %209 = icmp eq i64 %154, 0
  br i1 %209, label %226, label %210

210:                                              ; preds = %207, %210
  %211 = phi i64 [ %223, %210 ], [ %208, %207 ]
  %212 = phi i64 [ %224, %210 ], [ 0, %207 ]
  %213 = getelementptr i8*, i8** %37, i64 %211
  %214 = getelementptr i8*, i8** %14, i64 %211
  %215 = bitcast i8** %213 to <2 x i8*>*
  %216 = load <2 x i8*>, <2 x i8*>* %215, align 8, !tbaa !9, !alias.scope !17
  %217 = getelementptr i8*, i8** %213, i64 2
  %218 = bitcast i8** %217 to <2 x i8*>*
  %219 = load <2 x i8*>, <2 x i8*>* %218, align 8, !tbaa !9, !alias.scope !17
  %220 = bitcast i8** %214 to <2 x i8*>*
  store <2 x i8*> %216, <2 x i8*>* %220, align 8, !tbaa !9, !alias.scope !20, !noalias !17
  %221 = getelementptr i8*, i8** %214, i64 2
  %222 = bitcast i8** %221 to <2 x i8*>*
  store <2 x i8*> %219, <2 x i8*>* %222, align 8, !tbaa !9, !alias.scope !20, !noalias !17
  %223 = add nuw i64 %211, 4
  %224 = add i64 %212, 1
  %225 = icmp eq i64 %224, %154
  br i1 %225, label %226, label %210, !llvm.loop !24

226:                                              ; preds = %210, %207
  %227 = icmp eq i64 %133, %146
  br i1 %227, label %302, label %228

228:                                              ; preds = %135, %129, %226
  %229 = phi i8** [ %37, %135 ], [ %37, %129 ], [ %147, %226 ]
  %230 = phi i8** [ %14, %135 ], [ %14, %129 ], [ %148, %226 ]
  %231 = phi i32 [ %16, %135 ], [ %16, %129 ], [ %150, %226 ]
  %232 = sub i32 %36, %231
  %233 = add i32 %13, -2
  %234 = sub i32 %233, %231
  %235 = and i32 %232, 7
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %248, label %237

237:                                              ; preds = %228, %237
  %238 = phi i8** [ %242, %237 ], [ %229, %228 ]
  %239 = phi i8** [ %244, %237 ], [ %230, %228 ]
  %240 = phi i32 [ %245, %237 ], [ %231, %228 ]
  %241 = phi i32 [ %246, %237 ], [ 0, %228 ]
  %242 = getelementptr inbounds i8*, i8** %238, i64 1
  %243 = load i8*, i8** %238, align 8, !tbaa !9
  %244 = getelementptr inbounds i8*, i8** %239, i64 1
  store i8* %243, i8** %239, align 8, !tbaa !9
  %245 = add nsw i32 %240, 1
  %246 = add i32 %241, 1
  %247 = icmp eq i32 %246, %235
  br i1 %247, label %248, label %237, !llvm.loop !26

248:                                              ; preds = %237, %228
  %249 = phi i8** [ %229, %228 ], [ %242, %237 ]
  %250 = phi i8** [ %230, %228 ], [ %244, %237 ]
  %251 = phi i32 [ %231, %228 ], [ %245, %237 ]
  %252 = icmp ult i32 %234, 7
  br i1 %252, label %302, label %253

253:                                              ; preds = %248, %253
  %254 = phi i8** [ %278, %253 ], [ %249, %248 ]
  %255 = phi i8** [ %280, %253 ], [ %250, %248 ]
  %256 = phi i32 [ %281, %253 ], [ %251, %248 ]
  %257 = getelementptr inbounds i8*, i8** %254, i64 1
  %258 = load i8*, i8** %254, align 8, !tbaa !9
  %259 = getelementptr inbounds i8*, i8** %255, i64 1
  store i8* %258, i8** %255, align 8, !tbaa !9
  %260 = getelementptr inbounds i8*, i8** %254, i64 2
  %261 = load i8*, i8** %257, align 8, !tbaa !9
  %262 = getelementptr inbounds i8*, i8** %255, i64 2
  store i8* %261, i8** %259, align 8, !tbaa !9
  %263 = getelementptr inbounds i8*, i8** %254, i64 3
  %264 = load i8*, i8** %260, align 8, !tbaa !9
  %265 = getelementptr inbounds i8*, i8** %255, i64 3
  store i8* %264, i8** %262, align 8, !tbaa !9
  %266 = getelementptr inbounds i8*, i8** %254, i64 4
  %267 = load i8*, i8** %263, align 8, !tbaa !9
  %268 = getelementptr inbounds i8*, i8** %255, i64 4
  store i8* %267, i8** %265, align 8, !tbaa !9
  %269 = getelementptr inbounds i8*, i8** %254, i64 5
  %270 = load i8*, i8** %266, align 8, !tbaa !9
  %271 = getelementptr inbounds i8*, i8** %255, i64 5
  store i8* %270, i8** %268, align 8, !tbaa !9
  %272 = getelementptr inbounds i8*, i8** %254, i64 6
  %273 = load i8*, i8** %269, align 8, !tbaa !9
  %274 = getelementptr inbounds i8*, i8** %255, i64 6
  store i8* %273, i8** %271, align 8, !tbaa !9
  %275 = getelementptr inbounds i8*, i8** %254, i64 7
  %276 = load i8*, i8** %272, align 8, !tbaa !9
  %277 = getelementptr inbounds i8*, i8** %255, i64 7
  store i8* %276, i8** %274, align 8, !tbaa !9
  %278 = getelementptr inbounds i8*, i8** %254, i64 8
  %279 = load i8*, i8** %275, align 8, !tbaa !9
  %280 = getelementptr inbounds i8*, i8** %255, i64 8
  store i8* %279, i8** %277, align 8, !tbaa !9
  %281 = add nsw i32 %256, 8
  %282 = icmp eq i32 %281, %36
  br i1 %282, label %302, label %253, !llvm.loop !27

283:                                              ; preds = %34, %39, %52
  %284 = phi i8* [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %52 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %39 ], [ getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), %34 ]
  %285 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %286 = tail call i32 @fputs(i8* nonnull %284, %struct._IO_FILE* %285) #27
  %287 = load i8*, i8** %5, align 16, !tbaa !3
  tail call void @free(i8* %287) #25
  %288 = load i8**, i8*** %8, align 8, !tbaa !8
  %289 = icmp eq i8** %288, null
  br i1 %289, label %301, label %290

290:                                              ; preds = %283
  %291 = load i8*, i8** %288, align 8, !tbaa !9
  %292 = icmp eq i8* %291, null
  br i1 %292, label %299, label %293

293:                                              ; preds = %290, %293
  %294 = phi i8* [ %297, %293 ], [ %291, %290 ]
  %295 = phi i8** [ %296, %293 ], [ %288, %290 ]
  tail call void @free(i8* nonnull %294) #25
  %296 = getelementptr inbounds i8*, i8** %295, i64 1
  %297 = load i8*, i8** %296, align 8, !tbaa !9
  %298 = icmp eq i8* %297, null
  br i1 %298, label %299, label %293, !llvm.loop !28

299:                                              ; preds = %293, %290
  %300 = bitcast i8** %288 to i8*
  tail call void @free(i8* %300) #25
  br label %301

301:                                              ; preds = %283, %299
  tail call void @free(i8* %3) #25
  br label %302

302:                                              ; preds = %248, %253, %226, %125, %127, %301
  %303 = phi %struct.pb_Parameters* [ null, %301 ], [ %4, %127 ], [ %4, %125 ], [ %4, %226 ], [ %4, %253 ], [ %4, %248 ]
  ret %struct.pb_Parameters* %303
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn
declare dso_local noalias i8* @strdup(i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fputs(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @pb_FreeParameters(%struct.pb_Parameters* nocapture %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pb_Parameters, %struct.pb_Parameters* %0, i64 0, i32 0
  %3 = load i8*, i8** %2, align 8, !tbaa !3
  tail call void @free(i8* %3) #25
  %4 = getelementptr inbounds %struct.pb_Parameters, %struct.pb_Parameters* %0, i64 0, i32 1
  %5 = load i8**, i8*** %4, align 8, !tbaa !8
  %6 = icmp eq i8** %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = load i8*, i8** %5, align 8, !tbaa !9
  %9 = icmp eq i8* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %7, %10
  %11 = phi i8* [ %14, %10 ], [ %8, %7 ]
  %12 = phi i8** [ %13, %10 ], [ %5, %7 ]
  tail call void @free(i8* nonnull %11) #25
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8, !tbaa !9
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %10, !llvm.loop !28

16:                                               ; preds = %10, %7
  %17 = bitcast i8** %5 to i8*
  tail call void @free(i8* %17) #25
  br label %18

18:                                               ; preds = %1, %16
  %19 = bitcast %struct.pb_Parameters* %0 to i8*
  tail call void @free(i8* %19) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @pb_Parameters_CountInputs(%struct.pb_Parameters* nocapture readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.pb_Parameters, %struct.pb_Parameters* %0, i64 0, i32 1
  %3 = load i8**, i8*** %2, align 8, !tbaa !8
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i64 [ %9, %4 ], [ 0, %1 ]
  %6 = getelementptr inbounds i8*, i8** %3, i64 %5
  %7 = load i8*, i8** %6, align 8, !tbaa !9
  %8 = icmp eq i8* %7, null
  %9 = add nuw i64 %5, 1
  br i1 %8, label %10, label %4, !llvm.loop !29

10:                                               ; preds = %4
  %11 = trunc i64 %5 to i32
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @pb_ResetTimer(%struct.pb_Timer* nocapture writeonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %0, i64 0, i32 0
  store i32 0, i32* %2, align 8, !tbaa !30
  %3 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %0, i64 0, i32 1
  store i64 0, i64* %3, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @pb_StartTimer(%struct.pb_Timer* nocapture %0) local_unnamed_addr #8 {
  %2 = alloca %struct.timeval, align 8
  %3 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !30
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %7) #27
  br label %19

9:                                                ; preds = %1
  store i32 1, i32* %3, align 8, !tbaa !30
  %10 = bitcast %struct.timeval* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #25
  %11 = call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* null) #25
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !35
  %14 = mul nsw i64 %13, 1000000
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 1
  %16 = load i64, i64* %15, align 8, !tbaa !38
  %17 = add nsw i64 %14, %16
  %18 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %0, i64 0, i32 2
  store i64 %17, i64* %18, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #25
  br label %19

19:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @gettimeofday(%struct.timeval* nocapture noundef, %struct.timezone* nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z24pb_StartTimerAndSubTimerP8pb_TimerS0_(%struct.pb_Timer* nocapture %0, %struct.pb_Timer* nocapture %1) local_unnamed_addr #8 {
  %3 = alloca %struct.timeval, align 8
  %4 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !30
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %8) #27
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ 1, %7 ], [ 3, %2 ]
  %12 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %1, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !30
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %16) #27
  %18 = and i32 %11, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %22 = tail call i64 @fwrite(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i64 53, i64 1, %struct._IO_FILE* %21) #27
  br label %49

23:                                               ; preds = %10, %15
  %24 = phi i32 [ %18, %15 ], [ %11, %10 ]
  store i32 1, i32* %4, align 8, !tbaa !30
  store i32 1, i32* %12, align 8, !tbaa !30
  %25 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #25
  %26 = call i32 @gettimeofday(%struct.timeval* nonnull %3, %struct.timezone* null) #25
  %27 = and i32 %24, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 0
  %31 = load i64, i64* %30, align 8, !tbaa !35
  %32 = mul nsw i64 %31, 1000000
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 1
  %34 = load i64, i64* %33, align 8, !tbaa !38
  %35 = add nsw i64 %32, %34
  %36 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %0, i64 0, i32 2
  store i64 %35, i64* %36, align 8, !tbaa !39
  br label %37

37:                                               ; preds = %29, %23
  %38 = and i32 %24, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 0
  %42 = load i64, i64* %41, align 8, !tbaa !35
  %43 = mul nsw i64 %42, 1000000
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 1
  %45 = load i64, i64* %44, align 8, !tbaa !38
  %46 = add nsw i64 %43, %45
  %47 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %1, i64 0, i32 2
  store i64 %46, i64* %47, align 8, !tbaa !39
  br label %48

48:                                               ; preds = %40, %37
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #25
  br label %49

49:                                               ; preds = %48, %20
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @pb_StopTimer(%struct.pb_Timer* nocapture %0) local_unnamed_addr #8 {
  %2 = alloca %struct.timeval, align 8
  %3 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !30
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %7) #27
  br label %24

9:                                                ; preds = %1
  store i32 0, i32* %3, align 8, !tbaa !30
  %10 = bitcast %struct.timeval* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #25
  %11 = call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* null) #25
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !35
  %14 = mul nsw i64 %13, 1000000
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 1
  %16 = load i64, i64* %15, align 8, !tbaa !38
  %17 = add nsw i64 %14, %16
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #25
  %18 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %0, i64 0, i32 1
  %19 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %0, i64 0, i32 2
  %20 = load i64, i64* %19, align 8, !tbaa !39
  %21 = sub i64 %17, %20
  %22 = load i64, i64* %18, align 8, !tbaa !40
  %23 = add i64 %21, %22
  store i64 %23, i64* %18, align 8, !tbaa !40
  store i64 %17, i64* %19, align 8, !tbaa !39
  br label %24

24:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z23pb_StopTimerAndSubTimerP8pb_TimerS0_(%struct.pb_Timer* nocapture %0, %struct.pb_Timer* nocapture %1) local_unnamed_addr #8 {
  %3 = alloca %struct.timeval, align 8
  %4 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !30
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %8) #27
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ 1, %7 ], [ 3, %2 ]
  %12 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %1, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !30
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %16) #27
  %18 = and i32 %11, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %22 = tail call i64 @fwrite(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i64 52, i64 1, %struct._IO_FILE* %21) #27
  br label %52

23:                                               ; preds = %10, %15
  %24 = phi i32 [ %18, %15 ], [ %11, %10 ]
  store i32 0, i32* %4, align 8, !tbaa !30
  store i32 0, i32* %12, align 8, !tbaa !30
  %25 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #25
  %26 = call i32 @gettimeofday(%struct.timeval* nonnull %3, %struct.timezone* null) #25
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 0
  %28 = load i64, i64* %27, align 8, !tbaa !35
  %29 = mul nsw i64 %28, 1000000
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 1
  %31 = load i64, i64* %30, align 8, !tbaa !38
  %32 = add nsw i64 %29, %31
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #25
  %33 = and i32 %24, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %0, i64 0, i32 1
  %37 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %0, i64 0, i32 2
  %38 = load i64, i64* %37, align 8, !tbaa !39
  %39 = sub i64 %32, %38
  %40 = load i64, i64* %36, align 8, !tbaa !40
  %41 = add i64 %39, %40
  store i64 %41, i64* %36, align 8, !tbaa !40
  store i64 %32, i64* %37, align 8, !tbaa !39
  br label %42

42:                                               ; preds = %35, %23
  %43 = and i32 %24, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %1, i64 0, i32 1
  %47 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %1, i64 0, i32 2
  %48 = load i64, i64* %47, align 8, !tbaa !39
  %49 = sub i64 %32, %48
  %50 = load i64, i64* %46, align 8, !tbaa !40
  %51 = add i64 %49, %50
  store i64 %51, i64* %46, align 8, !tbaa !40
  store i64 %32, i64* %47, align 8, !tbaa !39
  br label %52

52:                                               ; preds = %42, %45, %20
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local double @pb_GetElapsedTime(%struct.pb_Timer* nocapture readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8, !tbaa !30
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %6) #27
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %0, i64 0, i32 1
  %10 = load i64, i64* %9, align 8, !tbaa !34
  %11 = uitofp i64 %10 to double
  %12 = fdiv contract double %11, 1.000000e+06
  ret double %12
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @pb_InitializeTimerSet(%struct.pb_TimerSet* nocapture writeonly %0) local_unnamed_addr #8 {
  %2 = alloca %struct.timeval, align 8
  %3 = bitcast %struct.timeval* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #25
  %4 = call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* null) #25
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !35
  %7 = mul nsw i64 %6, 1000000
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 1
  %9 = load i64, i64* %8, align 8, !tbaa !38
  %10 = add nsw i64 %7, %9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #25
  %11 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 3
  store i64 %10, i64* %11, align 8, !tbaa !41
  %12 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 0
  store i32 0, i32* %12, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 1
  store %struct.pb_async_time_marker_list* null, %struct.pb_async_time_marker_list** %13, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 0, i32 0
  store i32 0, i32* %14, align 8, !tbaa !30
  %15 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 0, i32 1
  store i64 0, i64* %15, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 5, i64 0
  %17 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 1, i32 0
  store i32 0, i32* %17, align 8, !tbaa !30
  %18 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 1, i32 1
  store i64 0, i64* %18, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 2, i32 0
  store i32 0, i32* %19, align 8, !tbaa !30
  %20 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 2, i32 1
  store i64 0, i64* %20, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 3, i32 0
  store i32 0, i32* %21, align 8, !tbaa !30
  %22 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 3, i32 1
  store i64 0, i64* %22, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 4, i32 0
  store i32 0, i32* %23, align 8, !tbaa !30
  %24 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 4, i32 1
  store i64 0, i64* %24, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 5, i32 0
  store i32 0, i32* %25, align 8, !tbaa !30
  %26 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 5, i32 1
  store i64 0, i64* %26, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 6, i32 0
  store i32 0, i32* %27, align 8, !tbaa !30
  %28 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 6, i32 1
  store i64 0, i64* %28, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 7, i32 0
  store i32 0, i32* %29, align 8, !tbaa !30
  %30 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 7, i32 1
  store i64 0, i64* %30, align 8, !tbaa !34
  %31 = bitcast %struct.pb_SubTimerList** %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %31, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @pb_SetOpenCL(i8* nocapture %0, i8* nocapture %1) local_unnamed_addr #9 {
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @pb_AddSubTimer(%struct.pb_TimerSet* nocapture %0, i8* nocapture readonly %1, i32 %2) local_unnamed_addr #8 {
  %4 = tail call noalias align 16 dereferenceable_or_null(40) i8* @malloc(i64 40) #25
  %5 = bitcast i8* %4 to %struct.pb_SubTimer*
  %6 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #28
  %7 = shl i64 %6, 32
  %8 = add i64 %7, 4294967296
  %9 = ashr exact i64 %8, 32
  %10 = tail call noalias align 16 i8* @malloc(i64 %9) #25
  %11 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %5, i64 0, i32 0
  store i8* %10, i8** %11, align 16, !tbaa !46
  %12 = tail call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %10, i8* noundef nonnull dereferenceable(1) %1)
  %13 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %5, i64 0, i32 1, i32 0
  store i32 0, i32* %13, align 8, !tbaa !30
  %14 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %5, i64 0, i32 1, i32 1
  store i64 0, i64* %14, align 16, !tbaa !34
  %15 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %5, i64 0, i32 2
  store %struct.pb_SubTimer* null, %struct.pb_SubTimer** %15, align 16, !tbaa !48
  %16 = zext i32 %2 to i64
  %17 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 5, i64 %16
  %18 = load %struct.pb_SubTimerList*, %struct.pb_SubTimerList** %17, align 8, !tbaa !9
  %19 = icmp eq %struct.pb_SubTimerList* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = tail call noalias align 16 dereferenceable_or_null(16) i8* @malloc(i64 16) #25
  %22 = bitcast i8* %21 to %struct.pb_SubTimerList*
  %23 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %22, i64 0, i32 1
  %24 = bitcast %struct.pb_SubTimer** %23 to i8**
  store i8* %4, i8** %24, align 8, !tbaa !49
  %25 = bitcast %struct.pb_SubTimerList** %17 to i8**
  store i8* %21, i8** %25, align 8, !tbaa !9
  br label %37

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %18, i64 0, i32 1
  %28 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %27, align 8, !tbaa !49
  br label %29

29:                                               ; preds = %29, %26
  %30 = phi %struct.pb_SubTimer* [ %28, %26 ], [ %32, %29 ]
  %31 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %30, i64 0, i32 2
  %32 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %31, align 8, !tbaa !48
  %33 = icmp eq %struct.pb_SubTimer* %32, null
  br i1 %33, label %34, label %29, !llvm.loop !51

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %30, i64 0, i32 2
  %36 = bitcast %struct.pb_SubTimer** %35 to i8**
  store i8* %4, i8** %36, align 8, !tbaa !48
  br label %37

37:                                               ; preds = %34, %20
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @sprintf(i8* noalias nocapture noundef writeonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @pb_SwitchToTimer(%struct.pb_TimerSet* nocapture %0, i32 %1) local_unnamed_addr #11 {
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8, !tbaa !44
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %143, label %12

12:                                               ; preds = %2
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 5, i64 %13
  %15 = load %struct.pb_SubTimerList*, %struct.pb_SubTimerList** %14, align 8, !tbaa !9
  %16 = icmp eq %struct.pb_SubTimerList* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %15, i64 0, i32 0
  %19 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %18, align 8, !tbaa !52
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi %struct.pb_SubTimer* [ %19, %17 ], [ null, %12 ]
  switch i32 %10, label %22 [
    i32 5, label %74
    i32 2, label %74
  ]

22:                                               ; preds = %20
  %23 = icmp eq i32 %10, %1
  %24 = icmp eq %struct.pb_SubTimer* %21, null
  br i1 %23, label %51, label %25

25:                                               ; preds = %22
  br i1 %24, label %29, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %13
  %28 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %21, i64 0, i32 1
  tail call void @_Z23pb_StopTimerAndSubTimerP8pb_TimerS0_(%struct.pb_Timer* nonnull %27, %struct.pb_Timer* nonnull %28)
  br label %143

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %13, i32 0
  %31 = load i32, i32* %30, align 8, !tbaa !30
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %34) #26
  br label %143

36:                                               ; preds = %29
  store i32 0, i32* %30, align 8, !tbaa !30
  %37 = bitcast %struct.timeval* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %37) #25
  %38 = call i32 @gettimeofday(%struct.timeval* nonnull %8, %struct.timezone* null) #25
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 0, i32 0
  %40 = load i64, i64* %39, align 8, !tbaa !35
  %41 = mul nsw i64 %40, 1000000
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 0, i32 1
  %43 = load i64, i64* %42, align 8, !tbaa !38
  %44 = add nsw i64 %41, %43
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %37) #25
  %45 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %13, i32 1
  %46 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %13, i32 2
  %47 = load i64, i64* %46, align 8, !tbaa !39
  %48 = sub i64 %44, %47
  %49 = load i64, i64* %45, align 8, !tbaa !40
  %50 = add i64 %48, %49
  store i64 %50, i64* %45, align 8, !tbaa !40
  store i64 %44, i64* %46, align 8, !tbaa !39
  br label %143

51:                                               ; preds = %22
  br i1 %24, label %143, label %52

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %21, i64 0, i32 1, i32 0
  %54 = load i32, i32* %53, align 8, !tbaa !30
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %58 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %57) #26
  br label %143

59:                                               ; preds = %52
  store i32 0, i32* %53, align 8, !tbaa !30
  %60 = bitcast %struct.timeval* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %60) #25
  %61 = call i32 @gettimeofday(%struct.timeval* nonnull %7, %struct.timezone* null) #25
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 0
  %63 = load i64, i64* %62, align 8, !tbaa !35
  %64 = mul nsw i64 %63, 1000000
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 1
  %66 = load i64, i64* %65, align 8, !tbaa !38
  %67 = add nsw i64 %64, %66
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %60) #25
  %68 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %21, i64 0, i32 1, i32 1
  %69 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %21, i64 0, i32 1, i32 2
  %70 = load i64, i64* %69, align 8, !tbaa !39
  %71 = sub i64 %67, %70
  %72 = load i64, i64* %68, align 8, !tbaa !40
  %73 = add i64 %71, %72
  store i64 %73, i64* %68, align 8, !tbaa !40
  store i64 %67, i64* %69, align 8, !tbaa !39
  br label %143

74:                                               ; preds = %20, %20
  %75 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 1
  %76 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %75, align 8, !tbaa !9
  %77 = icmp eq %struct.pb_async_time_marker_list* %76, null
  br i1 %77, label %93, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %76, i64 0, i32 1
  %80 = load i32, i32* %79, align 8, !tbaa !53
  %81 = icmp eq i32 %80, 8
  br i1 %81, label %110, label %82

82:                                               ; preds = %78, %87
  %83 = phi %struct.pb_async_time_marker_list* [ %85, %87 ], [ %76, %78 ]
  %84 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %83, i64 0, i32 3
  %85 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %84, align 8, !tbaa !9
  %86 = icmp eq %struct.pb_async_time_marker_list* %85, null
  br i1 %86, label %91, label %87, !llvm.loop !55

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %85, i64 0, i32 1
  %89 = load i32, i32* %88, align 8, !tbaa !53
  %90 = icmp eq i32 %89, 8
  br i1 %90, label %108, label %82, !llvm.loop !55

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %83, i64 0, i32 3
  br label %93

93:                                               ; preds = %91, %74
  %94 = phi %struct.pb_async_time_marker_list** [ %75, %74 ], [ %92, %91 ]
  %95 = tail call noalias align 16 dereferenceable_or_null(32) i8* @malloc(i64 32) #25
  %96 = bitcast %struct.pb_async_time_marker_list** %94 to i8**
  store i8* %95, i8** %96, align 8, !tbaa !9
  %97 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #25
  %98 = bitcast i8* %95 to %struct.pb_async_time_marker_list*
  %99 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %98, i64 0, i32 2
  store i8* %97, i8** %99, align 16, !tbaa !56
  %100 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %94, align 8, !tbaa !9
  %101 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %100, i64 0, i32 2
  %102 = bitcast i8** %101 to %struct.ihipEvent_t***
  %103 = load %struct.ihipEvent_t**, %struct.ihipEvent_t*** %102, align 8, !tbaa !56
  %104 = tail call i32 @hipEventCreate(%struct.ihipEvent_t** %103)
  %105 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %94, align 8, !tbaa !9
  %106 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %105, i64 0, i32 3
  store %struct.pb_async_time_marker_list* null, %struct.pb_async_time_marker_list** %106, align 8, !tbaa !57
  %107 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %94, align 8, !tbaa !9
  br label %110

108:                                              ; preds = %87
  %109 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %83, i64 0, i32 3
  br label %110

110:                                              ; preds = %108, %78, %93
  %111 = phi %struct.pb_async_time_marker_list* [ %107, %93 ], [ %76, %78 ], [ %85, %108 ]
  %112 = phi %struct.pb_async_time_marker_list** [ %94, %93 ], [ %75, %78 ], [ %109, %108 ]
  %113 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %111, i64 0, i32 0
  store i8* null, i8** %113, align 8, !tbaa !58
  %114 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %112, align 8, !tbaa !9
  %115 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %114, i64 0, i32 1
  store i32 %1, i32* %115, align 8, !tbaa !53
  %116 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %114, i64 0, i32 2
  %117 = bitcast i8** %116 to %struct.ihipEvent_t***
  %118 = load %struct.ihipEvent_t**, %struct.ihipEvent_t*** %117, align 8, !tbaa !56
  %119 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %118, align 8, !tbaa !9
  %120 = tail call i32 @hipEventRecord(%struct.ihipEvent_t* %119, %struct.ihipStream_t* null)
  switch i32 %1, label %121 [
    i32 5, label %143
    i32 2, label %143
  ]

121:                                              ; preds = %110
  %122 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 4, i32 0
  %123 = load i32, i32* %122, align 8, !tbaa !30
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %128, label %125

125:                                              ; preds = %121
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %127 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %126) #26
  br label %143

128:                                              ; preds = %121
  store i32 0, i32* %122, align 8, !tbaa !30
  %129 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %129) #25
  %130 = call i32 @gettimeofday(%struct.timeval* nonnull %6, %struct.timezone* null) #25
  %131 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 0
  %132 = load i64, i64* %131, align 8, !tbaa !35
  %133 = mul nsw i64 %132, 1000000
  %134 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %135 = load i64, i64* %134, align 8, !tbaa !38
  %136 = add nsw i64 %133, %135
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %129) #25
  %137 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 4, i32 1
  %138 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 4, i32 2
  %139 = load i64, i64* %138, align 8, !tbaa !39
  %140 = sub i64 %136, %139
  %141 = load i64, i64* %137, align 8, !tbaa !40
  %142 = add i64 %140, %141
  store i64 %142, i64* %137, align 8, !tbaa !40
  store i64 %136, i64* %138, align 8, !tbaa !39
  br label %143

143:                                              ; preds = %110, %110, %128, %125, %59, %56, %36, %33, %51, %26, %2
  %144 = bitcast %struct.timeval* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %144) #25
  %145 = call i32 @gettimeofday(%struct.timeval* nonnull %5, %struct.timezone* null) #25
  %146 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 0
  %147 = load i64, i64* %146, align 8, !tbaa !35
  %148 = mul nsw i64 %147, 1000000
  %149 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 1
  %150 = load i64, i64* %149, align 8, !tbaa !38
  %151 = add nsw i64 %148, %150
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %144) #25
  %152 = getelementptr %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 1
  %153 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %152, align 8, !tbaa !45
  %154 = icmp eq %struct.pb_async_time_marker_list* %153, null
  br i1 %154, label %201, label %155

155:                                              ; preds = %143
  %156 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %153, i64 0, i32 1
  %157 = load i32, i32* %156, align 8, !tbaa !53
  %158 = icmp eq i32 %157, 8
  br i1 %158, label %201, label %159

159:                                              ; preds = %155
  %160 = load i32, i32* %9, align 8, !tbaa !44
  switch i32 %160, label %162 [
    i32 5, label %161
    i32 2, label %161
  ]

161:                                              ; preds = %159, %159
  switch i32 %1, label %202 [
    i32 3, label %162
    i32 0, label %162
    i32 5, label %220
    i32 2, label %220
  ]

162:                                              ; preds = %159, %161, %161
  br label %163

163:                                              ; preds = %162, %168
  %164 = phi %struct.pb_async_time_marker_list* [ %166, %168 ], [ %153, %162 ]
  %165 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %164, i64 0, i32 3
  %166 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %165, align 8, !tbaa !57
  %167 = icmp eq %struct.pb_async_time_marker_list* %166, null
  br i1 %167, label %172, label %168

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %166, i64 0, i32 1
  %170 = load i32, i32* %169, align 8, !tbaa !53
  %171 = icmp eq i32 %170, 8
  br i1 %171, label %172, label %163, !llvm.loop !59

172:                                              ; preds = %163, %168
  %173 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %164, i64 0, i32 2
  %174 = bitcast i8** %173 to %struct.ihipEvent_t***
  %175 = load %struct.ihipEvent_t**, %struct.ihipEvent_t*** %174, align 8, !tbaa !56
  %176 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %175, align 8, !tbaa !9
  %177 = tail call i32 @hipEventQuery(%struct.ihipEvent_t* %176)
  switch i32 %1, label %192 [
    i32 3, label %178
    i32 0, label %178
  ]

178:                                              ; preds = %172, %172
  %179 = icmp eq i32 %177, 0
  br i1 %179, label %187, label %180

180:                                              ; preds = %178
  %181 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 7, i32 1
  %182 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 2
  %183 = load i64, i64* %182, align 8, !tbaa !60
  %184 = sub i64 %151, %183
  %185 = load i64, i64* %181, align 8, !tbaa !40
  %186 = add i64 %184, %185
  store i64 %186, i64* %181, align 8, !tbaa !40
  br label %187

187:                                              ; preds = %180, %178
  %188 = load %struct.ihipEvent_t**, %struct.ihipEvent_t*** %174, align 8, !tbaa !56
  %189 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %188, align 8, !tbaa !9
  %190 = tail call i32 @hipEventSynchronize(%struct.ihipEvent_t* %189)
  %191 = tail call fastcc i64 @_ZL18record_async_timesP11pb_TimerSet(%struct.pb_TimerSet* %0)
  br i1 %179, label %196, label %201

192:                                              ; preds = %172
  %193 = icmp eq i32 %177, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %192
  %195 = tail call fastcc i64 @_ZL18record_async_timesP11pb_TimerSet(%struct.pb_TimerSet* %0)
  br label %196

196:                                              ; preds = %187, %194
  %197 = phi i64 [ %195, %194 ], [ %191, %187 ]
  %198 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 7, i32 1
  %199 = load i64, i64* %198, align 8, !tbaa !34
  %200 = add i64 %199, %197
  store i64 %200, i64* %198, align 8, !tbaa !34
  br label %201

201:                                              ; preds = %196, %143, %192, %187, %155
  switch i32 %1, label %202 [
    i32 0, label %283
    i32 5, label %220
    i32 2, label %220
  ]

202:                                              ; preds = %161, %201
  %203 = zext i32 %1 to i64
  %204 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %203, i32 0
  %205 = load i32, i32* %204, align 8, !tbaa !30
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %202
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %209 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %208) #26
  br label %283

210:                                              ; preds = %202
  store i32 1, i32* %204, align 8, !tbaa !30
  %211 = bitcast %struct.timeval* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %211) #25
  %212 = call i32 @gettimeofday(%struct.timeval* nonnull %4, %struct.timezone* null) #25
  %213 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0
  %214 = load i64, i64* %213, align 8, !tbaa !35
  %215 = mul nsw i64 %214, 1000000
  %216 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1
  %217 = load i64, i64* %216, align 8, !tbaa !38
  %218 = add nsw i64 %215, %217
  %219 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %203, i32 2
  store i64 %218, i64* %219, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %211) #25
  br label %283

220:                                              ; preds = %161, %161, %201, %201
  %221 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %152, align 8, !tbaa !45
  %222 = icmp eq %struct.pb_async_time_marker_list* %221, null
  br i1 %222, label %227, label %223

223:                                              ; preds = %220
  %224 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %221, i64 0, i32 1
  %225 = load i32, i32* %224, align 8, !tbaa !53
  %226 = icmp eq i32 %225, 8
  br i1 %226, label %238, label %250

227:                                              ; preds = %220
  %228 = tail call noalias align 16 dereferenceable_or_null(32) i8* @malloc(i64 32) #25
  %229 = bitcast %struct.pb_async_time_marker_list** %152 to i8**
  store i8* %228, i8** %229, align 8, !tbaa !9
  %230 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #25
  %231 = bitcast i8* %228 to %struct.pb_async_time_marker_list*
  %232 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %231, i64 0, i32 2
  store i8* %230, i8** %232, align 16, !tbaa !56
  %233 = bitcast i8* %230 to %struct.ihipEvent_t**
  %234 = tail call i32 @hipEventCreate(%struct.ihipEvent_t** %233)
  %235 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %152, align 8, !tbaa !9
  %236 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %235, i64 0, i32 3
  store %struct.pb_async_time_marker_list* null, %struct.pb_async_time_marker_list** %236, align 8, !tbaa !57
  %237 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %152, align 8, !tbaa !9
  br label %238

238:                                              ; preds = %223, %227
  %239 = phi %struct.pb_async_time_marker_list* [ %237, %227 ], [ %221, %223 ]
  %240 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %239, i64 0, i32 0
  store i8* null, i8** %240, align 8, !tbaa !58
  %241 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %152, align 8, !tbaa !9
  %242 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %241, i64 0, i32 1
  store i32 %1, i32* %242, align 8, !tbaa !53
  %243 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %241, i64 0, i32 2
  %244 = bitcast i8** %243 to %struct.ihipEvent_t***
  %245 = load %struct.ihipEvent_t**, %struct.ihipEvent_t*** %244, align 8, !tbaa !56
  %246 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %245, align 8, !tbaa !9
  %247 = tail call i32 @hipEventRecord(%struct.ihipEvent_t* %246, %struct.ihipStream_t* null)
  %248 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 2
  store i64 %151, i64* %248, align 8, !tbaa !60
  %249 = load i32, i32* %9, align 8, !tbaa !44
  br label %264

250:                                              ; preds = %223
  %251 = load i32, i32* %9, align 8, !tbaa !44
  switch i32 %251, label %252 [
    i32 5, label %264
    i32 2, label %264
  ]

252:                                              ; preds = %250, %257
  %253 = phi %struct.pb_async_time_marker_list* [ %255, %257 ], [ %221, %250 ]
  %254 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %253, i64 0, i32 3
  %255 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %254, align 8, !tbaa !57
  %256 = icmp eq %struct.pb_async_time_marker_list* %255, null
  br i1 %256, label %261, label %257

257:                                              ; preds = %252
  %258 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %255, i64 0, i32 1
  %259 = load i32, i32* %258, align 8, !tbaa !53
  %260 = icmp eq i32 %259, 8
  br i1 %260, label %261, label %252, !llvm.loop !59

261:                                              ; preds = %252, %257
  %262 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %253, i64 0, i32 0
  store i8* null, i8** %262, align 8, !tbaa !58
  %263 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %253, i64 0, i32 1
  store i32 %1, i32* %263, align 8, !tbaa !53
  br label %264

264:                                              ; preds = %250, %250, %261, %238
  %265 = phi i32 [ %251, %250 ], [ %251, %250 ], [ %251, %261 ], [ %249, %238 ]
  switch i32 %265, label %266 [
    i32 5, label %283
    i32 2, label %283
  ]

266:                                              ; preds = %264
  %267 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 4, i32 0
  %268 = load i32, i32* %267, align 8, !tbaa !30
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %273, label %270

270:                                              ; preds = %266
  %271 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %272 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %271) #26
  br label %283

273:                                              ; preds = %266
  store i32 1, i32* %267, align 8, !tbaa !30
  %274 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %274) #25
  %275 = call i32 @gettimeofday(%struct.timeval* nonnull %3, %struct.timezone* null) #25
  %276 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 0
  %277 = load i64, i64* %276, align 8, !tbaa !35
  %278 = mul nsw i64 %277, 1000000
  %279 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 1
  %280 = load i64, i64* %279, align 8, !tbaa !38
  %281 = add nsw i64 %278, %280
  %282 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 4, i32 2
  store i64 %281, i64* %282, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %274) #25
  br label %283

283:                                              ; preds = %201, %264, %264, %273, %270, %210, %207
  store i32 %1, i32* %9, align 8, !tbaa !44
  ret void
}

declare dso_local i32 @hipEventQuery(%struct.ihipEvent_t*) local_unnamed_addr #12

declare dso_local i32 @hipEventSynchronize(%struct.ihipEvent_t*) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define internal fastcc i64 @_ZL18record_async_timesP11pb_TimerSet(%struct.pb_TimerSet* nocapture %0) unnamed_addr #11 {
  %2 = alloca float, align 4
  %3 = getelementptr %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 1
  %4 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %3, align 8, !tbaa !45
  %5 = icmp eq %struct.pb_async_time_marker_list* %4, null
  br i1 %5, label %81, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %4, i64 0, i32 1
  %8 = load i32, i32* %7, align 8, !tbaa !53
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %21, label %10

10:                                               ; preds = %6, %15
  %11 = phi %struct.pb_async_time_marker_list* [ %13, %15 ], [ %4, %6 ]
  %12 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %11, i64 0, i32 3
  %13 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %12, align 8, !tbaa !57
  %14 = icmp eq %struct.pb_async_time_marker_list* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %13, i64 0, i32 1
  %17 = load i32, i32* %16, align 8, !tbaa !53
  %18 = icmp eq i32 %17, 8
  br i1 %18, label %19, label %10, !llvm.loop !59

19:                                               ; preds = %10, %15
  %20 = icmp eq %struct.pb_async_time_marker_list* %4, %11
  br i1 %20, label %75, label %21

21:                                               ; preds = %6, %19
  %22 = phi %struct.pb_async_time_marker_list* [ %11, %19 ], [ null, %6 ]
  %23 = bitcast float* %2 to i8*
  br label %24

24:                                               ; preds = %21, %71
  %25 = phi %struct.pb_async_time_marker_list* [ %73, %71 ], [ %4, %21 ]
  %26 = phi i64 [ %72, %71 ], [ 0, %21 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #25
  %27 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %25, i64 0, i32 2
  %28 = bitcast i8** %27 to %struct.ihipEvent_t***
  %29 = load %struct.ihipEvent_t**, %struct.ihipEvent_t*** %28, align 8, !tbaa !56
  %30 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %29, align 8, !tbaa !9
  %31 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %25, i64 0, i32 3
  %32 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %31, align 8, !tbaa !57
  %33 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %32, i64 0, i32 2
  %34 = bitcast i8** %33 to %struct.ihipEvent_t***
  %35 = load %struct.ihipEvent_t**, %struct.ihipEvent_t*** %34, align 8, !tbaa !56
  %36 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %35, align 8, !tbaa !9
  %37 = call i32 @hipEventElapsedTime(float* nonnull %2, %struct.ihipEvent_t* %30, %struct.ihipEvent_t* %36)
  %38 = load float, float* %2, align 4, !tbaa !61
  %39 = fpext float %38 to double
  %40 = fmul contract double %39, 1.000000e+03
  %41 = fptoui double %40 to i64
  %42 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %25, i64 0, i32 1
  %43 = load i32, i32* %42, align 8, !tbaa !53
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %44, i32 1
  %46 = load i64, i64* %45, align 8, !tbaa !34
  %47 = add i64 %46, %41
  store i64 %47, i64* %45, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %25, i64 0, i32 0
  %49 = load i8*, i8** %48, align 8, !tbaa !58
  %50 = icmp eq i8* %49, null
  br i1 %50, label %71, label %51

51:                                               ; preds = %24
  %52 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 5, i64 %44
  %53 = load %struct.pb_SubTimerList*, %struct.pb_SubTimerList** %52, align 8, !tbaa !9
  %54 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %53, i64 0, i32 1
  %55 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %54, align 8, !tbaa !9
  %56 = icmp eq %struct.pb_SubTimer* %55, null
  br i1 %56, label %71, label %57

57:                                               ; preds = %51, %67
  %58 = phi %struct.pb_SubTimer* [ %69, %67 ], [ %55, %51 ]
  %59 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %58, i64 0, i32 0
  %60 = load i8*, i8** %59, align 8, !tbaa !46
  %61 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %60, i8* noundef nonnull dereferenceable(1) %49) #28
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %58, i64 0, i32 1, i32 1
  %65 = load i64, i64* %64, align 8, !tbaa !63
  %66 = add i64 %65, %41
  store i64 %66, i64* %64, align 8, !tbaa !63
  br label %71

67:                                               ; preds = %57
  %68 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %58, i64 0, i32 2
  %69 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %68, align 8, !tbaa !9
  %70 = icmp eq %struct.pb_SubTimer* %69, null
  br i1 %70, label %71, label %57, !llvm.loop !64

71:                                               ; preds = %67, %51, %63, %24
  %72 = add i64 %26, %41
  store i32 8, i32* %42, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #25
  %73 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %31, align 8, !tbaa !9
  %74 = icmp eq %struct.pb_async_time_marker_list* %73, %22
  br i1 %74, label %75, label %24, !llvm.loop !65

75:                                               ; preds = %71, %19
  %76 = phi i64 [ 0, %19 ], [ %72, %71 ]
  %77 = phi %struct.pb_async_time_marker_list* [ %4, %19 ], [ %22, %71 ]
  %78 = icmp eq %struct.pb_async_time_marker_list* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %77, i64 0, i32 1
  store i32 8, i32* %80, align 8, !tbaa !53
  br label %81

81:                                               ; preds = %1, %79, %75
  %82 = phi i64 [ %76, %79 ], [ %76, %75 ], [ 0, %1 ]
  ret i64 %82
}

; Function Attrs: mustprogress uwtable
define dso_local void @pb_SwitchToSubTimer(%struct.pb_TimerSet* %0, i8* %1, i32 %2) local_unnamed_addr #11 {
  %4 = alloca %struct.timeval, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 0
  %12 = load i32, i32* %11, align 8, !tbaa !44
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 5, i64 %13
  %15 = load %struct.pb_SubTimerList*, %struct.pb_SubTimerList** %14, align 8, !tbaa !9
  %16 = icmp eq %struct.pb_SubTimerList* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %15, i64 0, i32 0
  %19 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %18, align 8, !tbaa !52
  br label %20

20:                                               ; preds = %3, %17
  %21 = phi %struct.pb_SubTimer* [ %19, %17 ], [ null, %3 ]
  switch i32 %12, label %22 [
    i32 0, label %143
    i32 5, label %74
    i32 2, label %74
  ]

22:                                               ; preds = %20
  %23 = icmp eq i32 %12, %2
  %24 = icmp eq %struct.pb_SubTimer* %21, null
  br i1 %23, label %51, label %25

25:                                               ; preds = %22
  br i1 %24, label %29, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %13
  %28 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %21, i64 0, i32 1
  tail call void @_Z23pb_StopTimerAndSubTimerP8pb_TimerS0_(%struct.pb_Timer* nonnull %27, %struct.pb_Timer* nonnull %28)
  br label %143

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %13, i32 0
  %31 = load i32, i32* %30, align 8, !tbaa !30
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %34) #26
  br label %143

36:                                               ; preds = %29
  store i32 0, i32* %30, align 8, !tbaa !30
  %37 = bitcast %struct.timeval* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %37) #25
  %38 = call i32 @gettimeofday(%struct.timeval* nonnull %10, %struct.timezone* null) #25
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i64 0, i32 0
  %40 = load i64, i64* %39, align 8, !tbaa !35
  %41 = mul nsw i64 %40, 1000000
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i64 0, i32 1
  %43 = load i64, i64* %42, align 8, !tbaa !38
  %44 = add nsw i64 %41, %43
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %37) #25
  %45 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %13, i32 1
  %46 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %13, i32 2
  %47 = load i64, i64* %46, align 8, !tbaa !39
  %48 = sub i64 %44, %47
  %49 = load i64, i64* %45, align 8, !tbaa !40
  %50 = add i64 %48, %49
  store i64 %50, i64* %45, align 8, !tbaa !40
  store i64 %44, i64* %46, align 8, !tbaa !39
  br label %143

51:                                               ; preds = %22
  br i1 %24, label %143, label %52

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %21, i64 0, i32 1, i32 0
  %54 = load i32, i32* %53, align 8, !tbaa !30
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %58 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %57) #26
  br label %143

59:                                               ; preds = %52
  store i32 0, i32* %53, align 8, !tbaa !30
  %60 = bitcast %struct.timeval* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %60) #25
  %61 = call i32 @gettimeofday(%struct.timeval* nonnull %9, %struct.timezone* null) #25
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i64 0, i32 0
  %63 = load i64, i64* %62, align 8, !tbaa !35
  %64 = mul nsw i64 %63, 1000000
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i64 0, i32 1
  %66 = load i64, i64* %65, align 8, !tbaa !38
  %67 = add nsw i64 %64, %66
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %60) #25
  %68 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %21, i64 0, i32 1, i32 1
  %69 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %21, i64 0, i32 1, i32 2
  %70 = load i64, i64* %69, align 8, !tbaa !39
  %71 = sub i64 %67, %70
  %72 = load i64, i64* %68, align 8, !tbaa !40
  %73 = add i64 %71, %72
  store i64 %73, i64* %68, align 8, !tbaa !40
  store i64 %67, i64* %69, align 8, !tbaa !39
  br label %143

74:                                               ; preds = %20, %20
  %75 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 1
  %76 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %75, align 8, !tbaa !9
  %77 = icmp eq %struct.pb_async_time_marker_list* %76, null
  br i1 %77, label %93, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %76, i64 0, i32 1
  %80 = load i32, i32* %79, align 8, !tbaa !53
  %81 = icmp eq i32 %80, 8
  br i1 %81, label %110, label %82

82:                                               ; preds = %78, %87
  %83 = phi %struct.pb_async_time_marker_list* [ %85, %87 ], [ %76, %78 ]
  %84 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %83, i64 0, i32 3
  %85 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %84, align 8, !tbaa !9
  %86 = icmp eq %struct.pb_async_time_marker_list* %85, null
  br i1 %86, label %91, label %87, !llvm.loop !66

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %85, i64 0, i32 1
  %89 = load i32, i32* %88, align 8, !tbaa !53
  %90 = icmp eq i32 %89, 8
  br i1 %90, label %108, label %82, !llvm.loop !66

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %83, i64 0, i32 3
  br label %93

93:                                               ; preds = %91, %74
  %94 = phi %struct.pb_async_time_marker_list** [ %75, %74 ], [ %92, %91 ]
  %95 = tail call noalias align 16 dereferenceable_or_null(32) i8* @malloc(i64 32) #25
  %96 = bitcast %struct.pb_async_time_marker_list** %94 to i8**
  store i8* %95, i8** %96, align 8, !tbaa !9
  %97 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #25
  %98 = bitcast i8* %95 to %struct.pb_async_time_marker_list*
  %99 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %98, i64 0, i32 2
  store i8* %97, i8** %99, align 16, !tbaa !56
  %100 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %94, align 8, !tbaa !9
  %101 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %100, i64 0, i32 2
  %102 = bitcast i8** %101 to %struct.ihipEvent_t***
  %103 = load %struct.ihipEvent_t**, %struct.ihipEvent_t*** %102, align 8, !tbaa !56
  %104 = tail call i32 @hipEventCreate(%struct.ihipEvent_t** %103)
  %105 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %94, align 8, !tbaa !9
  %106 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %105, i64 0, i32 3
  store %struct.pb_async_time_marker_list* null, %struct.pb_async_time_marker_list** %106, align 8, !tbaa !57
  %107 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %94, align 8, !tbaa !9
  br label %110

108:                                              ; preds = %87
  %109 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %83, i64 0, i32 3
  br label %110

110:                                              ; preds = %108, %78, %93
  %111 = phi %struct.pb_async_time_marker_list* [ %107, %93 ], [ %76, %78 ], [ %85, %108 ]
  %112 = phi %struct.pb_async_time_marker_list** [ %94, %93 ], [ %75, %78 ], [ %109, %108 ]
  %113 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %111, i64 0, i32 0
  store i8* %1, i8** %113, align 8, !tbaa !58
  %114 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %112, align 8, !tbaa !9
  %115 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %114, i64 0, i32 1
  store i32 %2, i32* %115, align 8, !tbaa !53
  %116 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %114, i64 0, i32 2
  %117 = bitcast i8** %116 to %struct.ihipEvent_t***
  %118 = load %struct.ihipEvent_t**, %struct.ihipEvent_t*** %117, align 8, !tbaa !56
  %119 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %118, align 8, !tbaa !9
  %120 = tail call i32 @hipEventRecord(%struct.ihipEvent_t* %119, %struct.ihipStream_t* null)
  switch i32 %2, label %121 [
    i32 5, label %143
    i32 2, label %143
  ]

121:                                              ; preds = %110
  %122 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 4, i32 0
  %123 = load i32, i32* %122, align 8, !tbaa !30
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %128, label %125

125:                                              ; preds = %121
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %127 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %126) #26
  br label %143

128:                                              ; preds = %121
  store i32 0, i32* %122, align 8, !tbaa !30
  %129 = bitcast %struct.timeval* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %129) #25
  %130 = call i32 @gettimeofday(%struct.timeval* nonnull %8, %struct.timezone* null) #25
  %131 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 0, i32 0
  %132 = load i64, i64* %131, align 8, !tbaa !35
  %133 = mul nsw i64 %132, 1000000
  %134 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 0, i32 1
  %135 = load i64, i64* %134, align 8, !tbaa !38
  %136 = add nsw i64 %133, %135
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %129) #25
  %137 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 4, i32 1
  %138 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 4, i32 2
  %139 = load i64, i64* %138, align 8, !tbaa !39
  %140 = sub i64 %136, %139
  %141 = load i64, i64* %137, align 8, !tbaa !40
  %142 = add i64 %140, %141
  store i64 %142, i64* %137, align 8, !tbaa !40
  store i64 %136, i64* %138, align 8, !tbaa !39
  br label %143

143:                                              ; preds = %20, %110, %110, %128, %125, %59, %56, %36, %33, %51, %26
  %144 = bitcast %struct.timeval* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %144) #25
  %145 = call i32 @gettimeofday(%struct.timeval* nonnull %7, %struct.timezone* null) #25
  %146 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 0
  %147 = load i64, i64* %146, align 8, !tbaa !35
  %148 = mul nsw i64 %147, 1000000
  %149 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 1
  %150 = load i64, i64* %149, align 8, !tbaa !38
  %151 = add nsw i64 %148, %150
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %144) #25
  %152 = getelementptr %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 1
  %153 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %152, align 8, !tbaa !45
  %154 = icmp eq %struct.pb_async_time_marker_list* %153, null
  br i1 %154, label %201, label %155

155:                                              ; preds = %143
  %156 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %153, i64 0, i32 1
  %157 = load i32, i32* %156, align 8, !tbaa !53
  %158 = icmp eq i32 %157, 8
  br i1 %158, label %201, label %159

159:                                              ; preds = %155
  %160 = load i32, i32* %11, align 8, !tbaa !44
  switch i32 %160, label %162 [
    i32 5, label %161
    i32 2, label %161
  ]

161:                                              ; preds = %159, %159
  switch i32 %2, label %201 [
    i32 3, label %162
    i32 0, label %162
  ]

162:                                              ; preds = %159, %161, %161
  br label %163

163:                                              ; preds = %162, %168
  %164 = phi %struct.pb_async_time_marker_list* [ %166, %168 ], [ %153, %162 ]
  %165 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %164, i64 0, i32 3
  %166 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %165, align 8, !tbaa !57
  %167 = icmp eq %struct.pb_async_time_marker_list* %166, null
  br i1 %167, label %172, label %168

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %166, i64 0, i32 1
  %170 = load i32, i32* %169, align 8, !tbaa !53
  %171 = icmp eq i32 %170, 8
  br i1 %171, label %172, label %163, !llvm.loop !59

172:                                              ; preds = %163, %168
  %173 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %164, i64 0, i32 2
  %174 = bitcast i8** %173 to %struct.ihipEvent_t***
  %175 = load %struct.ihipEvent_t**, %struct.ihipEvent_t*** %174, align 8, !tbaa !56
  %176 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %175, align 8, !tbaa !9
  %177 = tail call i32 @hipEventQuery(%struct.ihipEvent_t* %176)
  switch i32 %2, label %192 [
    i32 3, label %178
    i32 0, label %178
  ]

178:                                              ; preds = %172, %172
  %179 = icmp eq i32 %177, 0
  br i1 %179, label %187, label %180

180:                                              ; preds = %178
  %181 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 7, i32 1
  %182 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 2
  %183 = load i64, i64* %182, align 8, !tbaa !60
  %184 = sub i64 %151, %183
  %185 = load i64, i64* %181, align 8, !tbaa !40
  %186 = add i64 %184, %185
  store i64 %186, i64* %181, align 8, !tbaa !40
  br label %187

187:                                              ; preds = %180, %178
  %188 = load %struct.ihipEvent_t**, %struct.ihipEvent_t*** %174, align 8, !tbaa !56
  %189 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %188, align 8, !tbaa !9
  %190 = tail call i32 @hipEventSynchronize(%struct.ihipEvent_t* %189)
  %191 = tail call fastcc i64 @_ZL18record_async_timesP11pb_TimerSet(%struct.pb_TimerSet* %0)
  br i1 %179, label %196, label %201

192:                                              ; preds = %172
  %193 = icmp eq i32 %177, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %192
  %195 = tail call fastcc i64 @_ZL18record_async_timesP11pb_TimerSet(%struct.pb_TimerSet* %0)
  br label %196

196:                                              ; preds = %187, %194
  %197 = phi i64 [ %195, %194 ], [ %191, %187 ]
  %198 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 7, i32 1
  %199 = load i64, i64* %198, align 8, !tbaa !34
  %200 = add i64 %199, %197
  store i64 %200, i64* %198, align 8, !tbaa !34
  br label %201

201:                                              ; preds = %196, %161, %143, %192, %187, %155
  %202 = zext i32 %2 to i64
  %203 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 5, i64 %202
  %204 = load %struct.pb_SubTimerList*, %struct.pb_SubTimerList** %203, align 8, !tbaa !9
  %205 = icmp eq i8* %1, null
  br i1 %205, label %220, label %206

206:                                              ; preds = %201
  %207 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %204, i64 0, i32 1
  %208 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %207, align 8, !tbaa !9
  %209 = icmp eq %struct.pb_SubTimer* %208, null
  br i1 %209, label %220, label %210

210:                                              ; preds = %206, %216
  %211 = phi %struct.pb_SubTimer* [ %218, %216 ], [ %208, %206 ]
  %212 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %211, i64 0, i32 0
  %213 = load i8*, i8** %212, align 8, !tbaa !46
  %214 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %213, i8* noundef nonnull %1) #28
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %210
  %217 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %211, i64 0, i32 2
  %218 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %217, align 8, !tbaa !9
  %219 = icmp eq %struct.pb_SubTimer* %218, null
  br i1 %219, label %220, label %210, !llvm.loop !67

220:                                              ; preds = %210, %216, %206, %201
  %221 = phi %struct.pb_SubTimer* [ null, %201 ], [ null, %206 ], [ %211, %210 ], [ null, %216 ]
  switch i32 %2, label %222 [
    i32 0, label %336
    i32 5, label %269
    i32 2, label %269
  ]

222:                                              ; preds = %220
  %223 = icmp eq %struct.pb_SubTimerList* %204, null
  br i1 %223, label %226, label %224

224:                                              ; preds = %222
  %225 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %204, i64 0, i32 0
  store %struct.pb_SubTimer* %221, %struct.pb_SubTimer** %225, align 8, !tbaa !52
  br label %226

226:                                              ; preds = %224, %222
  %227 = load i32, i32* %11, align 8, !tbaa !44
  %228 = icmp ne i32 %227, %2
  %229 = icmp ne %struct.pb_SubTimer* %221, null
  %230 = select i1 %228, i1 %229, i1 false
  br i1 %230, label %231, label %234

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %202
  %233 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %221, i64 0, i32 1
  tail call void @_Z24pb_StartTimerAndSubTimerP8pb_TimerS0_(%struct.pb_Timer* nonnull %232, %struct.pb_Timer* nonnull %233)
  br label %336

234:                                              ; preds = %226
  br i1 %229, label %235, label %252

235:                                              ; preds = %234
  %236 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %221, i64 0, i32 1, i32 0
  %237 = load i32, i32* %236, align 8, !tbaa !30
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %235
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %241 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %240) #26
  br label %336

242:                                              ; preds = %235
  store i32 1, i32* %236, align 8, !tbaa !30
  %243 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %243) #25
  %244 = call i32 @gettimeofday(%struct.timeval* nonnull %6, %struct.timezone* null) #25
  %245 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 0
  %246 = load i64, i64* %245, align 8, !tbaa !35
  %247 = mul nsw i64 %246, 1000000
  %248 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %249 = load i64, i64* %248, align 8, !tbaa !38
  %250 = add nsw i64 %247, %249
  %251 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %221, i64 0, i32 1, i32 2
  store i64 %250, i64* %251, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %243) #25
  br label %336

252:                                              ; preds = %234
  %253 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %202, i32 0
  %254 = load i32, i32* %253, align 8, !tbaa !30
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %252
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %258 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %257) #26
  br label %336

259:                                              ; preds = %252
  store i32 1, i32* %253, align 8, !tbaa !30
  %260 = bitcast %struct.timeval* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %260) #25
  %261 = call i32 @gettimeofday(%struct.timeval* nonnull %5, %struct.timezone* null) #25
  %262 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 0
  %263 = load i64, i64* %262, align 8, !tbaa !35
  %264 = mul nsw i64 %263, 1000000
  %265 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 1
  %266 = load i64, i64* %265, align 8, !tbaa !38
  %267 = add nsw i64 %264, %266
  %268 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %202, i32 2
  store i64 %267, i64* %268, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %260) #25
  br label %336

269:                                              ; preds = %220, %220
  %270 = icmp eq %struct.pb_SubTimerList* %204, null
  br i1 %270, label %273, label %271

271:                                              ; preds = %269
  %272 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %204, i64 0, i32 0
  store %struct.pb_SubTimer* %221, %struct.pb_SubTimer** %272, align 8, !tbaa !52
  br label %273

273:                                              ; preds = %271, %269
  %274 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %152, align 8, !tbaa !45
  %275 = icmp eq %struct.pb_async_time_marker_list* %274, null
  br i1 %275, label %280, label %276

276:                                              ; preds = %273
  %277 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %274, i64 0, i32 1
  %278 = load i32, i32* %277, align 8, !tbaa !53
  %279 = icmp eq i32 %278, 8
  br i1 %279, label %291, label %303

280:                                              ; preds = %273
  %281 = tail call noalias align 16 dereferenceable_or_null(32) i8* @malloc(i64 32) #25
  %282 = bitcast %struct.pb_async_time_marker_list** %152 to i8**
  store i8* %281, i8** %282, align 8, !tbaa !9
  %283 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #25
  %284 = bitcast i8* %281 to %struct.pb_async_time_marker_list*
  %285 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %284, i64 0, i32 2
  store i8* %283, i8** %285, align 16, !tbaa !56
  %286 = bitcast i8* %283 to %struct.ihipEvent_t**
  %287 = tail call i32 @hipEventCreate(%struct.ihipEvent_t** %286)
  %288 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %152, align 8, !tbaa !9
  %289 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %288, i64 0, i32 3
  store %struct.pb_async_time_marker_list* null, %struct.pb_async_time_marker_list** %289, align 8, !tbaa !57
  %290 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %152, align 8, !tbaa !9
  br label %291

291:                                              ; preds = %276, %280
  %292 = phi %struct.pb_async_time_marker_list* [ %290, %280 ], [ %274, %276 ]
  %293 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %292, i64 0, i32 0
  store i8* %1, i8** %293, align 8, !tbaa !58
  %294 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %152, align 8, !tbaa !9
  %295 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %294, i64 0, i32 1
  store i32 %2, i32* %295, align 8, !tbaa !53
  %296 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %294, i64 0, i32 2
  %297 = bitcast i8** %296 to %struct.ihipEvent_t***
  %298 = load %struct.ihipEvent_t**, %struct.ihipEvent_t*** %297, align 8, !tbaa !56
  %299 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %298, align 8, !tbaa !9
  %300 = tail call i32 @hipEventRecord(%struct.ihipEvent_t* %299, %struct.ihipStream_t* null)
  %301 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 2
  store i64 %151, i64* %301, align 8, !tbaa !60
  %302 = load i32, i32* %11, align 8, !tbaa !44
  br label %317

303:                                              ; preds = %276
  %304 = load i32, i32* %11, align 8, !tbaa !44
  switch i32 %304, label %305 [
    i32 5, label %317
    i32 2, label %317
  ]

305:                                              ; preds = %303, %310
  %306 = phi %struct.pb_async_time_marker_list* [ %308, %310 ], [ %274, %303 ]
  %307 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %306, i64 0, i32 3
  %308 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %307, align 8, !tbaa !57
  %309 = icmp eq %struct.pb_async_time_marker_list* %308, null
  br i1 %309, label %314, label %310

310:                                              ; preds = %305
  %311 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %308, i64 0, i32 1
  %312 = load i32, i32* %311, align 8, !tbaa !53
  %313 = icmp eq i32 %312, 8
  br i1 %313, label %314, label %305, !llvm.loop !59

314:                                              ; preds = %305, %310
  %315 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %306, i64 0, i32 1
  store i32 %2, i32* %315, align 8, !tbaa !53
  %316 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %306, i64 0, i32 0
  store i8* %1, i8** %316, align 8, !tbaa !58
  br label %317

317:                                              ; preds = %303, %303, %314, %291
  %318 = phi i32 [ %304, %303 ], [ %304, %303 ], [ %304, %314 ], [ %302, %291 ]
  switch i32 %318, label %319 [
    i32 5, label %336
    i32 2, label %336
  ]

319:                                              ; preds = %317
  %320 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 4, i32 0
  %321 = load i32, i32* %320, align 8, !tbaa !30
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %326, label %323

323:                                              ; preds = %319
  %324 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %325 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %324) #26
  br label %336

326:                                              ; preds = %319
  store i32 1, i32* %320, align 8, !tbaa !30
  %327 = bitcast %struct.timeval* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %327) #25
  %328 = call i32 @gettimeofday(%struct.timeval* nonnull %4, %struct.timezone* null) #25
  %329 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0
  %330 = load i64, i64* %329, align 8, !tbaa !35
  %331 = mul nsw i64 %330, 1000000
  %332 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1
  %333 = load i64, i64* %332, align 8, !tbaa !38
  %334 = add nsw i64 %331, %333
  %335 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 4, i32 2
  store i64 %334, i64* %335, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %327) #25
  br label %336

336:                                              ; preds = %220, %317, %317, %326, %323, %259, %256, %242, %239, %231
  store i32 %2, i32* %11, align 8, !tbaa !44
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @pb_PrintTimerSet(%struct.pb_TimerSet* nocapture readonly %0) local_unnamed_addr #8 {
  %2 = alloca %struct.timeval, align 8
  %3 = alloca [6 x i8*], align 16
  %4 = bitcast %struct.timeval* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #25
  %5 = call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* null) #25
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 1
  %9 = load i64, i64* %8, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #25
  %10 = bitcast [6 x i8*]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %10) #25
  %11 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i64 0, i64 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8** %11, align 16
  %12 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i64 0, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i64 0, i64 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8** %13, align 16
  %14 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i64 0, i64 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i64 0, i64 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8** %15, align 16
  %16 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i64 0, i64 5
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8** %16, align 8
  br label %17

17:                                               ; preds = %1, %88
  %18 = phi i64 [ 1, %1 ], [ %89, %88 ]
  %19 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %18, i32 0
  %20 = load i32, i32* %19, align 8, !tbaa !30
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %24 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %23) #26
  br label %25

25:                                               ; preds = %17, %22
  %26 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %18, i32 1
  %27 = load i64, i64* %26, align 8, !tbaa !34
  %28 = uitofp i64 %27 to double
  %29 = fdiv contract double %28, 1.000000e+06
  %30 = fcmp contract une double %29, 0.000000e+00
  br i1 %30, label %31, label %88

31:                                               ; preds = %25
  %32 = add nsw i64 %18, -1
  %33 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i64 0, i64 %32
  %34 = load i8*, i8** %33, align 8, !tbaa !9
  %35 = load i32, i32* %19, align 8, !tbaa !30
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %39 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %38) #26
  %40 = load i64, i64* %26, align 8, !tbaa !34
  %41 = uitofp i64 %40 to double
  %42 = fdiv contract double %41, 1.000000e+06
  br label %43

43:                                               ; preds = %31, %37
  %44 = phi double [ %29, %31 ], [ %42, %37 ]
  %45 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32 10, i8* %34, double %44)
  %46 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 5, i64 %18
  %47 = load %struct.pb_SubTimerList*, %struct.pb_SubTimerList** %46, align 8, !tbaa !9
  %48 = icmp eq %struct.pb_SubTimerList* %47, null
  br i1 %48, label %88, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %47, i64 0, i32 1
  %51 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %50, align 8, !tbaa !9
  %52 = icmp eq %struct.pb_SubTimer* %51, null
  br i1 %52, label %88, label %53

53:                                               ; preds = %49, %53
  %54 = phi %struct.pb_SubTimer* [ %64, %53 ], [ %51, %49 ]
  %55 = phi i32 [ %62, %53 ], [ 0, %49 ]
  %56 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %54, i64 0, i32 0
  %57 = load i8*, i8** %56, align 8, !tbaa !46
  %58 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %57) #28
  %59 = sext i32 %55 to i64
  %60 = icmp ugt i64 %58, %59
  %61 = trunc i64 %58 to i32
  %62 = select i1 %60, i32 %61, i32 %55
  %63 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %54, i64 0, i32 2
  %64 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %63, align 8, !tbaa !9
  %65 = icmp eq %struct.pb_SubTimer* %64, null
  br i1 %65, label %66, label %53, !llvm.loop !68

66:                                               ; preds = %53
  %67 = icmp sgt i32 %62, 10
  %68 = select i1 %67, i32 %62, i32 10
  br i1 %52, label %88, label %69

69:                                               ; preds = %66, %79
  %70 = phi %struct.pb_SubTimer* [ %86, %79 ], [ %51, %66 ]
  %71 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %70, i64 0, i32 0
  %72 = load i8*, i8** %71, align 8, !tbaa !46
  %73 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %70, i64 0, i32 1, i32 0
  %74 = load i32, i32* %73, align 8, !tbaa !30
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %69
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %78 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %77) #26
  br label %79

79:                                               ; preds = %69, %76
  %80 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %70, i64 0, i32 1, i32 1
  %81 = load i64, i64* %80, align 8, !tbaa !34
  %82 = uitofp i64 %81 to double
  %83 = fdiv contract double %82, 1.000000e+06
  %84 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 %68, i8* %72, double %83)
  %85 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %70, i64 0, i32 2
  %86 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %85, align 8, !tbaa !9
  %87 = icmp eq %struct.pb_SubTimer* %86, null
  br i1 %87, label %88, label %69, !llvm.loop !69

88:                                               ; preds = %79, %49, %66, %25, %43
  %89 = add nuw nsw i64 %18, 1
  %90 = icmp eq i64 %89, 7
  br i1 %90, label %91, label %17, !llvm.loop !70

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 7, i32 0
  %93 = load i32, i32* %92, align 8, !tbaa !30
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %97 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %96) #26
  br label %98

98:                                               ; preds = %91, %95
  %99 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 7, i32 1
  %100 = load i64, i64* %99, align 8, !tbaa !34
  %101 = uitofp i64 %100 to double
  %102 = fdiv contract double %101, 1.000000e+06
  %103 = fcmp contract une double %102, 0.000000e+00
  br i1 %103, label %104, label %116

104:                                              ; preds = %98
  %105 = load i32, i32* %92, align 8, !tbaa !30
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %109 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %108) #26
  %110 = load i64, i64* %99, align 8, !tbaa !34
  %111 = uitofp i64 %110 to double
  %112 = fdiv contract double %111, 1.000000e+06
  br label %113

113:                                              ; preds = %104, %107
  %114 = phi double [ %102, %104 ], [ %112, %107 ]
  %115 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0), double %114)
  br label %116

116:                                              ; preds = %113, %98
  %117 = mul nsw i64 %7, 1000000
  %118 = add nsw i64 %117, %9
  %119 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 3
  %120 = load i64, i64* %119, align 8, !tbaa !41
  %121 = sub i64 %118, %120
  %122 = uitofp i64 %121 to double
  %123 = fdiv contract double %122, 1.000000e+06
  %124 = fptrunc double %123 to float
  %125 = fpext float %124 to double
  %126 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), double %125)
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %10) #25
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @pb_DestroyTimerSet(%struct.pb_TimerSet* nocapture %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 1
  %3 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %2, align 8, !tbaa !9
  %4 = icmp eq %struct.pb_async_time_marker_list* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %9, %1
  %6 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 5, i64 0
  %7 = load %struct.pb_SubTimerList*, %struct.pb_SubTimerList** %6, align 8, !tbaa !9
  %8 = icmp eq %struct.pb_SubTimerList* %7, null
  br i1 %8, label %49, label %31

9:                                                ; preds = %1, %9
  %10 = phi %struct.pb_async_time_marker_list* [ %29, %9 ], [ %3, %1 ]
  %11 = phi %struct.pb_async_time_marker_list** [ %27, %9 ], [ %2, %1 ]
  %12 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %10, i64 0, i32 2
  %13 = bitcast i8** %12 to %struct.ihipEvent_t***
  %14 = load %struct.ihipEvent_t**, %struct.ihipEvent_t*** %13, align 8, !tbaa !56
  %15 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %14, align 8, !tbaa !9
  %16 = tail call i32 @hipEventSynchronize(%struct.ihipEvent_t* %15)
  %17 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %11, align 8, !tbaa !9
  %18 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %17, i64 0, i32 2
  %19 = bitcast i8** %18 to %struct.ihipEvent_t***
  %20 = load %struct.ihipEvent_t**, %struct.ihipEvent_t*** %19, align 8, !tbaa !56
  %21 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %20, align 8, !tbaa !9
  %22 = tail call i32 @hipEventDestroy(%struct.ihipEvent_t* %21)
  %23 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %11, align 8, !tbaa !9
  %24 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %23, i64 0, i32 2
  %25 = load i8*, i8** %24, align 8, !tbaa !56
  tail call void @free(i8* %25) #25
  %26 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %11, align 8, !tbaa !9
  %27 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %26, i64 0, i32 3
  %28 = bitcast %struct.pb_async_time_marker_list* %26 to i8*
  tail call void @free(i8* %28) #25
  store %struct.pb_async_time_marker_list* null, %struct.pb_async_time_marker_list** %11, align 8, !tbaa !9
  %29 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %27, align 8, !tbaa !9
  %30 = icmp eq %struct.pb_async_time_marker_list* %29, null
  br i1 %30, label %5, label %9, !llvm.loop !71

31:                                               ; preds = %5
  %32 = bitcast %struct.pb_SubTimerList* %7 to i8*
  %33 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %7, i64 0, i32 1
  %34 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %33, align 8, !tbaa !49
  %35 = icmp eq %struct.pb_SubTimer* %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %31, %36
  %37 = phi %struct.pb_SubTimer* [ %41, %36 ], [ %34, %31 ]
  %38 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %37, i64 0, i32 0
  %39 = load i8*, i8** %38, align 8, !tbaa !46
  tail call void @free(i8* %39) #25
  %40 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %37, i64 0, i32 2
  %41 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %40, align 8, !tbaa !48
  %42 = bitcast %struct.pb_SubTimer* %37 to i8*
  tail call void @free(i8* %42) #25
  %43 = icmp eq %struct.pb_SubTimer* %41, null
  br i1 %43, label %44, label %36, !llvm.loop !72

44:                                               ; preds = %36
  %45 = bitcast %struct.pb_SubTimerList** %6 to i8**
  %46 = load i8*, i8** %45, align 8, !tbaa !9
  br label %47

47:                                               ; preds = %31, %44
  %48 = phi i8* [ %46, %44 ], [ %32, %31 ]
  tail call void @free(i8* %48) #25
  br label %49

49:                                               ; preds = %5, %47
  %50 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 5, i64 1
  %51 = load %struct.pb_SubTimerList*, %struct.pb_SubTimerList** %50, align 8, !tbaa !9
  %52 = icmp eq %struct.pb_SubTimerList* %51, null
  br i1 %52, label %71, label %53

53:                                               ; preds = %49
  %54 = bitcast %struct.pb_SubTimerList* %51 to i8*
  %55 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %51, i64 0, i32 1
  %56 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %55, align 8, !tbaa !49
  %57 = icmp eq %struct.pb_SubTimer* %56, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %53, %58
  %59 = phi %struct.pb_SubTimer* [ %63, %58 ], [ %56, %53 ]
  %60 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %59, i64 0, i32 0
  %61 = load i8*, i8** %60, align 8, !tbaa !46
  tail call void @free(i8* %61) #25
  %62 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %59, i64 0, i32 2
  %63 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %62, align 8, !tbaa !48
  %64 = bitcast %struct.pb_SubTimer* %59 to i8*
  tail call void @free(i8* %64) #25
  %65 = icmp eq %struct.pb_SubTimer* %63, null
  br i1 %65, label %66, label %58, !llvm.loop !72

66:                                               ; preds = %58
  %67 = bitcast %struct.pb_SubTimerList** %50 to i8**
  %68 = load i8*, i8** %67, align 8, !tbaa !9
  br label %69

69:                                               ; preds = %53, %66
  %70 = phi i8* [ %68, %66 ], [ %54, %53 ]
  tail call void @free(i8* %70) #25
  br label %71

71:                                               ; preds = %69, %49
  %72 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 5, i64 2
  %73 = load %struct.pb_SubTimerList*, %struct.pb_SubTimerList** %72, align 8, !tbaa !9
  %74 = icmp eq %struct.pb_SubTimerList* %73, null
  br i1 %74, label %93, label %75

75:                                               ; preds = %71
  %76 = bitcast %struct.pb_SubTimerList* %73 to i8*
  %77 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %73, i64 0, i32 1
  %78 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %77, align 8, !tbaa !49
  %79 = icmp eq %struct.pb_SubTimer* %78, null
  br i1 %79, label %91, label %80

80:                                               ; preds = %75, %80
  %81 = phi %struct.pb_SubTimer* [ %85, %80 ], [ %78, %75 ]
  %82 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %81, i64 0, i32 0
  %83 = load i8*, i8** %82, align 8, !tbaa !46
  tail call void @free(i8* %83) #25
  %84 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %81, i64 0, i32 2
  %85 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %84, align 8, !tbaa !48
  %86 = bitcast %struct.pb_SubTimer* %81 to i8*
  tail call void @free(i8* %86) #25
  %87 = icmp eq %struct.pb_SubTimer* %85, null
  br i1 %87, label %88, label %80, !llvm.loop !72

88:                                               ; preds = %80
  %89 = bitcast %struct.pb_SubTimerList** %72 to i8**
  %90 = load i8*, i8** %89, align 8, !tbaa !9
  br label %91

91:                                               ; preds = %75, %88
  %92 = phi i8* [ %90, %88 ], [ %76, %75 ]
  tail call void @free(i8* %92) #25
  br label %93

93:                                               ; preds = %91, %71
  %94 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 5, i64 3
  %95 = load %struct.pb_SubTimerList*, %struct.pb_SubTimerList** %94, align 8, !tbaa !9
  %96 = icmp eq %struct.pb_SubTimerList* %95, null
  br i1 %96, label %115, label %97

97:                                               ; preds = %93
  %98 = bitcast %struct.pb_SubTimerList* %95 to i8*
  %99 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %95, i64 0, i32 1
  %100 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %99, align 8, !tbaa !49
  %101 = icmp eq %struct.pb_SubTimer* %100, null
  br i1 %101, label %113, label %102

102:                                              ; preds = %97, %102
  %103 = phi %struct.pb_SubTimer* [ %107, %102 ], [ %100, %97 ]
  %104 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %103, i64 0, i32 0
  %105 = load i8*, i8** %104, align 8, !tbaa !46
  tail call void @free(i8* %105) #25
  %106 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %103, i64 0, i32 2
  %107 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %106, align 8, !tbaa !48
  %108 = bitcast %struct.pb_SubTimer* %103 to i8*
  tail call void @free(i8* %108) #25
  %109 = icmp eq %struct.pb_SubTimer* %107, null
  br i1 %109, label %110, label %102, !llvm.loop !72

110:                                              ; preds = %102
  %111 = bitcast %struct.pb_SubTimerList** %94 to i8**
  %112 = load i8*, i8** %111, align 8, !tbaa !9
  br label %113

113:                                              ; preds = %97, %110
  %114 = phi i8* [ %112, %110 ], [ %98, %97 ]
  tail call void @free(i8* %114) #25
  br label %115

115:                                              ; preds = %113, %93
  %116 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 5, i64 4
  %117 = load %struct.pb_SubTimerList*, %struct.pb_SubTimerList** %116, align 8, !tbaa !9
  %118 = icmp eq %struct.pb_SubTimerList* %117, null
  br i1 %118, label %137, label %119

119:                                              ; preds = %115
  %120 = bitcast %struct.pb_SubTimerList* %117 to i8*
  %121 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %117, i64 0, i32 1
  %122 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %121, align 8, !tbaa !49
  %123 = icmp eq %struct.pb_SubTimer* %122, null
  br i1 %123, label %135, label %124

124:                                              ; preds = %119, %124
  %125 = phi %struct.pb_SubTimer* [ %129, %124 ], [ %122, %119 ]
  %126 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %125, i64 0, i32 0
  %127 = load i8*, i8** %126, align 8, !tbaa !46
  tail call void @free(i8* %127) #25
  %128 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %125, i64 0, i32 2
  %129 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %128, align 8, !tbaa !48
  %130 = bitcast %struct.pb_SubTimer* %125 to i8*
  tail call void @free(i8* %130) #25
  %131 = icmp eq %struct.pb_SubTimer* %129, null
  br i1 %131, label %132, label %124, !llvm.loop !72

132:                                              ; preds = %124
  %133 = bitcast %struct.pb_SubTimerList** %116 to i8**
  %134 = load i8*, i8** %133, align 8, !tbaa !9
  br label %135

135:                                              ; preds = %119, %132
  %136 = phi i8* [ %134, %132 ], [ %120, %119 ]
  tail call void @free(i8* %136) #25
  br label %137

137:                                              ; preds = %135, %115
  %138 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 5, i64 5
  %139 = load %struct.pb_SubTimerList*, %struct.pb_SubTimerList** %138, align 8, !tbaa !9
  %140 = icmp eq %struct.pb_SubTimerList* %139, null
  br i1 %140, label %159, label %141

141:                                              ; preds = %137
  %142 = bitcast %struct.pb_SubTimerList* %139 to i8*
  %143 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %139, i64 0, i32 1
  %144 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %143, align 8, !tbaa !49
  %145 = icmp eq %struct.pb_SubTimer* %144, null
  br i1 %145, label %157, label %146

146:                                              ; preds = %141, %146
  %147 = phi %struct.pb_SubTimer* [ %151, %146 ], [ %144, %141 ]
  %148 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %147, i64 0, i32 0
  %149 = load i8*, i8** %148, align 8, !tbaa !46
  tail call void @free(i8* %149) #25
  %150 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %147, i64 0, i32 2
  %151 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %150, align 8, !tbaa !48
  %152 = bitcast %struct.pb_SubTimer* %147 to i8*
  tail call void @free(i8* %152) #25
  %153 = icmp eq %struct.pb_SubTimer* %151, null
  br i1 %153, label %154, label %146, !llvm.loop !72

154:                                              ; preds = %146
  %155 = bitcast %struct.pb_SubTimerList** %138 to i8**
  %156 = load i8*, i8** %155, align 8, !tbaa !9
  br label %157

157:                                              ; preds = %141, %154
  %158 = phi i8* [ %156, %154 ], [ %142, %141 ]
  tail call void @free(i8* %158) #25
  br label %159

159:                                              ; preds = %157, %137
  %160 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 5, i64 6
  %161 = load %struct.pb_SubTimerList*, %struct.pb_SubTimerList** %160, align 8, !tbaa !9
  %162 = icmp eq %struct.pb_SubTimerList* %161, null
  br i1 %162, label %181, label %163

163:                                              ; preds = %159
  %164 = bitcast %struct.pb_SubTimerList* %161 to i8*
  %165 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %161, i64 0, i32 1
  %166 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %165, align 8, !tbaa !49
  %167 = icmp eq %struct.pb_SubTimer* %166, null
  br i1 %167, label %179, label %168

168:                                              ; preds = %163, %168
  %169 = phi %struct.pb_SubTimer* [ %173, %168 ], [ %166, %163 ]
  %170 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %169, i64 0, i32 0
  %171 = load i8*, i8** %170, align 8, !tbaa !46
  tail call void @free(i8* %171) #25
  %172 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %169, i64 0, i32 2
  %173 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %172, align 8, !tbaa !48
  %174 = bitcast %struct.pb_SubTimer* %169 to i8*
  tail call void @free(i8* %174) #25
  %175 = icmp eq %struct.pb_SubTimer* %173, null
  br i1 %175, label %176, label %168, !llvm.loop !72

176:                                              ; preds = %168
  %177 = bitcast %struct.pb_SubTimerList** %160 to i8**
  %178 = load i8*, i8** %177, align 8, !tbaa !9
  br label %179

179:                                              ; preds = %163, %176
  %180 = phi i8* [ %178, %176 ], [ %164, %163 ]
  tail call void @free(i8* %180) #25
  br label %181

181:                                              ; preds = %179, %159
  %182 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 5, i64 7
  %183 = load %struct.pb_SubTimerList*, %struct.pb_SubTimerList** %182, align 8, !tbaa !9
  %184 = icmp eq %struct.pb_SubTimerList* %183, null
  br i1 %184, label %203, label %185

185:                                              ; preds = %181
  %186 = bitcast %struct.pb_SubTimerList* %183 to i8*
  %187 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %183, i64 0, i32 1
  %188 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %187, align 8, !tbaa !49
  %189 = icmp eq %struct.pb_SubTimer* %188, null
  br i1 %189, label %201, label %190

190:                                              ; preds = %185, %190
  %191 = phi %struct.pb_SubTimer* [ %195, %190 ], [ %188, %185 ]
  %192 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %191, i64 0, i32 0
  %193 = load i8*, i8** %192, align 8, !tbaa !46
  tail call void @free(i8* %193) #25
  %194 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %191, i64 0, i32 2
  %195 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %194, align 8, !tbaa !48
  %196 = bitcast %struct.pb_SubTimer* %191 to i8*
  tail call void @free(i8* %196) #25
  %197 = icmp eq %struct.pb_SubTimer* %195, null
  br i1 %197, label %198, label %190, !llvm.loop !72

198:                                              ; preds = %190
  %199 = bitcast %struct.pb_SubTimerList** %182 to i8**
  %200 = load i8*, i8** %199, align 8, !tbaa !9
  br label %201

201:                                              ; preds = %185, %198
  %202 = phi i8* [ %200, %198 ], [ %186, %185 ]
  tail call void @free(i8* %202) #25
  br label %203

203:                                              ; preds = %201, %181
  ret void
}

declare dso_local i32 @hipEventDestroy(%struct.ihipEvent_t*) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z9inputDataPcPiS0_S0_S0_S0_PPfPS0_S3_S3_S3_(i8* nocapture readonly %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, float** nocapture writeonly %6, i32** nocapture writeonly %7, i32** nocapture writeonly %8, i32** nocapture writeonly %9, i32** nocapture writeonly %10) local_unnamed_addr #0 {
  %12 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  %13 = icmp eq %struct._IO_FILE* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %15) #27
  tail call void @exit(i32 -1) #29
  unreachable

17:                                               ; preds = %11
  %18 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i32* %1, i32* %2, i32* %4, i32* %3, i32* %5)
  %19 = load i32, i32* %1, align 4, !tbaa !10
  %20 = load i32, i32* %2, align 4, !tbaa !10
  %21 = load i32, i32* %3, align 4, !tbaa !10
  %22 = load i32, i32* %4, align 4, !tbaa !10
  %23 = sext i32 %19 to i64
  %24 = shl nsw i64 %23, 2
  %25 = tail call noalias align 16 i8* @malloc(i64 %24) #25
  %26 = bitcast float** %6 to i8**
  store i8* %25, i8** %26, align 8, !tbaa !9
  %27 = tail call i64 @fread(i8* %25, i64 4, i64 %23, %struct._IO_FILE* nonnull %12)
  %28 = tail call noalias align 16 i8* @malloc(i64 %24) #25
  %29 = bitcast i32** %7 to i8**
  store i8* %28, i8** %29, align 8, !tbaa !9
  %30 = tail call i64 @fread(i8* %28, i64 4, i64 %23, %struct._IO_FILE* nonnull %12)
  %31 = sext i32 %20 to i64
  %32 = shl nsw i64 %31, 2
  %33 = tail call noalias align 16 i8* @malloc(i64 %32) #25
  %34 = bitcast i32** %8 to i8**
  store i8* %33, i8** %34, align 8, !tbaa !9
  %35 = tail call i64 @fread(i8* %33, i64 4, i64 %31, %struct._IO_FILE* nonnull %12)
  %36 = sext i32 %21 to i64
  %37 = shl nsw i64 %36, 2
  %38 = tail call noalias align 16 i8* @malloc(i64 %37) #25
  %39 = bitcast i32** %9 to i8**
  store i8* %38, i8** %39, align 8, !tbaa !9
  %40 = tail call i64 @fread(i8* %38, i64 4, i64 %36, %struct._IO_FILE* nonnull %12)
  %41 = sext i32 %22 to i64
  %42 = shl nsw i64 %41, 2
  %43 = tail call noalias align 16 i8* @malloc(i64 %42) #25
  %44 = bitcast i32** %10 to i8**
  store i8* %43, i8** %44, align 8, !tbaa !9
  %45 = tail call i64 @fread(i8* %43, i64 4, i64 %41, %struct._IO_FILE* nonnull %12)
  %46 = tail call i32 @fclose(%struct._IO_FILE* nonnull %12)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fscanf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fread(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z9input_vecPcPfi(i8* nocapture readonly %0, float* nocapture %1, i32 %2) local_unnamed_addr #8 {
  %4 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  %5 = bitcast float* %1 to i8*
  %6 = sext i32 %2 to i64
  %7 = tail call i64 @fread(i8* %5, i64 4, i64 %6, %struct._IO_FILE* %4)
  %8 = tail call i32 @fclose(%struct._IO_FILE* %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z10outputDataPcPfi(i8* nocapture readonly %0, float* nocapture %1, i32 %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  %6 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #25
  %7 = icmp eq %struct._IO_FILE* %5, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %9) #27
  tail call void @exit(i32 -1) #29
  unreachable

11:                                               ; preds = %3
  store i32 %2, i32* %4, align 4, !tbaa !10
  %12 = call i64 @fwrite(i8* nonnull %6, i64 4, i64 1, %struct._IO_FILE* nonnull %5)
  %13 = bitcast float* %1 to i8*
  %14 = sext i32 %2 to i64
  %15 = tail call i64 @fwrite(i8* %13, i64 4, i64 %14, %struct._IO_FILE* nonnull %5)
  %16 = tail call i32 @fclose(%struct._IO_FILE* nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #25
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @_Z21compute_active_threadPjS_iiiiii(i32* nocapture writeonly %0, i32* nocapture writeonly %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) local_unnamed_addr #7 {
  %9 = icmp eq i32 %4, 1
  %10 = icmp sgt i32 %5, 1
  %11 = select i1 %10, i32 1024, i32 768
  %12 = select i1 %9, i32 %11, i32 1536
  %13 = mul nsw i32 %3, %2
  %14 = mul nsw i32 %12, %7
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %8
  %17 = lshr exact i32 %12, 3
  %18 = add nsw i32 %13, -1
  %19 = add i32 %18, %17
  %20 = sdiv i32 %19, %17
  br label %21

21:                                               ; preds = %8, %16
  %22 = phi i32 [ %20, %16 ], [ %2, %8 ]
  %23 = phi i32 [ %17, %16 ], [ %3, %8 ]
  store i32 %23, i32* %0, align 4, !tbaa !10
  store i32 %22, i32* %1, align 4, !tbaa !10
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local void @_Z29__device_stub__spmv_jds_naivePfPKfPKiS3_S1_S3_i(float* %0, float* %1, i32* %2, i32* %3, float* %4, i32* %5, i32 %6) #15 {
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.dim3, align 8
  %16 = alloca %struct.dim3, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store float* %0, float** %8, align 8, !tbaa !9
  store float* %1, float** %9, align 8, !tbaa !9
  store i32* %2, i32** %10, align 8, !tbaa !9
  store i32* %3, i32** %11, align 8, !tbaa !9
  store float* %4, float** %12, align 8, !tbaa !9
  store i32* %5, i32** %13, align 8, !tbaa !9
  store i32 %6, i32* %14, align 4, !tbaa !10
  %19 = alloca [7 x i8*], align 16
  %20 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 0
  %21 = bitcast [7 x i8*]* %19 to float***
  store float** %8, float*** %21, align 16
  %22 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 1
  %23 = bitcast i8** %22 to float***
  store float** %9, float*** %23, align 8
  %24 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 2
  %25 = bitcast i8** %24 to i32***
  store i32** %10, i32*** %25, align 16
  %26 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 3
  %27 = bitcast i8** %26 to i32***
  store i32** %11, i32*** %27, align 8
  %28 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 4
  %29 = bitcast i8** %28 to float***
  store float** %12, float*** %29, align 16
  %30 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 5
  %31 = bitcast i8** %30 to i32***
  store i32** %13, i32*** %31, align 8
  %32 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 6
  %33 = bitcast i8** %32 to i32**
  store i32* %14, i32** %33, align 16
  %34 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %15, %struct.dim3* nonnull %16, i64* nonnull %17, i8** nonnull %18)
  %35 = load i64, i64* %17, align 8
  %36 = bitcast i8** %18 to %struct.ihipStream_t**
  %37 = load %struct.ihipStream_t*, %struct.ihipStream_t** %36, align 8
  %38 = bitcast %struct.dim3* %15 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.dim3, %struct.dim3* %15, i64 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = bitcast %struct.dim3* %16 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.dim3, %struct.dim3* %16, i64 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, i32*, i32*, float*, i32*, i32)** @_Z14spmv_jds_naivePfPKfPKiS3_S1_S3_i to i8*), i64 %39, i32 %41, i64 %43, i32 %45, i8** nonnull %20, i64 %35, %struct.ihipStream_t* %37)
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @_Z9sort_rowsPKvS0_(i8* nocapture readonly %0, i8* nocapture readonly %1) #6 {
  %3 = bitcast i8* %0 to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !73
  %5 = bitcast i8* %1 to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !73
  %7 = sub nsw i32 %4, %6
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @_Z9sort_colsPKvS0_(i8* nocapture readonly %0, i8* nocapture readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds i8, i8* %0, i64 4
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !75
  %6 = getelementptr inbounds i8, i8* %1, i64 4
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* %7, align 4, !tbaa !75
  %9 = sub nsw i32 %5, %8
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @_Z10sort_statsPKvS0_(i8* nocapture readonly %0, i8* nocapture readonly %1) #6 {
  %3 = getelementptr inbounds i8, i8* %1, i64 4
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !76
  %6 = getelementptr inbounds i8, i8* %0, i64 4
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* %7, align 4, !tbaa !76
  %9 = sub nsw i32 %5, %8
  ret i32 %9
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @coo_to_jds(i8* nocapture readonly %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, float** nocapture %7, i32** nocapture %8, i32** nocapture %9, i32** nocapture %10, i32** nocapture %11, i32* nocapture writeonly %12, i32* nocapture writeonly %13, i32* nocapture writeonly %14, i32* nocapture %15, i32* nocapture writeonly %16) local_unnamed_addr #11 {
  %18 = alloca [1025 x i8], align 16
  %19 = alloca [4 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #25
  %24 = bitcast i32* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #25
  %25 = bitcast i32* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #25
  %26 = bitcast i32* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #25
  %27 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  %28 = icmp eq %struct._IO_FILE* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  tail call void @exit(i32 1) #29
  unreachable

30:                                               ; preds = %17
  %31 = call i32 @_Z14mm_read_bannerP8_IO_FILEPA4_c(%struct._IO_FILE* nonnull %27, [4 x i8]* nonnull %19)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @str, i64 0, i64 0))
  tail call void @exit(i32 1) #29
  unreachable

35:                                               ; preds = %30
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 2
  %37 = load i8, i8* %36, align 1, !tbaa !12
  %38 = icmp eq i8 %37, 67
  %39 = load i8, i8* %23, align 1
  %40 = icmp eq i8 %39, 77
  %41 = select i1 %38, i1 %40, i1 false
  %42 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = icmp eq i8 %43, 67
  %45 = select i1 %41, i1 %44, i1 false
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i64 0, i64 0))
  %48 = call i8* @_Z18mm_typecode_to_strPc(i8* nonnull %23)
  %49 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i64 0, i64 0), i8* %48)
  tail call void @exit(i32 1) #29
  unreachable

50:                                               ; preds = %35
  %51 = getelementptr inbounds [1025 x i8], [1025 x i8]* %18, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1025, i8* nonnull %51) #25
  store i32 0, i32* %20, align 4, !tbaa !10
  store i32 0, i32* %22, align 4, !tbaa !10
  store i32 0, i32* %21, align 4, !tbaa !10
  br label %52

52:                                               ; preds = %55, %50
  %53 = call i8* @fgets(i8* nonnull %51, i32 1025, %struct._IO_FILE* nonnull %27) #25
  %54 = icmp eq i8* %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = load i8, i8* %51, align 16, !tbaa !12
  %57 = icmp eq i8 %56, 37
  br i1 %57, label %52, label %58, !llvm.loop !78

58:                                               ; preds = %55
  %59 = call i32 (i8*, i8*, ...) @sscanf(i8* nonnull %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i64 0, i64 0), i32* nonnull %21, i32* nonnull %22, i32* nonnull %20) #25
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %64, label %61

61:                                               ; preds = %58, %61
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i64 0, i64 0), i32* nonnull %21, i32* nonnull %22, i32* nonnull %20) #25
  switch i32 %62, label %61 [
    i32 -1, label %63
    i32 3, label %64
  ]

63:                                               ; preds = %52, %61
  call void @llvm.lifetime.end.p0i8(i64 1025, i8* nonnull %51) #25
  call void @exit(i32 1) #29
  unreachable

64:                                               ; preds = %61, %58
  call void @llvm.lifetime.end.p0i8(i64 1025, i8* nonnull %51) #25
  %65 = load i32, i32* %21, align 4, !tbaa !10
  store i32 %65, i32* %13, align 4, !tbaa !10
  %66 = icmp eq i32 %4, 0
  %67 = load i32, i32* %20, align 4, !tbaa !10
  %68 = xor i1 %66, true
  %69 = zext i1 %68 to i32
  %70 = shl nsw i32 %67, %69
  %71 = sext i32 %70 to i64
  %72 = mul nsw i64 %71, 12
  %73 = call noalias align 16 i8* @malloc(i64 %72) #25
  %74 = bitcast i8* %73 to %struct._mat_entry*
  %75 = icmp eq i32 %5, 0
  %76 = icmp sgt i32 %67, 0
  br i1 %76, label %77, label %112

77:                                               ; preds = %64, %106
  %78 = phi i32 [ %108, %106 ], [ 0, %64 ]
  %79 = phi i32 [ %109, %106 ], [ 0, %64 ]
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct._mat_entry, %struct._mat_entry* %74, i64 %80, i32 0
  %82 = getelementptr inbounds %struct._mat_entry, %struct._mat_entry* %74, i64 %80, i32 1
  br i1 %75, label %83, label %86

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct._mat_entry, %struct._mat_entry* %74, i64 %80, i32 2
  %85 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i32* %81, i32* nonnull %82, float* nonnull %84)
  br label %89

86:                                               ; preds = %77
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i32* %81, i32* nonnull %82)
  %88 = getelementptr inbounds %struct._mat_entry, %struct._mat_entry* %74, i64 %80, i32 2
  store float 1.000000e+00, float* %88, align 4, !tbaa !79
  br label %89

89:                                               ; preds = %86, %83
  %90 = getelementptr inbounds %struct._mat_entry, %struct._mat_entry* %74, i64 %80, i32 0
  %91 = load i32, i32* %90, align 4, !tbaa !73
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %90, align 4, !tbaa !73
  %93 = getelementptr inbounds %struct._mat_entry, %struct._mat_entry* %74, i64 %80, i32 1
  %94 = load i32, i32* %93, align 4, !tbaa !75
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %93, align 4, !tbaa !75
  %96 = icmp eq i32 %91, %94
  %97 = select i1 %66, i1 true, i1 %96
  br i1 %97, label %106, label %98

98:                                               ; preds = %89
  %99 = add nsw i32 %79, 1
  %100 = getelementptr inbounds %struct._mat_entry, %struct._mat_entry* %74, i64 %80, i32 2
  %101 = load float, float* %100, align 4, !tbaa !79
  %102 = sext i32 %99 to i64
  %103 = getelementptr inbounds %struct._mat_entry, %struct._mat_entry* %74, i64 %102, i32 2
  store float %101, float* %103, align 4, !tbaa !79
  %104 = getelementptr inbounds %struct._mat_entry, %struct._mat_entry* %74, i64 %102, i32 1
  store i32 %92, i32* %104, align 4, !tbaa !75
  %105 = getelementptr inbounds %struct._mat_entry, %struct._mat_entry* %74, i64 %102, i32 0
  store i32 %95, i32* %105, align 4, !tbaa !73
  br label %106

106:                                              ; preds = %89, %98
  %107 = phi i32 [ %99, %98 ], [ %79, %89 ]
  %108 = add nuw nsw i32 %78, 1
  %109 = add nsw i32 %107, 1
  %110 = load i32, i32* %20, align 4, !tbaa !10
  %111 = icmp slt i32 %108, %110
  br i1 %111, label %77, label %112, !llvm.loop !80

112:                                              ; preds = %106, %64
  %113 = phi i32 [ 0, %64 ], [ %109, %106 ]
  store i32 %113, i32* %20, align 4, !tbaa !10
  %114 = icmp sgt i32 %6, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i32, i32* %21, align 4, !tbaa !10
  %117 = load i32, i32* %22, align 4, !tbaa !10
  %118 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([113 x i8], [113 x i8]* @.str.34, i64 0, i64 0), i32 %116, i32 %117, i32 %113, i32 %2, i32 %1, i32 %3)
  br label %119

119:                                              ; preds = %115, %112
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !9
  %121 = icmp eq %struct._IO_FILE* %27, %120
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  %123 = call i32 @fclose(%struct._IO_FILE* nonnull %27)
  br label %124

124:                                              ; preds = %122, %119
  %125 = load i32, i32* %20, align 4, !tbaa !10
  %126 = sext i32 %125 to i64
  call void @qsort(i8* %73, i64 %126, i64 12, i32 (i8*, i8*)* nonnull @_Z9sort_rowsPKvS0_)
  %127 = load i32, i32* %20, align 4, !tbaa !10
  %128 = add nsw i32 %127, -1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct._mat_entry, %struct._mat_entry* %74, i64 %129, i32 0
  %131 = load i32, i32* %130, align 4, !tbaa !73
  %132 = add nsw i32 %131, 1
  %133 = srem i32 %132, %2
  %134 = icmp eq i32 %133, 0
  %135 = sub nsw i32 %2, %133
  %136 = select i1 %134, i32 0, i32 %135
  %137 = add nsw i32 %136, %132
  store i32 %137, i32* %21, align 4, !tbaa !10
  %138 = sext i32 %137 to i64
  %139 = call noalias align 16 i8* @calloc(i64 %138, i64 16) #25
  %140 = bitcast i8* %139 to %struct._row_stats*
  %141 = call noalias align 16 i8* @calloc(i64 %138, i64 4) #25
  %142 = bitcast i32** %11 to i8**
  store i8* %141, i8** %142, align 8, !tbaa !9
  %143 = icmp sgt i32 %127, 0
  br i1 %143, label %144, label %177

144:                                              ; preds = %124
  %145 = bitcast i8* %73 to i32*
  %146 = load i32, i32* %145, align 16, !tbaa !73
  %147 = zext i32 %128 to i64
  %148 = zext i32 %127 to i64
  br label %149

149:                                              ; preds = %144, %170
  %150 = phi i64 [ 0, %144 ], [ %175, %170 ]
  %151 = phi i32 [ %146, %144 ], [ %173, %170 ]
  %152 = phi i32 [ 0, %144 ], [ %172, %170 ]
  %153 = phi i32 [ 0, %144 ], [ %174, %170 ]
  %154 = getelementptr inbounds %struct._mat_entry, %struct._mat_entry* %74, i64 %150, i32 0
  %155 = load i32, i32* %154, align 4, !tbaa !73
  %156 = icmp ne i32 %155, %151
  %157 = icmp eq i64 %150, %147
  %158 = select i1 %156, i1 true, i1 %157
  br i1 %158, label %159, label %170

159:                                              ; preds = %149
  %160 = zext i1 %157 to i32
  %161 = add nsw i32 %153, %160
  %162 = sext i32 %151 to i64
  %163 = getelementptr inbounds %struct._row_stats, %struct._row_stats* %140, i64 %162, i32 1
  store i32 %161, i32* %163, align 4, !tbaa !76
  %164 = add nsw i64 %150, -1
  %165 = getelementptr inbounds %struct._mat_entry, %struct._mat_entry* %74, i64 %164, i32 0
  %166 = load i32, i32* %165, align 4, !tbaa !73
  %167 = getelementptr inbounds %struct._row_stats, %struct._row_stats* %140, i64 %162, i32 0
  store i32 %166, i32* %167, align 16, !tbaa !81
  %168 = getelementptr inbounds %struct._row_stats, %struct._row_stats* %140, i64 %162, i32 2
  store i32 %152, i32* %168, align 8, !tbaa !82
  %169 = trunc i64 %150 to i32
  br label %170

170:                                              ; preds = %149, %159
  %171 = phi i32 [ 0, %159 ], [ %153, %149 ]
  %172 = phi i32 [ %169, %159 ], [ %152, %149 ]
  %173 = phi i32 [ %155, %159 ], [ %151, %149 ]
  %174 = add nsw i32 %171, 1
  %175 = add nuw nsw i64 %150, 1
  %176 = icmp eq i64 %175, %148
  br i1 %176, label %177, label %149, !llvm.loop !83

177:                                              ; preds = %170, %124
  %178 = sdiv i32 %137, %2
  %179 = srem i32 %137, %2
  %180 = add nsw i32 %179, %178
  store i32 %180, i32* %15, align 4, !tbaa !10
  %181 = sext i32 %180 to i64
  %182 = shl nsw i64 %181, 2
  %183 = call noalias align 16 i8* @malloc(i64 %182) #25
  %184 = bitcast i32** %9 to i8**
  store i8* %183, i8** %184, align 8, !tbaa !9
  call void @qsort(i8* %139, i64 %138, i64 16, i32 (i8*, i8*)* nonnull @_Z10sort_statsPKvS0_)
  br i1 %114, label %185, label %189

185:                                              ; preds = %177
  %186 = load i32, i32* %21, align 4, !tbaa !10
  %187 = load i32, i32* %15, align 4, !tbaa !10
  %188 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i64 0, i64 0), i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %185, %177
  %190 = mul nsw i32 %3, %1
  %191 = sitofp i32 %3 to float
  %192 = icmp sgt i32 %6, 1
  %193 = load i32, i32* %21, align 4, !tbaa !10
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %250

195:                                              ; preds = %189, %237
  %196 = phi i64 [ %243, %237 ], [ 0, %189 ]
  %197 = phi i32 [ %242, %237 ], [ 0, %189 ]
  %198 = phi i32 [ %239, %237 ], [ undef, %189 ]
  %199 = phi i32 [ %238, %237 ], [ 0, %189 ]
  %200 = getelementptr inbounds %struct._row_stats, %struct._row_stats* %140, i64 %196, i32 0
  %201 = load i32, i32* %200, align 16, !tbaa !81
  %202 = load i32*, i32** %11, align 8, !tbaa !9
  %203 = getelementptr inbounds i32, i32* %202, i64 %196
  store i32 %201, i32* %203, align 4, !tbaa !10
  %204 = trunc i64 %196 to i32
  %205 = srem i32 %204, %2
  %206 = sdiv i32 %204, %2
  %207 = icmp eq i32 %205, 0
  %208 = getelementptr inbounds %struct._row_stats, %struct._row_stats* %140, i64 %196, i32 1
  %209 = load i32, i32* %208, align 4, !tbaa !76
  br i1 %207, label %210, label %234

210:                                              ; preds = %195
  %211 = srem i32 %209, %190
  %212 = icmp eq i32 %211, 0
  %213 = sub nsw i32 %190, %211
  %214 = select i1 %212, i32 0, i32 %213
  %215 = getelementptr inbounds %struct._row_stats, %struct._row_stats* %140, i64 %196, i32 3
  store i32 %214, i32* %215, align 4
  %216 = srem i32 %209, %3
  %217 = sdiv i32 %209, %3
  %218 = icmp eq i32 %216, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %210
  %220 = sitofp i32 %209 to float
  %221 = fdiv contract float %220, %191
  %222 = call contract float @llvm.ceil.f32(float %221)
  %223 = fptosi float %222 to i32
  br label %224

224:                                              ; preds = %210, %219
  %225 = phi i32 [ %223, %219 ], [ %217, %210 ]
  %226 = add nsw i32 %214, %209
  %227 = load i32*, i32** %9, align 8, !tbaa !9
  %228 = sext i32 %206 to i64
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  store i32 %225, i32* %229, align 4, !tbaa !10
  %230 = mul nsw i32 %226, %2
  %231 = add nsw i32 %230, %199
  br i1 %192, label %232, label %237

232:                                              ; preds = %224
  %233 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.36, i64 0, i64 0), i32 %206, i32 %226, i32 %225)
  br label %237

234:                                              ; preds = %195
  %235 = sub nsw i32 %198, %209
  %236 = getelementptr inbounds %struct._row_stats, %struct._row_stats* %140, i64 %196, i32 3
  store i32 %235, i32* %236, align 4, !tbaa !84
  br label %237

237:                                              ; preds = %224, %232, %234
  %238 = phi i32 [ %231, %232 ], [ %231, %224 ], [ %199, %234 ]
  %239 = phi i32 [ %226, %232 ], [ %226, %224 ], [ %198, %234 ]
  %240 = getelementptr inbounds %struct._row_stats, %struct._row_stats* %140, i64 %196, i32 3
  %241 = load i32, i32* %240, align 4, !tbaa !84
  %242 = add nsw i32 %241, %197
  %243 = add nuw nsw i64 %196, 1
  %244 = load i32, i32* %21, align 4, !tbaa !10
  %245 = sext i32 %244 to i64
  %246 = icmp slt i64 %243, %245
  br i1 %246, label %195, label %247, !llvm.loop !85

247:                                              ; preds = %237
  %248 = sitofp i32 %242 to float
  %249 = fmul contract float %248, 1.000000e+02
  br label %250

250:                                              ; preds = %247, %189
  %251 = phi i32 [ %193, %189 ], [ %244, %247 ]
  %252 = phi i32 [ 0, %189 ], [ %238, %247 ]
  %253 = phi float [ 0.000000e+00, %189 ], [ %249, %247 ]
  br i1 %114, label %254, label %260

254:                                              ; preds = %250
  %255 = sitofp i32 %252 to float
  %256 = fdiv contract float %253, %255
  %257 = fpext float %256 to double
  %258 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([50 x i8], [50 x i8]* @.str.37, i64 0, i64 0), i32 %252, double %257)
  %259 = load i32, i32* %21, align 4, !tbaa !10
  br label %260

260:                                              ; preds = %254, %250
  %261 = phi i32 [ %259, %254 ], [ %251, %250 ]
  %262 = sext i32 %252 to i64
  %263 = call noalias align 16 i8* @calloc(i64 %262, i64 4) #25
  %264 = bitcast float** %7 to i8**
  store i8* %263, i8** %264, align 8, !tbaa !9
  %265 = call noalias align 16 i8* @calloc(i64 %262, i64 4) #25
  %266 = bitcast i32** %10 to i8**
  store i8* %265, i8** %266, align 8, !tbaa !9
  %267 = sext i32 %261 to i64
  %268 = call noalias align 16 i8* @calloc(i64 %267, i64 4) #25
  %269 = bitcast i32** %8 to i8**
  store i8* %268, i8** %269, align 8, !tbaa !9
  store i32 %252, i32* %14, align 4, !tbaa !10
  %270 = getelementptr inbounds %struct._row_stats, %struct._row_stats* %140, i64 0, i32 1
  %271 = getelementptr inbounds %struct._row_stats, %struct._row_stats* %140, i64 0, i32 3
  %272 = icmp slt i32 %3, 1
  %273 = bitcast i8* %268 to i32*
  store i32 0, i32* %273, align 16, !tbaa !10
  %274 = load i32, i32* %270, align 4, !tbaa !76
  %275 = load i32, i32* %271, align 4, !tbaa !84
  %276 = add nsw i32 %275, %274
  %277 = icmp sgt i32 %276, 0
  br i1 %277, label %278, label %438

278:                                              ; preds = %260, %434
  %279 = phi i32 [ %435, %434 ], [ %261, %260 ]
  %280 = phi i64 [ %425, %434 ], [ 0, %260 ]
  %281 = phi i32 [ %432, %434 ], [ 0, %260 ]
  %282 = phi i32 [ %421, %434 ], [ 0, %260 ]
  %283 = icmp slt i32 %279, 1
  %284 = select i1 %283, i1 true, i1 %272
  br i1 %284, label %420, label %285

285:                                              ; preds = %278
  br i1 %192, label %286, label %370

286:                                              ; preds = %285, %363
  %287 = phi i64 [ %366, %363 ], [ 0, %285 ]
  %288 = phi i32 [ %365, %363 ], [ %282, %285 ]
  %289 = getelementptr inbounds %struct._row_stats, %struct._row_stats* %140, i64 %287, i32 1
  %290 = getelementptr inbounds %struct._row_stats, %struct._row_stats* %140, i64 %287, i32 3
  %291 = getelementptr inbounds %struct._row_stats, %struct._row_stats* %140, i64 %287, i32 2
  %292 = icmp ult i64 %287, 3
  %293 = sext i32 %288 to i64
  br i1 %292, label %294, label %330

294:                                              ; preds = %286
  %295 = trunc i64 %287 to i32
  br label %296

296:                                              ; preds = %294, %326
  %297 = phi i64 [ %293, %294 ], [ %328, %326 ]
  %298 = phi i32 [ 0, %294 ], [ %327, %326 ]
  %299 = load i32, i32* %289, align 4, !tbaa !76
  %300 = add i32 %298, %281
  %301 = icmp sgt i32 %299, %300
  br i1 %301, label %311, label %302

302:                                              ; preds = %296
  %303 = load i32, i32* %290, align 4, !tbaa !84
  %304 = add nsw i32 %303, %299
  %305 = icmp sgt i32 %304, %300
  br i1 %305, label %306, label %410

306:                                              ; preds = %302
  %307 = call i32 @putchar(i32 48)
  %308 = load i32*, i32** %10, align 8, !tbaa !9
  %309 = getelementptr inbounds i32, i32* %308, i64 %297
  store i32 -1, i32* %309, align 4, !tbaa !10
  %310 = add nuw nsw i32 %298, 1
  br label %326

311:                                              ; preds = %296
  %312 = load i32, i32* %291, align 8, !tbaa !82
  %313 = add i32 %300, %312
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct._mat_entry, %struct._mat_entry* %74, i64 %314, i32 1
  %316 = load i32, i32* %315, align 4, !tbaa.struct !86
  %317 = getelementptr inbounds %struct._mat_entry, %struct._mat_entry* %74, i64 %314, i32 2
  %318 = load float, float* %317, align 4, !tbaa.struct !87
  %319 = load float*, float** %7, align 8, !tbaa !9
  %320 = getelementptr inbounds float, float* %319, i64 %297
  store float %318, float* %320, align 4, !tbaa !61
  %321 = load i32*, i32** %10, align 8, !tbaa !9
  %322 = getelementptr inbounds i32, i32* %321, i64 %297
  store i32 %316, i32* %322, align 4, !tbaa !10
  %323 = add nuw nsw i32 %298, 1
  %324 = fpext float %318 to double
  %325 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i64 0, i64 0), i32 %323, i32 %295, double %324)
  br label %326

326:                                              ; preds = %311, %306
  %327 = phi i32 [ %323, %311 ], [ %310, %306 ]
  %328 = add nsw i64 %297, 1
  %329 = icmp eq i32 %327, %3
  br i1 %329, label %363, label %296, !llvm.loop !88

330:                                              ; preds = %286, %359
  %331 = phi i64 [ %361, %359 ], [ %293, %286 ]
  %332 = phi i32 [ %360, %359 ], [ 0, %286 ]
  %333 = load i32, i32* %289, align 4, !tbaa !76
  %334 = add i32 %332, %281
  %335 = icmp sgt i32 %333, %334
  br i1 %335, label %345, label %336

336:                                              ; preds = %330
  %337 = load i32, i32* %290, align 4, !tbaa !84
  %338 = add nsw i32 %337, %333
  %339 = icmp sgt i32 %338, %334
  br i1 %339, label %340, label %412

340:                                              ; preds = %336
  %341 = call i32 @putchar(i32 48)
  %342 = load i32*, i32** %10, align 8, !tbaa !9
  %343 = getelementptr inbounds i32, i32* %342, i64 %331
  store i32 -1, i32* %343, align 4, !tbaa !10
  %344 = add nuw nsw i32 %332, 1
  br label %359

345:                                              ; preds = %330
  %346 = load i32, i32* %291, align 8, !tbaa !82
  %347 = add i32 %334, %346
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct._mat_entry, %struct._mat_entry* %74, i64 %348, i32 1
  %350 = load i32, i32* %349, align 4, !tbaa.struct !86
  %351 = getelementptr inbounds %struct._mat_entry, %struct._mat_entry* %74, i64 %348, i32 2
  %352 = load float, float* %351, align 4, !tbaa.struct !87
  %353 = load float*, float** %7, align 8, !tbaa !9
  %354 = getelementptr inbounds float, float* %353, i64 %331
  store float %352, float* %354, align 4, !tbaa !61
  %355 = load i32*, i32** %10, align 8, !tbaa !9
  %356 = getelementptr inbounds i32, i32* %355, i64 %331
  store i32 %350, i32* %356, align 4, !tbaa !10
  %357 = add nuw nsw i32 %332, 1
  %358 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0), i32 %357)
  br label %359

359:                                              ; preds = %345, %340
  %360 = phi i32 [ %357, %345 ], [ %344, %340 ]
  %361 = add nsw i64 %331, 1
  %362 = icmp eq i32 %360, %3
  br i1 %362, label %363, label %330, !llvm.loop !88

363:                                              ; preds = %359, %326
  %364 = phi i64 [ %328, %326 ], [ %361, %359 ]
  %365 = trunc i64 %364 to i32
  %366 = add nuw nsw i64 %287, 1
  %367 = load i32, i32* %21, align 4, !tbaa !10
  %368 = sext i32 %367 to i64
  %369 = icmp slt i64 %366, %368
  br i1 %369, label %286, label %416, !llvm.loop !89

370:                                              ; preds = %285, %404
  %371 = phi i64 [ %406, %404 ], [ 0, %285 ]
  %372 = phi i32 [ %405, %404 ], [ %282, %285 ]
  %373 = getelementptr inbounds %struct._row_stats, %struct._row_stats* %140, i64 %371, i32 1
  %374 = getelementptr inbounds %struct._row_stats, %struct._row_stats* %140, i64 %371, i32 3
  %375 = getelementptr inbounds %struct._row_stats, %struct._row_stats* %140, i64 %371, i32 2
  %376 = sext i32 %372 to i64
  br label %377

377:                                              ; preds = %370, %397
  %378 = phi i64 [ %376, %370 ], [ %401, %397 ]
  %379 = phi i32 [ 0, %370 ], [ %402, %397 ]
  %380 = load i32, i32* %373, align 4, !tbaa !76
  %381 = add i32 %379, %281
  %382 = icmp sgt i32 %380, %381
  br i1 %382, label %387, label %383

383:                                              ; preds = %377
  %384 = load i32, i32* %374, align 4, !tbaa !84
  %385 = add nsw i32 %384, %380
  %386 = icmp sgt i32 %385, %381
  br i1 %386, label %397, label %414

387:                                              ; preds = %377
  %388 = load i32, i32* %375, align 8, !tbaa !82
  %389 = add i32 %381, %388
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct._mat_entry, %struct._mat_entry* %74, i64 %390, i32 1
  %392 = load i32, i32* %391, align 4, !tbaa.struct !86
  %393 = getelementptr inbounds %struct._mat_entry, %struct._mat_entry* %74, i64 %390, i32 2
  %394 = load float, float* %393, align 4, !tbaa.struct !87
  %395 = load float*, float** %7, align 8, !tbaa !9
  %396 = getelementptr inbounds float, float* %395, i64 %378
  store float %394, float* %396, align 4, !tbaa !61
  br label %397

397:                                              ; preds = %383, %387
  %398 = phi i32 [ %392, %387 ], [ -1, %383 ]
  %399 = load i32*, i32** %10, align 8, !tbaa !9
  %400 = getelementptr inbounds i32, i32* %399, i64 %378
  store i32 %398, i32* %400, align 4, !tbaa !10
  %401 = add nsw i64 %378, 1
  %402 = add nuw nsw i32 %379, 1
  %403 = icmp eq i32 %402, %3
  br i1 %403, label %404, label %377, !llvm.loop !88

404:                                              ; preds = %397
  %405 = trunc i64 %401 to i32
  %406 = add nuw nsw i64 %371, 1
  %407 = load i32, i32* %21, align 4, !tbaa !10
  %408 = sext i32 %407 to i64
  %409 = icmp slt i64 %406, %408
  br i1 %409, label %370, label %418, !llvm.loop !89

410:                                              ; preds = %302
  %411 = trunc i64 %297 to i32
  br label %420

412:                                              ; preds = %336
  %413 = trunc i64 %331 to i32
  br label %420

414:                                              ; preds = %383
  %415 = trunc i64 %378 to i32
  br label %420

416:                                              ; preds = %363
  %417 = trunc i64 %364 to i32
  br label %420

418:                                              ; preds = %404
  %419 = trunc i64 %401 to i32
  br label %420

420:                                              ; preds = %278, %418, %416, %414, %412, %410
  %421 = phi i32 [ %282, %278 ], [ %411, %410 ], [ %413, %412 ], [ %415, %414 ], [ %417, %416 ], [ %419, %418 ]
  br i1 %192, label %422, label %424

422:                                              ; preds = %420
  %423 = call i32 @putchar(i32 10)
  br label %424

424:                                              ; preds = %422, %420
  %425 = add nuw i64 %280, 1
  %426 = load i32*, i32** %8, align 8, !tbaa !9
  %427 = getelementptr inbounds i32, i32* %426, i64 %425
  store i32 %421, i32* %427, align 4, !tbaa !10
  %428 = load i32, i32* %270, align 4, !tbaa !76
  %429 = load i32, i32* %271, align 4, !tbaa !84
  %430 = add nsw i32 %429, %428
  %431 = trunc i64 %425 to i32
  %432 = mul nsw i32 %431, %3
  %433 = icmp sgt i32 %430, %432
  br i1 %433, label %434, label %436, !llvm.loop !90

434:                                              ; preds = %424
  %435 = load i32, i32* %21, align 4, !tbaa !10
  br label %278

436:                                              ; preds = %424
  %437 = trunc i64 %425 to i32
  br label %438

438:                                              ; preds = %436, %260
  %439 = phi i32 [ 0, %260 ], [ %437, %436 ]
  br i1 %114, label %440, label %443

440:                                              ; preds = %438
  %441 = load i32, i32* %21, align 4, !tbaa !10
  %442 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([58 x i8], [58 x i8]* @.str.42, i64 0, i64 0), i32 %441, i32 %439)
  br label %443

443:                                              ; preds = %440, %438
  call void @free(i8* %73) #25
  call void @free(i8* nonnull %139) #25
  %444 = load i32, i32* %15, align 4, !tbaa !10
  %445 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i64 0, i64 0), i32 %444)
  %446 = load i32, i32* %21, align 4, !tbaa !10
  store i32 %446, i32* %12, align 4, !tbaa !10
  %447 = add nuw nsw i32 %439, 1
  store i32 %447, i32* %16, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #25
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local i32 @_Z14mm_read_bannerP8_IO_FILEPA4_c(%struct._IO_FILE* nocapture %0, [4 x i8]* nocapture writeonly %1) local_unnamed_addr #8 {
  %3 = alloca [1025 x i8], align 16
  %4 = alloca [64 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = alloca [64 x i8], align 16
  %7 = alloca [64 x i8], align 16
  %8 = alloca [64 x i8], align 16
  %9 = getelementptr inbounds [1025 x i8], [1025 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1025, i8* nonnull %9) #25
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %10) #25
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %11) #25
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %12) #25
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %13) #25
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %14) #25
  %15 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 2
  store i8 32, i8* %15, align 1, !tbaa !12
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 1
  store i8 32, i8* %16, align 1, !tbaa !12
  %17 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  store i8 32, i8* %17, align 1, !tbaa !12
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 3
  store i8 71, i8* %18, align 1, !tbaa !12
  %19 = call i8* @fgets(i8* nonnull %9, i32 1025, %struct._IO_FILE* %0)
  %20 = icmp eq i8* %19, null
  br i1 %20, label %109, label %21

21:                                               ; preds = %2
  %22 = call i32 (i8*, i8*, ...) @sscanf(i8* nonnull %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i64 0, i64 0), i8* nonnull %10, i8* nonnull %11, i8* nonnull %12, i8* nonnull %13, i8* nonnull %14) #25
  %23 = icmp eq i32 %22, 5
  br i1 %23, label %24, label %109

24:                                               ; preds = %21
  %25 = load i8, i8* %11, align 16, !tbaa !12
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %30, %24
  %28 = load i8, i8* %12, align 16, !tbaa !12
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %39, label %42

30:                                               ; preds = %24, %30
  %31 = phi i8 [ %37, %30 ], [ %25, %24 ]
  %32 = phi i8* [ %36, %30 ], [ %11, %24 ]
  %33 = sext i8 %31 to i32
  %34 = call i32 @tolower(i32 %33) #28
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %32, align 1, !tbaa !12
  %36 = getelementptr inbounds i8, i8* %32, i64 1
  %37 = load i8, i8* %36, align 1, !tbaa !12
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %27, label %30, !llvm.loop !91

39:                                               ; preds = %42, %27
  %40 = load i8, i8* %13, align 16, !tbaa !12
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %51, label %54

42:                                               ; preds = %27, %42
  %43 = phi i8 [ %49, %42 ], [ %28, %27 ]
  %44 = phi i8* [ %48, %42 ], [ %12, %27 ]
  %45 = sext i8 %43 to i32
  %46 = call i32 @tolower(i32 %45) #28
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %44, align 1, !tbaa !12
  %48 = getelementptr inbounds i8, i8* %44, i64 1
  %49 = load i8, i8* %48, align 1, !tbaa !12
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %39, label %42, !llvm.loop !92

51:                                               ; preds = %54, %39
  %52 = load i8, i8* %14, align 16, !tbaa !12
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %72, label %63

54:                                               ; preds = %39, %54
  %55 = phi i8 [ %61, %54 ], [ %40, %39 ]
  %56 = phi i8* [ %60, %54 ], [ %13, %39 ]
  %57 = sext i8 %55 to i32
  %58 = call i32 @tolower(i32 %57) #28
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %56, align 1, !tbaa !12
  %60 = getelementptr inbounds i8, i8* %56, i64 1
  %61 = load i8, i8* %60, align 1, !tbaa !12
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %51, label %54, !llvm.loop !93

63:                                               ; preds = %51, %63
  %64 = phi i8 [ %70, %63 ], [ %52, %51 ]
  %65 = phi i8* [ %69, %63 ], [ %14, %51 ]
  %66 = sext i8 %64 to i32
  %67 = call i32 @tolower(i32 %66) #28
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %65, align 1, !tbaa !12
  %69 = getelementptr inbounds i8, i8* %65, i64 1
  %70 = load i8, i8* %69, align 1, !tbaa !12
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %63, !llvm.loop !94

72:                                               ; preds = %63, %51
  %73 = call i32 @bcmp(i8* noundef nonnull dereferenceable(14) %10, i8* noundef nonnull dereferenceable(14) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i64 0, i64 0), i64 14)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %109

75:                                               ; preds = %72
  %76 = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0), i64 7)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %109

78:                                               ; preds = %75
  store i8 77, i8* %17, align 1, !tbaa !12
  %79 = call i32 @bcmp(i8* noundef nonnull dereferenceable(11) %12, i8* noundef nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i64 0, i64 0), i64 11)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %12, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i64 6)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %109

84:                                               ; preds = %81, %78
  %85 = phi i8 [ 67, %78 ], [ 65, %81 ]
  store i8 %85, i8* %16, align 1, !tbaa !12
  %86 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %13, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), i64 5)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %84
  %89 = bitcast [64 x i8]* %7 to i64*
  %90 = load i64, i64* %89, align 16
  switch i64 %90, label %109 [
    i64 33888513622372195, label %93
    i64 31088027509219696, label %91
    i64 32199642103180905, label %92
  ]

91:                                               ; preds = %88
  br label %93

92:                                               ; preds = %88
  br label %93

93:                                               ; preds = %88, %84, %92, %91
  %94 = phi i8 [ 73, %92 ], [ 80, %91 ], [ 82, %84 ], [ 67, %88 ]
  store i8 %94, i8* %15, align 1, !tbaa !12
  %95 = bitcast [64 x i8]* %8 to i64*
  %96 = load i64, i64* %95, align 16
  %97 = icmp eq i64 %96, 30506441440650599
  br i1 %97, label %107, label %98

98:                                               ; preds = %93
  %99 = call i32 @bcmp(i8* noundef nonnull dereferenceable(10) %14, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i64 0, i64 0), i64 10)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %98
  %102 = call i32 @bcmp(i8* noundef nonnull dereferenceable(10) %14, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i64 0, i64 0), i64 10)
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = call i32 @bcmp(i8* noundef nonnull dereferenceable(15) %14, i8* noundef nonnull dereferenceable(15) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i64 0, i64 0), i64 15)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104, %101, %98, %93
  %108 = phi i8 [ 71, %93 ], [ 83, %98 ], [ 72, %101 ], [ 75, %104 ]
  store i8 %108, i8* %18, align 1, !tbaa !12
  br label %109

109:                                              ; preds = %107, %88, %104, %81, %75, %72, %21, %2
  %110 = phi i32 [ 12, %2 ], [ 12, %21 ], [ 14, %72 ], [ 15, %75 ], [ 15, %81 ], [ 15, %104 ], [ 15, %88 ], [ 0, %107 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %14) #25
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %13) #25
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %12) #25
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %11) #25
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %10) #25
  call void @llvm.lifetime.end.p0i8(i64 1025, i8* nonnull %9) #25
  ret i32 %110
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local i8* @_Z18mm_typecode_to_strPc(i8* nocapture readonly %0) local_unnamed_addr #8 {
  %2 = alloca [1025 x i8], align 16
  %3 = getelementptr inbounds [1025 x i8], [1025 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1025, i8* nonnull %3) #25
  %4 = getelementptr inbounds i8, i8* %0, i64 1
  %5 = load i8, i8* %4, align 1, !tbaa !12
  switch i8 %5, label %30 [
    i8 67, label %7
    i8 65, label %6
  ]

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %1, %6
  %8 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), %6 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i64 0, i64 0), %1 ]
  %9 = getelementptr inbounds i8, i8* %0, i64 2
  %10 = load i8, i8* %9, align 1, !tbaa !12
  switch i8 %10, label %30 [
    i8 82, label %14
    i8 67, label %11
    i8 80, label %12
    i8 73, label %13
  ]

11:                                               ; preds = %7
  br label %14

12:                                               ; preds = %7
  br label %14

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %7, %11, %13, %12
  %15 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i64 0, i64 0), %11 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0), %12 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i64 0, i64 0), %13 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), %7 ]
  %16 = getelementptr inbounds i8, i8* %0, i64 3
  %17 = load i8, i8* %16, align 1, !tbaa !12
  switch i8 %17, label %30 [
    i8 71, label %21
    i8 83, label %18
    i8 72, label %19
    i8 75, label %20
  ]

18:                                               ; preds = %14
  br label %21

19:                                               ; preds = %14
  br label %21

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %14, %18, %20, %19
  %22 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i64 0, i64 0), %18 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i64 0, i64 0), %19 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i64 0, i64 0), %20 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i64 0, i64 0), %14 ]
  %23 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %3, i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0), i8* %8, i8* %15, i8* nonnull %22) #25
  %24 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %3) #28
  %25 = shl i64 %24, 32
  %26 = add i64 %25, 4294967296
  %27 = ashr exact i64 %26, 32
  %28 = tail call noalias align 16 i8* @malloc(i64 %27) #25
  %29 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %28, i8* noundef nonnull dereferenceable(1) %3) #25
  br label %30

30:                                               ; preds = %14, %7, %1, %21
  %31 = phi i8* [ %28, %21 ], [ null, %1 ], [ null, %7 ], [ null, %14 ]
  call void @llvm.lifetime.end.p0i8(i64 1025, i8* nonnull %3) #25
  ret i8* %31
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local i32 @_Z20mm_read_mtx_crd_sizeP8_IO_FILEPiS1_S1_(%struct._IO_FILE* nocapture %0, i32* %1, i32* %2, i32* %3) local_unnamed_addr #8 {
  %5 = alloca [1025 x i8], align 16
  %6 = getelementptr inbounds [1025 x i8], [1025 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1025, i8* nonnull %6) #25
  store i32 0, i32* %3, align 4, !tbaa !10
  store i32 0, i32* %2, align 4, !tbaa !10
  store i32 0, i32* %1, align 4, !tbaa !10
  br label %7

7:                                                ; preds = %10, %4
  %8 = call i8* @fgets(i8* nonnull %6, i32 1025, %struct._IO_FILE* %0)
  %9 = icmp eq i8* %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %7
  %11 = load i8, i8* %6, align 16, !tbaa !12
  %12 = icmp eq i8 %11, 37
  br i1 %12, label %7, label %13, !llvm.loop !78

13:                                               ; preds = %10
  %14 = call i32 (i8*, i8*, ...) @sscanf(i8* nonnull %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i64 0, i64 0), i32* nonnull %1, i32* nonnull %2, i32* nonnull %3) #25
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %16
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i64 0, i64 0), i32* nonnull %1, i32* nonnull %2, i32* nonnull %3)
  switch i32 %17, label %16 [
    i32 -1, label %18
    i32 3, label %19
  ]

18:                                               ; preds = %16
  br label %19

19:                                               ; preds = %7, %16, %18, %13
  %20 = phi i32 [ 0, %13 ], [ 12, %18 ], [ 0, %16 ], [ 12, %7 ]
  call void @llvm.lifetime.end.p0i8(i64 1025, i8* nonnull %6) #25
  ret i32 %20
}

; Function Attrs: nofree
declare dso_local void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* nocapture noundef) local_unnamed_addr #17

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #15 {
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [7 x i8*], align 16
  %16 = alloca %struct.timeval, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.pb_TimerSet, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca float*, align 8
  %29 = alloca float*, align 8
  %30 = alloca float*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  %36 = alloca %struct.hipDeviceProp_t, align 8
  store i32 %0, i32* %17, align 4, !tbaa !10
  %37 = bitcast %struct.pb_TimerSet* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 288, i8* nonnull %37) #25
  %38 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([57 x i8], [57 x i8]* @str.81, i64 0, i64 0))
  %39 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([93 x i8], [93 x i8]* @str.82, i64 0, i64 0))
  %40 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([56 x i8], [56 x i8]* @str.83, i64 0, i64 0))
  %41 = call %struct.pb_Parameters* @pb_ReadParameters(i32* nonnull %17, i8** %1)
  %42 = getelementptr inbounds %struct.pb_Parameters, %struct.pb_Parameters* %41, i64 0, i32 1
  %43 = load i8**, i8*** %42, align 8, !tbaa !8
  %44 = load i8*, i8** %43, align 8, !tbaa !9
  %45 = icmp eq i8* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %2
  %47 = getelementptr inbounds i8*, i8** %43, i64 1
  %48 = load i8*, i8** %47, align 8, !tbaa !9
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %2
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %52 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.47, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %51) #27
  tail call void @exit(i32 -1) #29
  unreachable

53:                                               ; preds = %46
  %54 = bitcast %struct.timeval* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %54) #25
  %55 = call i32 @gettimeofday(%struct.timeval* nonnull %16, %struct.timezone* null) #25
  %56 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i64 0, i32 0
  %57 = load i64, i64* %56, align 8, !tbaa !35
  %58 = mul nsw i64 %57, 1000000
  %59 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i64 0, i32 1
  %60 = load i64, i64* %59, align 8, !tbaa !38
  %61 = add nsw i64 %58, %60
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %54) #25
  %62 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %18, i64 0, i32 3
  store i64 %61, i64* %62, align 8, !tbaa !41
  %63 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %18, i64 0, i32 0
  store i32 0, i32* %63, align 8, !tbaa !44
  %64 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %18, i64 0, i32 1
  store %struct.pb_async_time_marker_list* null, %struct.pb_async_time_marker_list** %64, align 8, !tbaa !45
  %65 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %18, i64 0, i32 4, i64 0, i32 0
  store i32 0, i32* %65, align 8, !tbaa !30
  %66 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %18, i64 0, i32 4, i64 0, i32 1
  store i64 0, i64* %66, align 8, !tbaa !34
  %67 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %18, i64 0, i32 5, i64 0
  %68 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %18, i64 0, i32 4, i64 1, i32 0
  store i32 0, i32* %68, align 8, !tbaa !30
  %69 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %18, i64 0, i32 4, i64 1, i32 1
  store i64 0, i64* %69, align 8, !tbaa !34
  %70 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %18, i64 0, i32 4, i64 2, i32 0
  store i32 0, i32* %70, align 8, !tbaa !30
  %71 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %18, i64 0, i32 4, i64 2, i32 1
  store i64 0, i64* %71, align 8, !tbaa !34
  %72 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %18, i64 0, i32 4, i64 3, i32 0
  store i32 0, i32* %72, align 8, !tbaa !30
  %73 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %18, i64 0, i32 4, i64 3, i32 1
  store i64 0, i64* %73, align 8, !tbaa !34
  %74 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %18, i64 0, i32 4, i64 4, i32 0
  store i32 0, i32* %74, align 8, !tbaa !30
  %75 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %18, i64 0, i32 4, i64 4, i32 1
  store i64 0, i64* %75, align 8, !tbaa !34
  %76 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %18, i64 0, i32 4, i64 5, i32 0
  store i32 0, i32* %76, align 8, !tbaa !30
  %77 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %18, i64 0, i32 4, i64 5, i32 1
  store i64 0, i64* %77, align 8, !tbaa !34
  %78 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %18, i64 0, i32 4, i64 6, i32 0
  store i32 0, i32* %78, align 8, !tbaa !30
  %79 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %18, i64 0, i32 4, i64 6, i32 1
  store i64 0, i64* %79, align 8, !tbaa !34
  %80 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %18, i64 0, i32 4, i64 7, i32 0
  store i32 0, i32* %80, align 8, !tbaa !30
  %81 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %18, i64 0, i32 4, i64 7, i32 1
  store i64 0, i64* %81, align 8, !tbaa !34
  %82 = bitcast %struct.pb_SubTimerList** %67 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %82, i8 0, i64 64, i1 false) #25
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %18, i32 6)
  %83 = bitcast i32* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %83) #25
  %84 = bitcast i32* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %84) #25
  %85 = bitcast i32* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %85) #25
  %86 = bitcast i32* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %86) #25
  %87 = bitcast float** %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %87) #25
  %88 = bitcast i32** %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %88) #25
  %89 = bitcast i32** %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %89) #25
  %90 = bitcast i32** %26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %90) #25
  %91 = bitcast i32** %27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %91) #25
  %92 = bitcast float** %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %92) #25
  %93 = bitcast float** %29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %93) #25
  %94 = bitcast float** %30 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %94) #25
  %95 = bitcast i32** %31 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %95) #25
  %96 = bitcast i32** %32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %96) #25
  %97 = bitcast i32** %33 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %97) #25
  %98 = bitcast i32** %34 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %98) #25
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %18, i32 1)
  %99 = bitcast i32* %35 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %99) #25
  %100 = load i8*, i8** %43, align 8, !tbaa !9
  %101 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0), i8* %100)
  %102 = load i8*, i8** %43, align 8, !tbaa !9
  %103 = call i32 @coo_to_jds(i8* %102, i32 1, i32 32, i32 1, i32 1, i32 0, i32 1, float** nonnull %23, i32** nonnull %25, i32** nonnull %27, i32** nonnull %24, i32** nonnull %26, i32* nonnull %35, i32* nonnull %21, i32* nonnull %19, i32* nonnull %22, i32* nonnull %20)
  %104 = load i32, i32* %21, align 4, !tbaa !10
  %105 = sext i32 %104 to i64
  %106 = shl nsw i64 %105, 2
  %107 = tail call noalias align 16 i8* @malloc(i64 %106) #25
  %108 = tail call noalias align 16 i8* @malloc(i64 %106) #25
  %109 = load i8*, i8** %47, align 8, !tbaa !9
  %110 = tail call %struct._IO_FILE* @fopen(i8* %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0)) #25
  %111 = tail call i64 @fread(i8* %108, i64 4, i64 %105, %struct._IO_FILE* %110) #25
  %112 = tail call i32 @fclose(%struct._IO_FILE* %110) #25
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %18, i32 6)
  %113 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %36, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 792, i8* nonnull %113) #25
  %114 = call i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* nonnull %36, i32 0)
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %18, i32 3)
  %115 = bitcast float** %28 to i8**
  %116 = load i32, i32* %19, align 4, !tbaa !10
  %117 = sext i32 %116 to i64
  %118 = shl nsw i64 %117, 2
  %119 = call i32 @hipMalloc(i8** nonnull %115, i64 %118)
  %120 = bitcast i32** %31 to i8**
  %121 = call i32 @hipMalloc(i8** nonnull %120, i64 %118)
  %122 = bitcast i32** %32 to i8**
  %123 = load i32, i32* %20, align 4, !tbaa !10
  %124 = sext i32 %123 to i64
  %125 = shl nsw i64 %124, 2
  %126 = call i32 @hipMalloc(i8** nonnull %122, i64 %125)
  %127 = bitcast i32** %33 to i8**
  %128 = call i32 @hipMalloc(i8** nonnull %127, i64 %106)
  %129 = bitcast i32** %34 to i8**
  %130 = load i32, i32* %22, align 4, !tbaa !10
  %131 = sext i32 %130 to i64
  %132 = shl nsw i64 %131, 2
  %133 = call i32 @hipMalloc(i8** nonnull %129, i64 %132)
  %134 = bitcast float** %30 to i8**
  %135 = call i32 @hipMalloc(i8** nonnull %134, i64 %106)
  %136 = bitcast float** %29 to i8**
  %137 = call i32 @hipMalloc(i8** nonnull %136, i64 %106)
  %138 = load i8*, i8** %136, align 8, !tbaa !9
  %139 = call i32 @hipMemset(i8* %138, i32 0, i64 %106)
  %140 = load i8*, i8** %115, align 8, !tbaa !9
  %141 = bitcast float** %23 to i8**
  %142 = load i8*, i8** %141, align 8, !tbaa !9
  %143 = call i32 @hipMemcpy(i8* %140, i8* %142, i64 %118, i32 1)
  %144 = load i8*, i8** %120, align 8, !tbaa !9
  %145 = bitcast i32** %24 to i8**
  %146 = load i8*, i8** %145, align 8, !tbaa !9
  %147 = call i32 @hipMemcpy(i8* %144, i8* %146, i64 %118, i32 1)
  %148 = load i8*, i8** %127, align 8, !tbaa !9
  %149 = bitcast i32** %26 to i8**
  %150 = load i8*, i8** %149, align 8, !tbaa !9
  %151 = call i32 @hipMemcpy(i8* %148, i8* %150, i64 %106, i32 1)
  %152 = load i8*, i8** %134, align 8, !tbaa !9
  %153 = call i32 @hipMemcpy(i8* %152, i8* %108, i64 %106, i32 1)
  %154 = bitcast i32** %25 to i8**
  %155 = load i8*, i8** %154, align 8, !tbaa !9
  %156 = call i32 @hipMemcpyToSymbol(i8* nonnull bitcast ([5000 x i32]* @jds_ptr_int to i8*), i8* %155, i64 %125, i64 0, i32 1)
  %157 = bitcast i32** %27 to i8**
  %158 = load i8*, i8** %157, align 8, !tbaa !9
  %159 = call i32 @hipMemcpyToSymbol(i8* nonnull bitcast ([5000 x i32]* @sh_zcnt_int to i8*), i8* %158, i64 %132, i64 0, i32 1)
  %160 = call i32 @hipDeviceSynchronize()
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %18, i32 6)
  %161 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %36, i64 0, i32 12
  %162 = load i32, i32* %161, align 8, !tbaa !95
  %163 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %36, i64 0, i32 13
  %164 = load i32, i32* %163, align 4, !tbaa !98
  %165 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %36, i64 0, i32 14
  %166 = load i32, i32* %165, align 8, !tbaa !99
  %167 = icmp eq i32 %162, 1
  %168 = icmp sgt i32 %164, 1
  %169 = select i1 %168, i32 1024, i32 768
  %170 = select i1 %167, i32 %169, i32 1536
  %171 = shl nsw i32 %130, 5
  %172 = mul nsw i32 %170, %166
  %173 = icmp sgt i32 %171, %172
  br i1 %173, label %174, label %181

174:                                              ; preds = %53
  %175 = lshr exact i32 %170, 3
  %176 = add nsw i32 %171, -1
  %177 = add i32 %176, %175
  %178 = sdiv i32 %177, %175
  %179 = zext i32 %175 to i64
  %180 = or i64 %179, 4294967296
  br label %181

181:                                              ; preds = %53, %174
  %182 = phi i32 [ %178, %174 ], [ %130, %53 ]
  %183 = phi i64 [ %180, %174 ], [ 4294967328, %53 ]
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %18, i32 2)
  %184 = zext i32 %182 to i64
  %185 = or i64 %184, 4294967296
  %186 = bitcast float** %4 to i8*
  %187 = bitcast float** %5 to i8*
  %188 = bitcast i32** %6 to i8*
  %189 = bitcast i32** %7 to i8*
  %190 = bitcast float** %8 to i8*
  %191 = bitcast i32** %9 to i8*
  %192 = bitcast i32* %10 to i8*
  %193 = bitcast %struct.dim3* %11 to i8*
  %194 = bitcast %struct.dim3* %12 to i8*
  %195 = bitcast i64* %13 to i8*
  %196 = bitcast i8** %14 to i8*
  %197 = bitcast [7 x i8*]* %15 to i8*
  %198 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 0
  %199 = bitcast [7 x i8*]* %15 to float***
  %200 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 1
  %201 = bitcast i8** %200 to float***
  %202 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 2
  %203 = bitcast i8** %202 to i32***
  %204 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 3
  %205 = bitcast i8** %204 to i32***
  %206 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 4
  %207 = bitcast i8** %206 to float***
  %208 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 5
  %209 = bitcast i8** %208 to i32***
  %210 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 6
  %211 = bitcast i8** %210 to i32**
  %212 = bitcast i8** %14 to %struct.ihipStream_t**
  %213 = bitcast %struct.dim3* %11 to i64*
  %214 = getelementptr inbounds %struct.dim3, %struct.dim3* %11, i64 0, i32 2
  %215 = bitcast %struct.dim3* %12 to i64*
  %216 = getelementptr inbounds %struct.dim3, %struct.dim3* %12, i64 0, i32 2
  br label %220

217:                                              ; preds = %239
  %218 = call i32 @hipGetLastError()
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %245, label %242

220:                                              ; preds = %181, %239
  %221 = phi i32 [ 0, %181 ], [ %240, %239 ]
  %222 = call i32 @__hipPushCallConfiguration(i64 %185, i32 1, i64 %183, i32 1, i64 0, %struct.ihipStream_t* null)
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %239

224:                                              ; preds = %220
  %225 = load float*, float** %29, align 8, !tbaa !9
  %226 = load float*, float** %28, align 8, !tbaa !9
  %227 = load i32*, i32** %31, align 8, !tbaa !9
  %228 = load i32*, i32** %33, align 8, !tbaa !9
  %229 = load float*, float** %30, align 8, !tbaa !9
  %230 = load i32*, i32** %34, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %186)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %187)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %188)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %189)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %190)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %191)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %192)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %193)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %194)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %195)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %196)
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %197)
  store float* %225, float** %4, align 8, !tbaa !9
  store float* %226, float** %5, align 8, !tbaa !9
  store i32* %227, i32** %6, align 8, !tbaa !9
  store i32* %228, i32** %7, align 8, !tbaa !9
  store float* %229, float** %8, align 8, !tbaa !9
  store i32* %230, i32** %9, align 8, !tbaa !9
  store i32 %104, i32* %10, align 4, !tbaa !10
  store float** %4, float*** %199, align 16
  store float** %5, float*** %201, align 8
  store i32** %6, i32*** %203, align 16
  store i32** %7, i32*** %205, align 8
  store float** %8, float*** %207, align 16
  store i32** %9, i32*** %209, align 8
  store i32* %10, i32** %211, align 16
  %231 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %11, %struct.dim3* nonnull %12, i64* nonnull %13, i8** nonnull %14)
  %232 = load i64, i64* %13, align 8
  %233 = load %struct.ihipStream_t*, %struct.ihipStream_t** %212, align 8
  %234 = load i64, i64* %213, align 8
  %235 = load i32, i32* %214, align 8
  %236 = load i64, i64* %215, align 8
  %237 = load i32, i32* %216, align 8
  %238 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, i32*, i32*, float*, i32*, i32)** @_Z14spmv_jds_naivePfPKfPKiS3_S1_S3_i to i8*), i64 %234, i32 %235, i64 %236, i32 %237, i8** nonnull %198, i64 %232, %struct.ihipStream_t* %233)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %186)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %187)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %188)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %189)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %190)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %191)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %192)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %193)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %194)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %195)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %196)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %197)
  br label %239

239:                                              ; preds = %220, %224
  %240 = add nuw nsw i32 %221, 1
  %241 = icmp eq i32 %240, 50
  br i1 %241, label %217, label %220, !llvm.loop !100

242:                                              ; preds = %217
  %243 = call i8* @hipGetErrorString(i32 %218)
  %244 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.49, i64 0, i64 0), i8* %243, i32 722)
  br label %294

245:                                              ; preds = %217
  %246 = call i32 @hipDeviceSynchronize()
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %18, i32 3)
  %247 = load i8*, i8** %136, align 8, !tbaa !9
  %248 = call i32 @hipMemcpy(i8* %107, i8* %247, i64 %106, i32 2)
  %249 = call i32 @hipDeviceSynchronize()
  %250 = load i8*, i8** %115, align 8, !tbaa !9
  %251 = call i32 @hipFree(i8* %250)
  %252 = load i8*, i8** %120, align 8, !tbaa !9
  %253 = call i32 @hipFree(i8* %252)
  %254 = load i8*, i8** %122, align 8, !tbaa !9
  %255 = call i32 @hipFree(i8* %254)
  %256 = load i8*, i8** %127, align 8, !tbaa !9
  %257 = call i32 @hipFree(i8* %256)
  %258 = load i8*, i8** %129, align 8, !tbaa !9
  %259 = call i32 @hipFree(i8* %258)
  %260 = load i8*, i8** %134, align 8, !tbaa !9
  %261 = call i32 @hipFree(i8* %260)
  %262 = load i8*, i8** %136, align 8, !tbaa !9
  %263 = call i32 @hipFree(i8* %262)
  %264 = getelementptr inbounds %struct.pb_Parameters, %struct.pb_Parameters* %41, i64 0, i32 0
  %265 = load i8*, i8** %264, align 8, !tbaa !3
  %266 = icmp eq i8* %265, null
  br i1 %266, label %278, label %267

267:                                              ; preds = %245
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %18, i32 1)
  %268 = call %struct._IO_FILE* @fopen(i8* nonnull %265, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #25
  %269 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %269) #25
  %270 = icmp eq %struct._IO_FILE* %268, null
  br i1 %270, label %271, label %274

271:                                              ; preds = %267
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %273 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %272) #26
  call void @exit(i32 -1) #29
  unreachable

274:                                              ; preds = %267
  store i32 %104, i32* %3, align 4, !tbaa !10
  %275 = call i64 @fwrite(i8* nonnull %269, i64 4, i64 1, %struct._IO_FILE* nonnull %268) #25
  %276 = call i64 @fwrite(i8* %107, i64 4, i64 %105, %struct._IO_FILE* nonnull %268) #25
  %277 = call i32 @fclose(%struct._IO_FILE* nonnull %268) #25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %269) #25
  br label %278

278:                                              ; preds = %274, %245
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %18, i32 6)
  call void @free(i8* %142) #25
  call void @free(i8* %146) #25
  call void @free(i8* %155) #25
  call void @free(i8* %150) #25
  call void @free(i8* %158) #25
  call void @free(i8* %107) #25
  call void @free(i8* %108) #25
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %18, i32 0)
  call void @pb_PrintTimerSet(%struct.pb_TimerSet* nonnull %18)
  call void @free(i8* %265) #25
  %279 = load i8**, i8*** %42, align 8, !tbaa !8
  %280 = icmp eq i8** %279, null
  br i1 %280, label %292, label %281

281:                                              ; preds = %278
  %282 = load i8*, i8** %279, align 8, !tbaa !9
  %283 = icmp eq i8* %282, null
  br i1 %283, label %290, label %284

284:                                              ; preds = %281, %284
  %285 = phi i8* [ %288, %284 ], [ %282, %281 ]
  %286 = phi i8** [ %287, %284 ], [ %279, %281 ]
  call void @free(i8* nonnull %285) #25
  %287 = getelementptr inbounds i8*, i8** %286, i64 1
  %288 = load i8*, i8** %287, align 8, !tbaa !9
  %289 = icmp eq i8* %288, null
  br i1 %289, label %290, label %284, !llvm.loop !28

290:                                              ; preds = %284, %281
  %291 = bitcast i8** %279 to i8*
  call void @free(i8* %291) #25
  br label %292

292:                                              ; preds = %278, %290
  %293 = bitcast %struct.pb_Parameters* %41 to i8*
  call void @free(i8* %293) #25
  br label %294

294:                                              ; preds = %242, %292
  %295 = phi i32 [ 0, %292 ], [ -1, %242 ]
  call void @llvm.lifetime.end.p0i8(i64 792, i8* nonnull %113) #25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %99) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %98) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %97) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %96) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %95) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %94) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %93) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %92) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %91) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %90) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %89) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %88) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %87) #25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %86) #25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %85) #25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %84) #25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %83) #25
  call void @llvm.lifetime.end.p0i8(i64 288, i8* nonnull %37) #25
  ret i32 %295
}

declare dso_local i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t*, i32) local_unnamed_addr #12

declare dso_local i32 @hipMalloc(i8**, i64) local_unnamed_addr #12

declare dso_local i32 @hipMemset(i8*, i32, i64) local_unnamed_addr #12

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #12

declare dso_local i32 @hipDeviceSynchronize() local_unnamed_addr #12

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #12

declare dso_local i32 @hipGetLastError() local_unnamed_addr #12

declare dso_local i8* @hipGetErrorString(i32) local_unnamed_addr #12

declare dso_local i32 @hipFree(i8*) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local i32 @_Z26mm_read_unsymmetric_sparsePKcPiS1_S1_PPdPS1_S4_(i8* %0, i32* nocapture writeonly %1, i32* nocapture writeonly %2, i32* nocapture writeonly %3, double** nocapture writeonly %4, i32** nocapture writeonly %5, i32** nocapture writeonly %6) local_unnamed_addr #8 {
  %8 = alloca [1025 x i8], align 16
  %9 = alloca [4 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #25
  %14 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #25
  %15 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #25
  %16 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #25
  %17 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  %18 = icmp eq %struct._IO_FILE* %17, null
  br i1 %18, label %91, label %19

19:                                               ; preds = %7
  %20 = call i32 @_Z14mm_read_bannerP8_IO_FILEPA4_c(%struct._IO_FILE* nonnull %17, [4 x i8]* nonnull %9)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([60 x i8], [60 x i8]* @.str.50, i64 0, i64 0))
  %24 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i64 0, i64 0), i8* %0)
  br label %91

25:                                               ; preds = %19
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 2
  %27 = load i8, i8* %26, align 1, !tbaa !12
  %28 = icmp eq i8 %27, 82
  %29 = load i8, i8* %13, align 1
  %30 = icmp eq i8 %29, 77
  %31 = select i1 %28, i1 %30, i1 false
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = icmp eq i8 %33, 67
  %35 = select i1 %31, i1 %34, i1 false
  br i1 %35, label %42, label %36

36:                                               ; preds = %25
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %38 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %37) #27
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %40 = call i8* @_Z18mm_typecode_to_strPc(i8* nonnull %13)
  %41 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i64 0, i64 0), i8* %40) #27
  br label %91

42:                                               ; preds = %25
  %43 = getelementptr inbounds [1025 x i8], [1025 x i8]* %8, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1025, i8* nonnull %43) #25
  store i32 0, i32* %12, align 4, !tbaa !10
  store i32 0, i32* %11, align 4, !tbaa !10
  store i32 0, i32* %10, align 4, !tbaa !10
  br label %44

44:                                               ; preds = %47, %42
  %45 = call i8* @fgets(i8* nonnull %43, i32 1025, %struct._IO_FILE* nonnull %17) #25
  %46 = icmp eq i8* %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %44
  %48 = load i8, i8* %43, align 16, !tbaa !12
  %49 = icmp eq i8 %48, 37
  br i1 %49, label %44, label %50, !llvm.loop !78

50:                                               ; preds = %47
  %51 = call i32 (i8*, i8*, ...) @sscanf(i8* nonnull %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i64 0, i64 0), i32* nonnull %10, i32* nonnull %11, i32* nonnull %12) #25
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %58, label %53

53:                                               ; preds = %50, %53
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i64 0, i64 0), i32* nonnull %10, i32* nonnull %11, i32* nonnull %12) #25
  switch i32 %54, label %53 [
    i32 -1, label %55
    i32 3, label %58
  ]

55:                                               ; preds = %44, %53
  call void @llvm.lifetime.end.p0i8(i64 1025, i8* nonnull %43) #25
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %57 = call i64 @fwrite(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.52, i64 0, i64 0), i64 56, i64 1, %struct._IO_FILE* %56) #27
  br label %91

58:                                               ; preds = %53, %50
  call void @llvm.lifetime.end.p0i8(i64 1025, i8* nonnull %43) #25
  %59 = load i32, i32* %10, align 4, !tbaa !10
  store i32 %59, i32* %1, align 4, !tbaa !10
  %60 = load i32, i32* %11, align 4, !tbaa !10
  store i32 %60, i32* %2, align 4, !tbaa !10
  %61 = load i32, i32* %12, align 4, !tbaa !10
  store i32 %61, i32* %3, align 4, !tbaa !10
  %62 = sext i32 %61 to i64
  %63 = shl nsw i64 %62, 2
  %64 = call noalias align 16 i8* @malloc(i64 %63) #25
  %65 = bitcast i8* %64 to i32*
  %66 = call noalias align 16 i8* @malloc(i64 %63) #25
  %67 = bitcast i8* %66 to i32*
  %68 = shl nsw i64 %62, 3
  %69 = call noalias align 16 i8* @malloc(i64 %68) #25
  %70 = bitcast i8* %69 to double*
  %71 = bitcast double** %4 to i8**
  store i8* %69, i8** %71, align 8, !tbaa !9
  %72 = bitcast i32** %5 to i8**
  store i8* %64, i8** %72, align 8, !tbaa !9
  %73 = bitcast i32** %6 to i8**
  store i8* %66, i8** %73, align 8, !tbaa !9
  %74 = icmp sgt i32 %61, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %58, %75
  %76 = phi i64 [ %85, %75 ], [ 0, %58 ]
  %77 = getelementptr inbounds i32, i32* %65, i64 %76
  %78 = getelementptr inbounds i32, i32* %67, i64 %76
  %79 = getelementptr inbounds double, double* %70, i64 %76
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i64 0, i64 0), i32* %77, i32* %78, double* %79)
  %81 = load i32, i32* %77, align 4, !tbaa !10
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %77, align 4, !tbaa !10
  %83 = load i32, i32* %78, align 4, !tbaa !10
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %78, align 4, !tbaa !10
  %85 = add nuw nsw i64 %76, 1
  %86 = load i32, i32* %12, align 4, !tbaa !10
  %87 = sext i32 %86 to i64
  %88 = icmp slt i64 %85, %87
  br i1 %88, label %75, label %89, !llvm.loop !101

89:                                               ; preds = %75, %58
  %90 = call i32 @fclose(%struct._IO_FILE* nonnull %17)
  br label %91

91:                                               ; preds = %7, %89, %55, %36, %22
  %92 = phi i32 [ -1, %22 ], [ -1, %55 ], [ 0, %89 ], [ -1, %36 ], [ -1, %7 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #25
  ret i32 %92
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @_Z11mm_is_validPc(i8* nocapture readonly %0) local_unnamed_addr #6 {
  %2 = load i8, i8* %0, align 1, !tbaa !12
  %3 = icmp eq i8 %2, 77
  br i1 %3, label %4, label %23

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, i8* %0, i64 1
  %6 = load i8, i8* %5, align 1, !tbaa !12
  %7 = icmp eq i8 %6, 65
  %8 = getelementptr inbounds i8, i8* %0, i64 2
  %9 = load i8, i8* %8, align 1, !tbaa !12
  %10 = icmp eq i8 %9, 80
  %11 = select i1 %7, i1 %10, i1 false
  br i1 %11, label %23, label %12

12:                                               ; preds = %4
  switch i8 %9, label %23 [
    i8 82, label %13
    i8 80, label %17
  ]

13:                                               ; preds = %12
  %14 = getelementptr inbounds i8, i8* %0, i64 3
  %15 = load i8, i8* %14, align 1, !tbaa !12
  %16 = icmp ne i8 %15, 72
  br label %23

17:                                               ; preds = %12
  %18 = getelementptr inbounds i8, i8* %0, i64 3
  %19 = load i8, i8* %18, align 1, !tbaa !12
  %20 = icmp ne i8 %19, 72
  %21 = icmp ne i8 %19, 75
  %22 = and i1 %20, %21
  br label %23

23:                                               ; preds = %4, %13, %12, %17, %1
  %24 = phi i1 [ false, %1 ], [ %22, %17 ], [ %16, %13 ], [ true, %12 ], [ false, %4 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

; Function Attrs: nofree nounwind
declare dso_local noundef i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @sscanf(i8* nocapture noundef readonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @tolower(i32) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local i32 @_Z21mm_write_mtx_crd_sizeP8_IO_FILEiii(%struct._IO_FILE* nocapture %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #8 {
  %5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i64 0, i64 0), i32 %1, i32 %2, i32 %3)
  %6 = icmp eq i32 %5, 3
  %7 = select i1 %6, i32 0, i32 17
  ret i32 %7
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local i32 @_Z22mm_read_mtx_array_sizeP8_IO_FILEPiS1_(%struct._IO_FILE* nocapture %0, i32* %1, i32* %2) local_unnamed_addr #8 {
  %4 = alloca [1025 x i8], align 16
  %5 = getelementptr inbounds [1025 x i8], [1025 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1025, i8* nonnull %5) #25
  store i32 0, i32* %2, align 4, !tbaa !10
  store i32 0, i32* %1, align 4, !tbaa !10
  br label %6

6:                                                ; preds = %9, %3
  %7 = call i8* @fgets(i8* nonnull %5, i32 1025, %struct._IO_FILE* %0)
  %8 = icmp eq i8* %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %6
  %10 = load i8, i8* %5, align 16, !tbaa !12
  %11 = icmp eq i8 %10, 37
  br i1 %11, label %6, label %12, !llvm.loop !102

12:                                               ; preds = %9
  %13 = call i32 (i8*, i8*, ...) @sscanf(i8* nonnull %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i64 0, i64 0), i32* nonnull %1, i32* nonnull %2) #25
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %15
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i64 0, i64 0), i32* nonnull %1, i32* nonnull %2)
  switch i32 %16, label %15 [
    i32 -1, label %17
    i32 2, label %18
  ]

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %6, %15, %17, %12
  %19 = phi i32 [ 0, %12 ], [ 12, %17 ], [ 0, %15 ], [ 12, %6 ]
  call void @llvm.lifetime.end.p0i8(i64 1025, i8* nonnull %5) #25
  ret i32 %19
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local i32 @_Z23mm_write_mtx_array_sizeP8_IO_FILEii(%struct._IO_FILE* nocapture %0, i32 %1, i32 %2) local_unnamed_addr #8 {
  %4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i32 %1, i32 %2)
  %5 = icmp eq i32 %4, 2
  %6 = select i1 %5, i32 0, i32 17
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local i32 @_Z20mm_read_mtx_crd_dataP8_IO_FILEiiiPiS1_PdPc(%struct._IO_FILE* nocapture %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, double* %6, i8* nocapture readonly %7) local_unnamed_addr #8 {
  %9 = getelementptr inbounds i8, i8* %7, i64 2
  %10 = load i8, i8* %9, align 1, !tbaa !12
  switch i8 %10, label %55 [
    i8 67, label %19
    i8 82, label %15
    i8 80, label %11
  ]

11:                                               ; preds = %8
  %12 = icmp sgt i32 %3, 0
  br i1 %12, label %13, label %55

13:                                               ; preds = %11
  %14 = zext i32 %3 to i64
  br label %48

15:                                               ; preds = %8
  %16 = icmp sgt i32 %3, 0
  br i1 %16, label %17, label %55

17:                                               ; preds = %15
  %18 = zext i32 %3 to i64
  br label %38

19:                                               ; preds = %8
  %20 = icmp sgt i32 %3, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %19
  %22 = zext i32 %3 to i64
  br label %25

23:                                               ; preds = %25
  %24 = icmp eq i64 %35, %22
  br i1 %24, label %55, label %25, !llvm.loop !103

25:                                               ; preds = %21, %23
  %26 = phi i64 [ 0, %21 ], [ %35, %23 ]
  %27 = getelementptr inbounds i32, i32* %4, i64 %26
  %28 = getelementptr inbounds i32, i32* %5, i64 %26
  %29 = shl nuw nsw i64 %26, 1
  %30 = getelementptr inbounds double, double* %6, i64 %29
  %31 = or i64 %29, 1
  %32 = getelementptr inbounds double, double* %6, i64 %31
  %33 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.70, i64 0, i64 0), i32* %27, i32* %28, double* %30, double* nonnull %32)
  %34 = icmp eq i32 %33, 4
  %35 = add nuw nsw i64 %26, 1
  br i1 %34, label %23, label %55

36:                                               ; preds = %38
  %37 = icmp eq i64 %45, %18
  br i1 %37, label %55, label %38, !llvm.loop !104

38:                                               ; preds = %17, %36
  %39 = phi i64 [ 0, %17 ], [ %45, %36 ]
  %40 = getelementptr inbounds i32, i32* %4, i64 %39
  %41 = getelementptr inbounds i32, i32* %5, i64 %39
  %42 = getelementptr inbounds double, double* %6, i64 %39
  %43 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i64 0, i64 0), i32* %40, i32* %41, double* %42)
  %44 = icmp eq i32 %43, 3
  %45 = add nuw nsw i64 %39, 1
  br i1 %44, label %36, label %55

46:                                               ; preds = %48
  %47 = icmp eq i64 %54, %14
  br i1 %47, label %55, label %48, !llvm.loop !105

48:                                               ; preds = %13, %46
  %49 = phi i64 [ 0, %13 ], [ %54, %46 ]
  %50 = getelementptr inbounds i32, i32* %4, i64 %49
  %51 = getelementptr inbounds i32, i32* %5, i64 %49
  %52 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i64 0, i64 0), i32* %50, i32* %51)
  %53 = icmp eq i32 %52, 2
  %54 = add nuw nsw i64 %49, 1
  br i1 %53, label %46, label %55

55:                                               ; preds = %48, %46, %38, %36, %25, %23, %11, %15, %19, %8
  %56 = phi i32 [ 15, %8 ], [ 0, %19 ], [ 0, %15 ], [ 0, %11 ], [ 12, %25 ], [ 0, %23 ], [ 12, %38 ], [ 0, %36 ], [ 12, %48 ], [ 0, %46 ]
  ret i32 %56
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local i32 @_Z21mm_read_mtx_crd_entryP8_IO_FILEPiS1_PdS2_Pc(%struct._IO_FILE* nocapture %0, i32* %1, i32* %2, double* %3, double* %4, i8* nocapture readonly %5) local_unnamed_addr #8 {
  %7 = getelementptr inbounds i8, i8* %5, i64 2
  %8 = load i8, i8* %7, align 1, !tbaa !12
  switch i8 %8, label %19 [
    i8 67, label %9
    i8 82, label %12
    i8 80, label %15
  ]

9:                                                ; preds = %6
  %10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.70, i64 0, i64 0), i32* %1, i32* %2, double* %3, double* %4)
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %18, label %19

12:                                               ; preds = %6
  %13 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i64 0, i64 0), i32* %1, i32* %2, double* %3)
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %18, label %19

15:                                               ; preds = %6
  %16 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i64 0, i64 0), i32* %1, i32* %2)
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %15, %9
  br label %19

19:                                               ; preds = %6, %15, %12, %9, %18
  %20 = phi i32 [ 0, %18 ], [ 12, %9 ], [ 12, %12 ], [ 12, %15 ], [ 15, %6 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local i32 @_Z15mm_read_mtx_crdPcPiS0_S0_PS0_S1_PPdPA4_c(i8* nocapture readonly %0, i32* %1, i32* %2, i32* %3, i32** nocapture %4, i32** nocapture %5, double** nocapture writeonly %6, [4 x i8]* nocapture %7) local_unnamed_addr #8 {
  %9 = alloca [1025 x i8], align 16
  %10 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i64 0, i64 0)) #28
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !9
  br label %17

14:                                               ; preds = %8
  %15 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  %16 = icmp eq %struct._IO_FILE* %15, null
  br i1 %16, label %98, label %17

17:                                               ; preds = %14, %12
  %18 = phi %struct._IO_FILE* [ %13, %12 ], [ %15, %14 ]
  %19 = tail call i32 @_Z14mm_read_bannerP8_IO_FILEPA4_c(%struct._IO_FILE* %18, [4 x i8]* %7)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %98

21:                                               ; preds = %17
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %23 = load i8, i8* %22, align 1, !tbaa !12
  %24 = icmp eq i8 %23, 77
  br i1 %24, label %25, label %98

25:                                               ; preds = %21
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  %27 = load i8, i8* %26, align 1, !tbaa !12
  %28 = icmp eq i8 %27, 65
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  %30 = load i8, i8* %29, align 1, !tbaa !12
  %31 = icmp eq i8 %30, 80
  %32 = select i1 %28, i1 %31, i1 false
  br i1 %32, label %98, label %33

33:                                               ; preds = %25
  switch i8 %30, label %43 [
    i8 82, label %37
    i8 80, label %34
  ]

34:                                               ; preds = %33
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 3
  %36 = load i8, i8* %35, align 1, !tbaa !12
  switch i8 %36, label %43 [
    i8 75, label %98
    i8 72, label %98
  ]

37:                                               ; preds = %33
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 3
  %39 = load i8, i8* %38, align 1, !tbaa !12
  %40 = icmp ne i8 %39, 72
  %41 = icmp eq i8 %27, 67
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %45, label %98

43:                                               ; preds = %34, %33
  %44 = icmp eq i8 %27, 67
  br i1 %44, label %45, label %98

45:                                               ; preds = %37, %43
  %46 = getelementptr inbounds [1025 x i8], [1025 x i8]* %9, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1025, i8* nonnull %46) #25
  store i32 0, i32* %3, align 4, !tbaa !10
  store i32 0, i32* %2, align 4, !tbaa !10
  store i32 0, i32* %1, align 4, !tbaa !10
  br label %47

47:                                               ; preds = %50, %45
  %48 = call i8* @fgets(i8* nonnull %46, i32 1025, %struct._IO_FILE* %18) #25
  %49 = icmp eq i8* %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %47
  %51 = load i8, i8* %46, align 16, !tbaa !12
  %52 = icmp eq i8 %51, 37
  br i1 %52, label %47, label %53, !llvm.loop !78

53:                                               ; preds = %50
  %54 = call i32 (i8*, i8*, ...) @sscanf(i8* nonnull %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i64 0, i64 0), i32* nonnull %1, i32* nonnull %2, i32* nonnull %3) #25
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %59, label %56

56:                                               ; preds = %53, %56
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i64 0, i64 0), i32* nonnull %1, i32* nonnull %2, i32* nonnull %3) #25
  switch i32 %57, label %56 [
    i32 -1, label %58
    i32 3, label %59
  ]

58:                                               ; preds = %47, %56
  call void @llvm.lifetime.end.p0i8(i64 1025, i8* nonnull %46) #25
  br label %98

59:                                               ; preds = %56, %53
  call void @llvm.lifetime.end.p0i8(i64 1025, i8* nonnull %46) #25
  %60 = load i32, i32* %3, align 4, !tbaa !10
  %61 = sext i32 %60 to i64
  %62 = shl nsw i64 %61, 2
  %63 = call noalias align 16 i8* @malloc(i64 %62) #25
  %64 = bitcast i32** %4 to i8**
  store i8* %63, i8** %64, align 8, !tbaa !9
  %65 = call noalias align 16 i8* @malloc(i64 %62) #25
  %66 = bitcast i32** %5 to i8**
  store i8* %65, i8** %66, align 8, !tbaa !9
  store double* null, double** %6, align 8, !tbaa !9
  %67 = load i8, i8* %29, align 1, !tbaa !12
  switch i8 %67, label %93 [
    i8 67, label %68
    i8 82, label %79
    i8 80, label %88
  ]

68:                                               ; preds = %59
  %69 = shl nsw i32 %60, 1
  %70 = sext i32 %69 to i64
  %71 = shl nsw i64 %70, 3
  %72 = call noalias align 16 i8* @malloc(i64 %71) #25
  %73 = bitcast i8* %72 to double*
  %74 = bitcast double** %6 to i8**
  store i8* %72, i8** %74, align 8, !tbaa !9
  %75 = load i32*, i32** %4, align 8, !tbaa !9
  %76 = load i32*, i32** %5, align 8, !tbaa !9
  %77 = call i32 @_Z20mm_read_mtx_crd_dataP8_IO_FILEiiiPiS1_PdPc(%struct._IO_FILE* %18, i32 undef, i32 undef, i32 %60, i32* %75, i32* %76, double* %73, i8* nonnull %22)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %93, label %98

79:                                               ; preds = %59
  %80 = shl nsw i64 %61, 3
  %81 = call noalias align 16 i8* @malloc(i64 %80) #25
  %82 = bitcast i8* %81 to double*
  %83 = bitcast double** %6 to i8**
  store i8* %81, i8** %83, align 8, !tbaa !9
  %84 = load i32*, i32** %4, align 8, !tbaa !9
  %85 = load i32*, i32** %5, align 8, !tbaa !9
  %86 = call i32 @_Z20mm_read_mtx_crd_dataP8_IO_FILEiiiPiS1_PdPc(%struct._IO_FILE* %18, i32 undef, i32 undef, i32 %60, i32* %84, i32* %85, double* %82, i8* nonnull %22)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %93, label %98

88:                                               ; preds = %59
  %89 = load i32*, i32** %4, align 8, !tbaa !9
  %90 = load i32*, i32** %5, align 8, !tbaa !9
  %91 = call i32 @_Z20mm_read_mtx_crd_dataP8_IO_FILEiiiPiS1_PdPc(%struct._IO_FILE* %18, i32 undef, i32 undef, i32 %60, i32* %89, i32* %90, double* null, i8* nonnull %22)
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %59, %79, %88, %68
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !9
  %95 = icmp eq %struct._IO_FILE* %18, %94
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = call i32 @fclose(%struct._IO_FILE* %18)
  br label %98

98:                                               ; preds = %34, %34, %25, %21, %58, %93, %96, %88, %79, %68, %37, %43, %17, %14
  %99 = phi i32 [ 11, %14 ], [ %19, %17 ], [ 15, %43 ], [ 15, %37 ], [ 12, %58 ], [ %77, %68 ], [ %86, %79 ], [ %91, %88 ], [ 0, %96 ], [ 0, %93 ], [ 15, %21 ], [ 15, %25 ], [ 15, %34 ], [ 15, %34 ]
  ret i32 %99
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @_Z15mm_write_bannerP8_IO_FILEPc(%struct._IO_FILE* nocapture %0, i8* nocapture readonly %1) local_unnamed_addr #0 {
  %3 = tail call i8* @_Z18mm_typecode_to_strPc(i8* %1)
  %4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i64 0, i64 0), i8* %3)
  tail call void @free(i8* %3) #25
  %5 = icmp eq i32 %4, 2
  %6 = select i1 %5, i32 0, i32 17
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local i32 @_Z16mm_write_mtx_crdPciiiPiS0_PdS_(i8* nocapture readonly %0, i32 %1, i32 %2, i32 %3, i32* nocapture readonly %4, i32* nocapture readonly %5, double* nocapture readonly %6, i8* nocapture readonly %7) local_unnamed_addr #8 {
  %9 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i64 0, i64 0)) #28
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !9
  br label %16

13:                                               ; preds = %8
  %14 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  %15 = icmp eq %struct._IO_FILE* %14, null
  br i1 %15, label %80, label %16

16:                                               ; preds = %13, %11
  %17 = phi %struct._IO_FILE* [ %12, %11 ], [ %14, %13 ]
  %18 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i64 0, i64 0))
  %19 = tail call i8* @_Z18mm_typecode_to_strPc(i8* %7)
  %20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0), i8* %19)
  %21 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i64 0, i64 0), i32 %1, i32 %2, i32 %3)
  %22 = getelementptr inbounds i8, i8* %7, i64 2
  %23 = load i8, i8* %22, align 1, !tbaa !12
  switch i8 %23, label %71 [
    i8 80, label %32
    i8 82, label %28
    i8 67, label %24
  ]

24:                                               ; preds = %16
  %25 = icmp sgt i32 %3, 0
  br i1 %25, label %26, label %74

26:                                               ; preds = %24
  %27 = zext i32 %3 to i64
  br label %56

28:                                               ; preds = %16
  %29 = icmp sgt i32 %3, 0
  br i1 %29, label %30, label %74

30:                                               ; preds = %28
  %31 = zext i32 %3 to i64
  br label %45

32:                                               ; preds = %16
  %33 = icmp sgt i32 %3, 0
  br i1 %33, label %34, label %74

34:                                               ; preds = %32
  %35 = zext i32 %3 to i64
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi i64 [ 0, %34 ], [ %43, %36 ]
  %38 = getelementptr inbounds i32, i32* %4, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !10
  %40 = getelementptr inbounds i32, i32* %5, i64 %37
  %41 = load i32, i32* %40, align 4, !tbaa !10
  %42 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i32 %39, i32 %41)
  %43 = add nuw nsw i64 %37, 1
  %44 = icmp eq i64 %43, %35
  br i1 %44, label %74, label %36, !llvm.loop !106

45:                                               ; preds = %30, %45
  %46 = phi i64 [ 0, %30 ], [ %54, %45 ]
  %47 = getelementptr inbounds i32, i32* %4, i64 %46
  %48 = load i32, i32* %47, align 4, !tbaa !10
  %49 = getelementptr inbounds i32, i32* %5, i64 %46
  %50 = load i32, i32* %49, align 4, !tbaa !10
  %51 = getelementptr inbounds double, double* %6, i64 %46
  %52 = load double, double* %51, align 8, !tbaa !107
  %53 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.76, i64 0, i64 0), i32 %48, i32 %50, double %52)
  %54 = add nuw nsw i64 %46, 1
  %55 = icmp eq i64 %54, %31
  br i1 %55, label %74, label %45, !llvm.loop !109

56:                                               ; preds = %26, %56
  %57 = phi i64 [ 0, %26 ], [ %69, %56 ]
  %58 = getelementptr inbounds i32, i32* %4, i64 %57
  %59 = load i32, i32* %58, align 4, !tbaa !10
  %60 = getelementptr inbounds i32, i32* %5, i64 %57
  %61 = load i32, i32* %60, align 4, !tbaa !10
  %62 = shl nuw nsw i64 %57, 1
  %63 = getelementptr inbounds double, double* %6, i64 %62
  %64 = load double, double* %63, align 8, !tbaa !107
  %65 = or i64 %62, 1
  %66 = getelementptr inbounds double, double* %6, i64 %65
  %67 = load double, double* %66, align 8, !tbaa !107
  %68 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.77, i64 0, i64 0), i32 %59, i32 %61, double %64, double %67)
  %69 = add nuw nsw i64 %57, 1
  %70 = icmp eq i64 %69, %27
  br i1 %70, label %74, label %56, !llvm.loop !110

71:                                               ; preds = %16
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !9
  %73 = icmp eq %struct._IO_FILE* %17, %72
  br i1 %73, label %80, label %77

74:                                               ; preds = %56, %45, %36, %24, %28, %32
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !9
  %76 = icmp eq %struct._IO_FILE* %17, %75
  br i1 %76, label %80, label %77

77:                                               ; preds = %74, %71
  %78 = phi i32 [ 15, %71 ], [ 0, %74 ]
  %79 = tail call i32 @fclose(%struct._IO_FILE* %17)
  br label %80

80:                                               ; preds = %77, %74, %71, %13
  %81 = phi i32 [ 17, %13 ], [ 15, %71 ], [ 0, %74 ], [ %78, %77 ]
  ret i32 %81
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local i8* @_Z9mm_strdupPKc(i8* nocapture readonly %0) local_unnamed_addr #19 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #28
  %3 = shl i64 %2, 32
  %4 = add i64 %3, 4294967296
  %5 = ashr exact i64 %4, 32
  %6 = tail call noalias align 16 i8* @malloc(i64 %5) #25
  %7 = tail call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(1) %0) #25
  ret i8* %6
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare dso_local i8* @strcpy(i8* noalias returned writeonly, i8* noalias nocapture readonly) local_unnamed_addr #20

declare dso_local i32 @hipEventCreate(%struct.ihipEvent_t**) local_unnamed_addr #12

declare dso_local i32 @hipEventRecord(%struct.ihipEvent_t*, %struct.ihipStream_t*) local_unnamed_addr #12

declare dso_local i32 @hipEventElapsedTime(float*, %struct.ihipEvent_t*, %struct.ihipEvent_t*) local_unnamed_addr #12

declare dso_local void @hipCreateChannelDesc(%struct.hipChannelFormatDesc* sret(%struct.hipChannelFormatDesc) align 4, i32, i32, i32, i32, i32) local_unnamed_addr #12

declare dso_local i32 @hipMemcpyToSymbol(i8*, i8*, i64, i64, i32) local_unnamed_addr #12

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_spmv.cpp() #21 section ".text.startup" {
  %1 = alloca %struct.hipChannelFormatDesc, align 4
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, <4 x i32>* bitcast (%struct.texture* @tex_x_float to <4 x i32>*), align 16, !tbaa !12
  store i32 1, i32* getelementptr inbounds (%struct.texture, %struct.texture* @tex_x_float, i64 0, i32 0, i32 3, i64 1), align 16, !tbaa !111
  store i32 1, i32* getelementptr inbounds (%struct.texture, %struct.texture* @tex_x_float, i64 0, i32 0, i32 3, i64 2), align 4, !tbaa !111
  %2 = bitcast %struct.hipChannelFormatDesc* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %2) #25
  call void @hipCreateChannelDesc(%struct.hipChannelFormatDesc* nonnull sret(%struct.hipChannelFormatDesc) align 4 %1, i32 32, i32 0, i32 0, i32 0, i32 2)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(20) bitcast (%struct.hipChannelFormatDesc* getelementptr inbounds (%struct.texture, %struct.texture* @tex_x_float, i64 0, i32 0, i32 4) to i8*), i8* noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !113
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #25
  store i32 0, i32* getelementptr inbounds (%struct.texture, %struct.texture* @tex_x_float, i64 0, i32 0, i32 5), align 4, !tbaa !116
  store %struct.__hip_texture* null, %struct.__hip_texture** getelementptr inbounds (%struct.texture, %struct.texture* @tex_x_float, i64 0, i32 0, i32 11), align 8, !tbaa !122
  store i32 0, i32* getelementptr inbounds (%struct.texture, %struct.texture* @tex_x_float, i64 0, i32 0, i32 6), align 16, !tbaa !123
  store float 0.000000e+00, float* getelementptr inbounds (%struct.texture, %struct.texture* @tex_x_float, i64 0, i32 0, i32 8), align 8, !tbaa !124
  store float 0.000000e+00, float* getelementptr inbounds (%struct.texture, %struct.texture* @tex_x_float, i64 0, i32 0, i32 9), align 4, !tbaa !125
  store float 0.000000e+00, float* getelementptr inbounds (%struct.texture, %struct.texture* @tex_x_float, i64 0, i32 0, i32 10), align 16, !tbaa !126
  ret void
}

declare dso_local i32 @__hipRegisterFunction(i8**, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32*) local_unnamed_addr

declare dso_local void @__hipRegisterVar(i8**, i8*, i8*, i8*, i32, i64, i32, i32) local_unnamed_addr

declare dso_local void @__hipRegisterTexture(i8**, i8*, i8*, i8*, i32, i32, i32) local_unnamed_addr

declare dso_local i8** @__hipRegisterFatBinary(i8*) local_unnamed_addr

define internal void @__hip_module_ctor(i8* nocapture readnone %0) {
  %2 = load i8**, i8*** @__hip_gpubin_handle, align 8
  %3 = icmp eq i8** %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i8** @__hipRegisterFatBinary(i8* bitcast ({ i32, i32, i8*, i8* }* @__hip_fatbin_wrapper to i8*))
  store i8** %5, i8*** @__hip_gpubin_handle, align 8
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i8** [ %5, %4 ], [ %2, %1 ]
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (float*, float*, i32*, i32*, float*, i32*, i32)** @_Z14spmv_jds_naivePfPKfPKiS3_S1_S3_i to i8*), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  tail call void @__hipRegisterTexture(i8** %7, i8* bitcast (%struct.texture* @tex_x_float to i8*), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i64 0, i64 0), i32 1, i32 0, i32 0)
  tail call void @__hipRegisterVar(i8** %7, i8* bitcast ([5000 x i32]* @jds_ptr_int to i8*), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i64 0, i64 0), i32 0, i64 20000, i32 1, i32 0)
  tail call void @__hipRegisterVar(i8** %7, i8* bitcast ([5000 x i32]* @sh_zcnt_int to i8*), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i64 0, i64 0), i32 0, i64 20000, i32 1, i32 0)
  %9 = tail call i32 @atexit(void (i8*)* nonnull @__hip_module_dtor)
  ret void
}

declare dso_local void @__hipUnregisterFatBinary(i8**) local_unnamed_addr

define internal void @__hip_module_dtor(i8* nocapture readnone %0) {
  %2 = load i8**, i8*** @__hip_gpubin_handle, align 8
  %3 = icmp eq i8** %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @__hipUnregisterFatBinary(i8** nonnull %2)
  store i8** null, i8*** @__hip_gpubin_handle, align 8
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

declare dso_local i32 @atexit(void (i8*)*) local_unnamed_addr

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #22

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.ceil.f32(float) #23

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #22

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #24

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #14 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #17 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind }
attributes #23 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #24 = { argmemonly nofree nounwind readonly willreturn }
attributes #25 = { nounwind }
attributes #26 = { cold nounwind }
attributes #27 = { cold }
attributes #28 = { nounwind readonly willreturn }
attributes #29 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git bdeeab053a8bf72a56bdf54d056a43ecb9dc2748)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"_ZTS13pb_Parameters", !5, i64 0, !5, i64 8}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!4, !5, i64 8}
!9 = !{!5, !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!6, !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = !{!18}
!18 = distinct !{!18, !19}
!19 = distinct !{!19, !"LVerDomain"}
!20 = !{!21}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !14, !23}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !25}
!27 = distinct !{!27, !14, !23}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !14}
!30 = !{!31, !32, i64 0}
!31 = !{!"_ZTS8pb_Timer", !32, i64 0, !33, i64 8, !33, i64 16}
!32 = !{!"_ZTS13pb_TimerState", !6, i64 0}
!33 = !{!"long long", !6, i64 0}
!34 = !{!31, !33, i64 8}
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTS7timeval", !37, i64 0, !37, i64 8}
!37 = !{!"long", !6, i64 0}
!38 = !{!36, !37, i64 8}
!39 = !{!31, !33, i64 16}
!40 = !{!33, !33, i64 0}
!41 = !{!42, !33, i64 24}
!42 = !{!"_ZTS11pb_TimerSet", !43, i64 0, !5, i64 8, !33, i64 16, !33, i64 24, !6, i64 32, !6, i64 224}
!43 = !{!"_ZTS10pb_TimerID", !6, i64 0}
!44 = !{!42, !43, i64 0}
!45 = !{!42, !5, i64 8}
!46 = !{!47, !5, i64 0}
!47 = !{!"_ZTS11pb_SubTimer", !5, i64 0, !31, i64 8, !5, i64 32}
!48 = !{!47, !5, i64 32}
!49 = !{!50, !5, i64 8}
!50 = !{!"_ZTS15pb_SubTimerList", !5, i64 0, !5, i64 8}
!51 = distinct !{!51, !14}
!52 = !{!50, !5, i64 0}
!53 = !{!54, !43, i64 8}
!54 = !{!"_ZTS25pb_async_time_marker_list", !5, i64 0, !43, i64 8, !5, i64 16, !5, i64 24}
!55 = distinct !{!55, !14}
!56 = !{!54, !5, i64 16}
!57 = !{!54, !5, i64 24}
!58 = !{!54, !5, i64 0}
!59 = distinct !{!59, !14}
!60 = !{!42, !33, i64 16}
!61 = !{!62, !62, i64 0}
!62 = !{!"float", !6, i64 0}
!63 = !{!47, !33, i64 16}
!64 = distinct !{!64, !14}
!65 = distinct !{!65, !14}
!66 = distinct !{!66, !14}
!67 = distinct !{!67, !14}
!68 = distinct !{!68, !14}
!69 = distinct !{!69, !14}
!70 = distinct !{!70, !14}
!71 = distinct !{!71, !14}
!72 = distinct !{!72, !14}
!73 = !{!74, !11, i64 0}
!74 = !{!"_ZTS10_mat_entry", !11, i64 0, !11, i64 4, !62, i64 8}
!75 = !{!74, !11, i64 4}
!76 = !{!77, !11, i64 4}
!77 = !{!"_ZTS10_row_stats", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!78 = distinct !{!78, !14}
!79 = !{!74, !62, i64 8}
!80 = distinct !{!80, !14}
!81 = !{!77, !11, i64 0}
!82 = !{!77, !11, i64 8}
!83 = distinct !{!83, !14}
!84 = !{!77, !11, i64 12}
!85 = distinct !{!85, !14}
!86 = !{i64 0, i64 4, !10, i64 4, i64 4, !61}
!87 = !{i64 0, i64 4, !61}
!88 = distinct !{!88, !14}
!89 = distinct !{!89, !14}
!90 = distinct !{!90, !14}
!91 = distinct !{!91, !14}
!92 = distinct !{!92, !14}
!93 = distinct !{!93, !14}
!94 = distinct !{!94, !14}
!95 = !{!96, !11, i64 328}
!96 = !{!"_ZTS15hipDeviceProp_t", !6, i64 0, !37, i64 256, !37, i64 264, !11, i64 272, !11, i64 276, !11, i64 280, !6, i64 284, !6, i64 296, !11, i64 308, !11, i64 312, !11, i64 316, !37, i64 320, !11, i64 328, !11, i64 332, !11, i64 336, !11, i64 340, !11, i64 344, !11, i64 348, !11, i64 352, !97, i64 356, !11, i64 360, !11, i64 364, !11, i64 368, !11, i64 372, !37, i64 376, !11, i64 384, !11, i64 388, !11, i64 392, !6, i64 396, !11, i64 652, !11, i64 656, !11, i64 660, !11, i64 664, !11, i64 668, !6, i64 672, !6, i64 680, !5, i64 696, !5, i64 704, !37, i64 712, !37, i64 720, !37, i64 728, !11, i64 736, !11, i64 740, !11, i64 744, !11, i64 748, !11, i64 752, !11, i64 756, !11, i64 760, !11, i64 764, !11, i64 768, !11, i64 772, !11, i64 776, !11, i64 780, !11, i64 784, !11, i64 788}
!97 = !{!"_ZTS15hipDeviceArch_t", !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 1, !11, i64 1, !11, i64 1, !11, i64 1, !11, i64 1, !11, i64 1, !11, i64 1, !11, i64 1, !11, i64 2, !11, i64 2, !11, i64 2}
!98 = !{!96, !11, i64 332}
!99 = !{!96, !11, i64 336}
!100 = distinct !{!100, !14}
!101 = distinct !{!101, !14}
!102 = distinct !{!102, !14}
!103 = distinct !{!103, !14}
!104 = distinct !{!104, !14}
!105 = distinct !{!105, !14}
!106 = distinct !{!106, !14}
!107 = !{!108, !108, i64 0}
!108 = !{!"double", !6, i64 0}
!109 = distinct !{!109, !14}
!110 = distinct !{!110, !14}
!111 = !{!112, !112, i64 0}
!112 = !{!"_ZTS21hipTextureAddressMode", !6, i64 0}
!113 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 4, !10, i64 16, i64 4, !114}
!114 = !{!115, !115, i64 0}
!115 = !{!"_ZTS20hipChannelFormatKind", !6, i64 0}
!116 = !{!117, !11, i64 44}
!117 = !{!"_ZTS16textureReference", !11, i64 0, !118, i64 4, !119, i64 8, !6, i64 12, !120, i64 24, !11, i64 44, !11, i64 48, !119, i64 52, !62, i64 56, !62, i64 60, !62, i64 64, !5, i64 72, !11, i64 80, !121, i64 84}
!118 = !{!"_ZTS18hipTextureReadMode", !6, i64 0}
!119 = !{!"_ZTS20hipTextureFilterMode", !6, i64 0}
!120 = !{!"_ZTS20hipChannelFormatDesc", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !115, i64 16}
!121 = !{!"_ZTS15hipArray_Format", !6, i64 0}
!122 = !{!117, !5, i64 72}
!123 = !{!117, !11, i64 48}
!124 = !{!117, !62, i64 56}
!125 = !{!117, !62, i64 60}
!126 = !{!117, !62, i64 64}
