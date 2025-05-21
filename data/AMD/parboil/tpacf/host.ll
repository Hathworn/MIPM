; ModuleID = 'tpacf.cpp'
source_filename = "tpacf.cpp"
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
%struct._options_ = type { i8*, i8*, i32, i32, i8* }
%struct.cartesian = type { float, float, float }
%struct.dim3 = type { i32, i32, i32 }

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
@.str.23 = private unnamed_addr constant [91 x i8] c"Usage: %s <-d data_file_name> <-r rnd_file_name> <-m rnd_count> <-p count> <-o file_name>\0A\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"d:n:r:p:o:\00", align 1
@optarg = external dso_local local_unnamed_addr global i8*, align 8
@.str.25 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"Unable to open data file %s for reading\0A\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"%f %f\00", align 1
@g_scanBlockSums = dso_local local_unnamed_addr global float** null, align 8
@g_numEltsAllocated = dso_local local_unnamed_addr global i32 0, align 4
@g_numLevelsAllocated = dso_local local_unnamed_addr global i32 0, align 4
@dev_binb = internal global [21 x float] undef, align 16
@NUM_SETS = dso_local local_unnamed_addr global i32 0, align 4
@NUM_ELEMENTS = dso_local local_unnamed_addr global i32 0, align 4
@_Z9gen_histsPmPfS0_S0_ii = dso_local constant void (i64*, float*, float*, float*, i32, i32)* @_Z24__device_stub__gen_histsPmPfS0_S0_ii, align 8
@.str.28 = private unnamed_addr constant [25 x i8] c"Min distance: %f arcmin\0A\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"Max distance: %f arcmin\0A\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"Bins per dec: %i\0A\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"Total bins  : %i\0A\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"CUDA error: %s, line %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.34 = private unnamed_addr constant [60 x i8] c"Unable to open output file %s for writing, assuming stdout\0A\00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.35 = private unnamed_addr constant [10 x i8] c"%d\0A%d\0A%d\0A\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"delete_argument\0A\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"next_argument\0A\00", align 1
@0 = private unnamed_addr constant [25 x i8] c"_Z9gen_histsPmPfS0_S0_ii\00", align 1
@1 = private unnamed_addr constant [9 x i8] c"dev_binb\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]

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
  %32 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %31) #26
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
  %47 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %46) #26
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
  %59 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %58) #26
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
  %112 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %111) #26
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

; Function Attrs: mustprogress noreturn nounwind uwtable
define dso_local void @_Z5usagePc(i8* %0) local_unnamed_addr #14 {
  %2 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([91 x i8], [91 x i8]* @.str.23, i64 0, i64 0), i8* %0)
  tail call void @exit(i32 0) #29
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z10parse_argsiPPcP9_options_(i32 %0, i8** %1, %struct._options_* nocapture writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._options_, %struct._options_* %2, i64 0, i32 0
  %5 = getelementptr inbounds %struct._options_, %struct._options_* %2, i64 0, i32 1
  %6 = getelementptr inbounds %struct._options_, %struct._options_* %2, i64 0, i32 2
  %7 = getelementptr inbounds %struct._options_, %struct._options_* %2, i64 0, i32 3
  %8 = getelementptr inbounds %struct._options_, %struct._options_* %2, i64 0, i32 4
  %9 = bitcast %struct._options_* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  br label %10

10:                                               ; preds = %26, %3
  %11 = tail call i32 @getopt(i32 %0, i8** %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0)) #25
  switch i32 %11, label %27 [
    i32 -1, label %30
    i32 100, label %12
    i32 114, label %14
    i32 110, label %16
    i32 111, label %20
    i32 112, label %22
  ]

12:                                               ; preds = %10
  %13 = load i8*, i8** @optarg, align 8, !tbaa !9
  store i8* %13, i8** %4, align 8, !tbaa !73
  br label %26

14:                                               ; preds = %10
  %15 = load i8*, i8** @optarg, align 8, !tbaa !9
  store i8* %15, i8** %5, align 8, !tbaa !75
  br label %26

16:                                               ; preds = %10
  %17 = load i8*, i8** @optarg, align 8, !tbaa !9
  %18 = tail call i64 @strtol(i8* nocapture nonnull %17, i8** null, i32 10) #25
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 8, !tbaa !76
  br label %26

20:                                               ; preds = %10
  %21 = load i8*, i8** @optarg, align 8, !tbaa !9
  store i8* %21, i8** %8, align 8, !tbaa !77
  br label %26

22:                                               ; preds = %10
  %23 = load i8*, i8** @optarg, align 8, !tbaa !9
  %24 = tail call i64 @strtol(i8* nocapture nonnull %23, i8** null, i32 10) #25
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %7, align 4, !tbaa !78
  br label %26

26:                                               ; preds = %22, %20, %16, %14, %12
  br label %10, !llvm.loop !79

27:                                               ; preds = %10
  %28 = load i8*, i8** %1, align 8, !tbaa !9
  %29 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([91 x i8], [91 x i8]* @.str.23, i64 0, i64 0), i8* %28) #25
  tail call void @exit(i32 0) #29
  unreachable

30:                                               ; preds = %10
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @getopt(i32, i8**, i8*) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local i32 @_Z12readdatafilePcP9cartesiani(i8* %0, %struct.cartesian* nocapture writeonly %1, i32 %2) local_unnamed_addr #8 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = bitcast float* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #25
  %7 = bitcast float* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #25
  %8 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  %9 = icmp eq %struct._IO_FILE* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = icmp sgt i32 %2, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %10
  %13 = zext i32 %2 to i64
  br label %17

14:                                               ; preds = %3
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %16 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i64 0, i64 0), i8* %0) #27
  br label %46

17:                                               ; preds = %12, %21
  %18 = phi i64 [ 0, %12 ], [ %39, %21 ]
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), float* nonnull %4, float* nonnull %5)
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = load float, float* %4, align 4, !tbaa !61
  %23 = fpext float %22 to double
  %24 = fmul contract double %23, 0x3F91DF46A2529D39
  %25 = fptrunc double %24 to float
  %26 = load float, float* %5, align 4, !tbaa !61
  %27 = fpext float %26 to double
  %28 = fmul contract double %27, 0x3F91DF46A2529D39
  %29 = fptrunc double %28 to float
  %30 = call contract float @cosf(float %29) #25
  %31 = call contract float @cosf(float %25) #25
  %32 = fmul contract float %30, %31
  %33 = getelementptr inbounds %struct.cartesian, %struct.cartesian* %1, i64 %18, i32 0
  store float %32, float* %33, align 4, !tbaa !80
  %34 = call contract float @sinf(float %25) #25
  %35 = fmul contract float %30, %34
  %36 = getelementptr inbounds %struct.cartesian, %struct.cartesian* %1, i64 %18, i32 1
  store float %35, float* %36, align 4, !tbaa !82
  %37 = call contract float @sinf(float %29) #25
  %38 = getelementptr inbounds %struct.cartesian, %struct.cartesian* %1, i64 %18, i32 2
  store float %37, float* %38, align 4, !tbaa !83
  %39 = add nuw nsw i64 %18, 1
  %40 = icmp eq i64 %39, %13
  br i1 %40, label %43, label %17, !llvm.loop !84

41:                                               ; preds = %17
  %42 = trunc i64 %18 to i32
  br label %43

43:                                               ; preds = %21, %41, %10
  %44 = phi i32 [ 0, %10 ], [ %42, %41 ], [ %2, %21 ]
  %45 = call i32 @fclose(%struct._IO_FILE* nonnull %8)
  br label %46

46:                                               ; preds = %43, %14
  %47 = phi i32 [ 0, %14 ], [ %44, %43 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #25
  ret i32 %47
}

; Function Attrs: nofree nounwind
declare dso_local noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fscanf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_Z8initBinBP11pb_TimerSet(%struct.pb_TimerSet* nocapture %0) local_unnamed_addr #11 {
  %2 = tail call noalias align 16 dereferenceable_or_null(84) i8* @malloc(i64 84) #25
  %3 = bitcast i8* %2 to float*
  br label %6

4:                                                ; preds = %6
  tail call void @pb_SwitchToTimer(%struct.pb_TimerSet* %0, i32 3)
  %5 = tail call i32 @hipMemcpyToSymbol(i8* nonnull bitcast ([21 x float]* @dev_binb to i8*), i8* nonnull %2, i64 84, i64 0, i32 1)
  tail call void @pb_SwitchToTimer(%struct.pb_TimerSet* %0, i32 6)
  tail call void @free(i8* nonnull %2) #25
  ret void

6:                                                ; preds = %1, %6
  %7 = phi i64 [ 0, %1 ], [ %19, %6 ]
  %8 = trunc i64 %7 to i32
  %9 = sitofp i32 %8 to double
  %10 = fdiv contract double %9, 5.000000e+00
  %11 = fadd contract double %10, 0.000000e+00
  %12 = tail call contract double @pow(double 1.000000e+01, double %11) #25
  %13 = fdiv contract double %12, 6.000000e+01
  %14 = fmul contract double %13, 0x400921FB54442D18
  %15 = fdiv contract double %14, 1.800000e+02
  %16 = tail call contract double @cos(double %15) #25
  %17 = fptrunc double %16 to float
  %18 = getelementptr inbounds float, float* %3, i64 %7
  store float %17, float* %18, align 4, !tbaa !61
  %19 = add nuw nsw i64 %7, 1
  %20 = icmp eq i64 %19, 21
  br i1 %20, label %4, label %6, !llvm.loop !85
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local double @cos(double) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local double @pow(double, double) local_unnamed_addr #17

; Function Attrs: norecurse uwtable
define dso_local void @_Z24__device_stub__gen_histsPmPfS0_S0_ii(i64* %0, float* %1, float* %2, float* %3, i32 %4, i32 %5) #18 {
  %7 = alloca i64*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dim3, align 8
  %14 = alloca %struct.dim3, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i64* %0, i64** %7, align 8, !tbaa !9
  store float* %1, float** %8, align 8, !tbaa !9
  store float* %2, float** %9, align 8, !tbaa !9
  store float* %3, float** %10, align 8, !tbaa !9
  store i32 %4, i32* %11, align 4, !tbaa !10
  store i32 %5, i32* %12, align 4, !tbaa !10
  %17 = alloca [6 x i8*], align 16
  %18 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 0
  %19 = bitcast [6 x i8*]* %17 to i64***
  store i64** %7, i64*** %19, align 16
  %20 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 1
  %21 = bitcast i8** %20 to float***
  store float** %8, float*** %21, align 8
  %22 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 2
  %23 = bitcast i8** %22 to float***
  store float** %9, float*** %23, align 16
  %24 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 3
  %25 = bitcast i8** %24 to float***
  store float** %10, float*** %25, align 8
  %26 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 4
  %27 = bitcast i8** %26 to i32**
  store i32* %11, i32** %27, align 16
  %28 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 5
  %29 = bitcast i8** %28 to i32**
  store i32* %12, i32** %29, align 8
  %30 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %13, %struct.dim3* nonnull %14, i64* nonnull %15, i8** nonnull %16)
  %31 = load i64, i64* %15, align 8
  %32 = bitcast i8** %16 to %struct.ihipStream_t**
  %33 = load %struct.ihipStream_t*, %struct.ihipStream_t** %32, align 8
  %34 = bitcast %struct.dim3* %13 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.dim3, %struct.dim3* %13, i64 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = bitcast %struct.dim3* %14 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.dim3, %struct.dim3* %14, i64 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @hipLaunchKernel(i8* bitcast (void (i64*, float*, float*, float*, i32, i32)** @_Z9gen_histsPmPfS0_S0_ii to i8*), i64 %35, i32 %37, i64 %39, i32 %41, i8** nonnull %18, i64 %31, %struct.ihipStream_t* %33)
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #19

; Function Attrs: uwtable
define dso_local void @_Z5TPACFPmPfS0_S0_(i64* %0, float* %1, float* %2, float* %3) local_unnamed_addr #20 {
  %5 = alloca i64*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [6 x i8*], align 16
  %16 = load i32, i32* @NUM_SETS, align 4, !tbaa !10
  %17 = shl i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = or i64 %18, 4294967297
  %20 = tail call i32 @__hipPushCallConfiguration(i64 %19, i32 1, i64 4294967552, i32 1, i64 0, %struct.ihipStream_t* null)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %4
  %23 = load i32, i32* @NUM_SETS, align 4, !tbaa !10
  %24 = load i32, i32* @NUM_ELEMENTS, align 4, !tbaa !10
  %25 = bitcast i64** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25)
  %26 = bitcast float** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26)
  %27 = bitcast float** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %27)
  %28 = bitcast float** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28)
  %29 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29)
  %30 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %30)
  %31 = bitcast %struct.dim3* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %31)
  %32 = bitcast %struct.dim3* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %32)
  %33 = bitcast i64* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33)
  %34 = bitcast i8** %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34)
  %35 = bitcast [6 x i8*]* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %35)
  store i64* %0, i64** %5, align 8, !tbaa !9
  store float* %1, float** %6, align 8, !tbaa !9
  store float* %2, float** %7, align 8, !tbaa !9
  store float* %3, float** %8, align 8, !tbaa !9
  store i32 %23, i32* %9, align 4, !tbaa !10
  store i32 %24, i32* %10, align 4, !tbaa !10
  %36 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i64 0, i64 0
  %37 = bitcast [6 x i8*]* %15 to i64***
  store i64** %5, i64*** %37, align 16
  %38 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i64 0, i64 1
  %39 = bitcast i8** %38 to float***
  store float** %6, float*** %39, align 8
  %40 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i64 0, i64 2
  %41 = bitcast i8** %40 to float***
  store float** %7, float*** %41, align 16
  %42 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i64 0, i64 3
  %43 = bitcast i8** %42 to float***
  store float** %8, float*** %43, align 8
  %44 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i64 0, i64 4
  %45 = bitcast i8** %44 to i32**
  store i32* %9, i32** %45, align 16
  %46 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i64 0, i64 5
  %47 = bitcast i8** %46 to i32**
  store i32* %10, i32** %47, align 8
  %48 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %11, %struct.dim3* nonnull %12, i64* nonnull %13, i8** nonnull %14)
  %49 = load i64, i64* %13, align 8
  %50 = bitcast i8** %14 to %struct.ihipStream_t**
  %51 = load %struct.ihipStream_t*, %struct.ihipStream_t** %50, align 8
  %52 = bitcast %struct.dim3* %11 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.dim3, %struct.dim3* %11, i64 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = bitcast %struct.dim3* %12 to i64*
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.dim3, %struct.dim3* %12, i64 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @hipLaunchKernel(i8* bitcast (void (i64*, float*, float*, float*, i32, i32)** @_Z9gen_histsPmPfS0_S0_ii to i8*), i64 %53, i32 %55, i64 %57, i32 %59, i8** nonnull %36, i64 %49, %struct.ihipStream_t* %51)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %30)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %31)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %32)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34)
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %35)
  br label %61

61:                                               ; preds = %22, %4
  ret void
}

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #12

; Function Attrs: mustprogress norecurse uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #21 {
  %3 = alloca %struct.timeval, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pb_TimerSet, align 8
  %6 = alloca %struct._options_, align 8
  %7 = alloca float*, align 8
  %8 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4, !tbaa !10
  %9 = bitcast %struct.pb_TimerSet* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 288, i8* nonnull %9) #25
  %10 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #25
  %11 = call i32 @gettimeofday(%struct.timeval* nonnull %3, %struct.timezone* null) #25
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !35
  %14 = mul nsw i64 %13, 1000000
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 1
  %16 = load i64, i64* %15, align 8, !tbaa !38
  %17 = add nsw i64 %14, %16
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #25
  %18 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 3
  store i64 %17, i64* %18, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 0
  store i32 0, i32* %19, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 1
  store %struct.pb_async_time_marker_list* null, %struct.pb_async_time_marker_list** %20, align 8, !tbaa !45
  %21 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 0, i32 0
  store i32 0, i32* %21, align 8, !tbaa !30
  %22 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 0, i32 1
  store i64 0, i64* %22, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 5, i64 0
  %24 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 1, i32 0
  store i32 0, i32* %24, align 8, !tbaa !30
  %25 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 1, i32 1
  store i64 0, i64* %25, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 2, i32 0
  store i32 0, i32* %26, align 8, !tbaa !30
  %27 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 2, i32 1
  store i64 0, i64* %27, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 3, i32 0
  store i32 0, i32* %28, align 8, !tbaa !30
  %29 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 3, i32 1
  store i64 0, i64* %29, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 4, i32 0
  store i32 0, i32* %30, align 8, !tbaa !30
  %31 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 4, i32 1
  store i64 0, i64* %31, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 5, i32 0
  store i32 0, i32* %32, align 8, !tbaa !30
  %33 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 5, i32 1
  store i64 0, i64* %33, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 6, i32 0
  store i32 0, i32* %34, align 8, !tbaa !30
  %35 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 6, i32 1
  store i64 0, i64* %35, align 8, !tbaa !34
  %36 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 7, i32 0
  store i32 0, i32* %36, align 8, !tbaa !30
  %37 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 7, i32 1
  store i64 0, i64* %37, align 8, !tbaa !34
  %38 = bitcast %struct.pb_SubTimerList** %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %38, i8 0, i64 64, i1 false) #25
  %39 = call %struct.pb_Parameters* @pb_ReadParameters(i32* nonnull %4, i8** %1)
  %40 = bitcast %struct._options_* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %40) #25
  %41 = load i32, i32* %4, align 4, !tbaa !10
  call void @_Z10parse_argsiPPcP9_options_(i32 %41, i8** %1, %struct._options_* nonnull %6)
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 6)
  %42 = getelementptr inbounds %struct._options_, %struct._options_* %6, i64 0, i32 3
  %43 = load i32, i32* %42, align 4, !tbaa !78
  store i32 %43, i32* @NUM_ELEMENTS, align 4, !tbaa !10
  %44 = getelementptr inbounds %struct._options_, %struct._options_* %6, i64 0, i32 2
  %45 = load i32, i32* %44, align 8, !tbaa !76
  store i32 %45, i32* @NUM_SETS, align 4, !tbaa !10
  %46 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0), double 1.000000e+00)
  %47 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0), double 1.000000e+04)
  %48 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0), i32 5)
  %49 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0), i32 20)
  %50 = load i32, i32* @NUM_SETS, align 4, !tbaa !10
  %51 = add i32 %50, 1
  %52 = mul i32 %43, 12
  %53 = mul i32 %52, %51
  %54 = zext i32 %53 to i64
  %55 = tail call noalias align 16 i8* @malloc(i64 %54) #25
  %56 = bitcast i8* %55 to %struct.cartesian*
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 1)
  %57 = getelementptr inbounds %struct.pb_Parameters, %struct.pb_Parameters* %39, i64 0, i32 1
  %58 = load i8**, i8*** %57, align 8, !tbaa !8
  %59 = load i8*, i8** %58, align 8, !tbaa !9
  %60 = tail call i32 @_Z12readdatafilePcP9cartesiani(i8* %59, %struct.cartesian* %56, i32 %43)
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 6)
  %61 = sext i32 %43 to i64
  %62 = load i32, i32* @NUM_SETS, align 4, !tbaa !10
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %201

64:                                               ; preds = %201, %2
  %65 = phi i32 [ 0, %2 ], [ %210, %201 ]
  %66 = tail call noalias align 16 i8* @malloc(i64 %54) #25
  %67 = bitcast i8* %66 to float*
  %68 = load i32, i32* @NUM_ELEMENTS, align 4, !tbaa !10
  %69 = add i32 %65, 1
  %70 = mul i32 %68, %69
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %67, i64 %71
  %73 = getelementptr inbounds float, float* %72, i64 %71
  %74 = icmp eq i32 %69, 0
  %75 = icmp eq i32 %68, 0
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %76, label %213, label %77

77:                                               ; preds = %64
  %78 = zext i32 %68 to i64
  %79 = add nsw i64 %78, -1
  %80 = shl nuw nsw i64 %78, 2
  %81 = getelementptr i8, i8* %66, i64 %80
  %82 = shl nuw nsw i64 %71, 2
  %83 = getelementptr i8, i8* %66, i64 %82
  %84 = add nuw nsw i64 %80, %82
  %85 = getelementptr i8, i8* %66, i64 %84
  %86 = shl nuw nsw i64 %71, 3
  %87 = getelementptr i8, i8* %66, i64 %86
  %88 = add nuw nsw i64 %86, %80
  %89 = getelementptr i8, i8* %66, i64 %88
  %90 = and i64 %78, 4294967292
  %91 = add nsw i64 %90, -4
  %92 = lshr exact i64 %91, 2
  %93 = add nuw nsw i64 %92, 1
  %94 = icmp ult i32 %68, 4
  %95 = trunc i64 %79 to i32
  %96 = icmp ugt i64 %79, 4294967295
  %97 = icmp ult i8* %66, %85
  %98 = icmp ult i8* %83, %81
  %99 = and i1 %97, %98
  %100 = icmp ult i8* %66, %89
  %101 = icmp ult i8* %87, %81
  %102 = and i1 %100, %101
  %103 = or i1 %99, %102
  %104 = icmp ult i8* %83, %89
  %105 = icmp ult i8* %87, %85
  %106 = and i1 %104, %105
  %107 = or i1 %103, %106
  %108 = and i64 %78, 4294967292
  %109 = and i64 %93, 1
  %110 = icmp eq i64 %91, 0
  %111 = and i64 %93, 9223372036854775806
  %112 = icmp eq i64 %109, 0
  %113 = icmp eq i64 %108, %78
  br label %114

114:                                              ; preds = %77, %198
  %115 = phi i32 [ %199, %198 ], [ 0, %77 ]
  %116 = mul i32 %115, %68
  br i1 %94, label %180, label %117

117:                                              ; preds = %114
  %118 = mul i32 %68, %115
  %119 = xor i32 %118, -1
  %120 = icmp ult i32 %119, %95
  %121 = or i1 %120, %96
  %122 = select i1 %121, i1 true, i1 %107
  br i1 %122, label %180, label %123

123:                                              ; preds = %117
  br i1 %110, label %161, label %124

124:                                              ; preds = %123, %124
  %125 = phi i64 [ %158, %124 ], [ 0, %123 ]
  %126 = phi i64 [ %159, %124 ], [ 0, %123 ]
  %127 = trunc i64 %125 to i32
  %128 = add i32 %116, %127
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.cartesian, %struct.cartesian* %56, i64 %129, i32 0
  %131 = bitcast float* %130 to <12 x float>*
  %132 = load <12 x float>, <12 x float>* %131, align 4, !tbaa !61
  %133 = shufflevector <12 x float> %132, <12 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %134 = shufflevector <12 x float> %132, <12 x float> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 10>
  %135 = shufflevector <12 x float> %132, <12 x float> poison, <4 x i32> <i32 2, i32 5, i32 8, i32 11>
  %136 = getelementptr inbounds float, float* %67, i64 %129
  %137 = bitcast float* %136 to <4 x float>*
  store <4 x float> %133, <4 x float>* %137, align 4, !tbaa !61, !alias.scope !86, !noalias !89
  %138 = getelementptr inbounds float, float* %72, i64 %129
  %139 = bitcast float* %138 to <4 x float>*
  store <4 x float> %134, <4 x float>* %139, align 4, !tbaa !61, !alias.scope !92, !noalias !93
  %140 = getelementptr inbounds float, float* %73, i64 %129
  %141 = bitcast float* %140 to <4 x float>*
  store <4 x float> %135, <4 x float>* %141, align 4, !tbaa !61, !alias.scope !93
  %142 = trunc i64 %125 to i32
  %143 = or i32 %142, 4
  %144 = add i32 %116, %143
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.cartesian, %struct.cartesian* %56, i64 %145, i32 0
  %147 = bitcast float* %146 to <12 x float>*
  %148 = load <12 x float>, <12 x float>* %147, align 4, !tbaa !61
  %149 = shufflevector <12 x float> %148, <12 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %150 = shufflevector <12 x float> %148, <12 x float> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 10>
  %151 = shufflevector <12 x float> %148, <12 x float> poison, <4 x i32> <i32 2, i32 5, i32 8, i32 11>
  %152 = getelementptr inbounds float, float* %67, i64 %145
  %153 = bitcast float* %152 to <4 x float>*
  store <4 x float> %149, <4 x float>* %153, align 4, !tbaa !61, !alias.scope !86, !noalias !89
  %154 = getelementptr inbounds float, float* %72, i64 %145
  %155 = bitcast float* %154 to <4 x float>*
  store <4 x float> %150, <4 x float>* %155, align 4, !tbaa !61, !alias.scope !92, !noalias !93
  %156 = getelementptr inbounds float, float* %73, i64 %145
  %157 = bitcast float* %156 to <4 x float>*
  store <4 x float> %151, <4 x float>* %157, align 4, !tbaa !61, !alias.scope !93
  %158 = add nuw i64 %125, 8
  %159 = add i64 %126, 2
  %160 = icmp eq i64 %159, %111
  br i1 %160, label %161, label %124, !llvm.loop !94

161:                                              ; preds = %124, %123
  %162 = phi i64 [ 0, %123 ], [ %158, %124 ]
  br i1 %112, label %179, label %163

163:                                              ; preds = %161
  %164 = trunc i64 %162 to i32
  %165 = add i32 %116, %164
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.cartesian, %struct.cartesian* %56, i64 %166, i32 0
  %168 = bitcast float* %167 to <12 x float>*
  %169 = load <12 x float>, <12 x float>* %168, align 4, !tbaa !61
  %170 = shufflevector <12 x float> %169, <12 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %171 = shufflevector <12 x float> %169, <12 x float> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 10>
  %172 = shufflevector <12 x float> %169, <12 x float> poison, <4 x i32> <i32 2, i32 5, i32 8, i32 11>
  %173 = getelementptr inbounds float, float* %67, i64 %166
  %174 = bitcast float* %173 to <4 x float>*
  store <4 x float> %170, <4 x float>* %174, align 4, !tbaa !61, !alias.scope !86, !noalias !89
  %175 = getelementptr inbounds float, float* %72, i64 %166
  %176 = bitcast float* %175 to <4 x float>*
  store <4 x float> %171, <4 x float>* %176, align 4, !tbaa !61, !alias.scope !92, !noalias !93
  %177 = getelementptr inbounds float, float* %73, i64 %166
  %178 = bitcast float* %177 to <4 x float>*
  store <4 x float> %172, <4 x float>* %178, align 4, !tbaa !61, !alias.scope !93
  br label %179

179:                                              ; preds = %161, %163
  br i1 %113, label %198, label %180

180:                                              ; preds = %117, %114, %179
  %181 = phi i64 [ 0, %117 ], [ 0, %114 ], [ %108, %179 ]
  br label %182

182:                                              ; preds = %180, %182
  %183 = phi i64 [ %196, %182 ], [ %181, %180 ]
  %184 = trunc i64 %183 to i32
  %185 = add i32 %116, %184
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.cartesian, %struct.cartesian* %56, i64 %186, i32 0
  %188 = load float, float* %187, align 4, !tbaa !80
  %189 = getelementptr inbounds float, float* %67, i64 %186
  store float %188, float* %189, align 4, !tbaa !61
  %190 = getelementptr inbounds %struct.cartesian, %struct.cartesian* %56, i64 %186, i32 1
  %191 = load float, float* %190, align 4, !tbaa !82
  %192 = getelementptr inbounds float, float* %72, i64 %186
  store float %191, float* %192, align 4, !tbaa !61
  %193 = getelementptr inbounds %struct.cartesian, %struct.cartesian* %56, i64 %186, i32 2
  %194 = load float, float* %193, align 4, !tbaa !83
  %195 = getelementptr inbounds float, float* %73, i64 %186
  store float %194, float* %195, align 4, !tbaa !61
  %196 = add nuw nsw i64 %183, 1
  %197 = icmp eq i64 %196, %78
  br i1 %197, label %198, label %182, !llvm.loop !95

198:                                              ; preds = %182, %179
  %199 = add nuw nsw i32 %115, 1
  %200 = icmp eq i32 %115, %65
  br i1 %200, label %213, label %114, !llvm.loop !96

201:                                              ; preds = %2, %201
  %202 = phi i64 [ %206, %201 ], [ 0, %2 ]
  %203 = phi %struct.cartesian* [ %204, %201 ], [ %56, %2 ]
  %204 = getelementptr inbounds %struct.cartesian, %struct.cartesian* %203, i64 %61
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 1)
  %205 = load i8**, i8*** %57, align 8, !tbaa !8
  %206 = add nuw nsw i64 %202, 1
  %207 = getelementptr inbounds i8*, i8** %205, i64 %206
  %208 = load i8*, i8** %207, align 8, !tbaa !9
  %209 = tail call i32 @_Z12readdatafilePcP9cartesiani(i8* %208, %struct.cartesian* %204, i32 %43)
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 6)
  %210 = load i32, i32* @NUM_SETS, align 4, !tbaa !10
  %211 = zext i32 %210 to i64
  %212 = icmp ult i64 %206, %211
  br i1 %212, label %201, label %64, !llvm.loop !97

213:                                              ; preds = %198, %64
  tail call void @free(i8* %55) #25
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 3)
  %214 = bitcast float** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %214) #25
  %215 = bitcast float** %7 to i8**
  %216 = call i32 @hipMalloc(i8** nonnull %215, i64 %54)
  %217 = call i32 @hipGetLastError()
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %213
  %220 = call i8* @hipGetErrorString(i32 %217)
  %221 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0), i8* %220, i32 402)
  br label %682

222:                                              ; preds = %213
  %223 = load float*, float** %7, align 8, !tbaa !9
  %224 = load i32, i32* @NUM_ELEMENTS, align 4, !tbaa !10
  %225 = load i32, i32* @NUM_SETS, align 4, !tbaa !10
  %226 = add i32 %225, 1
  %227 = mul i32 %226, %224
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %223, i64 %228
  %230 = getelementptr inbounds float, float* %229, i64 %228
  %231 = bitcast i64** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %231) #25
  %232 = bitcast i64** %8 to i8**
  %233 = shl i32 %225, 1
  %234 = or i32 %233, 1
  %235 = mul i32 %234, 20
  %236 = zext i32 %235 to i64
  %237 = shl nuw nsw i64 %236, 3
  %238 = call i32 @hipMalloc(i8** nonnull %232, i64 %237)
  %239 = call i32 @hipGetLastError()
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %244, label %241

241:                                              ; preds = %222
  %242 = call i8* @hipGetErrorString(i32 %239)
  %243 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0), i8* %242, i32 410)
  br label %680

244:                                              ; preds = %222
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 6)
  %245 = load i32, i32* @NUM_SETS, align 4, !tbaa !10
  %246 = shl i32 %245, 1
  %247 = or i32 %246, 1
  %248 = mul i32 %247, 20
  %249 = zext i32 %248 to i64
  %250 = shl nuw nsw i64 %249, 3
  %251 = call noalias align 16 i8* @malloc(i64 %250) #25
  %252 = call noalias align 16 dereferenceable_or_null(84) i8* @malloc(i64 84) #25
  %253 = bitcast i8* %252 to float*
  br label %254

254:                                              ; preds = %254, %244
  %255 = phi i64 [ 0, %244 ], [ %267, %254 ]
  %256 = trunc i64 %255 to i32
  %257 = sitofp i32 %256 to double
  %258 = fdiv contract double %257, 5.000000e+00
  %259 = fadd contract double %258, 0.000000e+00
  %260 = call contract double @pow(double 1.000000e+01, double %259) #25
  %261 = fdiv contract double %260, 6.000000e+01
  %262 = fmul contract double %261, 0x400921FB54442D18
  %263 = fdiv contract double %262, 1.800000e+02
  %264 = call contract double @cos(double %263) #25
  %265 = fptrunc double %264 to float
  %266 = getelementptr inbounds float, float* %253, i64 %255
  store float %265, float* %266, align 4, !tbaa !61
  %267 = add nuw nsw i64 %255, 1
  %268 = icmp eq i64 %267, 21
  br i1 %268, label %269, label %254, !llvm.loop !85

269:                                              ; preds = %254
  %270 = bitcast i8* %251 to i64*
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 3)
  %271 = call i32 @hipMemcpyToSymbol(i8* nonnull bitcast ([21 x float]* @dev_binb to i8*), i8* nonnull %252, i64 84, i64 0, i32 1)
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 6)
  call void @free(i8* nonnull %252) #25
  %272 = call i32 @hipGetLastError()
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %277, label %274

274:                                              ; preds = %269
  %275 = call i8* @hipGetErrorString(i32 %272)
  %276 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0), i8* %275, i32 419)
  br label %680

277:                                              ; preds = %269
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 3)
  %278 = load i8*, i8** %215, align 8, !tbaa !9
  %279 = call i32 @hipMemcpy(i8* %278, i8* %66, i64 %54, i32 1)
  %280 = call i32 @hipGetLastError()
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %277
  %283 = call i8* @hipGetErrorString(i32 %280)
  %284 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0), i8* %283, i32 424)
  br label %680

285:                                              ; preds = %277
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 2)
  %286 = load i64*, i64** %8, align 8, !tbaa !9
  %287 = load float*, float** %7, align 8, !tbaa !9
  call void @_Z5TPACFPmPfS0_S0_(i64* %286, float* %287, float* %229, float* %230)
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 3)
  %288 = load i8*, i8** %232, align 8, !tbaa !9
  %289 = load i32, i32* @NUM_SETS, align 4, !tbaa !10
  %290 = shl i32 %289, 1
  %291 = or i32 %290, 1
  %292 = mul i32 %291, 20
  %293 = zext i32 %292 to i64
  %294 = shl nuw nsw i64 %293, 3
  %295 = call i32 @hipMemcpy(i8* %251, i8* %288, i64 %294, i32 2)
  %296 = call i32 @hipGetLastError()
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %301, label %298

298:                                              ; preds = %285
  %299 = call i8* @hipGetErrorString(i32 %296)
  %300 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0), i8* %299, i32 432)
  br label %680

301:                                              ; preds = %285
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 6)
  %302 = load i32, i32* @NUM_SETS, align 4, !tbaa !10
  %303 = mul i32 %302, 20
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds i64, i64* %270, i64 20
  %306 = getelementptr inbounds i64, i64* %305, i64 %304
  %307 = icmp eq i32 %302, 0
  br i1 %307, label %561, label %308

308:                                              ; preds = %301
  %309 = zext i32 %302 to i64
  br label %310

310:                                              ; preds = %308, %310
  %311 = phi i32 [ 0, %308 ], [ %336, %310 ]
  %312 = phi i32 [ 0, %308 ], [ %341, %310 ]
  %313 = phi i32 [ 0, %308 ], [ %346, %310 ]
  %314 = phi i32 [ 0, %308 ], [ %351, %310 ]
  %315 = phi i32 [ 0, %308 ], [ %356, %310 ]
  %316 = phi i32 [ 0, %308 ], [ %361, %310 ]
  %317 = phi i32 [ 0, %308 ], [ %366, %310 ]
  %318 = phi i32 [ 0, %308 ], [ %371, %310 ]
  %319 = phi i32 [ 0, %308 ], [ %376, %310 ]
  %320 = phi i32 [ 0, %308 ], [ %381, %310 ]
  %321 = phi i32 [ 0, %308 ], [ %386, %310 ]
  %322 = phi i32 [ 0, %308 ], [ %391, %310 ]
  %323 = phi i32 [ 0, %308 ], [ %396, %310 ]
  %324 = phi i32 [ 0, %308 ], [ %401, %310 ]
  %325 = phi i32 [ 0, %308 ], [ %406, %310 ]
  %326 = phi i32 [ 0, %308 ], [ %411, %310 ]
  %327 = phi i32 [ 0, %308 ], [ %416, %310 ]
  %328 = phi i32 [ 0, %308 ], [ %421, %310 ]
  %329 = phi i32 [ 0, %308 ], [ %426, %310 ]
  %330 = phi i32 [ 0, %308 ], [ %431, %310 ]
  %331 = phi i64 [ 0, %308 ], [ %432, %310 ]
  %332 = mul nuw nsw i64 %331, 20
  %333 = getelementptr inbounds i64, i64* %305, i64 %332
  %334 = load i64, i64* %333, align 16, !tbaa !98
  %335 = trunc i64 %334 to i32
  %336 = add i32 %311, %335
  %337 = or i64 %332, 1
  %338 = getelementptr inbounds i64, i64* %305, i64 %337
  %339 = load i64, i64* %338, align 8, !tbaa !98
  %340 = trunc i64 %339 to i32
  %341 = add i32 %312, %340
  %342 = or i64 %332, 2
  %343 = getelementptr inbounds i64, i64* %305, i64 %342
  %344 = load i64, i64* %343, align 16, !tbaa !98
  %345 = trunc i64 %344 to i32
  %346 = add i32 %313, %345
  %347 = or i64 %332, 3
  %348 = getelementptr inbounds i64, i64* %305, i64 %347
  %349 = load i64, i64* %348, align 8, !tbaa !98
  %350 = trunc i64 %349 to i32
  %351 = add i32 %314, %350
  %352 = add nuw nsw i64 %332, 4
  %353 = getelementptr inbounds i64, i64* %305, i64 %352
  %354 = load i64, i64* %353, align 16, !tbaa !98
  %355 = trunc i64 %354 to i32
  %356 = add i32 %315, %355
  %357 = add nuw nsw i64 %332, 5
  %358 = getelementptr inbounds i64, i64* %305, i64 %357
  %359 = load i64, i64* %358, align 8, !tbaa !98
  %360 = trunc i64 %359 to i32
  %361 = add i32 %316, %360
  %362 = add nuw nsw i64 %332, 6
  %363 = getelementptr inbounds i64, i64* %305, i64 %362
  %364 = load i64, i64* %363, align 16, !tbaa !98
  %365 = trunc i64 %364 to i32
  %366 = add i32 %317, %365
  %367 = add nuw nsw i64 %332, 7
  %368 = getelementptr inbounds i64, i64* %305, i64 %367
  %369 = load i64, i64* %368, align 8, !tbaa !98
  %370 = trunc i64 %369 to i32
  %371 = add i32 %318, %370
  %372 = add nuw nsw i64 %332, 8
  %373 = getelementptr inbounds i64, i64* %305, i64 %372
  %374 = load i64, i64* %373, align 16, !tbaa !98
  %375 = trunc i64 %374 to i32
  %376 = add i32 %319, %375
  %377 = add nuw nsw i64 %332, 9
  %378 = getelementptr inbounds i64, i64* %305, i64 %377
  %379 = load i64, i64* %378, align 8, !tbaa !98
  %380 = trunc i64 %379 to i32
  %381 = add i32 %320, %380
  %382 = add nuw nsw i64 %332, 10
  %383 = getelementptr inbounds i64, i64* %305, i64 %382
  %384 = load i64, i64* %383, align 16, !tbaa !98
  %385 = trunc i64 %384 to i32
  %386 = add i32 %321, %385
  %387 = add nuw nsw i64 %332, 11
  %388 = getelementptr inbounds i64, i64* %305, i64 %387
  %389 = load i64, i64* %388, align 8, !tbaa !98
  %390 = trunc i64 %389 to i32
  %391 = add i32 %322, %390
  %392 = add nuw nsw i64 %332, 12
  %393 = getelementptr inbounds i64, i64* %305, i64 %392
  %394 = load i64, i64* %393, align 16, !tbaa !98
  %395 = trunc i64 %394 to i32
  %396 = add i32 %323, %395
  %397 = add nuw nsw i64 %332, 13
  %398 = getelementptr inbounds i64, i64* %305, i64 %397
  %399 = load i64, i64* %398, align 8, !tbaa !98
  %400 = trunc i64 %399 to i32
  %401 = add i32 %324, %400
  %402 = add nuw nsw i64 %332, 14
  %403 = getelementptr inbounds i64, i64* %305, i64 %402
  %404 = load i64, i64* %403, align 16, !tbaa !98
  %405 = trunc i64 %404 to i32
  %406 = add i32 %325, %405
  %407 = add nuw nsw i64 %332, 15
  %408 = getelementptr inbounds i64, i64* %305, i64 %407
  %409 = load i64, i64* %408, align 8, !tbaa !98
  %410 = trunc i64 %409 to i32
  %411 = add i32 %326, %410
  %412 = add nuw nsw i64 %332, 16
  %413 = getelementptr inbounds i64, i64* %305, i64 %412
  %414 = load i64, i64* %413, align 16, !tbaa !98
  %415 = trunc i64 %414 to i32
  %416 = add i32 %327, %415
  %417 = add nuw nsw i64 %332, 17
  %418 = getelementptr inbounds i64, i64* %305, i64 %417
  %419 = load i64, i64* %418, align 8, !tbaa !98
  %420 = trunc i64 %419 to i32
  %421 = add i32 %328, %420
  %422 = add nuw nsw i64 %332, 18
  %423 = getelementptr inbounds i64, i64* %305, i64 %422
  %424 = load i64, i64* %423, align 16, !tbaa !98
  %425 = trunc i64 %424 to i32
  %426 = add i32 %329, %425
  %427 = add nuw nsw i64 %332, 19
  %428 = getelementptr inbounds i64, i64* %305, i64 %427
  %429 = load i64, i64* %428, align 8, !tbaa !98
  %430 = trunc i64 %429 to i32
  %431 = add i32 %330, %430
  %432 = add nuw nsw i64 %331, 1
  %433 = icmp eq i64 %432, %309
  br i1 %433, label %434, label %310, !llvm.loop !99

434:                                              ; preds = %310
  br i1 %307, label %561, label %435

435:                                              ; preds = %434
  %436 = zext i32 %302 to i64
  br label %437

437:                                              ; preds = %435, %437
  %438 = phi i32 [ 0, %435 ], [ %463, %437 ]
  %439 = phi i32 [ 0, %435 ], [ %468, %437 ]
  %440 = phi i32 [ 0, %435 ], [ %473, %437 ]
  %441 = phi i32 [ 0, %435 ], [ %478, %437 ]
  %442 = phi i32 [ 0, %435 ], [ %483, %437 ]
  %443 = phi i32 [ 0, %435 ], [ %488, %437 ]
  %444 = phi i32 [ 0, %435 ], [ %493, %437 ]
  %445 = phi i32 [ 0, %435 ], [ %498, %437 ]
  %446 = phi i32 [ 0, %435 ], [ %503, %437 ]
  %447 = phi i32 [ 0, %435 ], [ %508, %437 ]
  %448 = phi i32 [ 0, %435 ], [ %513, %437 ]
  %449 = phi i32 [ 0, %435 ], [ %518, %437 ]
  %450 = phi i32 [ 0, %435 ], [ %523, %437 ]
  %451 = phi i32 [ 0, %435 ], [ %528, %437 ]
  %452 = phi i32 [ 0, %435 ], [ %533, %437 ]
  %453 = phi i32 [ 0, %435 ], [ %538, %437 ]
  %454 = phi i32 [ 0, %435 ], [ %543, %437 ]
  %455 = phi i32 [ 0, %435 ], [ %548, %437 ]
  %456 = phi i32 [ 0, %435 ], [ %553, %437 ]
  %457 = phi i32 [ 0, %435 ], [ %558, %437 ]
  %458 = phi i64 [ 0, %435 ], [ %559, %437 ]
  %459 = mul nuw nsw i64 %458, 20
  %460 = getelementptr inbounds i64, i64* %306, i64 %459
  %461 = load i64, i64* %460, align 16, !tbaa !98
  %462 = trunc i64 %461 to i32
  %463 = add i32 %438, %462
  %464 = or i64 %459, 1
  %465 = getelementptr inbounds i64, i64* %306, i64 %464
  %466 = load i64, i64* %465, align 8, !tbaa !98
  %467 = trunc i64 %466 to i32
  %468 = add i32 %439, %467
  %469 = or i64 %459, 2
  %470 = getelementptr inbounds i64, i64* %306, i64 %469
  %471 = load i64, i64* %470, align 16, !tbaa !98
  %472 = trunc i64 %471 to i32
  %473 = add i32 %440, %472
  %474 = or i64 %459, 3
  %475 = getelementptr inbounds i64, i64* %306, i64 %474
  %476 = load i64, i64* %475, align 8, !tbaa !98
  %477 = trunc i64 %476 to i32
  %478 = add i32 %441, %477
  %479 = add nuw nsw i64 %459, 4
  %480 = getelementptr inbounds i64, i64* %306, i64 %479
  %481 = load i64, i64* %480, align 16, !tbaa !98
  %482 = trunc i64 %481 to i32
  %483 = add i32 %442, %482
  %484 = add nuw nsw i64 %459, 5
  %485 = getelementptr inbounds i64, i64* %306, i64 %484
  %486 = load i64, i64* %485, align 8, !tbaa !98
  %487 = trunc i64 %486 to i32
  %488 = add i32 %443, %487
  %489 = add nuw nsw i64 %459, 6
  %490 = getelementptr inbounds i64, i64* %306, i64 %489
  %491 = load i64, i64* %490, align 16, !tbaa !98
  %492 = trunc i64 %491 to i32
  %493 = add i32 %444, %492
  %494 = add nuw nsw i64 %459, 7
  %495 = getelementptr inbounds i64, i64* %306, i64 %494
  %496 = load i64, i64* %495, align 8, !tbaa !98
  %497 = trunc i64 %496 to i32
  %498 = add i32 %445, %497
  %499 = add nuw nsw i64 %459, 8
  %500 = getelementptr inbounds i64, i64* %306, i64 %499
  %501 = load i64, i64* %500, align 16, !tbaa !98
  %502 = trunc i64 %501 to i32
  %503 = add i32 %446, %502
  %504 = add nuw nsw i64 %459, 9
  %505 = getelementptr inbounds i64, i64* %306, i64 %504
  %506 = load i64, i64* %505, align 8, !tbaa !98
  %507 = trunc i64 %506 to i32
  %508 = add i32 %447, %507
  %509 = add nuw nsw i64 %459, 10
  %510 = getelementptr inbounds i64, i64* %306, i64 %509
  %511 = load i64, i64* %510, align 16, !tbaa !98
  %512 = trunc i64 %511 to i32
  %513 = add i32 %448, %512
  %514 = add nuw nsw i64 %459, 11
  %515 = getelementptr inbounds i64, i64* %306, i64 %514
  %516 = load i64, i64* %515, align 8, !tbaa !98
  %517 = trunc i64 %516 to i32
  %518 = add i32 %449, %517
  %519 = add nuw nsw i64 %459, 12
  %520 = getelementptr inbounds i64, i64* %306, i64 %519
  %521 = load i64, i64* %520, align 16, !tbaa !98
  %522 = trunc i64 %521 to i32
  %523 = add i32 %450, %522
  %524 = add nuw nsw i64 %459, 13
  %525 = getelementptr inbounds i64, i64* %306, i64 %524
  %526 = load i64, i64* %525, align 8, !tbaa !98
  %527 = trunc i64 %526 to i32
  %528 = add i32 %451, %527
  %529 = add nuw nsw i64 %459, 14
  %530 = getelementptr inbounds i64, i64* %306, i64 %529
  %531 = load i64, i64* %530, align 16, !tbaa !98
  %532 = trunc i64 %531 to i32
  %533 = add i32 %452, %532
  %534 = add nuw nsw i64 %459, 15
  %535 = getelementptr inbounds i64, i64* %306, i64 %534
  %536 = load i64, i64* %535, align 8, !tbaa !98
  %537 = trunc i64 %536 to i32
  %538 = add i32 %453, %537
  %539 = add nuw nsw i64 %459, 16
  %540 = getelementptr inbounds i64, i64* %306, i64 %539
  %541 = load i64, i64* %540, align 16, !tbaa !98
  %542 = trunc i64 %541 to i32
  %543 = add i32 %454, %542
  %544 = add nuw nsw i64 %459, 17
  %545 = getelementptr inbounds i64, i64* %306, i64 %544
  %546 = load i64, i64* %545, align 8, !tbaa !98
  %547 = trunc i64 %546 to i32
  %548 = add i32 %455, %547
  %549 = add nuw nsw i64 %459, 18
  %550 = getelementptr inbounds i64, i64* %306, i64 %549
  %551 = load i64, i64* %550, align 16, !tbaa !98
  %552 = trunc i64 %551 to i32
  %553 = add i32 %456, %552
  %554 = add nuw nsw i64 %459, 19
  %555 = getelementptr inbounds i64, i64* %306, i64 %554
  %556 = load i64, i64* %555, align 8, !tbaa !98
  %557 = trunc i64 %556 to i32
  %558 = add i32 %457, %557
  %559 = add nuw nsw i64 %458, 1
  %560 = icmp eq i64 %559, %436
  br i1 %560, label %561, label %437, !llvm.loop !100

561:                                              ; preds = %437, %301, %434
  %562 = phi i32 [ %431, %434 ], [ 0, %301 ], [ %431, %437 ]
  %563 = phi i32 [ %426, %434 ], [ 0, %301 ], [ %426, %437 ]
  %564 = phi i32 [ %421, %434 ], [ 0, %301 ], [ %421, %437 ]
  %565 = phi i32 [ %416, %434 ], [ 0, %301 ], [ %416, %437 ]
  %566 = phi i32 [ %411, %434 ], [ 0, %301 ], [ %411, %437 ]
  %567 = phi i32 [ %406, %434 ], [ 0, %301 ], [ %406, %437 ]
  %568 = phi i32 [ %401, %434 ], [ 0, %301 ], [ %401, %437 ]
  %569 = phi i32 [ %396, %434 ], [ 0, %301 ], [ %396, %437 ]
  %570 = phi i32 [ %391, %434 ], [ 0, %301 ], [ %391, %437 ]
  %571 = phi i32 [ %386, %434 ], [ 0, %301 ], [ %386, %437 ]
  %572 = phi i32 [ %381, %434 ], [ 0, %301 ], [ %381, %437 ]
  %573 = phi i32 [ %376, %434 ], [ 0, %301 ], [ %376, %437 ]
  %574 = phi i32 [ %371, %434 ], [ 0, %301 ], [ %371, %437 ]
  %575 = phi i32 [ %366, %434 ], [ 0, %301 ], [ %366, %437 ]
  %576 = phi i32 [ %361, %434 ], [ 0, %301 ], [ %361, %437 ]
  %577 = phi i32 [ %356, %434 ], [ 0, %301 ], [ %356, %437 ]
  %578 = phi i32 [ %351, %434 ], [ 0, %301 ], [ %351, %437 ]
  %579 = phi i32 [ %346, %434 ], [ 0, %301 ], [ %346, %437 ]
  %580 = phi i32 [ %341, %434 ], [ 0, %301 ], [ %341, %437 ]
  %581 = phi i32 [ %336, %434 ], [ 0, %301 ], [ %336, %437 ]
  %582 = phi i32 [ 0, %434 ], [ 0, %301 ], [ %463, %437 ]
  %583 = phi i32 [ 0, %434 ], [ 0, %301 ], [ %468, %437 ]
  %584 = phi i32 [ 0, %434 ], [ 0, %301 ], [ %473, %437 ]
  %585 = phi i32 [ 0, %434 ], [ 0, %301 ], [ %478, %437 ]
  %586 = phi i32 [ 0, %434 ], [ 0, %301 ], [ %483, %437 ]
  %587 = phi i32 [ 0, %434 ], [ 0, %301 ], [ %488, %437 ]
  %588 = phi i32 [ 0, %434 ], [ 0, %301 ], [ %493, %437 ]
  %589 = phi i32 [ 0, %434 ], [ 0, %301 ], [ %498, %437 ]
  %590 = phi i32 [ 0, %434 ], [ 0, %301 ], [ %503, %437 ]
  %591 = phi i32 [ 0, %434 ], [ 0, %301 ], [ %508, %437 ]
  %592 = phi i32 [ 0, %434 ], [ 0, %301 ], [ %513, %437 ]
  %593 = phi i32 [ 0, %434 ], [ 0, %301 ], [ %518, %437 ]
  %594 = phi i32 [ 0, %434 ], [ 0, %301 ], [ %523, %437 ]
  %595 = phi i32 [ 0, %434 ], [ 0, %301 ], [ %528, %437 ]
  %596 = phi i32 [ 0, %434 ], [ 0, %301 ], [ %533, %437 ]
  %597 = phi i32 [ 0, %434 ], [ 0, %301 ], [ %538, %437 ]
  %598 = phi i32 [ 0, %434 ], [ 0, %301 ], [ %543, %437 ]
  %599 = phi i32 [ 0, %434 ], [ 0, %301 ], [ %548, %437 ]
  %600 = phi i32 [ 0, %434 ], [ 0, %301 ], [ %553, %437 ]
  %601 = phi i32 [ 0, %434 ], [ 0, %301 ], [ %558, %437 ]
  %602 = getelementptr inbounds %struct.pb_Parameters, %struct.pb_Parameters* %39, i64 0, i32 0
  %603 = load i8*, i8** %602, align 8, !tbaa !3
  %604 = call %struct._IO_FILE* @fopen(i8* %603, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
  %605 = icmp eq %struct._IO_FILE* %604, null
  br i1 %605, label %606, label %610

606:                                              ; preds = %561
  %607 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %608 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %607, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.34, i64 0, i64 0), i8* %603) #27
  %609 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !9
  br label %610

610:                                              ; preds = %606, %561
  %611 = phi %struct._IO_FILE* [ %609, %606 ], [ %604, %561 ]
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 1)
  %612 = load i64, i64* %270, align 16, !tbaa !98
  %613 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %611, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 %612, i32 %582, i32 %581)
  %614 = getelementptr inbounds i64, i64* %270, i64 1
  %615 = load i64, i64* %614, align 8, !tbaa !98
  %616 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %611, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 %615, i32 %583, i32 %580)
  %617 = getelementptr inbounds i64, i64* %270, i64 2
  %618 = load i64, i64* %617, align 16, !tbaa !98
  %619 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %611, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 %618, i32 %584, i32 %579)
  %620 = getelementptr inbounds i64, i64* %270, i64 3
  %621 = load i64, i64* %620, align 8, !tbaa !98
  %622 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %611, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 %621, i32 %585, i32 %578)
  %623 = getelementptr inbounds i64, i64* %270, i64 4
  %624 = load i64, i64* %623, align 16, !tbaa !98
  %625 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %611, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 %624, i32 %586, i32 %577)
  %626 = getelementptr inbounds i64, i64* %270, i64 5
  %627 = load i64, i64* %626, align 8, !tbaa !98
  %628 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %611, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 %627, i32 %587, i32 %576)
  %629 = getelementptr inbounds i64, i64* %270, i64 6
  %630 = load i64, i64* %629, align 16, !tbaa !98
  %631 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %611, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 %630, i32 %588, i32 %575)
  %632 = getelementptr inbounds i64, i64* %270, i64 7
  %633 = load i64, i64* %632, align 8, !tbaa !98
  %634 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %611, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 %633, i32 %589, i32 %574)
  %635 = getelementptr inbounds i64, i64* %270, i64 8
  %636 = load i64, i64* %635, align 16, !tbaa !98
  %637 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %611, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 %636, i32 %590, i32 %573)
  %638 = getelementptr inbounds i64, i64* %270, i64 9
  %639 = load i64, i64* %638, align 8, !tbaa !98
  %640 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %611, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 %639, i32 %591, i32 %572)
  %641 = getelementptr inbounds i64, i64* %270, i64 10
  %642 = load i64, i64* %641, align 16, !tbaa !98
  %643 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %611, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 %642, i32 %592, i32 %571)
  %644 = getelementptr inbounds i64, i64* %270, i64 11
  %645 = load i64, i64* %644, align 8, !tbaa !98
  %646 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %611, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 %645, i32 %593, i32 %570)
  %647 = getelementptr inbounds i64, i64* %270, i64 12
  %648 = load i64, i64* %647, align 16, !tbaa !98
  %649 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %611, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 %648, i32 %594, i32 %569)
  %650 = getelementptr inbounds i64, i64* %270, i64 13
  %651 = load i64, i64* %650, align 8, !tbaa !98
  %652 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %611, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 %651, i32 %595, i32 %568)
  %653 = getelementptr inbounds i64, i64* %270, i64 14
  %654 = load i64, i64* %653, align 16, !tbaa !98
  %655 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %611, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 %654, i32 %596, i32 %567)
  %656 = getelementptr inbounds i64, i64* %270, i64 15
  %657 = load i64, i64* %656, align 8, !tbaa !98
  %658 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %611, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 %657, i32 %597, i32 %566)
  %659 = getelementptr inbounds i64, i64* %270, i64 16
  %660 = load i64, i64* %659, align 16, !tbaa !98
  %661 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %611, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 %660, i32 %598, i32 %565)
  %662 = getelementptr inbounds i64, i64* %270, i64 17
  %663 = load i64, i64* %662, align 8, !tbaa !98
  %664 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %611, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 %663, i32 %599, i32 %564)
  %665 = getelementptr inbounds i64, i64* %270, i64 18
  %666 = load i64, i64* %665, align 16, !tbaa !98
  %667 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %611, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 %666, i32 %600, i32 %563)
  %668 = getelementptr inbounds i64, i64* %270, i64 19
  %669 = load i64, i64* %668, align 8, !tbaa !98
  %670 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %611, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 %669, i32 %601, i32 %562)
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 6)
  %671 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !9
  %672 = icmp eq %struct._IO_FILE* %611, %671
  br i1 %672, label %675, label %673

673:                                              ; preds = %610
  %674 = call i32 @fclose(%struct._IO_FILE* %611)
  br label %675

675:                                              ; preds = %673, %610
  call void @free(i8* nonnull %251) #25
  call void @free(i8* %66) #25
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 3)
  %676 = load i8*, i8** %232, align 8, !tbaa !9
  %677 = call i32 @hipFree(i8* %676)
  %678 = load i8*, i8** %215, align 8, !tbaa !9
  %679 = call i32 @hipFree(i8* %678)
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 0)
  call void @pb_PrintTimerSet(%struct.pb_TimerSet* nonnull %5)
  call void @pb_FreeParameters(%struct.pb_Parameters* nonnull %39)
  br label %680

680:                                              ; preds = %298, %282, %274, %241, %675
  %681 = phi i32 [ -1, %241 ], [ 0, %675 ], [ -1, %298 ], [ -1, %282 ], [ -1, %274 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %231) #25
  br label %682

682:                                              ; preds = %219, %680
  %683 = phi i32 [ %681, %680 ], [ -1, %219 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %214) #25
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %40) #25
  call void @llvm.lifetime.end.p0i8(i64 288, i8* nonnull %9) #25
  ret i32 %683
}

declare dso_local i32 @hipMalloc(i8**, i64) local_unnamed_addr #12

declare dso_local i32 @hipGetLastError() local_unnamed_addr #12

declare dso_local i8* @hipGetErrorString(i32) local_unnamed_addr #12

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #12

declare dso_local i32 @hipFree(i8*) local_unnamed_addr #12

declare dso_local i32 @hipEventCreate(%struct.ihipEvent_t**) local_unnamed_addr #12

declare dso_local i32 @hipEventRecord(%struct.ihipEvent_t*, %struct.ihipStream_t*) local_unnamed_addr #12

declare dso_local i32 @hipEventElapsedTime(float*, %struct.ihipEvent_t*, %struct.ihipEvent_t*) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #22

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local float @cosf(float) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local float @sinf(float) local_unnamed_addr #17

declare dso_local i32 @hipMemcpyToSymbol(i8*, i8*, i64, i64, i32) local_unnamed_addr #12

declare dso_local i32 @__hipRegisterFunction(i8**, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32*) local_unnamed_addr

declare dso_local void @__hipRegisterVar(i8**, i8*, i8*, i8*, i32, i64, i32, i32) local_unnamed_addr

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
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i64*, float*, float*, float*, i32, i32)** @_Z9gen_histsPmPfS0_S0_ii to i8*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  tail call void @__hipRegisterVar(i8** %7, i8* bitcast ([21 x float]* @dev_binb to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i64 0, i64 0), i32 0, i64 84, i32 1, i32 0)
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
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #23

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strcpy(i8* noalias returned writeonly, i8* noalias nocapture readonly) local_unnamed_addr #24

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
attributes #14 = { mustprogress noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #20 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind }
attributes #24 = { argmemonly nofree nounwind willreturn }
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
!73 = !{!74, !5, i64 0}
!74 = !{!"_ZTS9_options_", !5, i64 0, !5, i64 8, !11, i64 16, !11, i64 20, !5, i64 24}
!75 = !{!74, !5, i64 8}
!76 = !{!74, !11, i64 16}
!77 = !{!74, !5, i64 24}
!78 = !{!74, !11, i64 20}
!79 = distinct !{!79, !14}
!80 = !{!81, !62, i64 0}
!81 = !{!"_ZTS9cartesian", !62, i64 0, !62, i64 4, !62, i64 8}
!82 = !{!81, !62, i64 4}
!83 = !{!81, !62, i64 8}
!84 = distinct !{!84, !14}
!85 = distinct !{!85, !14}
!86 = !{!87}
!87 = distinct !{!87, !88}
!88 = distinct !{!88, !"LVerDomain"}
!89 = !{!90, !91}
!90 = distinct !{!90, !88}
!91 = distinct !{!91, !88}
!92 = !{!90}
!93 = !{!91}
!94 = distinct !{!94, !14, !23}
!95 = distinct !{!95, !14, !23}
!96 = distinct !{!96, !14}
!97 = distinct !{!97, !14}
!98 = !{!37, !37, i64 0}
!99 = distinct !{!99, !14}
!100 = distinct !{!100, !14}
