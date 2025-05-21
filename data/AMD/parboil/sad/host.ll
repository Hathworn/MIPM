; ModuleID = 'sad.cpp'
source_filename = "sad.cpp"
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
%struct.hipArray = type { i8*, %struct.hipChannelFormatDesc, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct.image_i16 = type { i32, i32, i16* }

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
@_ZL4line = internal global [16 x i16] zeroinitializer, align 16
@.str.25 = private unnamed_addr constant [31 x i8] c"Expecting two input filenames\0A\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"Input images must be the same size\0A\00", align 1
@.str.27 = private unnamed_addr constant [53 x i8] c"Input image size must be an integral multiple of 16\0A\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"CUDA error: %s\0A\00", align 1
@_Z11mb_sad_calcPtS_ii = dso_local constant void (i16*, i16*, i32, i32)* @_Z26__device_stub__mb_sad_calcPtS_ii, align 8
@_Z17larger_sad_calc_8Ptii = dso_local constant void (i16*, i32, i32)* @_Z32__device_stub__larger_sad_calc_8Ptii, align 8
@_Z18larger_sad_calc_16Ptii = dso_local constant void (i16*, i32, i32)* @_Z33__device_stub__larger_sad_calc_16Ptii, align 8
@ref = internal global %struct.texture zeroinitializer, align 16
@.str.29 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"Cannot find file '%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"delete_argument\0A\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"next_argument\0A\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"Cannot open output file\0A\00", align 1
@0 = private unnamed_addr constant [22 x i8] c"_Z11mb_sad_calcPtS_ii\00", align 1
@1 = private unnamed_addr constant [26 x i8] c"_Z17larger_sad_calc_8Ptii\00", align 1
@2 = private unnamed_addr constant [27 x i8] c"_Z18larger_sad_calc_16Ptii\00", align 1
@3 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_sad.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]
@str = private unnamed_addr constant [9 x i8] c"Success.\00", align 1
@str.35 = private unnamed_addr constant [44 x i8] c"Computed SADs do not match expected values.\00", align 1

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
  %32 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %31) #26
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
  %47 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %46) #26
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
  %59 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %58) #26
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
  %112 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %111) #26
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

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local void @sad4_cpu(i16* nocapture writeonly %0, i16* nocapture readonly %1, i16* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #14 {
  %6 = alloca [256 x i16], align 16
  %7 = mul i32 %3, 27400
  %8 = mul i32 %7, %4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i16, i16* %0, i64 %9
  %11 = bitcast [256 x i16]* %6 to i8*
  %12 = shl nsw i32 %3, 4
  %13 = shl nsw i32 %4, 4
  %14 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 0
  %15 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 16
  %16 = bitcast i16* %15 to i8*
  %17 = sext i32 %12 to i64
  %18 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 32
  %19 = bitcast i16* %18 to i8*
  %20 = shl i32 %3, 5
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 48
  %23 = bitcast i16* %22 to i8*
  %24 = mul i32 %3, 48
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 64
  %27 = bitcast i16* %26 to i8*
  %28 = shl i32 %3, 6
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 80
  %31 = bitcast i16* %30 to i8*
  %32 = mul i32 %3, 80
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 96
  %35 = bitcast i16* %34 to i8*
  %36 = mul i32 %3, 96
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 112
  %39 = bitcast i16* %38 to i8*
  %40 = mul i32 %3, 112
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 128
  %43 = bitcast i16* %42 to i8*
  %44 = shl i32 %3, 7
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 144
  %47 = bitcast i16* %46 to i8*
  %48 = mul i32 %3, 144
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 160
  %51 = bitcast i16* %50 to i8*
  %52 = mul i32 %3, 160
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 176
  %55 = bitcast i16* %54 to i8*
  %56 = mul i32 %3, 176
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 192
  %59 = bitcast i16* %58 to i8*
  %60 = mul i32 %3, 192
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 208
  %63 = bitcast i16* %62 to i8*
  %64 = mul i32 %3, 208
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 224
  %67 = bitcast i16* %66 to i8*
  %68 = mul i32 %3, 224
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 240
  %71 = bitcast i16* %70 to i8*
  %72 = mul i32 %3, 240
  %73 = sext i32 %72 to i64
  %74 = add nsw i32 %12, -17
  %75 = add nsw i32 %13, -17
  %76 = add nsw i32 %13, -33
  %77 = add nsw i32 %13, -1
  %78 = add nsw i32 %12, -16
  %79 = add nsw i32 %12, -1
  %80 = sext i32 %79 to i64
  %81 = sext i32 %13 to i64
  %82 = sext i32 %74 to i64
  %83 = sext i32 %78 to i64
  %84 = shl nsw i32 %3, 8
  %85 = icmp sgt i32 %4, 0
  %86 = icmp sgt i32 %3, 0
  %87 = select i1 %85, i1 %86, i1 false
  br i1 %87, label %88, label %651

88:                                               ; preds = %5
  %89 = add nsw i32 %12, -33
  %90 = sext i32 %89 to i64
  %91 = zext i32 %3 to i64
  %92 = zext i32 %4 to i64
  %93 = zext i32 %3 to i64
  %94 = add nsw i64 %80, 1
  %95 = getelementptr i16, i16* %2, i64 %94
  %96 = getelementptr i16, i16* %2, i64 1
  %97 = getelementptr i16, i16* %2, i64 1
  br label %98

98:                                               ; preds = %88, %647
  %99 = phi i64 [ 0, %88 ], [ %648, %647 ]
  %100 = phi i32 [ 0, %88 ], [ %649, %647 ]
  %101 = mul nsw i64 %99, %91
  %102 = zext i32 %100 to i64
  %103 = getelementptr inbounds i16, i16* %1, i64 %102
  %104 = trunc i64 %99 to i32
  %105 = shl nsw i32 %104, 4
  %106 = icmp eq i64 %99, 0
  %107 = icmp slt i32 %76, %105
  br label %108

108:                                              ; preds = %98, %644
  %109 = phi i64 [ 0, %98 ], [ %645, %644 ]
  %110 = trunc i64 %109 to i32
  %111 = shl i32 %110, 4
  %112 = add i32 %111, -16
  %113 = trunc i64 %109 to i32
  %114 = shl i32 %113, 4
  %115 = add i32 %114, -16
  %116 = trunc i64 %109 to i32
  %117 = shl i32 %116, 4
  %118 = add i32 %117, -16
  %119 = trunc i64 %109 to i32
  %120 = shl i32 %119, 4
  %121 = add i32 %120, -16
  %122 = add nuw nsw i64 %109, %101
  %123 = mul nsw i64 %122, 17536
  %124 = getelementptr inbounds i16, i16* %10, i64 %123
  %125 = shl nsw i64 %109, 4
  %126 = getelementptr inbounds i16, i16* %103, i64 %125
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %11) #25
  %127 = bitcast i16* %126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %11, i8* noundef nonnull align 2 dereferenceable(32) %127, i64 32, i1 false) #25, !tbaa !73
  %128 = getelementptr i16, i16* %126, i64 %17
  %129 = bitcast i16* %128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %16, i8* noundef nonnull align 2 dereferenceable(32) %129, i64 32, i1 false) #25, !tbaa !73
  %130 = getelementptr i16, i16* %126, i64 %21
  %131 = bitcast i16* %130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %19, i8* noundef nonnull align 2 dereferenceable(32) %131, i64 32, i1 false) #25, !tbaa !73
  %132 = getelementptr i16, i16* %126, i64 %25
  %133 = bitcast i16* %132 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %23, i8* noundef nonnull align 2 dereferenceable(32) %133, i64 32, i1 false) #25, !tbaa !73
  %134 = getelementptr i16, i16* %126, i64 %29
  %135 = bitcast i16* %134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %27, i8* noundef nonnull align 2 dereferenceable(32) %135, i64 32, i1 false) #25, !tbaa !73
  %136 = getelementptr i16, i16* %126, i64 %33
  %137 = bitcast i16* %136 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %31, i8* noundef nonnull align 2 dereferenceable(32) %137, i64 32, i1 false) #25, !tbaa !73
  %138 = getelementptr i16, i16* %126, i64 %37
  %139 = bitcast i16* %138 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %35, i8* noundef nonnull align 2 dereferenceable(32) %139, i64 32, i1 false) #25, !tbaa !73
  %140 = getelementptr i16, i16* %126, i64 %41
  %141 = bitcast i16* %140 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %39, i8* noundef nonnull align 2 dereferenceable(32) %141, i64 32, i1 false) #25, !tbaa !73
  %142 = getelementptr i16, i16* %126, i64 %45
  %143 = bitcast i16* %142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %43, i8* noundef nonnull align 2 dereferenceable(32) %143, i64 32, i1 false) #25, !tbaa !73
  %144 = getelementptr i16, i16* %126, i64 %49
  %145 = bitcast i16* %144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %47, i8* noundef nonnull align 2 dereferenceable(32) %145, i64 32, i1 false) #25, !tbaa !73
  %146 = getelementptr i16, i16* %126, i64 %53
  %147 = bitcast i16* %146 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %51, i8* noundef nonnull align 2 dereferenceable(32) %147, i64 32, i1 false) #25, !tbaa !73
  %148 = getelementptr i16, i16* %126, i64 %57
  %149 = bitcast i16* %148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %55, i8* noundef nonnull align 2 dereferenceable(32) %149, i64 32, i1 false) #25, !tbaa !73
  %150 = getelementptr i16, i16* %126, i64 %61
  %151 = bitcast i16* %150 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %59, i8* noundef nonnull align 2 dereferenceable(32) %151, i64 32, i1 false) #25, !tbaa !73
  %152 = getelementptr i16, i16* %126, i64 %65
  %153 = bitcast i16* %152 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %63, i8* noundef nonnull align 2 dereferenceable(32) %153, i64 32, i1 false) #25, !tbaa !73
  %154 = getelementptr i16, i16* %126, i64 %69
  %155 = bitcast i16* %154 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %67, i8* noundef nonnull align 2 dereferenceable(32) %155, i64 32, i1 false) #25, !tbaa !73
  %156 = getelementptr i16, i16* %126, i64 %73
  %157 = bitcast i16* %156 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %71, i8* noundef nonnull align 2 dereferenceable(32) %157, i64 32, i1 false) #25, !tbaa !73
  %158 = icmp eq i64 %109, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %108
  %160 = icmp sgt i64 %125, %90
  %161 = select i1 %160, i1 true, i1 %106
  %162 = select i1 %161, i1 true, i1 %107
  br i1 %162, label %163, label %164

163:                                              ; preds = %159, %108
  br label %164

164:                                              ; preds = %163, %159
  %165 = phi i1 [ false, %163 ], [ true, %159 ]
  br label %166

166:                                              ; preds = %641, %164
  %167 = phi i64 [ %172, %641 ], [ 0, %164 ]
  %168 = phi i32 [ %642, %641 ], [ -16, %164 ]
  %169 = add nsw i32 %168, %105
  %170 = icmp sgt i32 %169, -1
  %171 = icmp sle i32 %169, %75
  %172 = add nuw nsw i64 %167, 33
  br label %173

173:                                              ; preds = %636, %166
  %174 = phi i32 [ %640, %636 ], [ 0, %166 ]
  %175 = phi i64 [ %638, %636 ], [ %167, %166 ]
  %176 = phi i64 [ %637, %636 ], [ -16, %166 ]
  %177 = add i32 %112, %174
  %178 = icmp ugt i32 %177, -16
  %179 = select i1 %178, i32 %177, i32 -16
  %180 = sub nsw i32 0, %179
  %181 = zext i32 %180 to i64
  %182 = add i32 %115, %174
  %183 = icmp ugt i32 %182, -16
  %184 = select i1 %183, i32 %182, i32 -16
  %185 = sub nsw i32 0, %184
  %186 = and i32 %185, -4
  %187 = zext i32 %186 to i64
  %188 = add nsw i64 %187, -4
  %189 = lshr exact i64 %188, 2
  %190 = add nuw nsw i64 %189, 1
  %191 = add i32 %118, %174
  %192 = icmp ugt i32 %191, -16
  %193 = select i1 %192, i32 %191, i32 -16
  %194 = sub nsw i32 0, %193
  %195 = zext i32 %194 to i64
  %196 = add i32 %121, %174
  %197 = icmp ugt i32 %196, -16
  %198 = select i1 %197, i32 %196, i32 -16
  %199 = sub nsw i32 0, %198
  %200 = zext i32 %199 to i64
  %201 = getelementptr [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %200
  %202 = add nsw i64 %176, %125
  br i1 %165, label %212, label %203

203:                                              ; preds = %173
  br i1 %170, label %204, label %209

204:                                              ; preds = %203
  %205 = icmp sgt i64 %202, -1
  %206 = select i1 %171, i1 %205, i1 false
  %207 = icmp sle i64 %202, %82
  %208 = select i1 %206, i1 %207, i1 false
  br label %209

209:                                              ; preds = %204, %203
  %210 = phi i1 [ false, %203 ], [ %208, %204 ]
  %211 = xor i1 %210, true
  br label %212

212:                                              ; preds = %209, %173
  %213 = phi i1 [ false, %173 ], [ %211, %209 ]
  %214 = icmp slt i64 %202, 0
  %215 = icmp sgt i64 %202, %83
  %216 = select i1 %214, i1 true, i1 %215
  %217 = trunc i64 %202 to i32
  %218 = and i64 %202, 4294967295
  %219 = icmp ugt i32 %217, -16
  %220 = select i1 %219, i32 %217, i32 -16
  %221 = sub nsw i32 0, %220
  %222 = zext i32 %221 to i64
  %223 = add nuw nsw i64 %175, 1096
  %224 = add nuw nsw i64 %175, 2192
  %225 = add nuw nsw i64 %175, 3288
  %226 = getelementptr inbounds i16, i16* %2, i64 %202
  %227 = icmp ult i32 %194, 4
  %228 = and i64 %195, 28
  %229 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %217, i64 0
  %230 = and i64 %190, 3
  %231 = icmp ult i64 %188, 12
  %232 = and i64 %190, 9223372036854775804
  %233 = icmp eq i64 %230, 0
  %234 = icmp eq i64 %228, %195
  %235 = and i64 %181, 3
  %236 = icmp eq i64 %235, 0
  br label %237

237:                                              ; preds = %622, %212
  %238 = phi i16* [ %124, %212 ], [ %633, %622 ]
  %239 = phi i16* [ %14, %212 ], [ %623, %622 ]
  %240 = phi i32 [ %169, %212 ], [ %624, %622 ]
  %241 = phi i32 [ 0, %212 ], [ %634, %622 ]
  %242 = sext i32 %240 to i64
  br label %243

243:                                              ; preds = %570, %237
  %244 = phi i64 [ %242, %237 ], [ %572, %570 ]
  %245 = phi i32 [ 0, %237 ], [ %619, %570 ]
  %246 = phi i32 [ 0, %237 ], [ %608, %570 ]
  %247 = phi i32 [ 0, %237 ], [ %596, %570 ]
  %248 = phi i32 [ 0, %237 ], [ %584, %570 ]
  %249 = phi i16* [ %239, %237 ], [ %617, %570 ]
  %250 = phi i32 [ 0, %237 ], [ %620, %570 ]
  br i1 %213, label %254, label %251

251:                                              ; preds = %243
  %252 = mul nsw i64 %244, %17
  %253 = getelementptr inbounds i16, i16* %226, i64 %252
  br label %570

254:                                              ; preds = %243
  %255 = icmp slt i64 %244, 0
  %256 = icmp slt i64 %244, %81
  %257 = trunc i64 %244 to i32
  %258 = select i1 %256, i32 %257, i32 %77
  %259 = select i1 %255, i32 0, i32 %258
  %260 = mul nsw i32 %259, %12
  %261 = sext i32 %260 to i64
  %262 = getelementptr i16, i16* %2, i64 %261
  br i1 %216, label %265, label %263

263:                                              ; preds = %254
  %264 = getelementptr inbounds i16, i16* %262, i64 %218
  br label %570

265:                                              ; preds = %254
  br i1 %214, label %266, label %363

266:                                              ; preds = %265
  br i1 %227, label %326, label %267

267:                                              ; preds = %266
  %268 = getelementptr i16, i16* %97, i64 %261
  %269 = icmp ugt i16* %268, getelementptr inbounds ([16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 0)
  %270 = icmp ult i16* %262, %201
  %271 = and i1 %269, %270
  br i1 %271, label %326, label %272

272:                                              ; preds = %267
  br i1 %231, label %305, label %273

273:                                              ; preds = %272
  %274 = load i16, i16* %262, align 2, !tbaa !73, !alias.scope !75
  %275 = insertelement <4 x i16> poison, i16 %274, i64 0
  %276 = shufflevector <4 x i16> %275, <4 x i16> poison, <4 x i32> zeroinitializer
  %277 = load i16, i16* %262, align 2, !tbaa !73, !alias.scope !75
  %278 = insertelement <4 x i16> poison, i16 %277, i64 0
  %279 = shufflevector <4 x i16> %278, <4 x i16> poison, <4 x i32> zeroinitializer
  %280 = load i16, i16* %262, align 2, !tbaa !73, !alias.scope !75
  %281 = insertelement <4 x i16> poison, i16 %280, i64 0
  %282 = shufflevector <4 x i16> %281, <4 x i16> poison, <4 x i32> zeroinitializer
  %283 = load i16, i16* %262, align 2, !tbaa !73, !alias.scope !75
  %284 = insertelement <4 x i16> poison, i16 %283, i64 0
  %285 = shufflevector <4 x i16> %284, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %286

286:                                              ; preds = %286, %273
  %287 = phi i64 [ 0, %273 ], [ %302, %286 ]
  %288 = phi <4 x i32> [ %229, %273 ], [ %301, %286 ]
  %289 = phi i64 [ 0, %273 ], [ %303, %286 ]
  %290 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %287
  %291 = bitcast i16* %290 to <4 x i16>*
  store <4 x i16> %276, <4 x i16>* %291, align 16, !tbaa !73, !alias.scope !78, !noalias !75
  %292 = or i64 %287, 4
  %293 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %292
  %294 = bitcast i16* %293 to <4 x i16>*
  store <4 x i16> %279, <4 x i16>* %294, align 8, !tbaa !73, !alias.scope !78, !noalias !75
  %295 = or i64 %287, 8
  %296 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %295
  %297 = bitcast i16* %296 to <4 x i16>*
  store <4 x i16> %282, <4 x i16>* %297, align 16, !tbaa !73, !alias.scope !78, !noalias !75
  %298 = or i64 %287, 12
  %299 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %298
  %300 = bitcast i16* %299 to <4 x i16>*
  store <4 x i16> %285, <4 x i16>* %300, align 8, !tbaa !73, !alias.scope !78, !noalias !75
  %301 = add <4 x i32> %288, <i32 4, i32 4, i32 4, i32 4>
  %302 = add nuw i64 %287, 16
  %303 = add nuw i64 %289, 4
  %304 = icmp eq i64 %303, %232
  br i1 %304, label %305, label %286, !llvm.loop !80

305:                                              ; preds = %286, %272
  %306 = phi <4 x i32> [ undef, %272 ], [ %301, %286 ]
  %307 = phi i64 [ 0, %272 ], [ %302, %286 ]
  %308 = phi <4 x i32> [ %229, %272 ], [ %301, %286 ]
  br i1 %233, label %323, label %309

309:                                              ; preds = %305
  %310 = load i16, i16* %262, align 2, !tbaa !73, !alias.scope !75
  %311 = insertelement <4 x i16> poison, i16 %310, i64 0
  %312 = shufflevector <4 x i16> %311, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %313

313:                                              ; preds = %313, %309
  %314 = phi i64 [ %307, %309 ], [ %320, %313 ]
  %315 = phi <4 x i32> [ %308, %309 ], [ %319, %313 ]
  %316 = phi i64 [ 0, %309 ], [ %321, %313 ]
  %317 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %314
  %318 = bitcast i16* %317 to <4 x i16>*
  store <4 x i16> %312, <4 x i16>* %318, align 8, !tbaa !73, !alias.scope !78, !noalias !75
  %319 = add <4 x i32> %315, <i32 1, i32 1, i32 1, i32 1>
  %320 = add nuw i64 %314, 4
  %321 = add i64 %316, 1
  %322 = icmp eq i64 %321, %230
  br i1 %322, label %323, label %313, !llvm.loop !81

323:                                              ; preds = %313, %305
  %324 = phi <4 x i32> [ %306, %305 ], [ %319, %313 ]
  %325 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %324)
  br i1 %234, label %363, label %326

326:                                              ; preds = %267, %266, %323
  %327 = phi i64 [ 0, %267 ], [ 0, %266 ], [ %228, %323 ]
  %328 = phi i32 [ %217, %267 ], [ %217, %266 ], [ %325, %323 ]
  %329 = xor i64 %327, -1
  %330 = add nsw i64 %329, %181
  br i1 %236, label %341, label %331

331:                                              ; preds = %326, %331
  %332 = phi i64 [ %338, %331 ], [ %327, %326 ]
  %333 = phi i32 [ %337, %331 ], [ %328, %326 ]
  %334 = phi i64 [ %339, %331 ], [ 0, %326 ]
  %335 = load i16, i16* %262, align 2, !tbaa !73
  %336 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %332
  store i16 %335, i16* %336, align 2, !tbaa !73
  %337 = add nsw i32 %333, 1
  %338 = add nuw nsw i64 %332, 1
  %339 = add i64 %334, 1
  %340 = icmp eq i64 %339, %235
  br i1 %340, label %341, label %331, !llvm.loop !82

341:                                              ; preds = %331, %326
  %342 = phi i32 [ undef, %326 ], [ %337, %331 ]
  %343 = phi i64 [ %327, %326 ], [ %338, %331 ]
  %344 = phi i32 [ %328, %326 ], [ %337, %331 ]
  %345 = icmp ult i64 %330, 3
  br i1 %345, label %363, label %346

346:                                              ; preds = %341, %346
  %347 = phi i64 [ %361, %346 ], [ %343, %341 ]
  %348 = phi i32 [ %360, %346 ], [ %344, %341 ]
  %349 = load i16, i16* %262, align 2, !tbaa !73
  %350 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %347
  store i16 %349, i16* %350, align 2, !tbaa !73
  %351 = add nuw nsw i64 %347, 1
  %352 = load i16, i16* %262, align 2, !tbaa !73
  %353 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %351
  store i16 %352, i16* %353, align 2, !tbaa !73
  %354 = add nuw nsw i64 %347, 2
  %355 = load i16, i16* %262, align 2, !tbaa !73
  %356 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %354
  store i16 %355, i16* %356, align 2, !tbaa !73
  %357 = add nuw nsw i64 %347, 3
  %358 = load i16, i16* %262, align 2, !tbaa !73
  %359 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %357
  store i16 %358, i16* %359, align 2, !tbaa !73
  %360 = add nsw i32 %348, 4
  %361 = add nuw nsw i64 %347, 4
  %362 = icmp eq i64 %361, %222
  br i1 %362, label %363, label %346, !llvm.loop !83

363:                                              ; preds = %341, %346, %323, %265
  %364 = phi i32 [ %217, %265 ], [ %325, %323 ], [ %342, %341 ], [ %360, %346 ]
  %365 = phi i32 [ 0, %265 ], [ %221, %323 ], [ %221, %346 ], [ %221, %341 ]
  %366 = icmp slt i32 %364, %12
  %367 = icmp ult i32 %365, 16
  %368 = select i1 %366, i1 %367, i1 false
  br i1 %368, label %369, label %483

369:                                              ; preds = %363
  %370 = zext i32 %365 to i64
  %371 = sext i32 %364 to i64
  %372 = xor i64 %371, -1
  %373 = add nsw i64 %372, %17
  %374 = sub nsw i64 15, %370
  %375 = icmp eq i64 %373, 0
  %376 = icmp ult i64 %374, %373
  %377 = select i1 %376, i64 %374, i64 %373
  %378 = add nsw i64 %377, 1
  %379 = select i1 %375, i64 1, i64 %378
  %380 = icmp ult i64 %379, 8
  br i1 %380, label %466, label %381

381:                                              ; preds = %369
  %382 = getelementptr [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %370
  %383 = xor i64 %371, -1
  %384 = add nsw i64 %383, %17
  %385 = sub nsw i64 15, %370
  %386 = icmp eq i64 %384, 0
  %387 = icmp ult i64 %385, %384
  %388 = select i1 %387, i64 %385, i64 %384
  %389 = select i1 %386, i64 0, i64 %388
  %390 = add nsw i64 %389, %370
  %391 = getelementptr i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 1), i64 %390
  %392 = add nsw i64 %371, %261
  %393 = getelementptr i16, i16* %2, i64 %392
  %394 = add nsw i64 %389, %371
  %395 = add nsw i64 %394, %261
  %396 = getelementptr i16, i16* %96, i64 %395
  %397 = icmp ult i16* %382, %396
  %398 = icmp ult i16* %393, %391
  %399 = and i1 %397, %398
  br i1 %399, label %466, label %400

400:                                              ; preds = %381
  %401 = and i64 %379, -8
  %402 = add i64 %401, %371
  %403 = add i64 %401, %370
  %404 = add i64 %401, -8
  %405 = lshr exact i64 %404, 3
  %406 = add nuw nsw i64 %405, 1
  %407 = and i64 %406, 3
  %408 = icmp ult i64 %404, 24
  br i1 %408, label %448, label %409

409:                                              ; preds = %400
  %410 = and i64 %406, 4611686018427387900
  br label %411

411:                                              ; preds = %411, %409
  %412 = phi i64 [ 0, %409 ], [ %445, %411 ]
  %413 = phi i64 [ 0, %409 ], [ %446, %411 ]
  %414 = add i64 %412, %371
  %415 = add i64 %412, %370
  %416 = getelementptr inbounds i16, i16* %262, i64 %414
  %417 = bitcast i16* %416 to <8 x i16>*
  %418 = load <8 x i16>, <8 x i16>* %417, align 2, !tbaa !73, !alias.scope !84
  %419 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %415
  %420 = bitcast i16* %419 to <8 x i16>*
  store <8 x i16> %418, <8 x i16>* %420, align 2, !tbaa !73, !alias.scope !87, !noalias !84
  %421 = or i64 %412, 8
  %422 = add i64 %421, %371
  %423 = add i64 %421, %370
  %424 = getelementptr inbounds i16, i16* %262, i64 %422
  %425 = bitcast i16* %424 to <8 x i16>*
  %426 = load <8 x i16>, <8 x i16>* %425, align 2, !tbaa !73, !alias.scope !84
  %427 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %423
  %428 = bitcast i16* %427 to <8 x i16>*
  store <8 x i16> %426, <8 x i16>* %428, align 2, !tbaa !73, !alias.scope !87, !noalias !84
  %429 = or i64 %412, 16
  %430 = add i64 %429, %371
  %431 = add i64 %429, %370
  %432 = getelementptr inbounds i16, i16* %262, i64 %430
  %433 = bitcast i16* %432 to <8 x i16>*
  %434 = load <8 x i16>, <8 x i16>* %433, align 2, !tbaa !73, !alias.scope !84
  %435 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %431
  %436 = bitcast i16* %435 to <8 x i16>*
  store <8 x i16> %434, <8 x i16>* %436, align 2, !tbaa !73, !alias.scope !87, !noalias !84
  %437 = or i64 %412, 24
  %438 = add i64 %437, %371
  %439 = add i64 %437, %370
  %440 = getelementptr inbounds i16, i16* %262, i64 %438
  %441 = bitcast i16* %440 to <8 x i16>*
  %442 = load <8 x i16>, <8 x i16>* %441, align 2, !tbaa !73, !alias.scope !84
  %443 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %439
  %444 = bitcast i16* %443 to <8 x i16>*
  store <8 x i16> %442, <8 x i16>* %444, align 2, !tbaa !73, !alias.scope !87, !noalias !84
  %445 = add nuw i64 %412, 32
  %446 = add i64 %413, 4
  %447 = icmp eq i64 %446, %410
  br i1 %447, label %448, label %411, !llvm.loop !89

448:                                              ; preds = %411, %400
  %449 = phi i64 [ 0, %400 ], [ %445, %411 ]
  %450 = icmp eq i64 %407, 0
  br i1 %450, label %464, label %451

451:                                              ; preds = %448, %451
  %452 = phi i64 [ %461, %451 ], [ %449, %448 ]
  %453 = phi i64 [ %462, %451 ], [ 0, %448 ]
  %454 = add i64 %452, %371
  %455 = add i64 %452, %370
  %456 = getelementptr inbounds i16, i16* %262, i64 %454
  %457 = bitcast i16* %456 to <8 x i16>*
  %458 = load <8 x i16>, <8 x i16>* %457, align 2, !tbaa !73, !alias.scope !84
  %459 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %455
  %460 = bitcast i16* %459 to <8 x i16>*
  store <8 x i16> %458, <8 x i16>* %460, align 2, !tbaa !73, !alias.scope !87, !noalias !84
  %461 = add nuw i64 %452, 8
  %462 = add i64 %453, 1
  %463 = icmp eq i64 %462, %407
  br i1 %463, label %464, label %451, !llvm.loop !90

464:                                              ; preds = %451, %448
  %465 = icmp eq i64 %379, %401
  br i1 %465, label %480, label %466

466:                                              ; preds = %381, %369, %464
  %467 = phi i64 [ %371, %381 ], [ %371, %369 ], [ %402, %464 ]
  %468 = phi i64 [ %370, %381 ], [ %370, %369 ], [ %403, %464 ]
  br label %469

469:                                              ; preds = %466, %469
  %470 = phi i64 [ %475, %469 ], [ %467, %466 ]
  %471 = phi i64 [ %476, %469 ], [ %468, %466 ]
  %472 = getelementptr inbounds i16, i16* %262, i64 %470
  %473 = load i16, i16* %472, align 2, !tbaa !73
  %474 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %471
  store i16 %473, i16* %474, align 2, !tbaa !73
  %475 = add nsw i64 %470, 1
  %476 = add nuw nsw i64 %471, 1
  %477 = icmp slt i64 %475, %17
  %478 = icmp ult i64 %471, 15
  %479 = select i1 %477, i1 %478, i1 false
  br i1 %479, label %469, label %480, !llvm.loop !91

480:                                              ; preds = %469, %464
  %481 = phi i64 [ %403, %464 ], [ %476, %469 ]
  %482 = trunc i64 %481 to i32
  br label %483

483:                                              ; preds = %480, %363
  %484 = phi i32 [ %365, %363 ], [ %482, %480 ]
  %485 = getelementptr i16, i16* %262, i64 %80
  %486 = icmp ult i32 %484, 16
  br i1 %486, label %487, label %570

487:                                              ; preds = %483
  %488 = zext i32 %484 to i64
  %489 = sub nsw i64 16, %488
  %490 = icmp ult i64 %489, 8
  br i1 %490, label %538, label %491

491:                                              ; preds = %487
  %492 = getelementptr [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %488
  %493 = getelementptr i16, i16* %95, i64 %261
  %494 = icmp ult i16* %492, %493
  %495 = icmp ult i16* %485, getelementptr inbounds ([16 x i16], [16 x i16]* @_ZL4line, i64 1, i64 0)
  %496 = and i1 %494, %495
  br i1 %496, label %538, label %497

497:                                              ; preds = %491
  %498 = and i64 %489, -8
  %499 = add nsw i64 %498, %488
  %500 = add nsw i64 %498, -8
  %501 = lshr exact i64 %500, 3
  %502 = add nuw nsw i64 %501, 1
  %503 = and i64 %502, 1
  %504 = icmp eq i64 %500, 0
  br i1 %504, label %526, label %505

505:                                              ; preds = %497
  %506 = and i64 %502, 4611686018427387902
  %507 = load i16, i16* %485, align 2, !tbaa !73, !alias.scope !92
  %508 = insertelement <8 x i16> poison, i16 %507, i64 0
  %509 = shufflevector <8 x i16> %508, <8 x i16> poison, <8 x i32> zeroinitializer
  %510 = load i16, i16* %485, align 2, !tbaa !73, !alias.scope !92
  %511 = insertelement <8 x i16> poison, i16 %510, i64 0
  %512 = shufflevector <8 x i16> %511, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %513

513:                                              ; preds = %513, %505
  %514 = phi i64 [ 0, %505 ], [ %523, %513 ]
  %515 = phi i64 [ 0, %505 ], [ %524, %513 ]
  %516 = add i64 %514, %488
  %517 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %516
  %518 = bitcast i16* %517 to <8 x i16>*
  store <8 x i16> %509, <8 x i16>* %518, align 2, !tbaa !73, !alias.scope !95, !noalias !92
  %519 = or i64 %514, 8
  %520 = add i64 %519, %488
  %521 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %520
  %522 = bitcast i16* %521 to <8 x i16>*
  store <8 x i16> %512, <8 x i16>* %522, align 2, !tbaa !73, !alias.scope !95, !noalias !92
  %523 = add nuw i64 %514, 16
  %524 = add i64 %515, 2
  %525 = icmp eq i64 %524, %506
  br i1 %525, label %526, label %513, !llvm.loop !97

526:                                              ; preds = %513, %497
  %527 = phi i64 [ 0, %497 ], [ %523, %513 ]
  %528 = icmp eq i64 %503, 0
  br i1 %528, label %536, label %529

529:                                              ; preds = %526
  %530 = add i64 %527, %488
  %531 = load i16, i16* %485, align 2, !tbaa !73, !alias.scope !92
  %532 = insertelement <8 x i16> poison, i16 %531, i64 0
  %533 = shufflevector <8 x i16> %532, <8 x i16> poison, <8 x i32> zeroinitializer
  %534 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %530
  %535 = bitcast i16* %534 to <8 x i16>*
  store <8 x i16> %533, <8 x i16>* %535, align 2, !tbaa !73, !alias.scope !95, !noalias !92
  br label %536

536:                                              ; preds = %526, %529
  %537 = icmp eq i64 %489, %498
  br i1 %537, label %570, label %538

538:                                              ; preds = %491, %487, %536
  %539 = phi i64 [ %488, %491 ], [ %488, %487 ], [ %499, %536 ]
  %540 = sub nsw i64 0, %539
  %541 = and i64 %540, 3
  %542 = icmp eq i64 %541, 0
  br i1 %542, label %551, label %543

543:                                              ; preds = %538, %543
  %544 = phi i64 [ %548, %543 ], [ %539, %538 ]
  %545 = phi i64 [ %549, %543 ], [ 0, %538 ]
  %546 = load i16, i16* %485, align 2, !tbaa !73
  %547 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %544
  store i16 %546, i16* %547, align 2, !tbaa !73
  %548 = add nuw nsw i64 %544, 1
  %549 = add i64 %545, 1
  %550 = icmp eq i64 %549, %541
  br i1 %550, label %551, label %543, !llvm.loop !98

551:                                              ; preds = %543, %538
  %552 = phi i64 [ %539, %538 ], [ %548, %543 ]
  %553 = add nsw i64 %539, -13
  %554 = icmp ult i64 %553, 3
  br i1 %554, label %570, label %555

555:                                              ; preds = %551, %555
  %556 = phi i64 [ %568, %555 ], [ %552, %551 ]
  %557 = load i16, i16* %485, align 2, !tbaa !73
  %558 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %556
  store i16 %557, i16* %558, align 2, !tbaa !73
  %559 = add nuw nsw i64 %556, 1
  %560 = load i16, i16* %485, align 2, !tbaa !73
  %561 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %559
  store i16 %560, i16* %561, align 2, !tbaa !73
  %562 = add nuw nsw i64 %556, 2
  %563 = load i16, i16* %485, align 2, !tbaa !73
  %564 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %562
  store i16 %563, i16* %564, align 2, !tbaa !73
  %565 = add nuw nsw i64 %556, 3
  %566 = load i16, i16* %485, align 2, !tbaa !73
  %567 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %565
  store i16 %566, i16* %567, align 2, !tbaa !73
  %568 = add nuw nsw i64 %556, 4
  %569 = icmp eq i64 %568, 16
  br i1 %569, label %570, label %555, !llvm.loop !99

570:                                              ; preds = %551, %555, %536, %483, %263, %251
  %571 = phi i16* [ %253, %251 ], [ %264, %263 ], [ getelementptr inbounds ([16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 0), %483 ], [ getelementptr inbounds ([16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 0), %536 ], [ getelementptr inbounds ([16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 0), %555 ], [ getelementptr inbounds ([16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 0), %551 ]
  %572 = add nsw i64 %244, 1
  %573 = bitcast i16* %571 to <4 x i16>*
  %574 = load <4 x i16>, <4 x i16>* %573, align 2, !tbaa !73
  %575 = sext <4 x i16> %574 to <4 x i32>
  %576 = bitcast i16* %249 to <4 x i16>*
  %577 = load <4 x i16>, <4 x i16>* %576, align 2, !tbaa !73
  %578 = zext <4 x i16> %577 to <4 x i32>
  %579 = sub nsw <4 x i32> %575, %578
  %580 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %579, i1 true)
  %581 = getelementptr inbounds i16, i16* %571, i64 4
  %582 = getelementptr inbounds i16, i16* %249, i64 4
  %583 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %580)
  %584 = add nsw i32 %583, %248
  %585 = bitcast i16* %581 to <4 x i16>*
  %586 = load <4 x i16>, <4 x i16>* %585, align 2, !tbaa !73
  %587 = sext <4 x i16> %586 to <4 x i32>
  %588 = bitcast i16* %582 to <4 x i16>*
  %589 = load <4 x i16>, <4 x i16>* %588, align 2, !tbaa !73
  %590 = zext <4 x i16> %589 to <4 x i32>
  %591 = sub nsw <4 x i32> %587, %590
  %592 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %591, i1 true)
  %593 = getelementptr inbounds i16, i16* %571, i64 8
  %594 = getelementptr inbounds i16, i16* %249, i64 8
  %595 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %592)
  %596 = add nsw i32 %595, %247
  %597 = bitcast i16* %593 to <4 x i16>*
  %598 = load <4 x i16>, <4 x i16>* %597, align 2, !tbaa !73
  %599 = sext <4 x i16> %598 to <4 x i32>
  %600 = bitcast i16* %594 to <4 x i16>*
  %601 = load <4 x i16>, <4 x i16>* %600, align 2, !tbaa !73
  %602 = zext <4 x i16> %601 to <4 x i32>
  %603 = sub nsw <4 x i32> %599, %602
  %604 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %603, i1 true)
  %605 = getelementptr inbounds i16, i16* %571, i64 12
  %606 = getelementptr inbounds i16, i16* %249, i64 12
  %607 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %604)
  %608 = add nsw i32 %607, %246
  %609 = bitcast i16* %605 to <4 x i16>*
  %610 = load <4 x i16>, <4 x i16>* %609, align 2, !tbaa !73
  %611 = sext <4 x i16> %610 to <4 x i32>
  %612 = bitcast i16* %606 to <4 x i16>*
  %613 = load <4 x i16>, <4 x i16>* %612, align 2, !tbaa !73
  %614 = zext <4 x i16> %613 to <4 x i32>
  %615 = sub nsw <4 x i32> %611, %614
  %616 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %615, i1 true)
  %617 = getelementptr inbounds i16, i16* %249, i64 16
  %618 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %616)
  %619 = add nsw i32 %618, %245
  %620 = add nuw nsw i32 %250, 1
  %621 = icmp eq i32 %620, 4
  br i1 %621, label %622, label %243, !llvm.loop !100

622:                                              ; preds = %570
  %623 = getelementptr i16, i16* %239, i64 64
  %624 = trunc i64 %572 to i32
  %625 = trunc i32 %584 to i16
  %626 = getelementptr inbounds i16, i16* %238, i64 %175
  store i16 %625, i16* %626, align 2, !tbaa !73
  %627 = trunc i32 %596 to i16
  %628 = getelementptr inbounds i16, i16* %238, i64 %223
  store i16 %627, i16* %628, align 2, !tbaa !73
  %629 = trunc i32 %608 to i16
  %630 = getelementptr inbounds i16, i16* %238, i64 %224
  store i16 %629, i16* %630, align 2, !tbaa !73
  %631 = trunc i32 %619 to i16
  %632 = getelementptr inbounds i16, i16* %238, i64 %225
  store i16 %631, i16* %632, align 2, !tbaa !73
  %633 = getelementptr inbounds i16, i16* %238, i64 4384
  %634 = add nuw nsw i32 %241, 1
  %635 = icmp eq i32 %634, 4
  br i1 %635, label %636, label %237, !llvm.loop !101

636:                                              ; preds = %622
  %637 = add nsw i64 %176, 1
  %638 = add nuw nsw i64 %175, 1
  %639 = icmp eq i64 %638, %172
  %640 = add i32 %174, 1
  br i1 %639, label %641, label %173, !llvm.loop !102

641:                                              ; preds = %636
  %642 = add nsw i32 %168, 1
  %643 = icmp eq i32 %642, 17
  br i1 %643, label %644, label %166, !llvm.loop !103

644:                                              ; preds = %641
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %11) #25
  %645 = add nuw nsw i64 %109, 1
  %646 = icmp eq i64 %645, %93
  br i1 %646, label %647, label %108, !llvm.loop !104

647:                                              ; preds = %644
  %648 = add nuw nsw i64 %99, 1
  %649 = add i32 %100, %84
  %650 = icmp eq i64 %648, %92
  br i1 %650, label %651, label %98, !llvm.loop !105

651:                                              ; preds = %647, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local i16* @create_padded_row(i16* readonly %0, i32 %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr #15 {
  %6 = icmp slt i32 %1, 0
  %7 = icmp slt i32 %1, %3
  %8 = add nsw i32 %3, -1
  %9 = select i1 %7, i32 %1, i32 %8
  %10 = select i1 %6, i32 0, i32 %9
  %11 = mul nsw i32 %10, %4
  %12 = sext i32 %11 to i64
  %13 = getelementptr i16, i16* %0, i64 %12
  %14 = icmp slt i32 %2, 0
  %15 = add nsw i32 %4, -16
  %16 = icmp slt i32 %15, %2
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %18, label %118

18:                                               ; preds = %5
  br i1 %14, label %19, label %121

19:                                               ; preds = %18
  %20 = icmp ugt i32 %2, -16
  %21 = select i1 %20, i32 %2, i32 -16
  %22 = sub nsw i32 0, %21
  %23 = zext i32 %22 to i64
  %24 = icmp ult i32 %22, 4
  br i1 %24, label %96, label %25

25:                                               ; preds = %19
  %26 = getelementptr [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %23
  %27 = add nsw i64 %12, 1
  %28 = getelementptr i16, i16* %0, i64 %27
  %29 = icmp ugt i16* %28, getelementptr inbounds ([16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 0)
  %30 = icmp ult i16* %13, %26
  %31 = and i1 %29, %30
  br i1 %31, label %96, label %32

32:                                               ; preds = %25
  %33 = and i64 %23, 28
  %34 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %2, i64 0
  %35 = add nsw i64 %33, -4
  %36 = lshr exact i64 %35, 2
  %37 = add nuw nsw i64 %36, 1
  %38 = and i64 %37, 3
  %39 = icmp ult i64 %35, 12
  br i1 %39, label %73, label %40

40:                                               ; preds = %32
  %41 = and i64 %37, 9223372036854775804
  %42 = load i16, i16* %13, align 2, !tbaa !73, !alias.scope !106
  %43 = insertelement <4 x i16> poison, i16 %42, i64 0
  %44 = shufflevector <4 x i16> %43, <4 x i16> poison, <4 x i32> zeroinitializer
  %45 = load i16, i16* %13, align 2, !tbaa !73, !alias.scope !106
  %46 = insertelement <4 x i16> poison, i16 %45, i64 0
  %47 = shufflevector <4 x i16> %46, <4 x i16> poison, <4 x i32> zeroinitializer
  %48 = load i16, i16* %13, align 2, !tbaa !73, !alias.scope !106
  %49 = insertelement <4 x i16> poison, i16 %48, i64 0
  %50 = shufflevector <4 x i16> %49, <4 x i16> poison, <4 x i32> zeroinitializer
  %51 = load i16, i16* %13, align 2, !tbaa !73, !alias.scope !106
  %52 = insertelement <4 x i16> poison, i16 %51, i64 0
  %53 = shufflevector <4 x i16> %52, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %54

54:                                               ; preds = %54, %40
  %55 = phi i64 [ 0, %40 ], [ %70, %54 ]
  %56 = phi <4 x i32> [ %34, %40 ], [ %69, %54 ]
  %57 = phi i64 [ 0, %40 ], [ %71, %54 ]
  %58 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %55
  %59 = bitcast i16* %58 to <4 x i16>*
  store <4 x i16> %44, <4 x i16>* %59, align 16, !tbaa !73, !alias.scope !109, !noalias !106
  %60 = or i64 %55, 4
  %61 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %60
  %62 = bitcast i16* %61 to <4 x i16>*
  store <4 x i16> %47, <4 x i16>* %62, align 8, !tbaa !73, !alias.scope !109, !noalias !106
  %63 = or i64 %55, 8
  %64 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %63
  %65 = bitcast i16* %64 to <4 x i16>*
  store <4 x i16> %50, <4 x i16>* %65, align 16, !tbaa !73, !alias.scope !109, !noalias !106
  %66 = or i64 %55, 12
  %67 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %66
  %68 = bitcast i16* %67 to <4 x i16>*
  store <4 x i16> %53, <4 x i16>* %68, align 8, !tbaa !73, !alias.scope !109, !noalias !106
  %69 = add <4 x i32> %56, <i32 4, i32 4, i32 4, i32 4>
  %70 = add nuw i64 %55, 16
  %71 = add nuw i64 %57, 4
  %72 = icmp eq i64 %71, %41
  br i1 %72, label %73, label %54, !llvm.loop !111

73:                                               ; preds = %54, %32
  %74 = phi <4 x i32> [ undef, %32 ], [ %69, %54 ]
  %75 = phi i64 [ 0, %32 ], [ %70, %54 ]
  %76 = phi <4 x i32> [ %34, %32 ], [ %69, %54 ]
  %77 = icmp eq i64 %38, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %73
  %79 = load i16, i16* %13, align 2, !tbaa !73, !alias.scope !106
  %80 = insertelement <4 x i16> poison, i16 %79, i64 0
  %81 = shufflevector <4 x i16> %80, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %82

82:                                               ; preds = %82, %78
  %83 = phi i64 [ %75, %78 ], [ %89, %82 ]
  %84 = phi <4 x i32> [ %76, %78 ], [ %88, %82 ]
  %85 = phi i64 [ 0, %78 ], [ %90, %82 ]
  %86 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %83
  %87 = bitcast i16* %86 to <4 x i16>*
  store <4 x i16> %81, <4 x i16>* %87, align 8, !tbaa !73, !alias.scope !109, !noalias !106
  %88 = add <4 x i32> %84, <i32 1, i32 1, i32 1, i32 1>
  %89 = add nuw i64 %83, 4
  %90 = add i64 %85, 1
  %91 = icmp eq i64 %90, %38
  br i1 %91, label %92, label %82, !llvm.loop !112

92:                                               ; preds = %82, %73
  %93 = phi <4 x i32> [ %74, %73 ], [ %88, %82 ]
  %94 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %93)
  %95 = icmp eq i64 %33, %23
  br i1 %95, label %121, label %96

96:                                               ; preds = %25, %19, %92
  %97 = phi i64 [ 0, %25 ], [ 0, %19 ], [ %33, %92 ]
  %98 = phi i32 [ %2, %25 ], [ %2, %19 ], [ %94, %92 ]
  %99 = xor i64 %97, -1
  %100 = add nsw i64 %99, %23
  %101 = and i64 %23, 3
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %113, label %103

103:                                              ; preds = %96, %103
  %104 = phi i64 [ %110, %103 ], [ %97, %96 ]
  %105 = phi i32 [ %109, %103 ], [ %98, %96 ]
  %106 = phi i64 [ %111, %103 ], [ 0, %96 ]
  %107 = load i16, i16* %13, align 2, !tbaa !73
  %108 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %104
  store i16 %107, i16* %108, align 2, !tbaa !73
  %109 = add nsw i32 %105, 1
  %110 = add nuw nsw i64 %104, 1
  %111 = add i64 %106, 1
  %112 = icmp eq i64 %111, %101
  br i1 %112, label %113, label %103, !llvm.loop !113

113:                                              ; preds = %103, %96
  %114 = phi i32 [ undef, %96 ], [ %109, %103 ]
  %115 = phi i64 [ %97, %96 ], [ %110, %103 ]
  %116 = phi i32 [ %98, %96 ], [ %109, %103 ]
  %117 = icmp ult i64 %100, 3
  br i1 %117, label %121, label %230

118:                                              ; preds = %5
  %119 = zext i32 %2 to i64
  %120 = getelementptr inbounds i16, i16* %13, i64 %119
  br label %352

121:                                              ; preds = %113, %230, %92, %18
  %122 = phi i32 [ %2, %18 ], [ %94, %92 ], [ %114, %113 ], [ %244, %230 ]
  %123 = phi i32 [ 0, %18 ], [ %22, %92 ], [ %22, %230 ], [ %22, %113 ]
  %124 = icmp slt i32 %122, %4
  %125 = icmp ult i32 %123, 16
  %126 = select i1 %124, i1 %125, i1 false
  br i1 %126, label %127, label %250

127:                                              ; preds = %121
  %128 = zext i32 %123 to i64
  %129 = sext i32 %122 to i64
  %130 = sext i32 %4 to i64
  %131 = xor i64 %129, -1
  %132 = add nsw i64 %131, %130
  %133 = sub nsw i64 15, %128
  %134 = icmp eq i64 %132, 0
  %135 = icmp ult i64 %133, %132
  %136 = select i1 %135, i64 %133, i64 %132
  %137 = add nsw i64 %136, 1
  %138 = select i1 %134, i64 1, i64 %137
  %139 = icmp ult i64 %138, 8
  br i1 %139, label %227, label %140

140:                                              ; preds = %127
  %141 = getelementptr [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %128
  %142 = xor i64 %129, -1
  %143 = add nsw i64 %142, %130
  %144 = sub nsw i64 15, %128
  %145 = icmp eq i64 %143, 0
  %146 = icmp ult i64 %144, %143
  %147 = select i1 %146, i64 %144, i64 %143
  %148 = select i1 %145, i64 0, i64 %147
  %149 = add nsw i64 %148, %128
  %150 = add nsw i64 %149, 1
  %151 = getelementptr [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %150
  %152 = add nsw i64 %129, %12
  %153 = getelementptr i16, i16* %0, i64 %152
  %154 = add nsw i64 %148, %129
  %155 = add nsw i64 %154, %12
  %156 = add i64 %155, 1
  %157 = getelementptr i16, i16* %0, i64 %156
  %158 = icmp ult i16* %141, %157
  %159 = icmp ult i16* %153, %151
  %160 = and i1 %158, %159
  br i1 %160, label %227, label %161

161:                                              ; preds = %140
  %162 = and i64 %138, -8
  %163 = add i64 %162, %129
  %164 = add i64 %162, %128
  %165 = add i64 %162, -8
  %166 = lshr exact i64 %165, 3
  %167 = add nuw nsw i64 %166, 1
  %168 = and i64 %167, 3
  %169 = icmp ult i64 %165, 24
  br i1 %169, label %209, label %170

170:                                              ; preds = %161
  %171 = and i64 %167, 4611686018427387900
  br label %172

172:                                              ; preds = %172, %170
  %173 = phi i64 [ 0, %170 ], [ %206, %172 ]
  %174 = phi i64 [ 0, %170 ], [ %207, %172 ]
  %175 = add i64 %173, %129
  %176 = add i64 %173, %128
  %177 = getelementptr inbounds i16, i16* %13, i64 %175
  %178 = bitcast i16* %177 to <8 x i16>*
  %179 = load <8 x i16>, <8 x i16>* %178, align 2, !tbaa !73, !alias.scope !114
  %180 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %176
  %181 = bitcast i16* %180 to <8 x i16>*
  store <8 x i16> %179, <8 x i16>* %181, align 2, !tbaa !73, !alias.scope !117, !noalias !114
  %182 = or i64 %173, 8
  %183 = add i64 %182, %129
  %184 = add i64 %182, %128
  %185 = getelementptr inbounds i16, i16* %13, i64 %183
  %186 = bitcast i16* %185 to <8 x i16>*
  %187 = load <8 x i16>, <8 x i16>* %186, align 2, !tbaa !73, !alias.scope !114
  %188 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %184
  %189 = bitcast i16* %188 to <8 x i16>*
  store <8 x i16> %187, <8 x i16>* %189, align 2, !tbaa !73, !alias.scope !117, !noalias !114
  %190 = or i64 %173, 16
  %191 = add i64 %190, %129
  %192 = add i64 %190, %128
  %193 = getelementptr inbounds i16, i16* %13, i64 %191
  %194 = bitcast i16* %193 to <8 x i16>*
  %195 = load <8 x i16>, <8 x i16>* %194, align 2, !tbaa !73, !alias.scope !114
  %196 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %192
  %197 = bitcast i16* %196 to <8 x i16>*
  store <8 x i16> %195, <8 x i16>* %197, align 2, !tbaa !73, !alias.scope !117, !noalias !114
  %198 = or i64 %173, 24
  %199 = add i64 %198, %129
  %200 = add i64 %198, %128
  %201 = getelementptr inbounds i16, i16* %13, i64 %199
  %202 = bitcast i16* %201 to <8 x i16>*
  %203 = load <8 x i16>, <8 x i16>* %202, align 2, !tbaa !73, !alias.scope !114
  %204 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %200
  %205 = bitcast i16* %204 to <8 x i16>*
  store <8 x i16> %203, <8 x i16>* %205, align 2, !tbaa !73, !alias.scope !117, !noalias !114
  %206 = add nuw i64 %173, 32
  %207 = add i64 %174, 4
  %208 = icmp eq i64 %207, %171
  br i1 %208, label %209, label %172, !llvm.loop !119

209:                                              ; preds = %172, %161
  %210 = phi i64 [ 0, %161 ], [ %206, %172 ]
  %211 = icmp eq i64 %168, 0
  br i1 %211, label %225, label %212

212:                                              ; preds = %209, %212
  %213 = phi i64 [ %222, %212 ], [ %210, %209 ]
  %214 = phi i64 [ %223, %212 ], [ 0, %209 ]
  %215 = add i64 %213, %129
  %216 = add i64 %213, %128
  %217 = getelementptr inbounds i16, i16* %13, i64 %215
  %218 = bitcast i16* %217 to <8 x i16>*
  %219 = load <8 x i16>, <8 x i16>* %218, align 2, !tbaa !73, !alias.scope !114
  %220 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %216
  %221 = bitcast i16* %220 to <8 x i16>*
  store <8 x i16> %219, <8 x i16>* %221, align 2, !tbaa !73, !alias.scope !117, !noalias !114
  %222 = add nuw i64 %213, 8
  %223 = add i64 %214, 1
  %224 = icmp eq i64 %223, %168
  br i1 %224, label %225, label %212, !llvm.loop !120

225:                                              ; preds = %212, %209
  %226 = icmp eq i64 %138, %162
  br i1 %226, label %247, label %227

227:                                              ; preds = %140, %127, %225
  %228 = phi i64 [ %129, %140 ], [ %129, %127 ], [ %163, %225 ]
  %229 = phi i64 [ %128, %140 ], [ %128, %127 ], [ %164, %225 ]
  br label %326

230:                                              ; preds = %113, %230
  %231 = phi i64 [ %245, %230 ], [ %115, %113 ]
  %232 = phi i32 [ %244, %230 ], [ %116, %113 ]
  %233 = load i16, i16* %13, align 2, !tbaa !73
  %234 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %231
  store i16 %233, i16* %234, align 2, !tbaa !73
  %235 = add nuw nsw i64 %231, 1
  %236 = load i16, i16* %13, align 2, !tbaa !73
  %237 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %235
  store i16 %236, i16* %237, align 2, !tbaa !73
  %238 = add nuw nsw i64 %231, 2
  %239 = load i16, i16* %13, align 2, !tbaa !73
  %240 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %238
  store i16 %239, i16* %240, align 2, !tbaa !73
  %241 = add nuw nsw i64 %231, 3
  %242 = load i16, i16* %13, align 2, !tbaa !73
  %243 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %241
  store i16 %242, i16* %243, align 2, !tbaa !73
  %244 = add nsw i32 %232, 4
  %245 = add nuw nsw i64 %231, 4
  %246 = icmp eq i64 %245, %23
  br i1 %246, label %121, label %230, !llvm.loop !121

247:                                              ; preds = %326, %225
  %248 = phi i64 [ %164, %225 ], [ %333, %326 ]
  %249 = trunc i64 %248 to i32
  br label %250

250:                                              ; preds = %247, %121
  %251 = phi i32 [ %123, %121 ], [ %249, %247 ]
  %252 = add nsw i32 %4, -1
  %253 = sext i32 %252 to i64
  %254 = getelementptr i16, i16* %13, i64 %253
  %255 = icmp ult i32 %251, 16
  br i1 %255, label %256, label %352

256:                                              ; preds = %250
  %257 = zext i32 %251 to i64
  %258 = sub nsw i64 16, %257
  %259 = icmp ult i64 %258, 8
  br i1 %259, label %309, label %260

260:                                              ; preds = %256
  %261 = getelementptr [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %257
  %262 = add nsw i64 %12, %253
  %263 = add nsw i64 %262, 1
  %264 = getelementptr i16, i16* %0, i64 %263
  %265 = icmp ult i16* %261, %264
  %266 = icmp ult i16* %254, getelementptr inbounds ([16 x i16], [16 x i16]* @_ZL4line, i64 1, i64 0)
  %267 = and i1 %265, %266
  br i1 %267, label %309, label %268

268:                                              ; preds = %260
  %269 = and i64 %258, -8
  %270 = add nsw i64 %269, %257
  %271 = add nsw i64 %269, -8
  %272 = lshr exact i64 %271, 3
  %273 = add nuw nsw i64 %272, 1
  %274 = and i64 %273, 1
  %275 = icmp eq i64 %271, 0
  br i1 %275, label %297, label %276

276:                                              ; preds = %268
  %277 = and i64 %273, 4611686018427387902
  %278 = load i16, i16* %254, align 2, !tbaa !73, !alias.scope !122
  %279 = insertelement <8 x i16> poison, i16 %278, i64 0
  %280 = shufflevector <8 x i16> %279, <8 x i16> poison, <8 x i32> zeroinitializer
  %281 = load i16, i16* %254, align 2, !tbaa !73, !alias.scope !122
  %282 = insertelement <8 x i16> poison, i16 %281, i64 0
  %283 = shufflevector <8 x i16> %282, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %284

284:                                              ; preds = %284, %276
  %285 = phi i64 [ 0, %276 ], [ %294, %284 ]
  %286 = phi i64 [ 0, %276 ], [ %295, %284 ]
  %287 = add i64 %285, %257
  %288 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %287
  %289 = bitcast i16* %288 to <8 x i16>*
  store <8 x i16> %280, <8 x i16>* %289, align 2, !tbaa !73, !alias.scope !125, !noalias !122
  %290 = or i64 %285, 8
  %291 = add i64 %290, %257
  %292 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %291
  %293 = bitcast i16* %292 to <8 x i16>*
  store <8 x i16> %283, <8 x i16>* %293, align 2, !tbaa !73, !alias.scope !125, !noalias !122
  %294 = add nuw i64 %285, 16
  %295 = add i64 %286, 2
  %296 = icmp eq i64 %295, %277
  br i1 %296, label %297, label %284, !llvm.loop !127

297:                                              ; preds = %284, %268
  %298 = phi i64 [ 0, %268 ], [ %294, %284 ]
  %299 = icmp eq i64 %274, 0
  br i1 %299, label %307, label %300

300:                                              ; preds = %297
  %301 = add i64 %298, %257
  %302 = load i16, i16* %254, align 2, !tbaa !73, !alias.scope !122
  %303 = insertelement <8 x i16> poison, i16 %302, i64 0
  %304 = shufflevector <8 x i16> %303, <8 x i16> poison, <8 x i32> zeroinitializer
  %305 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %301
  %306 = bitcast i16* %305 to <8 x i16>*
  store <8 x i16> %304, <8 x i16>* %306, align 2, !tbaa !73, !alias.scope !125, !noalias !122
  br label %307

307:                                              ; preds = %297, %300
  %308 = icmp eq i64 %258, %269
  br i1 %308, label %352, label %309

309:                                              ; preds = %260, %256, %307
  %310 = phi i64 [ %257, %260 ], [ %257, %256 ], [ %270, %307 ]
  %311 = sub nsw i64 0, %310
  %312 = and i64 %311, 3
  %313 = icmp eq i64 %312, 0
  br i1 %313, label %322, label %314

314:                                              ; preds = %309, %314
  %315 = phi i64 [ %319, %314 ], [ %310, %309 ]
  %316 = phi i64 [ %320, %314 ], [ 0, %309 ]
  %317 = load i16, i16* %254, align 2, !tbaa !73
  %318 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %315
  store i16 %317, i16* %318, align 2, !tbaa !73
  %319 = add nuw nsw i64 %315, 1
  %320 = add i64 %316, 1
  %321 = icmp eq i64 %320, %312
  br i1 %321, label %322, label %314, !llvm.loop !128

322:                                              ; preds = %314, %309
  %323 = phi i64 [ %310, %309 ], [ %319, %314 ]
  %324 = add nsw i64 %310, -13
  %325 = icmp ult i64 %324, 3
  br i1 %325, label %352, label %337

326:                                              ; preds = %227, %326
  %327 = phi i64 [ %332, %326 ], [ %228, %227 ]
  %328 = phi i64 [ %333, %326 ], [ %229, %227 ]
  %329 = getelementptr inbounds i16, i16* %13, i64 %327
  %330 = load i16, i16* %329, align 2, !tbaa !73
  %331 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %328
  store i16 %330, i16* %331, align 2, !tbaa !73
  %332 = add nsw i64 %327, 1
  %333 = add nuw nsw i64 %328, 1
  %334 = icmp slt i64 %332, %130
  %335 = icmp ult i64 %328, 15
  %336 = select i1 %334, i1 %335, i1 false
  br i1 %336, label %326, label %247, !llvm.loop !129

337:                                              ; preds = %322, %337
  %338 = phi i64 [ %350, %337 ], [ %323, %322 ]
  %339 = load i16, i16* %254, align 2, !tbaa !73
  %340 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %338
  store i16 %339, i16* %340, align 2, !tbaa !73
  %341 = add nuw nsw i64 %338, 1
  %342 = load i16, i16* %254, align 2, !tbaa !73
  %343 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %341
  store i16 %342, i16* %343, align 2, !tbaa !73
  %344 = add nuw nsw i64 %338, 2
  %345 = load i16, i16* %254, align 2, !tbaa !73
  %346 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %344
  store i16 %345, i16* %346, align 2, !tbaa !73
  %347 = add nuw nsw i64 %338, 3
  %348 = load i16, i16* %254, align 2, !tbaa !73
  %349 = getelementptr inbounds [16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 %347
  store i16 %348, i16* %349, align 2, !tbaa !73
  %350 = add nuw nsw i64 %338, 4
  %351 = icmp eq i64 %350, 16
  br i1 %351, label %352, label %337, !llvm.loop !130

352:                                              ; preds = %322, %337, %307, %250, %118
  %353 = phi i16* [ %120, %118 ], [ getelementptr inbounds ([16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 0), %250 ], [ getelementptr inbounds ([16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 0), %307 ], [ getelementptr inbounds ([16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 0), %337 ], [ getelementptr inbounds ([16 x i16], [16 x i16]* @_ZL4line, i64 0, i64 0), %322 ]
  ret i16* %353
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @larger_sads(i16* nocapture %0, i32 %1) local_unnamed_addr #15 {
  %3 = mul nsw i32 %1, 27400
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i16, i16* %0, i64 %4
  %6 = mul nsw i32 %1, 18632
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i16, i16* %0, i64 %7
  %9 = mul nsw i32 %1, 9864
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i16, i16* %0, i64 %10
  %12 = mul nsw i32 %1, 5480
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i16, i16* %0, i64 %13
  %15 = mul nsw i32 %1, 3288
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i16, i16* %0, i64 %16
  %18 = mul nsw i32 %1, 1096
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i16, i16* %0, i64 %19
  %21 = icmp sgt i32 %1, 0
  br i1 %21, label %22, label %3780

22:                                               ; preds = %2
  %23 = zext i32 %1 to i64
  %24 = getelementptr i16, i16* %0, i64 1090
  %25 = getelementptr i16, i16* %0, i64 %19
  %26 = add nsw i64 %19, 1090
  %27 = getelementptr i16, i16* %0, i64 %26
  %28 = add nsw i64 %19, 1096
  %29 = getelementptr i16, i16* %0, i64 %28
  %30 = add nsw i64 %19, 2186
  %31 = getelementptr i16, i16* %0, i64 %30
  %32 = add nsw i64 %19, 1096
  %33 = getelementptr i16, i16* %0, i64 %32
  %34 = add nsw i64 %19, 2186
  %35 = getelementptr i16, i16* %0, i64 %34
  %36 = add nsw i64 %13, 2192
  %37 = getelementptr i16, i16* %0, i64 %36
  %38 = add nsw i64 %13, 3282
  %39 = getelementptr i16, i16* %0, i64 %38
  %40 = add nsw i64 %13, 3288
  %41 = getelementptr i16, i16* %0, i64 %40
  %42 = add nsw i64 %13, 4378
  %43 = getelementptr i16, i16* %0, i64 %42
  %44 = getelementptr i16, i16* %0, i64 %19
  %45 = add nsw i64 %19, 1090
  %46 = getelementptr i16, i16* %0, i64 %45
  %47 = getelementptr i16, i16* %0, i64 %13
  %48 = add nsw i64 %13, 1090
  %49 = getelementptr i16, i16* %0, i64 %48
  %50 = add nsw i64 %13, 1096
  %51 = getelementptr i16, i16* %0, i64 %50
  %52 = add nsw i64 %13, 2186
  %53 = getelementptr i16, i16* %0, i64 %52
  %54 = add nsw i64 %16, 1096
  %55 = getelementptr i16, i16* %0, i64 %54
  %56 = add nsw i64 %16, 2186
  %57 = getelementptr i16, i16* %0, i64 %56
  %58 = add nsw i64 %13, 1096
  %59 = getelementptr i16, i16* %0, i64 %58
  %60 = add nsw i64 %13, 2186
  %61 = getelementptr i16, i16* %0, i64 %60
  %62 = add nsw i64 %13, 3288
  %63 = getelementptr i16, i16* %0, i64 %62
  %64 = add nsw i64 %13, 4378
  %65 = getelementptr i16, i16* %0, i64 %64
  %66 = getelementptr i16, i16* %0, i64 %16
  %67 = add nsw i64 %16, 1090
  %68 = getelementptr i16, i16* %0, i64 %67
  %69 = getelementptr i16, i16* %0, i64 %13
  %70 = add nsw i64 %13, 1090
  %71 = getelementptr i16, i16* %0, i64 %70
  %72 = add nsw i64 %13, 2192
  %73 = getelementptr i16, i16* %0, i64 %72
  %74 = add nsw i64 %13, 3282
  %75 = getelementptr i16, i16* %0, i64 %74
  %76 = add nsw i64 %13, 3288
  %77 = getelementptr i16, i16* %0, i64 %76
  %78 = add nsw i64 %13, 4378
  %79 = getelementptr i16, i16* %0, i64 %78
  %80 = add nsw i64 %10, 5480
  %81 = getelementptr i16, i16* %0, i64 %80
  %82 = add nsw i64 %10, 6570
  %83 = getelementptr i16, i16* %0, i64 %82
  %84 = add nsw i64 %10, 7672
  %85 = getelementptr i16, i16* %0, i64 %84
  %86 = add nsw i64 %10, 8762
  %87 = getelementptr i16, i16* %0, i64 %86
  %88 = add nsw i64 %13, 2192
  %89 = getelementptr i16, i16* %0, i64 %88
  %90 = add nsw i64 %13, 3282
  %91 = getelementptr i16, i16* %0, i64 %90
  %92 = add nsw i64 %10, 4384
  %93 = getelementptr i16, i16* %0, i64 %92
  %94 = add nsw i64 %10, 5474
  %95 = getelementptr i16, i16* %0, i64 %94
  %96 = add nsw i64 %10, 6576
  %97 = getelementptr i16, i16* %0, i64 %96
  %98 = add nsw i64 %10, 7666
  %99 = getelementptr i16, i16* %0, i64 %98
  %100 = add nsw i64 %13, 1096
  %101 = getelementptr i16, i16* %0, i64 %100
  %102 = add nsw i64 %13, 2186
  %103 = getelementptr i16, i16* %0, i64 %102
  %104 = add nsw i64 %10, 1096
  %105 = getelementptr i16, i16* %0, i64 %104
  %106 = add nsw i64 %10, 2186
  %107 = getelementptr i16, i16* %0, i64 %106
  %108 = add nsw i64 %10, 3288
  %109 = getelementptr i16, i16* %0, i64 %108
  %110 = add nsw i64 %10, 4378
  %111 = getelementptr i16, i16* %0, i64 %110
  %112 = getelementptr i16, i16* %0, i64 %13
  %113 = add nsw i64 %13, 1090
  %114 = getelementptr i16, i16* %0, i64 %113
  %115 = getelementptr i16, i16* %0, i64 %10
  %116 = add nsw i64 %10, 1090
  %117 = getelementptr i16, i16* %0, i64 %116
  %118 = add nsw i64 %10, 2192
  %119 = getelementptr i16, i16* %0, i64 %118
  %120 = add nsw i64 %10, 3282
  %121 = getelementptr i16, i16* %0, i64 %120
  %122 = add nsw i64 %10, 7672
  %123 = getelementptr i16, i16* %0, i64 %122
  %124 = add nsw i64 %10, 8762
  %125 = getelementptr i16, i16* %0, i64 %124
  %126 = add nsw i64 %4, 15344
  %127 = getelementptr i16, i16* %0, i64 %126
  %128 = add nsw i64 %4, 16434
  %129 = getelementptr i16, i16* %0, i64 %128
  %130 = add nsw i64 %4, 16440
  %131 = getelementptr i16, i16* %0, i64 %130
  %132 = add nsw i64 %4, 17530
  %133 = getelementptr i16, i16* %0, i64 %132
  %134 = add nsw i64 %10, 6576
  %135 = getelementptr i16, i16* %0, i64 %134
  %136 = add nsw i64 %10, 7666
  %137 = getelementptr i16, i16* %0, i64 %136
  %138 = add nsw i64 %4, 13152
  %139 = getelementptr i16, i16* %0, i64 %138
  %140 = add nsw i64 %4, 14242
  %141 = getelementptr i16, i16* %0, i64 %140
  %142 = add nsw i64 %4, 14248
  %143 = getelementptr i16, i16* %0, i64 %142
  %144 = add nsw i64 %4, 15338
  %145 = getelementptr i16, i16* %0, i64 %144
  %146 = add nsw i64 %10, 5480
  %147 = getelementptr i16, i16* %0, i64 %146
  %148 = add nsw i64 %10, 6570
  %149 = getelementptr i16, i16* %0, i64 %148
  %150 = add nsw i64 %4, 10960
  %151 = getelementptr i16, i16* %0, i64 %150
  %152 = add nsw i64 %4, 12050
  %153 = getelementptr i16, i16* %0, i64 %152
  %154 = add nsw i64 %4, 12056
  %155 = getelementptr i16, i16* %0, i64 %154
  %156 = add nsw i64 %4, 13146
  %157 = getelementptr i16, i16* %0, i64 %156
  %158 = add nsw i64 %10, 4384
  %159 = getelementptr i16, i16* %0, i64 %158
  %160 = add nsw i64 %10, 5474
  %161 = getelementptr i16, i16* %0, i64 %160
  %162 = add nsw i64 %4, 8768
  %163 = getelementptr i16, i16* %0, i64 %162
  %164 = add nsw i64 %4, 9858
  %165 = getelementptr i16, i16* %0, i64 %164
  %166 = add nsw i64 %4, 9864
  %167 = getelementptr i16, i16* %0, i64 %166
  %168 = add nsw i64 %4, 10954
  %169 = getelementptr i16, i16* %0, i64 %168
  %170 = add nsw i64 %10, 3288
  %171 = getelementptr i16, i16* %0, i64 %170
  %172 = add nsw i64 %10, 4378
  %173 = getelementptr i16, i16* %0, i64 %172
  %174 = add nsw i64 %4, 6576
  %175 = getelementptr i16, i16* %0, i64 %174
  %176 = add nsw i64 %4, 7666
  %177 = getelementptr i16, i16* %0, i64 %176
  %178 = add nsw i64 %4, 7672
  %179 = getelementptr i16, i16* %0, i64 %178
  %180 = add nsw i64 %4, 8762
  %181 = getelementptr i16, i16* %0, i64 %180
  %182 = add nsw i64 %10, 2192
  %183 = getelementptr i16, i16* %0, i64 %182
  %184 = add nsw i64 %10, 3282
  %185 = getelementptr i16, i16* %0, i64 %184
  %186 = add nsw i64 %4, 4384
  %187 = getelementptr i16, i16* %0, i64 %186
  %188 = add nsw i64 %4, 5474
  %189 = getelementptr i16, i16* %0, i64 %188
  %190 = add nsw i64 %4, 5480
  %191 = getelementptr i16, i16* %0, i64 %190
  %192 = add nsw i64 %4, 6570
  %193 = getelementptr i16, i16* %0, i64 %192
  %194 = add nsw i64 %10, 1096
  %195 = getelementptr i16, i16* %0, i64 %194
  %196 = add nsw i64 %10, 2186
  %197 = getelementptr i16, i16* %0, i64 %196
  %198 = add nsw i64 %4, 2192
  %199 = getelementptr i16, i16* %0, i64 %198
  %200 = add nsw i64 %4, 3282
  %201 = getelementptr i16, i16* %0, i64 %200
  %202 = add nsw i64 %4, 3288
  %203 = getelementptr i16, i16* %0, i64 %202
  %204 = add nsw i64 %4, 4378
  %205 = getelementptr i16, i16* %0, i64 %204
  %206 = getelementptr i16, i16* %0, i64 %10
  %207 = add nsw i64 %10, 1090
  %208 = getelementptr i16, i16* %0, i64 %207
  %209 = getelementptr i16, i16* %0, i64 %4
  %210 = add nsw i64 %4, 1090
  %211 = getelementptr i16, i16* %0, i64 %210
  %212 = add nsw i64 %4, 1096
  %213 = getelementptr i16, i16* %0, i64 %212
  %214 = add nsw i64 %4, 2186
  %215 = getelementptr i16, i16* %0, i64 %214
  %216 = add nsw i64 %7, 7672
  %217 = getelementptr i16, i16* %0, i64 %216
  %218 = add nsw i64 %7, 8762
  %219 = getelementptr i16, i16* %0, i64 %218
  %220 = add nsw i64 %4, 12056
  %221 = getelementptr i16, i16* %0, i64 %220
  %222 = add nsw i64 %4, 13146
  %223 = getelementptr i16, i16* %0, i64 %222
  %224 = add nsw i64 %4, 16440
  %225 = getelementptr i16, i16* %0, i64 %224
  %226 = add nsw i64 %4, 17530
  %227 = getelementptr i16, i16* %0, i64 %226
  %228 = add nsw i64 %7, 6576
  %229 = getelementptr i16, i16* %0, i64 %228
  %230 = add nsw i64 %7, 7666
  %231 = getelementptr i16, i16* %0, i64 %230
  %232 = add nsw i64 %4, 10960
  %233 = getelementptr i16, i16* %0, i64 %232
  %234 = add nsw i64 %4, 12050
  %235 = getelementptr i16, i16* %0, i64 %234
  %236 = add nsw i64 %4, 15344
  %237 = getelementptr i16, i16* %0, i64 %236
  %238 = add nsw i64 %4, 16434
  %239 = getelementptr i16, i16* %0, i64 %238
  %240 = add nsw i64 %7, 5480
  %241 = getelementptr i16, i16* %0, i64 %240
  %242 = add nsw i64 %7, 6570
  %243 = getelementptr i16, i16* %0, i64 %242
  %244 = add nsw i64 %4, 9864
  %245 = getelementptr i16, i16* %0, i64 %244
  %246 = add nsw i64 %4, 10954
  %247 = getelementptr i16, i16* %0, i64 %246
  %248 = add nsw i64 %4, 14248
  %249 = getelementptr i16, i16* %0, i64 %248
  %250 = add nsw i64 %4, 15338
  %251 = getelementptr i16, i16* %0, i64 %250
  %252 = add nsw i64 %7, 4384
  %253 = getelementptr i16, i16* %0, i64 %252
  %254 = add nsw i64 %7, 5474
  %255 = getelementptr i16, i16* %0, i64 %254
  %256 = add nsw i64 %4, 8768
  %257 = getelementptr i16, i16* %0, i64 %256
  %258 = add nsw i64 %4, 9858
  %259 = getelementptr i16, i16* %0, i64 %258
  %260 = add nsw i64 %4, 13152
  %261 = getelementptr i16, i16* %0, i64 %260
  %262 = add nsw i64 %4, 14242
  %263 = getelementptr i16, i16* %0, i64 %262
  %264 = add nsw i64 %7, 3288
  %265 = getelementptr i16, i16* %0, i64 %264
  %266 = add nsw i64 %7, 4378
  %267 = getelementptr i16, i16* %0, i64 %266
  %268 = add nsw i64 %4, 3288
  %269 = getelementptr i16, i16* %0, i64 %268
  %270 = add nsw i64 %4, 4378
  %271 = getelementptr i16, i16* %0, i64 %270
  %272 = add nsw i64 %4, 7672
  %273 = getelementptr i16, i16* %0, i64 %272
  %274 = add nsw i64 %4, 8762
  %275 = getelementptr i16, i16* %0, i64 %274
  %276 = add nsw i64 %7, 2192
  %277 = getelementptr i16, i16* %0, i64 %276
  %278 = add nsw i64 %7, 3282
  %279 = getelementptr i16, i16* %0, i64 %278
  %280 = add nsw i64 %4, 2192
  %281 = getelementptr i16, i16* %0, i64 %280
  %282 = add nsw i64 %4, 3282
  %283 = getelementptr i16, i16* %0, i64 %282
  %284 = add nsw i64 %4, 6576
  %285 = getelementptr i16, i16* %0, i64 %284
  %286 = add nsw i64 %4, 7666
  %287 = getelementptr i16, i16* %0, i64 %286
  %288 = add nsw i64 %7, 1096
  %289 = getelementptr i16, i16* %0, i64 %288
  %290 = add nsw i64 %7, 2186
  %291 = getelementptr i16, i16* %0, i64 %290
  %292 = add nsw i64 %4, 1096
  %293 = getelementptr i16, i16* %0, i64 %292
  %294 = add nsw i64 %4, 2186
  %295 = getelementptr i16, i16* %0, i64 %294
  %296 = add nsw i64 %4, 5480
  %297 = getelementptr i16, i16* %0, i64 %296
  %298 = add nsw i64 %4, 6570
  %299 = getelementptr i16, i16* %0, i64 %298
  %300 = getelementptr i16, i16* %0, i64 %7
  %301 = add nsw i64 %7, 1090
  %302 = getelementptr i16, i16* %0, i64 %301
  %303 = getelementptr i16, i16* %0, i64 %4
  %304 = add nsw i64 %4, 1090
  %305 = getelementptr i16, i16* %0, i64 %304
  %306 = add nsw i64 %4, 4384
  %307 = getelementptr i16, i16* %0, i64 %306
  %308 = add nsw i64 %4, 5474
  %309 = getelementptr i16, i16* %0, i64 %308
  br label %310

310:                                              ; preds = %22, %3777
  %311 = phi i64 [ 0, %22 ], [ %3778, %3777 ]
  %312 = mul i64 %311, 8768
  %313 = and i64 %312, 4294967232
  %314 = getelementptr i16, i16* %300, i64 %313
  %315 = getelementptr i16, i16* %302, i64 %313
  %316 = mul i64 %311, 17536
  %317 = and i64 %316, 4294967168
  %318 = mul i64 %311, 8768
  %319 = and i64 %318, 4294967232
  %320 = getelementptr i16, i16* %289, i64 %319
  %321 = getelementptr i16, i16* %291, i64 %319
  %322 = mul i64 %311, 17536
  %323 = and i64 %322, 4294967168
  %324 = getelementptr i16, i16* %293, i64 %323
  %325 = getelementptr i16, i16* %295, i64 %323
  %326 = getelementptr i16, i16* %297, i64 %323
  %327 = getelementptr i16, i16* %299, i64 %323
  %328 = mul i64 %311, 8768
  %329 = and i64 %328, 4294967232
  %330 = getelementptr i16, i16* %277, i64 %329
  %331 = getelementptr i16, i16* %279, i64 %329
  %332 = mul i64 %311, 17536
  %333 = and i64 %332, 4294967168
  %334 = getelementptr i16, i16* %281, i64 %333
  %335 = getelementptr i16, i16* %283, i64 %333
  %336 = getelementptr i16, i16* %285, i64 %333
  %337 = getelementptr i16, i16* %287, i64 %333
  %338 = mul i64 %311, 8768
  %339 = and i64 %338, 4294967232
  %340 = getelementptr i16, i16* %265, i64 %339
  %341 = getelementptr i16, i16* %267, i64 %339
  %342 = mul i64 %311, 17536
  %343 = and i64 %342, 4294967168
  %344 = getelementptr i16, i16* %269, i64 %343
  %345 = getelementptr i16, i16* %271, i64 %343
  %346 = getelementptr i16, i16* %273, i64 %343
  %347 = getelementptr i16, i16* %275, i64 %343
  %348 = mul i64 %311, 8768
  %349 = and i64 %348, 4294967232
  %350 = getelementptr i16, i16* %253, i64 %349
  %351 = getelementptr i16, i16* %255, i64 %349
  %352 = mul i64 %311, 17536
  %353 = and i64 %352, 4294967168
  %354 = getelementptr i16, i16* %257, i64 %353
  %355 = getelementptr i16, i16* %259, i64 %353
  %356 = getelementptr i16, i16* %261, i64 %353
  %357 = getelementptr i16, i16* %263, i64 %353
  %358 = mul i64 %311, 8768
  %359 = and i64 %358, 4294967232
  %360 = getelementptr i16, i16* %241, i64 %359
  %361 = getelementptr i16, i16* %243, i64 %359
  %362 = mul i64 %311, 17536
  %363 = and i64 %362, 4294967168
  %364 = getelementptr i16, i16* %245, i64 %363
  %365 = getelementptr i16, i16* %247, i64 %363
  %366 = getelementptr i16, i16* %249, i64 %363
  %367 = getelementptr i16, i16* %251, i64 %363
  %368 = mul i64 %311, 8768
  %369 = and i64 %368, 4294967232
  %370 = getelementptr i16, i16* %229, i64 %369
  %371 = getelementptr i16, i16* %231, i64 %369
  %372 = mul i64 %311, 17536
  %373 = and i64 %372, 4294967168
  %374 = getelementptr i16, i16* %233, i64 %373
  %375 = getelementptr i16, i16* %235, i64 %373
  %376 = getelementptr i16, i16* %237, i64 %373
  %377 = getelementptr i16, i16* %239, i64 %373
  %378 = mul i64 %311, 8768
  %379 = and i64 %378, 4294967232
  %380 = getelementptr i16, i16* %217, i64 %379
  %381 = getelementptr i16, i16* %219, i64 %379
  %382 = mul i64 %311, 17536
  %383 = and i64 %382, 4294967168
  %384 = getelementptr i16, i16* %221, i64 %383
  %385 = getelementptr i16, i16* %223, i64 %383
  %386 = getelementptr i16, i16* %225, i64 %383
  %387 = getelementptr i16, i16* %227, i64 %383
  %388 = mul i64 %311, 8768
  %389 = and i64 %388, 4294967232
  %390 = getelementptr i16, i16* %206, i64 %389
  %391 = getelementptr i16, i16* %208, i64 %389
  %392 = mul i64 %311, 17536
  %393 = and i64 %392, 4294967168
  %394 = getelementptr i16, i16* %209, i64 %393
  %395 = getelementptr i16, i16* %211, i64 %393
  %396 = getelementptr i16, i16* %213, i64 %393
  %397 = getelementptr i16, i16* %215, i64 %393
  %398 = mul i64 %311, 8768
  %399 = and i64 %398, 4294967232
  %400 = getelementptr i16, i16* %195, i64 %399
  %401 = getelementptr i16, i16* %197, i64 %399
  %402 = mul i64 %311, 17536
  %403 = and i64 %402, 4294967168
  %404 = getelementptr i16, i16* %199, i64 %403
  %405 = getelementptr i16, i16* %201, i64 %403
  %406 = getelementptr i16, i16* %203, i64 %403
  %407 = getelementptr i16, i16* %205, i64 %403
  %408 = mul i64 %311, 8768
  %409 = and i64 %408, 4294967232
  %410 = getelementptr i16, i16* %183, i64 %409
  %411 = getelementptr i16, i16* %185, i64 %409
  %412 = mul i64 %311, 17536
  %413 = and i64 %412, 4294967168
  %414 = getelementptr i16, i16* %187, i64 %413
  %415 = getelementptr i16, i16* %189, i64 %413
  %416 = getelementptr i16, i16* %191, i64 %413
  %417 = getelementptr i16, i16* %193, i64 %413
  %418 = mul i64 %311, 8768
  %419 = and i64 %418, 4294967232
  %420 = getelementptr i16, i16* %171, i64 %419
  %421 = getelementptr i16, i16* %173, i64 %419
  %422 = mul i64 %311, 17536
  %423 = and i64 %422, 4294967168
  %424 = getelementptr i16, i16* %175, i64 %423
  %425 = getelementptr i16, i16* %177, i64 %423
  %426 = getelementptr i16, i16* %179, i64 %423
  %427 = getelementptr i16, i16* %181, i64 %423
  %428 = mul i64 %311, 8768
  %429 = and i64 %428, 4294967232
  %430 = getelementptr i16, i16* %159, i64 %429
  %431 = getelementptr i16, i16* %161, i64 %429
  %432 = mul i64 %311, 17536
  %433 = and i64 %432, 4294967168
  %434 = getelementptr i16, i16* %163, i64 %433
  %435 = getelementptr i16, i16* %165, i64 %433
  %436 = getelementptr i16, i16* %167, i64 %433
  %437 = getelementptr i16, i16* %169, i64 %433
  %438 = mul i64 %311, 8768
  %439 = and i64 %438, 4294967232
  %440 = getelementptr i16, i16* %147, i64 %439
  %441 = getelementptr i16, i16* %149, i64 %439
  %442 = mul i64 %311, 17536
  %443 = and i64 %442, 4294967168
  %444 = getelementptr i16, i16* %151, i64 %443
  %445 = getelementptr i16, i16* %153, i64 %443
  %446 = getelementptr i16, i16* %155, i64 %443
  %447 = getelementptr i16, i16* %157, i64 %443
  %448 = mul i64 %311, 8768
  %449 = and i64 %448, 4294967232
  %450 = getelementptr i16, i16* %135, i64 %449
  %451 = getelementptr i16, i16* %137, i64 %449
  %452 = mul i64 %311, 17536
  %453 = and i64 %452, 4294967168
  %454 = getelementptr i16, i16* %139, i64 %453
  %455 = getelementptr i16, i16* %141, i64 %453
  %456 = getelementptr i16, i16* %143, i64 %453
  %457 = getelementptr i16, i16* %145, i64 %453
  %458 = mul i64 %311, 8768
  %459 = and i64 %458, 4294967232
  %460 = getelementptr i16, i16* %123, i64 %459
  %461 = getelementptr i16, i16* %125, i64 %459
  %462 = mul i64 %311, 17536
  %463 = and i64 %462, 4294967168
  %464 = getelementptr i16, i16* %127, i64 %463
  %465 = getelementptr i16, i16* %129, i64 %463
  %466 = getelementptr i16, i16* %131, i64 %463
  %467 = getelementptr i16, i16* %133, i64 %463
  %468 = mul i64 %311, 4384
  %469 = and i64 %468, 4294967264
  %470 = getelementptr i16, i16* %112, i64 %469
  %471 = getelementptr i16, i16* %114, i64 %469
  %472 = mul i64 %311, 8768
  %473 = and i64 %472, 4294967232
  %474 = getelementptr i16, i16* %115, i64 %473
  %475 = getelementptr i16, i16* %117, i64 %473
  %476 = getelementptr i16, i16* %119, i64 %473
  %477 = getelementptr i16, i16* %121, i64 %473
  %478 = mul i64 %311, 4384
  %479 = and i64 %478, 4294967264
  %480 = getelementptr i16, i16* %101, i64 %479
  %481 = getelementptr i16, i16* %103, i64 %479
  %482 = mul i64 %311, 8768
  %483 = and i64 %482, 4294967232
  %484 = getelementptr i16, i16* %105, i64 %483
  %485 = getelementptr i16, i16* %107, i64 %483
  %486 = getelementptr i16, i16* %109, i64 %483
  %487 = getelementptr i16, i16* %111, i64 %483
  %488 = mul i64 %311, 4384
  %489 = and i64 %488, 4294967264
  %490 = getelementptr i16, i16* %89, i64 %489
  %491 = getelementptr i16, i16* %91, i64 %489
  %492 = mul i64 %311, 8768
  %493 = and i64 %492, 4294967232
  %494 = getelementptr i16, i16* %93, i64 %493
  %495 = getelementptr i16, i16* %95, i64 %493
  %496 = getelementptr i16, i16* %97, i64 %493
  %497 = getelementptr i16, i16* %99, i64 %493
  %498 = mul i64 %311, 4384
  %499 = and i64 %498, 4294967264
  %500 = getelementptr i16, i16* %77, i64 %499
  %501 = getelementptr i16, i16* %79, i64 %499
  %502 = mul i64 %311, 8768
  %503 = and i64 %502, 4294967232
  %504 = getelementptr i16, i16* %81, i64 %503
  %505 = getelementptr i16, i16* %83, i64 %503
  %506 = getelementptr i16, i16* %85, i64 %503
  %507 = getelementptr i16, i16* %87, i64 %503
  %508 = mul i64 %311, 2192
  %509 = and i64 %508, 4294967280
  %510 = getelementptr i16, i16* %66, i64 %509
  %511 = getelementptr i16, i16* %68, i64 %509
  %512 = mul i64 %311, 4384
  %513 = and i64 %512, 4294967264
  %514 = getelementptr i16, i16* %69, i64 %513
  %515 = getelementptr i16, i16* %71, i64 %513
  %516 = getelementptr i16, i16* %73, i64 %513
  %517 = getelementptr i16, i16* %75, i64 %513
  %518 = mul i64 %311, 2192
  %519 = and i64 %518, 4294967280
  %520 = getelementptr i16, i16* %55, i64 %519
  %521 = getelementptr i16, i16* %57, i64 %519
  %522 = mul i64 %311, 4384
  %523 = and i64 %522, 4294967264
  %524 = getelementptr i16, i16* %59, i64 %523
  %525 = getelementptr i16, i16* %61, i64 %523
  %526 = getelementptr i16, i16* %63, i64 %523
  %527 = getelementptr i16, i16* %65, i64 %523
  %528 = mul i64 %311, 2192
  %529 = and i64 %528, 4294967280
  %530 = getelementptr i16, i16* %44, i64 %529
  %531 = getelementptr i16, i16* %46, i64 %529
  %532 = mul i64 %311, 4384
  %533 = and i64 %532, 4294967264
  %534 = getelementptr i16, i16* %47, i64 %533
  %535 = getelementptr i16, i16* %49, i64 %533
  %536 = getelementptr i16, i16* %51, i64 %533
  %537 = getelementptr i16, i16* %53, i64 %533
  %538 = mul i64 %311, 2192
  %539 = and i64 %538, 4294967280
  %540 = getelementptr i16, i16* %33, i64 %539
  %541 = getelementptr i16, i16* %35, i64 %539
  %542 = mul i64 %311, 4384
  %543 = and i64 %542, 4294967264
  %544 = getelementptr i16, i16* %37, i64 %543
  %545 = getelementptr i16, i16* %39, i64 %543
  %546 = getelementptr i16, i16* %41, i64 %543
  %547 = getelementptr i16, i16* %43, i64 %543
  %548 = mul i64 %311, 1096
  %549 = and i64 %548, 4294967288
  %550 = getelementptr i16, i16* %0, i64 %549
  %551 = getelementptr i16, i16* %24, i64 %549
  %552 = mul i64 %311, 2192
  %553 = and i64 %552, 4294967280
  %554 = getelementptr i16, i16* %25, i64 %553
  %555 = getelementptr i16, i16* %27, i64 %553
  %556 = getelementptr i16, i16* %29, i64 %553
  %557 = getelementptr i16, i16* %31, i64 %553
  %558 = mul i64 %311, 17536
  %559 = and i64 %558, 4294967168
  %560 = getelementptr inbounds i16, i16* %5, i64 %559
  %561 = mul i64 %311, 8768
  %562 = and i64 %561, 4294967232
  %563 = getelementptr inbounds i16, i16* %8, i64 %562
  %564 = getelementptr inbounds i16, i16* %560, i64 4384
  %565 = getelementptr i16, i16* %309, i64 %317
  %566 = getelementptr i16, i16* %307, i64 %317
  %567 = getelementptr i16, i16* %305, i64 %317
  %568 = getelementptr i16, i16* %303, i64 %317
  %569 = icmp ult i16* %314, %567
  %570 = icmp ult i16* %568, %315
  %571 = and i1 %569, %570
  %572 = icmp ult i16* %314, %565
  %573 = icmp ult i16* %566, %315
  %574 = and i1 %572, %573
  %575 = or i1 %571, %574
  br i1 %575, label %627, label %576

576:                                              ; preds = %310
  %577 = getelementptr i16, i16* %563, i64 1088
  %578 = getelementptr i16, i16* %564, i64 1088
  %579 = getelementptr i16, i16* %560, i64 1088
  br label %580

580:                                              ; preds = %580, %576
  %581 = phi i64 [ 0, %576 ], [ %625, %580 ]
  %582 = shl nuw i64 %581, 1
  %583 = getelementptr i16, i16* %563, i64 %582
  %584 = shl nuw i64 %581, 1
  %585 = getelementptr i16, i16* %564, i64 %584
  %586 = shl nuw i64 %581, 1
  %587 = getelementptr i16, i16* %560, i64 %586
  %588 = bitcast i16* %587 to <4 x i32>*
  %589 = load <4 x i32>, <4 x i32>* %588, align 4, !tbaa !10, !alias.scope !131
  %590 = getelementptr i16, i16* %587, i64 8
  %591 = bitcast i16* %590 to <4 x i32>*
  %592 = load <4 x i32>, <4 x i32>* %591, align 4, !tbaa !10, !alias.scope !131
  %593 = bitcast i16* %585 to <4 x i32>*
  %594 = load <4 x i32>, <4 x i32>* %593, align 4, !tbaa !10, !alias.scope !134
  %595 = getelementptr i16, i16* %585, i64 8
  %596 = bitcast i16* %595 to <4 x i32>*
  %597 = load <4 x i32>, <4 x i32>* %596, align 4, !tbaa !10, !alias.scope !134
  %598 = add <4 x i32> %594, %589
  %599 = add <4 x i32> %597, %592
  %600 = bitcast i16* %583 to <4 x i32>*
  store <4 x i32> %598, <4 x i32>* %600, align 4, !tbaa !10, !alias.scope !136, !noalias !138
  %601 = getelementptr i16, i16* %583, i64 8
  %602 = bitcast i16* %601 to <4 x i32>*
  store <4 x i32> %599, <4 x i32>* %602, align 4, !tbaa !10, !alias.scope !136, !noalias !138
  %603 = or i64 %581, 8
  %604 = shl nuw i64 %603, 1
  %605 = getelementptr i16, i16* %563, i64 %604
  %606 = shl nuw i64 %603, 1
  %607 = getelementptr i16, i16* %564, i64 %606
  %608 = shl nuw i64 %603, 1
  %609 = getelementptr i16, i16* %560, i64 %608
  %610 = bitcast i16* %609 to <4 x i32>*
  %611 = load <4 x i32>, <4 x i32>* %610, align 4, !tbaa !10, !alias.scope !131
  %612 = getelementptr i16, i16* %609, i64 8
  %613 = bitcast i16* %612 to <4 x i32>*
  %614 = load <4 x i32>, <4 x i32>* %613, align 4, !tbaa !10, !alias.scope !131
  %615 = bitcast i16* %607 to <4 x i32>*
  %616 = load <4 x i32>, <4 x i32>* %615, align 4, !tbaa !10, !alias.scope !134
  %617 = getelementptr i16, i16* %607, i64 8
  %618 = bitcast i16* %617 to <4 x i32>*
  %619 = load <4 x i32>, <4 x i32>* %618, align 4, !tbaa !10, !alias.scope !134
  %620 = add <4 x i32> %616, %611
  %621 = add <4 x i32> %619, %614
  %622 = bitcast i16* %605 to <4 x i32>*
  store <4 x i32> %620, <4 x i32>* %622, align 4, !tbaa !10, !alias.scope !136, !noalias !138
  %623 = getelementptr i16, i16* %605, i64 8
  %624 = bitcast i16* %623 to <4 x i32>*
  store <4 x i32> %621, <4 x i32>* %624, align 4, !tbaa !10, !alias.scope !136, !noalias !138
  %625 = add nuw nsw i64 %581, 16
  %626 = icmp eq i64 %625, 544
  br i1 %626, label %627, label %580, !llvm.loop !139

627:                                              ; preds = %310, %580
  %628 = phi i32 [ 0, %310 ], [ 544, %580 ]
  %629 = phi i16* [ %563, %310 ], [ %577, %580 ]
  %630 = phi i16* [ %564, %310 ], [ %578, %580 ]
  %631 = phi i16* [ %560, %310 ], [ %579, %580 ]
  br label %632

632:                                              ; preds = %632, %627
  %633 = phi i32 [ %644, %632 ], [ %628, %627 ]
  %634 = phi i16* [ %645, %632 ], [ %629, %627 ]
  %635 = phi i16* [ %647, %632 ], [ %630, %627 ]
  %636 = phi i16* [ %646, %632 ], [ %631, %627 ]
  %637 = phi i32 [ %648, %632 ], [ 0, %627 ]
  %638 = bitcast i16* %636 to i32*
  %639 = load i32, i32* %638, align 4, !tbaa !10
  %640 = bitcast i16* %635 to i32*
  %641 = load i32, i32* %640, align 4, !tbaa !10
  %642 = add i32 %641, %639
  %643 = bitcast i16* %634 to i32*
  store i32 %642, i32* %643, align 4, !tbaa !10
  %644 = add nuw nsw i32 %633, 1
  %645 = getelementptr inbounds i16, i16* %634, i64 2
  %646 = getelementptr inbounds i16, i16* %636, i64 2
  %647 = getelementptr inbounds i16, i16* %635, i64 2
  %648 = add i32 %637, 1
  %649 = icmp eq i32 %637, 0
  br i1 %649, label %650, label %632, !llvm.loop !140

650:                                              ; preds = %632
  br i1 %575, label %651, label %694

651:                                              ; preds = %650, %651
  %652 = phi i32 [ %689, %651 ], [ %644, %650 ]
  %653 = phi i16* [ %690, %651 ], [ %645, %650 ]
  %654 = phi i16* [ %692, %651 ], [ %647, %650 ]
  %655 = phi i16* [ %691, %651 ], [ %646, %650 ]
  %656 = bitcast i16* %655 to i32*
  %657 = load i32, i32* %656, align 4, !tbaa !10
  %658 = bitcast i16* %654 to i32*
  %659 = load i32, i32* %658, align 4, !tbaa !10
  %660 = add i32 %659, %657
  %661 = bitcast i16* %653 to i32*
  store i32 %660, i32* %661, align 4, !tbaa !10
  %662 = getelementptr inbounds i16, i16* %653, i64 2
  %663 = getelementptr inbounds i16, i16* %655, i64 2
  %664 = getelementptr inbounds i16, i16* %654, i64 2
  %665 = bitcast i16* %663 to i32*
  %666 = load i32, i32* %665, align 4, !tbaa !10
  %667 = bitcast i16* %664 to i32*
  %668 = load i32, i32* %667, align 4, !tbaa !10
  %669 = add i32 %668, %666
  %670 = bitcast i16* %662 to i32*
  store i32 %669, i32* %670, align 4, !tbaa !10
  %671 = getelementptr inbounds i16, i16* %653, i64 4
  %672 = getelementptr inbounds i16, i16* %655, i64 4
  %673 = getelementptr inbounds i16, i16* %654, i64 4
  %674 = bitcast i16* %672 to i32*
  %675 = load i32, i32* %674, align 4, !tbaa !10
  %676 = bitcast i16* %673 to i32*
  %677 = load i32, i32* %676, align 4, !tbaa !10
  %678 = add i32 %677, %675
  %679 = bitcast i16* %671 to i32*
  store i32 %678, i32* %679, align 4, !tbaa !10
  %680 = getelementptr inbounds i16, i16* %653, i64 6
  %681 = getelementptr inbounds i16, i16* %655, i64 6
  %682 = getelementptr inbounds i16, i16* %654, i64 6
  %683 = bitcast i16* %681 to i32*
  %684 = load i32, i32* %683, align 4, !tbaa !10
  %685 = bitcast i16* %682 to i32*
  %686 = load i32, i32* %685, align 4, !tbaa !10
  %687 = add i32 %686, %684
  %688 = bitcast i16* %680 to i32*
  store i32 %687, i32* %688, align 4, !tbaa !10
  %689 = add nuw nsw i32 %652, 4
  %690 = getelementptr inbounds i16, i16* %653, i64 8
  %691 = getelementptr inbounds i16, i16* %655, i64 8
  %692 = getelementptr inbounds i16, i16* %654, i64 8
  %693 = icmp eq i32 %689, 545
  br i1 %693, label %694, label %651, !llvm.loop !141

694:                                              ; preds = %651, %650
  %695 = getelementptr inbounds i16, i16* %560, i64 1096
  %696 = getelementptr inbounds i16, i16* %695, i64 4384
  %697 = getelementptr inbounds i16, i16* %563, i64 1096
  %698 = icmp ult i16* %320, %325
  %699 = icmp ult i16* %324, %321
  %700 = and i1 %698, %699
  %701 = icmp ult i16* %320, %327
  %702 = icmp ult i16* %326, %321
  %703 = and i1 %701, %702
  %704 = or i1 %700, %703
  br i1 %704, label %756, label %705

705:                                              ; preds = %694
  %706 = getelementptr i16, i16* %697, i64 1088
  %707 = getelementptr i16, i16* %696, i64 1088
  %708 = getelementptr i16, i16* %695, i64 1088
  br label %709

709:                                              ; preds = %709, %705
  %710 = phi i64 [ 0, %705 ], [ %754, %709 ]
  %711 = shl nuw i64 %710, 1
  %712 = getelementptr i16, i16* %697, i64 %711
  %713 = shl nuw i64 %710, 1
  %714 = getelementptr i16, i16* %696, i64 %713
  %715 = shl nuw i64 %710, 1
  %716 = getelementptr i16, i16* %695, i64 %715
  %717 = bitcast i16* %716 to <4 x i32>*
  %718 = load <4 x i32>, <4 x i32>* %717, align 4, !tbaa !10, !alias.scope !142
  %719 = getelementptr i16, i16* %716, i64 8
  %720 = bitcast i16* %719 to <4 x i32>*
  %721 = load <4 x i32>, <4 x i32>* %720, align 4, !tbaa !10, !alias.scope !142
  %722 = bitcast i16* %714 to <4 x i32>*
  %723 = load <4 x i32>, <4 x i32>* %722, align 4, !tbaa !10, !alias.scope !145
  %724 = getelementptr i16, i16* %714, i64 8
  %725 = bitcast i16* %724 to <4 x i32>*
  %726 = load <4 x i32>, <4 x i32>* %725, align 4, !tbaa !10, !alias.scope !145
  %727 = add <4 x i32> %723, %718
  %728 = add <4 x i32> %726, %721
  %729 = bitcast i16* %712 to <4 x i32>*
  store <4 x i32> %727, <4 x i32>* %729, align 4, !tbaa !10, !alias.scope !147, !noalias !149
  %730 = getelementptr i16, i16* %712, i64 8
  %731 = bitcast i16* %730 to <4 x i32>*
  store <4 x i32> %728, <4 x i32>* %731, align 4, !tbaa !10, !alias.scope !147, !noalias !149
  %732 = or i64 %710, 8
  %733 = shl nuw i64 %732, 1
  %734 = getelementptr i16, i16* %697, i64 %733
  %735 = shl nuw i64 %732, 1
  %736 = getelementptr i16, i16* %696, i64 %735
  %737 = shl nuw i64 %732, 1
  %738 = getelementptr i16, i16* %695, i64 %737
  %739 = bitcast i16* %738 to <4 x i32>*
  %740 = load <4 x i32>, <4 x i32>* %739, align 4, !tbaa !10, !alias.scope !142
  %741 = getelementptr i16, i16* %738, i64 8
  %742 = bitcast i16* %741 to <4 x i32>*
  %743 = load <4 x i32>, <4 x i32>* %742, align 4, !tbaa !10, !alias.scope !142
  %744 = bitcast i16* %736 to <4 x i32>*
  %745 = load <4 x i32>, <4 x i32>* %744, align 4, !tbaa !10, !alias.scope !145
  %746 = getelementptr i16, i16* %736, i64 8
  %747 = bitcast i16* %746 to <4 x i32>*
  %748 = load <4 x i32>, <4 x i32>* %747, align 4, !tbaa !10, !alias.scope !145
  %749 = add <4 x i32> %745, %740
  %750 = add <4 x i32> %748, %743
  %751 = bitcast i16* %734 to <4 x i32>*
  store <4 x i32> %749, <4 x i32>* %751, align 4, !tbaa !10, !alias.scope !147, !noalias !149
  %752 = getelementptr i16, i16* %734, i64 8
  %753 = bitcast i16* %752 to <4 x i32>*
  store <4 x i32> %750, <4 x i32>* %753, align 4, !tbaa !10, !alias.scope !147, !noalias !149
  %754 = add nuw nsw i64 %710, 16
  %755 = icmp eq i64 %754, 544
  br i1 %755, label %756, label %709, !llvm.loop !150

756:                                              ; preds = %694, %709
  %757 = phi i32 [ 0, %694 ], [ 544, %709 ]
  %758 = phi i16* [ %697, %694 ], [ %706, %709 ]
  %759 = phi i16* [ %696, %694 ], [ %707, %709 ]
  %760 = phi i16* [ %695, %694 ], [ %708, %709 ]
  br label %761

761:                                              ; preds = %761, %756
  %762 = phi i32 [ %773, %761 ], [ %757, %756 ]
  %763 = phi i16* [ %774, %761 ], [ %758, %756 ]
  %764 = phi i16* [ %776, %761 ], [ %759, %756 ]
  %765 = phi i16* [ %775, %761 ], [ %760, %756 ]
  %766 = phi i32 [ %777, %761 ], [ 0, %756 ]
  %767 = bitcast i16* %765 to i32*
  %768 = load i32, i32* %767, align 4, !tbaa !10
  %769 = bitcast i16* %764 to i32*
  %770 = load i32, i32* %769, align 4, !tbaa !10
  %771 = add i32 %770, %768
  %772 = bitcast i16* %763 to i32*
  store i32 %771, i32* %772, align 4, !tbaa !10
  %773 = add nuw nsw i32 %762, 1
  %774 = getelementptr inbounds i16, i16* %763, i64 2
  %775 = getelementptr inbounds i16, i16* %765, i64 2
  %776 = getelementptr inbounds i16, i16* %764, i64 2
  %777 = add i32 %766, 1
  %778 = icmp eq i32 %766, 0
  br i1 %778, label %779, label %761, !llvm.loop !151

779:                                              ; preds = %761
  br i1 %704, label %780, label %823

780:                                              ; preds = %779, %780
  %781 = phi i32 [ %818, %780 ], [ %773, %779 ]
  %782 = phi i16* [ %819, %780 ], [ %774, %779 ]
  %783 = phi i16* [ %821, %780 ], [ %776, %779 ]
  %784 = phi i16* [ %820, %780 ], [ %775, %779 ]
  %785 = bitcast i16* %784 to i32*
  %786 = load i32, i32* %785, align 4, !tbaa !10
  %787 = bitcast i16* %783 to i32*
  %788 = load i32, i32* %787, align 4, !tbaa !10
  %789 = add i32 %788, %786
  %790 = bitcast i16* %782 to i32*
  store i32 %789, i32* %790, align 4, !tbaa !10
  %791 = getelementptr inbounds i16, i16* %782, i64 2
  %792 = getelementptr inbounds i16, i16* %784, i64 2
  %793 = getelementptr inbounds i16, i16* %783, i64 2
  %794 = bitcast i16* %792 to i32*
  %795 = load i32, i32* %794, align 4, !tbaa !10
  %796 = bitcast i16* %793 to i32*
  %797 = load i32, i32* %796, align 4, !tbaa !10
  %798 = add i32 %797, %795
  %799 = bitcast i16* %791 to i32*
  store i32 %798, i32* %799, align 4, !tbaa !10
  %800 = getelementptr inbounds i16, i16* %782, i64 4
  %801 = getelementptr inbounds i16, i16* %784, i64 4
  %802 = getelementptr inbounds i16, i16* %783, i64 4
  %803 = bitcast i16* %801 to i32*
  %804 = load i32, i32* %803, align 4, !tbaa !10
  %805 = bitcast i16* %802 to i32*
  %806 = load i32, i32* %805, align 4, !tbaa !10
  %807 = add i32 %806, %804
  %808 = bitcast i16* %800 to i32*
  store i32 %807, i32* %808, align 4, !tbaa !10
  %809 = getelementptr inbounds i16, i16* %782, i64 6
  %810 = getelementptr inbounds i16, i16* %784, i64 6
  %811 = getelementptr inbounds i16, i16* %783, i64 6
  %812 = bitcast i16* %810 to i32*
  %813 = load i32, i32* %812, align 4, !tbaa !10
  %814 = bitcast i16* %811 to i32*
  %815 = load i32, i32* %814, align 4, !tbaa !10
  %816 = add i32 %815, %813
  %817 = bitcast i16* %809 to i32*
  store i32 %816, i32* %817, align 4, !tbaa !10
  %818 = add nuw nsw i32 %781, 4
  %819 = getelementptr inbounds i16, i16* %782, i64 8
  %820 = getelementptr inbounds i16, i16* %784, i64 8
  %821 = getelementptr inbounds i16, i16* %783, i64 8
  %822 = icmp eq i32 %818, 545
  br i1 %822, label %823, label %780, !llvm.loop !152

823:                                              ; preds = %780, %779
  %824 = getelementptr inbounds i16, i16* %560, i64 2192
  %825 = getelementptr inbounds i16, i16* %824, i64 4384
  %826 = getelementptr inbounds i16, i16* %563, i64 2192
  %827 = icmp ult i16* %330, %335
  %828 = icmp ult i16* %334, %331
  %829 = and i1 %827, %828
  %830 = icmp ult i16* %330, %337
  %831 = icmp ult i16* %336, %331
  %832 = and i1 %830, %831
  %833 = or i1 %829, %832
  br i1 %833, label %885, label %834

834:                                              ; preds = %823
  %835 = getelementptr i16, i16* %826, i64 1088
  %836 = getelementptr i16, i16* %825, i64 1088
  %837 = getelementptr i16, i16* %824, i64 1088
  br label %838

838:                                              ; preds = %838, %834
  %839 = phi i64 [ 0, %834 ], [ %883, %838 ]
  %840 = shl nuw i64 %839, 1
  %841 = getelementptr i16, i16* %826, i64 %840
  %842 = shl nuw i64 %839, 1
  %843 = getelementptr i16, i16* %825, i64 %842
  %844 = shl nuw i64 %839, 1
  %845 = getelementptr i16, i16* %824, i64 %844
  %846 = bitcast i16* %845 to <4 x i32>*
  %847 = load <4 x i32>, <4 x i32>* %846, align 4, !tbaa !10, !alias.scope !153
  %848 = getelementptr i16, i16* %845, i64 8
  %849 = bitcast i16* %848 to <4 x i32>*
  %850 = load <4 x i32>, <4 x i32>* %849, align 4, !tbaa !10, !alias.scope !153
  %851 = bitcast i16* %843 to <4 x i32>*
  %852 = load <4 x i32>, <4 x i32>* %851, align 4, !tbaa !10, !alias.scope !156
  %853 = getelementptr i16, i16* %843, i64 8
  %854 = bitcast i16* %853 to <4 x i32>*
  %855 = load <4 x i32>, <4 x i32>* %854, align 4, !tbaa !10, !alias.scope !156
  %856 = add <4 x i32> %852, %847
  %857 = add <4 x i32> %855, %850
  %858 = bitcast i16* %841 to <4 x i32>*
  store <4 x i32> %856, <4 x i32>* %858, align 4, !tbaa !10, !alias.scope !158, !noalias !160
  %859 = getelementptr i16, i16* %841, i64 8
  %860 = bitcast i16* %859 to <4 x i32>*
  store <4 x i32> %857, <4 x i32>* %860, align 4, !tbaa !10, !alias.scope !158, !noalias !160
  %861 = or i64 %839, 8
  %862 = shl nuw i64 %861, 1
  %863 = getelementptr i16, i16* %826, i64 %862
  %864 = shl nuw i64 %861, 1
  %865 = getelementptr i16, i16* %825, i64 %864
  %866 = shl nuw i64 %861, 1
  %867 = getelementptr i16, i16* %824, i64 %866
  %868 = bitcast i16* %867 to <4 x i32>*
  %869 = load <4 x i32>, <4 x i32>* %868, align 4, !tbaa !10, !alias.scope !153
  %870 = getelementptr i16, i16* %867, i64 8
  %871 = bitcast i16* %870 to <4 x i32>*
  %872 = load <4 x i32>, <4 x i32>* %871, align 4, !tbaa !10, !alias.scope !153
  %873 = bitcast i16* %865 to <4 x i32>*
  %874 = load <4 x i32>, <4 x i32>* %873, align 4, !tbaa !10, !alias.scope !156
  %875 = getelementptr i16, i16* %865, i64 8
  %876 = bitcast i16* %875 to <4 x i32>*
  %877 = load <4 x i32>, <4 x i32>* %876, align 4, !tbaa !10, !alias.scope !156
  %878 = add <4 x i32> %874, %869
  %879 = add <4 x i32> %877, %872
  %880 = bitcast i16* %863 to <4 x i32>*
  store <4 x i32> %878, <4 x i32>* %880, align 4, !tbaa !10, !alias.scope !158, !noalias !160
  %881 = getelementptr i16, i16* %863, i64 8
  %882 = bitcast i16* %881 to <4 x i32>*
  store <4 x i32> %879, <4 x i32>* %882, align 4, !tbaa !10, !alias.scope !158, !noalias !160
  %883 = add nuw nsw i64 %839, 16
  %884 = icmp eq i64 %883, 544
  br i1 %884, label %885, label %838, !llvm.loop !161

885:                                              ; preds = %823, %838
  %886 = phi i32 [ 0, %823 ], [ 544, %838 ]
  %887 = phi i16* [ %826, %823 ], [ %835, %838 ]
  %888 = phi i16* [ %825, %823 ], [ %836, %838 ]
  %889 = phi i16* [ %824, %823 ], [ %837, %838 ]
  br label %890

890:                                              ; preds = %890, %885
  %891 = phi i32 [ %902, %890 ], [ %886, %885 ]
  %892 = phi i16* [ %903, %890 ], [ %887, %885 ]
  %893 = phi i16* [ %905, %890 ], [ %888, %885 ]
  %894 = phi i16* [ %904, %890 ], [ %889, %885 ]
  %895 = phi i32 [ %906, %890 ], [ 0, %885 ]
  %896 = bitcast i16* %894 to i32*
  %897 = load i32, i32* %896, align 4, !tbaa !10
  %898 = bitcast i16* %893 to i32*
  %899 = load i32, i32* %898, align 4, !tbaa !10
  %900 = add i32 %899, %897
  %901 = bitcast i16* %892 to i32*
  store i32 %900, i32* %901, align 4, !tbaa !10
  %902 = add nuw nsw i32 %891, 1
  %903 = getelementptr inbounds i16, i16* %892, i64 2
  %904 = getelementptr inbounds i16, i16* %894, i64 2
  %905 = getelementptr inbounds i16, i16* %893, i64 2
  %906 = add i32 %895, 1
  %907 = icmp eq i32 %895, 0
  br i1 %907, label %908, label %890, !llvm.loop !162

908:                                              ; preds = %890
  br i1 %833, label %909, label %952

909:                                              ; preds = %908, %909
  %910 = phi i32 [ %947, %909 ], [ %902, %908 ]
  %911 = phi i16* [ %948, %909 ], [ %903, %908 ]
  %912 = phi i16* [ %950, %909 ], [ %905, %908 ]
  %913 = phi i16* [ %949, %909 ], [ %904, %908 ]
  %914 = bitcast i16* %913 to i32*
  %915 = load i32, i32* %914, align 4, !tbaa !10
  %916 = bitcast i16* %912 to i32*
  %917 = load i32, i32* %916, align 4, !tbaa !10
  %918 = add i32 %917, %915
  %919 = bitcast i16* %911 to i32*
  store i32 %918, i32* %919, align 4, !tbaa !10
  %920 = getelementptr inbounds i16, i16* %911, i64 2
  %921 = getelementptr inbounds i16, i16* %913, i64 2
  %922 = getelementptr inbounds i16, i16* %912, i64 2
  %923 = bitcast i16* %921 to i32*
  %924 = load i32, i32* %923, align 4, !tbaa !10
  %925 = bitcast i16* %922 to i32*
  %926 = load i32, i32* %925, align 4, !tbaa !10
  %927 = add i32 %926, %924
  %928 = bitcast i16* %920 to i32*
  store i32 %927, i32* %928, align 4, !tbaa !10
  %929 = getelementptr inbounds i16, i16* %911, i64 4
  %930 = getelementptr inbounds i16, i16* %913, i64 4
  %931 = getelementptr inbounds i16, i16* %912, i64 4
  %932 = bitcast i16* %930 to i32*
  %933 = load i32, i32* %932, align 4, !tbaa !10
  %934 = bitcast i16* %931 to i32*
  %935 = load i32, i32* %934, align 4, !tbaa !10
  %936 = add i32 %935, %933
  %937 = bitcast i16* %929 to i32*
  store i32 %936, i32* %937, align 4, !tbaa !10
  %938 = getelementptr inbounds i16, i16* %911, i64 6
  %939 = getelementptr inbounds i16, i16* %913, i64 6
  %940 = getelementptr inbounds i16, i16* %912, i64 6
  %941 = bitcast i16* %939 to i32*
  %942 = load i32, i32* %941, align 4, !tbaa !10
  %943 = bitcast i16* %940 to i32*
  %944 = load i32, i32* %943, align 4, !tbaa !10
  %945 = add i32 %944, %942
  %946 = bitcast i16* %938 to i32*
  store i32 %945, i32* %946, align 4, !tbaa !10
  %947 = add nuw nsw i32 %910, 4
  %948 = getelementptr inbounds i16, i16* %911, i64 8
  %949 = getelementptr inbounds i16, i16* %913, i64 8
  %950 = getelementptr inbounds i16, i16* %912, i64 8
  %951 = icmp eq i32 %947, 545
  br i1 %951, label %952, label %909, !llvm.loop !163

952:                                              ; preds = %909, %908
  %953 = getelementptr inbounds i16, i16* %560, i64 3288
  %954 = getelementptr inbounds i16, i16* %953, i64 4384
  %955 = getelementptr inbounds i16, i16* %563, i64 3288
  %956 = icmp ult i16* %340, %345
  %957 = icmp ult i16* %344, %341
  %958 = and i1 %956, %957
  %959 = icmp ult i16* %340, %347
  %960 = icmp ult i16* %346, %341
  %961 = and i1 %959, %960
  %962 = or i1 %958, %961
  br i1 %962, label %1014, label %963

963:                                              ; preds = %952
  %964 = getelementptr i16, i16* %955, i64 1088
  %965 = getelementptr i16, i16* %954, i64 1088
  %966 = getelementptr i16, i16* %953, i64 1088
  br label %967

967:                                              ; preds = %967, %963
  %968 = phi i64 [ 0, %963 ], [ %1012, %967 ]
  %969 = shl nuw i64 %968, 1
  %970 = getelementptr i16, i16* %955, i64 %969
  %971 = shl nuw i64 %968, 1
  %972 = getelementptr i16, i16* %954, i64 %971
  %973 = shl nuw i64 %968, 1
  %974 = getelementptr i16, i16* %953, i64 %973
  %975 = bitcast i16* %974 to <4 x i32>*
  %976 = load <4 x i32>, <4 x i32>* %975, align 4, !tbaa !10, !alias.scope !164
  %977 = getelementptr i16, i16* %974, i64 8
  %978 = bitcast i16* %977 to <4 x i32>*
  %979 = load <4 x i32>, <4 x i32>* %978, align 4, !tbaa !10, !alias.scope !164
  %980 = bitcast i16* %972 to <4 x i32>*
  %981 = load <4 x i32>, <4 x i32>* %980, align 4, !tbaa !10, !alias.scope !167
  %982 = getelementptr i16, i16* %972, i64 8
  %983 = bitcast i16* %982 to <4 x i32>*
  %984 = load <4 x i32>, <4 x i32>* %983, align 4, !tbaa !10, !alias.scope !167
  %985 = add <4 x i32> %981, %976
  %986 = add <4 x i32> %984, %979
  %987 = bitcast i16* %970 to <4 x i32>*
  store <4 x i32> %985, <4 x i32>* %987, align 4, !tbaa !10, !alias.scope !169, !noalias !171
  %988 = getelementptr i16, i16* %970, i64 8
  %989 = bitcast i16* %988 to <4 x i32>*
  store <4 x i32> %986, <4 x i32>* %989, align 4, !tbaa !10, !alias.scope !169, !noalias !171
  %990 = or i64 %968, 8
  %991 = shl nuw i64 %990, 1
  %992 = getelementptr i16, i16* %955, i64 %991
  %993 = shl nuw i64 %990, 1
  %994 = getelementptr i16, i16* %954, i64 %993
  %995 = shl nuw i64 %990, 1
  %996 = getelementptr i16, i16* %953, i64 %995
  %997 = bitcast i16* %996 to <4 x i32>*
  %998 = load <4 x i32>, <4 x i32>* %997, align 4, !tbaa !10, !alias.scope !164
  %999 = getelementptr i16, i16* %996, i64 8
  %1000 = bitcast i16* %999 to <4 x i32>*
  %1001 = load <4 x i32>, <4 x i32>* %1000, align 4, !tbaa !10, !alias.scope !164
  %1002 = bitcast i16* %994 to <4 x i32>*
  %1003 = load <4 x i32>, <4 x i32>* %1002, align 4, !tbaa !10, !alias.scope !167
  %1004 = getelementptr i16, i16* %994, i64 8
  %1005 = bitcast i16* %1004 to <4 x i32>*
  %1006 = load <4 x i32>, <4 x i32>* %1005, align 4, !tbaa !10, !alias.scope !167
  %1007 = add <4 x i32> %1003, %998
  %1008 = add <4 x i32> %1006, %1001
  %1009 = bitcast i16* %992 to <4 x i32>*
  store <4 x i32> %1007, <4 x i32>* %1009, align 4, !tbaa !10, !alias.scope !169, !noalias !171
  %1010 = getelementptr i16, i16* %992, i64 8
  %1011 = bitcast i16* %1010 to <4 x i32>*
  store <4 x i32> %1008, <4 x i32>* %1011, align 4, !tbaa !10, !alias.scope !169, !noalias !171
  %1012 = add nuw nsw i64 %968, 16
  %1013 = icmp eq i64 %1012, 544
  br i1 %1013, label %1014, label %967, !llvm.loop !172

1014:                                             ; preds = %952, %967
  %1015 = phi i32 [ 0, %952 ], [ 544, %967 ]
  %1016 = phi i16* [ %955, %952 ], [ %964, %967 ]
  %1017 = phi i16* [ %954, %952 ], [ %965, %967 ]
  %1018 = phi i16* [ %953, %952 ], [ %966, %967 ]
  br label %1019

1019:                                             ; preds = %1019, %1014
  %1020 = phi i32 [ %1031, %1019 ], [ %1015, %1014 ]
  %1021 = phi i16* [ %1032, %1019 ], [ %1016, %1014 ]
  %1022 = phi i16* [ %1034, %1019 ], [ %1017, %1014 ]
  %1023 = phi i16* [ %1033, %1019 ], [ %1018, %1014 ]
  %1024 = phi i32 [ %1035, %1019 ], [ 0, %1014 ]
  %1025 = bitcast i16* %1023 to i32*
  %1026 = load i32, i32* %1025, align 4, !tbaa !10
  %1027 = bitcast i16* %1022 to i32*
  %1028 = load i32, i32* %1027, align 4, !tbaa !10
  %1029 = add i32 %1028, %1026
  %1030 = bitcast i16* %1021 to i32*
  store i32 %1029, i32* %1030, align 4, !tbaa !10
  %1031 = add nuw nsw i32 %1020, 1
  %1032 = getelementptr inbounds i16, i16* %1021, i64 2
  %1033 = getelementptr inbounds i16, i16* %1023, i64 2
  %1034 = getelementptr inbounds i16, i16* %1022, i64 2
  %1035 = add i32 %1024, 1
  %1036 = icmp eq i32 %1024, 0
  br i1 %1036, label %1037, label %1019, !llvm.loop !173

1037:                                             ; preds = %1019
  br i1 %962, label %1038, label %1081

1038:                                             ; preds = %1037, %1038
  %1039 = phi i32 [ %1076, %1038 ], [ %1031, %1037 ]
  %1040 = phi i16* [ %1077, %1038 ], [ %1032, %1037 ]
  %1041 = phi i16* [ %1079, %1038 ], [ %1034, %1037 ]
  %1042 = phi i16* [ %1078, %1038 ], [ %1033, %1037 ]
  %1043 = bitcast i16* %1042 to i32*
  %1044 = load i32, i32* %1043, align 4, !tbaa !10
  %1045 = bitcast i16* %1041 to i32*
  %1046 = load i32, i32* %1045, align 4, !tbaa !10
  %1047 = add i32 %1046, %1044
  %1048 = bitcast i16* %1040 to i32*
  store i32 %1047, i32* %1048, align 4, !tbaa !10
  %1049 = getelementptr inbounds i16, i16* %1040, i64 2
  %1050 = getelementptr inbounds i16, i16* %1042, i64 2
  %1051 = getelementptr inbounds i16, i16* %1041, i64 2
  %1052 = bitcast i16* %1050 to i32*
  %1053 = load i32, i32* %1052, align 4, !tbaa !10
  %1054 = bitcast i16* %1051 to i32*
  %1055 = load i32, i32* %1054, align 4, !tbaa !10
  %1056 = add i32 %1055, %1053
  %1057 = bitcast i16* %1049 to i32*
  store i32 %1056, i32* %1057, align 4, !tbaa !10
  %1058 = getelementptr inbounds i16, i16* %1040, i64 4
  %1059 = getelementptr inbounds i16, i16* %1042, i64 4
  %1060 = getelementptr inbounds i16, i16* %1041, i64 4
  %1061 = bitcast i16* %1059 to i32*
  %1062 = load i32, i32* %1061, align 4, !tbaa !10
  %1063 = bitcast i16* %1060 to i32*
  %1064 = load i32, i32* %1063, align 4, !tbaa !10
  %1065 = add i32 %1064, %1062
  %1066 = bitcast i16* %1058 to i32*
  store i32 %1065, i32* %1066, align 4, !tbaa !10
  %1067 = getelementptr inbounds i16, i16* %1040, i64 6
  %1068 = getelementptr inbounds i16, i16* %1042, i64 6
  %1069 = getelementptr inbounds i16, i16* %1041, i64 6
  %1070 = bitcast i16* %1068 to i32*
  %1071 = load i32, i32* %1070, align 4, !tbaa !10
  %1072 = bitcast i16* %1069 to i32*
  %1073 = load i32, i32* %1072, align 4, !tbaa !10
  %1074 = add i32 %1073, %1071
  %1075 = bitcast i16* %1067 to i32*
  store i32 %1074, i32* %1075, align 4, !tbaa !10
  %1076 = add nuw nsw i32 %1039, 4
  %1077 = getelementptr inbounds i16, i16* %1040, i64 8
  %1078 = getelementptr inbounds i16, i16* %1042, i64 8
  %1079 = getelementptr inbounds i16, i16* %1041, i64 8
  %1080 = icmp eq i32 %1076, 545
  br i1 %1080, label %1081, label %1038, !llvm.loop !174

1081:                                             ; preds = %1038, %1037
  %1082 = getelementptr inbounds i16, i16* %560, i64 8768
  %1083 = getelementptr inbounds i16, i16* %1082, i64 4384
  %1084 = getelementptr inbounds i16, i16* %563, i64 4384
  %1085 = icmp ult i16* %350, %355
  %1086 = icmp ult i16* %354, %351
  %1087 = and i1 %1085, %1086
  %1088 = icmp ult i16* %350, %357
  %1089 = icmp ult i16* %356, %351
  %1090 = and i1 %1088, %1089
  %1091 = or i1 %1087, %1090
  br i1 %1091, label %1143, label %1092

1092:                                             ; preds = %1081
  %1093 = getelementptr i16, i16* %1084, i64 1088
  %1094 = getelementptr i16, i16* %1083, i64 1088
  %1095 = getelementptr i16, i16* %1082, i64 1088
  br label %1096

1096:                                             ; preds = %1096, %1092
  %1097 = phi i64 [ 0, %1092 ], [ %1141, %1096 ]
  %1098 = shl nuw i64 %1097, 1
  %1099 = getelementptr i16, i16* %1084, i64 %1098
  %1100 = shl nuw i64 %1097, 1
  %1101 = getelementptr i16, i16* %1083, i64 %1100
  %1102 = shl nuw i64 %1097, 1
  %1103 = getelementptr i16, i16* %1082, i64 %1102
  %1104 = bitcast i16* %1103 to <4 x i32>*
  %1105 = load <4 x i32>, <4 x i32>* %1104, align 4, !tbaa !10, !alias.scope !175
  %1106 = getelementptr i16, i16* %1103, i64 8
  %1107 = bitcast i16* %1106 to <4 x i32>*
  %1108 = load <4 x i32>, <4 x i32>* %1107, align 4, !tbaa !10, !alias.scope !175
  %1109 = bitcast i16* %1101 to <4 x i32>*
  %1110 = load <4 x i32>, <4 x i32>* %1109, align 4, !tbaa !10, !alias.scope !178
  %1111 = getelementptr i16, i16* %1101, i64 8
  %1112 = bitcast i16* %1111 to <4 x i32>*
  %1113 = load <4 x i32>, <4 x i32>* %1112, align 4, !tbaa !10, !alias.scope !178
  %1114 = add <4 x i32> %1110, %1105
  %1115 = add <4 x i32> %1113, %1108
  %1116 = bitcast i16* %1099 to <4 x i32>*
  store <4 x i32> %1114, <4 x i32>* %1116, align 4, !tbaa !10, !alias.scope !180, !noalias !182
  %1117 = getelementptr i16, i16* %1099, i64 8
  %1118 = bitcast i16* %1117 to <4 x i32>*
  store <4 x i32> %1115, <4 x i32>* %1118, align 4, !tbaa !10, !alias.scope !180, !noalias !182
  %1119 = or i64 %1097, 8
  %1120 = shl nuw i64 %1119, 1
  %1121 = getelementptr i16, i16* %1084, i64 %1120
  %1122 = shl nuw i64 %1119, 1
  %1123 = getelementptr i16, i16* %1083, i64 %1122
  %1124 = shl nuw i64 %1119, 1
  %1125 = getelementptr i16, i16* %1082, i64 %1124
  %1126 = bitcast i16* %1125 to <4 x i32>*
  %1127 = load <4 x i32>, <4 x i32>* %1126, align 4, !tbaa !10, !alias.scope !175
  %1128 = getelementptr i16, i16* %1125, i64 8
  %1129 = bitcast i16* %1128 to <4 x i32>*
  %1130 = load <4 x i32>, <4 x i32>* %1129, align 4, !tbaa !10, !alias.scope !175
  %1131 = bitcast i16* %1123 to <4 x i32>*
  %1132 = load <4 x i32>, <4 x i32>* %1131, align 4, !tbaa !10, !alias.scope !178
  %1133 = getelementptr i16, i16* %1123, i64 8
  %1134 = bitcast i16* %1133 to <4 x i32>*
  %1135 = load <4 x i32>, <4 x i32>* %1134, align 4, !tbaa !10, !alias.scope !178
  %1136 = add <4 x i32> %1132, %1127
  %1137 = add <4 x i32> %1135, %1130
  %1138 = bitcast i16* %1121 to <4 x i32>*
  store <4 x i32> %1136, <4 x i32>* %1138, align 4, !tbaa !10, !alias.scope !180, !noalias !182
  %1139 = getelementptr i16, i16* %1121, i64 8
  %1140 = bitcast i16* %1139 to <4 x i32>*
  store <4 x i32> %1137, <4 x i32>* %1140, align 4, !tbaa !10, !alias.scope !180, !noalias !182
  %1141 = add nuw nsw i64 %1097, 16
  %1142 = icmp eq i64 %1141, 544
  br i1 %1142, label %1143, label %1096, !llvm.loop !183

1143:                                             ; preds = %1081, %1096
  %1144 = phi i32 [ 0, %1081 ], [ 544, %1096 ]
  %1145 = phi i16* [ %1084, %1081 ], [ %1093, %1096 ]
  %1146 = phi i16* [ %1083, %1081 ], [ %1094, %1096 ]
  %1147 = phi i16* [ %1082, %1081 ], [ %1095, %1096 ]
  br label %1148

1148:                                             ; preds = %1148, %1143
  %1149 = phi i32 [ %1160, %1148 ], [ %1144, %1143 ]
  %1150 = phi i16* [ %1161, %1148 ], [ %1145, %1143 ]
  %1151 = phi i16* [ %1163, %1148 ], [ %1146, %1143 ]
  %1152 = phi i16* [ %1162, %1148 ], [ %1147, %1143 ]
  %1153 = phi i32 [ %1164, %1148 ], [ 0, %1143 ]
  %1154 = bitcast i16* %1152 to i32*
  %1155 = load i32, i32* %1154, align 4, !tbaa !10
  %1156 = bitcast i16* %1151 to i32*
  %1157 = load i32, i32* %1156, align 4, !tbaa !10
  %1158 = add i32 %1157, %1155
  %1159 = bitcast i16* %1150 to i32*
  store i32 %1158, i32* %1159, align 4, !tbaa !10
  %1160 = add nuw nsw i32 %1149, 1
  %1161 = getelementptr inbounds i16, i16* %1150, i64 2
  %1162 = getelementptr inbounds i16, i16* %1152, i64 2
  %1163 = getelementptr inbounds i16, i16* %1151, i64 2
  %1164 = add i32 %1153, 1
  %1165 = icmp eq i32 %1153, 0
  br i1 %1165, label %1166, label %1148, !llvm.loop !184

1166:                                             ; preds = %1148
  br i1 %1091, label %1167, label %1210

1167:                                             ; preds = %1166, %1167
  %1168 = phi i32 [ %1205, %1167 ], [ %1160, %1166 ]
  %1169 = phi i16* [ %1206, %1167 ], [ %1161, %1166 ]
  %1170 = phi i16* [ %1208, %1167 ], [ %1163, %1166 ]
  %1171 = phi i16* [ %1207, %1167 ], [ %1162, %1166 ]
  %1172 = bitcast i16* %1171 to i32*
  %1173 = load i32, i32* %1172, align 4, !tbaa !10
  %1174 = bitcast i16* %1170 to i32*
  %1175 = load i32, i32* %1174, align 4, !tbaa !10
  %1176 = add i32 %1175, %1173
  %1177 = bitcast i16* %1169 to i32*
  store i32 %1176, i32* %1177, align 4, !tbaa !10
  %1178 = getelementptr inbounds i16, i16* %1169, i64 2
  %1179 = getelementptr inbounds i16, i16* %1171, i64 2
  %1180 = getelementptr inbounds i16, i16* %1170, i64 2
  %1181 = bitcast i16* %1179 to i32*
  %1182 = load i32, i32* %1181, align 4, !tbaa !10
  %1183 = bitcast i16* %1180 to i32*
  %1184 = load i32, i32* %1183, align 4, !tbaa !10
  %1185 = add i32 %1184, %1182
  %1186 = bitcast i16* %1178 to i32*
  store i32 %1185, i32* %1186, align 4, !tbaa !10
  %1187 = getelementptr inbounds i16, i16* %1169, i64 4
  %1188 = getelementptr inbounds i16, i16* %1171, i64 4
  %1189 = getelementptr inbounds i16, i16* %1170, i64 4
  %1190 = bitcast i16* %1188 to i32*
  %1191 = load i32, i32* %1190, align 4, !tbaa !10
  %1192 = bitcast i16* %1189 to i32*
  %1193 = load i32, i32* %1192, align 4, !tbaa !10
  %1194 = add i32 %1193, %1191
  %1195 = bitcast i16* %1187 to i32*
  store i32 %1194, i32* %1195, align 4, !tbaa !10
  %1196 = getelementptr inbounds i16, i16* %1169, i64 6
  %1197 = getelementptr inbounds i16, i16* %1171, i64 6
  %1198 = getelementptr inbounds i16, i16* %1170, i64 6
  %1199 = bitcast i16* %1197 to i32*
  %1200 = load i32, i32* %1199, align 4, !tbaa !10
  %1201 = bitcast i16* %1198 to i32*
  %1202 = load i32, i32* %1201, align 4, !tbaa !10
  %1203 = add i32 %1202, %1200
  %1204 = bitcast i16* %1196 to i32*
  store i32 %1203, i32* %1204, align 4, !tbaa !10
  %1205 = add nuw nsw i32 %1168, 4
  %1206 = getelementptr inbounds i16, i16* %1169, i64 8
  %1207 = getelementptr inbounds i16, i16* %1171, i64 8
  %1208 = getelementptr inbounds i16, i16* %1170, i64 8
  %1209 = icmp eq i32 %1205, 545
  br i1 %1209, label %1210, label %1167, !llvm.loop !185

1210:                                             ; preds = %1167, %1166
  %1211 = getelementptr inbounds i16, i16* %560, i64 9864
  %1212 = getelementptr inbounds i16, i16* %1211, i64 4384
  %1213 = getelementptr inbounds i16, i16* %563, i64 5480
  %1214 = icmp ult i16* %360, %365
  %1215 = icmp ult i16* %364, %361
  %1216 = and i1 %1214, %1215
  %1217 = icmp ult i16* %360, %367
  %1218 = icmp ult i16* %366, %361
  %1219 = and i1 %1217, %1218
  %1220 = or i1 %1216, %1219
  br i1 %1220, label %1272, label %1221

1221:                                             ; preds = %1210
  %1222 = getelementptr i16, i16* %1213, i64 1088
  %1223 = getelementptr i16, i16* %1212, i64 1088
  %1224 = getelementptr i16, i16* %1211, i64 1088
  br label %1225

1225:                                             ; preds = %1225, %1221
  %1226 = phi i64 [ 0, %1221 ], [ %1270, %1225 ]
  %1227 = shl nuw i64 %1226, 1
  %1228 = getelementptr i16, i16* %1213, i64 %1227
  %1229 = shl nuw i64 %1226, 1
  %1230 = getelementptr i16, i16* %1212, i64 %1229
  %1231 = shl nuw i64 %1226, 1
  %1232 = getelementptr i16, i16* %1211, i64 %1231
  %1233 = bitcast i16* %1232 to <4 x i32>*
  %1234 = load <4 x i32>, <4 x i32>* %1233, align 4, !tbaa !10, !alias.scope !186
  %1235 = getelementptr i16, i16* %1232, i64 8
  %1236 = bitcast i16* %1235 to <4 x i32>*
  %1237 = load <4 x i32>, <4 x i32>* %1236, align 4, !tbaa !10, !alias.scope !186
  %1238 = bitcast i16* %1230 to <4 x i32>*
  %1239 = load <4 x i32>, <4 x i32>* %1238, align 4, !tbaa !10, !alias.scope !189
  %1240 = getelementptr i16, i16* %1230, i64 8
  %1241 = bitcast i16* %1240 to <4 x i32>*
  %1242 = load <4 x i32>, <4 x i32>* %1241, align 4, !tbaa !10, !alias.scope !189
  %1243 = add <4 x i32> %1239, %1234
  %1244 = add <4 x i32> %1242, %1237
  %1245 = bitcast i16* %1228 to <4 x i32>*
  store <4 x i32> %1243, <4 x i32>* %1245, align 4, !tbaa !10, !alias.scope !191, !noalias !193
  %1246 = getelementptr i16, i16* %1228, i64 8
  %1247 = bitcast i16* %1246 to <4 x i32>*
  store <4 x i32> %1244, <4 x i32>* %1247, align 4, !tbaa !10, !alias.scope !191, !noalias !193
  %1248 = or i64 %1226, 8
  %1249 = shl nuw i64 %1248, 1
  %1250 = getelementptr i16, i16* %1213, i64 %1249
  %1251 = shl nuw i64 %1248, 1
  %1252 = getelementptr i16, i16* %1212, i64 %1251
  %1253 = shl nuw i64 %1248, 1
  %1254 = getelementptr i16, i16* %1211, i64 %1253
  %1255 = bitcast i16* %1254 to <4 x i32>*
  %1256 = load <4 x i32>, <4 x i32>* %1255, align 4, !tbaa !10, !alias.scope !186
  %1257 = getelementptr i16, i16* %1254, i64 8
  %1258 = bitcast i16* %1257 to <4 x i32>*
  %1259 = load <4 x i32>, <4 x i32>* %1258, align 4, !tbaa !10, !alias.scope !186
  %1260 = bitcast i16* %1252 to <4 x i32>*
  %1261 = load <4 x i32>, <4 x i32>* %1260, align 4, !tbaa !10, !alias.scope !189
  %1262 = getelementptr i16, i16* %1252, i64 8
  %1263 = bitcast i16* %1262 to <4 x i32>*
  %1264 = load <4 x i32>, <4 x i32>* %1263, align 4, !tbaa !10, !alias.scope !189
  %1265 = add <4 x i32> %1261, %1256
  %1266 = add <4 x i32> %1264, %1259
  %1267 = bitcast i16* %1250 to <4 x i32>*
  store <4 x i32> %1265, <4 x i32>* %1267, align 4, !tbaa !10, !alias.scope !191, !noalias !193
  %1268 = getelementptr i16, i16* %1250, i64 8
  %1269 = bitcast i16* %1268 to <4 x i32>*
  store <4 x i32> %1266, <4 x i32>* %1269, align 4, !tbaa !10, !alias.scope !191, !noalias !193
  %1270 = add nuw nsw i64 %1226, 16
  %1271 = icmp eq i64 %1270, 544
  br i1 %1271, label %1272, label %1225, !llvm.loop !194

1272:                                             ; preds = %1210, %1225
  %1273 = phi i32 [ 0, %1210 ], [ 544, %1225 ]
  %1274 = phi i16* [ %1213, %1210 ], [ %1222, %1225 ]
  %1275 = phi i16* [ %1212, %1210 ], [ %1223, %1225 ]
  %1276 = phi i16* [ %1211, %1210 ], [ %1224, %1225 ]
  br label %1277

1277:                                             ; preds = %1277, %1272
  %1278 = phi i32 [ %1289, %1277 ], [ %1273, %1272 ]
  %1279 = phi i16* [ %1290, %1277 ], [ %1274, %1272 ]
  %1280 = phi i16* [ %1292, %1277 ], [ %1275, %1272 ]
  %1281 = phi i16* [ %1291, %1277 ], [ %1276, %1272 ]
  %1282 = phi i32 [ %1293, %1277 ], [ 0, %1272 ]
  %1283 = bitcast i16* %1281 to i32*
  %1284 = load i32, i32* %1283, align 4, !tbaa !10
  %1285 = bitcast i16* %1280 to i32*
  %1286 = load i32, i32* %1285, align 4, !tbaa !10
  %1287 = add i32 %1286, %1284
  %1288 = bitcast i16* %1279 to i32*
  store i32 %1287, i32* %1288, align 4, !tbaa !10
  %1289 = add nuw nsw i32 %1278, 1
  %1290 = getelementptr inbounds i16, i16* %1279, i64 2
  %1291 = getelementptr inbounds i16, i16* %1281, i64 2
  %1292 = getelementptr inbounds i16, i16* %1280, i64 2
  %1293 = add i32 %1282, 1
  %1294 = icmp eq i32 %1282, 0
  br i1 %1294, label %1295, label %1277, !llvm.loop !195

1295:                                             ; preds = %1277
  br i1 %1220, label %1296, label %1339

1296:                                             ; preds = %1295, %1296
  %1297 = phi i32 [ %1334, %1296 ], [ %1289, %1295 ]
  %1298 = phi i16* [ %1335, %1296 ], [ %1290, %1295 ]
  %1299 = phi i16* [ %1337, %1296 ], [ %1292, %1295 ]
  %1300 = phi i16* [ %1336, %1296 ], [ %1291, %1295 ]
  %1301 = bitcast i16* %1300 to i32*
  %1302 = load i32, i32* %1301, align 4, !tbaa !10
  %1303 = bitcast i16* %1299 to i32*
  %1304 = load i32, i32* %1303, align 4, !tbaa !10
  %1305 = add i32 %1304, %1302
  %1306 = bitcast i16* %1298 to i32*
  store i32 %1305, i32* %1306, align 4, !tbaa !10
  %1307 = getelementptr inbounds i16, i16* %1298, i64 2
  %1308 = getelementptr inbounds i16, i16* %1300, i64 2
  %1309 = getelementptr inbounds i16, i16* %1299, i64 2
  %1310 = bitcast i16* %1308 to i32*
  %1311 = load i32, i32* %1310, align 4, !tbaa !10
  %1312 = bitcast i16* %1309 to i32*
  %1313 = load i32, i32* %1312, align 4, !tbaa !10
  %1314 = add i32 %1313, %1311
  %1315 = bitcast i16* %1307 to i32*
  store i32 %1314, i32* %1315, align 4, !tbaa !10
  %1316 = getelementptr inbounds i16, i16* %1298, i64 4
  %1317 = getelementptr inbounds i16, i16* %1300, i64 4
  %1318 = getelementptr inbounds i16, i16* %1299, i64 4
  %1319 = bitcast i16* %1317 to i32*
  %1320 = load i32, i32* %1319, align 4, !tbaa !10
  %1321 = bitcast i16* %1318 to i32*
  %1322 = load i32, i32* %1321, align 4, !tbaa !10
  %1323 = add i32 %1322, %1320
  %1324 = bitcast i16* %1316 to i32*
  store i32 %1323, i32* %1324, align 4, !tbaa !10
  %1325 = getelementptr inbounds i16, i16* %1298, i64 6
  %1326 = getelementptr inbounds i16, i16* %1300, i64 6
  %1327 = getelementptr inbounds i16, i16* %1299, i64 6
  %1328 = bitcast i16* %1326 to i32*
  %1329 = load i32, i32* %1328, align 4, !tbaa !10
  %1330 = bitcast i16* %1327 to i32*
  %1331 = load i32, i32* %1330, align 4, !tbaa !10
  %1332 = add i32 %1331, %1329
  %1333 = bitcast i16* %1325 to i32*
  store i32 %1332, i32* %1333, align 4, !tbaa !10
  %1334 = add nuw nsw i32 %1297, 4
  %1335 = getelementptr inbounds i16, i16* %1298, i64 8
  %1336 = getelementptr inbounds i16, i16* %1300, i64 8
  %1337 = getelementptr inbounds i16, i16* %1299, i64 8
  %1338 = icmp eq i32 %1334, 545
  br i1 %1338, label %1339, label %1296, !llvm.loop !196

1339:                                             ; preds = %1296, %1295
  %1340 = getelementptr inbounds i16, i16* %560, i64 10960
  %1341 = getelementptr inbounds i16, i16* %1340, i64 4384
  %1342 = getelementptr inbounds i16, i16* %563, i64 6576
  %1343 = icmp ult i16* %370, %375
  %1344 = icmp ult i16* %374, %371
  %1345 = and i1 %1343, %1344
  %1346 = icmp ult i16* %370, %377
  %1347 = icmp ult i16* %376, %371
  %1348 = and i1 %1346, %1347
  %1349 = or i1 %1345, %1348
  br i1 %1349, label %1401, label %1350

1350:                                             ; preds = %1339
  %1351 = getelementptr i16, i16* %1342, i64 1088
  %1352 = getelementptr i16, i16* %1341, i64 1088
  %1353 = getelementptr i16, i16* %1340, i64 1088
  br label %1354

1354:                                             ; preds = %1354, %1350
  %1355 = phi i64 [ 0, %1350 ], [ %1399, %1354 ]
  %1356 = shl nuw i64 %1355, 1
  %1357 = getelementptr i16, i16* %1342, i64 %1356
  %1358 = shl nuw i64 %1355, 1
  %1359 = getelementptr i16, i16* %1341, i64 %1358
  %1360 = shl nuw i64 %1355, 1
  %1361 = getelementptr i16, i16* %1340, i64 %1360
  %1362 = bitcast i16* %1361 to <4 x i32>*
  %1363 = load <4 x i32>, <4 x i32>* %1362, align 4, !tbaa !10, !alias.scope !197
  %1364 = getelementptr i16, i16* %1361, i64 8
  %1365 = bitcast i16* %1364 to <4 x i32>*
  %1366 = load <4 x i32>, <4 x i32>* %1365, align 4, !tbaa !10, !alias.scope !197
  %1367 = bitcast i16* %1359 to <4 x i32>*
  %1368 = load <4 x i32>, <4 x i32>* %1367, align 4, !tbaa !10, !alias.scope !200
  %1369 = getelementptr i16, i16* %1359, i64 8
  %1370 = bitcast i16* %1369 to <4 x i32>*
  %1371 = load <4 x i32>, <4 x i32>* %1370, align 4, !tbaa !10, !alias.scope !200
  %1372 = add <4 x i32> %1368, %1363
  %1373 = add <4 x i32> %1371, %1366
  %1374 = bitcast i16* %1357 to <4 x i32>*
  store <4 x i32> %1372, <4 x i32>* %1374, align 4, !tbaa !10, !alias.scope !202, !noalias !204
  %1375 = getelementptr i16, i16* %1357, i64 8
  %1376 = bitcast i16* %1375 to <4 x i32>*
  store <4 x i32> %1373, <4 x i32>* %1376, align 4, !tbaa !10, !alias.scope !202, !noalias !204
  %1377 = or i64 %1355, 8
  %1378 = shl nuw i64 %1377, 1
  %1379 = getelementptr i16, i16* %1342, i64 %1378
  %1380 = shl nuw i64 %1377, 1
  %1381 = getelementptr i16, i16* %1341, i64 %1380
  %1382 = shl nuw i64 %1377, 1
  %1383 = getelementptr i16, i16* %1340, i64 %1382
  %1384 = bitcast i16* %1383 to <4 x i32>*
  %1385 = load <4 x i32>, <4 x i32>* %1384, align 4, !tbaa !10, !alias.scope !197
  %1386 = getelementptr i16, i16* %1383, i64 8
  %1387 = bitcast i16* %1386 to <4 x i32>*
  %1388 = load <4 x i32>, <4 x i32>* %1387, align 4, !tbaa !10, !alias.scope !197
  %1389 = bitcast i16* %1381 to <4 x i32>*
  %1390 = load <4 x i32>, <4 x i32>* %1389, align 4, !tbaa !10, !alias.scope !200
  %1391 = getelementptr i16, i16* %1381, i64 8
  %1392 = bitcast i16* %1391 to <4 x i32>*
  %1393 = load <4 x i32>, <4 x i32>* %1392, align 4, !tbaa !10, !alias.scope !200
  %1394 = add <4 x i32> %1390, %1385
  %1395 = add <4 x i32> %1393, %1388
  %1396 = bitcast i16* %1379 to <4 x i32>*
  store <4 x i32> %1394, <4 x i32>* %1396, align 4, !tbaa !10, !alias.scope !202, !noalias !204
  %1397 = getelementptr i16, i16* %1379, i64 8
  %1398 = bitcast i16* %1397 to <4 x i32>*
  store <4 x i32> %1395, <4 x i32>* %1398, align 4, !tbaa !10, !alias.scope !202, !noalias !204
  %1399 = add nuw nsw i64 %1355, 16
  %1400 = icmp eq i64 %1399, 544
  br i1 %1400, label %1401, label %1354, !llvm.loop !205

1401:                                             ; preds = %1339, %1354
  %1402 = phi i32 [ 0, %1339 ], [ 544, %1354 ]
  %1403 = phi i16* [ %1342, %1339 ], [ %1351, %1354 ]
  %1404 = phi i16* [ %1341, %1339 ], [ %1352, %1354 ]
  %1405 = phi i16* [ %1340, %1339 ], [ %1353, %1354 ]
  br label %1406

1406:                                             ; preds = %1406, %1401
  %1407 = phi i32 [ %1418, %1406 ], [ %1402, %1401 ]
  %1408 = phi i16* [ %1419, %1406 ], [ %1403, %1401 ]
  %1409 = phi i16* [ %1421, %1406 ], [ %1404, %1401 ]
  %1410 = phi i16* [ %1420, %1406 ], [ %1405, %1401 ]
  %1411 = phi i32 [ %1422, %1406 ], [ 0, %1401 ]
  %1412 = bitcast i16* %1410 to i32*
  %1413 = load i32, i32* %1412, align 4, !tbaa !10
  %1414 = bitcast i16* %1409 to i32*
  %1415 = load i32, i32* %1414, align 4, !tbaa !10
  %1416 = add i32 %1415, %1413
  %1417 = bitcast i16* %1408 to i32*
  store i32 %1416, i32* %1417, align 4, !tbaa !10
  %1418 = add nuw nsw i32 %1407, 1
  %1419 = getelementptr inbounds i16, i16* %1408, i64 2
  %1420 = getelementptr inbounds i16, i16* %1410, i64 2
  %1421 = getelementptr inbounds i16, i16* %1409, i64 2
  %1422 = add i32 %1411, 1
  %1423 = icmp eq i32 %1411, 0
  br i1 %1423, label %1424, label %1406, !llvm.loop !206

1424:                                             ; preds = %1406
  br i1 %1349, label %1425, label %1468

1425:                                             ; preds = %1424, %1425
  %1426 = phi i32 [ %1463, %1425 ], [ %1418, %1424 ]
  %1427 = phi i16* [ %1464, %1425 ], [ %1419, %1424 ]
  %1428 = phi i16* [ %1466, %1425 ], [ %1421, %1424 ]
  %1429 = phi i16* [ %1465, %1425 ], [ %1420, %1424 ]
  %1430 = bitcast i16* %1429 to i32*
  %1431 = load i32, i32* %1430, align 4, !tbaa !10
  %1432 = bitcast i16* %1428 to i32*
  %1433 = load i32, i32* %1432, align 4, !tbaa !10
  %1434 = add i32 %1433, %1431
  %1435 = bitcast i16* %1427 to i32*
  store i32 %1434, i32* %1435, align 4, !tbaa !10
  %1436 = getelementptr inbounds i16, i16* %1427, i64 2
  %1437 = getelementptr inbounds i16, i16* %1429, i64 2
  %1438 = getelementptr inbounds i16, i16* %1428, i64 2
  %1439 = bitcast i16* %1437 to i32*
  %1440 = load i32, i32* %1439, align 4, !tbaa !10
  %1441 = bitcast i16* %1438 to i32*
  %1442 = load i32, i32* %1441, align 4, !tbaa !10
  %1443 = add i32 %1442, %1440
  %1444 = bitcast i16* %1436 to i32*
  store i32 %1443, i32* %1444, align 4, !tbaa !10
  %1445 = getelementptr inbounds i16, i16* %1427, i64 4
  %1446 = getelementptr inbounds i16, i16* %1429, i64 4
  %1447 = getelementptr inbounds i16, i16* %1428, i64 4
  %1448 = bitcast i16* %1446 to i32*
  %1449 = load i32, i32* %1448, align 4, !tbaa !10
  %1450 = bitcast i16* %1447 to i32*
  %1451 = load i32, i32* %1450, align 4, !tbaa !10
  %1452 = add i32 %1451, %1449
  %1453 = bitcast i16* %1445 to i32*
  store i32 %1452, i32* %1453, align 4, !tbaa !10
  %1454 = getelementptr inbounds i16, i16* %1427, i64 6
  %1455 = getelementptr inbounds i16, i16* %1429, i64 6
  %1456 = getelementptr inbounds i16, i16* %1428, i64 6
  %1457 = bitcast i16* %1455 to i32*
  %1458 = load i32, i32* %1457, align 4, !tbaa !10
  %1459 = bitcast i16* %1456 to i32*
  %1460 = load i32, i32* %1459, align 4, !tbaa !10
  %1461 = add i32 %1460, %1458
  %1462 = bitcast i16* %1454 to i32*
  store i32 %1461, i32* %1462, align 4, !tbaa !10
  %1463 = add nuw nsw i32 %1426, 4
  %1464 = getelementptr inbounds i16, i16* %1427, i64 8
  %1465 = getelementptr inbounds i16, i16* %1429, i64 8
  %1466 = getelementptr inbounds i16, i16* %1428, i64 8
  %1467 = icmp eq i32 %1463, 545
  br i1 %1467, label %1468, label %1425, !llvm.loop !207

1468:                                             ; preds = %1425, %1424
  %1469 = getelementptr inbounds i16, i16* %560, i64 12056
  %1470 = getelementptr inbounds i16, i16* %1469, i64 4384
  %1471 = getelementptr inbounds i16, i16* %563, i64 7672
  %1472 = icmp ult i16* %380, %385
  %1473 = icmp ult i16* %384, %381
  %1474 = and i1 %1472, %1473
  %1475 = icmp ult i16* %380, %387
  %1476 = icmp ult i16* %386, %381
  %1477 = and i1 %1475, %1476
  %1478 = or i1 %1474, %1477
  br i1 %1478, label %1530, label %1479

1479:                                             ; preds = %1468
  %1480 = getelementptr i16, i16* %1471, i64 1088
  %1481 = getelementptr i16, i16* %1470, i64 1088
  %1482 = getelementptr i16, i16* %1469, i64 1088
  br label %1483

1483:                                             ; preds = %1483, %1479
  %1484 = phi i64 [ 0, %1479 ], [ %1528, %1483 ]
  %1485 = shl nuw i64 %1484, 1
  %1486 = getelementptr i16, i16* %1471, i64 %1485
  %1487 = shl nuw i64 %1484, 1
  %1488 = getelementptr i16, i16* %1470, i64 %1487
  %1489 = shl nuw i64 %1484, 1
  %1490 = getelementptr i16, i16* %1469, i64 %1489
  %1491 = bitcast i16* %1490 to <4 x i32>*
  %1492 = load <4 x i32>, <4 x i32>* %1491, align 4, !tbaa !10, !alias.scope !208
  %1493 = getelementptr i16, i16* %1490, i64 8
  %1494 = bitcast i16* %1493 to <4 x i32>*
  %1495 = load <4 x i32>, <4 x i32>* %1494, align 4, !tbaa !10, !alias.scope !208
  %1496 = bitcast i16* %1488 to <4 x i32>*
  %1497 = load <4 x i32>, <4 x i32>* %1496, align 4, !tbaa !10, !alias.scope !211
  %1498 = getelementptr i16, i16* %1488, i64 8
  %1499 = bitcast i16* %1498 to <4 x i32>*
  %1500 = load <4 x i32>, <4 x i32>* %1499, align 4, !tbaa !10, !alias.scope !211
  %1501 = add <4 x i32> %1497, %1492
  %1502 = add <4 x i32> %1500, %1495
  %1503 = bitcast i16* %1486 to <4 x i32>*
  store <4 x i32> %1501, <4 x i32>* %1503, align 4, !tbaa !10, !alias.scope !213, !noalias !215
  %1504 = getelementptr i16, i16* %1486, i64 8
  %1505 = bitcast i16* %1504 to <4 x i32>*
  store <4 x i32> %1502, <4 x i32>* %1505, align 4, !tbaa !10, !alias.scope !213, !noalias !215
  %1506 = or i64 %1484, 8
  %1507 = shl nuw i64 %1506, 1
  %1508 = getelementptr i16, i16* %1471, i64 %1507
  %1509 = shl nuw i64 %1506, 1
  %1510 = getelementptr i16, i16* %1470, i64 %1509
  %1511 = shl nuw i64 %1506, 1
  %1512 = getelementptr i16, i16* %1469, i64 %1511
  %1513 = bitcast i16* %1512 to <4 x i32>*
  %1514 = load <4 x i32>, <4 x i32>* %1513, align 4, !tbaa !10, !alias.scope !208
  %1515 = getelementptr i16, i16* %1512, i64 8
  %1516 = bitcast i16* %1515 to <4 x i32>*
  %1517 = load <4 x i32>, <4 x i32>* %1516, align 4, !tbaa !10, !alias.scope !208
  %1518 = bitcast i16* %1510 to <4 x i32>*
  %1519 = load <4 x i32>, <4 x i32>* %1518, align 4, !tbaa !10, !alias.scope !211
  %1520 = getelementptr i16, i16* %1510, i64 8
  %1521 = bitcast i16* %1520 to <4 x i32>*
  %1522 = load <4 x i32>, <4 x i32>* %1521, align 4, !tbaa !10, !alias.scope !211
  %1523 = add <4 x i32> %1519, %1514
  %1524 = add <4 x i32> %1522, %1517
  %1525 = bitcast i16* %1508 to <4 x i32>*
  store <4 x i32> %1523, <4 x i32>* %1525, align 4, !tbaa !10, !alias.scope !213, !noalias !215
  %1526 = getelementptr i16, i16* %1508, i64 8
  %1527 = bitcast i16* %1526 to <4 x i32>*
  store <4 x i32> %1524, <4 x i32>* %1527, align 4, !tbaa !10, !alias.scope !213, !noalias !215
  %1528 = add nuw nsw i64 %1484, 16
  %1529 = icmp eq i64 %1528, 544
  br i1 %1529, label %1530, label %1483, !llvm.loop !216

1530:                                             ; preds = %1468, %1483
  %1531 = phi i32 [ 0, %1468 ], [ 544, %1483 ]
  %1532 = phi i16* [ %1471, %1468 ], [ %1480, %1483 ]
  %1533 = phi i16* [ %1470, %1468 ], [ %1481, %1483 ]
  %1534 = phi i16* [ %1469, %1468 ], [ %1482, %1483 ]
  br label %1535

1535:                                             ; preds = %1535, %1530
  %1536 = phi i32 [ %1547, %1535 ], [ %1531, %1530 ]
  %1537 = phi i16* [ %1548, %1535 ], [ %1532, %1530 ]
  %1538 = phi i16* [ %1550, %1535 ], [ %1533, %1530 ]
  %1539 = phi i16* [ %1549, %1535 ], [ %1534, %1530 ]
  %1540 = phi i32 [ %1551, %1535 ], [ 0, %1530 ]
  %1541 = bitcast i16* %1539 to i32*
  %1542 = load i32, i32* %1541, align 4, !tbaa !10
  %1543 = bitcast i16* %1538 to i32*
  %1544 = load i32, i32* %1543, align 4, !tbaa !10
  %1545 = add i32 %1544, %1542
  %1546 = bitcast i16* %1537 to i32*
  store i32 %1545, i32* %1546, align 4, !tbaa !10
  %1547 = add nuw nsw i32 %1536, 1
  %1548 = getelementptr inbounds i16, i16* %1537, i64 2
  %1549 = getelementptr inbounds i16, i16* %1539, i64 2
  %1550 = getelementptr inbounds i16, i16* %1538, i64 2
  %1551 = add i32 %1540, 1
  %1552 = icmp eq i32 %1540, 0
  br i1 %1552, label %1553, label %1535, !llvm.loop !217

1553:                                             ; preds = %1535
  br i1 %1478, label %1554, label %1597

1554:                                             ; preds = %1553, %1554
  %1555 = phi i32 [ %1592, %1554 ], [ %1547, %1553 ]
  %1556 = phi i16* [ %1593, %1554 ], [ %1548, %1553 ]
  %1557 = phi i16* [ %1595, %1554 ], [ %1550, %1553 ]
  %1558 = phi i16* [ %1594, %1554 ], [ %1549, %1553 ]
  %1559 = bitcast i16* %1558 to i32*
  %1560 = load i32, i32* %1559, align 4, !tbaa !10
  %1561 = bitcast i16* %1557 to i32*
  %1562 = load i32, i32* %1561, align 4, !tbaa !10
  %1563 = add i32 %1562, %1560
  %1564 = bitcast i16* %1556 to i32*
  store i32 %1563, i32* %1564, align 4, !tbaa !10
  %1565 = getelementptr inbounds i16, i16* %1556, i64 2
  %1566 = getelementptr inbounds i16, i16* %1558, i64 2
  %1567 = getelementptr inbounds i16, i16* %1557, i64 2
  %1568 = bitcast i16* %1566 to i32*
  %1569 = load i32, i32* %1568, align 4, !tbaa !10
  %1570 = bitcast i16* %1567 to i32*
  %1571 = load i32, i32* %1570, align 4, !tbaa !10
  %1572 = add i32 %1571, %1569
  %1573 = bitcast i16* %1565 to i32*
  store i32 %1572, i32* %1573, align 4, !tbaa !10
  %1574 = getelementptr inbounds i16, i16* %1556, i64 4
  %1575 = getelementptr inbounds i16, i16* %1558, i64 4
  %1576 = getelementptr inbounds i16, i16* %1557, i64 4
  %1577 = bitcast i16* %1575 to i32*
  %1578 = load i32, i32* %1577, align 4, !tbaa !10
  %1579 = bitcast i16* %1576 to i32*
  %1580 = load i32, i32* %1579, align 4, !tbaa !10
  %1581 = add i32 %1580, %1578
  %1582 = bitcast i16* %1574 to i32*
  store i32 %1581, i32* %1582, align 4, !tbaa !10
  %1583 = getelementptr inbounds i16, i16* %1556, i64 6
  %1584 = getelementptr inbounds i16, i16* %1558, i64 6
  %1585 = getelementptr inbounds i16, i16* %1557, i64 6
  %1586 = bitcast i16* %1584 to i32*
  %1587 = load i32, i32* %1586, align 4, !tbaa !10
  %1588 = bitcast i16* %1585 to i32*
  %1589 = load i32, i32* %1588, align 4, !tbaa !10
  %1590 = add i32 %1589, %1587
  %1591 = bitcast i16* %1583 to i32*
  store i32 %1590, i32* %1591, align 4, !tbaa !10
  %1592 = add nuw nsw i32 %1555, 4
  %1593 = getelementptr inbounds i16, i16* %1556, i64 8
  %1594 = getelementptr inbounds i16, i16* %1558, i64 8
  %1595 = getelementptr inbounds i16, i16* %1557, i64 8
  %1596 = icmp eq i32 %1592, 545
  br i1 %1596, label %1597, label %1554, !llvm.loop !218

1597:                                             ; preds = %1554, %1553
  %1598 = getelementptr inbounds i16, i16* %11, i64 %562
  %1599 = icmp ult i16* %390, %395
  %1600 = icmp ult i16* %394, %391
  %1601 = and i1 %1599, %1600
  %1602 = icmp ult i16* %390, %397
  %1603 = icmp ult i16* %396, %391
  %1604 = and i1 %1602, %1603
  %1605 = or i1 %1601, %1604
  br i1 %1605, label %1657, label %1606

1606:                                             ; preds = %1597
  %1607 = getelementptr i16, i16* %1598, i64 1088
  %1608 = getelementptr i16, i16* %695, i64 1088
  %1609 = getelementptr i16, i16* %560, i64 1088
  br label %1610

1610:                                             ; preds = %1610, %1606
  %1611 = phi i64 [ 0, %1606 ], [ %1655, %1610 ]
  %1612 = shl nuw i64 %1611, 1
  %1613 = getelementptr i16, i16* %1598, i64 %1612
  %1614 = shl nuw i64 %1611, 1
  %1615 = getelementptr i16, i16* %695, i64 %1614
  %1616 = shl nuw i64 %1611, 1
  %1617 = getelementptr i16, i16* %560, i64 %1616
  %1618 = bitcast i16* %1617 to <4 x i32>*
  %1619 = load <4 x i32>, <4 x i32>* %1618, align 4, !tbaa !10, !alias.scope !219
  %1620 = getelementptr i16, i16* %1617, i64 8
  %1621 = bitcast i16* %1620 to <4 x i32>*
  %1622 = load <4 x i32>, <4 x i32>* %1621, align 4, !tbaa !10, !alias.scope !219
  %1623 = bitcast i16* %1615 to <4 x i32>*
  %1624 = load <4 x i32>, <4 x i32>* %1623, align 4, !tbaa !10, !alias.scope !222
  %1625 = getelementptr i16, i16* %1615, i64 8
  %1626 = bitcast i16* %1625 to <4 x i32>*
  %1627 = load <4 x i32>, <4 x i32>* %1626, align 4, !tbaa !10, !alias.scope !222
  %1628 = add <4 x i32> %1624, %1619
  %1629 = add <4 x i32> %1627, %1622
  %1630 = bitcast i16* %1613 to <4 x i32>*
  store <4 x i32> %1628, <4 x i32>* %1630, align 4, !tbaa !10, !alias.scope !224, !noalias !226
  %1631 = getelementptr i16, i16* %1613, i64 8
  %1632 = bitcast i16* %1631 to <4 x i32>*
  store <4 x i32> %1629, <4 x i32>* %1632, align 4, !tbaa !10, !alias.scope !224, !noalias !226
  %1633 = or i64 %1611, 8
  %1634 = shl nuw i64 %1633, 1
  %1635 = getelementptr i16, i16* %1598, i64 %1634
  %1636 = shl nuw i64 %1633, 1
  %1637 = getelementptr i16, i16* %695, i64 %1636
  %1638 = shl nuw i64 %1633, 1
  %1639 = getelementptr i16, i16* %560, i64 %1638
  %1640 = bitcast i16* %1639 to <4 x i32>*
  %1641 = load <4 x i32>, <4 x i32>* %1640, align 4, !tbaa !10, !alias.scope !219
  %1642 = getelementptr i16, i16* %1639, i64 8
  %1643 = bitcast i16* %1642 to <4 x i32>*
  %1644 = load <4 x i32>, <4 x i32>* %1643, align 4, !tbaa !10, !alias.scope !219
  %1645 = bitcast i16* %1637 to <4 x i32>*
  %1646 = load <4 x i32>, <4 x i32>* %1645, align 4, !tbaa !10, !alias.scope !222
  %1647 = getelementptr i16, i16* %1637, i64 8
  %1648 = bitcast i16* %1647 to <4 x i32>*
  %1649 = load <4 x i32>, <4 x i32>* %1648, align 4, !tbaa !10, !alias.scope !222
  %1650 = add <4 x i32> %1646, %1641
  %1651 = add <4 x i32> %1649, %1644
  %1652 = bitcast i16* %1635 to <4 x i32>*
  store <4 x i32> %1650, <4 x i32>* %1652, align 4, !tbaa !10, !alias.scope !224, !noalias !226
  %1653 = getelementptr i16, i16* %1635, i64 8
  %1654 = bitcast i16* %1653 to <4 x i32>*
  store <4 x i32> %1651, <4 x i32>* %1654, align 4, !tbaa !10, !alias.scope !224, !noalias !226
  %1655 = add nuw nsw i64 %1611, 16
  %1656 = icmp eq i64 %1655, 544
  br i1 %1656, label %1657, label %1610, !llvm.loop !227

1657:                                             ; preds = %1597, %1610
  %1658 = phi i32 [ 0, %1597 ], [ 544, %1610 ]
  %1659 = phi i16* [ %1598, %1597 ], [ %1607, %1610 ]
  %1660 = phi i16* [ %695, %1597 ], [ %1608, %1610 ]
  %1661 = phi i16* [ %560, %1597 ], [ %1609, %1610 ]
  br label %1662

1662:                                             ; preds = %1662, %1657
  %1663 = phi i32 [ %1674, %1662 ], [ %1658, %1657 ]
  %1664 = phi i16* [ %1675, %1662 ], [ %1659, %1657 ]
  %1665 = phi i16* [ %1677, %1662 ], [ %1660, %1657 ]
  %1666 = phi i16* [ %1676, %1662 ], [ %1661, %1657 ]
  %1667 = phi i32 [ %1678, %1662 ], [ 0, %1657 ]
  %1668 = bitcast i16* %1666 to i32*
  %1669 = load i32, i32* %1668, align 4, !tbaa !10
  %1670 = bitcast i16* %1665 to i32*
  %1671 = load i32, i32* %1670, align 4, !tbaa !10
  %1672 = add i32 %1671, %1669
  %1673 = bitcast i16* %1664 to i32*
  store i32 %1672, i32* %1673, align 4, !tbaa !10
  %1674 = add nuw nsw i32 %1663, 1
  %1675 = getelementptr inbounds i16, i16* %1664, i64 2
  %1676 = getelementptr inbounds i16, i16* %1666, i64 2
  %1677 = getelementptr inbounds i16, i16* %1665, i64 2
  %1678 = add i32 %1667, 1
  %1679 = icmp eq i32 %1667, 0
  br i1 %1679, label %1680, label %1662, !llvm.loop !228

1680:                                             ; preds = %1662
  br i1 %1605, label %1681, label %1724

1681:                                             ; preds = %1680, %1681
  %1682 = phi i32 [ %1719, %1681 ], [ %1674, %1680 ]
  %1683 = phi i16* [ %1720, %1681 ], [ %1675, %1680 ]
  %1684 = phi i16* [ %1722, %1681 ], [ %1677, %1680 ]
  %1685 = phi i16* [ %1721, %1681 ], [ %1676, %1680 ]
  %1686 = bitcast i16* %1685 to i32*
  %1687 = load i32, i32* %1686, align 4, !tbaa !10
  %1688 = bitcast i16* %1684 to i32*
  %1689 = load i32, i32* %1688, align 4, !tbaa !10
  %1690 = add i32 %1689, %1687
  %1691 = bitcast i16* %1683 to i32*
  store i32 %1690, i32* %1691, align 4, !tbaa !10
  %1692 = getelementptr inbounds i16, i16* %1683, i64 2
  %1693 = getelementptr inbounds i16, i16* %1685, i64 2
  %1694 = getelementptr inbounds i16, i16* %1684, i64 2
  %1695 = bitcast i16* %1693 to i32*
  %1696 = load i32, i32* %1695, align 4, !tbaa !10
  %1697 = bitcast i16* %1694 to i32*
  %1698 = load i32, i32* %1697, align 4, !tbaa !10
  %1699 = add i32 %1698, %1696
  %1700 = bitcast i16* %1692 to i32*
  store i32 %1699, i32* %1700, align 4, !tbaa !10
  %1701 = getelementptr inbounds i16, i16* %1683, i64 4
  %1702 = getelementptr inbounds i16, i16* %1685, i64 4
  %1703 = getelementptr inbounds i16, i16* %1684, i64 4
  %1704 = bitcast i16* %1702 to i32*
  %1705 = load i32, i32* %1704, align 4, !tbaa !10
  %1706 = bitcast i16* %1703 to i32*
  %1707 = load i32, i32* %1706, align 4, !tbaa !10
  %1708 = add i32 %1707, %1705
  %1709 = bitcast i16* %1701 to i32*
  store i32 %1708, i32* %1709, align 4, !tbaa !10
  %1710 = getelementptr inbounds i16, i16* %1683, i64 6
  %1711 = getelementptr inbounds i16, i16* %1685, i64 6
  %1712 = getelementptr inbounds i16, i16* %1684, i64 6
  %1713 = bitcast i16* %1711 to i32*
  %1714 = load i32, i32* %1713, align 4, !tbaa !10
  %1715 = bitcast i16* %1712 to i32*
  %1716 = load i32, i32* %1715, align 4, !tbaa !10
  %1717 = add i32 %1716, %1714
  %1718 = bitcast i16* %1710 to i32*
  store i32 %1717, i32* %1718, align 4, !tbaa !10
  %1719 = add nuw nsw i32 %1682, 4
  %1720 = getelementptr inbounds i16, i16* %1683, i64 8
  %1721 = getelementptr inbounds i16, i16* %1685, i64 8
  %1722 = getelementptr inbounds i16, i16* %1684, i64 8
  %1723 = icmp eq i32 %1719, 545
  br i1 %1723, label %1724, label %1681, !llvm.loop !229

1724:                                             ; preds = %1681, %1680
  %1725 = getelementptr inbounds i16, i16* %824, i64 1096
  %1726 = getelementptr inbounds i16, i16* %1598, i64 1096
  %1727 = icmp ult i16* %400, %405
  %1728 = icmp ult i16* %404, %401
  %1729 = and i1 %1727, %1728
  %1730 = icmp ult i16* %400, %407
  %1731 = icmp ult i16* %406, %401
  %1732 = and i1 %1730, %1731
  %1733 = or i1 %1729, %1732
  br i1 %1733, label %1785, label %1734

1734:                                             ; preds = %1724
  %1735 = getelementptr i16, i16* %1726, i64 1088
  %1736 = getelementptr i16, i16* %1725, i64 1088
  %1737 = getelementptr i16, i16* %824, i64 1088
  br label %1738

1738:                                             ; preds = %1738, %1734
  %1739 = phi i64 [ 0, %1734 ], [ %1783, %1738 ]
  %1740 = shl nuw i64 %1739, 1
  %1741 = getelementptr i16, i16* %1726, i64 %1740
  %1742 = shl nuw i64 %1739, 1
  %1743 = getelementptr i16, i16* %1725, i64 %1742
  %1744 = shl nuw i64 %1739, 1
  %1745 = getelementptr i16, i16* %824, i64 %1744
  %1746 = bitcast i16* %1745 to <4 x i32>*
  %1747 = load <4 x i32>, <4 x i32>* %1746, align 4, !tbaa !10, !alias.scope !230
  %1748 = getelementptr i16, i16* %1745, i64 8
  %1749 = bitcast i16* %1748 to <4 x i32>*
  %1750 = load <4 x i32>, <4 x i32>* %1749, align 4, !tbaa !10, !alias.scope !230
  %1751 = bitcast i16* %1743 to <4 x i32>*
  %1752 = load <4 x i32>, <4 x i32>* %1751, align 4, !tbaa !10, !alias.scope !233
  %1753 = getelementptr i16, i16* %1743, i64 8
  %1754 = bitcast i16* %1753 to <4 x i32>*
  %1755 = load <4 x i32>, <4 x i32>* %1754, align 4, !tbaa !10, !alias.scope !233
  %1756 = add <4 x i32> %1752, %1747
  %1757 = add <4 x i32> %1755, %1750
  %1758 = bitcast i16* %1741 to <4 x i32>*
  store <4 x i32> %1756, <4 x i32>* %1758, align 4, !tbaa !10, !alias.scope !235, !noalias !237
  %1759 = getelementptr i16, i16* %1741, i64 8
  %1760 = bitcast i16* %1759 to <4 x i32>*
  store <4 x i32> %1757, <4 x i32>* %1760, align 4, !tbaa !10, !alias.scope !235, !noalias !237
  %1761 = or i64 %1739, 8
  %1762 = shl nuw i64 %1761, 1
  %1763 = getelementptr i16, i16* %1726, i64 %1762
  %1764 = shl nuw i64 %1761, 1
  %1765 = getelementptr i16, i16* %1725, i64 %1764
  %1766 = shl nuw i64 %1761, 1
  %1767 = getelementptr i16, i16* %824, i64 %1766
  %1768 = bitcast i16* %1767 to <4 x i32>*
  %1769 = load <4 x i32>, <4 x i32>* %1768, align 4, !tbaa !10, !alias.scope !230
  %1770 = getelementptr i16, i16* %1767, i64 8
  %1771 = bitcast i16* %1770 to <4 x i32>*
  %1772 = load <4 x i32>, <4 x i32>* %1771, align 4, !tbaa !10, !alias.scope !230
  %1773 = bitcast i16* %1765 to <4 x i32>*
  %1774 = load <4 x i32>, <4 x i32>* %1773, align 4, !tbaa !10, !alias.scope !233
  %1775 = getelementptr i16, i16* %1765, i64 8
  %1776 = bitcast i16* %1775 to <4 x i32>*
  %1777 = load <4 x i32>, <4 x i32>* %1776, align 4, !tbaa !10, !alias.scope !233
  %1778 = add <4 x i32> %1774, %1769
  %1779 = add <4 x i32> %1777, %1772
  %1780 = bitcast i16* %1763 to <4 x i32>*
  store <4 x i32> %1778, <4 x i32>* %1780, align 4, !tbaa !10, !alias.scope !235, !noalias !237
  %1781 = getelementptr i16, i16* %1763, i64 8
  %1782 = bitcast i16* %1781 to <4 x i32>*
  store <4 x i32> %1779, <4 x i32>* %1782, align 4, !tbaa !10, !alias.scope !235, !noalias !237
  %1783 = add nuw nsw i64 %1739, 16
  %1784 = icmp eq i64 %1783, 544
  br i1 %1784, label %1785, label %1738, !llvm.loop !238

1785:                                             ; preds = %1724, %1738
  %1786 = phi i32 [ 0, %1724 ], [ 544, %1738 ]
  %1787 = phi i16* [ %1726, %1724 ], [ %1735, %1738 ]
  %1788 = phi i16* [ %1725, %1724 ], [ %1736, %1738 ]
  %1789 = phi i16* [ %824, %1724 ], [ %1737, %1738 ]
  br label %1790

1790:                                             ; preds = %1790, %1785
  %1791 = phi i32 [ %1802, %1790 ], [ %1786, %1785 ]
  %1792 = phi i16* [ %1803, %1790 ], [ %1787, %1785 ]
  %1793 = phi i16* [ %1805, %1790 ], [ %1788, %1785 ]
  %1794 = phi i16* [ %1804, %1790 ], [ %1789, %1785 ]
  %1795 = phi i32 [ %1806, %1790 ], [ 0, %1785 ]
  %1796 = bitcast i16* %1794 to i32*
  %1797 = load i32, i32* %1796, align 4, !tbaa !10
  %1798 = bitcast i16* %1793 to i32*
  %1799 = load i32, i32* %1798, align 4, !tbaa !10
  %1800 = add i32 %1799, %1797
  %1801 = bitcast i16* %1792 to i32*
  store i32 %1800, i32* %1801, align 4, !tbaa !10
  %1802 = add nuw nsw i32 %1791, 1
  %1803 = getelementptr inbounds i16, i16* %1792, i64 2
  %1804 = getelementptr inbounds i16, i16* %1794, i64 2
  %1805 = getelementptr inbounds i16, i16* %1793, i64 2
  %1806 = add i32 %1795, 1
  %1807 = icmp eq i32 %1795, 0
  br i1 %1807, label %1808, label %1790, !llvm.loop !239

1808:                                             ; preds = %1790
  br i1 %1733, label %1809, label %1852

1809:                                             ; preds = %1808, %1809
  %1810 = phi i32 [ %1847, %1809 ], [ %1802, %1808 ]
  %1811 = phi i16* [ %1848, %1809 ], [ %1803, %1808 ]
  %1812 = phi i16* [ %1850, %1809 ], [ %1805, %1808 ]
  %1813 = phi i16* [ %1849, %1809 ], [ %1804, %1808 ]
  %1814 = bitcast i16* %1813 to i32*
  %1815 = load i32, i32* %1814, align 4, !tbaa !10
  %1816 = bitcast i16* %1812 to i32*
  %1817 = load i32, i32* %1816, align 4, !tbaa !10
  %1818 = add i32 %1817, %1815
  %1819 = bitcast i16* %1811 to i32*
  store i32 %1818, i32* %1819, align 4, !tbaa !10
  %1820 = getelementptr inbounds i16, i16* %1811, i64 2
  %1821 = getelementptr inbounds i16, i16* %1813, i64 2
  %1822 = getelementptr inbounds i16, i16* %1812, i64 2
  %1823 = bitcast i16* %1821 to i32*
  %1824 = load i32, i32* %1823, align 4, !tbaa !10
  %1825 = bitcast i16* %1822 to i32*
  %1826 = load i32, i32* %1825, align 4, !tbaa !10
  %1827 = add i32 %1826, %1824
  %1828 = bitcast i16* %1820 to i32*
  store i32 %1827, i32* %1828, align 4, !tbaa !10
  %1829 = getelementptr inbounds i16, i16* %1811, i64 4
  %1830 = getelementptr inbounds i16, i16* %1813, i64 4
  %1831 = getelementptr inbounds i16, i16* %1812, i64 4
  %1832 = bitcast i16* %1830 to i32*
  %1833 = load i32, i32* %1832, align 4, !tbaa !10
  %1834 = bitcast i16* %1831 to i32*
  %1835 = load i32, i32* %1834, align 4, !tbaa !10
  %1836 = add i32 %1835, %1833
  %1837 = bitcast i16* %1829 to i32*
  store i32 %1836, i32* %1837, align 4, !tbaa !10
  %1838 = getelementptr inbounds i16, i16* %1811, i64 6
  %1839 = getelementptr inbounds i16, i16* %1813, i64 6
  %1840 = getelementptr inbounds i16, i16* %1812, i64 6
  %1841 = bitcast i16* %1839 to i32*
  %1842 = load i32, i32* %1841, align 4, !tbaa !10
  %1843 = bitcast i16* %1840 to i32*
  %1844 = load i32, i32* %1843, align 4, !tbaa !10
  %1845 = add i32 %1844, %1842
  %1846 = bitcast i16* %1838 to i32*
  store i32 %1845, i32* %1846, align 4, !tbaa !10
  %1847 = add nuw nsw i32 %1810, 4
  %1848 = getelementptr inbounds i16, i16* %1811, i64 8
  %1849 = getelementptr inbounds i16, i16* %1813, i64 8
  %1850 = getelementptr inbounds i16, i16* %1812, i64 8
  %1851 = icmp eq i32 %1847, 545
  br i1 %1851, label %1852, label %1809, !llvm.loop !240

1852:                                             ; preds = %1809, %1808
  %1853 = getelementptr inbounds i16, i16* %564, i64 1096
  %1854 = getelementptr inbounds i16, i16* %1598, i64 2192
  %1855 = icmp ult i16* %410, %415
  %1856 = icmp ult i16* %414, %411
  %1857 = and i1 %1855, %1856
  %1858 = icmp ult i16* %410, %417
  %1859 = icmp ult i16* %416, %411
  %1860 = and i1 %1858, %1859
  %1861 = or i1 %1857, %1860
  br i1 %1861, label %1913, label %1862

1862:                                             ; preds = %1852
  %1863 = getelementptr i16, i16* %1854, i64 1088
  %1864 = getelementptr i16, i16* %1853, i64 1088
  %1865 = getelementptr i16, i16* %564, i64 1088
  br label %1866

1866:                                             ; preds = %1866, %1862
  %1867 = phi i64 [ 0, %1862 ], [ %1911, %1866 ]
  %1868 = shl nuw i64 %1867, 1
  %1869 = getelementptr i16, i16* %1854, i64 %1868
  %1870 = shl nuw i64 %1867, 1
  %1871 = getelementptr i16, i16* %1853, i64 %1870
  %1872 = shl nuw i64 %1867, 1
  %1873 = getelementptr i16, i16* %564, i64 %1872
  %1874 = bitcast i16* %1873 to <4 x i32>*
  %1875 = load <4 x i32>, <4 x i32>* %1874, align 4, !tbaa !10, !alias.scope !241
  %1876 = getelementptr i16, i16* %1873, i64 8
  %1877 = bitcast i16* %1876 to <4 x i32>*
  %1878 = load <4 x i32>, <4 x i32>* %1877, align 4, !tbaa !10, !alias.scope !241
  %1879 = bitcast i16* %1871 to <4 x i32>*
  %1880 = load <4 x i32>, <4 x i32>* %1879, align 4, !tbaa !10, !alias.scope !244
  %1881 = getelementptr i16, i16* %1871, i64 8
  %1882 = bitcast i16* %1881 to <4 x i32>*
  %1883 = load <4 x i32>, <4 x i32>* %1882, align 4, !tbaa !10, !alias.scope !244
  %1884 = add <4 x i32> %1880, %1875
  %1885 = add <4 x i32> %1883, %1878
  %1886 = bitcast i16* %1869 to <4 x i32>*
  store <4 x i32> %1884, <4 x i32>* %1886, align 4, !tbaa !10, !alias.scope !246, !noalias !248
  %1887 = getelementptr i16, i16* %1869, i64 8
  %1888 = bitcast i16* %1887 to <4 x i32>*
  store <4 x i32> %1885, <4 x i32>* %1888, align 4, !tbaa !10, !alias.scope !246, !noalias !248
  %1889 = or i64 %1867, 8
  %1890 = shl nuw i64 %1889, 1
  %1891 = getelementptr i16, i16* %1854, i64 %1890
  %1892 = shl nuw i64 %1889, 1
  %1893 = getelementptr i16, i16* %1853, i64 %1892
  %1894 = shl nuw i64 %1889, 1
  %1895 = getelementptr i16, i16* %564, i64 %1894
  %1896 = bitcast i16* %1895 to <4 x i32>*
  %1897 = load <4 x i32>, <4 x i32>* %1896, align 4, !tbaa !10, !alias.scope !241
  %1898 = getelementptr i16, i16* %1895, i64 8
  %1899 = bitcast i16* %1898 to <4 x i32>*
  %1900 = load <4 x i32>, <4 x i32>* %1899, align 4, !tbaa !10, !alias.scope !241
  %1901 = bitcast i16* %1893 to <4 x i32>*
  %1902 = load <4 x i32>, <4 x i32>* %1901, align 4, !tbaa !10, !alias.scope !244
  %1903 = getelementptr i16, i16* %1893, i64 8
  %1904 = bitcast i16* %1903 to <4 x i32>*
  %1905 = load <4 x i32>, <4 x i32>* %1904, align 4, !tbaa !10, !alias.scope !244
  %1906 = add <4 x i32> %1902, %1897
  %1907 = add <4 x i32> %1905, %1900
  %1908 = bitcast i16* %1891 to <4 x i32>*
  store <4 x i32> %1906, <4 x i32>* %1908, align 4, !tbaa !10, !alias.scope !246, !noalias !248
  %1909 = getelementptr i16, i16* %1891, i64 8
  %1910 = bitcast i16* %1909 to <4 x i32>*
  store <4 x i32> %1907, <4 x i32>* %1910, align 4, !tbaa !10, !alias.scope !246, !noalias !248
  %1911 = add nuw nsw i64 %1867, 16
  %1912 = icmp eq i64 %1911, 544
  br i1 %1912, label %1913, label %1866, !llvm.loop !249

1913:                                             ; preds = %1852, %1866
  %1914 = phi i32 [ 0, %1852 ], [ 544, %1866 ]
  %1915 = phi i16* [ %1854, %1852 ], [ %1863, %1866 ]
  %1916 = phi i16* [ %1853, %1852 ], [ %1864, %1866 ]
  %1917 = phi i16* [ %564, %1852 ], [ %1865, %1866 ]
  br label %1918

1918:                                             ; preds = %1918, %1913
  %1919 = phi i32 [ %1930, %1918 ], [ %1914, %1913 ]
  %1920 = phi i16* [ %1931, %1918 ], [ %1915, %1913 ]
  %1921 = phi i16* [ %1933, %1918 ], [ %1916, %1913 ]
  %1922 = phi i16* [ %1932, %1918 ], [ %1917, %1913 ]
  %1923 = phi i32 [ %1934, %1918 ], [ 0, %1913 ]
  %1924 = bitcast i16* %1922 to i32*
  %1925 = load i32, i32* %1924, align 4, !tbaa !10
  %1926 = bitcast i16* %1921 to i32*
  %1927 = load i32, i32* %1926, align 4, !tbaa !10
  %1928 = add i32 %1927, %1925
  %1929 = bitcast i16* %1920 to i32*
  store i32 %1928, i32* %1929, align 4, !tbaa !10
  %1930 = add nuw nsw i32 %1919, 1
  %1931 = getelementptr inbounds i16, i16* %1920, i64 2
  %1932 = getelementptr inbounds i16, i16* %1922, i64 2
  %1933 = getelementptr inbounds i16, i16* %1921, i64 2
  %1934 = add i32 %1923, 1
  %1935 = icmp eq i32 %1923, 0
  br i1 %1935, label %1936, label %1918, !llvm.loop !250

1936:                                             ; preds = %1918
  br i1 %1861, label %1937, label %1980

1937:                                             ; preds = %1936, %1937
  %1938 = phi i32 [ %1975, %1937 ], [ %1930, %1936 ]
  %1939 = phi i16* [ %1976, %1937 ], [ %1931, %1936 ]
  %1940 = phi i16* [ %1978, %1937 ], [ %1933, %1936 ]
  %1941 = phi i16* [ %1977, %1937 ], [ %1932, %1936 ]
  %1942 = bitcast i16* %1941 to i32*
  %1943 = load i32, i32* %1942, align 4, !tbaa !10
  %1944 = bitcast i16* %1940 to i32*
  %1945 = load i32, i32* %1944, align 4, !tbaa !10
  %1946 = add i32 %1945, %1943
  %1947 = bitcast i16* %1939 to i32*
  store i32 %1946, i32* %1947, align 4, !tbaa !10
  %1948 = getelementptr inbounds i16, i16* %1939, i64 2
  %1949 = getelementptr inbounds i16, i16* %1941, i64 2
  %1950 = getelementptr inbounds i16, i16* %1940, i64 2
  %1951 = bitcast i16* %1949 to i32*
  %1952 = load i32, i32* %1951, align 4, !tbaa !10
  %1953 = bitcast i16* %1950 to i32*
  %1954 = load i32, i32* %1953, align 4, !tbaa !10
  %1955 = add i32 %1954, %1952
  %1956 = bitcast i16* %1948 to i32*
  store i32 %1955, i32* %1956, align 4, !tbaa !10
  %1957 = getelementptr inbounds i16, i16* %1939, i64 4
  %1958 = getelementptr inbounds i16, i16* %1941, i64 4
  %1959 = getelementptr inbounds i16, i16* %1940, i64 4
  %1960 = bitcast i16* %1958 to i32*
  %1961 = load i32, i32* %1960, align 4, !tbaa !10
  %1962 = bitcast i16* %1959 to i32*
  %1963 = load i32, i32* %1962, align 4, !tbaa !10
  %1964 = add i32 %1963, %1961
  %1965 = bitcast i16* %1957 to i32*
  store i32 %1964, i32* %1965, align 4, !tbaa !10
  %1966 = getelementptr inbounds i16, i16* %1939, i64 6
  %1967 = getelementptr inbounds i16, i16* %1941, i64 6
  %1968 = getelementptr inbounds i16, i16* %1940, i64 6
  %1969 = bitcast i16* %1967 to i32*
  %1970 = load i32, i32* %1969, align 4, !tbaa !10
  %1971 = bitcast i16* %1968 to i32*
  %1972 = load i32, i32* %1971, align 4, !tbaa !10
  %1973 = add i32 %1972, %1970
  %1974 = bitcast i16* %1966 to i32*
  store i32 %1973, i32* %1974, align 4, !tbaa !10
  %1975 = add nuw nsw i32 %1938, 4
  %1976 = getelementptr inbounds i16, i16* %1939, i64 8
  %1977 = getelementptr inbounds i16, i16* %1941, i64 8
  %1978 = getelementptr inbounds i16, i16* %1940, i64 8
  %1979 = icmp eq i32 %1975, 545
  br i1 %1979, label %1980, label %1937, !llvm.loop !251

1980:                                             ; preds = %1937, %1936
  %1981 = getelementptr inbounds i16, i16* %560, i64 6576
  %1982 = getelementptr inbounds i16, i16* %1981, i64 1096
  %1983 = getelementptr inbounds i16, i16* %1598, i64 3288
  %1984 = icmp ult i16* %420, %425
  %1985 = icmp ult i16* %424, %421
  %1986 = and i1 %1984, %1985
  %1987 = icmp ult i16* %420, %427
  %1988 = icmp ult i16* %426, %421
  %1989 = and i1 %1987, %1988
  %1990 = or i1 %1986, %1989
  br i1 %1990, label %2042, label %1991

1991:                                             ; preds = %1980
  %1992 = getelementptr i16, i16* %1983, i64 1088
  %1993 = getelementptr i16, i16* %1982, i64 1088
  %1994 = getelementptr i16, i16* %1981, i64 1088
  br label %1995

1995:                                             ; preds = %1995, %1991
  %1996 = phi i64 [ 0, %1991 ], [ %2040, %1995 ]
  %1997 = shl nuw i64 %1996, 1
  %1998 = getelementptr i16, i16* %1983, i64 %1997
  %1999 = shl nuw i64 %1996, 1
  %2000 = getelementptr i16, i16* %1982, i64 %1999
  %2001 = shl nuw i64 %1996, 1
  %2002 = getelementptr i16, i16* %1981, i64 %2001
  %2003 = bitcast i16* %2002 to <4 x i32>*
  %2004 = load <4 x i32>, <4 x i32>* %2003, align 4, !tbaa !10, !alias.scope !252
  %2005 = getelementptr i16, i16* %2002, i64 8
  %2006 = bitcast i16* %2005 to <4 x i32>*
  %2007 = load <4 x i32>, <4 x i32>* %2006, align 4, !tbaa !10, !alias.scope !252
  %2008 = bitcast i16* %2000 to <4 x i32>*
  %2009 = load <4 x i32>, <4 x i32>* %2008, align 4, !tbaa !10, !alias.scope !255
  %2010 = getelementptr i16, i16* %2000, i64 8
  %2011 = bitcast i16* %2010 to <4 x i32>*
  %2012 = load <4 x i32>, <4 x i32>* %2011, align 4, !tbaa !10, !alias.scope !255
  %2013 = add <4 x i32> %2009, %2004
  %2014 = add <4 x i32> %2012, %2007
  %2015 = bitcast i16* %1998 to <4 x i32>*
  store <4 x i32> %2013, <4 x i32>* %2015, align 4, !tbaa !10, !alias.scope !257, !noalias !259
  %2016 = getelementptr i16, i16* %1998, i64 8
  %2017 = bitcast i16* %2016 to <4 x i32>*
  store <4 x i32> %2014, <4 x i32>* %2017, align 4, !tbaa !10, !alias.scope !257, !noalias !259
  %2018 = or i64 %1996, 8
  %2019 = shl nuw i64 %2018, 1
  %2020 = getelementptr i16, i16* %1983, i64 %2019
  %2021 = shl nuw i64 %2018, 1
  %2022 = getelementptr i16, i16* %1982, i64 %2021
  %2023 = shl nuw i64 %2018, 1
  %2024 = getelementptr i16, i16* %1981, i64 %2023
  %2025 = bitcast i16* %2024 to <4 x i32>*
  %2026 = load <4 x i32>, <4 x i32>* %2025, align 4, !tbaa !10, !alias.scope !252
  %2027 = getelementptr i16, i16* %2024, i64 8
  %2028 = bitcast i16* %2027 to <4 x i32>*
  %2029 = load <4 x i32>, <4 x i32>* %2028, align 4, !tbaa !10, !alias.scope !252
  %2030 = bitcast i16* %2022 to <4 x i32>*
  %2031 = load <4 x i32>, <4 x i32>* %2030, align 4, !tbaa !10, !alias.scope !255
  %2032 = getelementptr i16, i16* %2022, i64 8
  %2033 = bitcast i16* %2032 to <4 x i32>*
  %2034 = load <4 x i32>, <4 x i32>* %2033, align 4, !tbaa !10, !alias.scope !255
  %2035 = add <4 x i32> %2031, %2026
  %2036 = add <4 x i32> %2034, %2029
  %2037 = bitcast i16* %2020 to <4 x i32>*
  store <4 x i32> %2035, <4 x i32>* %2037, align 4, !tbaa !10, !alias.scope !257, !noalias !259
  %2038 = getelementptr i16, i16* %2020, i64 8
  %2039 = bitcast i16* %2038 to <4 x i32>*
  store <4 x i32> %2036, <4 x i32>* %2039, align 4, !tbaa !10, !alias.scope !257, !noalias !259
  %2040 = add nuw nsw i64 %1996, 16
  %2041 = icmp eq i64 %2040, 544
  br i1 %2041, label %2042, label %1995, !llvm.loop !260

2042:                                             ; preds = %1980, %1995
  %2043 = phi i32 [ 0, %1980 ], [ 544, %1995 ]
  %2044 = phi i16* [ %1983, %1980 ], [ %1992, %1995 ]
  %2045 = phi i16* [ %1982, %1980 ], [ %1993, %1995 ]
  %2046 = phi i16* [ %1981, %1980 ], [ %1994, %1995 ]
  br label %2047

2047:                                             ; preds = %2047, %2042
  %2048 = phi i32 [ %2059, %2047 ], [ %2043, %2042 ]
  %2049 = phi i16* [ %2060, %2047 ], [ %2044, %2042 ]
  %2050 = phi i16* [ %2062, %2047 ], [ %2045, %2042 ]
  %2051 = phi i16* [ %2061, %2047 ], [ %2046, %2042 ]
  %2052 = phi i32 [ %2063, %2047 ], [ 0, %2042 ]
  %2053 = bitcast i16* %2051 to i32*
  %2054 = load i32, i32* %2053, align 4, !tbaa !10
  %2055 = bitcast i16* %2050 to i32*
  %2056 = load i32, i32* %2055, align 4, !tbaa !10
  %2057 = add i32 %2056, %2054
  %2058 = bitcast i16* %2049 to i32*
  store i32 %2057, i32* %2058, align 4, !tbaa !10
  %2059 = add nuw nsw i32 %2048, 1
  %2060 = getelementptr inbounds i16, i16* %2049, i64 2
  %2061 = getelementptr inbounds i16, i16* %2051, i64 2
  %2062 = getelementptr inbounds i16, i16* %2050, i64 2
  %2063 = add i32 %2052, 1
  %2064 = icmp eq i32 %2052, 0
  br i1 %2064, label %2065, label %2047, !llvm.loop !261

2065:                                             ; preds = %2047
  br i1 %1990, label %2066, label %2109

2066:                                             ; preds = %2065, %2066
  %2067 = phi i32 [ %2104, %2066 ], [ %2059, %2065 ]
  %2068 = phi i16* [ %2105, %2066 ], [ %2060, %2065 ]
  %2069 = phi i16* [ %2107, %2066 ], [ %2062, %2065 ]
  %2070 = phi i16* [ %2106, %2066 ], [ %2061, %2065 ]
  %2071 = bitcast i16* %2070 to i32*
  %2072 = load i32, i32* %2071, align 4, !tbaa !10
  %2073 = bitcast i16* %2069 to i32*
  %2074 = load i32, i32* %2073, align 4, !tbaa !10
  %2075 = add i32 %2074, %2072
  %2076 = bitcast i16* %2068 to i32*
  store i32 %2075, i32* %2076, align 4, !tbaa !10
  %2077 = getelementptr inbounds i16, i16* %2068, i64 2
  %2078 = getelementptr inbounds i16, i16* %2070, i64 2
  %2079 = getelementptr inbounds i16, i16* %2069, i64 2
  %2080 = bitcast i16* %2078 to i32*
  %2081 = load i32, i32* %2080, align 4, !tbaa !10
  %2082 = bitcast i16* %2079 to i32*
  %2083 = load i32, i32* %2082, align 4, !tbaa !10
  %2084 = add i32 %2083, %2081
  %2085 = bitcast i16* %2077 to i32*
  store i32 %2084, i32* %2085, align 4, !tbaa !10
  %2086 = getelementptr inbounds i16, i16* %2068, i64 4
  %2087 = getelementptr inbounds i16, i16* %2070, i64 4
  %2088 = getelementptr inbounds i16, i16* %2069, i64 4
  %2089 = bitcast i16* %2087 to i32*
  %2090 = load i32, i32* %2089, align 4, !tbaa !10
  %2091 = bitcast i16* %2088 to i32*
  %2092 = load i32, i32* %2091, align 4, !tbaa !10
  %2093 = add i32 %2092, %2090
  %2094 = bitcast i16* %2086 to i32*
  store i32 %2093, i32* %2094, align 4, !tbaa !10
  %2095 = getelementptr inbounds i16, i16* %2068, i64 6
  %2096 = getelementptr inbounds i16, i16* %2070, i64 6
  %2097 = getelementptr inbounds i16, i16* %2069, i64 6
  %2098 = bitcast i16* %2096 to i32*
  %2099 = load i32, i32* %2098, align 4, !tbaa !10
  %2100 = bitcast i16* %2097 to i32*
  %2101 = load i32, i32* %2100, align 4, !tbaa !10
  %2102 = add i32 %2101, %2099
  %2103 = bitcast i16* %2095 to i32*
  store i32 %2102, i32* %2103, align 4, !tbaa !10
  %2104 = add nuw nsw i32 %2067, 4
  %2105 = getelementptr inbounds i16, i16* %2068, i64 8
  %2106 = getelementptr inbounds i16, i16* %2070, i64 8
  %2107 = getelementptr inbounds i16, i16* %2069, i64 8
  %2108 = icmp eq i32 %2104, 545
  br i1 %2108, label %2109, label %2066, !llvm.loop !262

2109:                                             ; preds = %2066, %2065
  %2110 = getelementptr inbounds i16, i16* %1082, i64 1096
  %2111 = getelementptr inbounds i16, i16* %1598, i64 4384
  %2112 = icmp ult i16* %430, %435
  %2113 = icmp ult i16* %434, %431
  %2114 = and i1 %2112, %2113
  %2115 = icmp ult i16* %430, %437
  %2116 = icmp ult i16* %436, %431
  %2117 = and i1 %2115, %2116
  %2118 = or i1 %2114, %2117
  br i1 %2118, label %2170, label %2119

2119:                                             ; preds = %2109
  %2120 = getelementptr i16, i16* %2111, i64 1088
  %2121 = getelementptr i16, i16* %2110, i64 1088
  %2122 = getelementptr i16, i16* %1082, i64 1088
  br label %2123

2123:                                             ; preds = %2123, %2119
  %2124 = phi i64 [ 0, %2119 ], [ %2168, %2123 ]
  %2125 = shl nuw i64 %2124, 1
  %2126 = getelementptr i16, i16* %2111, i64 %2125
  %2127 = shl nuw i64 %2124, 1
  %2128 = getelementptr i16, i16* %2110, i64 %2127
  %2129 = shl nuw i64 %2124, 1
  %2130 = getelementptr i16, i16* %1082, i64 %2129
  %2131 = bitcast i16* %2130 to <4 x i32>*
  %2132 = load <4 x i32>, <4 x i32>* %2131, align 4, !tbaa !10, !alias.scope !263
  %2133 = getelementptr i16, i16* %2130, i64 8
  %2134 = bitcast i16* %2133 to <4 x i32>*
  %2135 = load <4 x i32>, <4 x i32>* %2134, align 4, !tbaa !10, !alias.scope !263
  %2136 = bitcast i16* %2128 to <4 x i32>*
  %2137 = load <4 x i32>, <4 x i32>* %2136, align 4, !tbaa !10, !alias.scope !266
  %2138 = getelementptr i16, i16* %2128, i64 8
  %2139 = bitcast i16* %2138 to <4 x i32>*
  %2140 = load <4 x i32>, <4 x i32>* %2139, align 4, !tbaa !10, !alias.scope !266
  %2141 = add <4 x i32> %2137, %2132
  %2142 = add <4 x i32> %2140, %2135
  %2143 = bitcast i16* %2126 to <4 x i32>*
  store <4 x i32> %2141, <4 x i32>* %2143, align 4, !tbaa !10, !alias.scope !268, !noalias !270
  %2144 = getelementptr i16, i16* %2126, i64 8
  %2145 = bitcast i16* %2144 to <4 x i32>*
  store <4 x i32> %2142, <4 x i32>* %2145, align 4, !tbaa !10, !alias.scope !268, !noalias !270
  %2146 = or i64 %2124, 8
  %2147 = shl nuw i64 %2146, 1
  %2148 = getelementptr i16, i16* %2111, i64 %2147
  %2149 = shl nuw i64 %2146, 1
  %2150 = getelementptr i16, i16* %2110, i64 %2149
  %2151 = shl nuw i64 %2146, 1
  %2152 = getelementptr i16, i16* %1082, i64 %2151
  %2153 = bitcast i16* %2152 to <4 x i32>*
  %2154 = load <4 x i32>, <4 x i32>* %2153, align 4, !tbaa !10, !alias.scope !263
  %2155 = getelementptr i16, i16* %2152, i64 8
  %2156 = bitcast i16* %2155 to <4 x i32>*
  %2157 = load <4 x i32>, <4 x i32>* %2156, align 4, !tbaa !10, !alias.scope !263
  %2158 = bitcast i16* %2150 to <4 x i32>*
  %2159 = load <4 x i32>, <4 x i32>* %2158, align 4, !tbaa !10, !alias.scope !266
  %2160 = getelementptr i16, i16* %2150, i64 8
  %2161 = bitcast i16* %2160 to <4 x i32>*
  %2162 = load <4 x i32>, <4 x i32>* %2161, align 4, !tbaa !10, !alias.scope !266
  %2163 = add <4 x i32> %2159, %2154
  %2164 = add <4 x i32> %2162, %2157
  %2165 = bitcast i16* %2148 to <4 x i32>*
  store <4 x i32> %2163, <4 x i32>* %2165, align 4, !tbaa !10, !alias.scope !268, !noalias !270
  %2166 = getelementptr i16, i16* %2148, i64 8
  %2167 = bitcast i16* %2166 to <4 x i32>*
  store <4 x i32> %2164, <4 x i32>* %2167, align 4, !tbaa !10, !alias.scope !268, !noalias !270
  %2168 = add nuw nsw i64 %2124, 16
  %2169 = icmp eq i64 %2168, 544
  br i1 %2169, label %2170, label %2123, !llvm.loop !271

2170:                                             ; preds = %2109, %2123
  %2171 = phi i32 [ 0, %2109 ], [ 544, %2123 ]
  %2172 = phi i16* [ %2111, %2109 ], [ %2120, %2123 ]
  %2173 = phi i16* [ %2110, %2109 ], [ %2121, %2123 ]
  %2174 = phi i16* [ %1082, %2109 ], [ %2122, %2123 ]
  br label %2175

2175:                                             ; preds = %2175, %2170
  %2176 = phi i32 [ %2187, %2175 ], [ %2171, %2170 ]
  %2177 = phi i16* [ %2188, %2175 ], [ %2172, %2170 ]
  %2178 = phi i16* [ %2190, %2175 ], [ %2173, %2170 ]
  %2179 = phi i16* [ %2189, %2175 ], [ %2174, %2170 ]
  %2180 = phi i32 [ %2191, %2175 ], [ 0, %2170 ]
  %2181 = bitcast i16* %2179 to i32*
  %2182 = load i32, i32* %2181, align 4, !tbaa !10
  %2183 = bitcast i16* %2178 to i32*
  %2184 = load i32, i32* %2183, align 4, !tbaa !10
  %2185 = add i32 %2184, %2182
  %2186 = bitcast i16* %2177 to i32*
  store i32 %2185, i32* %2186, align 4, !tbaa !10
  %2187 = add nuw nsw i32 %2176, 1
  %2188 = getelementptr inbounds i16, i16* %2177, i64 2
  %2189 = getelementptr inbounds i16, i16* %2179, i64 2
  %2190 = getelementptr inbounds i16, i16* %2178, i64 2
  %2191 = add i32 %2180, 1
  %2192 = icmp eq i32 %2180, 0
  br i1 %2192, label %2193, label %2175, !llvm.loop !272

2193:                                             ; preds = %2175
  br i1 %2118, label %2194, label %2237

2194:                                             ; preds = %2193, %2194
  %2195 = phi i32 [ %2232, %2194 ], [ %2187, %2193 ]
  %2196 = phi i16* [ %2233, %2194 ], [ %2188, %2193 ]
  %2197 = phi i16* [ %2235, %2194 ], [ %2190, %2193 ]
  %2198 = phi i16* [ %2234, %2194 ], [ %2189, %2193 ]
  %2199 = bitcast i16* %2198 to i32*
  %2200 = load i32, i32* %2199, align 4, !tbaa !10
  %2201 = bitcast i16* %2197 to i32*
  %2202 = load i32, i32* %2201, align 4, !tbaa !10
  %2203 = add i32 %2202, %2200
  %2204 = bitcast i16* %2196 to i32*
  store i32 %2203, i32* %2204, align 4, !tbaa !10
  %2205 = getelementptr inbounds i16, i16* %2196, i64 2
  %2206 = getelementptr inbounds i16, i16* %2198, i64 2
  %2207 = getelementptr inbounds i16, i16* %2197, i64 2
  %2208 = bitcast i16* %2206 to i32*
  %2209 = load i32, i32* %2208, align 4, !tbaa !10
  %2210 = bitcast i16* %2207 to i32*
  %2211 = load i32, i32* %2210, align 4, !tbaa !10
  %2212 = add i32 %2211, %2209
  %2213 = bitcast i16* %2205 to i32*
  store i32 %2212, i32* %2213, align 4, !tbaa !10
  %2214 = getelementptr inbounds i16, i16* %2196, i64 4
  %2215 = getelementptr inbounds i16, i16* %2198, i64 4
  %2216 = getelementptr inbounds i16, i16* %2197, i64 4
  %2217 = bitcast i16* %2215 to i32*
  %2218 = load i32, i32* %2217, align 4, !tbaa !10
  %2219 = bitcast i16* %2216 to i32*
  %2220 = load i32, i32* %2219, align 4, !tbaa !10
  %2221 = add i32 %2220, %2218
  %2222 = bitcast i16* %2214 to i32*
  store i32 %2221, i32* %2222, align 4, !tbaa !10
  %2223 = getelementptr inbounds i16, i16* %2196, i64 6
  %2224 = getelementptr inbounds i16, i16* %2198, i64 6
  %2225 = getelementptr inbounds i16, i16* %2197, i64 6
  %2226 = bitcast i16* %2224 to i32*
  %2227 = load i32, i32* %2226, align 4, !tbaa !10
  %2228 = bitcast i16* %2225 to i32*
  %2229 = load i32, i32* %2228, align 4, !tbaa !10
  %2230 = add i32 %2229, %2227
  %2231 = bitcast i16* %2223 to i32*
  store i32 %2230, i32* %2231, align 4, !tbaa !10
  %2232 = add nuw nsw i32 %2195, 4
  %2233 = getelementptr inbounds i16, i16* %2196, i64 8
  %2234 = getelementptr inbounds i16, i16* %2198, i64 8
  %2235 = getelementptr inbounds i16, i16* %2197, i64 8
  %2236 = icmp eq i32 %2232, 545
  br i1 %2236, label %2237, label %2194, !llvm.loop !273

2237:                                             ; preds = %2194, %2193
  %2238 = getelementptr inbounds i16, i16* %1340, i64 1096
  %2239 = getelementptr inbounds i16, i16* %1598, i64 5480
  %2240 = icmp ult i16* %440, %445
  %2241 = icmp ult i16* %444, %441
  %2242 = and i1 %2240, %2241
  %2243 = icmp ult i16* %440, %447
  %2244 = icmp ult i16* %446, %441
  %2245 = and i1 %2243, %2244
  %2246 = or i1 %2242, %2245
  br i1 %2246, label %2298, label %2247

2247:                                             ; preds = %2237
  %2248 = getelementptr i16, i16* %2239, i64 1088
  %2249 = getelementptr i16, i16* %2238, i64 1088
  %2250 = getelementptr i16, i16* %1340, i64 1088
  br label %2251

2251:                                             ; preds = %2251, %2247
  %2252 = phi i64 [ 0, %2247 ], [ %2296, %2251 ]
  %2253 = shl nuw i64 %2252, 1
  %2254 = getelementptr i16, i16* %2239, i64 %2253
  %2255 = shl nuw i64 %2252, 1
  %2256 = getelementptr i16, i16* %2238, i64 %2255
  %2257 = shl nuw i64 %2252, 1
  %2258 = getelementptr i16, i16* %1340, i64 %2257
  %2259 = bitcast i16* %2258 to <4 x i32>*
  %2260 = load <4 x i32>, <4 x i32>* %2259, align 4, !tbaa !10, !alias.scope !274
  %2261 = getelementptr i16, i16* %2258, i64 8
  %2262 = bitcast i16* %2261 to <4 x i32>*
  %2263 = load <4 x i32>, <4 x i32>* %2262, align 4, !tbaa !10, !alias.scope !274
  %2264 = bitcast i16* %2256 to <4 x i32>*
  %2265 = load <4 x i32>, <4 x i32>* %2264, align 4, !tbaa !10, !alias.scope !277
  %2266 = getelementptr i16, i16* %2256, i64 8
  %2267 = bitcast i16* %2266 to <4 x i32>*
  %2268 = load <4 x i32>, <4 x i32>* %2267, align 4, !tbaa !10, !alias.scope !277
  %2269 = add <4 x i32> %2265, %2260
  %2270 = add <4 x i32> %2268, %2263
  %2271 = bitcast i16* %2254 to <4 x i32>*
  store <4 x i32> %2269, <4 x i32>* %2271, align 4, !tbaa !10, !alias.scope !279, !noalias !281
  %2272 = getelementptr i16, i16* %2254, i64 8
  %2273 = bitcast i16* %2272 to <4 x i32>*
  store <4 x i32> %2270, <4 x i32>* %2273, align 4, !tbaa !10, !alias.scope !279, !noalias !281
  %2274 = or i64 %2252, 8
  %2275 = shl nuw i64 %2274, 1
  %2276 = getelementptr i16, i16* %2239, i64 %2275
  %2277 = shl nuw i64 %2274, 1
  %2278 = getelementptr i16, i16* %2238, i64 %2277
  %2279 = shl nuw i64 %2274, 1
  %2280 = getelementptr i16, i16* %1340, i64 %2279
  %2281 = bitcast i16* %2280 to <4 x i32>*
  %2282 = load <4 x i32>, <4 x i32>* %2281, align 4, !tbaa !10, !alias.scope !274
  %2283 = getelementptr i16, i16* %2280, i64 8
  %2284 = bitcast i16* %2283 to <4 x i32>*
  %2285 = load <4 x i32>, <4 x i32>* %2284, align 4, !tbaa !10, !alias.scope !274
  %2286 = bitcast i16* %2278 to <4 x i32>*
  %2287 = load <4 x i32>, <4 x i32>* %2286, align 4, !tbaa !10, !alias.scope !277
  %2288 = getelementptr i16, i16* %2278, i64 8
  %2289 = bitcast i16* %2288 to <4 x i32>*
  %2290 = load <4 x i32>, <4 x i32>* %2289, align 4, !tbaa !10, !alias.scope !277
  %2291 = add <4 x i32> %2287, %2282
  %2292 = add <4 x i32> %2290, %2285
  %2293 = bitcast i16* %2276 to <4 x i32>*
  store <4 x i32> %2291, <4 x i32>* %2293, align 4, !tbaa !10, !alias.scope !279, !noalias !281
  %2294 = getelementptr i16, i16* %2276, i64 8
  %2295 = bitcast i16* %2294 to <4 x i32>*
  store <4 x i32> %2292, <4 x i32>* %2295, align 4, !tbaa !10, !alias.scope !279, !noalias !281
  %2296 = add nuw nsw i64 %2252, 16
  %2297 = icmp eq i64 %2296, 544
  br i1 %2297, label %2298, label %2251, !llvm.loop !282

2298:                                             ; preds = %2237, %2251
  %2299 = phi i32 [ 0, %2237 ], [ 544, %2251 ]
  %2300 = phi i16* [ %2239, %2237 ], [ %2248, %2251 ]
  %2301 = phi i16* [ %2238, %2237 ], [ %2249, %2251 ]
  %2302 = phi i16* [ %1340, %2237 ], [ %2250, %2251 ]
  br label %2303

2303:                                             ; preds = %2303, %2298
  %2304 = phi i32 [ %2315, %2303 ], [ %2299, %2298 ]
  %2305 = phi i16* [ %2316, %2303 ], [ %2300, %2298 ]
  %2306 = phi i16* [ %2318, %2303 ], [ %2301, %2298 ]
  %2307 = phi i16* [ %2317, %2303 ], [ %2302, %2298 ]
  %2308 = phi i32 [ %2319, %2303 ], [ 0, %2298 ]
  %2309 = bitcast i16* %2307 to i32*
  %2310 = load i32, i32* %2309, align 4, !tbaa !10
  %2311 = bitcast i16* %2306 to i32*
  %2312 = load i32, i32* %2311, align 4, !tbaa !10
  %2313 = add i32 %2312, %2310
  %2314 = bitcast i16* %2305 to i32*
  store i32 %2313, i32* %2314, align 4, !tbaa !10
  %2315 = add nuw nsw i32 %2304, 1
  %2316 = getelementptr inbounds i16, i16* %2305, i64 2
  %2317 = getelementptr inbounds i16, i16* %2307, i64 2
  %2318 = getelementptr inbounds i16, i16* %2306, i64 2
  %2319 = add i32 %2308, 1
  %2320 = icmp eq i32 %2308, 0
  br i1 %2320, label %2321, label %2303, !llvm.loop !283

2321:                                             ; preds = %2303
  br i1 %2246, label %2322, label %2365

2322:                                             ; preds = %2321, %2322
  %2323 = phi i32 [ %2360, %2322 ], [ %2315, %2321 ]
  %2324 = phi i16* [ %2361, %2322 ], [ %2316, %2321 ]
  %2325 = phi i16* [ %2363, %2322 ], [ %2318, %2321 ]
  %2326 = phi i16* [ %2362, %2322 ], [ %2317, %2321 ]
  %2327 = bitcast i16* %2326 to i32*
  %2328 = load i32, i32* %2327, align 4, !tbaa !10
  %2329 = bitcast i16* %2325 to i32*
  %2330 = load i32, i32* %2329, align 4, !tbaa !10
  %2331 = add i32 %2330, %2328
  %2332 = bitcast i16* %2324 to i32*
  store i32 %2331, i32* %2332, align 4, !tbaa !10
  %2333 = getelementptr inbounds i16, i16* %2324, i64 2
  %2334 = getelementptr inbounds i16, i16* %2326, i64 2
  %2335 = getelementptr inbounds i16, i16* %2325, i64 2
  %2336 = bitcast i16* %2334 to i32*
  %2337 = load i32, i32* %2336, align 4, !tbaa !10
  %2338 = bitcast i16* %2335 to i32*
  %2339 = load i32, i32* %2338, align 4, !tbaa !10
  %2340 = add i32 %2339, %2337
  %2341 = bitcast i16* %2333 to i32*
  store i32 %2340, i32* %2341, align 4, !tbaa !10
  %2342 = getelementptr inbounds i16, i16* %2324, i64 4
  %2343 = getelementptr inbounds i16, i16* %2326, i64 4
  %2344 = getelementptr inbounds i16, i16* %2325, i64 4
  %2345 = bitcast i16* %2343 to i32*
  %2346 = load i32, i32* %2345, align 4, !tbaa !10
  %2347 = bitcast i16* %2344 to i32*
  %2348 = load i32, i32* %2347, align 4, !tbaa !10
  %2349 = add i32 %2348, %2346
  %2350 = bitcast i16* %2342 to i32*
  store i32 %2349, i32* %2350, align 4, !tbaa !10
  %2351 = getelementptr inbounds i16, i16* %2324, i64 6
  %2352 = getelementptr inbounds i16, i16* %2326, i64 6
  %2353 = getelementptr inbounds i16, i16* %2325, i64 6
  %2354 = bitcast i16* %2352 to i32*
  %2355 = load i32, i32* %2354, align 4, !tbaa !10
  %2356 = bitcast i16* %2353 to i32*
  %2357 = load i32, i32* %2356, align 4, !tbaa !10
  %2358 = add i32 %2357, %2355
  %2359 = bitcast i16* %2351 to i32*
  store i32 %2358, i32* %2359, align 4, !tbaa !10
  %2360 = add nuw nsw i32 %2323, 4
  %2361 = getelementptr inbounds i16, i16* %2324, i64 8
  %2362 = getelementptr inbounds i16, i16* %2326, i64 8
  %2363 = getelementptr inbounds i16, i16* %2325, i64 8
  %2364 = icmp eq i32 %2360, 545
  br i1 %2364, label %2365, label %2322, !llvm.loop !284

2365:                                             ; preds = %2322, %2321
  %2366 = getelementptr inbounds i16, i16* %560, i64 13152
  %2367 = getelementptr inbounds i16, i16* %2366, i64 1096
  %2368 = getelementptr inbounds i16, i16* %1598, i64 6576
  %2369 = icmp ult i16* %450, %455
  %2370 = icmp ult i16* %454, %451
  %2371 = and i1 %2369, %2370
  %2372 = icmp ult i16* %450, %457
  %2373 = icmp ult i16* %456, %451
  %2374 = and i1 %2372, %2373
  %2375 = or i1 %2371, %2374
  br i1 %2375, label %2427, label %2376

2376:                                             ; preds = %2365
  %2377 = getelementptr i16, i16* %2368, i64 1088
  %2378 = getelementptr i16, i16* %2367, i64 1088
  %2379 = getelementptr i16, i16* %2366, i64 1088
  br label %2380

2380:                                             ; preds = %2380, %2376
  %2381 = phi i64 [ 0, %2376 ], [ %2425, %2380 ]
  %2382 = shl nuw i64 %2381, 1
  %2383 = getelementptr i16, i16* %2368, i64 %2382
  %2384 = shl nuw i64 %2381, 1
  %2385 = getelementptr i16, i16* %2367, i64 %2384
  %2386 = shl nuw i64 %2381, 1
  %2387 = getelementptr i16, i16* %2366, i64 %2386
  %2388 = bitcast i16* %2387 to <4 x i32>*
  %2389 = load <4 x i32>, <4 x i32>* %2388, align 4, !tbaa !10, !alias.scope !285
  %2390 = getelementptr i16, i16* %2387, i64 8
  %2391 = bitcast i16* %2390 to <4 x i32>*
  %2392 = load <4 x i32>, <4 x i32>* %2391, align 4, !tbaa !10, !alias.scope !285
  %2393 = bitcast i16* %2385 to <4 x i32>*
  %2394 = load <4 x i32>, <4 x i32>* %2393, align 4, !tbaa !10, !alias.scope !288
  %2395 = getelementptr i16, i16* %2385, i64 8
  %2396 = bitcast i16* %2395 to <4 x i32>*
  %2397 = load <4 x i32>, <4 x i32>* %2396, align 4, !tbaa !10, !alias.scope !288
  %2398 = add <4 x i32> %2394, %2389
  %2399 = add <4 x i32> %2397, %2392
  %2400 = bitcast i16* %2383 to <4 x i32>*
  store <4 x i32> %2398, <4 x i32>* %2400, align 4, !tbaa !10, !alias.scope !290, !noalias !292
  %2401 = getelementptr i16, i16* %2383, i64 8
  %2402 = bitcast i16* %2401 to <4 x i32>*
  store <4 x i32> %2399, <4 x i32>* %2402, align 4, !tbaa !10, !alias.scope !290, !noalias !292
  %2403 = or i64 %2381, 8
  %2404 = shl nuw i64 %2403, 1
  %2405 = getelementptr i16, i16* %2368, i64 %2404
  %2406 = shl nuw i64 %2403, 1
  %2407 = getelementptr i16, i16* %2367, i64 %2406
  %2408 = shl nuw i64 %2403, 1
  %2409 = getelementptr i16, i16* %2366, i64 %2408
  %2410 = bitcast i16* %2409 to <4 x i32>*
  %2411 = load <4 x i32>, <4 x i32>* %2410, align 4, !tbaa !10, !alias.scope !285
  %2412 = getelementptr i16, i16* %2409, i64 8
  %2413 = bitcast i16* %2412 to <4 x i32>*
  %2414 = load <4 x i32>, <4 x i32>* %2413, align 4, !tbaa !10, !alias.scope !285
  %2415 = bitcast i16* %2407 to <4 x i32>*
  %2416 = load <4 x i32>, <4 x i32>* %2415, align 4, !tbaa !10, !alias.scope !288
  %2417 = getelementptr i16, i16* %2407, i64 8
  %2418 = bitcast i16* %2417 to <4 x i32>*
  %2419 = load <4 x i32>, <4 x i32>* %2418, align 4, !tbaa !10, !alias.scope !288
  %2420 = add <4 x i32> %2416, %2411
  %2421 = add <4 x i32> %2419, %2414
  %2422 = bitcast i16* %2405 to <4 x i32>*
  store <4 x i32> %2420, <4 x i32>* %2422, align 4, !tbaa !10, !alias.scope !290, !noalias !292
  %2423 = getelementptr i16, i16* %2405, i64 8
  %2424 = bitcast i16* %2423 to <4 x i32>*
  store <4 x i32> %2421, <4 x i32>* %2424, align 4, !tbaa !10, !alias.scope !290, !noalias !292
  %2425 = add nuw nsw i64 %2381, 16
  %2426 = icmp eq i64 %2425, 544
  br i1 %2426, label %2427, label %2380, !llvm.loop !293

2427:                                             ; preds = %2365, %2380
  %2428 = phi i32 [ 0, %2365 ], [ 544, %2380 ]
  %2429 = phi i16* [ %2368, %2365 ], [ %2377, %2380 ]
  %2430 = phi i16* [ %2367, %2365 ], [ %2378, %2380 ]
  %2431 = phi i16* [ %2366, %2365 ], [ %2379, %2380 ]
  br label %2432

2432:                                             ; preds = %2432, %2427
  %2433 = phi i32 [ %2444, %2432 ], [ %2428, %2427 ]
  %2434 = phi i16* [ %2445, %2432 ], [ %2429, %2427 ]
  %2435 = phi i16* [ %2447, %2432 ], [ %2430, %2427 ]
  %2436 = phi i16* [ %2446, %2432 ], [ %2431, %2427 ]
  %2437 = phi i32 [ %2448, %2432 ], [ 0, %2427 ]
  %2438 = bitcast i16* %2436 to i32*
  %2439 = load i32, i32* %2438, align 4, !tbaa !10
  %2440 = bitcast i16* %2435 to i32*
  %2441 = load i32, i32* %2440, align 4, !tbaa !10
  %2442 = add i32 %2441, %2439
  %2443 = bitcast i16* %2434 to i32*
  store i32 %2442, i32* %2443, align 4, !tbaa !10
  %2444 = add nuw nsw i32 %2433, 1
  %2445 = getelementptr inbounds i16, i16* %2434, i64 2
  %2446 = getelementptr inbounds i16, i16* %2436, i64 2
  %2447 = getelementptr inbounds i16, i16* %2435, i64 2
  %2448 = add i32 %2437, 1
  %2449 = icmp eq i32 %2437, 0
  br i1 %2449, label %2450, label %2432, !llvm.loop !294

2450:                                             ; preds = %2432
  br i1 %2375, label %2451, label %2494

2451:                                             ; preds = %2450, %2451
  %2452 = phi i32 [ %2489, %2451 ], [ %2444, %2450 ]
  %2453 = phi i16* [ %2490, %2451 ], [ %2445, %2450 ]
  %2454 = phi i16* [ %2492, %2451 ], [ %2447, %2450 ]
  %2455 = phi i16* [ %2491, %2451 ], [ %2446, %2450 ]
  %2456 = bitcast i16* %2455 to i32*
  %2457 = load i32, i32* %2456, align 4, !tbaa !10
  %2458 = bitcast i16* %2454 to i32*
  %2459 = load i32, i32* %2458, align 4, !tbaa !10
  %2460 = add i32 %2459, %2457
  %2461 = bitcast i16* %2453 to i32*
  store i32 %2460, i32* %2461, align 4, !tbaa !10
  %2462 = getelementptr inbounds i16, i16* %2453, i64 2
  %2463 = getelementptr inbounds i16, i16* %2455, i64 2
  %2464 = getelementptr inbounds i16, i16* %2454, i64 2
  %2465 = bitcast i16* %2463 to i32*
  %2466 = load i32, i32* %2465, align 4, !tbaa !10
  %2467 = bitcast i16* %2464 to i32*
  %2468 = load i32, i32* %2467, align 4, !tbaa !10
  %2469 = add i32 %2468, %2466
  %2470 = bitcast i16* %2462 to i32*
  store i32 %2469, i32* %2470, align 4, !tbaa !10
  %2471 = getelementptr inbounds i16, i16* %2453, i64 4
  %2472 = getelementptr inbounds i16, i16* %2455, i64 4
  %2473 = getelementptr inbounds i16, i16* %2454, i64 4
  %2474 = bitcast i16* %2472 to i32*
  %2475 = load i32, i32* %2474, align 4, !tbaa !10
  %2476 = bitcast i16* %2473 to i32*
  %2477 = load i32, i32* %2476, align 4, !tbaa !10
  %2478 = add i32 %2477, %2475
  %2479 = bitcast i16* %2471 to i32*
  store i32 %2478, i32* %2479, align 4, !tbaa !10
  %2480 = getelementptr inbounds i16, i16* %2453, i64 6
  %2481 = getelementptr inbounds i16, i16* %2455, i64 6
  %2482 = getelementptr inbounds i16, i16* %2454, i64 6
  %2483 = bitcast i16* %2481 to i32*
  %2484 = load i32, i32* %2483, align 4, !tbaa !10
  %2485 = bitcast i16* %2482 to i32*
  %2486 = load i32, i32* %2485, align 4, !tbaa !10
  %2487 = add i32 %2486, %2484
  %2488 = bitcast i16* %2480 to i32*
  store i32 %2487, i32* %2488, align 4, !tbaa !10
  %2489 = add nuw nsw i32 %2452, 4
  %2490 = getelementptr inbounds i16, i16* %2453, i64 8
  %2491 = getelementptr inbounds i16, i16* %2455, i64 8
  %2492 = getelementptr inbounds i16, i16* %2454, i64 8
  %2493 = icmp eq i32 %2489, 545
  br i1 %2493, label %2494, label %2451, !llvm.loop !295

2494:                                             ; preds = %2451, %2450
  %2495 = getelementptr inbounds i16, i16* %560, i64 15344
  %2496 = getelementptr inbounds i16, i16* %2495, i64 1096
  %2497 = getelementptr inbounds i16, i16* %1598, i64 7672
  %2498 = icmp ult i16* %460, %465
  %2499 = icmp ult i16* %464, %461
  %2500 = and i1 %2498, %2499
  %2501 = icmp ult i16* %460, %467
  %2502 = icmp ult i16* %466, %461
  %2503 = and i1 %2501, %2502
  %2504 = or i1 %2500, %2503
  br i1 %2504, label %2556, label %2505

2505:                                             ; preds = %2494
  %2506 = getelementptr i16, i16* %2497, i64 1088
  %2507 = getelementptr i16, i16* %2496, i64 1088
  %2508 = getelementptr i16, i16* %2495, i64 1088
  br label %2509

2509:                                             ; preds = %2509, %2505
  %2510 = phi i64 [ 0, %2505 ], [ %2554, %2509 ]
  %2511 = shl nuw i64 %2510, 1
  %2512 = getelementptr i16, i16* %2497, i64 %2511
  %2513 = shl nuw i64 %2510, 1
  %2514 = getelementptr i16, i16* %2496, i64 %2513
  %2515 = shl nuw i64 %2510, 1
  %2516 = getelementptr i16, i16* %2495, i64 %2515
  %2517 = bitcast i16* %2516 to <4 x i32>*
  %2518 = load <4 x i32>, <4 x i32>* %2517, align 4, !tbaa !10, !alias.scope !296
  %2519 = getelementptr i16, i16* %2516, i64 8
  %2520 = bitcast i16* %2519 to <4 x i32>*
  %2521 = load <4 x i32>, <4 x i32>* %2520, align 4, !tbaa !10, !alias.scope !296
  %2522 = bitcast i16* %2514 to <4 x i32>*
  %2523 = load <4 x i32>, <4 x i32>* %2522, align 4, !tbaa !10, !alias.scope !299
  %2524 = getelementptr i16, i16* %2514, i64 8
  %2525 = bitcast i16* %2524 to <4 x i32>*
  %2526 = load <4 x i32>, <4 x i32>* %2525, align 4, !tbaa !10, !alias.scope !299
  %2527 = add <4 x i32> %2523, %2518
  %2528 = add <4 x i32> %2526, %2521
  %2529 = bitcast i16* %2512 to <4 x i32>*
  store <4 x i32> %2527, <4 x i32>* %2529, align 4, !tbaa !10, !alias.scope !301, !noalias !303
  %2530 = getelementptr i16, i16* %2512, i64 8
  %2531 = bitcast i16* %2530 to <4 x i32>*
  store <4 x i32> %2528, <4 x i32>* %2531, align 4, !tbaa !10, !alias.scope !301, !noalias !303
  %2532 = or i64 %2510, 8
  %2533 = shl nuw i64 %2532, 1
  %2534 = getelementptr i16, i16* %2497, i64 %2533
  %2535 = shl nuw i64 %2532, 1
  %2536 = getelementptr i16, i16* %2496, i64 %2535
  %2537 = shl nuw i64 %2532, 1
  %2538 = getelementptr i16, i16* %2495, i64 %2537
  %2539 = bitcast i16* %2538 to <4 x i32>*
  %2540 = load <4 x i32>, <4 x i32>* %2539, align 4, !tbaa !10, !alias.scope !296
  %2541 = getelementptr i16, i16* %2538, i64 8
  %2542 = bitcast i16* %2541 to <4 x i32>*
  %2543 = load <4 x i32>, <4 x i32>* %2542, align 4, !tbaa !10, !alias.scope !296
  %2544 = bitcast i16* %2536 to <4 x i32>*
  %2545 = load <4 x i32>, <4 x i32>* %2544, align 4, !tbaa !10, !alias.scope !299
  %2546 = getelementptr i16, i16* %2536, i64 8
  %2547 = bitcast i16* %2546 to <4 x i32>*
  %2548 = load <4 x i32>, <4 x i32>* %2547, align 4, !tbaa !10, !alias.scope !299
  %2549 = add <4 x i32> %2545, %2540
  %2550 = add <4 x i32> %2548, %2543
  %2551 = bitcast i16* %2534 to <4 x i32>*
  store <4 x i32> %2549, <4 x i32>* %2551, align 4, !tbaa !10, !alias.scope !301, !noalias !303
  %2552 = getelementptr i16, i16* %2534, i64 8
  %2553 = bitcast i16* %2552 to <4 x i32>*
  store <4 x i32> %2550, <4 x i32>* %2553, align 4, !tbaa !10, !alias.scope !301, !noalias !303
  %2554 = add nuw nsw i64 %2510, 16
  %2555 = icmp eq i64 %2554, 544
  br i1 %2555, label %2556, label %2509, !llvm.loop !304

2556:                                             ; preds = %2494, %2509
  %2557 = phi i32 [ 0, %2494 ], [ 544, %2509 ]
  %2558 = phi i16* [ %2497, %2494 ], [ %2506, %2509 ]
  %2559 = phi i16* [ %2496, %2494 ], [ %2507, %2509 ]
  %2560 = phi i16* [ %2495, %2494 ], [ %2508, %2509 ]
  br label %2561

2561:                                             ; preds = %2561, %2556
  %2562 = phi i32 [ %2573, %2561 ], [ %2557, %2556 ]
  %2563 = phi i16* [ %2574, %2561 ], [ %2558, %2556 ]
  %2564 = phi i16* [ %2576, %2561 ], [ %2559, %2556 ]
  %2565 = phi i16* [ %2575, %2561 ], [ %2560, %2556 ]
  %2566 = phi i32 [ %2577, %2561 ], [ 0, %2556 ]
  %2567 = bitcast i16* %2565 to i32*
  %2568 = load i32, i32* %2567, align 4, !tbaa !10
  %2569 = bitcast i16* %2564 to i32*
  %2570 = load i32, i32* %2569, align 4, !tbaa !10
  %2571 = add i32 %2570, %2568
  %2572 = bitcast i16* %2563 to i32*
  store i32 %2571, i32* %2572, align 4, !tbaa !10
  %2573 = add nuw nsw i32 %2562, 1
  %2574 = getelementptr inbounds i16, i16* %2563, i64 2
  %2575 = getelementptr inbounds i16, i16* %2565, i64 2
  %2576 = getelementptr inbounds i16, i16* %2564, i64 2
  %2577 = add i32 %2566, 1
  %2578 = icmp eq i32 %2566, 0
  br i1 %2578, label %2579, label %2561, !llvm.loop !305

2579:                                             ; preds = %2561
  br i1 %2504, label %2580, label %2623

2580:                                             ; preds = %2579, %2580
  %2581 = phi i32 [ %2618, %2580 ], [ %2573, %2579 ]
  %2582 = phi i16* [ %2619, %2580 ], [ %2574, %2579 ]
  %2583 = phi i16* [ %2621, %2580 ], [ %2576, %2579 ]
  %2584 = phi i16* [ %2620, %2580 ], [ %2575, %2579 ]
  %2585 = bitcast i16* %2584 to i32*
  %2586 = load i32, i32* %2585, align 4, !tbaa !10
  %2587 = bitcast i16* %2583 to i32*
  %2588 = load i32, i32* %2587, align 4, !tbaa !10
  %2589 = add i32 %2588, %2586
  %2590 = bitcast i16* %2582 to i32*
  store i32 %2589, i32* %2590, align 4, !tbaa !10
  %2591 = getelementptr inbounds i16, i16* %2582, i64 2
  %2592 = getelementptr inbounds i16, i16* %2584, i64 2
  %2593 = getelementptr inbounds i16, i16* %2583, i64 2
  %2594 = bitcast i16* %2592 to i32*
  %2595 = load i32, i32* %2594, align 4, !tbaa !10
  %2596 = bitcast i16* %2593 to i32*
  %2597 = load i32, i32* %2596, align 4, !tbaa !10
  %2598 = add i32 %2597, %2595
  %2599 = bitcast i16* %2591 to i32*
  store i32 %2598, i32* %2599, align 4, !tbaa !10
  %2600 = getelementptr inbounds i16, i16* %2582, i64 4
  %2601 = getelementptr inbounds i16, i16* %2584, i64 4
  %2602 = getelementptr inbounds i16, i16* %2583, i64 4
  %2603 = bitcast i16* %2601 to i32*
  %2604 = load i32, i32* %2603, align 4, !tbaa !10
  %2605 = bitcast i16* %2602 to i32*
  %2606 = load i32, i32* %2605, align 4, !tbaa !10
  %2607 = add i32 %2606, %2604
  %2608 = bitcast i16* %2600 to i32*
  store i32 %2607, i32* %2608, align 4, !tbaa !10
  %2609 = getelementptr inbounds i16, i16* %2582, i64 6
  %2610 = getelementptr inbounds i16, i16* %2584, i64 6
  %2611 = getelementptr inbounds i16, i16* %2583, i64 6
  %2612 = bitcast i16* %2610 to i32*
  %2613 = load i32, i32* %2612, align 4, !tbaa !10
  %2614 = bitcast i16* %2611 to i32*
  %2615 = load i32, i32* %2614, align 4, !tbaa !10
  %2616 = add i32 %2615, %2613
  %2617 = bitcast i16* %2609 to i32*
  store i32 %2616, i32* %2617, align 4, !tbaa !10
  %2618 = add nuw nsw i32 %2581, 4
  %2619 = getelementptr inbounds i16, i16* %2582, i64 8
  %2620 = getelementptr inbounds i16, i16* %2584, i64 8
  %2621 = getelementptr inbounds i16, i16* %2583, i64 8
  %2622 = icmp eq i32 %2618, 545
  br i1 %2622, label %2623, label %2580, !llvm.loop !306

2623:                                             ; preds = %2580, %2579
  %2624 = mul i64 %311, 4384
  %2625 = and i64 %2624, 4294967264
  %2626 = getelementptr inbounds i16, i16* %14, i64 %2625
  %2627 = icmp ult i16* %470, %475
  %2628 = icmp ult i16* %474, %471
  %2629 = and i1 %2627, %2628
  %2630 = icmp ult i16* %470, %477
  %2631 = icmp ult i16* %476, %471
  %2632 = and i1 %2630, %2631
  %2633 = or i1 %2629, %2632
  br i1 %2633, label %2685, label %2634

2634:                                             ; preds = %2623
  %2635 = getelementptr i16, i16* %2626, i64 1088
  %2636 = getelementptr i16, i16* %1854, i64 1088
  %2637 = getelementptr i16, i16* %1598, i64 1088
  br label %2638

2638:                                             ; preds = %2638, %2634
  %2639 = phi i64 [ 0, %2634 ], [ %2683, %2638 ]
  %2640 = shl nuw i64 %2639, 1
  %2641 = getelementptr i16, i16* %2626, i64 %2640
  %2642 = shl nuw i64 %2639, 1
  %2643 = getelementptr i16, i16* %1854, i64 %2642
  %2644 = shl nuw i64 %2639, 1
  %2645 = getelementptr i16, i16* %1598, i64 %2644
  %2646 = bitcast i16* %2645 to <4 x i32>*
  %2647 = load <4 x i32>, <4 x i32>* %2646, align 4, !tbaa !10, !alias.scope !307
  %2648 = getelementptr i16, i16* %2645, i64 8
  %2649 = bitcast i16* %2648 to <4 x i32>*
  %2650 = load <4 x i32>, <4 x i32>* %2649, align 4, !tbaa !10, !alias.scope !307
  %2651 = bitcast i16* %2643 to <4 x i32>*
  %2652 = load <4 x i32>, <4 x i32>* %2651, align 4, !tbaa !10, !alias.scope !310
  %2653 = getelementptr i16, i16* %2643, i64 8
  %2654 = bitcast i16* %2653 to <4 x i32>*
  %2655 = load <4 x i32>, <4 x i32>* %2654, align 4, !tbaa !10, !alias.scope !310
  %2656 = add <4 x i32> %2652, %2647
  %2657 = add <4 x i32> %2655, %2650
  %2658 = bitcast i16* %2641 to <4 x i32>*
  store <4 x i32> %2656, <4 x i32>* %2658, align 4, !tbaa !10, !alias.scope !312, !noalias !314
  %2659 = getelementptr i16, i16* %2641, i64 8
  %2660 = bitcast i16* %2659 to <4 x i32>*
  store <4 x i32> %2657, <4 x i32>* %2660, align 4, !tbaa !10, !alias.scope !312, !noalias !314
  %2661 = or i64 %2639, 8
  %2662 = shl nuw i64 %2661, 1
  %2663 = getelementptr i16, i16* %2626, i64 %2662
  %2664 = shl nuw i64 %2661, 1
  %2665 = getelementptr i16, i16* %1854, i64 %2664
  %2666 = shl nuw i64 %2661, 1
  %2667 = getelementptr i16, i16* %1598, i64 %2666
  %2668 = bitcast i16* %2667 to <4 x i32>*
  %2669 = load <4 x i32>, <4 x i32>* %2668, align 4, !tbaa !10, !alias.scope !307
  %2670 = getelementptr i16, i16* %2667, i64 8
  %2671 = bitcast i16* %2670 to <4 x i32>*
  %2672 = load <4 x i32>, <4 x i32>* %2671, align 4, !tbaa !10, !alias.scope !307
  %2673 = bitcast i16* %2665 to <4 x i32>*
  %2674 = load <4 x i32>, <4 x i32>* %2673, align 4, !tbaa !10, !alias.scope !310
  %2675 = getelementptr i16, i16* %2665, i64 8
  %2676 = bitcast i16* %2675 to <4 x i32>*
  %2677 = load <4 x i32>, <4 x i32>* %2676, align 4, !tbaa !10, !alias.scope !310
  %2678 = add <4 x i32> %2674, %2669
  %2679 = add <4 x i32> %2677, %2672
  %2680 = bitcast i16* %2663 to <4 x i32>*
  store <4 x i32> %2678, <4 x i32>* %2680, align 4, !tbaa !10, !alias.scope !312, !noalias !314
  %2681 = getelementptr i16, i16* %2663, i64 8
  %2682 = bitcast i16* %2681 to <4 x i32>*
  store <4 x i32> %2679, <4 x i32>* %2682, align 4, !tbaa !10, !alias.scope !312, !noalias !314
  %2683 = add nuw nsw i64 %2639, 16
  %2684 = icmp eq i64 %2683, 544
  br i1 %2684, label %2685, label %2638, !llvm.loop !315

2685:                                             ; preds = %2623, %2638
  %2686 = phi i32 [ 0, %2623 ], [ 544, %2638 ]
  %2687 = phi i16* [ %2626, %2623 ], [ %2635, %2638 ]
  %2688 = phi i16* [ %1854, %2623 ], [ %2636, %2638 ]
  %2689 = phi i16* [ %1598, %2623 ], [ %2637, %2638 ]
  br label %2690

2690:                                             ; preds = %2690, %2685
  %2691 = phi i32 [ %2702, %2690 ], [ %2686, %2685 ]
  %2692 = phi i16* [ %2703, %2690 ], [ %2687, %2685 ]
  %2693 = phi i16* [ %2705, %2690 ], [ %2688, %2685 ]
  %2694 = phi i16* [ %2704, %2690 ], [ %2689, %2685 ]
  %2695 = phi i32 [ %2706, %2690 ], [ 0, %2685 ]
  %2696 = bitcast i16* %2694 to i32*
  %2697 = load i32, i32* %2696, align 4, !tbaa !10
  %2698 = bitcast i16* %2693 to i32*
  %2699 = load i32, i32* %2698, align 4, !tbaa !10
  %2700 = add i32 %2699, %2697
  %2701 = bitcast i16* %2692 to i32*
  store i32 %2700, i32* %2701, align 4, !tbaa !10
  %2702 = add nuw nsw i32 %2691, 1
  %2703 = getelementptr inbounds i16, i16* %2692, i64 2
  %2704 = getelementptr inbounds i16, i16* %2694, i64 2
  %2705 = getelementptr inbounds i16, i16* %2693, i64 2
  %2706 = add i32 %2695, 1
  %2707 = icmp eq i32 %2695, 0
  br i1 %2707, label %2708, label %2690, !llvm.loop !316

2708:                                             ; preds = %2690
  br i1 %2633, label %2709, label %2752

2709:                                             ; preds = %2708, %2709
  %2710 = phi i32 [ %2747, %2709 ], [ %2702, %2708 ]
  %2711 = phi i16* [ %2748, %2709 ], [ %2703, %2708 ]
  %2712 = phi i16* [ %2750, %2709 ], [ %2705, %2708 ]
  %2713 = phi i16* [ %2749, %2709 ], [ %2704, %2708 ]
  %2714 = bitcast i16* %2713 to i32*
  %2715 = load i32, i32* %2714, align 4, !tbaa !10
  %2716 = bitcast i16* %2712 to i32*
  %2717 = load i32, i32* %2716, align 4, !tbaa !10
  %2718 = add i32 %2717, %2715
  %2719 = bitcast i16* %2711 to i32*
  store i32 %2718, i32* %2719, align 4, !tbaa !10
  %2720 = getelementptr inbounds i16, i16* %2711, i64 2
  %2721 = getelementptr inbounds i16, i16* %2713, i64 2
  %2722 = getelementptr inbounds i16, i16* %2712, i64 2
  %2723 = bitcast i16* %2721 to i32*
  %2724 = load i32, i32* %2723, align 4, !tbaa !10
  %2725 = bitcast i16* %2722 to i32*
  %2726 = load i32, i32* %2725, align 4, !tbaa !10
  %2727 = add i32 %2726, %2724
  %2728 = bitcast i16* %2720 to i32*
  store i32 %2727, i32* %2728, align 4, !tbaa !10
  %2729 = getelementptr inbounds i16, i16* %2711, i64 4
  %2730 = getelementptr inbounds i16, i16* %2713, i64 4
  %2731 = getelementptr inbounds i16, i16* %2712, i64 4
  %2732 = bitcast i16* %2730 to i32*
  %2733 = load i32, i32* %2732, align 4, !tbaa !10
  %2734 = bitcast i16* %2731 to i32*
  %2735 = load i32, i32* %2734, align 4, !tbaa !10
  %2736 = add i32 %2735, %2733
  %2737 = bitcast i16* %2729 to i32*
  store i32 %2736, i32* %2737, align 4, !tbaa !10
  %2738 = getelementptr inbounds i16, i16* %2711, i64 6
  %2739 = getelementptr inbounds i16, i16* %2713, i64 6
  %2740 = getelementptr inbounds i16, i16* %2712, i64 6
  %2741 = bitcast i16* %2739 to i32*
  %2742 = load i32, i32* %2741, align 4, !tbaa !10
  %2743 = bitcast i16* %2740 to i32*
  %2744 = load i32, i32* %2743, align 4, !tbaa !10
  %2745 = add i32 %2744, %2742
  %2746 = bitcast i16* %2738 to i32*
  store i32 %2745, i32* %2746, align 4, !tbaa !10
  %2747 = add nuw nsw i32 %2710, 4
  %2748 = getelementptr inbounds i16, i16* %2711, i64 8
  %2749 = getelementptr inbounds i16, i16* %2713, i64 8
  %2750 = getelementptr inbounds i16, i16* %2712, i64 8
  %2751 = icmp eq i32 %2747, 545
  br i1 %2751, label %2752, label %2709, !llvm.loop !317

2752:                                             ; preds = %2709, %2708
  %2753 = getelementptr inbounds i16, i16* %1726, i64 2192
  %2754 = getelementptr inbounds i16, i16* %2626, i64 1096
  %2755 = icmp ult i16* %480, %485
  %2756 = icmp ult i16* %484, %481
  %2757 = and i1 %2755, %2756
  %2758 = icmp ult i16* %480, %487
  %2759 = icmp ult i16* %486, %481
  %2760 = and i1 %2758, %2759
  %2761 = or i1 %2757, %2760
  br i1 %2761, label %2813, label %2762

2762:                                             ; preds = %2752
  %2763 = getelementptr i16, i16* %2754, i64 1088
  %2764 = getelementptr i16, i16* %2753, i64 1088
  %2765 = getelementptr i16, i16* %1726, i64 1088
  br label %2766

2766:                                             ; preds = %2766, %2762
  %2767 = phi i64 [ 0, %2762 ], [ %2811, %2766 ]
  %2768 = shl nuw i64 %2767, 1
  %2769 = getelementptr i16, i16* %2754, i64 %2768
  %2770 = shl nuw i64 %2767, 1
  %2771 = getelementptr i16, i16* %2753, i64 %2770
  %2772 = shl nuw i64 %2767, 1
  %2773 = getelementptr i16, i16* %1726, i64 %2772
  %2774 = bitcast i16* %2773 to <4 x i32>*
  %2775 = load <4 x i32>, <4 x i32>* %2774, align 4, !tbaa !10, !alias.scope !318
  %2776 = getelementptr i16, i16* %2773, i64 8
  %2777 = bitcast i16* %2776 to <4 x i32>*
  %2778 = load <4 x i32>, <4 x i32>* %2777, align 4, !tbaa !10, !alias.scope !318
  %2779 = bitcast i16* %2771 to <4 x i32>*
  %2780 = load <4 x i32>, <4 x i32>* %2779, align 4, !tbaa !10, !alias.scope !321
  %2781 = getelementptr i16, i16* %2771, i64 8
  %2782 = bitcast i16* %2781 to <4 x i32>*
  %2783 = load <4 x i32>, <4 x i32>* %2782, align 4, !tbaa !10, !alias.scope !321
  %2784 = add <4 x i32> %2780, %2775
  %2785 = add <4 x i32> %2783, %2778
  %2786 = bitcast i16* %2769 to <4 x i32>*
  store <4 x i32> %2784, <4 x i32>* %2786, align 4, !tbaa !10, !alias.scope !323, !noalias !325
  %2787 = getelementptr i16, i16* %2769, i64 8
  %2788 = bitcast i16* %2787 to <4 x i32>*
  store <4 x i32> %2785, <4 x i32>* %2788, align 4, !tbaa !10, !alias.scope !323, !noalias !325
  %2789 = or i64 %2767, 8
  %2790 = shl nuw i64 %2789, 1
  %2791 = getelementptr i16, i16* %2754, i64 %2790
  %2792 = shl nuw i64 %2789, 1
  %2793 = getelementptr i16, i16* %2753, i64 %2792
  %2794 = shl nuw i64 %2789, 1
  %2795 = getelementptr i16, i16* %1726, i64 %2794
  %2796 = bitcast i16* %2795 to <4 x i32>*
  %2797 = load <4 x i32>, <4 x i32>* %2796, align 4, !tbaa !10, !alias.scope !318
  %2798 = getelementptr i16, i16* %2795, i64 8
  %2799 = bitcast i16* %2798 to <4 x i32>*
  %2800 = load <4 x i32>, <4 x i32>* %2799, align 4, !tbaa !10, !alias.scope !318
  %2801 = bitcast i16* %2793 to <4 x i32>*
  %2802 = load <4 x i32>, <4 x i32>* %2801, align 4, !tbaa !10, !alias.scope !321
  %2803 = getelementptr i16, i16* %2793, i64 8
  %2804 = bitcast i16* %2803 to <4 x i32>*
  %2805 = load <4 x i32>, <4 x i32>* %2804, align 4, !tbaa !10, !alias.scope !321
  %2806 = add <4 x i32> %2802, %2797
  %2807 = add <4 x i32> %2805, %2800
  %2808 = bitcast i16* %2791 to <4 x i32>*
  store <4 x i32> %2806, <4 x i32>* %2808, align 4, !tbaa !10, !alias.scope !323, !noalias !325
  %2809 = getelementptr i16, i16* %2791, i64 8
  %2810 = bitcast i16* %2809 to <4 x i32>*
  store <4 x i32> %2807, <4 x i32>* %2810, align 4, !tbaa !10, !alias.scope !323, !noalias !325
  %2811 = add nuw nsw i64 %2767, 16
  %2812 = icmp eq i64 %2811, 544
  br i1 %2812, label %2813, label %2766, !llvm.loop !326

2813:                                             ; preds = %2752, %2766
  %2814 = phi i32 [ 0, %2752 ], [ 544, %2766 ]
  %2815 = phi i16* [ %2754, %2752 ], [ %2763, %2766 ]
  %2816 = phi i16* [ %2753, %2752 ], [ %2764, %2766 ]
  %2817 = phi i16* [ %1726, %2752 ], [ %2765, %2766 ]
  br label %2818

2818:                                             ; preds = %2818, %2813
  %2819 = phi i32 [ %2830, %2818 ], [ %2814, %2813 ]
  %2820 = phi i16* [ %2831, %2818 ], [ %2815, %2813 ]
  %2821 = phi i16* [ %2833, %2818 ], [ %2816, %2813 ]
  %2822 = phi i16* [ %2832, %2818 ], [ %2817, %2813 ]
  %2823 = phi i32 [ %2834, %2818 ], [ 0, %2813 ]
  %2824 = bitcast i16* %2822 to i32*
  %2825 = load i32, i32* %2824, align 4, !tbaa !10
  %2826 = bitcast i16* %2821 to i32*
  %2827 = load i32, i32* %2826, align 4, !tbaa !10
  %2828 = add i32 %2827, %2825
  %2829 = bitcast i16* %2820 to i32*
  store i32 %2828, i32* %2829, align 4, !tbaa !10
  %2830 = add nuw nsw i32 %2819, 1
  %2831 = getelementptr inbounds i16, i16* %2820, i64 2
  %2832 = getelementptr inbounds i16, i16* %2822, i64 2
  %2833 = getelementptr inbounds i16, i16* %2821, i64 2
  %2834 = add i32 %2823, 1
  %2835 = icmp eq i32 %2823, 0
  br i1 %2835, label %2836, label %2818, !llvm.loop !327

2836:                                             ; preds = %2818
  br i1 %2761, label %2837, label %2880

2837:                                             ; preds = %2836, %2837
  %2838 = phi i32 [ %2875, %2837 ], [ %2830, %2836 ]
  %2839 = phi i16* [ %2876, %2837 ], [ %2831, %2836 ]
  %2840 = phi i16* [ %2878, %2837 ], [ %2833, %2836 ]
  %2841 = phi i16* [ %2877, %2837 ], [ %2832, %2836 ]
  %2842 = bitcast i16* %2841 to i32*
  %2843 = load i32, i32* %2842, align 4, !tbaa !10
  %2844 = bitcast i16* %2840 to i32*
  %2845 = load i32, i32* %2844, align 4, !tbaa !10
  %2846 = add i32 %2845, %2843
  %2847 = bitcast i16* %2839 to i32*
  store i32 %2846, i32* %2847, align 4, !tbaa !10
  %2848 = getelementptr inbounds i16, i16* %2839, i64 2
  %2849 = getelementptr inbounds i16, i16* %2841, i64 2
  %2850 = getelementptr inbounds i16, i16* %2840, i64 2
  %2851 = bitcast i16* %2849 to i32*
  %2852 = load i32, i32* %2851, align 4, !tbaa !10
  %2853 = bitcast i16* %2850 to i32*
  %2854 = load i32, i32* %2853, align 4, !tbaa !10
  %2855 = add i32 %2854, %2852
  %2856 = bitcast i16* %2848 to i32*
  store i32 %2855, i32* %2856, align 4, !tbaa !10
  %2857 = getelementptr inbounds i16, i16* %2839, i64 4
  %2858 = getelementptr inbounds i16, i16* %2841, i64 4
  %2859 = getelementptr inbounds i16, i16* %2840, i64 4
  %2860 = bitcast i16* %2858 to i32*
  %2861 = load i32, i32* %2860, align 4, !tbaa !10
  %2862 = bitcast i16* %2859 to i32*
  %2863 = load i32, i32* %2862, align 4, !tbaa !10
  %2864 = add i32 %2863, %2861
  %2865 = bitcast i16* %2857 to i32*
  store i32 %2864, i32* %2865, align 4, !tbaa !10
  %2866 = getelementptr inbounds i16, i16* %2839, i64 6
  %2867 = getelementptr inbounds i16, i16* %2841, i64 6
  %2868 = getelementptr inbounds i16, i16* %2840, i64 6
  %2869 = bitcast i16* %2867 to i32*
  %2870 = load i32, i32* %2869, align 4, !tbaa !10
  %2871 = bitcast i16* %2868 to i32*
  %2872 = load i32, i32* %2871, align 4, !tbaa !10
  %2873 = add i32 %2872, %2870
  %2874 = bitcast i16* %2866 to i32*
  store i32 %2873, i32* %2874, align 4, !tbaa !10
  %2875 = add nuw nsw i32 %2838, 4
  %2876 = getelementptr inbounds i16, i16* %2839, i64 8
  %2877 = getelementptr inbounds i16, i16* %2841, i64 8
  %2878 = getelementptr inbounds i16, i16* %2840, i64 8
  %2879 = icmp eq i32 %2875, 545
  br i1 %2879, label %2880, label %2837, !llvm.loop !328

2880:                                             ; preds = %2837, %2836
  %2881 = getelementptr inbounds i16, i16* %2111, i64 2192
  %2882 = getelementptr inbounds i16, i16* %2626, i64 2192
  %2883 = icmp ult i16* %490, %495
  %2884 = icmp ult i16* %494, %491
  %2885 = and i1 %2883, %2884
  %2886 = icmp ult i16* %490, %497
  %2887 = icmp ult i16* %496, %491
  %2888 = and i1 %2886, %2887
  %2889 = or i1 %2885, %2888
  br i1 %2889, label %2941, label %2890

2890:                                             ; preds = %2880
  %2891 = getelementptr i16, i16* %2882, i64 1088
  %2892 = getelementptr i16, i16* %2881, i64 1088
  %2893 = getelementptr i16, i16* %2111, i64 1088
  br label %2894

2894:                                             ; preds = %2894, %2890
  %2895 = phi i64 [ 0, %2890 ], [ %2939, %2894 ]
  %2896 = shl nuw i64 %2895, 1
  %2897 = getelementptr i16, i16* %2882, i64 %2896
  %2898 = shl nuw i64 %2895, 1
  %2899 = getelementptr i16, i16* %2881, i64 %2898
  %2900 = shl nuw i64 %2895, 1
  %2901 = getelementptr i16, i16* %2111, i64 %2900
  %2902 = bitcast i16* %2901 to <4 x i32>*
  %2903 = load <4 x i32>, <4 x i32>* %2902, align 4, !tbaa !10, !alias.scope !329
  %2904 = getelementptr i16, i16* %2901, i64 8
  %2905 = bitcast i16* %2904 to <4 x i32>*
  %2906 = load <4 x i32>, <4 x i32>* %2905, align 4, !tbaa !10, !alias.scope !329
  %2907 = bitcast i16* %2899 to <4 x i32>*
  %2908 = load <4 x i32>, <4 x i32>* %2907, align 4, !tbaa !10, !alias.scope !332
  %2909 = getelementptr i16, i16* %2899, i64 8
  %2910 = bitcast i16* %2909 to <4 x i32>*
  %2911 = load <4 x i32>, <4 x i32>* %2910, align 4, !tbaa !10, !alias.scope !332
  %2912 = add <4 x i32> %2908, %2903
  %2913 = add <4 x i32> %2911, %2906
  %2914 = bitcast i16* %2897 to <4 x i32>*
  store <4 x i32> %2912, <4 x i32>* %2914, align 4, !tbaa !10, !alias.scope !334, !noalias !336
  %2915 = getelementptr i16, i16* %2897, i64 8
  %2916 = bitcast i16* %2915 to <4 x i32>*
  store <4 x i32> %2913, <4 x i32>* %2916, align 4, !tbaa !10, !alias.scope !334, !noalias !336
  %2917 = or i64 %2895, 8
  %2918 = shl nuw i64 %2917, 1
  %2919 = getelementptr i16, i16* %2882, i64 %2918
  %2920 = shl nuw i64 %2917, 1
  %2921 = getelementptr i16, i16* %2881, i64 %2920
  %2922 = shl nuw i64 %2917, 1
  %2923 = getelementptr i16, i16* %2111, i64 %2922
  %2924 = bitcast i16* %2923 to <4 x i32>*
  %2925 = load <4 x i32>, <4 x i32>* %2924, align 4, !tbaa !10, !alias.scope !329
  %2926 = getelementptr i16, i16* %2923, i64 8
  %2927 = bitcast i16* %2926 to <4 x i32>*
  %2928 = load <4 x i32>, <4 x i32>* %2927, align 4, !tbaa !10, !alias.scope !329
  %2929 = bitcast i16* %2921 to <4 x i32>*
  %2930 = load <4 x i32>, <4 x i32>* %2929, align 4, !tbaa !10, !alias.scope !332
  %2931 = getelementptr i16, i16* %2921, i64 8
  %2932 = bitcast i16* %2931 to <4 x i32>*
  %2933 = load <4 x i32>, <4 x i32>* %2932, align 4, !tbaa !10, !alias.scope !332
  %2934 = add <4 x i32> %2930, %2925
  %2935 = add <4 x i32> %2933, %2928
  %2936 = bitcast i16* %2919 to <4 x i32>*
  store <4 x i32> %2934, <4 x i32>* %2936, align 4, !tbaa !10, !alias.scope !334, !noalias !336
  %2937 = getelementptr i16, i16* %2919, i64 8
  %2938 = bitcast i16* %2937 to <4 x i32>*
  store <4 x i32> %2935, <4 x i32>* %2938, align 4, !tbaa !10, !alias.scope !334, !noalias !336
  %2939 = add nuw nsw i64 %2895, 16
  %2940 = icmp eq i64 %2939, 544
  br i1 %2940, label %2941, label %2894, !llvm.loop !337

2941:                                             ; preds = %2880, %2894
  %2942 = phi i32 [ 0, %2880 ], [ 544, %2894 ]
  %2943 = phi i16* [ %2882, %2880 ], [ %2891, %2894 ]
  %2944 = phi i16* [ %2881, %2880 ], [ %2892, %2894 ]
  %2945 = phi i16* [ %2111, %2880 ], [ %2893, %2894 ]
  br label %2946

2946:                                             ; preds = %2946, %2941
  %2947 = phi i32 [ %2958, %2946 ], [ %2942, %2941 ]
  %2948 = phi i16* [ %2959, %2946 ], [ %2943, %2941 ]
  %2949 = phi i16* [ %2961, %2946 ], [ %2944, %2941 ]
  %2950 = phi i16* [ %2960, %2946 ], [ %2945, %2941 ]
  %2951 = phi i32 [ %2962, %2946 ], [ 0, %2941 ]
  %2952 = bitcast i16* %2950 to i32*
  %2953 = load i32, i32* %2952, align 4, !tbaa !10
  %2954 = bitcast i16* %2949 to i32*
  %2955 = load i32, i32* %2954, align 4, !tbaa !10
  %2956 = add i32 %2955, %2953
  %2957 = bitcast i16* %2948 to i32*
  store i32 %2956, i32* %2957, align 4, !tbaa !10
  %2958 = add nuw nsw i32 %2947, 1
  %2959 = getelementptr inbounds i16, i16* %2948, i64 2
  %2960 = getelementptr inbounds i16, i16* %2950, i64 2
  %2961 = getelementptr inbounds i16, i16* %2949, i64 2
  %2962 = add i32 %2951, 1
  %2963 = icmp eq i32 %2951, 0
  br i1 %2963, label %2964, label %2946, !llvm.loop !338

2964:                                             ; preds = %2946
  br i1 %2889, label %2965, label %3008

2965:                                             ; preds = %2964, %2965
  %2966 = phi i32 [ %3003, %2965 ], [ %2958, %2964 ]
  %2967 = phi i16* [ %3004, %2965 ], [ %2959, %2964 ]
  %2968 = phi i16* [ %3006, %2965 ], [ %2961, %2964 ]
  %2969 = phi i16* [ %3005, %2965 ], [ %2960, %2964 ]
  %2970 = bitcast i16* %2969 to i32*
  %2971 = load i32, i32* %2970, align 4, !tbaa !10
  %2972 = bitcast i16* %2968 to i32*
  %2973 = load i32, i32* %2972, align 4, !tbaa !10
  %2974 = add i32 %2973, %2971
  %2975 = bitcast i16* %2967 to i32*
  store i32 %2974, i32* %2975, align 4, !tbaa !10
  %2976 = getelementptr inbounds i16, i16* %2967, i64 2
  %2977 = getelementptr inbounds i16, i16* %2969, i64 2
  %2978 = getelementptr inbounds i16, i16* %2968, i64 2
  %2979 = bitcast i16* %2977 to i32*
  %2980 = load i32, i32* %2979, align 4, !tbaa !10
  %2981 = bitcast i16* %2978 to i32*
  %2982 = load i32, i32* %2981, align 4, !tbaa !10
  %2983 = add i32 %2982, %2980
  %2984 = bitcast i16* %2976 to i32*
  store i32 %2983, i32* %2984, align 4, !tbaa !10
  %2985 = getelementptr inbounds i16, i16* %2967, i64 4
  %2986 = getelementptr inbounds i16, i16* %2969, i64 4
  %2987 = getelementptr inbounds i16, i16* %2968, i64 4
  %2988 = bitcast i16* %2986 to i32*
  %2989 = load i32, i32* %2988, align 4, !tbaa !10
  %2990 = bitcast i16* %2987 to i32*
  %2991 = load i32, i32* %2990, align 4, !tbaa !10
  %2992 = add i32 %2991, %2989
  %2993 = bitcast i16* %2985 to i32*
  store i32 %2992, i32* %2993, align 4, !tbaa !10
  %2994 = getelementptr inbounds i16, i16* %2967, i64 6
  %2995 = getelementptr inbounds i16, i16* %2969, i64 6
  %2996 = getelementptr inbounds i16, i16* %2968, i64 6
  %2997 = bitcast i16* %2995 to i32*
  %2998 = load i32, i32* %2997, align 4, !tbaa !10
  %2999 = bitcast i16* %2996 to i32*
  %3000 = load i32, i32* %2999, align 4, !tbaa !10
  %3001 = add i32 %3000, %2998
  %3002 = bitcast i16* %2994 to i32*
  store i32 %3001, i32* %3002, align 4, !tbaa !10
  %3003 = add nuw nsw i32 %2966, 4
  %3004 = getelementptr inbounds i16, i16* %2967, i64 8
  %3005 = getelementptr inbounds i16, i16* %2969, i64 8
  %3006 = getelementptr inbounds i16, i16* %2968, i64 8
  %3007 = icmp eq i32 %3003, 545
  br i1 %3007, label %3008, label %2965, !llvm.loop !339

3008:                                             ; preds = %2965, %2964
  %3009 = getelementptr inbounds i16, i16* %2239, i64 2192
  %3010 = getelementptr inbounds i16, i16* %2626, i64 3288
  %3011 = icmp ult i16* %500, %505
  %3012 = icmp ult i16* %504, %501
  %3013 = and i1 %3011, %3012
  %3014 = icmp ult i16* %500, %507
  %3015 = icmp ult i16* %506, %501
  %3016 = and i1 %3014, %3015
  %3017 = or i1 %3013, %3016
  br i1 %3017, label %3069, label %3018

3018:                                             ; preds = %3008
  %3019 = getelementptr i16, i16* %3010, i64 1088
  %3020 = getelementptr i16, i16* %3009, i64 1088
  %3021 = getelementptr i16, i16* %2239, i64 1088
  br label %3022

3022:                                             ; preds = %3022, %3018
  %3023 = phi i64 [ 0, %3018 ], [ %3067, %3022 ]
  %3024 = shl nuw i64 %3023, 1
  %3025 = getelementptr i16, i16* %3010, i64 %3024
  %3026 = shl nuw i64 %3023, 1
  %3027 = getelementptr i16, i16* %3009, i64 %3026
  %3028 = shl nuw i64 %3023, 1
  %3029 = getelementptr i16, i16* %2239, i64 %3028
  %3030 = bitcast i16* %3029 to <4 x i32>*
  %3031 = load <4 x i32>, <4 x i32>* %3030, align 4, !tbaa !10, !alias.scope !340
  %3032 = getelementptr i16, i16* %3029, i64 8
  %3033 = bitcast i16* %3032 to <4 x i32>*
  %3034 = load <4 x i32>, <4 x i32>* %3033, align 4, !tbaa !10, !alias.scope !340
  %3035 = bitcast i16* %3027 to <4 x i32>*
  %3036 = load <4 x i32>, <4 x i32>* %3035, align 4, !tbaa !10, !alias.scope !343
  %3037 = getelementptr i16, i16* %3027, i64 8
  %3038 = bitcast i16* %3037 to <4 x i32>*
  %3039 = load <4 x i32>, <4 x i32>* %3038, align 4, !tbaa !10, !alias.scope !343
  %3040 = add <4 x i32> %3036, %3031
  %3041 = add <4 x i32> %3039, %3034
  %3042 = bitcast i16* %3025 to <4 x i32>*
  store <4 x i32> %3040, <4 x i32>* %3042, align 4, !tbaa !10, !alias.scope !345, !noalias !347
  %3043 = getelementptr i16, i16* %3025, i64 8
  %3044 = bitcast i16* %3043 to <4 x i32>*
  store <4 x i32> %3041, <4 x i32>* %3044, align 4, !tbaa !10, !alias.scope !345, !noalias !347
  %3045 = or i64 %3023, 8
  %3046 = shl nuw i64 %3045, 1
  %3047 = getelementptr i16, i16* %3010, i64 %3046
  %3048 = shl nuw i64 %3045, 1
  %3049 = getelementptr i16, i16* %3009, i64 %3048
  %3050 = shl nuw i64 %3045, 1
  %3051 = getelementptr i16, i16* %2239, i64 %3050
  %3052 = bitcast i16* %3051 to <4 x i32>*
  %3053 = load <4 x i32>, <4 x i32>* %3052, align 4, !tbaa !10, !alias.scope !340
  %3054 = getelementptr i16, i16* %3051, i64 8
  %3055 = bitcast i16* %3054 to <4 x i32>*
  %3056 = load <4 x i32>, <4 x i32>* %3055, align 4, !tbaa !10, !alias.scope !340
  %3057 = bitcast i16* %3049 to <4 x i32>*
  %3058 = load <4 x i32>, <4 x i32>* %3057, align 4, !tbaa !10, !alias.scope !343
  %3059 = getelementptr i16, i16* %3049, i64 8
  %3060 = bitcast i16* %3059 to <4 x i32>*
  %3061 = load <4 x i32>, <4 x i32>* %3060, align 4, !tbaa !10, !alias.scope !343
  %3062 = add <4 x i32> %3058, %3053
  %3063 = add <4 x i32> %3061, %3056
  %3064 = bitcast i16* %3047 to <4 x i32>*
  store <4 x i32> %3062, <4 x i32>* %3064, align 4, !tbaa !10, !alias.scope !345, !noalias !347
  %3065 = getelementptr i16, i16* %3047, i64 8
  %3066 = bitcast i16* %3065 to <4 x i32>*
  store <4 x i32> %3063, <4 x i32>* %3066, align 4, !tbaa !10, !alias.scope !345, !noalias !347
  %3067 = add nuw nsw i64 %3023, 16
  %3068 = icmp eq i64 %3067, 544
  br i1 %3068, label %3069, label %3022, !llvm.loop !348

3069:                                             ; preds = %3008, %3022
  %3070 = phi i32 [ 0, %3008 ], [ 544, %3022 ]
  %3071 = phi i16* [ %3010, %3008 ], [ %3019, %3022 ]
  %3072 = phi i16* [ %3009, %3008 ], [ %3020, %3022 ]
  %3073 = phi i16* [ %2239, %3008 ], [ %3021, %3022 ]
  br label %3074

3074:                                             ; preds = %3074, %3069
  %3075 = phi i32 [ %3086, %3074 ], [ %3070, %3069 ]
  %3076 = phi i16* [ %3087, %3074 ], [ %3071, %3069 ]
  %3077 = phi i16* [ %3089, %3074 ], [ %3072, %3069 ]
  %3078 = phi i16* [ %3088, %3074 ], [ %3073, %3069 ]
  %3079 = phi i32 [ %3090, %3074 ], [ 0, %3069 ]
  %3080 = bitcast i16* %3078 to i32*
  %3081 = load i32, i32* %3080, align 4, !tbaa !10
  %3082 = bitcast i16* %3077 to i32*
  %3083 = load i32, i32* %3082, align 4, !tbaa !10
  %3084 = add i32 %3083, %3081
  %3085 = bitcast i16* %3076 to i32*
  store i32 %3084, i32* %3085, align 4, !tbaa !10
  %3086 = add nuw nsw i32 %3075, 1
  %3087 = getelementptr inbounds i16, i16* %3076, i64 2
  %3088 = getelementptr inbounds i16, i16* %3078, i64 2
  %3089 = getelementptr inbounds i16, i16* %3077, i64 2
  %3090 = add i32 %3079, 1
  %3091 = icmp eq i32 %3079, 0
  br i1 %3091, label %3092, label %3074, !llvm.loop !349

3092:                                             ; preds = %3074
  br i1 %3017, label %3093, label %3136

3093:                                             ; preds = %3092, %3093
  %3094 = phi i32 [ %3131, %3093 ], [ %3086, %3092 ]
  %3095 = phi i16* [ %3132, %3093 ], [ %3087, %3092 ]
  %3096 = phi i16* [ %3134, %3093 ], [ %3089, %3092 ]
  %3097 = phi i16* [ %3133, %3093 ], [ %3088, %3092 ]
  %3098 = bitcast i16* %3097 to i32*
  %3099 = load i32, i32* %3098, align 4, !tbaa !10
  %3100 = bitcast i16* %3096 to i32*
  %3101 = load i32, i32* %3100, align 4, !tbaa !10
  %3102 = add i32 %3101, %3099
  %3103 = bitcast i16* %3095 to i32*
  store i32 %3102, i32* %3103, align 4, !tbaa !10
  %3104 = getelementptr inbounds i16, i16* %3095, i64 2
  %3105 = getelementptr inbounds i16, i16* %3097, i64 2
  %3106 = getelementptr inbounds i16, i16* %3096, i64 2
  %3107 = bitcast i16* %3105 to i32*
  %3108 = load i32, i32* %3107, align 4, !tbaa !10
  %3109 = bitcast i16* %3106 to i32*
  %3110 = load i32, i32* %3109, align 4, !tbaa !10
  %3111 = add i32 %3110, %3108
  %3112 = bitcast i16* %3104 to i32*
  store i32 %3111, i32* %3112, align 4, !tbaa !10
  %3113 = getelementptr inbounds i16, i16* %3095, i64 4
  %3114 = getelementptr inbounds i16, i16* %3097, i64 4
  %3115 = getelementptr inbounds i16, i16* %3096, i64 4
  %3116 = bitcast i16* %3114 to i32*
  %3117 = load i32, i32* %3116, align 4, !tbaa !10
  %3118 = bitcast i16* %3115 to i32*
  %3119 = load i32, i32* %3118, align 4, !tbaa !10
  %3120 = add i32 %3119, %3117
  %3121 = bitcast i16* %3113 to i32*
  store i32 %3120, i32* %3121, align 4, !tbaa !10
  %3122 = getelementptr inbounds i16, i16* %3095, i64 6
  %3123 = getelementptr inbounds i16, i16* %3097, i64 6
  %3124 = getelementptr inbounds i16, i16* %3096, i64 6
  %3125 = bitcast i16* %3123 to i32*
  %3126 = load i32, i32* %3125, align 4, !tbaa !10
  %3127 = bitcast i16* %3124 to i32*
  %3128 = load i32, i32* %3127, align 4, !tbaa !10
  %3129 = add i32 %3128, %3126
  %3130 = bitcast i16* %3122 to i32*
  store i32 %3129, i32* %3130, align 4, !tbaa !10
  %3131 = add nuw nsw i32 %3094, 4
  %3132 = getelementptr inbounds i16, i16* %3095, i64 8
  %3133 = getelementptr inbounds i16, i16* %3097, i64 8
  %3134 = getelementptr inbounds i16, i16* %3096, i64 8
  %3135 = icmp eq i32 %3131, 545
  br i1 %3135, label %3136, label %3093, !llvm.loop !350

3136:                                             ; preds = %3093, %3092
  %3137 = mul i64 %311, 2192
  %3138 = and i64 %3137, 4294967280
  %3139 = getelementptr inbounds i16, i16* %17, i64 %3138
  %3140 = icmp ult i16* %510, %515
  %3141 = icmp ult i16* %514, %511
  %3142 = and i1 %3140, %3141
  %3143 = icmp ult i16* %510, %517
  %3144 = icmp ult i16* %516, %511
  %3145 = and i1 %3143, %3144
  %3146 = or i1 %3142, %3145
  br i1 %3146, label %3198, label %3147

3147:                                             ; preds = %3136
  %3148 = getelementptr i16, i16* %3139, i64 1088
  %3149 = getelementptr i16, i16* %2882, i64 1088
  %3150 = getelementptr i16, i16* %2626, i64 1088
  br label %3151

3151:                                             ; preds = %3151, %3147
  %3152 = phi i64 [ 0, %3147 ], [ %3196, %3151 ]
  %3153 = shl nuw i64 %3152, 1
  %3154 = getelementptr i16, i16* %3139, i64 %3153
  %3155 = shl nuw i64 %3152, 1
  %3156 = getelementptr i16, i16* %2882, i64 %3155
  %3157 = shl nuw i64 %3152, 1
  %3158 = getelementptr i16, i16* %2626, i64 %3157
  %3159 = bitcast i16* %3158 to <4 x i32>*
  %3160 = load <4 x i32>, <4 x i32>* %3159, align 4, !tbaa !10, !alias.scope !351
  %3161 = getelementptr i16, i16* %3158, i64 8
  %3162 = bitcast i16* %3161 to <4 x i32>*
  %3163 = load <4 x i32>, <4 x i32>* %3162, align 4, !tbaa !10, !alias.scope !351
  %3164 = bitcast i16* %3156 to <4 x i32>*
  %3165 = load <4 x i32>, <4 x i32>* %3164, align 4, !tbaa !10, !alias.scope !354
  %3166 = getelementptr i16, i16* %3156, i64 8
  %3167 = bitcast i16* %3166 to <4 x i32>*
  %3168 = load <4 x i32>, <4 x i32>* %3167, align 4, !tbaa !10, !alias.scope !354
  %3169 = add <4 x i32> %3165, %3160
  %3170 = add <4 x i32> %3168, %3163
  %3171 = bitcast i16* %3154 to <4 x i32>*
  store <4 x i32> %3169, <4 x i32>* %3171, align 4, !tbaa !10, !alias.scope !356, !noalias !358
  %3172 = getelementptr i16, i16* %3154, i64 8
  %3173 = bitcast i16* %3172 to <4 x i32>*
  store <4 x i32> %3170, <4 x i32>* %3173, align 4, !tbaa !10, !alias.scope !356, !noalias !358
  %3174 = or i64 %3152, 8
  %3175 = shl nuw i64 %3174, 1
  %3176 = getelementptr i16, i16* %3139, i64 %3175
  %3177 = shl nuw i64 %3174, 1
  %3178 = getelementptr i16, i16* %2882, i64 %3177
  %3179 = shl nuw i64 %3174, 1
  %3180 = getelementptr i16, i16* %2626, i64 %3179
  %3181 = bitcast i16* %3180 to <4 x i32>*
  %3182 = load <4 x i32>, <4 x i32>* %3181, align 4, !tbaa !10, !alias.scope !351
  %3183 = getelementptr i16, i16* %3180, i64 8
  %3184 = bitcast i16* %3183 to <4 x i32>*
  %3185 = load <4 x i32>, <4 x i32>* %3184, align 4, !tbaa !10, !alias.scope !351
  %3186 = bitcast i16* %3178 to <4 x i32>*
  %3187 = load <4 x i32>, <4 x i32>* %3186, align 4, !tbaa !10, !alias.scope !354
  %3188 = getelementptr i16, i16* %3178, i64 8
  %3189 = bitcast i16* %3188 to <4 x i32>*
  %3190 = load <4 x i32>, <4 x i32>* %3189, align 4, !tbaa !10, !alias.scope !354
  %3191 = add <4 x i32> %3187, %3182
  %3192 = add <4 x i32> %3190, %3185
  %3193 = bitcast i16* %3176 to <4 x i32>*
  store <4 x i32> %3191, <4 x i32>* %3193, align 4, !tbaa !10, !alias.scope !356, !noalias !358
  %3194 = getelementptr i16, i16* %3176, i64 8
  %3195 = bitcast i16* %3194 to <4 x i32>*
  store <4 x i32> %3192, <4 x i32>* %3195, align 4, !tbaa !10, !alias.scope !356, !noalias !358
  %3196 = add nuw nsw i64 %3152, 16
  %3197 = icmp eq i64 %3196, 544
  br i1 %3197, label %3198, label %3151, !llvm.loop !359

3198:                                             ; preds = %3136, %3151
  %3199 = phi i32 [ 0, %3136 ], [ 544, %3151 ]
  %3200 = phi i16* [ %3139, %3136 ], [ %3148, %3151 ]
  %3201 = phi i16* [ %2882, %3136 ], [ %3149, %3151 ]
  %3202 = phi i16* [ %2626, %3136 ], [ %3150, %3151 ]
  br label %3203

3203:                                             ; preds = %3203, %3198
  %3204 = phi i32 [ %3215, %3203 ], [ %3199, %3198 ]
  %3205 = phi i16* [ %3216, %3203 ], [ %3200, %3198 ]
  %3206 = phi i16* [ %3218, %3203 ], [ %3201, %3198 ]
  %3207 = phi i16* [ %3217, %3203 ], [ %3202, %3198 ]
  %3208 = phi i32 [ %3219, %3203 ], [ 0, %3198 ]
  %3209 = bitcast i16* %3207 to i32*
  %3210 = load i32, i32* %3209, align 4, !tbaa !10
  %3211 = bitcast i16* %3206 to i32*
  %3212 = load i32, i32* %3211, align 4, !tbaa !10
  %3213 = add i32 %3212, %3210
  %3214 = bitcast i16* %3205 to i32*
  store i32 %3213, i32* %3214, align 4, !tbaa !10
  %3215 = add nuw nsw i32 %3204, 1
  %3216 = getelementptr inbounds i16, i16* %3205, i64 2
  %3217 = getelementptr inbounds i16, i16* %3207, i64 2
  %3218 = getelementptr inbounds i16, i16* %3206, i64 2
  %3219 = add i32 %3208, 1
  %3220 = icmp eq i32 %3208, 0
  br i1 %3220, label %3221, label %3203, !llvm.loop !360

3221:                                             ; preds = %3203
  br i1 %3146, label %3222, label %3265

3222:                                             ; preds = %3221, %3222
  %3223 = phi i32 [ %3260, %3222 ], [ %3215, %3221 ]
  %3224 = phi i16* [ %3261, %3222 ], [ %3216, %3221 ]
  %3225 = phi i16* [ %3263, %3222 ], [ %3218, %3221 ]
  %3226 = phi i16* [ %3262, %3222 ], [ %3217, %3221 ]
  %3227 = bitcast i16* %3226 to i32*
  %3228 = load i32, i32* %3227, align 4, !tbaa !10
  %3229 = bitcast i16* %3225 to i32*
  %3230 = load i32, i32* %3229, align 4, !tbaa !10
  %3231 = add i32 %3230, %3228
  %3232 = bitcast i16* %3224 to i32*
  store i32 %3231, i32* %3232, align 4, !tbaa !10
  %3233 = getelementptr inbounds i16, i16* %3224, i64 2
  %3234 = getelementptr inbounds i16, i16* %3226, i64 2
  %3235 = getelementptr inbounds i16, i16* %3225, i64 2
  %3236 = bitcast i16* %3234 to i32*
  %3237 = load i32, i32* %3236, align 4, !tbaa !10
  %3238 = bitcast i16* %3235 to i32*
  %3239 = load i32, i32* %3238, align 4, !tbaa !10
  %3240 = add i32 %3239, %3237
  %3241 = bitcast i16* %3233 to i32*
  store i32 %3240, i32* %3241, align 4, !tbaa !10
  %3242 = getelementptr inbounds i16, i16* %3224, i64 4
  %3243 = getelementptr inbounds i16, i16* %3226, i64 4
  %3244 = getelementptr inbounds i16, i16* %3225, i64 4
  %3245 = bitcast i16* %3243 to i32*
  %3246 = load i32, i32* %3245, align 4, !tbaa !10
  %3247 = bitcast i16* %3244 to i32*
  %3248 = load i32, i32* %3247, align 4, !tbaa !10
  %3249 = add i32 %3248, %3246
  %3250 = bitcast i16* %3242 to i32*
  store i32 %3249, i32* %3250, align 4, !tbaa !10
  %3251 = getelementptr inbounds i16, i16* %3224, i64 6
  %3252 = getelementptr inbounds i16, i16* %3226, i64 6
  %3253 = getelementptr inbounds i16, i16* %3225, i64 6
  %3254 = bitcast i16* %3252 to i32*
  %3255 = load i32, i32* %3254, align 4, !tbaa !10
  %3256 = bitcast i16* %3253 to i32*
  %3257 = load i32, i32* %3256, align 4, !tbaa !10
  %3258 = add i32 %3257, %3255
  %3259 = bitcast i16* %3251 to i32*
  store i32 %3258, i32* %3259, align 4, !tbaa !10
  %3260 = add nuw nsw i32 %3223, 4
  %3261 = getelementptr inbounds i16, i16* %3224, i64 8
  %3262 = getelementptr inbounds i16, i16* %3226, i64 8
  %3263 = getelementptr inbounds i16, i16* %3225, i64 8
  %3264 = icmp eq i32 %3260, 545
  br i1 %3264, label %3265, label %3222, !llvm.loop !361

3265:                                             ; preds = %3222, %3221
  %3266 = getelementptr inbounds i16, i16* %2754, i64 2192
  %3267 = getelementptr inbounds i16, i16* %3139, i64 1096
  %3268 = icmp ult i16* %520, %525
  %3269 = icmp ult i16* %524, %521
  %3270 = and i1 %3268, %3269
  %3271 = icmp ult i16* %520, %527
  %3272 = icmp ult i16* %526, %521
  %3273 = and i1 %3271, %3272
  %3274 = or i1 %3270, %3273
  br i1 %3274, label %3326, label %3275

3275:                                             ; preds = %3265
  %3276 = getelementptr i16, i16* %3267, i64 1088
  %3277 = getelementptr i16, i16* %3266, i64 1088
  %3278 = getelementptr i16, i16* %2754, i64 1088
  br label %3279

3279:                                             ; preds = %3279, %3275
  %3280 = phi i64 [ 0, %3275 ], [ %3324, %3279 ]
  %3281 = shl nuw i64 %3280, 1
  %3282 = getelementptr i16, i16* %3267, i64 %3281
  %3283 = shl nuw i64 %3280, 1
  %3284 = getelementptr i16, i16* %3266, i64 %3283
  %3285 = shl nuw i64 %3280, 1
  %3286 = getelementptr i16, i16* %2754, i64 %3285
  %3287 = bitcast i16* %3286 to <4 x i32>*
  %3288 = load <4 x i32>, <4 x i32>* %3287, align 4, !tbaa !10, !alias.scope !362
  %3289 = getelementptr i16, i16* %3286, i64 8
  %3290 = bitcast i16* %3289 to <4 x i32>*
  %3291 = load <4 x i32>, <4 x i32>* %3290, align 4, !tbaa !10, !alias.scope !362
  %3292 = bitcast i16* %3284 to <4 x i32>*
  %3293 = load <4 x i32>, <4 x i32>* %3292, align 4, !tbaa !10, !alias.scope !365
  %3294 = getelementptr i16, i16* %3284, i64 8
  %3295 = bitcast i16* %3294 to <4 x i32>*
  %3296 = load <4 x i32>, <4 x i32>* %3295, align 4, !tbaa !10, !alias.scope !365
  %3297 = add <4 x i32> %3293, %3288
  %3298 = add <4 x i32> %3296, %3291
  %3299 = bitcast i16* %3282 to <4 x i32>*
  store <4 x i32> %3297, <4 x i32>* %3299, align 4, !tbaa !10, !alias.scope !367, !noalias !369
  %3300 = getelementptr i16, i16* %3282, i64 8
  %3301 = bitcast i16* %3300 to <4 x i32>*
  store <4 x i32> %3298, <4 x i32>* %3301, align 4, !tbaa !10, !alias.scope !367, !noalias !369
  %3302 = or i64 %3280, 8
  %3303 = shl nuw i64 %3302, 1
  %3304 = getelementptr i16, i16* %3267, i64 %3303
  %3305 = shl nuw i64 %3302, 1
  %3306 = getelementptr i16, i16* %3266, i64 %3305
  %3307 = shl nuw i64 %3302, 1
  %3308 = getelementptr i16, i16* %2754, i64 %3307
  %3309 = bitcast i16* %3308 to <4 x i32>*
  %3310 = load <4 x i32>, <4 x i32>* %3309, align 4, !tbaa !10, !alias.scope !362
  %3311 = getelementptr i16, i16* %3308, i64 8
  %3312 = bitcast i16* %3311 to <4 x i32>*
  %3313 = load <4 x i32>, <4 x i32>* %3312, align 4, !tbaa !10, !alias.scope !362
  %3314 = bitcast i16* %3306 to <4 x i32>*
  %3315 = load <4 x i32>, <4 x i32>* %3314, align 4, !tbaa !10, !alias.scope !365
  %3316 = getelementptr i16, i16* %3306, i64 8
  %3317 = bitcast i16* %3316 to <4 x i32>*
  %3318 = load <4 x i32>, <4 x i32>* %3317, align 4, !tbaa !10, !alias.scope !365
  %3319 = add <4 x i32> %3315, %3310
  %3320 = add <4 x i32> %3318, %3313
  %3321 = bitcast i16* %3304 to <4 x i32>*
  store <4 x i32> %3319, <4 x i32>* %3321, align 4, !tbaa !10, !alias.scope !367, !noalias !369
  %3322 = getelementptr i16, i16* %3304, i64 8
  %3323 = bitcast i16* %3322 to <4 x i32>*
  store <4 x i32> %3320, <4 x i32>* %3323, align 4, !tbaa !10, !alias.scope !367, !noalias !369
  %3324 = add nuw nsw i64 %3280, 16
  %3325 = icmp eq i64 %3324, 544
  br i1 %3325, label %3326, label %3279, !llvm.loop !370

3326:                                             ; preds = %3265, %3279
  %3327 = phi i32 [ 0, %3265 ], [ 544, %3279 ]
  %3328 = phi i16* [ %3267, %3265 ], [ %3276, %3279 ]
  %3329 = phi i16* [ %3266, %3265 ], [ %3277, %3279 ]
  %3330 = phi i16* [ %2754, %3265 ], [ %3278, %3279 ]
  br label %3331

3331:                                             ; preds = %3331, %3326
  %3332 = phi i32 [ %3343, %3331 ], [ %3327, %3326 ]
  %3333 = phi i16* [ %3344, %3331 ], [ %3328, %3326 ]
  %3334 = phi i16* [ %3346, %3331 ], [ %3329, %3326 ]
  %3335 = phi i16* [ %3345, %3331 ], [ %3330, %3326 ]
  %3336 = phi i32 [ %3347, %3331 ], [ 0, %3326 ]
  %3337 = bitcast i16* %3335 to i32*
  %3338 = load i32, i32* %3337, align 4, !tbaa !10
  %3339 = bitcast i16* %3334 to i32*
  %3340 = load i32, i32* %3339, align 4, !tbaa !10
  %3341 = add i32 %3340, %3338
  %3342 = bitcast i16* %3333 to i32*
  store i32 %3341, i32* %3342, align 4, !tbaa !10
  %3343 = add nuw nsw i32 %3332, 1
  %3344 = getelementptr inbounds i16, i16* %3333, i64 2
  %3345 = getelementptr inbounds i16, i16* %3335, i64 2
  %3346 = getelementptr inbounds i16, i16* %3334, i64 2
  %3347 = add i32 %3336, 1
  %3348 = icmp eq i32 %3336, 0
  br i1 %3348, label %3349, label %3331, !llvm.loop !371

3349:                                             ; preds = %3331
  br i1 %3274, label %3350, label %3393

3350:                                             ; preds = %3349, %3350
  %3351 = phi i32 [ %3388, %3350 ], [ %3343, %3349 ]
  %3352 = phi i16* [ %3389, %3350 ], [ %3344, %3349 ]
  %3353 = phi i16* [ %3391, %3350 ], [ %3346, %3349 ]
  %3354 = phi i16* [ %3390, %3350 ], [ %3345, %3349 ]
  %3355 = bitcast i16* %3354 to i32*
  %3356 = load i32, i32* %3355, align 4, !tbaa !10
  %3357 = bitcast i16* %3353 to i32*
  %3358 = load i32, i32* %3357, align 4, !tbaa !10
  %3359 = add i32 %3358, %3356
  %3360 = bitcast i16* %3352 to i32*
  store i32 %3359, i32* %3360, align 4, !tbaa !10
  %3361 = getelementptr inbounds i16, i16* %3352, i64 2
  %3362 = getelementptr inbounds i16, i16* %3354, i64 2
  %3363 = getelementptr inbounds i16, i16* %3353, i64 2
  %3364 = bitcast i16* %3362 to i32*
  %3365 = load i32, i32* %3364, align 4, !tbaa !10
  %3366 = bitcast i16* %3363 to i32*
  %3367 = load i32, i32* %3366, align 4, !tbaa !10
  %3368 = add i32 %3367, %3365
  %3369 = bitcast i16* %3361 to i32*
  store i32 %3368, i32* %3369, align 4, !tbaa !10
  %3370 = getelementptr inbounds i16, i16* %3352, i64 4
  %3371 = getelementptr inbounds i16, i16* %3354, i64 4
  %3372 = getelementptr inbounds i16, i16* %3353, i64 4
  %3373 = bitcast i16* %3371 to i32*
  %3374 = load i32, i32* %3373, align 4, !tbaa !10
  %3375 = bitcast i16* %3372 to i32*
  %3376 = load i32, i32* %3375, align 4, !tbaa !10
  %3377 = add i32 %3376, %3374
  %3378 = bitcast i16* %3370 to i32*
  store i32 %3377, i32* %3378, align 4, !tbaa !10
  %3379 = getelementptr inbounds i16, i16* %3352, i64 6
  %3380 = getelementptr inbounds i16, i16* %3354, i64 6
  %3381 = getelementptr inbounds i16, i16* %3353, i64 6
  %3382 = bitcast i16* %3380 to i32*
  %3383 = load i32, i32* %3382, align 4, !tbaa !10
  %3384 = bitcast i16* %3381 to i32*
  %3385 = load i32, i32* %3384, align 4, !tbaa !10
  %3386 = add i32 %3385, %3383
  %3387 = bitcast i16* %3379 to i32*
  store i32 %3386, i32* %3387, align 4, !tbaa !10
  %3388 = add nuw nsw i32 %3351, 4
  %3389 = getelementptr inbounds i16, i16* %3352, i64 8
  %3390 = getelementptr inbounds i16, i16* %3354, i64 8
  %3391 = getelementptr inbounds i16, i16* %3353, i64 8
  %3392 = icmp eq i32 %3388, 545
  br i1 %3392, label %3393, label %3350, !llvm.loop !372

3393:                                             ; preds = %3350, %3349
  %3394 = getelementptr inbounds i16, i16* %20, i64 %3138
  %3395 = icmp ult i16* %530, %535
  %3396 = icmp ult i16* %534, %531
  %3397 = and i1 %3395, %3396
  %3398 = icmp ult i16* %530, %537
  %3399 = icmp ult i16* %536, %531
  %3400 = and i1 %3398, %3399
  %3401 = or i1 %3397, %3400
  br i1 %3401, label %3453, label %3402

3402:                                             ; preds = %3393
  %3403 = getelementptr i16, i16* %3394, i64 1088
  %3404 = getelementptr i16, i16* %2754, i64 1088
  %3405 = getelementptr i16, i16* %2626, i64 1088
  br label %3406

3406:                                             ; preds = %3406, %3402
  %3407 = phi i64 [ 0, %3402 ], [ %3451, %3406 ]
  %3408 = shl nuw i64 %3407, 1
  %3409 = getelementptr i16, i16* %3394, i64 %3408
  %3410 = shl nuw i64 %3407, 1
  %3411 = getelementptr i16, i16* %2754, i64 %3410
  %3412 = shl nuw i64 %3407, 1
  %3413 = getelementptr i16, i16* %2626, i64 %3412
  %3414 = bitcast i16* %3413 to <4 x i32>*
  %3415 = load <4 x i32>, <4 x i32>* %3414, align 4, !tbaa !10, !alias.scope !373
  %3416 = getelementptr i16, i16* %3413, i64 8
  %3417 = bitcast i16* %3416 to <4 x i32>*
  %3418 = load <4 x i32>, <4 x i32>* %3417, align 4, !tbaa !10, !alias.scope !373
  %3419 = bitcast i16* %3411 to <4 x i32>*
  %3420 = load <4 x i32>, <4 x i32>* %3419, align 4, !tbaa !10, !alias.scope !376
  %3421 = getelementptr i16, i16* %3411, i64 8
  %3422 = bitcast i16* %3421 to <4 x i32>*
  %3423 = load <4 x i32>, <4 x i32>* %3422, align 4, !tbaa !10, !alias.scope !376
  %3424 = add <4 x i32> %3420, %3415
  %3425 = add <4 x i32> %3423, %3418
  %3426 = bitcast i16* %3409 to <4 x i32>*
  store <4 x i32> %3424, <4 x i32>* %3426, align 4, !tbaa !10, !alias.scope !378, !noalias !380
  %3427 = getelementptr i16, i16* %3409, i64 8
  %3428 = bitcast i16* %3427 to <4 x i32>*
  store <4 x i32> %3425, <4 x i32>* %3428, align 4, !tbaa !10, !alias.scope !378, !noalias !380
  %3429 = or i64 %3407, 8
  %3430 = shl nuw i64 %3429, 1
  %3431 = getelementptr i16, i16* %3394, i64 %3430
  %3432 = shl nuw i64 %3429, 1
  %3433 = getelementptr i16, i16* %2754, i64 %3432
  %3434 = shl nuw i64 %3429, 1
  %3435 = getelementptr i16, i16* %2626, i64 %3434
  %3436 = bitcast i16* %3435 to <4 x i32>*
  %3437 = load <4 x i32>, <4 x i32>* %3436, align 4, !tbaa !10, !alias.scope !373
  %3438 = getelementptr i16, i16* %3435, i64 8
  %3439 = bitcast i16* %3438 to <4 x i32>*
  %3440 = load <4 x i32>, <4 x i32>* %3439, align 4, !tbaa !10, !alias.scope !373
  %3441 = bitcast i16* %3433 to <4 x i32>*
  %3442 = load <4 x i32>, <4 x i32>* %3441, align 4, !tbaa !10, !alias.scope !376
  %3443 = getelementptr i16, i16* %3433, i64 8
  %3444 = bitcast i16* %3443 to <4 x i32>*
  %3445 = load <4 x i32>, <4 x i32>* %3444, align 4, !tbaa !10, !alias.scope !376
  %3446 = add <4 x i32> %3442, %3437
  %3447 = add <4 x i32> %3445, %3440
  %3448 = bitcast i16* %3431 to <4 x i32>*
  store <4 x i32> %3446, <4 x i32>* %3448, align 4, !tbaa !10, !alias.scope !378, !noalias !380
  %3449 = getelementptr i16, i16* %3431, i64 8
  %3450 = bitcast i16* %3449 to <4 x i32>*
  store <4 x i32> %3447, <4 x i32>* %3450, align 4, !tbaa !10, !alias.scope !378, !noalias !380
  %3451 = add nuw nsw i64 %3407, 16
  %3452 = icmp eq i64 %3451, 544
  br i1 %3452, label %3453, label %3406, !llvm.loop !381

3453:                                             ; preds = %3393, %3406
  %3454 = phi i32 [ 0, %3393 ], [ 544, %3406 ]
  %3455 = phi i16* [ %3394, %3393 ], [ %3403, %3406 ]
  %3456 = phi i16* [ %2754, %3393 ], [ %3404, %3406 ]
  %3457 = phi i16* [ %2626, %3393 ], [ %3405, %3406 ]
  br label %3458

3458:                                             ; preds = %3458, %3453
  %3459 = phi i32 [ %3470, %3458 ], [ %3454, %3453 ]
  %3460 = phi i16* [ %3471, %3458 ], [ %3455, %3453 ]
  %3461 = phi i16* [ %3473, %3458 ], [ %3456, %3453 ]
  %3462 = phi i16* [ %3472, %3458 ], [ %3457, %3453 ]
  %3463 = phi i32 [ %3474, %3458 ], [ 0, %3453 ]
  %3464 = bitcast i16* %3462 to i32*
  %3465 = load i32, i32* %3464, align 4, !tbaa !10
  %3466 = bitcast i16* %3461 to i32*
  %3467 = load i32, i32* %3466, align 4, !tbaa !10
  %3468 = add i32 %3467, %3465
  %3469 = bitcast i16* %3460 to i32*
  store i32 %3468, i32* %3469, align 4, !tbaa !10
  %3470 = add nuw nsw i32 %3459, 1
  %3471 = getelementptr inbounds i16, i16* %3460, i64 2
  %3472 = getelementptr inbounds i16, i16* %3462, i64 2
  %3473 = getelementptr inbounds i16, i16* %3461, i64 2
  %3474 = add i32 %3463, 1
  %3475 = icmp eq i32 %3463, 0
  br i1 %3475, label %3476, label %3458, !llvm.loop !382

3476:                                             ; preds = %3458
  br i1 %3401, label %3477, label %3520

3477:                                             ; preds = %3476, %3477
  %3478 = phi i32 [ %3515, %3477 ], [ %3470, %3476 ]
  %3479 = phi i16* [ %3516, %3477 ], [ %3471, %3476 ]
  %3480 = phi i16* [ %3518, %3477 ], [ %3473, %3476 ]
  %3481 = phi i16* [ %3517, %3477 ], [ %3472, %3476 ]
  %3482 = bitcast i16* %3481 to i32*
  %3483 = load i32, i32* %3482, align 4, !tbaa !10
  %3484 = bitcast i16* %3480 to i32*
  %3485 = load i32, i32* %3484, align 4, !tbaa !10
  %3486 = add i32 %3485, %3483
  %3487 = bitcast i16* %3479 to i32*
  store i32 %3486, i32* %3487, align 4, !tbaa !10
  %3488 = getelementptr inbounds i16, i16* %3479, i64 2
  %3489 = getelementptr inbounds i16, i16* %3481, i64 2
  %3490 = getelementptr inbounds i16, i16* %3480, i64 2
  %3491 = bitcast i16* %3489 to i32*
  %3492 = load i32, i32* %3491, align 4, !tbaa !10
  %3493 = bitcast i16* %3490 to i32*
  %3494 = load i32, i32* %3493, align 4, !tbaa !10
  %3495 = add i32 %3494, %3492
  %3496 = bitcast i16* %3488 to i32*
  store i32 %3495, i32* %3496, align 4, !tbaa !10
  %3497 = getelementptr inbounds i16, i16* %3479, i64 4
  %3498 = getelementptr inbounds i16, i16* %3481, i64 4
  %3499 = getelementptr inbounds i16, i16* %3480, i64 4
  %3500 = bitcast i16* %3498 to i32*
  %3501 = load i32, i32* %3500, align 4, !tbaa !10
  %3502 = bitcast i16* %3499 to i32*
  %3503 = load i32, i32* %3502, align 4, !tbaa !10
  %3504 = add i32 %3503, %3501
  %3505 = bitcast i16* %3497 to i32*
  store i32 %3504, i32* %3505, align 4, !tbaa !10
  %3506 = getelementptr inbounds i16, i16* %3479, i64 6
  %3507 = getelementptr inbounds i16, i16* %3481, i64 6
  %3508 = getelementptr inbounds i16, i16* %3480, i64 6
  %3509 = bitcast i16* %3507 to i32*
  %3510 = load i32, i32* %3509, align 4, !tbaa !10
  %3511 = bitcast i16* %3508 to i32*
  %3512 = load i32, i32* %3511, align 4, !tbaa !10
  %3513 = add i32 %3512, %3510
  %3514 = bitcast i16* %3506 to i32*
  store i32 %3513, i32* %3514, align 4, !tbaa !10
  %3515 = add nuw nsw i32 %3478, 4
  %3516 = getelementptr inbounds i16, i16* %3479, i64 8
  %3517 = getelementptr inbounds i16, i16* %3481, i64 8
  %3518 = getelementptr inbounds i16, i16* %3480, i64 8
  %3519 = icmp eq i32 %3515, 545
  br i1 %3519, label %3520, label %3477, !llvm.loop !383

3520:                                             ; preds = %3477, %3476
  %3521 = getelementptr inbounds i16, i16* %2882, i64 1096
  %3522 = getelementptr inbounds i16, i16* %3394, i64 1096
  %3523 = icmp ult i16* %540, %545
  %3524 = icmp ult i16* %544, %541
  %3525 = and i1 %3523, %3524
  %3526 = icmp ult i16* %540, %547
  %3527 = icmp ult i16* %546, %541
  %3528 = and i1 %3526, %3527
  %3529 = or i1 %3525, %3528
  br i1 %3529, label %3581, label %3530

3530:                                             ; preds = %3520
  %3531 = getelementptr i16, i16* %3522, i64 1088
  %3532 = getelementptr i16, i16* %3521, i64 1088
  %3533 = getelementptr i16, i16* %2882, i64 1088
  br label %3534

3534:                                             ; preds = %3534, %3530
  %3535 = phi i64 [ 0, %3530 ], [ %3579, %3534 ]
  %3536 = shl nuw i64 %3535, 1
  %3537 = getelementptr i16, i16* %3522, i64 %3536
  %3538 = shl nuw i64 %3535, 1
  %3539 = getelementptr i16, i16* %3521, i64 %3538
  %3540 = shl nuw i64 %3535, 1
  %3541 = getelementptr i16, i16* %2882, i64 %3540
  %3542 = bitcast i16* %3541 to <4 x i32>*
  %3543 = load <4 x i32>, <4 x i32>* %3542, align 4, !tbaa !10, !alias.scope !384
  %3544 = getelementptr i16, i16* %3541, i64 8
  %3545 = bitcast i16* %3544 to <4 x i32>*
  %3546 = load <4 x i32>, <4 x i32>* %3545, align 4, !tbaa !10, !alias.scope !384
  %3547 = bitcast i16* %3539 to <4 x i32>*
  %3548 = load <4 x i32>, <4 x i32>* %3547, align 4, !tbaa !10, !alias.scope !387
  %3549 = getelementptr i16, i16* %3539, i64 8
  %3550 = bitcast i16* %3549 to <4 x i32>*
  %3551 = load <4 x i32>, <4 x i32>* %3550, align 4, !tbaa !10, !alias.scope !387
  %3552 = add <4 x i32> %3548, %3543
  %3553 = add <4 x i32> %3551, %3546
  %3554 = bitcast i16* %3537 to <4 x i32>*
  store <4 x i32> %3552, <4 x i32>* %3554, align 4, !tbaa !10, !alias.scope !389, !noalias !391
  %3555 = getelementptr i16, i16* %3537, i64 8
  %3556 = bitcast i16* %3555 to <4 x i32>*
  store <4 x i32> %3553, <4 x i32>* %3556, align 4, !tbaa !10, !alias.scope !389, !noalias !391
  %3557 = or i64 %3535, 8
  %3558 = shl nuw i64 %3557, 1
  %3559 = getelementptr i16, i16* %3522, i64 %3558
  %3560 = shl nuw i64 %3557, 1
  %3561 = getelementptr i16, i16* %3521, i64 %3560
  %3562 = shl nuw i64 %3557, 1
  %3563 = getelementptr i16, i16* %2882, i64 %3562
  %3564 = bitcast i16* %3563 to <4 x i32>*
  %3565 = load <4 x i32>, <4 x i32>* %3564, align 4, !tbaa !10, !alias.scope !384
  %3566 = getelementptr i16, i16* %3563, i64 8
  %3567 = bitcast i16* %3566 to <4 x i32>*
  %3568 = load <4 x i32>, <4 x i32>* %3567, align 4, !tbaa !10, !alias.scope !384
  %3569 = bitcast i16* %3561 to <4 x i32>*
  %3570 = load <4 x i32>, <4 x i32>* %3569, align 4, !tbaa !10, !alias.scope !387
  %3571 = getelementptr i16, i16* %3561, i64 8
  %3572 = bitcast i16* %3571 to <4 x i32>*
  %3573 = load <4 x i32>, <4 x i32>* %3572, align 4, !tbaa !10, !alias.scope !387
  %3574 = add <4 x i32> %3570, %3565
  %3575 = add <4 x i32> %3573, %3568
  %3576 = bitcast i16* %3559 to <4 x i32>*
  store <4 x i32> %3574, <4 x i32>* %3576, align 4, !tbaa !10, !alias.scope !389, !noalias !391
  %3577 = getelementptr i16, i16* %3559, i64 8
  %3578 = bitcast i16* %3577 to <4 x i32>*
  store <4 x i32> %3575, <4 x i32>* %3578, align 4, !tbaa !10, !alias.scope !389, !noalias !391
  %3579 = add nuw nsw i64 %3535, 16
  %3580 = icmp eq i64 %3579, 544
  br i1 %3580, label %3581, label %3534, !llvm.loop !392

3581:                                             ; preds = %3520, %3534
  %3582 = phi i32 [ 0, %3520 ], [ 544, %3534 ]
  %3583 = phi i16* [ %3522, %3520 ], [ %3531, %3534 ]
  %3584 = phi i16* [ %3521, %3520 ], [ %3532, %3534 ]
  %3585 = phi i16* [ %2882, %3520 ], [ %3533, %3534 ]
  br label %3586

3586:                                             ; preds = %3586, %3581
  %3587 = phi i32 [ %3598, %3586 ], [ %3582, %3581 ]
  %3588 = phi i16* [ %3599, %3586 ], [ %3583, %3581 ]
  %3589 = phi i16* [ %3601, %3586 ], [ %3584, %3581 ]
  %3590 = phi i16* [ %3600, %3586 ], [ %3585, %3581 ]
  %3591 = phi i32 [ %3602, %3586 ], [ 0, %3581 ]
  %3592 = bitcast i16* %3590 to i32*
  %3593 = load i32, i32* %3592, align 4, !tbaa !10
  %3594 = bitcast i16* %3589 to i32*
  %3595 = load i32, i32* %3594, align 4, !tbaa !10
  %3596 = add i32 %3595, %3593
  %3597 = bitcast i16* %3588 to i32*
  store i32 %3596, i32* %3597, align 4, !tbaa !10
  %3598 = add nuw nsw i32 %3587, 1
  %3599 = getelementptr inbounds i16, i16* %3588, i64 2
  %3600 = getelementptr inbounds i16, i16* %3590, i64 2
  %3601 = getelementptr inbounds i16, i16* %3589, i64 2
  %3602 = add i32 %3591, 1
  %3603 = icmp eq i32 %3591, 0
  br i1 %3603, label %3604, label %3586, !llvm.loop !393

3604:                                             ; preds = %3586
  br i1 %3529, label %3605, label %3648

3605:                                             ; preds = %3604, %3605
  %3606 = phi i32 [ %3643, %3605 ], [ %3598, %3604 ]
  %3607 = phi i16* [ %3644, %3605 ], [ %3599, %3604 ]
  %3608 = phi i16* [ %3646, %3605 ], [ %3601, %3604 ]
  %3609 = phi i16* [ %3645, %3605 ], [ %3600, %3604 ]
  %3610 = bitcast i16* %3609 to i32*
  %3611 = load i32, i32* %3610, align 4, !tbaa !10
  %3612 = bitcast i16* %3608 to i32*
  %3613 = load i32, i32* %3612, align 4, !tbaa !10
  %3614 = add i32 %3613, %3611
  %3615 = bitcast i16* %3607 to i32*
  store i32 %3614, i32* %3615, align 4, !tbaa !10
  %3616 = getelementptr inbounds i16, i16* %3607, i64 2
  %3617 = getelementptr inbounds i16, i16* %3609, i64 2
  %3618 = getelementptr inbounds i16, i16* %3608, i64 2
  %3619 = bitcast i16* %3617 to i32*
  %3620 = load i32, i32* %3619, align 4, !tbaa !10
  %3621 = bitcast i16* %3618 to i32*
  %3622 = load i32, i32* %3621, align 4, !tbaa !10
  %3623 = add i32 %3622, %3620
  %3624 = bitcast i16* %3616 to i32*
  store i32 %3623, i32* %3624, align 4, !tbaa !10
  %3625 = getelementptr inbounds i16, i16* %3607, i64 4
  %3626 = getelementptr inbounds i16, i16* %3609, i64 4
  %3627 = getelementptr inbounds i16, i16* %3608, i64 4
  %3628 = bitcast i16* %3626 to i32*
  %3629 = load i32, i32* %3628, align 4, !tbaa !10
  %3630 = bitcast i16* %3627 to i32*
  %3631 = load i32, i32* %3630, align 4, !tbaa !10
  %3632 = add i32 %3631, %3629
  %3633 = bitcast i16* %3625 to i32*
  store i32 %3632, i32* %3633, align 4, !tbaa !10
  %3634 = getelementptr inbounds i16, i16* %3607, i64 6
  %3635 = getelementptr inbounds i16, i16* %3609, i64 6
  %3636 = getelementptr inbounds i16, i16* %3608, i64 6
  %3637 = bitcast i16* %3635 to i32*
  %3638 = load i32, i32* %3637, align 4, !tbaa !10
  %3639 = bitcast i16* %3636 to i32*
  %3640 = load i32, i32* %3639, align 4, !tbaa !10
  %3641 = add i32 %3640, %3638
  %3642 = bitcast i16* %3634 to i32*
  store i32 %3641, i32* %3642, align 4, !tbaa !10
  %3643 = add nuw nsw i32 %3606, 4
  %3644 = getelementptr inbounds i16, i16* %3607, i64 8
  %3645 = getelementptr inbounds i16, i16* %3609, i64 8
  %3646 = getelementptr inbounds i16, i16* %3608, i64 8
  %3647 = icmp eq i32 %3643, 545
  br i1 %3647, label %3648, label %3605, !llvm.loop !394

3648:                                             ; preds = %3605, %3604
  %3649 = mul i64 %311, 1096
  %3650 = and i64 %3649, 4294967288
  %3651 = getelementptr inbounds i16, i16* %0, i64 %3650
  %3652 = icmp ult i16* %550, %555
  %3653 = icmp ult i16* %554, %551
  %3654 = and i1 %3652, %3653
  %3655 = icmp ult i16* %550, %557
  %3656 = icmp ult i16* %556, %551
  %3657 = and i1 %3655, %3656
  %3658 = or i1 %3654, %3657
  br i1 %3658, label %3710, label %3659

3659:                                             ; preds = %3648
  %3660 = getelementptr i16, i16* %3651, i64 1088
  %3661 = getelementptr i16, i16* %3522, i64 1088
  %3662 = getelementptr i16, i16* %3394, i64 1088
  br label %3663

3663:                                             ; preds = %3663, %3659
  %3664 = phi i64 [ 0, %3659 ], [ %3708, %3663 ]
  %3665 = shl nuw i64 %3664, 1
  %3666 = getelementptr i16, i16* %3651, i64 %3665
  %3667 = shl nuw i64 %3664, 1
  %3668 = getelementptr i16, i16* %3522, i64 %3667
  %3669 = shl nuw i64 %3664, 1
  %3670 = getelementptr i16, i16* %3394, i64 %3669
  %3671 = bitcast i16* %3670 to <4 x i32>*
  %3672 = load <4 x i32>, <4 x i32>* %3671, align 4, !tbaa !10, !alias.scope !395
  %3673 = getelementptr i16, i16* %3670, i64 8
  %3674 = bitcast i16* %3673 to <4 x i32>*
  %3675 = load <4 x i32>, <4 x i32>* %3674, align 4, !tbaa !10, !alias.scope !395
  %3676 = bitcast i16* %3668 to <4 x i32>*
  %3677 = load <4 x i32>, <4 x i32>* %3676, align 4, !tbaa !10, !alias.scope !398
  %3678 = getelementptr i16, i16* %3668, i64 8
  %3679 = bitcast i16* %3678 to <4 x i32>*
  %3680 = load <4 x i32>, <4 x i32>* %3679, align 4, !tbaa !10, !alias.scope !398
  %3681 = add <4 x i32> %3677, %3672
  %3682 = add <4 x i32> %3680, %3675
  %3683 = bitcast i16* %3666 to <4 x i32>*
  store <4 x i32> %3681, <4 x i32>* %3683, align 4, !tbaa !10, !alias.scope !400, !noalias !402
  %3684 = getelementptr i16, i16* %3666, i64 8
  %3685 = bitcast i16* %3684 to <4 x i32>*
  store <4 x i32> %3682, <4 x i32>* %3685, align 4, !tbaa !10, !alias.scope !400, !noalias !402
  %3686 = or i64 %3664, 8
  %3687 = shl nuw i64 %3686, 1
  %3688 = getelementptr i16, i16* %3651, i64 %3687
  %3689 = shl nuw i64 %3686, 1
  %3690 = getelementptr i16, i16* %3522, i64 %3689
  %3691 = shl nuw i64 %3686, 1
  %3692 = getelementptr i16, i16* %3394, i64 %3691
  %3693 = bitcast i16* %3692 to <4 x i32>*
  %3694 = load <4 x i32>, <4 x i32>* %3693, align 4, !tbaa !10, !alias.scope !395
  %3695 = getelementptr i16, i16* %3692, i64 8
  %3696 = bitcast i16* %3695 to <4 x i32>*
  %3697 = load <4 x i32>, <4 x i32>* %3696, align 4, !tbaa !10, !alias.scope !395
  %3698 = bitcast i16* %3690 to <4 x i32>*
  %3699 = load <4 x i32>, <4 x i32>* %3698, align 4, !tbaa !10, !alias.scope !398
  %3700 = getelementptr i16, i16* %3690, i64 8
  %3701 = bitcast i16* %3700 to <4 x i32>*
  %3702 = load <4 x i32>, <4 x i32>* %3701, align 4, !tbaa !10, !alias.scope !398
  %3703 = add <4 x i32> %3699, %3694
  %3704 = add <4 x i32> %3702, %3697
  %3705 = bitcast i16* %3688 to <4 x i32>*
  store <4 x i32> %3703, <4 x i32>* %3705, align 4, !tbaa !10, !alias.scope !400, !noalias !402
  %3706 = getelementptr i16, i16* %3688, i64 8
  %3707 = bitcast i16* %3706 to <4 x i32>*
  store <4 x i32> %3704, <4 x i32>* %3707, align 4, !tbaa !10, !alias.scope !400, !noalias !402
  %3708 = add nuw nsw i64 %3664, 16
  %3709 = icmp eq i64 %3708, 544
  br i1 %3709, label %3710, label %3663, !llvm.loop !403

3710:                                             ; preds = %3648, %3663
  %3711 = phi i32 [ 0, %3648 ], [ 544, %3663 ]
  %3712 = phi i16* [ %3651, %3648 ], [ %3660, %3663 ]
  %3713 = phi i16* [ %3522, %3648 ], [ %3661, %3663 ]
  %3714 = phi i16* [ %3394, %3648 ], [ %3662, %3663 ]
  br label %3715

3715:                                             ; preds = %3715, %3710
  %3716 = phi i32 [ %3727, %3715 ], [ %3711, %3710 ]
  %3717 = phi i16* [ %3728, %3715 ], [ %3712, %3710 ]
  %3718 = phi i16* [ %3730, %3715 ], [ %3713, %3710 ]
  %3719 = phi i16* [ %3729, %3715 ], [ %3714, %3710 ]
  %3720 = phi i32 [ %3731, %3715 ], [ 0, %3710 ]
  %3721 = bitcast i16* %3719 to i32*
  %3722 = load i32, i32* %3721, align 4, !tbaa !10
  %3723 = bitcast i16* %3718 to i32*
  %3724 = load i32, i32* %3723, align 4, !tbaa !10
  %3725 = add i32 %3724, %3722
  %3726 = bitcast i16* %3717 to i32*
  store i32 %3725, i32* %3726, align 4, !tbaa !10
  %3727 = add nuw nsw i32 %3716, 1
  %3728 = getelementptr inbounds i16, i16* %3717, i64 2
  %3729 = getelementptr inbounds i16, i16* %3719, i64 2
  %3730 = getelementptr inbounds i16, i16* %3718, i64 2
  %3731 = add i32 %3720, 1
  %3732 = icmp eq i32 %3720, 0
  br i1 %3732, label %3733, label %3715, !llvm.loop !404

3733:                                             ; preds = %3715
  br i1 %3658, label %3734, label %3777

3734:                                             ; preds = %3733, %3734
  %3735 = phi i32 [ %3772, %3734 ], [ %3727, %3733 ]
  %3736 = phi i16* [ %3773, %3734 ], [ %3728, %3733 ]
  %3737 = phi i16* [ %3775, %3734 ], [ %3730, %3733 ]
  %3738 = phi i16* [ %3774, %3734 ], [ %3729, %3733 ]
  %3739 = bitcast i16* %3738 to i32*
  %3740 = load i32, i32* %3739, align 4, !tbaa !10
  %3741 = bitcast i16* %3737 to i32*
  %3742 = load i32, i32* %3741, align 4, !tbaa !10
  %3743 = add i32 %3742, %3740
  %3744 = bitcast i16* %3736 to i32*
  store i32 %3743, i32* %3744, align 4, !tbaa !10
  %3745 = getelementptr inbounds i16, i16* %3736, i64 2
  %3746 = getelementptr inbounds i16, i16* %3738, i64 2
  %3747 = getelementptr inbounds i16, i16* %3737, i64 2
  %3748 = bitcast i16* %3746 to i32*
  %3749 = load i32, i32* %3748, align 4, !tbaa !10
  %3750 = bitcast i16* %3747 to i32*
  %3751 = load i32, i32* %3750, align 4, !tbaa !10
  %3752 = add i32 %3751, %3749
  %3753 = bitcast i16* %3745 to i32*
  store i32 %3752, i32* %3753, align 4, !tbaa !10
  %3754 = getelementptr inbounds i16, i16* %3736, i64 4
  %3755 = getelementptr inbounds i16, i16* %3738, i64 4
  %3756 = getelementptr inbounds i16, i16* %3737, i64 4
  %3757 = bitcast i16* %3755 to i32*
  %3758 = load i32, i32* %3757, align 4, !tbaa !10
  %3759 = bitcast i16* %3756 to i32*
  %3760 = load i32, i32* %3759, align 4, !tbaa !10
  %3761 = add i32 %3760, %3758
  %3762 = bitcast i16* %3754 to i32*
  store i32 %3761, i32* %3762, align 4, !tbaa !10
  %3763 = getelementptr inbounds i16, i16* %3736, i64 6
  %3764 = getelementptr inbounds i16, i16* %3738, i64 6
  %3765 = getelementptr inbounds i16, i16* %3737, i64 6
  %3766 = bitcast i16* %3764 to i32*
  %3767 = load i32, i32* %3766, align 4, !tbaa !10
  %3768 = bitcast i16* %3765 to i32*
  %3769 = load i32, i32* %3768, align 4, !tbaa !10
  %3770 = add i32 %3769, %3767
  %3771 = bitcast i16* %3763 to i32*
  store i32 %3770, i32* %3771, align 4, !tbaa !10
  %3772 = add nuw nsw i32 %3735, 4
  %3773 = getelementptr inbounds i16, i16* %3736, i64 8
  %3774 = getelementptr inbounds i16, i16* %3738, i64 8
  %3775 = getelementptr inbounds i16, i16* %3737, i64 8
  %3776 = icmp eq i32 %3772, 545
  br i1 %3776, label %3777, label %3734, !llvm.loop !405

3777:                                             ; preds = %3734, %3733
  %3778 = add nuw nsw i64 %311, 1
  %3779 = icmp eq i64 %3778, %23
  br i1 %3779, label %3780, label %310, !llvm.loop !406

3780:                                             ; preds = %3777, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z10check_sadsPtS_i(i16* nocapture readonly %0, i16* nocapture readonly %1, i32 %2) local_unnamed_addr #8 {
  %4 = mul nsw i32 %2, 27400
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i16, i16* %1, i64 %5
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %8, label %510

8:                                                ; preds = %3
  %9 = zext i32 %2 to i64
  br label %10

10:                                               ; preds = %8, %507
  %11 = phi i64 [ 0, %8 ], [ %508, %507 ]
  %12 = shl nsw i64 %11, 4
  %13 = mul i64 %11, 17536
  %14 = and i64 %13, 4294967168
  br label %34

15:                                               ; preds = %34
  %16 = add nuw nsw i64 %35, 1
  %17 = add nuw nsw i64 %16, %14
  %18 = getelementptr inbounds i16, i16* %0, i64 %17
  %19 = load i16, i16* %18, align 2, !tbaa !73
  %20 = getelementptr inbounds i16, i16* %6, i64 %17
  %21 = load i16, i16* %20, align 2, !tbaa !73
  %22 = icmp eq i16 %19, %21
  br i1 %22, label %23, label %510

23:                                               ; preds = %15
  %24 = add nuw nsw i64 %35, 2
  %25 = add nuw nsw i64 %24, %14
  %26 = getelementptr inbounds i16, i16* %0, i64 %25
  %27 = load i16, i16* %26, align 2, !tbaa !73
  %28 = getelementptr inbounds i16, i16* %6, i64 %25
  %29 = load i16, i16* %28, align 2, !tbaa !73
  %30 = icmp eq i16 %27, %29
  br i1 %30, label %31, label %510

31:                                               ; preds = %23
  %32 = add nuw nsw i64 %35, 3
  %33 = icmp eq i64 %32, 1089
  br i1 %33, label %42, label %34, !llvm.loop !407

34:                                               ; preds = %31, %10
  %35 = phi i64 [ 0, %10 ], [ %32, %31 ]
  %36 = add nuw nsw i64 %35, %14
  %37 = getelementptr inbounds i16, i16* %0, i64 %36
  %38 = load i16, i16* %37, align 2, !tbaa !73
  %39 = getelementptr inbounds i16, i16* %6, i64 %36
  %40 = load i16, i16* %39, align 2, !tbaa !73
  %41 = icmp eq i16 %38, %40
  br i1 %41, label %15, label %510

42:                                               ; preds = %31
  %43 = or i64 %12, 1
  %44 = mul i64 %43, 1096
  %45 = and i64 %44, 4294967240
  br label %46

46:                                               ; preds = %70, %42
  %47 = phi i64 [ 0, %42 ], [ %71, %70 ]
  %48 = add nuw nsw i64 %47, %45
  %49 = getelementptr inbounds i16, i16* %0, i64 %48
  %50 = load i16, i16* %49, align 2, !tbaa !73
  %51 = getelementptr inbounds i16, i16* %6, i64 %48
  %52 = load i16, i16* %51, align 2, !tbaa !73
  %53 = icmp eq i16 %50, %52
  br i1 %53, label %54, label %510

54:                                               ; preds = %46
  %55 = add nuw nsw i64 %47, 1
  %56 = add nuw nsw i64 %55, %45
  %57 = getelementptr inbounds i16, i16* %0, i64 %56
  %58 = load i16, i16* %57, align 2, !tbaa !73
  %59 = getelementptr inbounds i16, i16* %6, i64 %56
  %60 = load i16, i16* %59, align 2, !tbaa !73
  %61 = icmp eq i16 %58, %60
  br i1 %61, label %62, label %510

62:                                               ; preds = %54
  %63 = add nuw nsw i64 %47, 2
  %64 = add nuw nsw i64 %63, %45
  %65 = getelementptr inbounds i16, i16* %0, i64 %64
  %66 = load i16, i16* %65, align 2, !tbaa !73
  %67 = getelementptr inbounds i16, i16* %6, i64 %64
  %68 = load i16, i16* %67, align 2, !tbaa !73
  %69 = icmp eq i16 %66, %68
  br i1 %69, label %70, label %510

70:                                               ; preds = %62
  %71 = add nuw nsw i64 %47, 3
  %72 = icmp eq i64 %71, 1089
  br i1 %72, label %73, label %46, !llvm.loop !407

73:                                               ; preds = %70
  %74 = or i64 %12, 2
  %75 = mul i64 %74, 1096
  %76 = and i64 %75, 4294967184
  br label %77

77:                                               ; preds = %101, %73
  %78 = phi i64 [ 0, %73 ], [ %102, %101 ]
  %79 = add nuw nsw i64 %78, %76
  %80 = getelementptr inbounds i16, i16* %0, i64 %79
  %81 = load i16, i16* %80, align 2, !tbaa !73
  %82 = getelementptr inbounds i16, i16* %6, i64 %79
  %83 = load i16, i16* %82, align 2, !tbaa !73
  %84 = icmp eq i16 %81, %83
  br i1 %84, label %85, label %510

85:                                               ; preds = %77
  %86 = add nuw nsw i64 %78, 1
  %87 = add nuw nsw i64 %86, %76
  %88 = getelementptr inbounds i16, i16* %0, i64 %87
  %89 = load i16, i16* %88, align 2, !tbaa !73
  %90 = getelementptr inbounds i16, i16* %6, i64 %87
  %91 = load i16, i16* %90, align 2, !tbaa !73
  %92 = icmp eq i16 %89, %91
  br i1 %92, label %93, label %510

93:                                               ; preds = %85
  %94 = add nuw nsw i64 %78, 2
  %95 = add nuw nsw i64 %94, %76
  %96 = getelementptr inbounds i16, i16* %0, i64 %95
  %97 = load i16, i16* %96, align 2, !tbaa !73
  %98 = getelementptr inbounds i16, i16* %6, i64 %95
  %99 = load i16, i16* %98, align 2, !tbaa !73
  %100 = icmp eq i16 %97, %99
  br i1 %100, label %101, label %510

101:                                              ; preds = %93
  %102 = add nuw nsw i64 %78, 3
  %103 = icmp eq i64 %102, 1089
  br i1 %103, label %104, label %77, !llvm.loop !407

104:                                              ; preds = %101
  %105 = or i64 %12, 3
  %106 = mul i64 %105, 1096
  %107 = and i64 %106, 4294967256
  br label %108

108:                                              ; preds = %132, %104
  %109 = phi i64 [ 0, %104 ], [ %133, %132 ]
  %110 = add nuw nsw i64 %109, %107
  %111 = getelementptr inbounds i16, i16* %0, i64 %110
  %112 = load i16, i16* %111, align 2, !tbaa !73
  %113 = getelementptr inbounds i16, i16* %6, i64 %110
  %114 = load i16, i16* %113, align 2, !tbaa !73
  %115 = icmp eq i16 %112, %114
  br i1 %115, label %116, label %510

116:                                              ; preds = %108
  %117 = add nuw nsw i64 %109, 1
  %118 = add nuw nsw i64 %117, %107
  %119 = getelementptr inbounds i16, i16* %0, i64 %118
  %120 = load i16, i16* %119, align 2, !tbaa !73
  %121 = getelementptr inbounds i16, i16* %6, i64 %118
  %122 = load i16, i16* %121, align 2, !tbaa !73
  %123 = icmp eq i16 %120, %122
  br i1 %123, label %124, label %510

124:                                              ; preds = %116
  %125 = add nuw nsw i64 %109, 2
  %126 = add nuw nsw i64 %125, %107
  %127 = getelementptr inbounds i16, i16* %0, i64 %126
  %128 = load i16, i16* %127, align 2, !tbaa !73
  %129 = getelementptr inbounds i16, i16* %6, i64 %126
  %130 = load i16, i16* %129, align 2, !tbaa !73
  %131 = icmp eq i16 %128, %130
  br i1 %131, label %132, label %510

132:                                              ; preds = %124
  %133 = add nuw nsw i64 %109, 3
  %134 = icmp eq i64 %133, 1089
  br i1 %134, label %135, label %108, !llvm.loop !407

135:                                              ; preds = %132
  %136 = or i64 %12, 4
  %137 = mul i64 %136, 1096
  %138 = and i64 %137, 4294967200
  br label %139

139:                                              ; preds = %163, %135
  %140 = phi i64 [ 0, %135 ], [ %164, %163 ]
  %141 = add nuw nsw i64 %140, %138
  %142 = getelementptr inbounds i16, i16* %0, i64 %141
  %143 = load i16, i16* %142, align 2, !tbaa !73
  %144 = getelementptr inbounds i16, i16* %6, i64 %141
  %145 = load i16, i16* %144, align 2, !tbaa !73
  %146 = icmp eq i16 %143, %145
  br i1 %146, label %147, label %510

147:                                              ; preds = %139
  %148 = add nuw nsw i64 %140, 1
  %149 = add nuw nsw i64 %148, %138
  %150 = getelementptr inbounds i16, i16* %0, i64 %149
  %151 = load i16, i16* %150, align 2, !tbaa !73
  %152 = getelementptr inbounds i16, i16* %6, i64 %149
  %153 = load i16, i16* %152, align 2, !tbaa !73
  %154 = icmp eq i16 %151, %153
  br i1 %154, label %155, label %510

155:                                              ; preds = %147
  %156 = add nuw nsw i64 %140, 2
  %157 = add nuw nsw i64 %156, %138
  %158 = getelementptr inbounds i16, i16* %0, i64 %157
  %159 = load i16, i16* %158, align 2, !tbaa !73
  %160 = getelementptr inbounds i16, i16* %6, i64 %157
  %161 = load i16, i16* %160, align 2, !tbaa !73
  %162 = icmp eq i16 %159, %161
  br i1 %162, label %163, label %510

163:                                              ; preds = %155
  %164 = add nuw nsw i64 %140, 3
  %165 = icmp eq i64 %164, 1089
  br i1 %165, label %166, label %139, !llvm.loop !407

166:                                              ; preds = %163
  %167 = or i64 %12, 5
  %168 = mul i64 %167, 1096
  %169 = and i64 %168, 4294967272
  br label %170

170:                                              ; preds = %194, %166
  %171 = phi i64 [ 0, %166 ], [ %195, %194 ]
  %172 = add nuw nsw i64 %171, %169
  %173 = getelementptr inbounds i16, i16* %0, i64 %172
  %174 = load i16, i16* %173, align 2, !tbaa !73
  %175 = getelementptr inbounds i16, i16* %6, i64 %172
  %176 = load i16, i16* %175, align 2, !tbaa !73
  %177 = icmp eq i16 %174, %176
  br i1 %177, label %178, label %510

178:                                              ; preds = %170
  %179 = add nuw nsw i64 %171, 1
  %180 = add nuw nsw i64 %179, %169
  %181 = getelementptr inbounds i16, i16* %0, i64 %180
  %182 = load i16, i16* %181, align 2, !tbaa !73
  %183 = getelementptr inbounds i16, i16* %6, i64 %180
  %184 = load i16, i16* %183, align 2, !tbaa !73
  %185 = icmp eq i16 %182, %184
  br i1 %185, label %186, label %510

186:                                              ; preds = %178
  %187 = add nuw nsw i64 %171, 2
  %188 = add nuw nsw i64 %187, %169
  %189 = getelementptr inbounds i16, i16* %0, i64 %188
  %190 = load i16, i16* %189, align 2, !tbaa !73
  %191 = getelementptr inbounds i16, i16* %6, i64 %188
  %192 = load i16, i16* %191, align 2, !tbaa !73
  %193 = icmp eq i16 %190, %192
  br i1 %193, label %194, label %510

194:                                              ; preds = %186
  %195 = add nuw nsw i64 %171, 3
  %196 = icmp eq i64 %195, 1089
  br i1 %196, label %197, label %170, !llvm.loop !407

197:                                              ; preds = %194
  %198 = or i64 %12, 6
  %199 = mul i64 %198, 1096
  %200 = and i64 %199, 4294967216
  br label %201

201:                                              ; preds = %225, %197
  %202 = phi i64 [ 0, %197 ], [ %226, %225 ]
  %203 = add nuw nsw i64 %202, %200
  %204 = getelementptr inbounds i16, i16* %0, i64 %203
  %205 = load i16, i16* %204, align 2, !tbaa !73
  %206 = getelementptr inbounds i16, i16* %6, i64 %203
  %207 = load i16, i16* %206, align 2, !tbaa !73
  %208 = icmp eq i16 %205, %207
  br i1 %208, label %209, label %510

209:                                              ; preds = %201
  %210 = add nuw nsw i64 %202, 1
  %211 = add nuw nsw i64 %210, %200
  %212 = getelementptr inbounds i16, i16* %0, i64 %211
  %213 = load i16, i16* %212, align 2, !tbaa !73
  %214 = getelementptr inbounds i16, i16* %6, i64 %211
  %215 = load i16, i16* %214, align 2, !tbaa !73
  %216 = icmp eq i16 %213, %215
  br i1 %216, label %217, label %510

217:                                              ; preds = %209
  %218 = add nuw nsw i64 %202, 2
  %219 = add nuw nsw i64 %218, %200
  %220 = getelementptr inbounds i16, i16* %0, i64 %219
  %221 = load i16, i16* %220, align 2, !tbaa !73
  %222 = getelementptr inbounds i16, i16* %6, i64 %219
  %223 = load i16, i16* %222, align 2, !tbaa !73
  %224 = icmp eq i16 %221, %223
  br i1 %224, label %225, label %510

225:                                              ; preds = %217
  %226 = add nuw nsw i64 %202, 3
  %227 = icmp eq i64 %226, 1089
  br i1 %227, label %228, label %201, !llvm.loop !407

228:                                              ; preds = %225
  %229 = or i64 %12, 7
  %230 = mul i64 %229, 1096
  %231 = and i64 %230, 4294967288
  br label %232

232:                                              ; preds = %256, %228
  %233 = phi i64 [ 0, %228 ], [ %257, %256 ]
  %234 = add nuw nsw i64 %233, %231
  %235 = getelementptr inbounds i16, i16* %0, i64 %234
  %236 = load i16, i16* %235, align 2, !tbaa !73
  %237 = getelementptr inbounds i16, i16* %6, i64 %234
  %238 = load i16, i16* %237, align 2, !tbaa !73
  %239 = icmp eq i16 %236, %238
  br i1 %239, label %240, label %510

240:                                              ; preds = %232
  %241 = add nuw nsw i64 %233, 1
  %242 = add nuw nsw i64 %241, %231
  %243 = getelementptr inbounds i16, i16* %0, i64 %242
  %244 = load i16, i16* %243, align 2, !tbaa !73
  %245 = getelementptr inbounds i16, i16* %6, i64 %242
  %246 = load i16, i16* %245, align 2, !tbaa !73
  %247 = icmp eq i16 %244, %246
  br i1 %247, label %248, label %510

248:                                              ; preds = %240
  %249 = add nuw nsw i64 %233, 2
  %250 = add nuw nsw i64 %249, %231
  %251 = getelementptr inbounds i16, i16* %0, i64 %250
  %252 = load i16, i16* %251, align 2, !tbaa !73
  %253 = getelementptr inbounds i16, i16* %6, i64 %250
  %254 = load i16, i16* %253, align 2, !tbaa !73
  %255 = icmp eq i16 %252, %254
  br i1 %255, label %256, label %510

256:                                              ; preds = %248
  %257 = add nuw nsw i64 %233, 3
  %258 = icmp eq i64 %257, 1089
  br i1 %258, label %259, label %232, !llvm.loop !407

259:                                              ; preds = %256
  %260 = or i64 %12, 8
  %261 = mul i64 %260, 1096
  %262 = and i64 %261, 4294967232
  br label %263

263:                                              ; preds = %287, %259
  %264 = phi i64 [ 0, %259 ], [ %288, %287 ]
  %265 = add nuw nsw i64 %264, %262
  %266 = getelementptr inbounds i16, i16* %0, i64 %265
  %267 = load i16, i16* %266, align 2, !tbaa !73
  %268 = getelementptr inbounds i16, i16* %6, i64 %265
  %269 = load i16, i16* %268, align 2, !tbaa !73
  %270 = icmp eq i16 %267, %269
  br i1 %270, label %271, label %510

271:                                              ; preds = %263
  %272 = add nuw nsw i64 %264, 1
  %273 = add nuw nsw i64 %272, %262
  %274 = getelementptr inbounds i16, i16* %0, i64 %273
  %275 = load i16, i16* %274, align 2, !tbaa !73
  %276 = getelementptr inbounds i16, i16* %6, i64 %273
  %277 = load i16, i16* %276, align 2, !tbaa !73
  %278 = icmp eq i16 %275, %277
  br i1 %278, label %279, label %510

279:                                              ; preds = %271
  %280 = add nuw nsw i64 %264, 2
  %281 = add nuw nsw i64 %280, %262
  %282 = getelementptr inbounds i16, i16* %0, i64 %281
  %283 = load i16, i16* %282, align 2, !tbaa !73
  %284 = getelementptr inbounds i16, i16* %6, i64 %281
  %285 = load i16, i16* %284, align 2, !tbaa !73
  %286 = icmp eq i16 %283, %285
  br i1 %286, label %287, label %510

287:                                              ; preds = %279
  %288 = add nuw nsw i64 %264, 3
  %289 = icmp eq i64 %288, 1089
  br i1 %289, label %290, label %263, !llvm.loop !407

290:                                              ; preds = %287
  %291 = or i64 %12, 9
  %292 = mul i64 %291, 1096
  %293 = and i64 %292, 4294967176
  br label %294

294:                                              ; preds = %318, %290
  %295 = phi i64 [ 0, %290 ], [ %319, %318 ]
  %296 = add nuw nsw i64 %295, %293
  %297 = getelementptr inbounds i16, i16* %0, i64 %296
  %298 = load i16, i16* %297, align 2, !tbaa !73
  %299 = getelementptr inbounds i16, i16* %6, i64 %296
  %300 = load i16, i16* %299, align 2, !tbaa !73
  %301 = icmp eq i16 %298, %300
  br i1 %301, label %302, label %510

302:                                              ; preds = %294
  %303 = add nuw nsw i64 %295, 1
  %304 = add nuw nsw i64 %303, %293
  %305 = getelementptr inbounds i16, i16* %0, i64 %304
  %306 = load i16, i16* %305, align 2, !tbaa !73
  %307 = getelementptr inbounds i16, i16* %6, i64 %304
  %308 = load i16, i16* %307, align 2, !tbaa !73
  %309 = icmp eq i16 %306, %308
  br i1 %309, label %310, label %510

310:                                              ; preds = %302
  %311 = add nuw nsw i64 %295, 2
  %312 = add nuw nsw i64 %311, %293
  %313 = getelementptr inbounds i16, i16* %0, i64 %312
  %314 = load i16, i16* %313, align 2, !tbaa !73
  %315 = getelementptr inbounds i16, i16* %6, i64 %312
  %316 = load i16, i16* %315, align 2, !tbaa !73
  %317 = icmp eq i16 %314, %316
  br i1 %317, label %318, label %510

318:                                              ; preds = %310
  %319 = add nuw nsw i64 %295, 3
  %320 = icmp eq i64 %319, 1089
  br i1 %320, label %321, label %294, !llvm.loop !407

321:                                              ; preds = %318
  %322 = or i64 %12, 10
  %323 = mul i64 %322, 1096
  %324 = and i64 %323, 4294967248
  br label %325

325:                                              ; preds = %349, %321
  %326 = phi i64 [ 0, %321 ], [ %350, %349 ]
  %327 = add nuw nsw i64 %326, %324
  %328 = getelementptr inbounds i16, i16* %0, i64 %327
  %329 = load i16, i16* %328, align 2, !tbaa !73
  %330 = getelementptr inbounds i16, i16* %6, i64 %327
  %331 = load i16, i16* %330, align 2, !tbaa !73
  %332 = icmp eq i16 %329, %331
  br i1 %332, label %333, label %510

333:                                              ; preds = %325
  %334 = add nuw nsw i64 %326, 1
  %335 = add nuw nsw i64 %334, %324
  %336 = getelementptr inbounds i16, i16* %0, i64 %335
  %337 = load i16, i16* %336, align 2, !tbaa !73
  %338 = getelementptr inbounds i16, i16* %6, i64 %335
  %339 = load i16, i16* %338, align 2, !tbaa !73
  %340 = icmp eq i16 %337, %339
  br i1 %340, label %341, label %510

341:                                              ; preds = %333
  %342 = add nuw nsw i64 %326, 2
  %343 = add nuw nsw i64 %342, %324
  %344 = getelementptr inbounds i16, i16* %0, i64 %343
  %345 = load i16, i16* %344, align 2, !tbaa !73
  %346 = getelementptr inbounds i16, i16* %6, i64 %343
  %347 = load i16, i16* %346, align 2, !tbaa !73
  %348 = icmp eq i16 %345, %347
  br i1 %348, label %349, label %510

349:                                              ; preds = %341
  %350 = add nuw nsw i64 %326, 3
  %351 = icmp eq i64 %350, 1089
  br i1 %351, label %352, label %325, !llvm.loop !407

352:                                              ; preds = %349
  %353 = or i64 %12, 11
  %354 = mul i64 %353, 1096
  %355 = and i64 %354, 4294967192
  br label %356

356:                                              ; preds = %380, %352
  %357 = phi i64 [ 0, %352 ], [ %381, %380 ]
  %358 = add nuw nsw i64 %357, %355
  %359 = getelementptr inbounds i16, i16* %0, i64 %358
  %360 = load i16, i16* %359, align 2, !tbaa !73
  %361 = getelementptr inbounds i16, i16* %6, i64 %358
  %362 = load i16, i16* %361, align 2, !tbaa !73
  %363 = icmp eq i16 %360, %362
  br i1 %363, label %364, label %510

364:                                              ; preds = %356
  %365 = add nuw nsw i64 %357, 1
  %366 = add nuw nsw i64 %365, %355
  %367 = getelementptr inbounds i16, i16* %0, i64 %366
  %368 = load i16, i16* %367, align 2, !tbaa !73
  %369 = getelementptr inbounds i16, i16* %6, i64 %366
  %370 = load i16, i16* %369, align 2, !tbaa !73
  %371 = icmp eq i16 %368, %370
  br i1 %371, label %372, label %510

372:                                              ; preds = %364
  %373 = add nuw nsw i64 %357, 2
  %374 = add nuw nsw i64 %373, %355
  %375 = getelementptr inbounds i16, i16* %0, i64 %374
  %376 = load i16, i16* %375, align 2, !tbaa !73
  %377 = getelementptr inbounds i16, i16* %6, i64 %374
  %378 = load i16, i16* %377, align 2, !tbaa !73
  %379 = icmp eq i16 %376, %378
  br i1 %379, label %380, label %510

380:                                              ; preds = %372
  %381 = add nuw nsw i64 %357, 3
  %382 = icmp eq i64 %381, 1089
  br i1 %382, label %383, label %356, !llvm.loop !407

383:                                              ; preds = %380
  %384 = or i64 %12, 12
  %385 = mul i64 %384, 1096
  %386 = and i64 %385, 4294967264
  br label %387

387:                                              ; preds = %411, %383
  %388 = phi i64 [ 0, %383 ], [ %412, %411 ]
  %389 = add nuw nsw i64 %388, %386
  %390 = getelementptr inbounds i16, i16* %0, i64 %389
  %391 = load i16, i16* %390, align 2, !tbaa !73
  %392 = getelementptr inbounds i16, i16* %6, i64 %389
  %393 = load i16, i16* %392, align 2, !tbaa !73
  %394 = icmp eq i16 %391, %393
  br i1 %394, label %395, label %510

395:                                              ; preds = %387
  %396 = add nuw nsw i64 %388, 1
  %397 = add nuw nsw i64 %396, %386
  %398 = getelementptr inbounds i16, i16* %0, i64 %397
  %399 = load i16, i16* %398, align 2, !tbaa !73
  %400 = getelementptr inbounds i16, i16* %6, i64 %397
  %401 = load i16, i16* %400, align 2, !tbaa !73
  %402 = icmp eq i16 %399, %401
  br i1 %402, label %403, label %510

403:                                              ; preds = %395
  %404 = add nuw nsw i64 %388, 2
  %405 = add nuw nsw i64 %404, %386
  %406 = getelementptr inbounds i16, i16* %0, i64 %405
  %407 = load i16, i16* %406, align 2, !tbaa !73
  %408 = getelementptr inbounds i16, i16* %6, i64 %405
  %409 = load i16, i16* %408, align 2, !tbaa !73
  %410 = icmp eq i16 %407, %409
  br i1 %410, label %411, label %510

411:                                              ; preds = %403
  %412 = add nuw nsw i64 %388, 3
  %413 = icmp eq i64 %412, 1089
  br i1 %413, label %414, label %387, !llvm.loop !407

414:                                              ; preds = %411
  %415 = or i64 %12, 13
  %416 = mul i64 %415, 1096
  %417 = and i64 %416, 4294967208
  br label %418

418:                                              ; preds = %442, %414
  %419 = phi i64 [ 0, %414 ], [ %443, %442 ]
  %420 = add nuw nsw i64 %419, %417
  %421 = getelementptr inbounds i16, i16* %0, i64 %420
  %422 = load i16, i16* %421, align 2, !tbaa !73
  %423 = getelementptr inbounds i16, i16* %6, i64 %420
  %424 = load i16, i16* %423, align 2, !tbaa !73
  %425 = icmp eq i16 %422, %424
  br i1 %425, label %426, label %510

426:                                              ; preds = %418
  %427 = add nuw nsw i64 %419, 1
  %428 = add nuw nsw i64 %427, %417
  %429 = getelementptr inbounds i16, i16* %0, i64 %428
  %430 = load i16, i16* %429, align 2, !tbaa !73
  %431 = getelementptr inbounds i16, i16* %6, i64 %428
  %432 = load i16, i16* %431, align 2, !tbaa !73
  %433 = icmp eq i16 %430, %432
  br i1 %433, label %434, label %510

434:                                              ; preds = %426
  %435 = add nuw nsw i64 %419, 2
  %436 = add nuw nsw i64 %435, %417
  %437 = getelementptr inbounds i16, i16* %0, i64 %436
  %438 = load i16, i16* %437, align 2, !tbaa !73
  %439 = getelementptr inbounds i16, i16* %6, i64 %436
  %440 = load i16, i16* %439, align 2, !tbaa !73
  %441 = icmp eq i16 %438, %440
  br i1 %441, label %442, label %510

442:                                              ; preds = %434
  %443 = add nuw nsw i64 %419, 3
  %444 = icmp eq i64 %443, 1089
  br i1 %444, label %445, label %418, !llvm.loop !407

445:                                              ; preds = %442
  %446 = or i64 %12, 14
  %447 = mul i64 %446, 1096
  %448 = and i64 %447, 4294967280
  br label %449

449:                                              ; preds = %473, %445
  %450 = phi i64 [ 0, %445 ], [ %474, %473 ]
  %451 = add nuw nsw i64 %450, %448
  %452 = getelementptr inbounds i16, i16* %0, i64 %451
  %453 = load i16, i16* %452, align 2, !tbaa !73
  %454 = getelementptr inbounds i16, i16* %6, i64 %451
  %455 = load i16, i16* %454, align 2, !tbaa !73
  %456 = icmp eq i16 %453, %455
  br i1 %456, label %457, label %510

457:                                              ; preds = %449
  %458 = add nuw nsw i64 %450, 1
  %459 = add nuw nsw i64 %458, %448
  %460 = getelementptr inbounds i16, i16* %0, i64 %459
  %461 = load i16, i16* %460, align 2, !tbaa !73
  %462 = getelementptr inbounds i16, i16* %6, i64 %459
  %463 = load i16, i16* %462, align 2, !tbaa !73
  %464 = icmp eq i16 %461, %463
  br i1 %464, label %465, label %510

465:                                              ; preds = %457
  %466 = add nuw nsw i64 %450, 2
  %467 = add nuw nsw i64 %466, %448
  %468 = getelementptr inbounds i16, i16* %0, i64 %467
  %469 = load i16, i16* %468, align 2, !tbaa !73
  %470 = getelementptr inbounds i16, i16* %6, i64 %467
  %471 = load i16, i16* %470, align 2, !tbaa !73
  %472 = icmp eq i16 %469, %471
  br i1 %472, label %473, label %510

473:                                              ; preds = %465
  %474 = add nuw nsw i64 %450, 3
  %475 = icmp eq i64 %474, 1089
  br i1 %475, label %476, label %449, !llvm.loop !407

476:                                              ; preds = %473
  %477 = or i64 %12, 15
  %478 = mul i64 %477, 1096
  %479 = and i64 %478, 4294967224
  br label %480

480:                                              ; preds = %504, %476
  %481 = phi i64 [ 0, %476 ], [ %505, %504 ]
  %482 = add nuw nsw i64 %481, %479
  %483 = getelementptr inbounds i16, i16* %0, i64 %482
  %484 = load i16, i16* %483, align 2, !tbaa !73
  %485 = getelementptr inbounds i16, i16* %6, i64 %482
  %486 = load i16, i16* %485, align 2, !tbaa !73
  %487 = icmp eq i16 %484, %486
  br i1 %487, label %488, label %510

488:                                              ; preds = %480
  %489 = add nuw nsw i64 %481, 1
  %490 = add nuw nsw i64 %489, %479
  %491 = getelementptr inbounds i16, i16* %0, i64 %490
  %492 = load i16, i16* %491, align 2, !tbaa !73
  %493 = getelementptr inbounds i16, i16* %6, i64 %490
  %494 = load i16, i16* %493, align 2, !tbaa !73
  %495 = icmp eq i16 %492, %494
  br i1 %495, label %496, label %510

496:                                              ; preds = %488
  %497 = add nuw nsw i64 %481, 2
  %498 = add nuw nsw i64 %497, %479
  %499 = getelementptr inbounds i16, i16* %0, i64 %498
  %500 = load i16, i16* %499, align 2, !tbaa !73
  %501 = getelementptr inbounds i16, i16* %6, i64 %498
  %502 = load i16, i16* %501, align 2, !tbaa !73
  %503 = icmp eq i16 %500, %502
  br i1 %503, label %504, label %510

504:                                              ; preds = %496
  %505 = add nuw nsw i64 %481, 3
  %506 = icmp eq i64 %505, 1089
  br i1 %506, label %507, label %480, !llvm.loop !407

507:                                              ; preds = %504
  %508 = add nuw nsw i64 %11, 1
  %509 = icmp eq i64 %508, %9
  br i1 %509, label %510, label %10, !llvm.loop !408

510:                                              ; preds = %507, %34, %15, %23, %46, %54, %62, %77, %85, %93, %108, %116, %124, %139, %147, %155, %170, %178, %186, %201, %209, %217, %232, %240, %248, %263, %271, %279, %294, %302, %310, %325, %333, %341, %356, %364, %372, %387, %395, %403, %418, %426, %434, %449, %457, %465, %480, %488, %496, %3
  %511 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @str, i64 0, i64 0), %3 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %496 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %488 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %480 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %465 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %457 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %449 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %434 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %426 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %418 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %403 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %395 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %387 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %372 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %364 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %356 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %341 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %333 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %325 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %310 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %302 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %294 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %279 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %271 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %263 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %248 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %240 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %232 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %217 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %209 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %201 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %186 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %178 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %170 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %155 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %147 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %139 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %124 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %116 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %108 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %93 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %85 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %77 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %62 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %54 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %46 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %23 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %15 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @str.35, i64 0, i64 0), %34 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @str, i64 0, i64 0), %507 ]
  %512 = tail call i32 @puts(i8* nonnull dereferenceable(1) %511)
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #16 {
  %3 = alloca [6 x i32], align 16
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [3 x i8*], align 16
  %12 = alloca i16*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dim3, align 8
  %16 = alloca %struct.dim3, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [3 x i8*], align 16
  %20 = alloca i16*, align 8
  %21 = alloca i16*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.dim3, align 8
  %25 = alloca %struct.dim3, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca [4 x i8*], align 16
  %29 = alloca %struct.hipChannelFormatDesc, align 4
  %30 = alloca %struct.timeval, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.pb_TimerSet, align 8
  %33 = alloca %struct.hipArray*, align 8
  %34 = alloca i16*, align 8
  %35 = alloca i16*, align 8
  store i32 %0, i32* %31, align 4, !tbaa !10
  %36 = bitcast %struct.pb_TimerSet* %32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 288, i8* nonnull %36) #25
  %37 = bitcast %struct.timeval* %30 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %37) #25
  %38 = call i32 @gettimeofday(%struct.timeval* nonnull %30, %struct.timezone* null) #25
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %30, i64 0, i32 0
  %40 = load i64, i64* %39, align 8, !tbaa !35
  %41 = mul nsw i64 %40, 1000000
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %30, i64 0, i32 1
  %43 = load i64, i64* %42, align 8, !tbaa !38
  %44 = add nsw i64 %41, %43
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %37) #25
  %45 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %32, i64 0, i32 3
  store i64 %44, i64* %45, align 8, !tbaa !41
  %46 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %32, i64 0, i32 0
  store i32 0, i32* %46, align 8, !tbaa !44
  %47 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %32, i64 0, i32 1
  store %struct.pb_async_time_marker_list* null, %struct.pb_async_time_marker_list** %47, align 8, !tbaa !45
  %48 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %32, i64 0, i32 4, i64 0, i32 0
  store i32 0, i32* %48, align 8, !tbaa !30
  %49 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %32, i64 0, i32 4, i64 0, i32 1
  store i64 0, i64* %49, align 8, !tbaa !34
  %50 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %32, i64 0, i32 5, i64 0
  %51 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %32, i64 0, i32 4, i64 1, i32 0
  store i32 0, i32* %51, align 8, !tbaa !30
  %52 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %32, i64 0, i32 4, i64 1, i32 1
  store i64 0, i64* %52, align 8, !tbaa !34
  %53 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %32, i64 0, i32 4, i64 2, i32 0
  store i32 0, i32* %53, align 8, !tbaa !30
  %54 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %32, i64 0, i32 4, i64 2, i32 1
  store i64 0, i64* %54, align 8, !tbaa !34
  %55 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %32, i64 0, i32 4, i64 3, i32 0
  store i32 0, i32* %55, align 8, !tbaa !30
  %56 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %32, i64 0, i32 4, i64 3, i32 1
  store i64 0, i64* %56, align 8, !tbaa !34
  %57 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %32, i64 0, i32 4, i64 4, i32 0
  store i32 0, i32* %57, align 8, !tbaa !30
  %58 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %32, i64 0, i32 4, i64 4, i32 1
  store i64 0, i64* %58, align 8, !tbaa !34
  %59 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %32, i64 0, i32 4, i64 5, i32 0
  store i32 0, i32* %59, align 8, !tbaa !30
  %60 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %32, i64 0, i32 4, i64 5, i32 1
  store i64 0, i64* %60, align 8, !tbaa !34
  %61 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %32, i64 0, i32 4, i64 6, i32 0
  store i32 0, i32* %61, align 8, !tbaa !30
  %62 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %32, i64 0, i32 4, i64 6, i32 1
  store i64 0, i64* %62, align 8, !tbaa !34
  %63 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %32, i64 0, i32 4, i64 7, i32 0
  store i32 0, i32* %63, align 8, !tbaa !30
  %64 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %32, i64 0, i32 4, i64 7, i32 1
  store i64 0, i64* %64, align 8, !tbaa !34
  %65 = bitcast %struct.pb_SubTimerList** %50 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %65, i8 0, i64 64, i1 false) #25
  %66 = call %struct.pb_Parameters* @pb_ReadParameters(i32* nonnull %31, i8** %1)
  %67 = getelementptr inbounds %struct.pb_Parameters, %struct.pb_Parameters* %66, i64 0, i32 1
  %68 = load i8**, i8*** %67, align 8, !tbaa !8
  br label %69

69:                                               ; preds = %69, %2
  %70 = phi i64 [ %74, %69 ], [ 0, %2 ]
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8, !tbaa !9
  %73 = icmp eq i8* %72, null
  %74 = add nuw i64 %70, 1
  br i1 %73, label %75, label %69, !llvm.loop !29

75:                                               ; preds = %69
  %76 = trunc i64 %70 to i32
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %80 = tail call i64 @fwrite(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %79) #27
  tail call void @exit(i32 -1) #29
  unreachable

81:                                               ; preds = %75
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %32, i32 1)
  %82 = load i8*, i8** %68, align 8, !tbaa !9
  %83 = tail call %struct.image_i16* @load_image(i8* %82)
  %84 = getelementptr inbounds i8*, i8** %68, i64 1
  %85 = load i8*, i8** %84, align 8, !tbaa !9
  %86 = tail call %struct.image_i16* @load_image(i8* %85)
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %32, i32 6)
  %87 = getelementptr inbounds %struct.image_i16, %struct.image_i16* %83, i64 0, i32 0
  %88 = load i32, i32* %87, align 8, !tbaa !409
  %89 = getelementptr inbounds %struct.image_i16, %struct.image_i16* %86, i64 0, i32 0
  %90 = load i32, i32* %89, align 8, !tbaa !409
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %81
  %93 = getelementptr inbounds %struct.image_i16, %struct.image_i16* %83, i64 0, i32 1
  %94 = load i32, i32* %93, align 4, !tbaa !411
  %95 = getelementptr inbounds %struct.image_i16, %struct.image_i16* %86, i64 0, i32 1
  %96 = load i32, i32* %95, align 4, !tbaa !411
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %101, label %98

98:                                               ; preds = %92, %81
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %100 = tail call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %99) #27
  tail call void @exit(i32 -1) #29
  unreachable

101:                                              ; preds = %92
  %102 = and i32 %88, 15
  %103 = icmp eq i32 %102, 0
  %104 = and i32 %94, 15
  %105 = icmp eq i32 %104, 0
  %106 = select i1 %103, i1 %105, i1 false
  br i1 %106, label %110, label %107

107:                                              ; preds = %101
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %109 = tail call i64 @fwrite(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.27, i64 0, i64 0), i64 52, i64 1, %struct._IO_FILE* %108) #27
  tail call void @exit(i32 -1) #29
  unreachable

110:                                              ; preds = %101
  %111 = shl i32 %88, 1
  %112 = mul i32 %111, %94
  %113 = ashr i32 %88, 4
  %114 = ashr i32 %94, 4
  %115 = mul nsw i32 %114, %113
  %116 = mul nsw i32 %115, 44936
  %117 = sext i32 %116 to i64
  %118 = shl nsw i64 %117, 1
  %119 = tail call noalias align 16 i8* @malloc(i64 %118) #25
  %120 = bitcast i8* %119 to i16*
  %121 = bitcast %struct.hipArray** %33 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %121) #25
  %122 = bitcast i16** %34 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %122) #25
  %123 = bitcast i16** %35 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %123) #25
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %32, i32 3)
  %124 = bitcast i16** %34 to i8**
  %125 = sext i32 %112 to i64
  %126 = call i32 @hipMalloc(i8** nonnull %124, i64 %125)
  %127 = call i32 @hipGetLastError()
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %110
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %131 = call i8* @hipGetErrorString(i32 %127)
  %132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %130, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8* %131) #27
  br label %133

133:                                              ; preds = %129, %110
  %134 = sext i32 %88 to i64
  %135 = sext i32 %94 to i64
  %136 = call i32 @hipMallocArray(%struct.hipArray** nonnull %33, %struct.hipChannelFormatDesc* getelementptr inbounds (%struct.texture, %struct.texture* @ref, i64 0, i32 0, i32 4), i64 %134, i64 %135, i32 0)
  %137 = call i32 @hipGetLastError()
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %133
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %141 = call i8* @hipGetErrorString(i32 %137)
  %142 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %140, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8* %141) #27
  br label %143

143:                                              ; preds = %139, %133
  %144 = load i8*, i8** %124, align 8, !tbaa !9
  %145 = getelementptr inbounds %struct.image_i16, %struct.image_i16* %86, i64 0, i32 2
  %146 = bitcast i16** %145 to i8**
  %147 = load i8*, i8** %146, align 8, !tbaa !412
  %148 = call i32 @hipMemcpy(i8* %144, i8* %147, i64 %125, i32 1)
  %149 = call i32 @hipGetLastError()
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %143
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %153 = call i8* @hipGetErrorString(i32 %149)
  %154 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %152, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8* %153) #27
  br label %155

155:                                              ; preds = %151, %143
  %156 = load %struct.hipArray*, %struct.hipArray** %33, align 8, !tbaa !9
  %157 = getelementptr inbounds %struct.image_i16, %struct.image_i16* %83, i64 0, i32 2
  %158 = bitcast i16** %157 to i8**
  %159 = load i8*, i8** %158, align 8, !tbaa !412
  %160 = shl nsw i64 %134, 1
  %161 = call i32 @hipMemcpy2DToArray(%struct.hipArray* %156, i64 0, i64 0, i8* %159, i64 %160, i64 %160, i64 %135, i32 1)
  %162 = call i32 @hipGetLastError()
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %155
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %166 = call i8* @hipGetErrorString(i32 %162)
  %167 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %165, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8* %166) #27
  br label %168

168:                                              ; preds = %164, %155
  %169 = load %struct.hipArray*, %struct.hipArray** %33, align 8, !tbaa !9
  %170 = bitcast %struct.hipChannelFormatDesc* %29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %170) #25
  %171 = call i32 @hipGetChannelDesc(%struct.hipChannelFormatDesc* nonnull %29, %struct.hipArray* %169)
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = call i32 @hipBindTextureToArray(%struct.textureReference* getelementptr inbounds (%struct.texture, %struct.texture* @ref, i64 0, i32 0), %struct.hipArray* %169, %struct.hipChannelFormatDesc* nonnull %29)
  br label %175

175:                                              ; preds = %168, %173
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %170) #25
  %176 = call i32 @hipGetLastError()
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %175
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %180 = call i8* @hipGetErrorString(i32 %176)
  %181 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %179, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8* %180) #27
  br label %182

182:                                              ; preds = %178, %175
  %183 = bitcast i16** %35 to i8**
  %184 = call i32 @hipMalloc(i8** nonnull %183, i64 %118)
  %185 = call i32 @hipGetLastError()
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %182
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %189 = call i8* @hipGetErrorString(i32 %185)
  %190 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %188, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8* %189) #27
  br label %191

191:                                              ; preds = %187, %182
  %192 = load i8*, i8** %183, align 8, !tbaa !9
  %193 = call i32 @hipMemset(i8* %192, i32 0, i64 %118)
  %194 = call i32 @hipGetLastError()
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %191
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %198 = call i8* @hipGetErrorString(i32 %194)
  %199 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %197, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8* %198) #27
  br label %200

200:                                              ; preds = %196, %191
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %32, i32 2)
  %201 = sdiv i32 %88, 4
  %202 = sdiv i32 %94, 4
  %203 = zext i32 %202 to i64
  %204 = shl nuw i64 %203, 32
  %205 = zext i32 %201 to i64
  %206 = or i64 %204, %205
  %207 = call i32 @__hipPushCallConfiguration(i64 %206, i32 1, i64 4294967357, i32 1, i64 2192, %struct.ihipStream_t* null)
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %242

209:                                              ; preds = %200
  %210 = load i16*, i16** %35, align 8, !tbaa !9
  %211 = load i16*, i16** %34, align 8, !tbaa !9
  %212 = bitcast i16** %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %212)
  %213 = bitcast i16** %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %213)
  %214 = bitcast i32* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %214)
  %215 = bitcast i32* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %215)
  %216 = bitcast %struct.dim3* %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %216)
  %217 = bitcast %struct.dim3* %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %217)
  %218 = bitcast i64* %26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %218)
  %219 = bitcast i8** %27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %219)
  %220 = bitcast [4 x i8*]* %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %220)
  store i16* %210, i16** %20, align 8, !tbaa !9
  store i16* %211, i16** %21, align 8, !tbaa !9
  store i32 %113, i32* %22, align 4, !tbaa !10
  store i32 %114, i32* %23, align 4, !tbaa !10
  %221 = getelementptr inbounds [4 x i8*], [4 x i8*]* %28, i64 0, i64 0
  %222 = bitcast [4 x i8*]* %28 to i16***
  store i16** %20, i16*** %222, align 16
  %223 = getelementptr inbounds [4 x i8*], [4 x i8*]* %28, i64 0, i64 1
  %224 = bitcast i8** %223 to i16***
  store i16** %21, i16*** %224, align 8
  %225 = getelementptr inbounds [4 x i8*], [4 x i8*]* %28, i64 0, i64 2
  %226 = bitcast i8** %225 to i32**
  store i32* %22, i32** %226, align 16
  %227 = getelementptr inbounds [4 x i8*], [4 x i8*]* %28, i64 0, i64 3
  %228 = bitcast i8** %227 to i32**
  store i32* %23, i32** %228, align 8
  %229 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %24, %struct.dim3* nonnull %25, i64* nonnull %26, i8** nonnull %27)
  %230 = load i64, i64* %26, align 8
  %231 = bitcast i8** %27 to %struct.ihipStream_t**
  %232 = load %struct.ihipStream_t*, %struct.ihipStream_t** %231, align 8
  %233 = bitcast %struct.dim3* %24 to i64*
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds %struct.dim3, %struct.dim3* %24, i64 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = bitcast %struct.dim3* %25 to i64*
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds %struct.dim3, %struct.dim3* %25, i64 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @hipLaunchKernel(i8* bitcast (void (i16*, i16*, i32, i32)** @_Z11mb_sad_calcPtS_ii to i8*), i64 %234, i32 %236, i64 %238, i32 %240, i8** nonnull %221, i64 %230, %struct.ihipStream_t* %232)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %212)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %213)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %214)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %215)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %216)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %217)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %218)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %219)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %220)
  br label %242

242:                                              ; preds = %209, %200
  %243 = call i32 @hipGetLastError()
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %249, label %245

245:                                              ; preds = %242
  %246 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %247 = call i8* @hipGetErrorString(i32 %243)
  %248 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %246, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8* %247) #27
  br label %249

249:                                              ; preds = %245, %242
  %250 = zext i32 %114 to i64
  %251 = shl nuw i64 %250, 32
  %252 = zext i32 %113 to i64
  %253 = or i64 %251, %252
  %254 = call i32 @__hipPushCallConfiguration(i64 %253, i32 1, i64 17179869216, i32 1, i64 0, %struct.ihipStream_t* null)
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %285

256:                                              ; preds = %249
  %257 = load i16*, i16** %35, align 8, !tbaa !9
  %258 = bitcast i16** %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %258)
  %259 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %259)
  %260 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %260)
  %261 = bitcast %struct.dim3* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %261)
  %262 = bitcast %struct.dim3* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %262)
  %263 = bitcast i64* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %263)
  %264 = bitcast i8** %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %264)
  %265 = bitcast [3 x i8*]* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %265)
  store i16* %257, i16** %12, align 8, !tbaa !9
  store i32 %113, i32* %13, align 4, !tbaa !10
  store i32 %114, i32* %14, align 4, !tbaa !10
  %266 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 0
  %267 = bitcast [3 x i8*]* %19 to i16***
  store i16** %12, i16*** %267, align 16
  %268 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 1
  %269 = bitcast i8** %268 to i32**
  store i32* %13, i32** %269, align 8
  %270 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 2
  %271 = bitcast i8** %270 to i32**
  store i32* %14, i32** %271, align 16
  %272 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %15, %struct.dim3* nonnull %16, i64* nonnull %17, i8** nonnull %18)
  %273 = load i64, i64* %17, align 8
  %274 = bitcast i8** %18 to %struct.ihipStream_t**
  %275 = load %struct.ihipStream_t*, %struct.ihipStream_t** %274, align 8
  %276 = bitcast %struct.dim3* %15 to i64*
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds %struct.dim3, %struct.dim3* %15, i64 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = bitcast %struct.dim3* %16 to i64*
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds %struct.dim3, %struct.dim3* %16, i64 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @hipLaunchKernel(i8* bitcast (void (i16*, i32, i32)** @_Z17larger_sad_calc_8Ptii to i8*), i64 %277, i32 %279, i64 %281, i32 %283, i8** nonnull %266, i64 %273, %struct.ihipStream_t* %275)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %258)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %259)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %260)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %261)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %262)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %263)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %264)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %265)
  br label %285

285:                                              ; preds = %256, %249
  %286 = call i32 @hipGetLastError()
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %292, label %288

288:                                              ; preds = %285
  %289 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %290 = call i8* @hipGetErrorString(i32 %286)
  %291 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %289, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8* %290) #27
  br label %292

292:                                              ; preds = %288, %285
  %293 = call i32 @__hipPushCallConfiguration(i64 %253, i32 1, i64 4294967328, i32 1, i64 0, %struct.ihipStream_t* null)
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %324

295:                                              ; preds = %292
  %296 = load i16*, i16** %35, align 8, !tbaa !9
  %297 = bitcast i16** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %297)
  %298 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %298)
  %299 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %299)
  %300 = bitcast %struct.dim3* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %300)
  %301 = bitcast %struct.dim3* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %301)
  %302 = bitcast i64* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %302)
  %303 = bitcast i8** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %303)
  %304 = bitcast [3 x i8*]* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %304)
  store i16* %296, i16** %4, align 8, !tbaa !9
  store i32 %113, i32* %5, align 4, !tbaa !10
  store i32 %114, i32* %6, align 4, !tbaa !10
  %305 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %306 = bitcast [3 x i8*]* %11 to i16***
  store i16** %4, i16*** %306, align 16
  %307 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 1
  %308 = bitcast i8** %307 to i32**
  store i32* %5, i32** %308, align 8
  %309 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 2
  %310 = bitcast i8** %309 to i32**
  store i32* %6, i32** %310, align 16
  %311 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %7, %struct.dim3* nonnull %8, i64* nonnull %9, i8** nonnull %10)
  %312 = load i64, i64* %9, align 8
  %313 = bitcast i8** %10 to %struct.ihipStream_t**
  %314 = load %struct.ihipStream_t*, %struct.ihipStream_t** %313, align 8
  %315 = bitcast %struct.dim3* %7 to i64*
  %316 = load i64, i64* %315, align 8
  %317 = getelementptr inbounds %struct.dim3, %struct.dim3* %7, i64 0, i32 2
  %318 = load i32, i32* %317, align 8
  %319 = bitcast %struct.dim3* %8 to i64*
  %320 = load i64, i64* %319, align 8
  %321 = getelementptr inbounds %struct.dim3, %struct.dim3* %8, i64 0, i32 2
  %322 = load i32, i32* %321, align 8
  %323 = call i32 @hipLaunchKernel(i8* bitcast (void (i16*, i32, i32)** @_Z18larger_sad_calc_16Ptii to i8*), i64 %316, i32 %318, i64 %320, i32 %322, i8** nonnull %305, i64 %312, %struct.ihipStream_t* %314)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %297)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %298)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %299)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %300)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %301)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %302)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %303)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %304)
  br label %324

324:                                              ; preds = %295, %292
  %325 = call i32 @hipGetLastError()
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %331, label %327

327:                                              ; preds = %324
  %328 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %329 = call i8* @hipGetErrorString(i32 %325)
  %330 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %328, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8* %329) #27
  br label %331

331:                                              ; preds = %327, %324
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %32, i32 3)
  %332 = load i8*, i8** %183, align 8, !tbaa !9
  %333 = call i32 @hipMemcpy(i8* %119, i8* %332, i64 %118, i32 2)
  %334 = call i32 @hipGetLastError()
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %340, label %336

336:                                              ; preds = %331
  %337 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %338 = call i8* @hipGetErrorString(i32 %334)
  %339 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %337, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8* %338) #27
  br label %340

340:                                              ; preds = %336, %331
  %341 = load i8*, i8** %183, align 8, !tbaa !9
  %342 = call i32 @hipFree(i8* %341)
  %343 = call i32 @hipGetLastError()
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %349, label %345

345:                                              ; preds = %340
  %346 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %347 = call i8* @hipGetErrorString(i32 %343)
  %348 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %346, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8* %347) #27
  br label %349

349:                                              ; preds = %345, %340
  %350 = call i32 @hipUnbindTexture(%struct.textureReference* getelementptr inbounds (%struct.texture, %struct.texture* @ref, i64 0, i32 0))
  %351 = call i32 @hipGetLastError()
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %357, label %353

353:                                              ; preds = %349
  %354 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %355 = call i8* @hipGetErrorString(i32 %351)
  %356 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %354, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8* %355) #27
  br label %357

357:                                              ; preds = %353, %349
  %358 = load %struct.hipArray*, %struct.hipArray** %33, align 8, !tbaa !9
  %359 = call i32 @hipFreeArray(%struct.hipArray* %358)
  %360 = call i32 @hipGetLastError()
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %366, label %362

362:                                              ; preds = %357
  %363 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %364 = call i8* @hipGetErrorString(i32 %360)
  %365 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %363, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8* %364) #27
  br label %366

366:                                              ; preds = %362, %357
  %367 = load i8*, i8** %124, align 8, !tbaa !9
  %368 = call i32 @hipFree(i8* %367)
  %369 = call i32 @hipGetLastError()
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %375, label %371

371:                                              ; preds = %366
  %372 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %373 = call i8* @hipGetErrorString(i32 %369)
  %374 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %372, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8* %373) #27
  br label %375

375:                                              ; preds = %371, %366
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %32, i32 6)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %123) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %122) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %121) #25
  %376 = getelementptr inbounds %struct.pb_Parameters, %struct.pb_Parameters* %66, i64 0, i32 0
  %377 = load i8*, i8** %376, align 8, !tbaa !3
  %378 = icmp eq i8* %377, null
  br i1 %378, label %1048, label %379

379:                                              ; preds = %375
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %32, i32 1)
  %380 = call %struct._IO_FILE* @fopen(i8* nonnull %377, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #25
  %381 = bitcast [6 x i32]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %381) #25
  %382 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  store i32 0, i32* %382, align 16, !tbaa !10
  %383 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 1
  store i32 1, i32* %383, align 4, !tbaa !10
  %384 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 2
  %385 = sdiv i32 %114, 2
  %386 = add nsw i32 %385, -1
  store i32 %386, i32* %384, align 8, !tbaa !10
  %387 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 3
  store i32 %385, i32* %387, align 4, !tbaa !10
  %388 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 4
  %389 = add nsw i32 %114, -2
  store i32 %389, i32* %388, align 16, !tbaa !10
  %390 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 5
  %391 = add nsw i32 %114, -1
  store i32 %391, i32* %390, align 4, !tbaa !10
  %392 = icmp eq %struct._IO_FILE* %380, null
  br i1 %392, label %393, label %396

393:                                              ; preds = %379
  %394 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %395 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %394) #26
  call void @exit(i32 -1) #29
  unreachable

396:                                              ; preds = %379
  %397 = mul nsw i32 %113, 6
  %398 = call i32 @putc(i32 %397, %struct._IO_FILE* nonnull %380) #25
  %399 = lshr i32 %397, 8
  %400 = call i32 @putc(i32 %399, %struct._IO_FILE* nonnull %380) #25
  %401 = lshr i32 %397, 16
  %402 = call i32 @putc(i32 %401, %struct._IO_FILE* nonnull %380) #25
  %403 = lshr i32 %397, 24
  %404 = call i32 @putc(i32 %403, %struct._IO_FILE* nonnull %380) #25
  %405 = call i32 @putc(i32 0, %struct._IO_FILE* nonnull %380) #25
  %406 = call i32 @putc(i32 0, %struct._IO_FILE* nonnull %380) #25
  %407 = call i32 @putc(i32 0, %struct._IO_FILE* nonnull %380) #25
  %408 = call i32 @putc(i32 0, %struct._IO_FILE* nonnull %380) #25
  %409 = mul nsw i32 %115, 9864
  %410 = mul nsw i32 %115, 5480
  %411 = mul nsw i32 %115, 3288
  %412 = mul nsw i32 %115, 1096
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i16, i16* %120, i64 %413
  %415 = sext i32 %411 to i64
  %416 = getelementptr inbounds i16, i16* %120, i64 %415
  %417 = sext i32 %410 to i64
  %418 = getelementptr inbounds i16, i16* %120, i64 %417
  %419 = sext i32 %409 to i64
  %420 = getelementptr inbounds i16, i16* %120, i64 %419
  %421 = mul nsw i32 %115, 18632
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i16, i16* %120, i64 %422
  %424 = mul nsw i32 %115, 27400
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i16, i16* %120, i64 %425
  br label %427

427:                                              ; preds = %1043, %396
  %428 = phi i32 [ 0, %396 ], [ %1045, %1043 ]
  %429 = phi i64 [ 0, %396 ], [ %1041, %1043 ]
  %430 = mul i32 %428, %113
  %431 = add nsw i32 %428, 1
  %432 = mul i32 %431, %113
  %433 = icmp slt i32 %430, %432
  br i1 %433, label %434, label %1040

434:                                              ; preds = %427
  %435 = sext i32 %430 to i64
  br label %436

436:                                              ; preds = %434, %1036
  %437 = phi i64 [ %435, %434 ], [ %1037, %1036 ]
  %438 = mul nsw i64 %437, 1096
  %439 = getelementptr inbounds i16, i16* %120, i64 %438
  br label %440

440:                                              ; preds = %440, %436
  %441 = phi i16* [ %439, %436 ], [ %443, %440 ]
  %442 = phi i32 [ 0, %436 ], [ %449, %440 ]
  %443 = getelementptr inbounds i16, i16* %441, i64 1
  %444 = load i16, i16* %441, align 2, !tbaa !73
  %445 = zext i16 %444 to i32
  %446 = call i32 @putc(i32 %445, %struct._IO_FILE* nonnull %380) #25
  %447 = lshr i32 %445, 8
  %448 = call i32 @putc(i32 %447, %struct._IO_FILE* nonnull %380) #25
  %449 = add nuw nsw i32 %442, 1
  %450 = icmp eq i32 %449, 1089
  br i1 %450, label %451, label %440, !llvm.loop !413

451:                                              ; preds = %440
  %452 = trunc i64 %437 to i32
  %453 = shl nsw i32 %452, 1
  %454 = sext i32 %453 to i64
  %455 = mul nsw i64 %454, 1096
  %456 = getelementptr inbounds i16, i16* %414, i64 %455
  br label %457

457:                                              ; preds = %457, %451
  %458 = phi i16* [ %456, %451 ], [ %460, %457 ]
  %459 = phi i32 [ 0, %451 ], [ %466, %457 ]
  %460 = getelementptr inbounds i16, i16* %458, i64 1
  %461 = load i16, i16* %458, align 2, !tbaa !73
  %462 = zext i16 %461 to i32
  %463 = call i32 @putc(i32 %462, %struct._IO_FILE* nonnull %380) #25
  %464 = lshr i32 %462, 8
  %465 = call i32 @putc(i32 %464, %struct._IO_FILE* nonnull %380) #25
  %466 = add nuw nsw i32 %459, 1
  %467 = icmp eq i32 %466, 1089
  br i1 %467, label %468, label %457, !llvm.loop !413

468:                                              ; preds = %457
  %469 = or i64 %454, 1
  %470 = mul nsw i64 %469, 1096
  %471 = getelementptr inbounds i16, i16* %414, i64 %470
  br label %472

472:                                              ; preds = %472, %468
  %473 = phi i16* [ %471, %468 ], [ %475, %472 ]
  %474 = phi i32 [ 0, %468 ], [ %481, %472 ]
  %475 = getelementptr inbounds i16, i16* %473, i64 1
  %476 = load i16, i16* %473, align 2, !tbaa !73
  %477 = zext i16 %476 to i32
  %478 = call i32 @putc(i32 %477, %struct._IO_FILE* nonnull %380) #25
  %479 = lshr i32 %477, 8
  %480 = call i32 @putc(i32 %479, %struct._IO_FILE* nonnull %380) #25
  %481 = add nuw nsw i32 %474, 1
  %482 = icmp eq i32 %481, 1089
  br i1 %482, label %483, label %472, !llvm.loop !413

483:                                              ; preds = %472
  %484 = getelementptr inbounds i16, i16* %416, i64 %455
  br label %485

485:                                              ; preds = %485, %483
  %486 = phi i16* [ %484, %483 ], [ %488, %485 ]
  %487 = phi i32 [ 0, %483 ], [ %494, %485 ]
  %488 = getelementptr inbounds i16, i16* %486, i64 1
  %489 = load i16, i16* %486, align 2, !tbaa !73
  %490 = zext i16 %489 to i32
  %491 = call i32 @putc(i32 %490, %struct._IO_FILE* nonnull %380) #25
  %492 = lshr i32 %490, 8
  %493 = call i32 @putc(i32 %492, %struct._IO_FILE* nonnull %380) #25
  %494 = add nuw nsw i32 %487, 1
  %495 = icmp eq i32 %494, 1089
  br i1 %495, label %496, label %485, !llvm.loop !413

496:                                              ; preds = %485
  %497 = getelementptr inbounds i16, i16* %416, i64 %470
  br label %498

498:                                              ; preds = %498, %496
  %499 = phi i16* [ %497, %496 ], [ %501, %498 ]
  %500 = phi i32 [ 0, %496 ], [ %507, %498 ]
  %501 = getelementptr inbounds i16, i16* %499, i64 1
  %502 = load i16, i16* %499, align 2, !tbaa !73
  %503 = zext i16 %502 to i32
  %504 = call i32 @putc(i32 %503, %struct._IO_FILE* nonnull %380) #25
  %505 = lshr i32 %503, 8
  %506 = call i32 @putc(i32 %505, %struct._IO_FILE* nonnull %380) #25
  %507 = add nuw nsw i32 %500, 1
  %508 = icmp eq i32 %507, 1089
  br i1 %508, label %509, label %498, !llvm.loop !413

509:                                              ; preds = %498
  %510 = shl nsw i32 %452, 2
  %511 = sext i32 %510 to i64
  %512 = mul nsw i64 %511, 1096
  %513 = getelementptr inbounds i16, i16* %418, i64 %512
  br label %514

514:                                              ; preds = %514, %509
  %515 = phi i16* [ %513, %509 ], [ %517, %514 ]
  %516 = phi i32 [ 0, %509 ], [ %523, %514 ]
  %517 = getelementptr inbounds i16, i16* %515, i64 1
  %518 = load i16, i16* %515, align 2, !tbaa !73
  %519 = zext i16 %518 to i32
  %520 = call i32 @putc(i32 %519, %struct._IO_FILE* nonnull %380) #25
  %521 = lshr i32 %519, 8
  %522 = call i32 @putc(i32 %521, %struct._IO_FILE* nonnull %380) #25
  %523 = add nuw nsw i32 %516, 1
  %524 = icmp eq i32 %523, 1089
  br i1 %524, label %525, label %514, !llvm.loop !413

525:                                              ; preds = %514
  %526 = or i64 %511, 1
  %527 = mul nsw i64 %526, 1096
  %528 = getelementptr inbounds i16, i16* %418, i64 %527
  br label %529

529:                                              ; preds = %529, %525
  %530 = phi i16* [ %528, %525 ], [ %532, %529 ]
  %531 = phi i32 [ 0, %525 ], [ %538, %529 ]
  %532 = getelementptr inbounds i16, i16* %530, i64 1
  %533 = load i16, i16* %530, align 2, !tbaa !73
  %534 = zext i16 %533 to i32
  %535 = call i32 @putc(i32 %534, %struct._IO_FILE* nonnull %380) #25
  %536 = lshr i32 %534, 8
  %537 = call i32 @putc(i32 %536, %struct._IO_FILE* nonnull %380) #25
  %538 = add nuw nsw i32 %531, 1
  %539 = icmp eq i32 %538, 1089
  br i1 %539, label %540, label %529, !llvm.loop !413

540:                                              ; preds = %529
  %541 = or i64 %511, 2
  %542 = mul nsw i64 %541, 1096
  %543 = getelementptr inbounds i16, i16* %418, i64 %542
  br label %544

544:                                              ; preds = %544, %540
  %545 = phi i16* [ %543, %540 ], [ %547, %544 ]
  %546 = phi i32 [ 0, %540 ], [ %553, %544 ]
  %547 = getelementptr inbounds i16, i16* %545, i64 1
  %548 = load i16, i16* %545, align 2, !tbaa !73
  %549 = zext i16 %548 to i32
  %550 = call i32 @putc(i32 %549, %struct._IO_FILE* nonnull %380) #25
  %551 = lshr i32 %549, 8
  %552 = call i32 @putc(i32 %551, %struct._IO_FILE* nonnull %380) #25
  %553 = add nuw nsw i32 %546, 1
  %554 = icmp eq i32 %553, 1089
  br i1 %554, label %555, label %544, !llvm.loop !413

555:                                              ; preds = %544
  %556 = or i64 %511, 3
  %557 = mul nsw i64 %556, 1096
  %558 = getelementptr inbounds i16, i16* %418, i64 %557
  br label %559

559:                                              ; preds = %559, %555
  %560 = phi i16* [ %558, %555 ], [ %562, %559 ]
  %561 = phi i32 [ 0, %555 ], [ %568, %559 ]
  %562 = getelementptr inbounds i16, i16* %560, i64 1
  %563 = load i16, i16* %560, align 2, !tbaa !73
  %564 = zext i16 %563 to i32
  %565 = call i32 @putc(i32 %564, %struct._IO_FILE* nonnull %380) #25
  %566 = lshr i32 %564, 8
  %567 = call i32 @putc(i32 %566, %struct._IO_FILE* nonnull %380) #25
  %568 = add nuw nsw i32 %561, 1
  %569 = icmp eq i32 %568, 1089
  br i1 %569, label %570, label %559, !llvm.loop !413

570:                                              ; preds = %559
  %571 = shl nsw i32 %452, 3
  %572 = sext i32 %571 to i64
  %573 = mul nsw i64 %572, 1096
  %574 = getelementptr inbounds i16, i16* %420, i64 %573
  br label %575

575:                                              ; preds = %575, %570
  %576 = phi i16* [ %574, %570 ], [ %578, %575 ]
  %577 = phi i32 [ 0, %570 ], [ %584, %575 ]
  %578 = getelementptr inbounds i16, i16* %576, i64 1
  %579 = load i16, i16* %576, align 2, !tbaa !73
  %580 = zext i16 %579 to i32
  %581 = call i32 @putc(i32 %580, %struct._IO_FILE* nonnull %380) #25
  %582 = lshr i32 %580, 8
  %583 = call i32 @putc(i32 %582, %struct._IO_FILE* nonnull %380) #25
  %584 = add nuw nsw i32 %577, 1
  %585 = icmp eq i32 %584, 1089
  br i1 %585, label %586, label %575, !llvm.loop !413

586:                                              ; preds = %575
  %587 = or i64 %572, 1
  %588 = mul nsw i64 %587, 1096
  %589 = getelementptr inbounds i16, i16* %420, i64 %588
  br label %590

590:                                              ; preds = %590, %586
  %591 = phi i16* [ %589, %586 ], [ %593, %590 ]
  %592 = phi i32 [ 0, %586 ], [ %599, %590 ]
  %593 = getelementptr inbounds i16, i16* %591, i64 1
  %594 = load i16, i16* %591, align 2, !tbaa !73
  %595 = zext i16 %594 to i32
  %596 = call i32 @putc(i32 %595, %struct._IO_FILE* nonnull %380) #25
  %597 = lshr i32 %595, 8
  %598 = call i32 @putc(i32 %597, %struct._IO_FILE* nonnull %380) #25
  %599 = add nuw nsw i32 %592, 1
  %600 = icmp eq i32 %599, 1089
  br i1 %600, label %601, label %590, !llvm.loop !413

601:                                              ; preds = %590
  %602 = or i64 %572, 2
  %603 = mul nsw i64 %602, 1096
  %604 = getelementptr inbounds i16, i16* %420, i64 %603
  br label %605

605:                                              ; preds = %605, %601
  %606 = phi i16* [ %604, %601 ], [ %608, %605 ]
  %607 = phi i32 [ 0, %601 ], [ %614, %605 ]
  %608 = getelementptr inbounds i16, i16* %606, i64 1
  %609 = load i16, i16* %606, align 2, !tbaa !73
  %610 = zext i16 %609 to i32
  %611 = call i32 @putc(i32 %610, %struct._IO_FILE* nonnull %380) #25
  %612 = lshr i32 %610, 8
  %613 = call i32 @putc(i32 %612, %struct._IO_FILE* nonnull %380) #25
  %614 = add nuw nsw i32 %607, 1
  %615 = icmp eq i32 %614, 1089
  br i1 %615, label %616, label %605, !llvm.loop !413

616:                                              ; preds = %605
  %617 = or i64 %572, 3
  %618 = mul nsw i64 %617, 1096
  %619 = getelementptr inbounds i16, i16* %420, i64 %618
  br label %620

620:                                              ; preds = %620, %616
  %621 = phi i16* [ %619, %616 ], [ %623, %620 ]
  %622 = phi i32 [ 0, %616 ], [ %629, %620 ]
  %623 = getelementptr inbounds i16, i16* %621, i64 1
  %624 = load i16, i16* %621, align 2, !tbaa !73
  %625 = zext i16 %624 to i32
  %626 = call i32 @putc(i32 %625, %struct._IO_FILE* nonnull %380) #25
  %627 = lshr i32 %625, 8
  %628 = call i32 @putc(i32 %627, %struct._IO_FILE* nonnull %380) #25
  %629 = add nuw nsw i32 %622, 1
  %630 = icmp eq i32 %629, 1089
  br i1 %630, label %631, label %620, !llvm.loop !413

631:                                              ; preds = %620
  %632 = or i64 %572, 4
  %633 = mul nsw i64 %632, 1096
  %634 = getelementptr inbounds i16, i16* %420, i64 %633
  br label %635

635:                                              ; preds = %635, %631
  %636 = phi i16* [ %634, %631 ], [ %638, %635 ]
  %637 = phi i32 [ 0, %631 ], [ %644, %635 ]
  %638 = getelementptr inbounds i16, i16* %636, i64 1
  %639 = load i16, i16* %636, align 2, !tbaa !73
  %640 = zext i16 %639 to i32
  %641 = call i32 @putc(i32 %640, %struct._IO_FILE* nonnull %380) #25
  %642 = lshr i32 %640, 8
  %643 = call i32 @putc(i32 %642, %struct._IO_FILE* nonnull %380) #25
  %644 = add nuw nsw i32 %637, 1
  %645 = icmp eq i32 %644, 1089
  br i1 %645, label %646, label %635, !llvm.loop !413

646:                                              ; preds = %635
  %647 = or i64 %572, 5
  %648 = mul nsw i64 %647, 1096
  %649 = getelementptr inbounds i16, i16* %420, i64 %648
  br label %650

650:                                              ; preds = %650, %646
  %651 = phi i16* [ %649, %646 ], [ %653, %650 ]
  %652 = phi i32 [ 0, %646 ], [ %659, %650 ]
  %653 = getelementptr inbounds i16, i16* %651, i64 1
  %654 = load i16, i16* %651, align 2, !tbaa !73
  %655 = zext i16 %654 to i32
  %656 = call i32 @putc(i32 %655, %struct._IO_FILE* nonnull %380) #25
  %657 = lshr i32 %655, 8
  %658 = call i32 @putc(i32 %657, %struct._IO_FILE* nonnull %380) #25
  %659 = add nuw nsw i32 %652, 1
  %660 = icmp eq i32 %659, 1089
  br i1 %660, label %661, label %650, !llvm.loop !413

661:                                              ; preds = %650
  %662 = or i64 %572, 6
  %663 = mul nsw i64 %662, 1096
  %664 = getelementptr inbounds i16, i16* %420, i64 %663
  br label %665

665:                                              ; preds = %665, %661
  %666 = phi i16* [ %664, %661 ], [ %668, %665 ]
  %667 = phi i32 [ 0, %661 ], [ %674, %665 ]
  %668 = getelementptr inbounds i16, i16* %666, i64 1
  %669 = load i16, i16* %666, align 2, !tbaa !73
  %670 = zext i16 %669 to i32
  %671 = call i32 @putc(i32 %670, %struct._IO_FILE* nonnull %380) #25
  %672 = lshr i32 %670, 8
  %673 = call i32 @putc(i32 %672, %struct._IO_FILE* nonnull %380) #25
  %674 = add nuw nsw i32 %667, 1
  %675 = icmp eq i32 %674, 1089
  br i1 %675, label %676, label %665, !llvm.loop !413

676:                                              ; preds = %665
  %677 = or i64 %572, 7
  %678 = mul nsw i64 %677, 1096
  %679 = getelementptr inbounds i16, i16* %420, i64 %678
  br label %680

680:                                              ; preds = %680, %676
  %681 = phi i16* [ %679, %676 ], [ %683, %680 ]
  %682 = phi i32 [ 0, %676 ], [ %689, %680 ]
  %683 = getelementptr inbounds i16, i16* %681, i64 1
  %684 = load i16, i16* %681, align 2, !tbaa !73
  %685 = zext i16 %684 to i32
  %686 = call i32 @putc(i32 %685, %struct._IO_FILE* nonnull %380) #25
  %687 = lshr i32 %685, 8
  %688 = call i32 @putc(i32 %687, %struct._IO_FILE* nonnull %380) #25
  %689 = add nuw nsw i32 %682, 1
  %690 = icmp eq i32 %689, 1089
  br i1 %690, label %691, label %680, !llvm.loop !413

691:                                              ; preds = %680
  %692 = getelementptr inbounds i16, i16* %423, i64 %573
  br label %693

693:                                              ; preds = %693, %691
  %694 = phi i16* [ %692, %691 ], [ %696, %693 ]
  %695 = phi i32 [ 0, %691 ], [ %702, %693 ]
  %696 = getelementptr inbounds i16, i16* %694, i64 1
  %697 = load i16, i16* %694, align 2, !tbaa !73
  %698 = zext i16 %697 to i32
  %699 = call i32 @putc(i32 %698, %struct._IO_FILE* nonnull %380) #25
  %700 = lshr i32 %698, 8
  %701 = call i32 @putc(i32 %700, %struct._IO_FILE* nonnull %380) #25
  %702 = add nuw nsw i32 %695, 1
  %703 = icmp eq i32 %702, 1089
  br i1 %703, label %704, label %693, !llvm.loop !413

704:                                              ; preds = %693
  %705 = getelementptr inbounds i16, i16* %423, i64 %588
  br label %706

706:                                              ; preds = %706, %704
  %707 = phi i16* [ %705, %704 ], [ %709, %706 ]
  %708 = phi i32 [ 0, %704 ], [ %715, %706 ]
  %709 = getelementptr inbounds i16, i16* %707, i64 1
  %710 = load i16, i16* %707, align 2, !tbaa !73
  %711 = zext i16 %710 to i32
  %712 = call i32 @putc(i32 %711, %struct._IO_FILE* nonnull %380) #25
  %713 = lshr i32 %711, 8
  %714 = call i32 @putc(i32 %713, %struct._IO_FILE* nonnull %380) #25
  %715 = add nuw nsw i32 %708, 1
  %716 = icmp eq i32 %715, 1089
  br i1 %716, label %717, label %706, !llvm.loop !413

717:                                              ; preds = %706
  %718 = getelementptr inbounds i16, i16* %423, i64 %603
  br label %719

719:                                              ; preds = %719, %717
  %720 = phi i16* [ %718, %717 ], [ %722, %719 ]
  %721 = phi i32 [ 0, %717 ], [ %728, %719 ]
  %722 = getelementptr inbounds i16, i16* %720, i64 1
  %723 = load i16, i16* %720, align 2, !tbaa !73
  %724 = zext i16 %723 to i32
  %725 = call i32 @putc(i32 %724, %struct._IO_FILE* nonnull %380) #25
  %726 = lshr i32 %724, 8
  %727 = call i32 @putc(i32 %726, %struct._IO_FILE* nonnull %380) #25
  %728 = add nuw nsw i32 %721, 1
  %729 = icmp eq i32 %728, 1089
  br i1 %729, label %730, label %719, !llvm.loop !413

730:                                              ; preds = %719
  %731 = getelementptr inbounds i16, i16* %423, i64 %618
  br label %732

732:                                              ; preds = %732, %730
  %733 = phi i16* [ %731, %730 ], [ %735, %732 ]
  %734 = phi i32 [ 0, %730 ], [ %741, %732 ]
  %735 = getelementptr inbounds i16, i16* %733, i64 1
  %736 = load i16, i16* %733, align 2, !tbaa !73
  %737 = zext i16 %736 to i32
  %738 = call i32 @putc(i32 %737, %struct._IO_FILE* nonnull %380) #25
  %739 = lshr i32 %737, 8
  %740 = call i32 @putc(i32 %739, %struct._IO_FILE* nonnull %380) #25
  %741 = add nuw nsw i32 %734, 1
  %742 = icmp eq i32 %741, 1089
  br i1 %742, label %743, label %732, !llvm.loop !413

743:                                              ; preds = %732
  %744 = getelementptr inbounds i16, i16* %423, i64 %633
  br label %745

745:                                              ; preds = %745, %743
  %746 = phi i16* [ %744, %743 ], [ %748, %745 ]
  %747 = phi i32 [ 0, %743 ], [ %754, %745 ]
  %748 = getelementptr inbounds i16, i16* %746, i64 1
  %749 = load i16, i16* %746, align 2, !tbaa !73
  %750 = zext i16 %749 to i32
  %751 = call i32 @putc(i32 %750, %struct._IO_FILE* nonnull %380) #25
  %752 = lshr i32 %750, 8
  %753 = call i32 @putc(i32 %752, %struct._IO_FILE* nonnull %380) #25
  %754 = add nuw nsw i32 %747, 1
  %755 = icmp eq i32 %754, 1089
  br i1 %755, label %756, label %745, !llvm.loop !413

756:                                              ; preds = %745
  %757 = getelementptr inbounds i16, i16* %423, i64 %648
  br label %758

758:                                              ; preds = %758, %756
  %759 = phi i16* [ %757, %756 ], [ %761, %758 ]
  %760 = phi i32 [ 0, %756 ], [ %767, %758 ]
  %761 = getelementptr inbounds i16, i16* %759, i64 1
  %762 = load i16, i16* %759, align 2, !tbaa !73
  %763 = zext i16 %762 to i32
  %764 = call i32 @putc(i32 %763, %struct._IO_FILE* nonnull %380) #25
  %765 = lshr i32 %763, 8
  %766 = call i32 @putc(i32 %765, %struct._IO_FILE* nonnull %380) #25
  %767 = add nuw nsw i32 %760, 1
  %768 = icmp eq i32 %767, 1089
  br i1 %768, label %769, label %758, !llvm.loop !413

769:                                              ; preds = %758
  %770 = getelementptr inbounds i16, i16* %423, i64 %663
  br label %771

771:                                              ; preds = %771, %769
  %772 = phi i16* [ %770, %769 ], [ %774, %771 ]
  %773 = phi i32 [ 0, %769 ], [ %780, %771 ]
  %774 = getelementptr inbounds i16, i16* %772, i64 1
  %775 = load i16, i16* %772, align 2, !tbaa !73
  %776 = zext i16 %775 to i32
  %777 = call i32 @putc(i32 %776, %struct._IO_FILE* nonnull %380) #25
  %778 = lshr i32 %776, 8
  %779 = call i32 @putc(i32 %778, %struct._IO_FILE* nonnull %380) #25
  %780 = add nuw nsw i32 %773, 1
  %781 = icmp eq i32 %780, 1089
  br i1 %781, label %782, label %771, !llvm.loop !413

782:                                              ; preds = %771
  %783 = getelementptr inbounds i16, i16* %423, i64 %678
  br label %784

784:                                              ; preds = %784, %782
  %785 = phi i16* [ %783, %782 ], [ %787, %784 ]
  %786 = phi i32 [ 0, %782 ], [ %793, %784 ]
  %787 = getelementptr inbounds i16, i16* %785, i64 1
  %788 = load i16, i16* %785, align 2, !tbaa !73
  %789 = zext i16 %788 to i32
  %790 = call i32 @putc(i32 %789, %struct._IO_FILE* nonnull %380) #25
  %791 = lshr i32 %789, 8
  %792 = call i32 @putc(i32 %791, %struct._IO_FILE* nonnull %380) #25
  %793 = add nuw nsw i32 %786, 1
  %794 = icmp eq i32 %793, 1089
  br i1 %794, label %795, label %784, !llvm.loop !413

795:                                              ; preds = %784
  %796 = shl nsw i32 %452, 4
  %797 = sext i32 %796 to i64
  %798 = mul nsw i64 %797, 1096
  %799 = getelementptr inbounds i16, i16* %426, i64 %798
  br label %800

800:                                              ; preds = %800, %795
  %801 = phi i16* [ %799, %795 ], [ %803, %800 ]
  %802 = phi i32 [ 0, %795 ], [ %809, %800 ]
  %803 = getelementptr inbounds i16, i16* %801, i64 1
  %804 = load i16, i16* %801, align 2, !tbaa !73
  %805 = zext i16 %804 to i32
  %806 = call i32 @putc(i32 %805, %struct._IO_FILE* nonnull %380) #25
  %807 = lshr i32 %805, 8
  %808 = call i32 @putc(i32 %807, %struct._IO_FILE* nonnull %380) #25
  %809 = add nuw nsw i32 %802, 1
  %810 = icmp eq i32 %809, 1089
  br i1 %810, label %811, label %800, !llvm.loop !413

811:                                              ; preds = %800
  %812 = or i64 %797, 1
  %813 = mul nsw i64 %812, 1096
  %814 = getelementptr inbounds i16, i16* %426, i64 %813
  br label %815

815:                                              ; preds = %815, %811
  %816 = phi i16* [ %814, %811 ], [ %818, %815 ]
  %817 = phi i32 [ 0, %811 ], [ %824, %815 ]
  %818 = getelementptr inbounds i16, i16* %816, i64 1
  %819 = load i16, i16* %816, align 2, !tbaa !73
  %820 = zext i16 %819 to i32
  %821 = call i32 @putc(i32 %820, %struct._IO_FILE* nonnull %380) #25
  %822 = lshr i32 %820, 8
  %823 = call i32 @putc(i32 %822, %struct._IO_FILE* nonnull %380) #25
  %824 = add nuw nsw i32 %817, 1
  %825 = icmp eq i32 %824, 1089
  br i1 %825, label %826, label %815, !llvm.loop !413

826:                                              ; preds = %815
  %827 = or i64 %797, 2
  %828 = mul nsw i64 %827, 1096
  %829 = getelementptr inbounds i16, i16* %426, i64 %828
  br label %830

830:                                              ; preds = %830, %826
  %831 = phi i16* [ %829, %826 ], [ %833, %830 ]
  %832 = phi i32 [ 0, %826 ], [ %839, %830 ]
  %833 = getelementptr inbounds i16, i16* %831, i64 1
  %834 = load i16, i16* %831, align 2, !tbaa !73
  %835 = zext i16 %834 to i32
  %836 = call i32 @putc(i32 %835, %struct._IO_FILE* nonnull %380) #25
  %837 = lshr i32 %835, 8
  %838 = call i32 @putc(i32 %837, %struct._IO_FILE* nonnull %380) #25
  %839 = add nuw nsw i32 %832, 1
  %840 = icmp eq i32 %839, 1089
  br i1 %840, label %841, label %830, !llvm.loop !413

841:                                              ; preds = %830
  %842 = or i64 %797, 3
  %843 = mul nsw i64 %842, 1096
  %844 = getelementptr inbounds i16, i16* %426, i64 %843
  br label %845

845:                                              ; preds = %845, %841
  %846 = phi i16* [ %844, %841 ], [ %848, %845 ]
  %847 = phi i32 [ 0, %841 ], [ %854, %845 ]
  %848 = getelementptr inbounds i16, i16* %846, i64 1
  %849 = load i16, i16* %846, align 2, !tbaa !73
  %850 = zext i16 %849 to i32
  %851 = call i32 @putc(i32 %850, %struct._IO_FILE* nonnull %380) #25
  %852 = lshr i32 %850, 8
  %853 = call i32 @putc(i32 %852, %struct._IO_FILE* nonnull %380) #25
  %854 = add nuw nsw i32 %847, 1
  %855 = icmp eq i32 %854, 1089
  br i1 %855, label %856, label %845, !llvm.loop !413

856:                                              ; preds = %845
  %857 = or i64 %797, 4
  %858 = mul nsw i64 %857, 1096
  %859 = getelementptr inbounds i16, i16* %426, i64 %858
  br label %860

860:                                              ; preds = %860, %856
  %861 = phi i16* [ %859, %856 ], [ %863, %860 ]
  %862 = phi i32 [ 0, %856 ], [ %869, %860 ]
  %863 = getelementptr inbounds i16, i16* %861, i64 1
  %864 = load i16, i16* %861, align 2, !tbaa !73
  %865 = zext i16 %864 to i32
  %866 = call i32 @putc(i32 %865, %struct._IO_FILE* nonnull %380) #25
  %867 = lshr i32 %865, 8
  %868 = call i32 @putc(i32 %867, %struct._IO_FILE* nonnull %380) #25
  %869 = add nuw nsw i32 %862, 1
  %870 = icmp eq i32 %869, 1089
  br i1 %870, label %871, label %860, !llvm.loop !413

871:                                              ; preds = %860
  %872 = or i64 %797, 5
  %873 = mul nsw i64 %872, 1096
  %874 = getelementptr inbounds i16, i16* %426, i64 %873
  br label %875

875:                                              ; preds = %875, %871
  %876 = phi i16* [ %874, %871 ], [ %878, %875 ]
  %877 = phi i32 [ 0, %871 ], [ %884, %875 ]
  %878 = getelementptr inbounds i16, i16* %876, i64 1
  %879 = load i16, i16* %876, align 2, !tbaa !73
  %880 = zext i16 %879 to i32
  %881 = call i32 @putc(i32 %880, %struct._IO_FILE* nonnull %380) #25
  %882 = lshr i32 %880, 8
  %883 = call i32 @putc(i32 %882, %struct._IO_FILE* nonnull %380) #25
  %884 = add nuw nsw i32 %877, 1
  %885 = icmp eq i32 %884, 1089
  br i1 %885, label %886, label %875, !llvm.loop !413

886:                                              ; preds = %875
  %887 = or i64 %797, 6
  %888 = mul nsw i64 %887, 1096
  %889 = getelementptr inbounds i16, i16* %426, i64 %888
  br label %890

890:                                              ; preds = %890, %886
  %891 = phi i16* [ %889, %886 ], [ %893, %890 ]
  %892 = phi i32 [ 0, %886 ], [ %899, %890 ]
  %893 = getelementptr inbounds i16, i16* %891, i64 1
  %894 = load i16, i16* %891, align 2, !tbaa !73
  %895 = zext i16 %894 to i32
  %896 = call i32 @putc(i32 %895, %struct._IO_FILE* nonnull %380) #25
  %897 = lshr i32 %895, 8
  %898 = call i32 @putc(i32 %897, %struct._IO_FILE* nonnull %380) #25
  %899 = add nuw nsw i32 %892, 1
  %900 = icmp eq i32 %899, 1089
  br i1 %900, label %901, label %890, !llvm.loop !413

901:                                              ; preds = %890
  %902 = or i64 %797, 7
  %903 = mul nsw i64 %902, 1096
  %904 = getelementptr inbounds i16, i16* %426, i64 %903
  br label %905

905:                                              ; preds = %905, %901
  %906 = phi i16* [ %904, %901 ], [ %908, %905 ]
  %907 = phi i32 [ 0, %901 ], [ %914, %905 ]
  %908 = getelementptr inbounds i16, i16* %906, i64 1
  %909 = load i16, i16* %906, align 2, !tbaa !73
  %910 = zext i16 %909 to i32
  %911 = call i32 @putc(i32 %910, %struct._IO_FILE* nonnull %380) #25
  %912 = lshr i32 %910, 8
  %913 = call i32 @putc(i32 %912, %struct._IO_FILE* nonnull %380) #25
  %914 = add nuw nsw i32 %907, 1
  %915 = icmp eq i32 %914, 1089
  br i1 %915, label %916, label %905, !llvm.loop !413

916:                                              ; preds = %905
  %917 = or i64 %797, 8
  %918 = mul nsw i64 %917, 1096
  %919 = getelementptr inbounds i16, i16* %426, i64 %918
  br label %920

920:                                              ; preds = %920, %916
  %921 = phi i16* [ %919, %916 ], [ %923, %920 ]
  %922 = phi i32 [ 0, %916 ], [ %929, %920 ]
  %923 = getelementptr inbounds i16, i16* %921, i64 1
  %924 = load i16, i16* %921, align 2, !tbaa !73
  %925 = zext i16 %924 to i32
  %926 = call i32 @putc(i32 %925, %struct._IO_FILE* nonnull %380) #25
  %927 = lshr i32 %925, 8
  %928 = call i32 @putc(i32 %927, %struct._IO_FILE* nonnull %380) #25
  %929 = add nuw nsw i32 %922, 1
  %930 = icmp eq i32 %929, 1089
  br i1 %930, label %931, label %920, !llvm.loop !413

931:                                              ; preds = %920
  %932 = or i64 %797, 9
  %933 = mul nsw i64 %932, 1096
  %934 = getelementptr inbounds i16, i16* %426, i64 %933
  br label %935

935:                                              ; preds = %935, %931
  %936 = phi i16* [ %934, %931 ], [ %938, %935 ]
  %937 = phi i32 [ 0, %931 ], [ %944, %935 ]
  %938 = getelementptr inbounds i16, i16* %936, i64 1
  %939 = load i16, i16* %936, align 2, !tbaa !73
  %940 = zext i16 %939 to i32
  %941 = call i32 @putc(i32 %940, %struct._IO_FILE* nonnull %380) #25
  %942 = lshr i32 %940, 8
  %943 = call i32 @putc(i32 %942, %struct._IO_FILE* nonnull %380) #25
  %944 = add nuw nsw i32 %937, 1
  %945 = icmp eq i32 %944, 1089
  br i1 %945, label %946, label %935, !llvm.loop !413

946:                                              ; preds = %935
  %947 = or i64 %797, 10
  %948 = mul nsw i64 %947, 1096
  %949 = getelementptr inbounds i16, i16* %426, i64 %948
  br label %950

950:                                              ; preds = %950, %946
  %951 = phi i16* [ %949, %946 ], [ %953, %950 ]
  %952 = phi i32 [ 0, %946 ], [ %959, %950 ]
  %953 = getelementptr inbounds i16, i16* %951, i64 1
  %954 = load i16, i16* %951, align 2, !tbaa !73
  %955 = zext i16 %954 to i32
  %956 = call i32 @putc(i32 %955, %struct._IO_FILE* nonnull %380) #25
  %957 = lshr i32 %955, 8
  %958 = call i32 @putc(i32 %957, %struct._IO_FILE* nonnull %380) #25
  %959 = add nuw nsw i32 %952, 1
  %960 = icmp eq i32 %959, 1089
  br i1 %960, label %961, label %950, !llvm.loop !413

961:                                              ; preds = %950
  %962 = or i64 %797, 11
  %963 = mul nsw i64 %962, 1096
  %964 = getelementptr inbounds i16, i16* %426, i64 %963
  br label %965

965:                                              ; preds = %965, %961
  %966 = phi i16* [ %964, %961 ], [ %968, %965 ]
  %967 = phi i32 [ 0, %961 ], [ %974, %965 ]
  %968 = getelementptr inbounds i16, i16* %966, i64 1
  %969 = load i16, i16* %966, align 2, !tbaa !73
  %970 = zext i16 %969 to i32
  %971 = call i32 @putc(i32 %970, %struct._IO_FILE* nonnull %380) #25
  %972 = lshr i32 %970, 8
  %973 = call i32 @putc(i32 %972, %struct._IO_FILE* nonnull %380) #25
  %974 = add nuw nsw i32 %967, 1
  %975 = icmp eq i32 %974, 1089
  br i1 %975, label %976, label %965, !llvm.loop !413

976:                                              ; preds = %965
  %977 = or i64 %797, 12
  %978 = mul nsw i64 %977, 1096
  %979 = getelementptr inbounds i16, i16* %426, i64 %978
  br label %980

980:                                              ; preds = %980, %976
  %981 = phi i16* [ %979, %976 ], [ %983, %980 ]
  %982 = phi i32 [ 0, %976 ], [ %989, %980 ]
  %983 = getelementptr inbounds i16, i16* %981, i64 1
  %984 = load i16, i16* %981, align 2, !tbaa !73
  %985 = zext i16 %984 to i32
  %986 = call i32 @putc(i32 %985, %struct._IO_FILE* nonnull %380) #25
  %987 = lshr i32 %985, 8
  %988 = call i32 @putc(i32 %987, %struct._IO_FILE* nonnull %380) #25
  %989 = add nuw nsw i32 %982, 1
  %990 = icmp eq i32 %989, 1089
  br i1 %990, label %991, label %980, !llvm.loop !413

991:                                              ; preds = %980
  %992 = or i64 %797, 13
  %993 = mul nsw i64 %992, 1096
  %994 = getelementptr inbounds i16, i16* %426, i64 %993
  br label %995

995:                                              ; preds = %995, %991
  %996 = phi i16* [ %994, %991 ], [ %998, %995 ]
  %997 = phi i32 [ 0, %991 ], [ %1004, %995 ]
  %998 = getelementptr inbounds i16, i16* %996, i64 1
  %999 = load i16, i16* %996, align 2, !tbaa !73
  %1000 = zext i16 %999 to i32
  %1001 = call i32 @putc(i32 %1000, %struct._IO_FILE* nonnull %380) #25
  %1002 = lshr i32 %1000, 8
  %1003 = call i32 @putc(i32 %1002, %struct._IO_FILE* nonnull %380) #25
  %1004 = add nuw nsw i32 %997, 1
  %1005 = icmp eq i32 %1004, 1089
  br i1 %1005, label %1006, label %995, !llvm.loop !413

1006:                                             ; preds = %995
  %1007 = or i64 %797, 14
  %1008 = mul nsw i64 %1007, 1096
  %1009 = getelementptr inbounds i16, i16* %426, i64 %1008
  br label %1010

1010:                                             ; preds = %1010, %1006
  %1011 = phi i16* [ %1009, %1006 ], [ %1013, %1010 ]
  %1012 = phi i32 [ 0, %1006 ], [ %1019, %1010 ]
  %1013 = getelementptr inbounds i16, i16* %1011, i64 1
  %1014 = load i16, i16* %1011, align 2, !tbaa !73
  %1015 = zext i16 %1014 to i32
  %1016 = call i32 @putc(i32 %1015, %struct._IO_FILE* nonnull %380) #25
  %1017 = lshr i32 %1015, 8
  %1018 = call i32 @putc(i32 %1017, %struct._IO_FILE* nonnull %380) #25
  %1019 = add nuw nsw i32 %1012, 1
  %1020 = icmp eq i32 %1019, 1089
  br i1 %1020, label %1021, label %1010, !llvm.loop !413

1021:                                             ; preds = %1010
  %1022 = or i64 %797, 15
  %1023 = mul nsw i64 %1022, 1096
  %1024 = getelementptr inbounds i16, i16* %426, i64 %1023
  br label %1025

1025:                                             ; preds = %1025, %1021
  %1026 = phi i16* [ %1024, %1021 ], [ %1028, %1025 ]
  %1027 = phi i32 [ 0, %1021 ], [ %1034, %1025 ]
  %1028 = getelementptr inbounds i16, i16* %1026, i64 1
  %1029 = load i16, i16* %1026, align 2, !tbaa !73
  %1030 = zext i16 %1029 to i32
  %1031 = call i32 @putc(i32 %1030, %struct._IO_FILE* nonnull %380) #25
  %1032 = lshr i32 %1030, 8
  %1033 = call i32 @putc(i32 %1032, %struct._IO_FILE* nonnull %380) #25
  %1034 = add nuw nsw i32 %1027, 1
  %1035 = icmp eq i32 %1034, 1089
  br i1 %1035, label %1036, label %1025, !llvm.loop !413

1036:                                             ; preds = %1025
  %1037 = add nsw i64 %437, 1
  %1038 = trunc i64 %1037 to i32
  %1039 = icmp eq i32 %432, %1038
  br i1 %1039, label %1040, label %436, !llvm.loop !414

1040:                                             ; preds = %1036, %427
  %1041 = add nuw nsw i64 %429, 1
  %1042 = icmp eq i64 %1041, 6
  br i1 %1042, label %1046, label %1043, !llvm.loop !415

1043:                                             ; preds = %1040
  %1044 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 %1041
  %1045 = load i32, i32* %1044, align 4, !tbaa !10
  br label %427

1046:                                             ; preds = %1040
  %1047 = call i32 @fclose(%struct._IO_FILE* nonnull %380) #25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %381) #25
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %32, i32 6)
  br label %1048

1048:                                             ; preds = %375, %1046
  call void @free(i8* %119) #25
  call void @free(i8* %159) #25
  %1049 = bitcast %struct.image_i16* %83 to i8*
  call void @free(i8* %1049) #25
  call void @free(i8* %147) #25
  %1050 = bitcast %struct.image_i16* %86 to i8*
  call void @free(i8* %1050) #25
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %32, i32 0)
  call void @pb_PrintTimerSet(%struct.pb_TimerSet* nonnull %32)
  call void @free(i8* %377) #25
  %1051 = load i8*, i8** %68, align 8, !tbaa !9
  %1052 = icmp eq i8* %1051, null
  br i1 %1052, label %1059, label %1053

1053:                                             ; preds = %1048, %1053
  %1054 = phi i8* [ %1057, %1053 ], [ %1051, %1048 ]
  %1055 = phi i8** [ %1056, %1053 ], [ %68, %1048 ]
  call void @free(i8* nonnull %1054) #25
  %1056 = getelementptr inbounds i8*, i8** %1055, i64 1
  %1057 = load i8*, i8** %1056, align 8, !tbaa !9
  %1058 = icmp eq i8* %1057, null
  br i1 %1058, label %1059, label %1053, !llvm.loop !28

1059:                                             ; preds = %1053, %1048
  %1060 = bitcast i8** %68 to i8*
  call void @free(i8* %1060) #25
  %1061 = bitcast %struct.pb_Parameters* %66 to i8*
  call void @free(i8* %1061) #25
  call void @llvm.lifetime.end.p0i8(i64 288, i8* nonnull %36) #25
  ret i32 0
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias %struct.image_i16* @load_image(i8* %0) local_unnamed_addr #0 {
  %2 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0))
  %3 = icmp eq %struct._IO_FILE* %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i8* %0) #27
  tail call void @exit(i32 -1) #29
  unreachable

7:                                                ; preds = %1
  %8 = tail call i32 @fgetc(%struct._IO_FILE* nonnull %2) #25
  %9 = tail call i32 @fgetc(%struct._IO_FILE* nonnull %2) #25
  %10 = shl i32 %9, 8
  %11 = add nsw i32 %10, %8
  %12 = and i32 %11, 65535
  %13 = tail call i32 @fgetc(%struct._IO_FILE* nonnull %2) #25
  %14 = tail call i32 @fgetc(%struct._IO_FILE* nonnull %2) #25
  %15 = shl i32 %14, 8
  %16 = add nsw i32 %15, %13
  %17 = and i32 %16, 65535
  %18 = mul nuw nsw i32 %17, %12
  %19 = zext i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 1
  %21 = tail call noalias align 16 i8* @malloc(i64 %20) #25
  %22 = tail call i64 @fread(i8* %21, i64 2, i64 %19, %struct._IO_FILE* nonnull %2)
  %23 = tail call i32 @fclose(%struct._IO_FILE* nonnull %2)
  %24 = tail call noalias align 16 dereferenceable_or_null(16) i8* @malloc(i64 16) #25
  %25 = bitcast i8* %24 to %struct.image_i16*
  %26 = getelementptr inbounds %struct.image_i16, %struct.image_i16* %25, i64 0, i32 0
  store i32 %12, i32* %26, align 16, !tbaa !409
  %27 = getelementptr inbounds %struct.image_i16, %struct.image_i16* %25, i64 0, i32 1
  store i32 %17, i32* %27, align 4, !tbaa !411
  %28 = getelementptr inbounds %struct.image_i16, %struct.image_i16* %25, i64 0, i32 2
  %29 = bitcast i16** %28 to i8**
  store i8* %21, i8** %29, align 8, !tbaa !412
  ret %struct.image_i16* %25
}

declare dso_local i32 @hipMalloc(i8**, i64) local_unnamed_addr #12

declare dso_local i32 @hipGetLastError() local_unnamed_addr #12

declare dso_local i8* @hipGetErrorString(i32) local_unnamed_addr #12

declare dso_local i32 @hipMallocArray(%struct.hipArray**, %struct.hipChannelFormatDesc*, i64, i64, i32) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local nonnull align 8 dereferenceable(88) %struct.texture* @_Z7get_refv() local_unnamed_addr #9 {
  ret %struct.texture* @ref
}

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #12

declare dso_local i32 @hipMemcpy2DToArray(%struct.hipArray*, i64, i64, i8*, i64, i64, i64, i32) local_unnamed_addr #12

declare dso_local i32 @hipMemset(i8*, i32, i64) local_unnamed_addr #12

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #12

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #18

; Function Attrs: norecurse uwtable
define dso_local void @_Z26__device_stub__mb_sad_calcPtS_ii(i16* %0, i16* %1, i32 %2, i32 %3) #16 {
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dim3, align 8
  %10 = alloca %struct.dim3, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i16* %0, i16** %5, align 8, !tbaa !9
  store i16* %1, i16** %6, align 8, !tbaa !9
  store i32 %2, i32* %7, align 4, !tbaa !10
  store i32 %3, i32* %8, align 4, !tbaa !10
  %13 = alloca [4 x i8*], align 16
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 0
  %15 = bitcast [4 x i8*]* %13 to i16***
  store i16** %5, i16*** %15, align 16
  %16 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 1
  %17 = bitcast i8** %16 to i16***
  store i16** %6, i16*** %17, align 8
  %18 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 2
  %19 = bitcast i8** %18 to i32**
  store i32* %7, i32** %19, align 16
  %20 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 3
  %21 = bitcast i8** %20 to i32**
  store i32* %8, i32** %21, align 8
  %22 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %9, %struct.dim3* nonnull %10, i64* nonnull %11, i8** nonnull %12)
  %23 = load i64, i64* %11, align 8
  %24 = bitcast i8** %12 to %struct.ihipStream_t**
  %25 = load %struct.ihipStream_t*, %struct.ihipStream_t** %24, align 8
  %26 = bitcast %struct.dim3* %9 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.dim3, %struct.dim3* %9, i64 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = bitcast %struct.dim3* %10 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.dim3, %struct.dim3* %10, i64 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @hipLaunchKernel(i8* bitcast (void (i16*, i16*, i32, i32)** @_Z11mb_sad_calcPtS_ii to i8*), i64 %27, i32 %29, i64 %31, i32 %33, i8** nonnull %14, i64 %23, %struct.ihipStream_t* %25)
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local void @_Z32__device_stub__larger_sad_calc_8Ptii(i16* %0, i32 %1, i32 %2) #16 {
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i16* %0, i16** %4, align 8, !tbaa !9
  store i32 %1, i32* %5, align 4, !tbaa !10
  store i32 %2, i32* %6, align 4, !tbaa !10
  %11 = alloca [3 x i8*], align 16
  %12 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %13 = bitcast [3 x i8*]* %11 to i16***
  store i16** %4, i16*** %13, align 16
  %14 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 1
  %15 = bitcast i8** %14 to i32**
  store i32* %5, i32** %15, align 8
  %16 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 2
  %17 = bitcast i8** %16 to i32**
  store i32* %6, i32** %17, align 16
  %18 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %7, %struct.dim3* nonnull %8, i64* nonnull %9, i8** nonnull %10)
  %19 = load i64, i64* %9, align 8
  %20 = bitcast i8** %10 to %struct.ihipStream_t**
  %21 = load %struct.ihipStream_t*, %struct.ihipStream_t** %20, align 8
  %22 = bitcast %struct.dim3* %7 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.dim3, %struct.dim3* %7, i64 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = bitcast %struct.dim3* %8 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.dim3, %struct.dim3* %8, i64 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @hipLaunchKernel(i8* bitcast (void (i16*, i32, i32)** @_Z17larger_sad_calc_8Ptii to i8*), i64 %23, i32 %25, i64 %27, i32 %29, i8** nonnull %12, i64 %19, %struct.ihipStream_t* %21)
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local void @_Z33__device_stub__larger_sad_calc_16Ptii(i16* %0, i32 %1, i32 %2) #16 {
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i16* %0, i16** %4, align 8, !tbaa !9
  store i32 %1, i32* %5, align 4, !tbaa !10
  store i32 %2, i32* %6, align 4, !tbaa !10
  %11 = alloca [3 x i8*], align 16
  %12 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %13 = bitcast [3 x i8*]* %11 to i16***
  store i16** %4, i16*** %13, align 16
  %14 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 1
  %15 = bitcast i8** %14 to i32**
  store i32* %5, i32** %15, align 8
  %16 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 2
  %17 = bitcast i8** %16 to i32**
  store i32* %6, i32** %17, align 16
  %18 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %7, %struct.dim3* nonnull %8, i64* nonnull %9, i8** nonnull %10)
  %19 = load i64, i64* %9, align 8
  %20 = bitcast i8** %10 to %struct.ihipStream_t**
  %21 = load %struct.ihipStream_t*, %struct.ihipStream_t** %20, align 8
  %22 = bitcast %struct.dim3* %7 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.dim3, %struct.dim3* %7, i64 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = bitcast %struct.dim3* %8 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.dim3, %struct.dim3* %8, i64 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @hipLaunchKernel(i8* bitcast (void (i16*, i32, i32)** @_Z18larger_sad_calc_16Ptii to i8*), i64 %23, i32 %25, i64 %27, i32 %29, i8** nonnull %12, i64 %19, %struct.ihipStream_t* %21)
  ret void
}

declare dso_local i32 @hipFree(i8*) local_unnamed_addr #12

declare dso_local i32 @hipFreeArray(%struct.hipArray*) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local void @free_image(%struct.image_i16* nocapture %0) local_unnamed_addr #19 {
  %2 = getelementptr inbounds %struct.image_i16, %struct.image_i16* %0, i64 0, i32 2
  %3 = bitcast i16** %2 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !412
  tail call void @free(i8* %4) #25
  %5 = bitcast %struct.image_i16* %0 to i8*
  tail call void @free(i8* %5) #25
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local zeroext i16 @read16u(%struct._IO_FILE* nocapture %0) local_unnamed_addr #8 {
  %2 = tail call i32 @fgetc(%struct._IO_FILE* %0)
  %3 = tail call i32 @fgetc(%struct._IO_FILE* %0)
  %4 = shl i32 %3, 8
  %5 = add nsw i32 %4, %2
  %6 = trunc i32 %5 to i16
  ret i16 %6
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fgetc(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local signext i16 @read16i(%struct._IO_FILE* nocapture %0) local_unnamed_addr #8 {
  %2 = tail call i32 @fgetc(%struct._IO_FILE* %0)
  %3 = tail call i32 @fgetc(%struct._IO_FILE* %0)
  %4 = shl i32 %3, 8
  %5 = add nsw i32 %4, %2
  %6 = trunc i32 %5 to i16
  ret i16 %6
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @write32u(%struct._IO_FILE* nocapture %0, i32 %1) local_unnamed_addr #8 {
  %3 = tail call i32 @putc(i32 %1, %struct._IO_FILE* %0)
  %4 = lshr i32 %1, 8
  %5 = tail call i32 @putc(i32 %4, %struct._IO_FILE* %0)
  %6 = lshr i32 %1, 16
  %7 = tail call i32 @putc(i32 %6, %struct._IO_FILE* %0)
  %8 = lshr i32 %1, 24
  %9 = tail call i32 @putc(i32 %8, %struct._IO_FILE* %0)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @putc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @write16u(%struct._IO_FILE* nocapture %0, i16 zeroext %1) local_unnamed_addr #8 {
  %3 = zext i16 %1 to i32
  %4 = tail call i32 @putc(i32 %3, %struct._IO_FILE* %0)
  %5 = lshr i32 %3, 8
  %6 = tail call i32 @putc(i32 %5, %struct._IO_FILE* %0)
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @write16i(%struct._IO_FILE* nocapture %0, i16 signext %1) local_unnamed_addr #8 {
  %3 = sext i16 %1 to i32
  %4 = tail call i32 @putc(i32 %3, %struct._IO_FILE* %0)
  %5 = ashr i32 %3, 8
  %6 = tail call i32 @putc(i32 %5, %struct._IO_FILE* %0)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fread(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

declare dso_local i32 @hipEventCreate(%struct.ihipEvent_t**) local_unnamed_addr #12

declare dso_local i32 @hipEventRecord(%struct.ihipEvent_t*, %struct.ihipStream_t*) local_unnamed_addr #12

declare dso_local i32 @hipEventElapsedTime(float*, %struct.ihipEvent_t*, %struct.ihipEvent_t*) local_unnamed_addr #12

declare dso_local i32 @hipGetChannelDesc(%struct.hipChannelFormatDesc*, %struct.hipArray*) local_unnamed_addr #12

declare dso_local i32 @hipBindTextureToArray(%struct.textureReference*, %struct.hipArray*, %struct.hipChannelFormatDesc*) local_unnamed_addr #12

declare dso_local i32 @hipUnbindTexture(%struct.textureReference*) local_unnamed_addr #12

declare dso_local void @hipCreateChannelDesc(%struct.hipChannelFormatDesc* sret(%struct.hipChannelFormatDesc) align 4, i32, i32, i32, i32, i32) local_unnamed_addr #12

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_sad.cpp() #20 section ".text.startup" {
  %1 = alloca %struct.hipChannelFormatDesc, align 4
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, <4 x i32>* bitcast (%struct.texture* @ref to <4 x i32>*), align 16, !tbaa !12
  store i32 1, i32* getelementptr inbounds (%struct.texture, %struct.texture* @ref, i64 0, i32 0, i32 3, i64 1), align 16, !tbaa !416
  store i32 1, i32* getelementptr inbounds (%struct.texture, %struct.texture* @ref, i64 0, i32 0, i32 3, i64 2), align 4, !tbaa !416
  %2 = bitcast %struct.hipChannelFormatDesc* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %2) #25
  call void @hipCreateChannelDesc(%struct.hipChannelFormatDesc* nonnull sret(%struct.hipChannelFormatDesc) align 4 %1, i32 16, i32 0, i32 0, i32 0, i32 1)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(20) bitcast (%struct.hipChannelFormatDesc* getelementptr inbounds (%struct.texture, %struct.texture* @ref, i64 0, i32 0, i32 4) to i8*), i8* noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !418
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #25
  store i32 0, i32* getelementptr inbounds (%struct.texture, %struct.texture* @ref, i64 0, i32 0, i32 5), align 4, !tbaa !421
  store %struct.__hip_texture* null, %struct.__hip_texture** getelementptr inbounds (%struct.texture, %struct.texture* @ref, i64 0, i32 0, i32 11), align 8, !tbaa !427
  store i32 0, i32* getelementptr inbounds (%struct.texture, %struct.texture* @ref, i64 0, i32 0, i32 6), align 16, !tbaa !428
  store float 0.000000e+00, float* getelementptr inbounds (%struct.texture, %struct.texture* @ref, i64 0, i32 0, i32 8), align 8, !tbaa !429
  store float 0.000000e+00, float* getelementptr inbounds (%struct.texture, %struct.texture* @ref, i64 0, i32 0, i32 9), align 4, !tbaa !430
  store float 0.000000e+00, float* getelementptr inbounds (%struct.texture, %struct.texture* @ref, i64 0, i32 0, i32 10), align 16, !tbaa !431
  ret void
}

declare dso_local i32 @__hipRegisterFunction(i8**, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32*) local_unnamed_addr

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
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i16*, i16*, i32, i32)** @_Z11mb_sad_calcPtS_ii to i8*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %9 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i16*, i32, i32)** @_Z17larger_sad_calc_8Ptii to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %10 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i16*, i32, i32)** @_Z18larger_sad_calc_16Ptii to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  tail call void @__hipRegisterTexture(i8** %7, i8* bitcast (%struct.texture* @ref to i8*), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3, i64 0, i64 0), i32 2, i32 0, i32 0)
  %11 = tail call i32 @atexit(void (i8*)* nonnull @__hip_module_dtor)
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
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #21

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strcpy(i8* noalias returned writeonly, i8* noalias nocapture readonly) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #21

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #23

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #24

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
attributes #14 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #19 = { mustprogress nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind }
attributes #22 = { argmemonly nofree nounwind willreturn }
attributes #23 = { nofree nosync nounwind readnone willreturn }
attributes #24 = { nofree nosync nounwind readnone speculatable willreturn }
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
!73 = !{!74, !74, i64 0}
!74 = !{!"short", !6, i64 0}
!75 = !{!76}
!76 = distinct !{!76, !77}
!77 = distinct !{!77, !"LVerDomain"}
!78 = !{!79}
!79 = distinct !{!79, !77}
!80 = distinct !{!80, !14, !23}
!81 = distinct !{!81, !25}
!82 = distinct !{!82, !25}
!83 = distinct !{!83, !14, !23}
!84 = !{!85}
!85 = distinct !{!85, !86}
!86 = distinct !{!86, !"LVerDomain"}
!87 = !{!88}
!88 = distinct !{!88, !86}
!89 = distinct !{!89, !14, !23}
!90 = distinct !{!90, !25}
!91 = distinct !{!91, !14, !23}
!92 = !{!93}
!93 = distinct !{!93, !94}
!94 = distinct !{!94, !"LVerDomain"}
!95 = !{!96}
!96 = distinct !{!96, !94}
!97 = distinct !{!97, !14, !23}
!98 = distinct !{!98, !25}
!99 = distinct !{!99, !14, !23}
!100 = distinct !{!100, !14}
!101 = distinct !{!101, !14}
!102 = distinct !{!102, !14}
!103 = distinct !{!103, !14}
!104 = distinct !{!104, !14}
!105 = distinct !{!105, !14}
!106 = !{!107}
!107 = distinct !{!107, !108}
!108 = distinct !{!108, !"LVerDomain"}
!109 = !{!110}
!110 = distinct !{!110, !108}
!111 = distinct !{!111, !14, !23}
!112 = distinct !{!112, !25}
!113 = distinct !{!113, !25}
!114 = !{!115}
!115 = distinct !{!115, !116}
!116 = distinct !{!116, !"LVerDomain"}
!117 = !{!118}
!118 = distinct !{!118, !116}
!119 = distinct !{!119, !14, !23}
!120 = distinct !{!120, !25}
!121 = distinct !{!121, !14, !23}
!122 = !{!123}
!123 = distinct !{!123, !124}
!124 = distinct !{!124, !"LVerDomain"}
!125 = !{!126}
!126 = distinct !{!126, !124}
!127 = distinct !{!127, !14, !23}
!128 = distinct !{!128, !25}
!129 = distinct !{!129, !14, !23}
!130 = distinct !{!130, !14, !23}
!131 = !{!132}
!132 = distinct !{!132, !133}
!133 = distinct !{!133, !"LVerDomain"}
!134 = !{!135}
!135 = distinct !{!135, !133}
!136 = !{!137}
!137 = distinct !{!137, !133}
!138 = !{!132, !135}
!139 = distinct !{!139, !14, !23}
!140 = distinct !{!140, !25}
!141 = distinct !{!141, !14, !23}
!142 = !{!143}
!143 = distinct !{!143, !144}
!144 = distinct !{!144, !"LVerDomain"}
!145 = !{!146}
!146 = distinct !{!146, !144}
!147 = !{!148}
!148 = distinct !{!148, !144}
!149 = !{!143, !146}
!150 = distinct !{!150, !14, !23}
!151 = distinct !{!151, !25}
!152 = distinct !{!152, !14, !23}
!153 = !{!154}
!154 = distinct !{!154, !155}
!155 = distinct !{!155, !"LVerDomain"}
!156 = !{!157}
!157 = distinct !{!157, !155}
!158 = !{!159}
!159 = distinct !{!159, !155}
!160 = !{!154, !157}
!161 = distinct !{!161, !14, !23}
!162 = distinct !{!162, !25}
!163 = distinct !{!163, !14, !23}
!164 = !{!165}
!165 = distinct !{!165, !166}
!166 = distinct !{!166, !"LVerDomain"}
!167 = !{!168}
!168 = distinct !{!168, !166}
!169 = !{!170}
!170 = distinct !{!170, !166}
!171 = !{!165, !168}
!172 = distinct !{!172, !14, !23}
!173 = distinct !{!173, !25}
!174 = distinct !{!174, !14, !23}
!175 = !{!176}
!176 = distinct !{!176, !177}
!177 = distinct !{!177, !"LVerDomain"}
!178 = !{!179}
!179 = distinct !{!179, !177}
!180 = !{!181}
!181 = distinct !{!181, !177}
!182 = !{!176, !179}
!183 = distinct !{!183, !14, !23}
!184 = distinct !{!184, !25}
!185 = distinct !{!185, !14, !23}
!186 = !{!187}
!187 = distinct !{!187, !188}
!188 = distinct !{!188, !"LVerDomain"}
!189 = !{!190}
!190 = distinct !{!190, !188}
!191 = !{!192}
!192 = distinct !{!192, !188}
!193 = !{!187, !190}
!194 = distinct !{!194, !14, !23}
!195 = distinct !{!195, !25}
!196 = distinct !{!196, !14, !23}
!197 = !{!198}
!198 = distinct !{!198, !199}
!199 = distinct !{!199, !"LVerDomain"}
!200 = !{!201}
!201 = distinct !{!201, !199}
!202 = !{!203}
!203 = distinct !{!203, !199}
!204 = !{!198, !201}
!205 = distinct !{!205, !14, !23}
!206 = distinct !{!206, !25}
!207 = distinct !{!207, !14, !23}
!208 = !{!209}
!209 = distinct !{!209, !210}
!210 = distinct !{!210, !"LVerDomain"}
!211 = !{!212}
!212 = distinct !{!212, !210}
!213 = !{!214}
!214 = distinct !{!214, !210}
!215 = !{!209, !212}
!216 = distinct !{!216, !14, !23}
!217 = distinct !{!217, !25}
!218 = distinct !{!218, !14, !23}
!219 = !{!220}
!220 = distinct !{!220, !221}
!221 = distinct !{!221, !"LVerDomain"}
!222 = !{!223}
!223 = distinct !{!223, !221}
!224 = !{!225}
!225 = distinct !{!225, !221}
!226 = !{!220, !223}
!227 = distinct !{!227, !14, !23}
!228 = distinct !{!228, !25}
!229 = distinct !{!229, !14, !23}
!230 = !{!231}
!231 = distinct !{!231, !232}
!232 = distinct !{!232, !"LVerDomain"}
!233 = !{!234}
!234 = distinct !{!234, !232}
!235 = !{!236}
!236 = distinct !{!236, !232}
!237 = !{!231, !234}
!238 = distinct !{!238, !14, !23}
!239 = distinct !{!239, !25}
!240 = distinct !{!240, !14, !23}
!241 = !{!242}
!242 = distinct !{!242, !243}
!243 = distinct !{!243, !"LVerDomain"}
!244 = !{!245}
!245 = distinct !{!245, !243}
!246 = !{!247}
!247 = distinct !{!247, !243}
!248 = !{!242, !245}
!249 = distinct !{!249, !14, !23}
!250 = distinct !{!250, !25}
!251 = distinct !{!251, !14, !23}
!252 = !{!253}
!253 = distinct !{!253, !254}
!254 = distinct !{!254, !"LVerDomain"}
!255 = !{!256}
!256 = distinct !{!256, !254}
!257 = !{!258}
!258 = distinct !{!258, !254}
!259 = !{!253, !256}
!260 = distinct !{!260, !14, !23}
!261 = distinct !{!261, !25}
!262 = distinct !{!262, !14, !23}
!263 = !{!264}
!264 = distinct !{!264, !265}
!265 = distinct !{!265, !"LVerDomain"}
!266 = !{!267}
!267 = distinct !{!267, !265}
!268 = !{!269}
!269 = distinct !{!269, !265}
!270 = !{!264, !267}
!271 = distinct !{!271, !14, !23}
!272 = distinct !{!272, !25}
!273 = distinct !{!273, !14, !23}
!274 = !{!275}
!275 = distinct !{!275, !276}
!276 = distinct !{!276, !"LVerDomain"}
!277 = !{!278}
!278 = distinct !{!278, !276}
!279 = !{!280}
!280 = distinct !{!280, !276}
!281 = !{!275, !278}
!282 = distinct !{!282, !14, !23}
!283 = distinct !{!283, !25}
!284 = distinct !{!284, !14, !23}
!285 = !{!286}
!286 = distinct !{!286, !287}
!287 = distinct !{!287, !"LVerDomain"}
!288 = !{!289}
!289 = distinct !{!289, !287}
!290 = !{!291}
!291 = distinct !{!291, !287}
!292 = !{!286, !289}
!293 = distinct !{!293, !14, !23}
!294 = distinct !{!294, !25}
!295 = distinct !{!295, !14, !23}
!296 = !{!297}
!297 = distinct !{!297, !298}
!298 = distinct !{!298, !"LVerDomain"}
!299 = !{!300}
!300 = distinct !{!300, !298}
!301 = !{!302}
!302 = distinct !{!302, !298}
!303 = !{!297, !300}
!304 = distinct !{!304, !14, !23}
!305 = distinct !{!305, !25}
!306 = distinct !{!306, !14, !23}
!307 = !{!308}
!308 = distinct !{!308, !309}
!309 = distinct !{!309, !"LVerDomain"}
!310 = !{!311}
!311 = distinct !{!311, !309}
!312 = !{!313}
!313 = distinct !{!313, !309}
!314 = !{!308, !311}
!315 = distinct !{!315, !14, !23}
!316 = distinct !{!316, !25}
!317 = distinct !{!317, !14, !23}
!318 = !{!319}
!319 = distinct !{!319, !320}
!320 = distinct !{!320, !"LVerDomain"}
!321 = !{!322}
!322 = distinct !{!322, !320}
!323 = !{!324}
!324 = distinct !{!324, !320}
!325 = !{!319, !322}
!326 = distinct !{!326, !14, !23}
!327 = distinct !{!327, !25}
!328 = distinct !{!328, !14, !23}
!329 = !{!330}
!330 = distinct !{!330, !331}
!331 = distinct !{!331, !"LVerDomain"}
!332 = !{!333}
!333 = distinct !{!333, !331}
!334 = !{!335}
!335 = distinct !{!335, !331}
!336 = !{!330, !333}
!337 = distinct !{!337, !14, !23}
!338 = distinct !{!338, !25}
!339 = distinct !{!339, !14, !23}
!340 = !{!341}
!341 = distinct !{!341, !342}
!342 = distinct !{!342, !"LVerDomain"}
!343 = !{!344}
!344 = distinct !{!344, !342}
!345 = !{!346}
!346 = distinct !{!346, !342}
!347 = !{!341, !344}
!348 = distinct !{!348, !14, !23}
!349 = distinct !{!349, !25}
!350 = distinct !{!350, !14, !23}
!351 = !{!352}
!352 = distinct !{!352, !353}
!353 = distinct !{!353, !"LVerDomain"}
!354 = !{!355}
!355 = distinct !{!355, !353}
!356 = !{!357}
!357 = distinct !{!357, !353}
!358 = !{!352, !355}
!359 = distinct !{!359, !14, !23}
!360 = distinct !{!360, !25}
!361 = distinct !{!361, !14, !23}
!362 = !{!363}
!363 = distinct !{!363, !364}
!364 = distinct !{!364, !"LVerDomain"}
!365 = !{!366}
!366 = distinct !{!366, !364}
!367 = !{!368}
!368 = distinct !{!368, !364}
!369 = !{!363, !366}
!370 = distinct !{!370, !14, !23}
!371 = distinct !{!371, !25}
!372 = distinct !{!372, !14, !23}
!373 = !{!374}
!374 = distinct !{!374, !375}
!375 = distinct !{!375, !"LVerDomain"}
!376 = !{!377}
!377 = distinct !{!377, !375}
!378 = !{!379}
!379 = distinct !{!379, !375}
!380 = !{!374, !377}
!381 = distinct !{!381, !14, !23}
!382 = distinct !{!382, !25}
!383 = distinct !{!383, !14, !23}
!384 = !{!385}
!385 = distinct !{!385, !386}
!386 = distinct !{!386, !"LVerDomain"}
!387 = !{!388}
!388 = distinct !{!388, !386}
!389 = !{!390}
!390 = distinct !{!390, !386}
!391 = !{!385, !388}
!392 = distinct !{!392, !14, !23}
!393 = distinct !{!393, !25}
!394 = distinct !{!394, !14, !23}
!395 = !{!396}
!396 = distinct !{!396, !397}
!397 = distinct !{!397, !"LVerDomain"}
!398 = !{!399}
!399 = distinct !{!399, !397}
!400 = !{!401}
!401 = distinct !{!401, !397}
!402 = !{!396, !399}
!403 = distinct !{!403, !14, !23}
!404 = distinct !{!404, !25}
!405 = distinct !{!405, !14, !23}
!406 = distinct !{!406, !14}
!407 = distinct !{!407, !14}
!408 = distinct !{!408, !14}
!409 = !{!410, !11, i64 0}
!410 = !{!"_ZTS9image_i16", !11, i64 0, !11, i64 4, !5, i64 8}
!411 = !{!410, !11, i64 4}
!412 = !{!410, !5, i64 8}
!413 = distinct !{!413, !14}
!414 = distinct !{!414, !14}
!415 = distinct !{!415, !14}
!416 = !{!417, !417, i64 0}
!417 = !{!"_ZTS21hipTextureAddressMode", !6, i64 0}
!418 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 4, !10, i64 16, i64 4, !419}
!419 = !{!420, !420, i64 0}
!420 = !{!"_ZTS20hipChannelFormatKind", !6, i64 0}
!421 = !{!422, !11, i64 44}
!422 = !{!"_ZTS16textureReference", !11, i64 0, !423, i64 4, !424, i64 8, !6, i64 12, !425, i64 24, !11, i64 44, !11, i64 48, !424, i64 52, !62, i64 56, !62, i64 60, !62, i64 64, !5, i64 72, !11, i64 80, !426, i64 84}
!423 = !{!"_ZTS18hipTextureReadMode", !6, i64 0}
!424 = !{!"_ZTS20hipTextureFilterMode", !6, i64 0}
!425 = !{!"_ZTS20hipChannelFormatDesc", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !420, i64 16}
!426 = !{!"_ZTS15hipArray_Format", !6, i64 0}
!427 = !{!422, !5, i64 72}
!428 = !{!422, !11, i64 48}
!429 = !{!422, !62, i64 56}
!430 = !{!422, !62, i64 60}
!431 = !{!422, !62, i64 64}
