; ModuleID = 'mrigridding.cpp'
source_filename = "mrigridding.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
%struct.parameters = type { i32, [3 x i32], [3 x i32], [3 x float], [3 x i32], float, float, i32, i32 }
%struct.ReconstructionSample = type { float, float, float, float, float, float }
%struct.cmplx = type { float, float }
%struct.hipDeviceProp_t = type { [256 x i8], i64, i64, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.hipDeviceArch_t, i32, i32, i32, i32, i64, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32*, i32*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hipDeviceArch_t = type { i32 }

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
@.str.23 = private unnamed_addr constant [26 x i8] c"aquisition.numsamples=%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"aquisition.kmax=%f %f %f\0A\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"aquisition.matrixSize=%d %d %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"reconstruction.matrixSize=%d %d %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"gridding.matrixSize=%d %d %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"gridding.oversampling=%f\0A\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"kernel.width=%f\0A\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"kernel.useLUT=%d\0A\00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"  Total amount of GPU memory: %llu bytes\0A\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"  Number of samples = %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"  Grid Size = %dx%dx%d\0A\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"  Input Matrix Size = %dx%dx%d\0A\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"  Recon Matrix Size = %dx%dx%d\0A\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"  Kernel Width = %f\0A\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"  KMax = %.2f %.2f %.2f\0A\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"  Oversampling = %f\0A\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"  GPU Binsize = %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"  Use LUT = %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c".data\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"ERROR: Could not open %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"CUDA error: %s, line %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"delete_argument\0A\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"next_argument\0A\00", align 1
@str = private unnamed_addr constant [52 x i8] c"  Need at least 3GB of GPU memory for large dataset\00", align 1
@str.62 = private unnamed_addr constant [20 x i8] c"\0AReading parameters\00", align 1
@str.63 = private unnamed_addr constant [30 x i8] c"Reading input data from files\00", align 1
@str.64 = private unnamed_addr constant [21 x i8] c"Running gold version\00", align 1
@str.68 = private unnamed_addr constant [49 x i8] c"ERROR: Unable to allocate memory for output data\00", align 1
@str.69 = private unnamed_addr constant [25 x i8] c"Generating Look-Up Table\00", align 1
@str.70 = private unnamed_addr constant [32 x i8] c"ERROR: Could not open data file\00", align 1
@str.71 = private unnamed_addr constant [48 x i8] c"ERROR: Unable to allocate memory for input data\00", align 1

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
  %32 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %31) #26
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
  %47 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %46) #26
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
  %59 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %58) #26
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
  %112 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %111) #26
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local float @_Z16kernel_value_CPUf(float %0) local_unnamed_addr #9 {
  %2 = fmul contract float %0, %0
  %3 = fmul contract float %2, 0x3B39752860000000
  %4 = fadd contract float %3, 0x3BE67934C0000000
  %5 = fmul contract float %2, %4
  %6 = fadd contract float %5, 0x3C8BA34A20000000
  %7 = fmul contract float %2, %6
  %8 = fadd contract float %7, 0x3D287ED380000000
  %9 = fmul contract float %2, %8
  %10 = fadd contract float %9, 0x3DC08B3AA0000000
  %11 = fmul contract float %2, %10
  %12 = fadd contract float %11, 0x3E51343900000000
  %13 = fmul contract float %2, %12
  %14 = fadd contract float %13, 0x3EDB777D00000000
  %15 = fmul contract float %2, %14
  %16 = fadd contract float %15, 0x3F6098A4A0000000
  %17 = fmul contract float %2, %16
  %18 = fadd contract float %17, 0x3FDDA30AC0000000
  %19 = fmul contract float %2, %18
  %20 = fadd contract float %19, 0x4052DBC240000000
  %21 = fmul contract float %2, %20
  %22 = fadd contract float %21, 0x40C039F680000000
  %23 = fmul contract float %2, %22
  %24 = fadd contract float %23, 0x4121721A40000000
  %25 = fmul contract float %2, %24
  %26 = fadd contract float %25, 0x4174A39560000000
  %27 = fmul contract float %2, %26
  %28 = fadd contract float %27, 0x41B541F680000000
  %29 = fmul contract float %2, %28
  %30 = fadd contract float %29, 0x41D57701A0000000
  %31 = fadd contract float %2, 0xC0A808F040000000
  %32 = fmul contract float %2, %31
  %33 = fadd contract float %32, 0x414A8593A0000000
  %34 = fmul contract float %2, %33
  %35 = fadd contract float %34, 0xC1D57701A0000000
  %36 = fneg contract float %30
  %37 = fdiv contract float %36, %35
  ret float %37
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @calculateLUT(float %0, float %1, float** nocapture %2, i32* nocapture writeonly %3) local_unnamed_addr #8 {
  %5 = fmul contract float %1, %1
  %6 = fmul contract float %5, 2.500000e-01
  %7 = fcmp contract ogt float %1, 0.000000e+00
  br i1 %7, label %8, label %71

8:                                                ; preds = %4
  %9 = fmul contract float %1, 1.000000e+04
  %10 = fptoui float %9 to i32
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 2
  %13 = tail call noalias align 16 i8* @malloc(i64 %12) #25
  %14 = bitcast float** %2 to i8**
  store i8* %13, i8** %14, align 8, !tbaa !9
  %15 = uitofp i32 %10 to float
  %16 = fpext float %0 to double
  %17 = icmp eq i32 %10, 0
  br i1 %17, label %70, label %18

18:                                               ; preds = %8, %18
  %19 = phi i64 [ %68, %18 ], [ 0, %8 ]
  %20 = trunc i64 %19 to i32
  %21 = uitofp i32 %20 to float
  %22 = fdiv contract float %21, %15
  %23 = fmul contract float %6, %22
  %24 = fdiv contract float %23, %6
  %25 = fpext float %24 to double
  %26 = fsub contract double 1.000000e+00, %25
  %27 = tail call contract double @sqrt(double %26) #25
  %28 = fmul contract double %27, %16
  %29 = fptrunc double %28 to float
  %30 = fmul contract float %29, %29
  %31 = fmul contract float %30, 0x3B39752860000000
  %32 = fadd contract float %31, 0x3BE67934C0000000
  %33 = fmul contract float %30, %32
  %34 = fadd contract float %33, 0x3C8BA34A20000000
  %35 = fmul contract float %30, %34
  %36 = fadd contract float %35, 0x3D287ED380000000
  %37 = fmul contract float %30, %36
  %38 = fadd contract float %37, 0x3DC08B3AA0000000
  %39 = fmul contract float %30, %38
  %40 = fadd contract float %39, 0x3E51343900000000
  %41 = fmul contract float %30, %40
  %42 = fadd contract float %41, 0x3EDB777D00000000
  %43 = fmul contract float %30, %42
  %44 = fadd contract float %43, 0x3F6098A4A0000000
  %45 = fmul contract float %30, %44
  %46 = fadd contract float %45, 0x3FDDA30AC0000000
  %47 = fmul contract float %30, %46
  %48 = fadd contract float %47, 0x4052DBC240000000
  %49 = fmul contract float %30, %48
  %50 = fadd contract float %49, 0x40C039F680000000
  %51 = fmul contract float %30, %50
  %52 = fadd contract float %51, 0x4121721A40000000
  %53 = fmul contract float %30, %52
  %54 = fadd contract float %53, 0x4174A39560000000
  %55 = fmul contract float %30, %54
  %56 = fadd contract float %55, 0x41B541F680000000
  %57 = fmul contract float %30, %56
  %58 = fadd contract float %57, 0x41D57701A0000000
  %59 = fadd contract float %30, 0xC0A808F040000000
  %60 = fmul contract float %30, %59
  %61 = fadd contract float %60, 0x414A8593A0000000
  %62 = fmul contract float %30, %61
  %63 = fadd contract float %62, 0xC1D57701A0000000
  %64 = fneg contract float %58
  %65 = fdiv contract float %64, %63
  %66 = load float*, float** %2, align 8, !tbaa !9
  %67 = getelementptr inbounds float, float* %66, i64 %19
  store float %65, float* %67, align 4, !tbaa !61
  %68 = add nuw nsw i64 %19, 1
  %69 = icmp eq i64 %68, %11
  br i1 %69, label %70, label %18, !llvm.loop !73

70:                                               ; preds = %18, %8
  store i32 %10, i32* %3, align 4, !tbaa !10
  br label %71

71:                                               ; preds = %70, %4
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local double @sqrt(double) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local float @_Z16kernel_value_LUTfPfif(float %0, float* nocapture readonly %1, i32 %2, float %3) local_unnamed_addr #6 {
  %5 = sitofp i32 %2 to float
  %6 = fmul contract float %5, %0
  %7 = fmul contract float %6, %3
  %8 = fptoui float %7 to i32
  %9 = uitofp i32 %8 to float
  %10 = fdiv contract float %9, %3
  %11 = zext i32 %8 to i64
  %12 = getelementptr inbounds float, float* %1, i64 %11
  %13 = load float, float* %12, align 4, !tbaa !61
  %14 = fsub contract float %6, %10
  %15 = add i32 %8, 1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds float, float* %1, i64 %16
  %18 = load float, float* %17, align 4, !tbaa !61
  %19 = fsub contract float %18, %13
  %20 = fmul contract float %14, %19
  %21 = fdiv contract float %20, %3
  %22 = fadd contract float %13, %21
  ret float %22
}

; Function Attrs: mustprogress nofree noreturn nounwind uwtable
define dso_local i32 @gridding_Gold(i32 %0, %struct.parameters* nocapture readonly byval(%struct.parameters) align 8 %1, %struct.ReconstructionSample* nocapture readonly %2, float* nocapture readonly %3, i32 %4, %struct.cmplx* nocapture %5, float* nocapture %6) local_unnamed_addr #15 {
  %8 = alloca [100 x float], align 16
  %9 = alloca [100 x float], align 16
  %10 = alloca [100 x float], align 16
  %11 = bitcast [100 x float]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %11) #25
  %12 = bitcast [100 x float]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %12) #25
  %13 = bitcast [100 x float]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %13) #25
  %14 = getelementptr inbounds %struct.parameters, %struct.parameters* %1, i64 0, i32 4, i64 0
  %15 = load i32, i32* %14, align 8, !tbaa !10
  %16 = getelementptr inbounds %struct.parameters, %struct.parameters* %1, i64 0, i32 4, i64 1
  %17 = load i32, i32* %16, align 4, !tbaa !10
  %18 = getelementptr inbounds %struct.parameters, %struct.parameters* %1, i64 0, i32 4, i64 2
  %19 = load i32, i32* %18, align 8, !tbaa !10
  %20 = getelementptr inbounds %struct.parameters, %struct.parameters* %1, i64 0, i32 6
  %21 = load float, float* %20, align 8, !tbaa !74
  %22 = fmul contract float %21, 5.000000e-01
  %23 = fmul contract float %22, %22
  %24 = fdiv contract float 1.000000e+00, %23
  %25 = fmul contract float %21, 4.000000e+00
  %26 = fmul contract float %21, %25
  %27 = getelementptr inbounds %struct.parameters, %struct.parameters* %1, i64 0, i32 5
  %28 = load float, float* %27, align 4, !tbaa !76
  %29 = fmul contract float %28, %28
  %30 = fdiv contract float %26, %29
  %31 = fpext float %30 to double
  %32 = fpext float %28 to double
  %33 = fadd contract double %32, -5.000000e-01
  %34 = fmul contract double %33, %31
  %35 = fmul contract double %33, %34
  %36 = fadd contract double %35, -8.000000e-01
  %37 = tail call contract double @sqrt(double %36) #25
  %38 = fmul contract double %37, 0x400921FB54442EEA
  %39 = fptrunc double %38 to float
  %40 = uitofp i32 %15 to double
  %41 = fadd contract double %40, -1.000000e+00
  %42 = uitofp i32 %17 to double
  %43 = fadd contract double %42, -1.000000e+00
  %44 = uitofp i32 %19 to double
  %45 = fadd contract double %44, -1.000000e+00
  %46 = getelementptr inbounds [100 x float], [100 x float]* %10, i64 0, i64 0
  %47 = getelementptr inbounds [100 x float], [100 x float]* %8, i64 0, i64 0
  %48 = getelementptr inbounds [100 x float], [100 x float]* %9, i64 0, i64 0
  %49 = mul i32 %17, %15
  %50 = getelementptr inbounds %struct.parameters, %struct.parameters* %1, i64 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 0
  %53 = sitofp i32 %4 to float
  %54 = fpext float %39 to double
  %55 = zext i32 %0 to i64
  br label %56

56:                                               ; preds = %534, %7
  %57 = phi i64 [ %535, %534 ], [ 0, %7 ]
  %58 = icmp ult i64 %57, %55
  tail call void @llvm.assume(i1 %58)
  %59 = getelementptr inbounds %struct.ReconstructionSample, %struct.ReconstructionSample* %2, i64 %57, i32 0
  %60 = load float, float* %59, align 4, !tbaa.struct !77
  %61 = getelementptr inbounds %struct.ReconstructionSample, %struct.ReconstructionSample* %2, i64 %57, i32 1
  %62 = load float, float* %61, align 4, !tbaa.struct !78
  %63 = getelementptr inbounds %struct.ReconstructionSample, %struct.ReconstructionSample* %2, i64 %57, i32 2
  %64 = load float, float* %63, align 4, !tbaa.struct !79
  %65 = getelementptr inbounds %struct.ReconstructionSample, %struct.ReconstructionSample* %2, i64 %57, i32 3
  %66 = load float, float* %65, align 4, !tbaa.struct !80
  %67 = getelementptr inbounds %struct.ReconstructionSample, %struct.ReconstructionSample* %2, i64 %57, i32 4
  %68 = load float, float* %67, align 4, !tbaa.struct !81
  %69 = getelementptr inbounds %struct.ReconstructionSample, %struct.ReconstructionSample* %2, i64 %57, i32 5
  %70 = load float, float* %69, align 4, !tbaa.struct !82
  %71 = fsub contract float %64, %22
  %72 = fpext float %71 to double
  %73 = tail call contract double @llvm.maxnum.f64(double %72, double 0.000000e+00)
  %74 = fptoui double %73 to i32
  %75 = fadd contract float %22, %64
  %76 = fpext float %75 to double
  %77 = tail call contract double @llvm.minnum.f64(double %41, double %76)
  %78 = fptoui double %77 to i32
  %79 = fsub contract float %66, %22
  %80 = fpext float %79 to double
  %81 = tail call contract double @llvm.maxnum.f64(double %80, double 0.000000e+00)
  %82 = fptoui double %81 to i32
  %83 = fadd contract float %22, %66
  %84 = fpext float %83 to double
  %85 = tail call contract double @llvm.minnum.f64(double %43, double %84)
  %86 = fptoui double %85 to i32
  %87 = fsub contract float %68, %22
  %88 = fpext float %87 to double
  %89 = tail call contract double @llvm.maxnum.f64(double %88, double 0.000000e+00)
  %90 = fptoui double %89 to i32
  %91 = fadd contract float %22, %68
  %92 = fpext float %91 to double
  %93 = tail call contract double @llvm.minnum.f64(double %45, double %92)
  %94 = fptoui double %93 to i32
  %95 = fcmp contract une float %60, 0.000000e+00
  %96 = fcmp contract une float %62, 0.000000e+00
  %97 = select i1 %95, i1 true, i1 %96
  %98 = fcmp contract une float %70, 0.000000e+00
  %99 = select i1 %97, i1 %98, i1 false
  br i1 %99, label %100, label %534

100:                                              ; preds = %56
  %101 = icmp ult i32 %94, %90
  br i1 %101, label %192, label %102

102:                                              ; preds = %100
  %103 = add i32 %90, 1
  %104 = add nuw i32 %94, 1
  %105 = icmp ugt i32 %103, %104
  %106 = sub i32 %94, %90
  %107 = select i1 %105, i32 0, i32 %106
  %108 = zext i32 %107 to i64
  %109 = add nuw nsw i64 %108, 1
  %110 = icmp ult i32 %107, 7
  br i1 %110, label %180, label %111

111:                                              ; preds = %102
  %112 = and i64 %109, 8589934584
  %113 = trunc i64 %112 to i32
  %114 = add i32 %90, %113
  %115 = getelementptr [100 x float], [100 x float]* %10, i64 0, i64 %112
  %116 = insertelement <4 x i32> poison, i32 %90, i64 0
  %117 = shufflevector <4 x i32> %116, <4 x i32> poison, <4 x i32> zeroinitializer
  %118 = add <4 x i32> %117, <i32 0, i32 1, i32 2, i32 3>
  %119 = insertelement <4 x float> poison, float %68, i64 0
  %120 = shufflevector <4 x float> %119, <4 x float> poison, <4 x i32> zeroinitializer
  %121 = insertelement <4 x float> poison, float %68, i64 0
  %122 = shufflevector <4 x float> %121, <4 x float> poison, <4 x i32> zeroinitializer
  %123 = add nsw i64 %112, -8
  %124 = lshr exact i64 %123, 3
  %125 = add nuw nsw i64 %124, 1
  %126 = and i64 %125, 1
  %127 = icmp eq i64 %123, 0
  br i1 %127, label %162, label %128

128:                                              ; preds = %111
  %129 = and i64 %125, 4611686018427387902
  br label %130

130:                                              ; preds = %130, %128
  %131 = phi i64 [ 0, %128 ], [ %158, %130 ]
  %132 = phi <4 x i32> [ %118, %128 ], [ %159, %130 ]
  %133 = phi i64 [ 0, %128 ], [ %160, %130 ]
  %134 = add <4 x i32> %132, <i32 4, i32 4, i32 4, i32 4>
  %135 = getelementptr [100 x float], [100 x float]* %10, i64 0, i64 %131
  %136 = sitofp <4 x i32> %132 to <4 x float>
  %137 = sitofp <4 x i32> %134 to <4 x float>
  %138 = fsub contract <4 x float> %120, %136
  %139 = fsub contract <4 x float> %122, %137
  %140 = fmul contract <4 x float> %138, %138
  %141 = fmul contract <4 x float> %139, %139
  %142 = bitcast float* %135 to <4 x float>*
  store <4 x float> %140, <4 x float>* %142, align 16, !tbaa !61
  %143 = getelementptr float, float* %135, i64 4
  %144 = bitcast float* %143 to <4 x float>*
  store <4 x float> %141, <4 x float>* %144, align 16, !tbaa !61
  %145 = or i64 %131, 8
  %146 = add <4 x i32> %132, <i32 8, i32 8, i32 8, i32 8>
  %147 = add <4 x i32> %132, <i32 12, i32 12, i32 12, i32 12>
  %148 = getelementptr [100 x float], [100 x float]* %10, i64 0, i64 %145
  %149 = sitofp <4 x i32> %146 to <4 x float>
  %150 = sitofp <4 x i32> %147 to <4 x float>
  %151 = fsub contract <4 x float> %120, %149
  %152 = fsub contract <4 x float> %122, %150
  %153 = fmul contract <4 x float> %151, %151
  %154 = fmul contract <4 x float> %152, %152
  %155 = bitcast float* %148 to <4 x float>*
  store <4 x float> %153, <4 x float>* %155, align 16, !tbaa !61
  %156 = getelementptr float, float* %148, i64 4
  %157 = bitcast float* %156 to <4 x float>*
  store <4 x float> %154, <4 x float>* %157, align 16, !tbaa !61
  %158 = add nuw i64 %131, 16
  %159 = add <4 x i32> %132, <i32 16, i32 16, i32 16, i32 16>
  %160 = add i64 %133, 2
  %161 = icmp eq i64 %160, %129
  br i1 %161, label %162, label %130, !llvm.loop !83

162:                                              ; preds = %130, %111
  %163 = phi i64 [ 0, %111 ], [ %158, %130 ]
  %164 = phi <4 x i32> [ %118, %111 ], [ %159, %130 ]
  %165 = icmp eq i64 %126, 0
  br i1 %165, label %178, label %166

166:                                              ; preds = %162
  %167 = add <4 x i32> %164, <i32 4, i32 4, i32 4, i32 4>
  %168 = getelementptr [100 x float], [100 x float]* %10, i64 0, i64 %163
  %169 = sitofp <4 x i32> %164 to <4 x float>
  %170 = sitofp <4 x i32> %167 to <4 x float>
  %171 = fsub contract <4 x float> %120, %169
  %172 = fsub contract <4 x float> %122, %170
  %173 = fmul contract <4 x float> %171, %171
  %174 = fmul contract <4 x float> %172, %172
  %175 = bitcast float* %168 to <4 x float>*
  store <4 x float> %173, <4 x float>* %175, align 16, !tbaa !61
  %176 = getelementptr float, float* %168, i64 4
  %177 = bitcast float* %176 to <4 x float>*
  store <4 x float> %174, <4 x float>* %177, align 16, !tbaa !61
  br label %178

178:                                              ; preds = %162, %166
  %179 = icmp eq i64 %109, %112
  br i1 %179, label %192, label %180

180:                                              ; preds = %102, %178
  %181 = phi i32 [ %90, %102 ], [ %114, %178 ]
  %182 = phi float* [ %46, %102 ], [ %115, %178 ]
  br label %183

183:                                              ; preds = %180, %183
  %184 = phi i32 [ %189, %183 ], [ %181, %180 ]
  %185 = phi float* [ %190, %183 ], [ %182, %180 ]
  %186 = sitofp i32 %184 to float
  %187 = fsub contract float %68, %186
  %188 = fmul contract float %187, %187
  store float %188, float* %185, align 4, !tbaa !61
  %189 = add nsw i32 %184, 1
  %190 = getelementptr inbounds float, float* %185, i64 1
  %191 = icmp ugt i32 %189, %94
  br i1 %191, label %192, label %183, !llvm.loop !84

192:                                              ; preds = %183, %178, %100
  %193 = icmp ult i32 %78, %74
  br i1 %193, label %284, label %194

194:                                              ; preds = %192
  %195 = add i32 %74, 1
  %196 = add nuw i32 %78, 1
  %197 = icmp ugt i32 %195, %196
  %198 = sub i32 %78, %74
  %199 = select i1 %197, i32 0, i32 %198
  %200 = zext i32 %199 to i64
  %201 = add nuw nsw i64 %200, 1
  %202 = icmp ult i32 %199, 7
  br i1 %202, label %272, label %203

203:                                              ; preds = %194
  %204 = and i64 %201, 8589934584
  %205 = trunc i64 %204 to i32
  %206 = add i32 %74, %205
  %207 = getelementptr [100 x float], [100 x float]* %8, i64 0, i64 %204
  %208 = insertelement <4 x i32> poison, i32 %74, i64 0
  %209 = shufflevector <4 x i32> %208, <4 x i32> poison, <4 x i32> zeroinitializer
  %210 = add <4 x i32> %209, <i32 0, i32 1, i32 2, i32 3>
  %211 = insertelement <4 x float> poison, float %64, i64 0
  %212 = shufflevector <4 x float> %211, <4 x float> poison, <4 x i32> zeroinitializer
  %213 = insertelement <4 x float> poison, float %64, i64 0
  %214 = shufflevector <4 x float> %213, <4 x float> poison, <4 x i32> zeroinitializer
  %215 = add nsw i64 %204, -8
  %216 = lshr exact i64 %215, 3
  %217 = add nuw nsw i64 %216, 1
  %218 = and i64 %217, 1
  %219 = icmp eq i64 %215, 0
  br i1 %219, label %254, label %220

220:                                              ; preds = %203
  %221 = and i64 %217, 4611686018427387902
  br label %222

222:                                              ; preds = %222, %220
  %223 = phi i64 [ 0, %220 ], [ %250, %222 ]
  %224 = phi <4 x i32> [ %210, %220 ], [ %251, %222 ]
  %225 = phi i64 [ 0, %220 ], [ %252, %222 ]
  %226 = add <4 x i32> %224, <i32 4, i32 4, i32 4, i32 4>
  %227 = getelementptr [100 x float], [100 x float]* %8, i64 0, i64 %223
  %228 = sitofp <4 x i32> %224 to <4 x float>
  %229 = sitofp <4 x i32> %226 to <4 x float>
  %230 = fsub contract <4 x float> %212, %228
  %231 = fsub contract <4 x float> %214, %229
  %232 = fmul contract <4 x float> %230, %230
  %233 = fmul contract <4 x float> %231, %231
  %234 = bitcast float* %227 to <4 x float>*
  store <4 x float> %232, <4 x float>* %234, align 16, !tbaa !61
  %235 = getelementptr float, float* %227, i64 4
  %236 = bitcast float* %235 to <4 x float>*
  store <4 x float> %233, <4 x float>* %236, align 16, !tbaa !61
  %237 = or i64 %223, 8
  %238 = add <4 x i32> %224, <i32 8, i32 8, i32 8, i32 8>
  %239 = add <4 x i32> %224, <i32 12, i32 12, i32 12, i32 12>
  %240 = getelementptr [100 x float], [100 x float]* %8, i64 0, i64 %237
  %241 = sitofp <4 x i32> %238 to <4 x float>
  %242 = sitofp <4 x i32> %239 to <4 x float>
  %243 = fsub contract <4 x float> %212, %241
  %244 = fsub contract <4 x float> %214, %242
  %245 = fmul contract <4 x float> %243, %243
  %246 = fmul contract <4 x float> %244, %244
  %247 = bitcast float* %240 to <4 x float>*
  store <4 x float> %245, <4 x float>* %247, align 16, !tbaa !61
  %248 = getelementptr float, float* %240, i64 4
  %249 = bitcast float* %248 to <4 x float>*
  store <4 x float> %246, <4 x float>* %249, align 16, !tbaa !61
  %250 = add nuw i64 %223, 16
  %251 = add <4 x i32> %224, <i32 16, i32 16, i32 16, i32 16>
  %252 = add i64 %225, 2
  %253 = icmp eq i64 %252, %221
  br i1 %253, label %254, label %222, !llvm.loop !86

254:                                              ; preds = %222, %203
  %255 = phi i64 [ 0, %203 ], [ %250, %222 ]
  %256 = phi <4 x i32> [ %210, %203 ], [ %251, %222 ]
  %257 = icmp eq i64 %218, 0
  br i1 %257, label %270, label %258

258:                                              ; preds = %254
  %259 = add <4 x i32> %256, <i32 4, i32 4, i32 4, i32 4>
  %260 = getelementptr [100 x float], [100 x float]* %8, i64 0, i64 %255
  %261 = sitofp <4 x i32> %256 to <4 x float>
  %262 = sitofp <4 x i32> %259 to <4 x float>
  %263 = fsub contract <4 x float> %212, %261
  %264 = fsub contract <4 x float> %214, %262
  %265 = fmul contract <4 x float> %263, %263
  %266 = fmul contract <4 x float> %264, %264
  %267 = bitcast float* %260 to <4 x float>*
  store <4 x float> %265, <4 x float>* %267, align 16, !tbaa !61
  %268 = getelementptr float, float* %260, i64 4
  %269 = bitcast float* %268 to <4 x float>*
  store <4 x float> %266, <4 x float>* %269, align 16, !tbaa !61
  br label %270

270:                                              ; preds = %254, %258
  %271 = icmp eq i64 %201, %204
  br i1 %271, label %284, label %272

272:                                              ; preds = %194, %270
  %273 = phi i32 [ %74, %194 ], [ %206, %270 ]
  %274 = phi float* [ %47, %194 ], [ %207, %270 ]
  br label %275

275:                                              ; preds = %272, %275
  %276 = phi i32 [ %281, %275 ], [ %273, %272 ]
  %277 = phi float* [ %282, %275 ], [ %274, %272 ]
  %278 = sitofp i32 %276 to float
  %279 = fsub contract float %64, %278
  %280 = fmul contract float %279, %279
  store float %280, float* %277, align 4, !tbaa !61
  %281 = add nsw i32 %276, 1
  %282 = getelementptr inbounds float, float* %277, i64 1
  %283 = icmp ugt i32 %281, %78
  br i1 %283, label %284, label %275, !llvm.loop !87

284:                                              ; preds = %275, %270, %192
  %285 = icmp ult i32 %86, %82
  br i1 %285, label %534, label %286

286:                                              ; preds = %284
  %287 = add i32 %82, 1
  %288 = add nuw i32 %86, 1
  %289 = icmp ugt i32 %287, %288
  %290 = sub i32 %86, %82
  %291 = select i1 %289, i32 0, i32 %290
  %292 = zext i32 %291 to i64
  %293 = add nuw nsw i64 %292, 1
  %294 = icmp ult i32 %291, 7
  br i1 %294, label %364, label %295

295:                                              ; preds = %286
  %296 = and i64 %293, 8589934584
  %297 = trunc i64 %296 to i32
  %298 = add i32 %82, %297
  %299 = getelementptr [100 x float], [100 x float]* %9, i64 0, i64 %296
  %300 = insertelement <4 x i32> poison, i32 %82, i64 0
  %301 = shufflevector <4 x i32> %300, <4 x i32> poison, <4 x i32> zeroinitializer
  %302 = add <4 x i32> %301, <i32 0, i32 1, i32 2, i32 3>
  %303 = insertelement <4 x float> poison, float %66, i64 0
  %304 = shufflevector <4 x float> %303, <4 x float> poison, <4 x i32> zeroinitializer
  %305 = insertelement <4 x float> poison, float %66, i64 0
  %306 = shufflevector <4 x float> %305, <4 x float> poison, <4 x i32> zeroinitializer
  %307 = add nsw i64 %296, -8
  %308 = lshr exact i64 %307, 3
  %309 = add nuw nsw i64 %308, 1
  %310 = and i64 %309, 1
  %311 = icmp eq i64 %307, 0
  br i1 %311, label %346, label %312

312:                                              ; preds = %295
  %313 = and i64 %309, 4611686018427387902
  br label %314

314:                                              ; preds = %314, %312
  %315 = phi i64 [ 0, %312 ], [ %342, %314 ]
  %316 = phi <4 x i32> [ %302, %312 ], [ %343, %314 ]
  %317 = phi i64 [ 0, %312 ], [ %344, %314 ]
  %318 = add <4 x i32> %316, <i32 4, i32 4, i32 4, i32 4>
  %319 = getelementptr [100 x float], [100 x float]* %9, i64 0, i64 %315
  %320 = sitofp <4 x i32> %316 to <4 x float>
  %321 = sitofp <4 x i32> %318 to <4 x float>
  %322 = fsub contract <4 x float> %304, %320
  %323 = fsub contract <4 x float> %306, %321
  %324 = fmul contract <4 x float> %322, %322
  %325 = fmul contract <4 x float> %323, %323
  %326 = bitcast float* %319 to <4 x float>*
  store <4 x float> %324, <4 x float>* %326, align 16, !tbaa !61
  %327 = getelementptr float, float* %319, i64 4
  %328 = bitcast float* %327 to <4 x float>*
  store <4 x float> %325, <4 x float>* %328, align 16, !tbaa !61
  %329 = or i64 %315, 8
  %330 = add <4 x i32> %316, <i32 8, i32 8, i32 8, i32 8>
  %331 = add <4 x i32> %316, <i32 12, i32 12, i32 12, i32 12>
  %332 = getelementptr [100 x float], [100 x float]* %9, i64 0, i64 %329
  %333 = sitofp <4 x i32> %330 to <4 x float>
  %334 = sitofp <4 x i32> %331 to <4 x float>
  %335 = fsub contract <4 x float> %304, %333
  %336 = fsub contract <4 x float> %306, %334
  %337 = fmul contract <4 x float> %335, %335
  %338 = fmul contract <4 x float> %336, %336
  %339 = bitcast float* %332 to <4 x float>*
  store <4 x float> %337, <4 x float>* %339, align 16, !tbaa !61
  %340 = getelementptr float, float* %332, i64 4
  %341 = bitcast float* %340 to <4 x float>*
  store <4 x float> %338, <4 x float>* %341, align 16, !tbaa !61
  %342 = add nuw i64 %315, 16
  %343 = add <4 x i32> %316, <i32 16, i32 16, i32 16, i32 16>
  %344 = add i64 %317, 2
  %345 = icmp eq i64 %344, %313
  br i1 %345, label %346, label %314, !llvm.loop !88

346:                                              ; preds = %314, %295
  %347 = phi i64 [ 0, %295 ], [ %342, %314 ]
  %348 = phi <4 x i32> [ %302, %295 ], [ %343, %314 ]
  %349 = icmp eq i64 %310, 0
  br i1 %349, label %362, label %350

350:                                              ; preds = %346
  %351 = add <4 x i32> %348, <i32 4, i32 4, i32 4, i32 4>
  %352 = getelementptr [100 x float], [100 x float]* %9, i64 0, i64 %347
  %353 = sitofp <4 x i32> %348 to <4 x float>
  %354 = sitofp <4 x i32> %351 to <4 x float>
  %355 = fsub contract <4 x float> %304, %353
  %356 = fsub contract <4 x float> %306, %354
  %357 = fmul contract <4 x float> %355, %355
  %358 = fmul contract <4 x float> %356, %356
  %359 = bitcast float* %352 to <4 x float>*
  store <4 x float> %357, <4 x float>* %359, align 16, !tbaa !61
  %360 = getelementptr float, float* %352, i64 4
  %361 = bitcast float* %360 to <4 x float>*
  store <4 x float> %358, <4 x float>* %361, align 16, !tbaa !61
  br label %362

362:                                              ; preds = %346, %350
  %363 = icmp eq i64 %293, %296
  br i1 %363, label %376, label %364

364:                                              ; preds = %286, %362
  %365 = phi i32 [ %82, %286 ], [ %298, %362 ]
  %366 = phi float* [ %48, %286 ], [ %299, %362 ]
  br label %367

367:                                              ; preds = %364, %367
  %368 = phi i32 [ %373, %367 ], [ %365, %364 ]
  %369 = phi float* [ %374, %367 ], [ %366, %364 ]
  %370 = sitofp i32 %368 to float
  %371 = fsub contract float %66, %370
  %372 = fmul contract float %371, %371
  store float %372, float* %369, align 4, !tbaa !61
  %373 = add nsw i32 %368, 1
  %374 = getelementptr inbounds float, float* %369, i64 1
  %375 = icmp ugt i32 %373, %86
  br i1 %375, label %376, label %367, !llvm.loop !89

376:                                              ; preds = %367, %362
  %377 = add i32 %82, -1
  %378 = mul i32 %377, %15
  %379 = select i1 %101, i1 true, i1 %285
  %380 = select i1 %379, i1 true, i1 %193
  br i1 %380, label %534, label %381

381:                                              ; preds = %376
  %382 = add i32 %90, -1
  %383 = mul i32 %49, %382
  br label %384

384:                                              ; preds = %381, %530
  %385 = phi i32 [ %531, %530 ], [ %90, %381 ]
  %386 = phi i32 [ %388, %530 ], [ %383, %381 ]
  %387 = phi float* [ %532, %530 ], [ %46, %381 ]
  %388 = add i32 %386, %49
  %389 = load float, float* %387, align 4, !tbaa !61
  %390 = fcmp contract olt float %389, %23
  br i1 %390, label %391, label %530

391:                                              ; preds = %384
  br i1 %52, label %392, label %475

392:                                              ; preds = %391, %405
  %393 = phi float [ %407, %405 ], [ %389, %391 ]
  %394 = phi i32 [ %403, %405 ], [ %82, %391 ]
  %395 = phi i32 [ %397, %405 ], [ %378, %391 ]
  %396 = phi float* [ %406, %405 ], [ %48, %391 ]
  %397 = add i32 %395, %15
  %398 = load float, float* %396, align 4, !tbaa !61
  %399 = fadd contract float %393, %398
  %400 = add i32 %397, %388
  %401 = fcmp contract olt float %399, %23
  br i1 %401, label %408, label %402

402:                                              ; preds = %471, %392
  %403 = add nsw i32 %394, 1
  %404 = icmp ugt i32 %403, %86
  br i1 %404, label %530, label %405, !llvm.loop !90

405:                                              ; preds = %402
  %406 = getelementptr inbounds float, float* %396, i64 1
  %407 = load float, float* %387, align 4, !tbaa !61
  br label %392

408:                                              ; preds = %392, %471
  %409 = phi i32 [ %472, %471 ], [ %74, %392 ]
  %410 = phi float* [ %473, %471 ], [ %47, %392 ]
  %411 = load float, float* %410, align 4, !tbaa !61
  %412 = fadd contract float %399, %411
  %413 = fcmp contract olt float %412, %23
  br i1 %413, label %414, label %471

414:                                              ; preds = %408
  %415 = add i32 %400, %409
  %416 = fmul contract float %24, %412
  %417 = fpext float %416 to double
  %418 = fsub contract double 1.000000e+00, %417
  %419 = tail call contract double @sqrt(double %418) #25
  %420 = fmul contract double %419, %54
  %421 = fptrunc double %420 to float
  %422 = fmul contract float %421, %421
  %423 = fmul contract float %422, 0x3B39752860000000
  %424 = fadd contract float %423, 0x3BE67934C0000000
  %425 = fmul contract float %422, %424
  %426 = fadd contract float %425, 0x3C8BA34A20000000
  %427 = fmul contract float %422, %426
  %428 = fadd contract float %427, 0x3D287ED380000000
  %429 = fmul contract float %422, %428
  %430 = fadd contract float %429, 0x3DC08B3AA0000000
  %431 = fmul contract float %422, %430
  %432 = fadd contract float %431, 0x3E51343900000000
  %433 = fmul contract float %422, %432
  %434 = fadd contract float %433, 0x3EDB777D00000000
  %435 = fmul contract float %422, %434
  %436 = fadd contract float %435, 0x3F6098A4A0000000
  %437 = fmul contract float %422, %436
  %438 = fadd contract float %437, 0x3FDDA30AC0000000
  %439 = fmul contract float %422, %438
  %440 = fadd contract float %439, 0x4052DBC240000000
  %441 = fmul contract float %422, %440
  %442 = fadd contract float %441, 0x40C039F680000000
  %443 = fmul contract float %422, %442
  %444 = fadd contract float %443, 0x4121721A40000000
  %445 = fmul contract float %422, %444
  %446 = fadd contract float %445, 0x4174A39560000000
  %447 = fmul contract float %422, %446
  %448 = fadd contract float %447, 0x41B541F680000000
  %449 = fmul contract float %422, %448
  %450 = fadd contract float %449, 0x41D57701A0000000
  %451 = fadd contract float %422, 0xC0A808F040000000
  %452 = fmul contract float %422, %451
  %453 = fadd contract float %452, 0x414A8593A0000000
  %454 = fmul contract float %422, %453
  %455 = fadd contract float %454, 0xC1D57701A0000000
  %456 = fneg contract float %450
  %457 = fdiv contract float %456, %455
  %458 = fmul contract float %70, %457
  %459 = fmul contract float %60, %458
  %460 = zext i32 %415 to i64
  %461 = getelementptr inbounds %struct.cmplx, %struct.cmplx* %5, i64 %460, i32 0
  %462 = load float, float* %461, align 4, !tbaa !91
  %463 = fadd contract float %462, %459
  store float %463, float* %461, align 4, !tbaa !91
  %464 = fmul contract float %62, %458
  %465 = getelementptr inbounds %struct.cmplx, %struct.cmplx* %5, i64 %460, i32 1
  %466 = load float, float* %465, align 4, !tbaa !93
  %467 = fadd contract float %464, %466
  store float %467, float* %465, align 4, !tbaa !93
  %468 = getelementptr inbounds float, float* %6, i64 %460
  %469 = load float, float* %468, align 4, !tbaa !61
  %470 = fadd contract float %469, 1.000000e+00
  store float %470, float* %468, align 4, !tbaa !61
  br label %471

471:                                              ; preds = %414, %408
  %472 = add nsw i32 %409, 1
  %473 = getelementptr inbounds float, float* %410, i64 1
  %474 = icmp ugt i32 %472, %78
  br i1 %474, label %402, label %408, !llvm.loop !94

475:                                              ; preds = %391, %526
  %476 = phi i32 [ %527, %526 ], [ %82, %391 ]
  %477 = phi i32 [ %479, %526 ], [ %378, %391 ]
  %478 = phi float* [ %528, %526 ], [ %48, %391 ]
  %479 = add i32 %477, %15
  %480 = load float, float* %478, align 4, !tbaa !61
  %481 = fadd contract float %389, %480
  %482 = add i32 %479, %388
  %483 = fcmp contract olt float %481, %23
  br i1 %483, label %484, label %526

484:                                              ; preds = %475, %522
  %485 = phi i32 [ %523, %522 ], [ %74, %475 ]
  %486 = phi float* [ %524, %522 ], [ %47, %475 ]
  %487 = load float, float* %486, align 4, !tbaa !61
  %488 = fadd contract float %481, %487
  %489 = fcmp contract olt float %488, %23
  br i1 %489, label %490, label %522

490:                                              ; preds = %484
  %491 = add i32 %482, %485
  %492 = fmul contract float %488, %53
  %493 = fmul contract float %24, %492
  %494 = fptoui float %493 to i32
  %495 = uitofp i32 %494 to float
  %496 = fdiv contract float %495, %24
  %497 = zext i32 %494 to i64
  %498 = getelementptr inbounds float, float* %3, i64 %497
  %499 = load float, float* %498, align 4, !tbaa !61
  %500 = fsub contract float %492, %496
  %501 = add i32 %494, 1
  %502 = zext i32 %501 to i64
  %503 = getelementptr inbounds float, float* %3, i64 %502
  %504 = load float, float* %503, align 4, !tbaa !61
  %505 = fsub contract float %504, %499
  %506 = fmul contract float %500, %505
  %507 = fdiv contract float %506, %24
  %508 = fadd contract float %499, %507
  %509 = fmul contract float %70, %508
  %510 = fmul contract float %60, %509
  %511 = zext i32 %491 to i64
  %512 = getelementptr inbounds %struct.cmplx, %struct.cmplx* %5, i64 %511, i32 0
  %513 = load float, float* %512, align 4, !tbaa !91
  %514 = fadd contract float %513, %510
  store float %514, float* %512, align 4, !tbaa !91
  %515 = fmul contract float %62, %509
  %516 = getelementptr inbounds %struct.cmplx, %struct.cmplx* %5, i64 %511, i32 1
  %517 = load float, float* %516, align 4, !tbaa !93
  %518 = fadd contract float %515, %517
  store float %518, float* %516, align 4, !tbaa !93
  %519 = getelementptr inbounds float, float* %6, i64 %511
  %520 = load float, float* %519, align 4, !tbaa !61
  %521 = fadd contract float %520, 1.000000e+00
  store float %521, float* %519, align 4, !tbaa !61
  br label %522

522:                                              ; preds = %484, %490
  %523 = add nsw i32 %485, 1
  %524 = getelementptr inbounds float, float* %486, i64 1
  %525 = icmp ugt i32 %523, %78
  br i1 %525, label %526, label %484, !llvm.loop !94

526:                                              ; preds = %522, %475
  %527 = add nsw i32 %476, 1
  %528 = getelementptr inbounds float, float* %478, i64 1
  %529 = icmp ugt i32 %527, %86
  br i1 %529, label %530, label %475, !llvm.loop !90

530:                                              ; preds = %526, %402, %384
  %531 = add nsw i32 %385, 1
  %532 = getelementptr inbounds float, float* %387, i64 1
  %533 = icmp ugt i32 %531, %94
  br i1 %533, label %534, label %384, !llvm.loop !95

534:                                              ; preds = %530, %376, %284, %56
  %535 = add nuw nsw i64 %57, 1
  br label %56, !llvm.loop !96
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: mustprogress uwtable
define dso_local void @_Z13setParametersP8_IO_FILEP10parameters(%struct._IO_FILE* nocapture %0, %struct.parameters* %1) local_unnamed_addr #11 {
  %3 = alloca %struct.hipDeviceProp_t, align 8
  %4 = getelementptr inbounds %struct.parameters, %struct.parameters* %1, i64 0, i32 0
  %5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0), i32* %4)
  %6 = getelementptr inbounds %struct.parameters, %struct.parameters* %1, i64 0, i32 3, i64 0
  %7 = getelementptr inbounds %struct.parameters, %struct.parameters* %1, i64 0, i32 3, i64 1
  %8 = getelementptr inbounds %struct.parameters, %struct.parameters* %1, i64 0, i32 3, i64 2
  %9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0), float* nonnull %6, float* nonnull %7, float* nonnull %8)
  %10 = getelementptr inbounds %struct.parameters, %struct.parameters* %1, i64 0, i32 1, i64 0
  %11 = getelementptr inbounds %struct.parameters, %struct.parameters* %1, i64 0, i32 1, i64 1
  %12 = getelementptr inbounds %struct.parameters, %struct.parameters* %1, i64 0, i32 1, i64 2
  %13 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i32* nonnull %10, i32* nonnull %11, i32* nonnull %12)
  %14 = getelementptr inbounds %struct.parameters, %struct.parameters* %1, i64 0, i32 2, i64 0
  %15 = getelementptr inbounds %struct.parameters, %struct.parameters* %1, i64 0, i32 2, i64 1
  %16 = getelementptr inbounds %struct.parameters, %struct.parameters* %1, i64 0, i32 2, i64 2
  %17 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0), i32* nonnull %14, i32* nonnull %15, i32* nonnull %16)
  %18 = getelementptr inbounds %struct.parameters, %struct.parameters* %1, i64 0, i32 4, i64 0
  %19 = getelementptr inbounds %struct.parameters, %struct.parameters* %1, i64 0, i32 4, i64 1
  %20 = getelementptr inbounds %struct.parameters, %struct.parameters* %1, i64 0, i32 4, i64 2
  %21 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0), i32* nonnull %18, i32* nonnull %19, i32* nonnull %20)
  %22 = getelementptr inbounds %struct.parameters, %struct.parameters* %1, i64 0, i32 5
  %23 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0), float* nonnull %22)
  %24 = getelementptr inbounds %struct.parameters, %struct.parameters* %1, i64 0, i32 6
  %25 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), float* nonnull %24)
  %26 = getelementptr inbounds %struct.parameters, %struct.parameters* %1, i64 0, i32 8
  %27 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0), i32* nonnull %26)
  %28 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %3, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 792, i8* nonnull %28) #25
  %29 = call i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* nonnull %3, i32 0)
  %30 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %3, i64 0, i32 1
  %31 = load i64, i64* %30, align 8, !tbaa !97
  %32 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.31, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* %4, align 4, !tbaa !100
  %34 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %4, align 4, !tbaa !100
  %36 = icmp sgt i32 %35, 10000000
  %37 = load i64, i64* %30, align 8
  %38 = icmp ult i64 %37, 3145728000
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %42

40:                                               ; preds = %2
  %41 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([52 x i8], [52 x i8]* @str, i64 0, i64 0))
  call void @exit(i32 1) #29
  unreachable

42:                                               ; preds = %2
  %43 = load i32, i32* %18, align 4, !tbaa !10
  %44 = load i32, i32* %19, align 4, !tbaa !10
  %45 = load i32, i32* %20, align 4, !tbaa !10
  %46 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i64 0, i64 0), i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %10, align 4, !tbaa !10
  %48 = load i32, i32* %11, align 4, !tbaa !10
  %49 = load i32, i32* %12, align 4, !tbaa !10
  %50 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str.35, i64 0, i64 0), i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %14, align 4, !tbaa !10
  %52 = load i32, i32* %15, align 4, !tbaa !10
  %53 = load i32, i32* %16, align 4, !tbaa !10
  %54 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i64 0, i64 0), i32 %51, i32 %52, i32 %53)
  %55 = load float, float* %24, align 4, !tbaa !74
  %56 = fpext float %55 to double
  %57 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i64 0, i64 0), double %56)
  %58 = load float, float* %6, align 4, !tbaa !61
  %59 = fpext float %58 to double
  %60 = load float, float* %7, align 4, !tbaa !61
  %61 = fpext float %60 to double
  %62 = load float, float* %8, align 4, !tbaa !61
  %63 = fpext float %62 to double
  %64 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i64 0, i64 0), double %59, double %61, double %63)
  %65 = load float, float* %22, align 4, !tbaa !76
  %66 = fpext float %65 to double
  %67 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i64 0, i64 0), double %66)
  %68 = getelementptr inbounds %struct.parameters, %struct.parameters* %1, i64 0, i32 7
  %69 = load i32, i32* %68, align 4, !tbaa !101
  %70 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %26, align 4, !tbaa !102
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0)
  %74 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i64 0, i64 0), i8* %73)
  call void @llvm.lifetime.end.p0i8(i64 792, i8* nonnull %28) #25
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fscanf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #5

declare dso_local i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t*, i32) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local i32 @_Z14readSampleData10parametersP8_IO_FILEP20ReconstructionSample(%struct.parameters* nocapture readonly byval(%struct.parameters) align 8 %0, %struct._IO_FILE* nocapture %1, %struct.ReconstructionSample* nocapture %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.parameters, %struct.parameters* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !100
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %3
  %8 = zext i32 %5 to i64
  br label %9

9:                                                ; preds = %7, %13
  %10 = phi i64 [ 0, %7 ], [ %17, %13 ]
  %11 = tail call i32 @feof(%struct._IO_FILE* %1) #25
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ReconstructionSample, %struct.ReconstructionSample* %2, i64 %10
  %15 = bitcast %struct.ReconstructionSample* %14 to i8*
  %16 = tail call i64 @fread(i8* %15, i64 24, i64 1, %struct._IO_FILE* %1)
  %17 = add nuw nsw i64 %10, 1
  %18 = icmp eq i64 %17, %8
  br i1 %18, label %21, label %9, !llvm.loop !103

19:                                               ; preds = %9
  %20 = trunc i64 %10 to i32
  br label %21

21:                                               ; preds = %13, %19, %3
  %22 = phi i32 [ 0, %3 ], [ %20, %19 ], [ %5, %13 ]
  %23 = getelementptr inbounds %struct.parameters, %struct.parameters* %0, i64 0, i32 1, i64 0
  %24 = load i32, i32* %23, align 4, !tbaa !10
  %25 = sitofp i32 %24 to float
  %26 = getelementptr inbounds %struct.parameters, %struct.parameters* %0, i64 0, i32 2, i64 0
  %27 = load i32, i32* %26, align 8, !tbaa !10
  %28 = sitofp i32 %27 to float
  %29 = getelementptr inbounds %struct.parameters, %struct.parameters* %0, i64 0, i32 3, i64 0
  %30 = load float, float* %29, align 4, !tbaa !61
  %31 = fmul contract float %30, %28
  %32 = fdiv contract float %25, %31
  %33 = getelementptr inbounds %struct.parameters, %struct.parameters* %0, i64 0, i32 1, i64 1
  %34 = load i32, i32* %33, align 8, !tbaa !10
  %35 = sitofp i32 %34 to float
  %36 = getelementptr inbounds %struct.parameters, %struct.parameters* %0, i64 0, i32 2, i64 1
  %37 = load i32, i32* %36, align 4, !tbaa !10
  %38 = sitofp i32 %37 to float
  %39 = getelementptr inbounds %struct.parameters, %struct.parameters* %0, i64 0, i32 3, i64 1
  %40 = load float, float* %39, align 8, !tbaa !61
  %41 = fmul contract float %40, %38
  %42 = fdiv contract float %35, %41
  %43 = getelementptr inbounds %struct.parameters, %struct.parameters* %0, i64 0, i32 1, i64 2
  %44 = load i32, i32* %43, align 4, !tbaa !10
  %45 = sitofp i32 %44 to float
  %46 = getelementptr inbounds %struct.parameters, %struct.parameters* %0, i64 0, i32 2, i64 2
  %47 = load i32, i32* %46, align 8, !tbaa !10
  %48 = sitofp i32 %47 to float
  %49 = getelementptr inbounds %struct.parameters, %struct.parameters* %0, i64 0, i32 3, i64 2
  %50 = load float, float* %49, align 4, !tbaa !61
  %51 = fmul contract float %50, %48
  %52 = fdiv contract float %45, %51
  %53 = getelementptr inbounds %struct.parameters, %struct.parameters* %0, i64 0, i32 4, i64 0
  %54 = load i32, i32* %53, align 8, !tbaa !10
  %55 = getelementptr inbounds %struct.parameters, %struct.parameters* %0, i64 0, i32 4, i64 1
  %56 = load i32, i32* %55, align 4, !tbaa !10
  %57 = getelementptr inbounds %struct.parameters, %struct.parameters* %0, i64 0, i32 4, i64 2
  %58 = load i32, i32* %57, align 8, !tbaa !10
  %59 = add nsw i32 %54, -1
  %60 = sitofp i32 %59 to float
  %61 = fmul contract float %32, %60
  %62 = fmul contract float %61, 5.000000e-01
  %63 = fmul contract float %60, 5.000000e-01
  %64 = add nsw i32 %56, -1
  %65 = sitofp i32 %64 to float
  %66 = fmul contract float %42, %65
  %67 = fmul contract float %66, 5.000000e-01
  %68 = fmul contract float %65, 5.000000e-01
  %69 = add nsw i32 %58, -1
  %70 = sitofp i32 %69 to float
  %71 = fmul contract float %52, %70
  %72 = fmul contract float %71, 5.000000e-01
  %73 = fmul contract float %70, 5.000000e-01
  %74 = icmp eq i32 %22, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %21
  %76 = zext i32 %22 to i64
  br label %78

77:                                               ; preds = %78, %21
  ret i32 %22

78:                                               ; preds = %75, %78
  %79 = phi i64 [ 0, %75 ], [ %95, %78 ]
  %80 = getelementptr inbounds %struct.ReconstructionSample, %struct.ReconstructionSample* %2, i64 %79, i32 2
  %81 = load float, float* %80, align 4, !tbaa !104
  %82 = fmul contract float %62, %81
  %83 = fadd contract float %63, %82
  %84 = tail call contract float @llvm.floor.f32(float %83) #25
  store float %84, float* %80, align 4, !tbaa !104
  %85 = getelementptr inbounds %struct.ReconstructionSample, %struct.ReconstructionSample* %2, i64 %79, i32 3
  %86 = load float, float* %85, align 4, !tbaa !106
  %87 = fmul contract float %67, %86
  %88 = fadd contract float %68, %87
  %89 = tail call contract float @llvm.floor.f32(float %88) #25
  store float %89, float* %85, align 4, !tbaa !106
  %90 = getelementptr inbounds %struct.ReconstructionSample, %struct.ReconstructionSample* %2, i64 %79, i32 4
  %91 = load float, float* %90, align 4, !tbaa !107
  %92 = fmul contract float %72, %91
  %93 = fadd contract float %73, %92
  %94 = tail call contract float @llvm.floor.f32(float %93) #25
  store float %94, float* %90, align 4, !tbaa !107
  %95 = add nuw nsw i64 %79, 1
  %96 = icmp eq i64 %95, %76
  br i1 %96, label %77, label %78, !llvm.loop !108
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @feof(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fread(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress norecurse uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #18 {
  %3 = alloca %struct.timeval, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pb_TimerSet, align 8
  %6 = alloca [250 x i8], align 16
  %7 = alloca %struct.parameters, align 8
  %8 = alloca %struct.ReconstructionSample*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4, !tbaa !10
  %11 = bitcast %struct.pb_TimerSet* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 288, i8* nonnull %11) #25
  %12 = call %struct.pb_Parameters* @pb_ReadParameters(i32* nonnull %4, i8** %1)
  %13 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #25
  %14 = call i32 @gettimeofday(%struct.timeval* nonnull %3, %struct.timezone* null) #25
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 0
  %16 = load i64, i64* %15, align 8, !tbaa !35
  %17 = mul nsw i64 %16, 1000000
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 1
  %19 = load i64, i64* %18, align 8, !tbaa !38
  %20 = add nsw i64 %17, %19
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #25
  %21 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 3
  store i64 %20, i64* %21, align 8, !tbaa !41
  %22 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 0
  store i32 0, i32* %22, align 8, !tbaa !44
  %23 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 1
  store %struct.pb_async_time_marker_list* null, %struct.pb_async_time_marker_list** %23, align 8, !tbaa !45
  %24 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 0, i32 0
  store i32 0, i32* %24, align 8, !tbaa !30
  %25 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 0, i32 1
  store i64 0, i64* %25, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 5, i64 0
  %27 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 1, i32 0
  store i32 0, i32* %27, align 8, !tbaa !30
  %28 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 1, i32 1
  store i64 0, i64* %28, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 2, i32 0
  store i32 0, i32* %29, align 8, !tbaa !30
  %30 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 2, i32 1
  store i64 0, i64* %30, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 3, i32 0
  store i32 0, i32* %31, align 8, !tbaa !30
  %32 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 3, i32 1
  store i64 0, i64* %32, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 4, i32 0
  store i32 0, i32* %33, align 8, !tbaa !30
  %34 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 4, i32 1
  store i64 0, i64* %34, align 8, !tbaa !34
  %35 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 5, i32 0
  store i32 0, i32* %35, align 8, !tbaa !30
  %36 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 5, i32 1
  store i64 0, i64* %36, align 8, !tbaa !34
  %37 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 6, i32 0
  store i32 0, i32* %37, align 8, !tbaa !30
  %38 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 6, i32 1
  store i64 0, i64* %38, align 8, !tbaa !34
  %39 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 7, i32 0
  store i32 0, i32* %39, align 8, !tbaa !30
  %40 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 7, i32 1
  store i64 0, i64* %40, align 8, !tbaa !34
  %41 = bitcast %struct.pb_SubTimerList** %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %41, i8 0, i64 64, i1 false) #25
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 0)
  %42 = getelementptr inbounds [250 x i8], [250 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 250, i8* nonnull %42) #25
  %43 = bitcast %struct.parameters* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 68, i8* nonnull %43) #25
  %44 = getelementptr inbounds %struct.pb_Parameters, %struct.pb_Parameters* %12, i64 0, i32 1
  %45 = load i8**, i8*** %44, align 8, !tbaa !8
  %46 = load i8*, i8** %45, align 8, !tbaa !9
  %47 = call i8* @strcpy(i8* noundef nonnull %42, i8* noundef nonnull dereferenceable(1) %46) #25
  %48 = call i64 @strlen(i8* noundef nonnull %42)
  %49 = getelementptr [250 x i8], [250 x i8]* %6, i64 0, i64 %48
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %49, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i64 6, i1 false)
  %50 = load i8*, i8** %45, align 8, !tbaa !9
  %51 = call %struct._IO_FILE* @fopen(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0))
  %52 = icmp eq %struct._IO_FILE* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %2
  %54 = load i8*, i8** %45, align 8, !tbaa !9
  %55 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.46, i64 0, i64 0), i8* %54)
  call void @exit(i32 1) #29
  unreachable

56:                                               ; preds = %2
  %57 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @str.62, i64 0, i64 0))
  %58 = load i32, i32* %4, align 4, !tbaa !10
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8*, i8** %1, i64 1
  %62 = load i8*, i8** %61, align 8, !tbaa !9
  %63 = call i64 @strtol(i8* nocapture nonnull %62, i8** null, i32 10) #25
  %64 = trunc i64 %63 to i32
  br label %65

65:                                               ; preds = %56, %60
  %66 = phi i32 [ %64, %60 ], [ 128, %56 ]
  %67 = getelementptr inbounds %struct.parameters, %struct.parameters* %7, i64 0, i32 7
  store i32 %66, i32* %67, align 4
  call void @_Z13setParametersP8_IO_FILEP10parameters(%struct._IO_FILE* nonnull %51, %struct.parameters* nonnull %7)
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 1)
  %68 = bitcast %struct.ReconstructionSample** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %68) #25
  %69 = bitcast float** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %69) #25
  %70 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %70) #25
  %71 = bitcast %struct.ReconstructionSample** %8 to i8**
  %72 = getelementptr inbounds %struct.parameters, %struct.parameters* %7, i64 0, i32 0
  %73 = load i32, i32* %72, align 8, !tbaa !100
  %74 = sext i32 %73 to i64
  %75 = mul nsw i64 %74, 24
  %76 = call i32 @hipHostMalloc(i8** nonnull %71, i64 %75, i32 0)
  %77 = call i32 @hipGetLastError()
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %65
  %80 = call i8* @hipGetErrorString(i32 %77)
  %81 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.48, i64 0, i64 0), i8* %80, i32 392)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %70) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %69) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %68) #25
  call void @llvm.lifetime.end.p0i8(i64 68, i8* nonnull %43) #25
  call void @llvm.lifetime.end.p0i8(i64 250, i8* nonnull %42) #25
  call void @llvm.lifetime.end.p0i8(i64 288, i8* nonnull %11) #25
  ret i32 0

82:                                               ; preds = %65
  %83 = load %struct.ReconstructionSample*, %struct.ReconstructionSample** %8, align 8, !tbaa !9
  %84 = icmp eq %struct.ReconstructionSample* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([48 x i8], [48 x i8]* @str.71, i64 0, i64 0))
  call void @exit(i32 1) #29
  unreachable

87:                                               ; preds = %82
  %88 = call %struct._IO_FILE* @fopen(i8* nonnull %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0))
  %89 = icmp eq %struct._IO_FILE* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @str.70, i64 0, i64 0))
  call void @exit(i32 1) #29
  unreachable

92:                                               ; preds = %87
  %93 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @str.63, i64 0, i64 0))
  %94 = load %struct.ReconstructionSample*, %struct.ReconstructionSample** %8, align 8, !tbaa !9
  %95 = call i32 @_Z14readSampleData10parametersP8_IO_FILEP20ReconstructionSample(%struct.parameters* nonnull byval(%struct.parameters) align 8 %7, %struct._IO_FILE* nonnull %88, %struct.ReconstructionSample* %94)
  %96 = call i32 @fclose(%struct._IO_FILE* nonnull %88)
  %97 = getelementptr inbounds %struct.parameters, %struct.parameters* %7, i64 0, i32 8
  %98 = load i32, i32* %97, align 8, !tbaa !102
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %120, label %100

100:                                              ; preds = %92
  %101 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str.69, i64 0, i64 0))
  %102 = getelementptr inbounds %struct.parameters, %struct.parameters* %7, i64 0, i32 6
  %103 = load float, float* %102, align 8, !tbaa !74
  %104 = fmul contract float %103, 4.000000e+00
  %105 = fmul contract float %103, %104
  %106 = getelementptr inbounds %struct.parameters, %struct.parameters* %7, i64 0, i32 5
  %107 = load float, float* %106, align 4, !tbaa !76
  %108 = fmul contract float %107, %107
  %109 = fdiv contract float %105, %108
  %110 = fpext float %109 to double
  %111 = fpext float %107 to double
  %112 = fadd contract double %111, -5.000000e-01
  %113 = fmul contract double %112, %110
  %114 = fmul contract double %112, %113
  %115 = fadd contract double %114, -8.000000e-01
  %116 = call contract double @sqrt(double %115) #25
  %117 = fmul contract double %116, 0x400921FB54442EEA
  %118 = fptrunc double %117 to float
  %119 = load float, float* %102, align 8, !tbaa !74
  call void @calculateLUT(float %118, float %119, float** nonnull %9, i32* nonnull %10)
  br label %120

120:                                              ; preds = %100, %92
  %121 = getelementptr inbounds %struct.parameters, %struct.parameters* %7, i64 0, i32 4, i64 0
  %122 = load i32, i32* %121, align 8, !tbaa !10
  %123 = getelementptr inbounds %struct.parameters, %struct.parameters* %7, i64 0, i32 4, i64 1
  %124 = load i32, i32* %123, align 4, !tbaa !10
  %125 = mul nsw i32 %124, %122
  %126 = getelementptr inbounds %struct.parameters, %struct.parameters* %7, i64 0, i32 4, i64 2
  %127 = load i32, i32* %126, align 8, !tbaa !10
  %128 = mul nsw i32 %125, %127
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 0)
  %129 = sext i32 %128 to i64
  %130 = call noalias align 16 i8* @calloc(i64 %129, i64 8) #25
  %131 = call noalias align 16 i8* @calloc(i64 %129, i64 4) #25
  %132 = icmp eq i8* %131, null
  %133 = icmp eq i8* %130, null
  %134 = or i1 %133, %132
  br i1 %134, label %135, label %137

135:                                              ; preds = %120
  %136 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @str.68, i64 0, i64 0))
  call void @exit(i32 1) #29
  unreachable

137:                                              ; preds = %120
  %138 = bitcast i8* %131 to float*
  %139 = bitcast i8* %130 to %struct.cmplx*
  %140 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.64, i64 0, i64 0))
  %141 = load %struct.ReconstructionSample*, %struct.ReconstructionSample** %8, align 8, !tbaa !9
  %142 = load float*, float** %9, align 8, !tbaa !9
  %143 = load i32, i32* %10, align 4, !tbaa !10
  %144 = call i32 @gridding_Gold(i32 %95, %struct.parameters* nonnull byval(%struct.parameters) align 8 %7, %struct.ReconstructionSample* %141, float* %142, i32 %143, %struct.cmplx* %139, float* %138)
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare dso_local i8* @strcpy(i8* noalias returned writeonly, i8* noalias nocapture readonly) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare dso_local noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #5

declare dso_local i32 @hipGetLastError() local_unnamed_addr #12

declare dso_local i8* @hipGetErrorString(i32) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

declare dso_local i32 @hipEventCreate(%struct.ihipEvent_t**) local_unnamed_addr #12

declare dso_local i32 @hipEventRecord(%struct.ihipEvent_t*, %struct.ihipStream_t*) local_unnamed_addr #12

declare dso_local i32 @hipEventElapsedTime(float*, %struct.ihipEvent_t*, %struct.ihipEvent_t*) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.floor.f32(float) #20

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #21

declare dso_local i32 @hipHostMalloc(i8**, i64, i32) local_unnamed_addr #12

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.maxnum.f64(double, double) #23

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #24

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.minnum.f64(double, double) #23

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
attributes #14 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #17 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #21 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #23 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #24 = { nofree nounwind }
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
!73 = distinct !{!73, !14}
!74 = !{!75, !62, i64 56}
!75 = !{!"_ZTS10parameters", !11, i64 0, !6, i64 4, !6, i64 16, !6, i64 28, !6, i64 40, !62, i64 52, !62, i64 56, !11, i64 60, !11, i64 64}
!76 = !{!75, !62, i64 52}
!77 = !{i64 0, i64 4, !61, i64 4, i64 4, !61, i64 8, i64 4, !61, i64 12, i64 4, !61, i64 16, i64 4, !61, i64 20, i64 4, !61}
!78 = !{i64 0, i64 4, !61, i64 4, i64 4, !61, i64 8, i64 4, !61, i64 12, i64 4, !61, i64 16, i64 4, !61}
!79 = !{i64 0, i64 4, !61, i64 4, i64 4, !61, i64 8, i64 4, !61, i64 12, i64 4, !61}
!80 = !{i64 0, i64 4, !61, i64 4, i64 4, !61, i64 8, i64 4, !61}
!81 = !{i64 0, i64 4, !61, i64 4, i64 4, !61}
!82 = !{i64 0, i64 4, !61}
!83 = distinct !{!83, !14, !23}
!84 = distinct !{!84, !14, !85, !23}
!85 = !{!"llvm.loop.unroll.runtime.disable"}
!86 = distinct !{!86, !14, !23}
!87 = distinct !{!87, !14, !85, !23}
!88 = distinct !{!88, !14, !23}
!89 = distinct !{!89, !14, !85, !23}
!90 = distinct !{!90, !14}
!91 = !{!92, !62, i64 0}
!92 = !{!"_ZTS5cmplx", !62, i64 0, !62, i64 4}
!93 = !{!92, !62, i64 4}
!94 = distinct !{!94, !14}
!95 = distinct !{!95, !14}
!96 = distinct !{!96, !14}
!97 = !{!98, !37, i64 256}
!98 = !{!"_ZTS15hipDeviceProp_t", !6, i64 0, !37, i64 256, !37, i64 264, !11, i64 272, !11, i64 276, !11, i64 280, !6, i64 284, !6, i64 296, !11, i64 308, !11, i64 312, !11, i64 316, !37, i64 320, !11, i64 328, !11, i64 332, !11, i64 336, !11, i64 340, !11, i64 344, !11, i64 348, !11, i64 352, !99, i64 356, !11, i64 360, !11, i64 364, !11, i64 368, !11, i64 372, !37, i64 376, !11, i64 384, !11, i64 388, !11, i64 392, !6, i64 396, !11, i64 652, !11, i64 656, !11, i64 660, !11, i64 664, !11, i64 668, !6, i64 672, !6, i64 680, !5, i64 696, !5, i64 704, !37, i64 712, !37, i64 720, !37, i64 728, !11, i64 736, !11, i64 740, !11, i64 744, !11, i64 748, !11, i64 752, !11, i64 756, !11, i64 760, !11, i64 764, !11, i64 768, !11, i64 772, !11, i64 776, !11, i64 780, !11, i64 784, !11, i64 788}
!99 = !{!"_ZTS15hipDeviceArch_t", !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 1, !11, i64 1, !11, i64 1, !11, i64 1, !11, i64 1, !11, i64 1, !11, i64 1, !11, i64 1, !11, i64 2, !11, i64 2, !11, i64 2}
!100 = !{!75, !11, i64 0}
!101 = !{!75, !11, i64 60}
!102 = !{!75, !11, i64 64}
!103 = distinct !{!103, !14}
!104 = !{!105, !62, i64 8}
!105 = !{!"_ZTS20ReconstructionSample", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12, !62, i64 16, !62, i64 20}
!106 = !{!105, !62, i64 12}
!107 = !{!105, !62, i64 16}
!108 = distinct !{!108, !14}
