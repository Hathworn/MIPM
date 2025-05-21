; ModuleID = 'lbm.cpp'
source_filename = "lbm.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pb_TimerSet = type { i32, %struct.pb_async_time_marker_list*, i64, i64, [8 x %struct.pb_Timer], [8 x %struct.pb_SubTimerList*] }
%struct.pb_async_time_marker_list = type { i8*, i32, i8*, %struct.pb_async_time_marker_list* }
%struct.pb_Timer = type { i32, i64, i64 }
%struct.pb_SubTimerList = type { %struct.pb_SubTimer*, %struct.pb_SubTimer* }
%struct.pb_SubTimer = type { i8*, %struct.pb_Timer, %struct.pb_SubTimer* }
%struct.pb_Parameters = type { i8*, i8** }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.ihipEvent_t = type opaque
%struct.ihipStream_t = type opaque
%struct.dim3 = type { i32, i32, i32 }
%struct.MAIN_Param = type { i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

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
@_Z27performStreamCollide_kernelPfS_ = dso_local constant void (float*, float*)* @_Z42__device_stub__performStreamCollide_kernelPfS_, align 8
@timers = dso_local global %struct.pb_TimerSet zeroinitializer, align 8
@_ZL12CUDA_srcGrid = internal global float* null, align 8
@_ZL12CUDA_dstGrid = internal global float* null, align 8
@.str.23 = private unnamed_addr constant [14 x i8] c"timestep: %i\0A\00", align 1
@.str.25 = private unnamed_addr constant [55 x i8] c"MAIN_parseCommandLine: cannot stat obstacle file '%s'\0A\00", align 1
@.str.26 = private unnamed_addr constant [82 x i8] c"MAIN_parseCommandLine:\0A\09size of file '%s' is %i bytes\0A\09expected size is %i bytes\0A\00", align 1
@.str.27 = private unnamed_addr constant [174 x i8] c"MAIN_printInfo:\0A\09grid size      : %i x %i x %i = %.2f * 10^6 Cells\0A\09nTimeSteps     : %i\0A\09result file    : %s\0A\09action         : %s\0A\09simulation type: %s\0A\09obstacle file  : %s\0A\0A\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"lid-driven cavity\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@_ZZ15MAIN_initializePK10MAIN_ParamE12TEMP_srcGrid = internal unnamed_addr global float* null, align 8
@_ZZ15MAIN_initializePK10MAIN_ParamE12TEMP_dstGrid = internal unnamed_addr global float* null, align 8
@.str.31 = private unnamed_addr constant [27 x i8] c"CUDA error on line %d: %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [49 x i8] c"LBM_allocateGrid: could not allocate %.1f MByte\0A\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"LBM_allocateGrid: allocated %.1f MByte\0A\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.35 = private unnamed_addr constant [138 x i8] c"LBM_showGridStatistics:\0A\09nObstacleCells: %7i nAccelCells: %7i nFluidCells: %7i\0A\09minRho: %8.4f maxRho: %8.4f mass: %e\0A\09minU: %e maxU: %e\0A\0A\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"%e %e %e\0A\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"delete_argument\0A\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"next_argument\0A\00", align 1
@0 = private unnamed_addr constant [36 x i8] c"_Z27performStreamCollide_kernelPfS_\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]
@str = private unnamed_addr constant [25 x i8] c"syntax: lbm <time steps>\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias %struct.pb_Parameters* @pb_ReadParameters(i32* nocapture %0, i8** %1) local_unnamed_addr #0 {
  %3 = tail call noalias align 16 dereferenceable_or_null(16) i8* @malloc(i64 16) #30
  %4 = bitcast i8* %3 to %struct.pb_Parameters*
  %5 = getelementptr inbounds %struct.pb_Parameters, %struct.pb_Parameters* %4, i64 0, i32 0
  store i8* null, i8** %5, align 16, !tbaa !3
  %6 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #30
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
  %32 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %31) #31
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
  tail call void @free(i8* %42) #30
  %43 = load i8*, i8** %37, align 8, !tbaa !9
  %44 = icmp slt i32 %16, %36
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %47 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %46) #31
  br label %48

48:                                               ; preds = %41, %45
  %49 = add nsw i32 %13, -2
  %50 = getelementptr inbounds i8*, i8** %15, i64 2
  %51 = tail call noalias i8* @strdup(i8* %43) #30
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
  %59 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %58) #31
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
  %77 = tail call noalias align 16 i8* @malloc(i64 %76) #30
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
  %97 = tail call noalias align 16 i8* @malloc(i64 %96) #30
  %98 = getelementptr inbounds i8*, i8** %78, i64 %83
  store i8* %97, i8** %98, align 8, !tbaa !9
  %99 = ashr exact i64 %94, 32
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %97, i8* align 1 %84, i64 %99, i1 false) #30
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
  %112 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %111) #31
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
  %286 = tail call i32 @fputs(i8* nonnull %284, %struct._IO_FILE* %285) #32
  %287 = load i8*, i8** %5, align 16, !tbaa !3
  tail call void @free(i8* %287) #30
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
  tail call void @free(i8* nonnull %294) #30
  %296 = getelementptr inbounds i8*, i8** %295, i64 1
  %297 = load i8*, i8** %296, align 8, !tbaa !9
  %298 = icmp eq i8* %297, null
  br i1 %298, label %299, label %293, !llvm.loop !28

299:                                              ; preds = %293, %290
  %300 = bitcast i8** %288 to i8*
  tail call void @free(i8* %300) #30
  br label %301

301:                                              ; preds = %283, %299
  tail call void @free(i8* %3) #30
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
  tail call void @free(i8* %3) #30
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
  tail call void @free(i8* nonnull %11) #30
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8, !tbaa !9
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %10, !llvm.loop !28

16:                                               ; preds = %10, %7
  %17 = bitcast i8** %5 to i8*
  tail call void @free(i8* %17) #30
  br label %18

18:                                               ; preds = %1, %16
  %19 = bitcast %struct.pb_Parameters* %0 to i8*
  tail call void @free(i8* %19) #30
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
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %7) #32
  br label %19

9:                                                ; preds = %1
  store i32 1, i32* %3, align 8, !tbaa !30
  %10 = bitcast %struct.timeval* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #30
  %11 = call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* null) #30
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !35
  %14 = mul nsw i64 %13, 1000000
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 1
  %16 = load i64, i64* %15, align 8, !tbaa !38
  %17 = add nsw i64 %14, %16
  %18 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %0, i64 0, i32 2
  store i64 %17, i64* %18, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #30
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
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %8) #32
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ 1, %7 ], [ 3, %2 ]
  %12 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %1, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !30
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %16) #32
  %18 = and i32 %11, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %22 = tail call i64 @fwrite(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i64 53, i64 1, %struct._IO_FILE* %21) #32
  br label %49

23:                                               ; preds = %10, %15
  %24 = phi i32 [ %18, %15 ], [ %11, %10 ]
  store i32 1, i32* %4, align 8, !tbaa !30
  store i32 1, i32* %12, align 8, !tbaa !30
  %25 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #30
  %26 = call i32 @gettimeofday(%struct.timeval* nonnull %3, %struct.timezone* null) #30
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #30
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
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %7) #32
  br label %24

9:                                                ; preds = %1
  store i32 0, i32* %3, align 8, !tbaa !30
  %10 = bitcast %struct.timeval* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #30
  %11 = call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* null) #30
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !35
  %14 = mul nsw i64 %13, 1000000
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 1
  %16 = load i64, i64* %15, align 8, !tbaa !38
  %17 = add nsw i64 %14, %16
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #30
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
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %8) #32
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ 1, %7 ], [ 3, %2 ]
  %12 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %1, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !30
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %16) #32
  %18 = and i32 %11, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %22 = tail call i64 @fwrite(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i64 52, i64 1, %struct._IO_FILE* %21) #32
  br label %52

23:                                               ; preds = %10, %15
  %24 = phi i32 [ %18, %15 ], [ %11, %10 ]
  store i32 0, i32* %4, align 8, !tbaa !30
  store i32 0, i32* %12, align 8, !tbaa !30
  %25 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #30
  %26 = call i32 @gettimeofday(%struct.timeval* nonnull %3, %struct.timezone* null) #30
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 0
  %28 = load i64, i64* %27, align 8, !tbaa !35
  %29 = mul nsw i64 %28, 1000000
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 1
  %31 = load i64, i64* %30, align 8, !tbaa !38
  %32 = add nsw i64 %29, %31
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #30
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
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %6) #32
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
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #30
  %4 = call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* null) #30
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !35
  %7 = mul nsw i64 %6, 1000000
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 1
  %9 = load i64, i64* %8, align 8, !tbaa !38
  %10 = add nsw i64 %7, %9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #30
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
  %4 = tail call noalias align 16 dereferenceable_or_null(40) i8* @malloc(i64 40) #30
  %5 = bitcast i8* %4 to %struct.pb_SubTimer*
  %6 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #33
  %7 = shl i64 %6, 32
  %8 = add i64 %7, 4294967296
  %9 = ashr exact i64 %8, 32
  %10 = tail call noalias align 16 i8* @malloc(i64 %9) #30
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
  %21 = tail call noalias align 16 dereferenceable_or_null(16) i8* @malloc(i64 16) #30
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
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %34) #31
  br label %143

36:                                               ; preds = %29
  store i32 0, i32* %30, align 8, !tbaa !30
  %37 = bitcast %struct.timeval* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %37) #30
  %38 = call i32 @gettimeofday(%struct.timeval* nonnull %8, %struct.timezone* null) #30
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 0, i32 0
  %40 = load i64, i64* %39, align 8, !tbaa !35
  %41 = mul nsw i64 %40, 1000000
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 0, i32 1
  %43 = load i64, i64* %42, align 8, !tbaa !38
  %44 = add nsw i64 %41, %43
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %37) #30
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
  %58 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %57) #31
  br label %143

59:                                               ; preds = %52
  store i32 0, i32* %53, align 8, !tbaa !30
  %60 = bitcast %struct.timeval* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %60) #30
  %61 = call i32 @gettimeofday(%struct.timeval* nonnull %7, %struct.timezone* null) #30
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 0
  %63 = load i64, i64* %62, align 8, !tbaa !35
  %64 = mul nsw i64 %63, 1000000
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 1
  %66 = load i64, i64* %65, align 8, !tbaa !38
  %67 = add nsw i64 %64, %66
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %60) #30
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
  %95 = tail call noalias align 16 dereferenceable_or_null(32) i8* @malloc(i64 32) #30
  %96 = bitcast %struct.pb_async_time_marker_list** %94 to i8**
  store i8* %95, i8** %96, align 8, !tbaa !9
  %97 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #30
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
  %127 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %126) #31
  br label %143

128:                                              ; preds = %121
  store i32 0, i32* %122, align 8, !tbaa !30
  %129 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %129) #30
  %130 = call i32 @gettimeofday(%struct.timeval* nonnull %6, %struct.timezone* null) #30
  %131 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 0
  %132 = load i64, i64* %131, align 8, !tbaa !35
  %133 = mul nsw i64 %132, 1000000
  %134 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %135 = load i64, i64* %134, align 8, !tbaa !38
  %136 = add nsw i64 %133, %135
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %129) #30
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
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %144) #30
  %145 = call i32 @gettimeofday(%struct.timeval* nonnull %5, %struct.timezone* null) #30
  %146 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 0
  %147 = load i64, i64* %146, align 8, !tbaa !35
  %148 = mul nsw i64 %147, 1000000
  %149 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 1
  %150 = load i64, i64* %149, align 8, !tbaa !38
  %151 = add nsw i64 %148, %150
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %144) #30
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
  %209 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %208) #31
  br label %283

210:                                              ; preds = %202
  store i32 1, i32* %204, align 8, !tbaa !30
  %211 = bitcast %struct.timeval* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %211) #30
  %212 = call i32 @gettimeofday(%struct.timeval* nonnull %4, %struct.timezone* null) #30
  %213 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0
  %214 = load i64, i64* %213, align 8, !tbaa !35
  %215 = mul nsw i64 %214, 1000000
  %216 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1
  %217 = load i64, i64* %216, align 8, !tbaa !38
  %218 = add nsw i64 %215, %217
  %219 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %203, i32 2
  store i64 %218, i64* %219, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %211) #30
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
  %228 = tail call noalias align 16 dereferenceable_or_null(32) i8* @malloc(i64 32) #30
  %229 = bitcast %struct.pb_async_time_marker_list** %152 to i8**
  store i8* %228, i8** %229, align 8, !tbaa !9
  %230 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #30
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
  %272 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %271) #31
  br label %283

273:                                              ; preds = %266
  store i32 1, i32* %267, align 8, !tbaa !30
  %274 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %274) #30
  %275 = call i32 @gettimeofday(%struct.timeval* nonnull %3, %struct.timezone* null) #30
  %276 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 0
  %277 = load i64, i64* %276, align 8, !tbaa !35
  %278 = mul nsw i64 %277, 1000000
  %279 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 1
  %280 = load i64, i64* %279, align 8, !tbaa !38
  %281 = add nsw i64 %278, %280
  %282 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 4, i32 2
  store i64 %281, i64* %282, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %274) #30
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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #30
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
  %61 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %60, i8* noundef nonnull dereferenceable(1) %49) #33
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
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #30
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
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %34) #31
  br label %143

36:                                               ; preds = %29
  store i32 0, i32* %30, align 8, !tbaa !30
  %37 = bitcast %struct.timeval* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %37) #30
  %38 = call i32 @gettimeofday(%struct.timeval* nonnull %10, %struct.timezone* null) #30
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i64 0, i32 0
  %40 = load i64, i64* %39, align 8, !tbaa !35
  %41 = mul nsw i64 %40, 1000000
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i64 0, i32 1
  %43 = load i64, i64* %42, align 8, !tbaa !38
  %44 = add nsw i64 %41, %43
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %37) #30
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
  %58 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %57) #31
  br label %143

59:                                               ; preds = %52
  store i32 0, i32* %53, align 8, !tbaa !30
  %60 = bitcast %struct.timeval* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %60) #30
  %61 = call i32 @gettimeofday(%struct.timeval* nonnull %9, %struct.timezone* null) #30
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i64 0, i32 0
  %63 = load i64, i64* %62, align 8, !tbaa !35
  %64 = mul nsw i64 %63, 1000000
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i64 0, i32 1
  %66 = load i64, i64* %65, align 8, !tbaa !38
  %67 = add nsw i64 %64, %66
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %60) #30
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
  %95 = tail call noalias align 16 dereferenceable_or_null(32) i8* @malloc(i64 32) #30
  %96 = bitcast %struct.pb_async_time_marker_list** %94 to i8**
  store i8* %95, i8** %96, align 8, !tbaa !9
  %97 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #30
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
  %127 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %126) #31
  br label %143

128:                                              ; preds = %121
  store i32 0, i32* %122, align 8, !tbaa !30
  %129 = bitcast %struct.timeval* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %129) #30
  %130 = call i32 @gettimeofday(%struct.timeval* nonnull %8, %struct.timezone* null) #30
  %131 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 0, i32 0
  %132 = load i64, i64* %131, align 8, !tbaa !35
  %133 = mul nsw i64 %132, 1000000
  %134 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 0, i32 1
  %135 = load i64, i64* %134, align 8, !tbaa !38
  %136 = add nsw i64 %133, %135
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %129) #30
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
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %144) #30
  %145 = call i32 @gettimeofday(%struct.timeval* nonnull %7, %struct.timezone* null) #30
  %146 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 0
  %147 = load i64, i64* %146, align 8, !tbaa !35
  %148 = mul nsw i64 %147, 1000000
  %149 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 1
  %150 = load i64, i64* %149, align 8, !tbaa !38
  %151 = add nsw i64 %148, %150
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %144) #30
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
  %214 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %213, i8* noundef nonnull %1) #33
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
  %241 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %240) #31
  br label %336

242:                                              ; preds = %235
  store i32 1, i32* %236, align 8, !tbaa !30
  %243 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %243) #30
  %244 = call i32 @gettimeofday(%struct.timeval* nonnull %6, %struct.timezone* null) #30
  %245 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 0
  %246 = load i64, i64* %245, align 8, !tbaa !35
  %247 = mul nsw i64 %246, 1000000
  %248 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %249 = load i64, i64* %248, align 8, !tbaa !38
  %250 = add nsw i64 %247, %249
  %251 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %221, i64 0, i32 1, i32 2
  store i64 %250, i64* %251, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %243) #30
  br label %336

252:                                              ; preds = %234
  %253 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %202, i32 0
  %254 = load i32, i32* %253, align 8, !tbaa !30
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %252
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %258 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %257) #31
  br label %336

259:                                              ; preds = %252
  store i32 1, i32* %253, align 8, !tbaa !30
  %260 = bitcast %struct.timeval* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %260) #30
  %261 = call i32 @gettimeofday(%struct.timeval* nonnull %5, %struct.timezone* null) #30
  %262 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 0
  %263 = load i64, i64* %262, align 8, !tbaa !35
  %264 = mul nsw i64 %263, 1000000
  %265 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 1
  %266 = load i64, i64* %265, align 8, !tbaa !38
  %267 = add nsw i64 %264, %266
  %268 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %202, i32 2
  store i64 %267, i64* %268, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %260) #30
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
  %281 = tail call noalias align 16 dereferenceable_or_null(32) i8* @malloc(i64 32) #30
  %282 = bitcast %struct.pb_async_time_marker_list** %152 to i8**
  store i8* %281, i8** %282, align 8, !tbaa !9
  %283 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #30
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
  %325 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %324) #31
  br label %336

326:                                              ; preds = %319
  store i32 1, i32* %320, align 8, !tbaa !30
  %327 = bitcast %struct.timeval* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %327) #30
  %328 = call i32 @gettimeofday(%struct.timeval* nonnull %4, %struct.timezone* null) #30
  %329 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0
  %330 = load i64, i64* %329, align 8, !tbaa !35
  %331 = mul nsw i64 %330, 1000000
  %332 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1
  %333 = load i64, i64* %332, align 8, !tbaa !38
  %334 = add nsw i64 %331, %333
  %335 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 4, i32 2
  store i64 %334, i64* %335, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %327) #30
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
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #30
  %5 = call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* null) #30
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 1
  %9 = load i64, i64* %8, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #30
  %10 = bitcast [6 x i8*]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %10) #30
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
  %24 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %23) #31
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
  %39 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %38) #31
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
  %58 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %57) #33
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
  %78 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %77) #31
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
  %97 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %96) #31
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
  %109 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %108) #31
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
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %10) #30
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
  tail call void @free(i8* %25) #30
  %26 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %11, align 8, !tbaa !9
  %27 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %26, i64 0, i32 3
  %28 = bitcast %struct.pb_async_time_marker_list* %26 to i8*
  tail call void @free(i8* %28) #30
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
  tail call void @free(i8* %39) #30
  %40 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %37, i64 0, i32 2
  %41 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %40, align 8, !tbaa !48
  %42 = bitcast %struct.pb_SubTimer* %37 to i8*
  tail call void @free(i8* %42) #30
  %43 = icmp eq %struct.pb_SubTimer* %41, null
  br i1 %43, label %44, label %36, !llvm.loop !72

44:                                               ; preds = %36
  %45 = bitcast %struct.pb_SubTimerList** %6 to i8**
  %46 = load i8*, i8** %45, align 8, !tbaa !9
  br label %47

47:                                               ; preds = %31, %44
  %48 = phi i8* [ %46, %44 ], [ %32, %31 ]
  tail call void @free(i8* %48) #30
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
  tail call void @free(i8* %61) #30
  %62 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %59, i64 0, i32 2
  %63 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %62, align 8, !tbaa !48
  %64 = bitcast %struct.pb_SubTimer* %59 to i8*
  tail call void @free(i8* %64) #30
  %65 = icmp eq %struct.pb_SubTimer* %63, null
  br i1 %65, label %66, label %58, !llvm.loop !72

66:                                               ; preds = %58
  %67 = bitcast %struct.pb_SubTimerList** %50 to i8**
  %68 = load i8*, i8** %67, align 8, !tbaa !9
  br label %69

69:                                               ; preds = %53, %66
  %70 = phi i8* [ %68, %66 ], [ %54, %53 ]
  tail call void @free(i8* %70) #30
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
  tail call void @free(i8* %83) #30
  %84 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %81, i64 0, i32 2
  %85 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %84, align 8, !tbaa !48
  %86 = bitcast %struct.pb_SubTimer* %81 to i8*
  tail call void @free(i8* %86) #30
  %87 = icmp eq %struct.pb_SubTimer* %85, null
  br i1 %87, label %88, label %80, !llvm.loop !72

88:                                               ; preds = %80
  %89 = bitcast %struct.pb_SubTimerList** %72 to i8**
  %90 = load i8*, i8** %89, align 8, !tbaa !9
  br label %91

91:                                               ; preds = %75, %88
  %92 = phi i8* [ %90, %88 ], [ %76, %75 ]
  tail call void @free(i8* %92) #30
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
  tail call void @free(i8* %105) #30
  %106 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %103, i64 0, i32 2
  %107 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %106, align 8, !tbaa !48
  %108 = bitcast %struct.pb_SubTimer* %103 to i8*
  tail call void @free(i8* %108) #30
  %109 = icmp eq %struct.pb_SubTimer* %107, null
  br i1 %109, label %110, label %102, !llvm.loop !72

110:                                              ; preds = %102
  %111 = bitcast %struct.pb_SubTimerList** %94 to i8**
  %112 = load i8*, i8** %111, align 8, !tbaa !9
  br label %113

113:                                              ; preds = %97, %110
  %114 = phi i8* [ %112, %110 ], [ %98, %97 ]
  tail call void @free(i8* %114) #30
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
  tail call void @free(i8* %127) #30
  %128 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %125, i64 0, i32 2
  %129 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %128, align 8, !tbaa !48
  %130 = bitcast %struct.pb_SubTimer* %125 to i8*
  tail call void @free(i8* %130) #30
  %131 = icmp eq %struct.pb_SubTimer* %129, null
  br i1 %131, label %132, label %124, !llvm.loop !72

132:                                              ; preds = %124
  %133 = bitcast %struct.pb_SubTimerList** %116 to i8**
  %134 = load i8*, i8** %133, align 8, !tbaa !9
  br label %135

135:                                              ; preds = %119, %132
  %136 = phi i8* [ %134, %132 ], [ %120, %119 ]
  tail call void @free(i8* %136) #30
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
  tail call void @free(i8* %149) #30
  %150 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %147, i64 0, i32 2
  %151 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %150, align 8, !tbaa !48
  %152 = bitcast %struct.pb_SubTimer* %147 to i8*
  tail call void @free(i8* %152) #30
  %153 = icmp eq %struct.pb_SubTimer* %151, null
  br i1 %153, label %154, label %146, !llvm.loop !72

154:                                              ; preds = %146
  %155 = bitcast %struct.pb_SubTimerList** %138 to i8**
  %156 = load i8*, i8** %155, align 8, !tbaa !9
  br label %157

157:                                              ; preds = %141, %154
  %158 = phi i8* [ %156, %154 ], [ %142, %141 ]
  tail call void @free(i8* %158) #30
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
  tail call void @free(i8* %171) #30
  %172 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %169, i64 0, i32 2
  %173 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %172, align 8, !tbaa !48
  %174 = bitcast %struct.pb_SubTimer* %169 to i8*
  tail call void @free(i8* %174) #30
  %175 = icmp eq %struct.pb_SubTimer* %173, null
  br i1 %175, label %176, label %168, !llvm.loop !72

176:                                              ; preds = %168
  %177 = bitcast %struct.pb_SubTimerList** %160 to i8**
  %178 = load i8*, i8** %177, align 8, !tbaa !9
  br label %179

179:                                              ; preds = %163, %176
  %180 = phi i8* [ %178, %176 ], [ %164, %163 ]
  tail call void @free(i8* %180) #30
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
  tail call void @free(i8* %193) #30
  %194 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %191, i64 0, i32 2
  %195 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %194, align 8, !tbaa !48
  %196 = bitcast %struct.pb_SubTimer* %191 to i8*
  tail call void @free(i8* %196) #30
  %197 = icmp eq %struct.pb_SubTimer* %195, null
  br i1 %197, label %198, label %190, !llvm.loop !72

198:                                              ; preds = %190
  %199 = bitcast %struct.pb_SubTimerList** %182 to i8**
  %200 = load i8*, i8** %199, align 8, !tbaa !9
  br label %201

201:                                              ; preds = %185, %198
  %202 = phi i8* [ %200, %198 ], [ %186, %185 ]
  tail call void @free(i8* %202) #30
  br label %203

203:                                              ; preds = %201, %181
  ret void
}

declare dso_local i32 @hipEventDestroy(%struct.ihipEvent_t*) local_unnamed_addr #12

; Function Attrs: norecurse uwtable
define dso_local void @_Z42__device_stub__performStreamCollide_kernelPfS_(float* %0, float* %1) #14 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca %struct.dim3, align 8
  %6 = alloca %struct.dim3, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store float* %0, float** %3, align 8, !tbaa !9
  store float* %1, float** %4, align 8, !tbaa !9
  %9 = alloca [2 x i8*], align 16
  %10 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %11 = bitcast [2 x i8*]* %9 to float***
  store float** %3, float*** %11, align 16
  %12 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 1
  %13 = bitcast i8** %12 to float***
  store float** %4, float*** %13, align 8
  %14 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %5, %struct.dim3* nonnull %6, i64* nonnull %7, i8** nonnull %8)
  %15 = load i64, i64* %7, align 8
  %16 = bitcast i8** %8 to %struct.ihipStream_t**
  %17 = load %struct.ihipStream_t*, %struct.ihipStream_t** %16, align 8
  %18 = bitcast %struct.dim3* %5 to i64*
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.dim3, %struct.dim3* %5, i64 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = bitcast %struct.dim3* %6 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.dim3, %struct.dim3* %6, i64 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*)** @_Z27performStreamCollide_kernelPfS_ to i8*), i64 %19, i32 %21, i64 %23, i32 %25, i8** nonnull %10, i64 %15, %struct.ihipStream_t* %17)
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: mustprogress norecurse uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #16 {
  %3 = alloca float**, align 8
  store float** null, float*** %3, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.MAIN_Param, align 8
  store i32 %0, i32* %5, align 4, !tbaa !10
  %7 = bitcast %struct.MAIN_Param* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #30
  %8 = bitcast %struct.timeval* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #30
  %9 = call i32 @gettimeofday(%struct.timeval* nonnull %4, %struct.timezone* null) #30
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0
  %11 = load i64, i64* %10, align 8, !tbaa !35
  %12 = mul nsw i64 %11, 1000000
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1
  %14 = load i64, i64* %13, align 8, !tbaa !38
  %15 = add nsw i64 %12, %14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #30
  store i64 %15, i64* getelementptr inbounds (%struct.pb_TimerSet, %struct.pb_TimerSet* @timers, i64 0, i32 3), align 8, !tbaa !41
  store i32 0, i32* getelementptr inbounds (%struct.pb_TimerSet, %struct.pb_TimerSet* @timers, i64 0, i32 0), align 8, !tbaa !44
  store %struct.pb_async_time_marker_list* null, %struct.pb_async_time_marker_list** getelementptr inbounds (%struct.pb_TimerSet, %struct.pb_TimerSet* @timers, i64 0, i32 1), align 8, !tbaa !45
  store i32 0, i32* getelementptr inbounds (%struct.pb_TimerSet, %struct.pb_TimerSet* @timers, i64 0, i32 4, i64 0, i32 0), align 8, !tbaa !30
  store i64 0, i64* getelementptr inbounds (%struct.pb_TimerSet, %struct.pb_TimerSet* @timers, i64 0, i32 4, i64 0, i32 1), align 8, !tbaa !34
  store i32 0, i32* getelementptr inbounds (%struct.pb_TimerSet, %struct.pb_TimerSet* @timers, i64 0, i32 4, i64 1, i32 0), align 8, !tbaa !30
  store i64 0, i64* getelementptr inbounds (%struct.pb_TimerSet, %struct.pb_TimerSet* @timers, i64 0, i32 4, i64 1, i32 1), align 8, !tbaa !34
  store i32 0, i32* getelementptr inbounds (%struct.pb_TimerSet, %struct.pb_TimerSet* @timers, i64 0, i32 4, i64 2, i32 0), align 8, !tbaa !30
  store i64 0, i64* getelementptr inbounds (%struct.pb_TimerSet, %struct.pb_TimerSet* @timers, i64 0, i32 4, i64 2, i32 1), align 8, !tbaa !34
  store i32 0, i32* getelementptr inbounds (%struct.pb_TimerSet, %struct.pb_TimerSet* @timers, i64 0, i32 4, i64 3, i32 0), align 8, !tbaa !30
  store i64 0, i64* getelementptr inbounds (%struct.pb_TimerSet, %struct.pb_TimerSet* @timers, i64 0, i32 4, i64 3, i32 1), align 8, !tbaa !34
  store i32 0, i32* getelementptr inbounds (%struct.pb_TimerSet, %struct.pb_TimerSet* @timers, i64 0, i32 4, i64 4, i32 0), align 8, !tbaa !30
  store i64 0, i64* getelementptr inbounds (%struct.pb_TimerSet, %struct.pb_TimerSet* @timers, i64 0, i32 4, i64 4, i32 1), align 8, !tbaa !34
  store i32 0, i32* getelementptr inbounds (%struct.pb_TimerSet, %struct.pb_TimerSet* @timers, i64 0, i32 4, i64 5, i32 0), align 8, !tbaa !30
  store i64 0, i64* getelementptr inbounds (%struct.pb_TimerSet, %struct.pb_TimerSet* @timers, i64 0, i32 4, i64 5, i32 1), align 8, !tbaa !34
  store i32 0, i32* getelementptr inbounds (%struct.pb_TimerSet, %struct.pb_TimerSet* @timers, i64 0, i32 4, i64 6, i32 0), align 8, !tbaa !30
  store i64 0, i64* getelementptr inbounds (%struct.pb_TimerSet, %struct.pb_TimerSet* @timers, i64 0, i32 4, i64 6, i32 1), align 8, !tbaa !34
  store i32 0, i32* getelementptr inbounds (%struct.pb_TimerSet, %struct.pb_TimerSet* @timers, i64 0, i32 4, i64 7, i32 0), align 8, !tbaa !30
  store i64 0, i64* getelementptr inbounds (%struct.pb_TimerSet, %struct.pb_TimerSet* @timers, i64 0, i32 4, i64 7, i32 1), align 8, !tbaa !34
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) bitcast (%struct.pb_SubTimerList** getelementptr inbounds (%struct.pb_TimerSet, %struct.pb_TimerSet* @timers, i64 0, i32 5, i64 0) to i8*), i8 0, i64 64, i1 false) #30
  %16 = call %struct.pb_Parameters* @pb_ReadParameters(i32* nonnull %5, i8** %1)
  %17 = tail call dereferenceable_or_null(194150400) i8* @calloc(i64 1, i64 194150400) #30
  %18 = bitcast float*** %3 to i8**
  store i8* %17, i8** %18, align 8, !tbaa !9
  %19 = icmp eq i8* %17, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @.str.32, i64 0, i64 0), double 0x4067250000000000) #30
  tail call void @exit(i32 1) #34
  unreachable

22:                                               ; preds = %2
  %23 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), double 0x4067250000000000) #30
  %24 = bitcast float*** %3 to float**
  %25 = load float*, float** %24, align 8, !tbaa !9
  %26 = getelementptr inbounds float, float* %25, i64 614400
  %27 = bitcast float*** %3 to float**
  store float* %26, float** %27, align 8, !tbaa !9
  %28 = load i32, i32* %5, align 4, !tbaa !10
  call void @_Z21MAIN_parseCommandLineiPPcP10MAIN_ParamP13pb_Parameters(i32 %28, i8** %1, %struct.MAIN_Param* nonnull %6, %struct.pb_Parameters* %16)
  %29 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %6, i64 0, i32 0
  %30 = load i32, i32* %29, align 8, !tbaa !73
  %31 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %6, i64 0, i32 1
  %32 = load i8*, i8** %31, align 8, !tbaa !75
  %33 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %6, i64 0, i32 2
  %34 = load i8*, i8** %33, align 8, !tbaa !76
  %35 = icmp eq i8* %34, null
  %36 = select i1 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8* %34
  %37 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([174 x i8], [174 x i8]* @.str.27, i64 0, i64 0), i32 120, i32 120, i32 150, double 2.160000e+00, i32 %30, i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i8* %36) #30
  call void @_Z15MAIN_initializePK10MAIN_Param(%struct.MAIN_Param* nonnull %6)
  %38 = icmp slt i32 %30, 1
  br i1 %38, label %52, label %39

39:                                               ; preds = %22, %49
  %40 = phi i32 [ %50, %49 ], [ 1, %22 ]
  tail call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull @timers, i32 2)
  %41 = load float*, float** @_ZL12CUDA_srcGrid, align 8, !tbaa !9
  %42 = load float*, float** @_ZL12CUDA_dstGrid, align 8, !tbaa !9
  tail call void @CUDA_LBM_performStreamCollide(float* %41, float* %42)
  tail call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull @timers, i32 6)
  %43 = load float*, float** @_ZL12CUDA_srcGrid, align 8, !tbaa !9
  %44 = load float*, float** @_ZL12CUDA_dstGrid, align 8, !tbaa !9
  store float* %44, float** @_ZL12CUDA_srcGrid, align 8, !tbaa !9
  store float* %43, float** @_ZL12CUDA_dstGrid, align 8, !tbaa !9
  %45 = and i32 %40, 63
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i32 %40)
  br label %49

49:                                               ; preds = %39, %47
  %50 = add nuw i32 %40, 1
  %51 = icmp eq i32 %40, %30
  br i1 %51, label %52, label %39, !llvm.loop !77

52:                                               ; preds = %49, %22
  call void @_Z13MAIN_finalizePK10MAIN_Param(%struct.MAIN_Param* nonnull %6)
  %53 = bitcast float*** %3 to float**
  %54 = load float*, float** %53, align 8, !tbaa !9
  %55 = getelementptr inbounds float, float* %54, i64 -614400
  %56 = bitcast float* %55 to i8*
  tail call void @free(i8* nonnull %56) #30
  %57 = bitcast float*** %3 to float**
  store float* null, float** %57, align 8, !tbaa !9
  tail call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull @timers, i32 0)
  tail call void @pb_PrintTimerSet(%struct.pb_TimerSet* nonnull @timers)
  %58 = getelementptr inbounds %struct.pb_Parameters, %struct.pb_Parameters* %16, i64 0, i32 0
  %59 = load i8*, i8** %58, align 8, !tbaa !3
  tail call void @free(i8* %59) #30
  %60 = getelementptr inbounds %struct.pb_Parameters, %struct.pb_Parameters* %16, i64 0, i32 1
  %61 = load i8**, i8*** %60, align 8, !tbaa !8
  %62 = icmp eq i8** %61, null
  br i1 %62, label %74, label %63

63:                                               ; preds = %52
  %64 = load i8*, i8** %61, align 8, !tbaa !9
  %65 = icmp eq i8* %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %63, %66
  %67 = phi i8* [ %70, %66 ], [ %64, %63 ]
  %68 = phi i8** [ %69, %66 ], [ %61, %63 ]
  tail call void @free(i8* nonnull %67) #30
  %69 = getelementptr inbounds i8*, i8** %68, i64 1
  %70 = load i8*, i8** %69, align 8, !tbaa !9
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %66, !llvm.loop !28

72:                                               ; preds = %66, %63
  %73 = bitcast i8** %61 to i8*
  tail call void @free(i8* %73) #30
  br label %74

74:                                               ; preds = %52, %72
  %75 = bitcast %struct.pb_Parameters* %16 to i8*
  tail call void @free(i8* %75) #30
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #30
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @LBM_allocateGrid(float** nocapture %0) local_unnamed_addr #0 {
  %2 = call dereferenceable_or_null(194150400) i8* @calloc(i64 1, i64 194150400)
  %3 = bitcast float** %0 to i8**
  store i8* %2, i8** %3, align 8, !tbaa !9
  %4 = icmp eq i8* %2, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @.str.32, i64 0, i64 0), double 0x4067250000000000)
  tail call void @exit(i32 1) #34
  unreachable

7:                                                ; preds = %1
  %8 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), double 0x4067250000000000)
  %9 = load float*, float** %0, align 8, !tbaa !9
  %10 = getelementptr inbounds float, float* %9, i64 614400
  store float* %10, float** %0, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z21MAIN_parseCommandLineiPPcP10MAIN_ParamP13pb_Parameters(i32 %0, i8** nocapture readonly %1, %struct.MAIN_Param* nocapture %2, %struct.pb_Parameters* nocapture readonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.stat, align 8
  %6 = bitcast %struct.stat* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %6) #30
  %7 = icmp slt i32 %0, 2
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str, i64 0, i64 0))
  tail call void @exit(i32 1) #34
  unreachable

10:                                               ; preds = %4
  %11 = getelementptr inbounds i8*, i8** %1, i64 1
  %12 = load i8*, i8** %11, align 8, !tbaa !9
  %13 = tail call i64 @strtol(i8* nocapture nonnull %12, i8** null, i32 10) #30
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %2, i64 0, i32 0
  store i32 %14, i32* %15, align 8, !tbaa !73
  %16 = getelementptr inbounds %struct.pb_Parameters, %struct.pb_Parameters* %3, i64 0, i32 1
  %17 = load i8**, i8*** %16, align 8, !tbaa !8
  %18 = load i8*, i8** %17, align 8, !tbaa !9
  %19 = icmp eq i8* %18, null
  %20 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %2, i64 0, i32 2
  br i1 %19, label %35, label %21

21:                                               ; preds = %10
  store i8* %18, i8** %20, align 8, !tbaa !76
  %22 = call i32 @__xstat(i32 1, i8* nonnull %18, %struct.stat* nonnull %5) #30
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %20, align 8, !tbaa !76
  %26 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([55 x i8], [55 x i8]* @.str.25, i64 0, i64 0), i8* %25)
  call void @exit(i32 1) #34
  unreachable

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 8
  %29 = load i64, i64* %28, align 8, !tbaa !78
  %30 = icmp eq i64 %29, 2178150
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %20, align 8, !tbaa !76
  %33 = trunc i64 %29 to i32
  %34 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([82 x i8], [82 x i8]* @.str.26, i64 0, i64 0), i8* %32, i32 %33, i32 2178150)
  call void @exit(i32 1) #34
  unreachable

35:                                               ; preds = %10
  store i8* null, i8** %20, align 8, !tbaa !76
  br label %36

36:                                               ; preds = %27, %35
  %37 = getelementptr inbounds %struct.pb_Parameters, %struct.pb_Parameters* %3, i64 0, i32 0
  %38 = load i8*, i8** %37, align 8, !tbaa !3
  %39 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %2, i64 0, i32 1
  store i8* %38, i8** %39, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %6) #30
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z14MAIN_printInfoPK10MAIN_Param(%struct.MAIN_Param* nocapture readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %0, i64 0, i32 1
  %5 = load i8*, i8** %4, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %0, i64 0, i32 2
  %7 = load i8*, i8** %6, align 8, !tbaa !76
  %8 = icmp eq i8* %7, null
  %9 = select i1 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8* %7
  %10 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([174 x i8], [174 x i8]* @.str.27, i64 0, i64 0), i32 120, i32 120, i32 150, double 2.160000e+00, i32 %3, i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i8* %9)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z15MAIN_initializePK10MAIN_Param(%struct.MAIN_Param* nocapture readonly %0) local_unnamed_addr #11 {
  tail call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull @timers, i32 6)
  %2 = tail call dereferenceable_or_null(194150400) i8* @calloc(i64 1, i64 194150400) #30
  store i8* %2, i8** bitcast (float** @_ZZ15MAIN_initializePK10MAIN_ParamE12TEMP_srcGrid to i8**), align 8, !tbaa !9
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @.str.32, i64 0, i64 0), double 0x4067250000000000) #30
  tail call void @exit(i32 1) #34
  unreachable

6:                                                ; preds = %1
  %7 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), double 0x4067250000000000) #30
  %8 = load float*, float** @_ZZ15MAIN_initializePK10MAIN_ParamE12TEMP_srcGrid, align 8, !tbaa !9
  %9 = getelementptr inbounds float, float* %8, i64 614400
  store float* %9, float** @_ZZ15MAIN_initializePK10MAIN_ParamE12TEMP_srcGrid, align 8, !tbaa !9
  %10 = tail call dereferenceable_or_null(194150400) i8* @calloc(i64 1, i64 194150400) #30
  store i8* %10, i8** bitcast (float** @_ZZ15MAIN_initializePK10MAIN_ParamE12TEMP_dstGrid to i8**), align 8, !tbaa !9
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @.str.32, i64 0, i64 0), double 0x4067250000000000) #30
  tail call void @exit(i32 1) #34
  unreachable

14:                                               ; preds = %6
  %15 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), double 0x4067250000000000) #30
  %16 = load float*, float** @_ZZ15MAIN_initializePK10MAIN_ParamE12TEMP_dstGrid, align 8, !tbaa !9
  %17 = getelementptr inbounds float, float* %16, i64 614400
  store float* %17, float** @_ZZ15MAIN_initializePK10MAIN_ParamE12TEMP_dstGrid, align 8, !tbaa !9
  %18 = load float*, float** @_ZZ15MAIN_initializePK10MAIN_ParamE12TEMP_srcGrid, align 8, !tbaa !9
  br label %19

19:                                               ; preds = %55, %14
  %20 = phi i64 [ 0, %14 ], [ %56, %55 ]
  %21 = mul nuw nsw i64 %20, 15360
  br label %22

22:                                               ; preds = %52, %19
  %23 = phi i64 [ 0, %19 ], [ %53, %52 ]
  %24 = shl nsw i64 %23, 7
  %25 = add nuw nsw i64 %24, %21
  br label %26

26:                                               ; preds = %26, %22
  %27 = phi i64 [ 0, %22 ], [ %50, %26 ]
  %28 = add nuw nsw i64 %25, %27
  %29 = mul nuw nsw i64 %28, 20
  %30 = getelementptr inbounds float, float* %18, i64 %29
  %31 = bitcast float* %30 to <4 x float>*
  store <4 x float> <float 0x3FD5555560000000, float 0x3FAC71C720000000, float 0x3FAC71C720000000, float 0x3FAC71C720000000>, <4 x float>* %31, align 4, !tbaa !61
  %32 = add nuw nsw i64 %29, 4
  %33 = getelementptr inbounds float, float* %18, i64 %32
  %34 = bitcast float* %33 to <4 x float>*
  store <4 x float> <float 0x3FAC71C720000000, float 0x3FAC71C720000000, float 0x3FAC71C720000000, float 0x3F9C71C720000000>, <4 x float>* %34, align 4, !tbaa !61
  %35 = add nuw nsw i64 %29, 8
  %36 = getelementptr inbounds float, float* %18, i64 %35
  %37 = bitcast float* %36 to <4 x float>*
  store <4 x float> <float 0x3F9C71C720000000, float 0x3F9C71C720000000, float 0x3F9C71C720000000, float 0x3F9C71C720000000>, <4 x float>* %37, align 4, !tbaa !61
  %38 = add nuw nsw i64 %29, 12
  %39 = getelementptr inbounds float, float* %18, i64 %38
  %40 = bitcast float* %39 to <4 x float>*
  store <4 x float> <float 0x3F9C71C720000000, float 0x3F9C71C720000000, float 0x3F9C71C720000000, float 0x3F9C71C720000000>, <4 x float>* %40, align 4, !tbaa !61
  %41 = add nuw nsw i64 %29, 16
  %42 = getelementptr inbounds float, float* %18, i64 %41
  store float 0x3F9C71C720000000, float* %42, align 4, !tbaa !61
  %43 = add nuw nsw i64 %29, 17
  %44 = getelementptr inbounds float, float* %18, i64 %43
  store float 0x3F9C71C720000000, float* %44, align 4, !tbaa !61
  %45 = add nuw nsw i64 %29, 18
  %46 = getelementptr inbounds float, float* %18, i64 %45
  store float 0x3F9C71C720000000, float* %46, align 4, !tbaa !61
  %47 = add nuw nsw i64 %29, 19
  %48 = getelementptr inbounds float, float* %18, i64 %47
  %49 = bitcast float* %48 to i32*
  store i32 0, i32* %49, align 4, !tbaa !10
  %50 = add nuw nsw i64 %27, 1
  %51 = icmp eq i64 %50, 120
  br i1 %51, label %52, label %26, !llvm.loop !81

52:                                               ; preds = %26
  %53 = add nuw nsw i64 %23, 1
  %54 = icmp eq i64 %53, 120
  br i1 %54, label %55, label %22, !llvm.loop !82

55:                                               ; preds = %52
  %56 = add nuw nsw i64 %20, 1
  %57 = icmp eq i64 %56, 150
  br i1 %57, label %58, label %19, !llvm.loop !83

58:                                               ; preds = %55, %94
  %59 = phi i64 [ %95, %94 ], [ 0, %55 ]
  %60 = mul nuw nsw i64 %59, 15360
  br label %61

61:                                               ; preds = %91, %58
  %62 = phi i64 [ 0, %58 ], [ %92, %91 ]
  %63 = shl nsw i64 %62, 7
  %64 = add nuw nsw i64 %63, %60
  br label %65

65:                                               ; preds = %65, %61
  %66 = phi i64 [ 0, %61 ], [ %89, %65 ]
  %67 = add nuw nsw i64 %64, %66
  %68 = mul nuw nsw i64 %67, 20
  %69 = getelementptr inbounds float, float* %17, i64 %68
  %70 = bitcast float* %69 to <4 x float>*
  store <4 x float> <float 0x3FD5555560000000, float 0x3FAC71C720000000, float 0x3FAC71C720000000, float 0x3FAC71C720000000>, <4 x float>* %70, align 4, !tbaa !61
  %71 = add nuw nsw i64 %68, 4
  %72 = getelementptr inbounds float, float* %17, i64 %71
  %73 = bitcast float* %72 to <4 x float>*
  store <4 x float> <float 0x3FAC71C720000000, float 0x3FAC71C720000000, float 0x3FAC71C720000000, float 0x3F9C71C720000000>, <4 x float>* %73, align 4, !tbaa !61
  %74 = add nuw nsw i64 %68, 8
  %75 = getelementptr inbounds float, float* %17, i64 %74
  %76 = bitcast float* %75 to <4 x float>*
  store <4 x float> <float 0x3F9C71C720000000, float 0x3F9C71C720000000, float 0x3F9C71C720000000, float 0x3F9C71C720000000>, <4 x float>* %76, align 4, !tbaa !61
  %77 = add nuw nsw i64 %68, 12
  %78 = getelementptr inbounds float, float* %17, i64 %77
  %79 = bitcast float* %78 to <4 x float>*
  store <4 x float> <float 0x3F9C71C720000000, float 0x3F9C71C720000000, float 0x3F9C71C720000000, float 0x3F9C71C720000000>, <4 x float>* %79, align 4, !tbaa !61
  %80 = add nuw nsw i64 %68, 16
  %81 = getelementptr inbounds float, float* %17, i64 %80
  store float 0x3F9C71C720000000, float* %81, align 4, !tbaa !61
  %82 = add nuw nsw i64 %68, 17
  %83 = getelementptr inbounds float, float* %17, i64 %82
  store float 0x3F9C71C720000000, float* %83, align 4, !tbaa !61
  %84 = add nuw nsw i64 %68, 18
  %85 = getelementptr inbounds float, float* %17, i64 %84
  store float 0x3F9C71C720000000, float* %85, align 4, !tbaa !61
  %86 = add nuw nsw i64 %68, 19
  %87 = getelementptr inbounds float, float* %17, i64 %86
  %88 = bitcast float* %87 to i32*
  store i32 0, i32* %88, align 4, !tbaa !10
  %89 = add nuw nsw i64 %66, 1
  %90 = icmp eq i64 %89, 120
  br i1 %90, label %91, label %65, !llvm.loop !81

91:                                               ; preds = %65
  %92 = add nuw nsw i64 %62, 1
  %93 = icmp eq i64 %92, 120
  br i1 %93, label %94, label %61, !llvm.loop !82

94:                                               ; preds = %91
  %95 = add nuw nsw i64 %59, 1
  %96 = icmp eq i64 %95, 150
  br i1 %96, label %97, label %58, !llvm.loop !83

97:                                               ; preds = %94
  tail call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull @timers, i32 1)
  %98 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %0, i64 0, i32 2
  %99 = load i8*, i8** %98, align 8, !tbaa !76
  %100 = icmp eq i8* %99, null
  br i1 %100, label %171, label %101

101:                                              ; preds = %97
  %102 = load float*, float** @_ZZ15MAIN_initializePK10MAIN_ParamE12TEMP_srcGrid, align 8, !tbaa !9
  %103 = tail call %struct._IO_FILE* @fopen(i8* nonnull %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0)) #30
  br label %104

104:                                              ; preds = %130, %101
  %105 = phi i64 [ 0, %101 ], [ %132, %130 ]
  %106 = mul nuw nsw i64 %105, 15360
  br label %107

107:                                              ; preds = %126, %104
  %108 = phi i64 [ 0, %104 ], [ %128, %126 ]
  %109 = shl nsw i64 %108, 7
  %110 = add nuw nsw i64 %109, %106
  br label %111

111:                                              ; preds = %123, %107
  %112 = phi i64 [ 0, %107 ], [ %124, %123 ]
  %113 = tail call i32 @fgetc(%struct._IO_FILE* %103) #30
  %114 = icmp eq i32 %113, 46
  br i1 %114, label %123, label %115

115:                                              ; preds = %111
  %116 = add nuw nsw i64 %110, %112
  %117 = mul nuw nsw i64 %116, 20
  %118 = add nuw nsw i64 %117, 19
  %119 = getelementptr inbounds float, float* %102, i64 %118
  %120 = bitcast float* %119 to i32*
  %121 = load i32, i32* %120, align 4, !tbaa !10
  %122 = or i32 %121, 1
  store i32 %122, i32* %120, align 4, !tbaa !10
  br label %123

123:                                              ; preds = %115, %111
  %124 = add nuw nsw i64 %112, 1
  %125 = icmp eq i64 %124, 120
  br i1 %125, label %126, label %111, !llvm.loop !84

126:                                              ; preds = %123
  %127 = tail call i32 @fgetc(%struct._IO_FILE* %103) #30
  %128 = add nuw nsw i64 %108, 1
  %129 = icmp eq i64 %128, 120
  br i1 %129, label %130, label %107, !llvm.loop !85

130:                                              ; preds = %126
  %131 = tail call i32 @fgetc(%struct._IO_FILE* %103) #30
  %132 = add nuw nsw i64 %105, 1
  %133 = icmp eq i64 %132, 150
  br i1 %133, label %134, label %104, !llvm.loop !86

134:                                              ; preds = %130
  %135 = tail call i32 @fclose(%struct._IO_FILE* %103) #30
  %136 = load float*, float** @_ZZ15MAIN_initializePK10MAIN_ParamE12TEMP_dstGrid, align 8, !tbaa !9
  %137 = load i8*, i8** %98, align 8, !tbaa !76
  %138 = tail call %struct._IO_FILE* @fopen(i8* %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0)) #30
  br label %139

139:                                              ; preds = %165, %134
  %140 = phi i64 [ 0, %134 ], [ %167, %165 ]
  %141 = mul nuw nsw i64 %140, 15360
  br label %142

142:                                              ; preds = %161, %139
  %143 = phi i64 [ 0, %139 ], [ %163, %161 ]
  %144 = shl nsw i64 %143, 7
  %145 = add nuw nsw i64 %144, %141
  br label %146

146:                                              ; preds = %158, %142
  %147 = phi i64 [ 0, %142 ], [ %159, %158 ]
  %148 = tail call i32 @fgetc(%struct._IO_FILE* %138) #30
  %149 = icmp eq i32 %148, 46
  br i1 %149, label %158, label %150

150:                                              ; preds = %146
  %151 = add nuw nsw i64 %145, %147
  %152 = mul nuw nsw i64 %151, 20
  %153 = add nuw nsw i64 %152, 19
  %154 = getelementptr inbounds float, float* %136, i64 %153
  %155 = bitcast float* %154 to i32*
  %156 = load i32, i32* %155, align 4, !tbaa !10
  %157 = or i32 %156, 1
  store i32 %157, i32* %155, align 4, !tbaa !10
  br label %158

158:                                              ; preds = %150, %146
  %159 = add nuw nsw i64 %147, 1
  %160 = icmp eq i64 %159, 120
  br i1 %160, label %161, label %146, !llvm.loop !84

161:                                              ; preds = %158
  %162 = tail call i32 @fgetc(%struct._IO_FILE* %138) #30
  %163 = add nuw nsw i64 %143, 1
  %164 = icmp eq i64 %163, 120
  br i1 %164, label %165, label %142, !llvm.loop !85

165:                                              ; preds = %161
  %166 = tail call i32 @fgetc(%struct._IO_FILE* %138) #30
  %167 = add nuw nsw i64 %140, 1
  %168 = icmp eq i64 %167, 150
  br i1 %168, label %169, label %139, !llvm.loop !86

169:                                              ; preds = %165
  %170 = tail call i32 @fclose(%struct._IO_FILE* %138) #30
  br label %171

171:                                              ; preds = %169, %97
  tail call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull @timers, i32 6)
  %172 = load float*, float** @_ZZ15MAIN_initializePK10MAIN_ParamE12TEMP_srcGrid, align 8, !tbaa !9
  tail call void @LBM_initializeSpecialCellsForLDC(float* %172)
  %173 = load float*, float** @_ZZ15MAIN_initializePK10MAIN_ParamE12TEMP_dstGrid, align 8, !tbaa !9
  tail call void @LBM_initializeSpecialCellsForLDC(float* %173)
  tail call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull @timers, i32 3)
  %174 = tail call i32 @hipMalloc(i8** bitcast (float** @_ZL12CUDA_srcGrid to i8**), i64 194150400)
  %175 = tail call i32 @hipGetLastError()
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %171
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %179 = tail call i8* @hipGetErrorString(i32 %175)
  %180 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %178, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0), i32 673, i8* %179) #32
  tail call void @exit(i32 -1) #34
  unreachable

181:                                              ; preds = %171
  %182 = load float*, float** @_ZL12CUDA_srcGrid, align 8, !tbaa !9
  %183 = getelementptr inbounds float, float* %182, i64 614400
  store float* %183, float** @_ZL12CUDA_srcGrid, align 8, !tbaa !9
  %184 = tail call i32 @hipMalloc(i8** bitcast (float** @_ZL12CUDA_dstGrid to i8**), i64 194150400)
  %185 = tail call i32 @hipGetLastError()
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %181
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %189 = tail call i8* @hipGetErrorString(i32 %185)
  %190 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %188, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0), i32 673, i8* %189) #32
  tail call void @exit(i32 -1) #34
  unreachable

191:                                              ; preds = %181
  %192 = load float*, float** @_ZL12CUDA_dstGrid, align 8, !tbaa !9
  %193 = getelementptr inbounds float, float* %192, i64 614400
  store float* %193, float** @_ZL12CUDA_dstGrid, align 8, !tbaa !9
  %194 = load float*, float** @_ZL12CUDA_srcGrid, align 8, !tbaa !9
  %195 = getelementptr inbounds float, float* %194, i64 -614400
  %196 = bitcast float* %195 to i8*
  %197 = load float*, float** @_ZZ15MAIN_initializePK10MAIN_ParamE12TEMP_srcGrid, align 8, !tbaa !9
  %198 = getelementptr inbounds float, float* %197, i64 -614400
  %199 = bitcast float* %198 to i8*
  %200 = tail call i32 @hipMemcpy(i8* nonnull %196, i8* nonnull %199, i64 194150400, i32 1)
  %201 = tail call i32 @hipGetLastError()
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %191
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %205 = tail call i8* @hipGetErrorString(i32 %201)
  %206 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %204, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0), i32 727, i8* %205) #32
  tail call void @exit(i32 -1) #34
  unreachable

207:                                              ; preds = %191
  %208 = load float*, float** @_ZL12CUDA_dstGrid, align 8, !tbaa !9
  %209 = getelementptr inbounds float, float* %208, i64 -614400
  %210 = bitcast float* %209 to i8*
  %211 = load float*, float** @_ZZ15MAIN_initializePK10MAIN_ParamE12TEMP_dstGrid, align 8, !tbaa !9
  %212 = getelementptr inbounds float, float* %211, i64 -614400
  %213 = bitcast float* %212 to i8*
  %214 = tail call i32 @hipMemcpy(i8* nonnull %210, i8* nonnull %213, i64 194150400, i32 1)
  %215 = tail call i32 @hipGetLastError()
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %221, label %217

217:                                              ; preds = %207
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %219 = tail call i8* @hipGetErrorString(i32 %215)
  %220 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %218, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0), i32 727, i8* %219) #32
  tail call void @exit(i32 -1) #34
  unreachable

221:                                              ; preds = %207
  tail call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull @timers, i32 6)
  %222 = load float*, float** @_ZZ15MAIN_initializePK10MAIN_ParamE12TEMP_srcGrid, align 8, !tbaa !9
  tail call void @LBM_showGridStatistics(float* %222)
  %223 = load float*, float** @_ZZ15MAIN_initializePK10MAIN_ParamE12TEMP_srcGrid, align 8, !tbaa !9
  %224 = getelementptr inbounds float, float* %223, i64 -614400
  %225 = bitcast float* %224 to i8*
  tail call void @free(i8* nonnull %225) #30
  store float* null, float** @_ZZ15MAIN_initializePK10MAIN_ParamE12TEMP_srcGrid, align 8, !tbaa !9
  %226 = load float*, float** @_ZZ15MAIN_initializePK10MAIN_ParamE12TEMP_dstGrid, align 8, !tbaa !9
  %227 = getelementptr inbounds float, float* %226, i64 -614400
  %228 = bitcast float* %227 to i8*
  tail call void @free(i8* nonnull %228) #30
  store float* null, float** @_ZZ15MAIN_initializePK10MAIN_ParamE12TEMP_dstGrid, align 8, !tbaa !9
  ret void
}

; Function Attrs: uwtable
define dso_local void @CUDA_LBM_performStreamCollide(float* %0, float* %1) local_unnamed_addr #17 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca %struct.dim3, align 8
  %6 = alloca %struct.dim3, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [2 x i8*], align 16
  %10 = tail call i32 @__hipPushCallConfiguration(i64 644245094520, i32 1, i64 4294967416, i32 1, i64 0, %struct.ihipStream_t* null)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %2
  %13 = bitcast float** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13)
  %14 = bitcast float** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14)
  %15 = bitcast %struct.dim3* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %15)
  %16 = bitcast %struct.dim3* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %16)
  %17 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17)
  %18 = bitcast i8** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18)
  %19 = bitcast [2 x i8*]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %19)
  store float* %0, float** %3, align 8, !tbaa !9
  store float* %1, float** %4, align 8, !tbaa !9
  %20 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %21 = bitcast [2 x i8*]* %9 to float***
  store float** %3, float*** %21, align 16
  %22 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 1
  %23 = bitcast i8** %22 to float***
  store float** %4, float*** %23, align 8
  %24 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %5, %struct.dim3* nonnull %6, i64* nonnull %7, i8** nonnull %8)
  %25 = load i64, i64* %7, align 8
  %26 = bitcast i8** %8 to %struct.ihipStream_t**
  %27 = load %struct.ihipStream_t*, %struct.ihipStream_t** %26, align 8
  %28 = bitcast %struct.dim3* %5 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.dim3, %struct.dim3* %5, i64 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = bitcast %struct.dim3* %6 to i64*
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.dim3, %struct.dim3* %6, i64 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*)** @_Z27performStreamCollide_kernelPfS_ to i8*), i64 %29, i32 %31, i64 %33, i32 %35, i8** nonnull %20, i64 %25, %struct.ihipStream_t* %27)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %15)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %16)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %19)
  br label %37

37:                                               ; preds = %12, %2
  %38 = call i32 @hipGetLastError()
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %42 = call i8* @hipGetErrorString(i32 %38)
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0), i32 646, i8* %42) #32
  call void @exit(i32 -1) #34
  unreachable

44:                                               ; preds = %37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @LBM_swapGrids(float** nocapture %0, float** nocapture %1) local_unnamed_addr #18 {
  %3 = load float*, float** %0, align 8, !tbaa !9
  %4 = load float*, float** %1, align 8, !tbaa !9
  store float* %4, float** %0, align 8, !tbaa !9
  store float* %3, float** %1, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z13MAIN_finalizePK10MAIN_Param(%struct.MAIN_Param* nocapture readonly %0) local_unnamed_addr #11 {
  %2 = alloca float*, align 8
  %3 = bitcast float** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #30
  %4 = tail call dereferenceable_or_null(194150400) i8* @calloc(i64 1, i64 194150400) #30
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @.str.32, i64 0, i64 0), double 0x4067250000000000) #30
  tail call void @exit(i32 1) #34
  unreachable

8:                                                ; preds = %1
  %9 = bitcast i8* %4 to float*
  %10 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), double 0x4067250000000000) #30
  %11 = getelementptr inbounds float, float* %9, i64 614400
  store float* %11, float** %2, align 8, !tbaa !9
  tail call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull @timers, i32 3)
  call void @CUDA_LBM_getDeviceGrid(float** nonnull @_ZL12CUDA_srcGrid, float** nonnull %2)
  tail call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull @timers, i32 6)
  tail call void @LBM_showGridStatistics(float* nonnull %11)
  %12 = getelementptr inbounds %struct.MAIN_Param, %struct.MAIN_Param* %0, i64 0, i32 1
  %13 = load i8*, i8** %12, align 8, !tbaa !75
  tail call void @LBM_storeVelocityField(float* nonnull %11, i8* %13, i32 -1)
  tail call void @free(i8* nonnull %4) #30
  %14 = load float*, float** @_ZL12CUDA_srcGrid, align 8, !tbaa !9
  %15 = getelementptr inbounds float, float* %14, i64 -614400
  %16 = bitcast float* %15 to i8*
  %17 = tail call i32 @hipFree(i8* nonnull %16)
  store float* null, float** @_ZL12CUDA_srcGrid, align 8, !tbaa !9
  %18 = load float*, float** @_ZL12CUDA_dstGrid, align 8, !tbaa !9
  %19 = getelementptr inbounds float, float* %18, i64 -614400
  %20 = bitcast float* %19 to i8*
  %21 = tail call i32 @hipFree(i8* nonnull %20)
  store float* null, float** @_ZL12CUDA_dstGrid, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local void @LBM_freeGrid(float** nocapture %0) local_unnamed_addr #19 {
  %2 = load float*, float** %0, align 8, !tbaa !9
  %3 = getelementptr inbounds float, float* %2, i64 -614400
  %4 = bitcast float* %3 to i8*
  tail call void @free(i8* nonnull %4) #30
  store float* null, float** %0, align 8, !tbaa !9
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #20

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable writeonly
define dso_local void @LBM_initializeGrid(float* nocapture writeonly %0) local_unnamed_addr #21 {
  br label %2

2:                                                ; preds = %1, %38
  %3 = phi i64 [ 0, %1 ], [ %39, %38 ]
  %4 = mul nuw nsw i64 %3, 15360
  br label %5

5:                                                ; preds = %2, %35
  %6 = phi i64 [ 0, %2 ], [ %36, %35 ]
  %7 = shl nsw i64 %6, 7
  %8 = add nuw nsw i64 %7, %4
  br label %9

9:                                                ; preds = %5, %9
  %10 = phi i64 [ 0, %5 ], [ %33, %9 ]
  %11 = add nuw nsw i64 %8, %10
  %12 = mul nuw nsw i64 %11, 20
  %13 = getelementptr inbounds float, float* %0, i64 %12
  %14 = bitcast float* %13 to <4 x float>*
  store <4 x float> <float 0x3FD5555560000000, float 0x3FAC71C720000000, float 0x3FAC71C720000000, float 0x3FAC71C720000000>, <4 x float>* %14, align 4, !tbaa !61
  %15 = add nuw nsw i64 %12, 4
  %16 = getelementptr inbounds float, float* %0, i64 %15
  %17 = bitcast float* %16 to <4 x float>*
  store <4 x float> <float 0x3FAC71C720000000, float 0x3FAC71C720000000, float 0x3FAC71C720000000, float 0x3F9C71C720000000>, <4 x float>* %17, align 4, !tbaa !61
  %18 = add nuw nsw i64 %12, 8
  %19 = getelementptr inbounds float, float* %0, i64 %18
  %20 = bitcast float* %19 to <4 x float>*
  store <4 x float> <float 0x3F9C71C720000000, float 0x3F9C71C720000000, float 0x3F9C71C720000000, float 0x3F9C71C720000000>, <4 x float>* %20, align 4, !tbaa !61
  %21 = add nuw nsw i64 %12, 12
  %22 = getelementptr inbounds float, float* %0, i64 %21
  %23 = bitcast float* %22 to <4 x float>*
  store <4 x float> <float 0x3F9C71C720000000, float 0x3F9C71C720000000, float 0x3F9C71C720000000, float 0x3F9C71C720000000>, <4 x float>* %23, align 4, !tbaa !61
  %24 = add nuw nsw i64 %12, 16
  %25 = getelementptr inbounds float, float* %0, i64 %24
  store float 0x3F9C71C720000000, float* %25, align 4, !tbaa !61
  %26 = add nuw nsw i64 %12, 17
  %27 = getelementptr inbounds float, float* %0, i64 %26
  store float 0x3F9C71C720000000, float* %27, align 4, !tbaa !61
  %28 = add nuw nsw i64 %12, 18
  %29 = getelementptr inbounds float, float* %0, i64 %28
  store float 0x3F9C71C720000000, float* %29, align 4, !tbaa !61
  %30 = add nuw nsw i64 %12, 19
  %31 = getelementptr inbounds float, float* %0, i64 %30
  %32 = bitcast float* %31 to i32*
  store i32 0, i32* %32, align 4, !tbaa !10
  %33 = add nuw nsw i64 %10, 1
  %34 = icmp eq i64 %33, 120
  br i1 %34, label %35, label %9, !llvm.loop !81

35:                                               ; preds = %9
  %36 = add nuw nsw i64 %6, 1
  %37 = icmp eq i64 %36, 120
  br i1 %37, label %38, label %5, !llvm.loop !82

38:                                               ; preds = %35
  %39 = add nuw nsw i64 %3, 1
  %40 = icmp eq i64 %39, 150
  br i1 %40, label %41, label %2, !llvm.loop !83

41:                                               ; preds = %38
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @LBM_loadObstacleFile(float* nocapture %0, i8* nocapture readonly %1) local_unnamed_addr #8 {
  %3 = tail call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0))
  br label %4

4:                                                ; preds = %2, %30
  %5 = phi i64 [ 0, %2 ], [ %32, %30 ]
  %6 = mul nuw nsw i64 %5, 15360
  br label %7

7:                                                ; preds = %4, %26
  %8 = phi i64 [ 0, %4 ], [ %28, %26 ]
  %9 = shl nsw i64 %8, 7
  %10 = add nuw nsw i64 %9, %6
  br label %11

11:                                               ; preds = %7, %23
  %12 = phi i64 [ 0, %7 ], [ %24, %23 ]
  %13 = tail call i32 @fgetc(%struct._IO_FILE* %3)
  %14 = icmp eq i32 %13, 46
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = add nuw nsw i64 %10, %12
  %17 = mul nuw nsw i64 %16, 20
  %18 = add nuw nsw i64 %17, 19
  %19 = getelementptr inbounds float, float* %0, i64 %18
  %20 = bitcast float* %19 to i32*
  %21 = load i32, i32* %20, align 4, !tbaa !10
  %22 = or i32 %21, 1
  store i32 %22, i32* %20, align 4, !tbaa !10
  br label %23

23:                                               ; preds = %11, %15
  %24 = add nuw nsw i64 %12, 1
  %25 = icmp eq i64 %24, 120
  br i1 %25, label %26, label %11, !llvm.loop !84

26:                                               ; preds = %23
  %27 = tail call i32 @fgetc(%struct._IO_FILE* %3)
  %28 = add nuw nsw i64 %8, 1
  %29 = icmp eq i64 %28, 120
  br i1 %29, label %30, label %7, !llvm.loop !85

30:                                               ; preds = %26
  %31 = tail call i32 @fgetc(%struct._IO_FILE* %3)
  %32 = add nuw nsw i64 %5, 1
  %33 = icmp eq i64 %32, 150
  br i1 %33, label %34, label %4, !llvm.loop !86

34:                                               ; preds = %30
  %35 = tail call i32 @fclose(%struct._IO_FILE* %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @LBM_initializeSpecialCellsForLDC(float* nocapture %0) local_unnamed_addr #22 {
  br label %2

2:                                                ; preds = %1, %138
  %3 = phi i64 [ -2, %1 ], [ %139, %138 ]
  %4 = icmp eq i64 %3, 1
  %5 = icmp eq i64 %3, 148
  %6 = or i1 %4, %5
  %7 = mul nsw i64 %3, 15360
  %8 = trunc i64 %3 to i32
  switch i32 %8, label %44 [
    i32 149, label %9
    i32 0, label %9
  ]

9:                                                ; preds = %2, %2
  br label %10

10:                                               ; preds = %9, %41
  %11 = phi i64 [ %42, %41 ], [ 0, %9 ]
  %12 = shl nsw i64 %11, 7
  %13 = add nsw i64 %12, %7
  br label %14

14:                                               ; preds = %14, %10
  %15 = phi i64 [ 0, %10 ], [ %39, %14 ]
  %16 = add nsw i64 %13, %15
  %17 = mul nsw i64 %16, 20
  %18 = add nsw i64 %17, 19
  %19 = getelementptr inbounds float, float* %0, i64 %18
  %20 = bitcast float* %19 to i32*
  %21 = load i32, i32* %20, align 4, !tbaa !10
  %22 = or i32 %21, 1
  store i32 %22, i32* %20, align 4, !tbaa !10
  %23 = add nuw nsw i64 %15, 1
  %24 = add nsw i64 %13, %23
  %25 = mul nsw i64 %24, 20
  %26 = add nsw i64 %25, 19
  %27 = getelementptr inbounds float, float* %0, i64 %26
  %28 = bitcast float* %27 to i32*
  %29 = load i32, i32* %28, align 4, !tbaa !10
  %30 = or i32 %29, 1
  store i32 %30, i32* %28, align 4, !tbaa !10
  %31 = add nuw nsw i64 %15, 2
  %32 = add nsw i64 %13, %31
  %33 = mul nsw i64 %32, 20
  %34 = add nsw i64 %33, 19
  %35 = getelementptr inbounds float, float* %0, i64 %34
  %36 = bitcast float* %35 to i32*
  %37 = load i32, i32* %36, align 4, !tbaa !10
  %38 = or i32 %37, 1
  store i32 %38, i32* %36, align 4, !tbaa !10
  %39 = add nuw nsw i64 %15, 3
  %40 = icmp eq i64 %39, 120
  br i1 %40, label %41, label %14, !llvm.loop !87

41:                                               ; preds = %14
  %42 = add nuw nsw i64 %11, 1
  %43 = icmp eq i64 %42, 120
  br i1 %43, label %138, label %10, !llvm.loop !88

44:                                               ; preds = %2, %135
  %45 = phi i64 [ %136, %135 ], [ 0, %2 ]
  %46 = shl nsw i64 %45, 7
  %47 = add nsw i64 %46, %7
  %48 = trunc i64 %45 to i32
  switch i32 %48, label %77 [
    i32 119, label %49
    i32 0, label %49
  ]

49:                                               ; preds = %44, %44
  br label %50

50:                                               ; preds = %50, %49
  %51 = phi i64 [ 0, %49 ], [ %75, %50 ]
  %52 = add nsw i64 %47, %51
  %53 = mul nsw i64 %52, 20
  %54 = add nsw i64 %53, 19
  %55 = getelementptr inbounds float, float* %0, i64 %54
  %56 = bitcast float* %55 to i32*
  %57 = load i32, i32* %56, align 4, !tbaa !10
  %58 = or i32 %57, 1
  store i32 %58, i32* %56, align 4, !tbaa !10
  %59 = add nuw nsw i64 %51, 1
  %60 = add nsw i64 %47, %59
  %61 = mul nsw i64 %60, 20
  %62 = add nsw i64 %61, 19
  %63 = getelementptr inbounds float, float* %0, i64 %62
  %64 = bitcast float* %63 to i32*
  %65 = load i32, i32* %64, align 4, !tbaa !10
  %66 = or i32 %65, 1
  store i32 %66, i32* %64, align 4, !tbaa !10
  %67 = add nuw nsw i64 %51, 2
  %68 = add nsw i64 %47, %67
  %69 = mul nsw i64 %68, 20
  %70 = add nsw i64 %69, 19
  %71 = getelementptr inbounds float, float* %0, i64 %70
  %72 = bitcast float* %71 to i32*
  %73 = load i32, i32* %72, align 4, !tbaa !10
  %74 = or i32 %73, 1
  store i32 %74, i32* %72, align 4, !tbaa !10
  %75 = add nuw nsw i64 %51, 3
  %76 = icmp eq i64 %75, 120
  br i1 %76, label %135, label %50, !llvm.loop !87

77:                                               ; preds = %44
  %78 = trunc i64 %45 to i32
  %79 = add i32 %78, -2
  %80 = icmp ult i32 %79, 116
  %81 = and i1 %80, %6
  br i1 %81, label %109, label %82

82:                                               ; preds = %77, %106
  %83 = phi i64 [ %107, %106 ], [ 0, %77 ]
  %84 = trunc i64 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = add nsw i64 %47, %83
  %88 = mul nsw i64 %87, 20
  %89 = add nsw i64 %88, 19
  %90 = getelementptr inbounds float, float* %0, i64 %89
  %91 = bitcast float* %90 to i32*
  %92 = load i32, i32* %91, align 4, !tbaa !10
  %93 = or i32 %92, 1
  store i32 %93, i32* %91, align 4, !tbaa !10
  br label %94

94:                                               ; preds = %82, %86
  %95 = or i64 %83, 1
  %96 = trunc i64 %95 to i32
  %97 = icmp eq i32 %96, 119
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = add nsw i64 %47, %95
  %100 = mul nsw i64 %99, 20
  %101 = add nsw i64 %100, 19
  %102 = getelementptr inbounds float, float* %0, i64 %101
  %103 = bitcast float* %102 to i32*
  %104 = load i32, i32* %103, align 4, !tbaa !10
  %105 = or i32 %104, 1
  store i32 %105, i32* %103, align 4, !tbaa !10
  br label %106

106:                                              ; preds = %94, %98
  %107 = add nuw nsw i64 %83, 2
  %108 = icmp eq i64 %107, 120
  br i1 %108, label %135, label %82, !llvm.loop !87

109:                                              ; preds = %77, %132
  %110 = phi i64 [ %133, %132 ], [ 0, %77 ]
  %111 = trunc i64 %110 to i32
  switch i32 %111, label %116 [
    i32 119, label %112
    i32 0, label %112
  ]

112:                                              ; preds = %109, %109
  %113 = add nsw i64 %47, %110
  %114 = mul nsw i64 %113, 20
  %115 = add nsw i64 %114, 19
  br label %125

116:                                              ; preds = %109
  %117 = trunc i64 %110 to i32
  %118 = add i32 %117, -2
  %119 = icmp ult i32 %118, 116
  br i1 %119, label %120, label %132

120:                                              ; preds = %116
  %121 = add nsw i64 %47, %110
  %122 = mul i64 %121, 20
  %123 = add i64 %122, 19
  %124 = and i64 %123, 4294967295
  br label %125

125:                                              ; preds = %120, %112
  %126 = phi i64 [ %124, %120 ], [ %115, %112 ]
  %127 = phi i32 [ 2, %120 ], [ 1, %112 ]
  %128 = getelementptr inbounds float, float* %0, i64 %126
  %129 = bitcast float* %128 to i32*
  %130 = load i32, i32* %129, align 4, !tbaa !10
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4, !tbaa !10
  br label %132

132:                                              ; preds = %125, %116
  %133 = add nuw nsw i64 %110, 1
  %134 = icmp eq i64 %133, 120
  br i1 %134, label %135, label %109, !llvm.loop !87

135:                                              ; preds = %50, %106, %132
  %136 = add nuw nsw i64 %45, 1
  %137 = icmp eq i64 %136, 120
  br i1 %137, label %138, label %44, !llvm.loop !88

138:                                              ; preds = %41, %135
  %139 = add nsw i64 %3, 1
  %140 = icmp eq i64 %139, 152
  br i1 %140, label %141, label %2, !llvm.loop !89

141:                                              ; preds = %138
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @CUDA_LBM_allocateGrid(float** %0) local_unnamed_addr #11 {
  %2 = bitcast float** %0 to i8**
  %3 = tail call i32 @hipMalloc(i8** %2, i64 194150400)
  %4 = tail call i32 @hipGetLastError()
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %8 = tail call i8* @hipGetErrorString(i32 %4)
  %9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0), i32 673, i8* %8) #32
  tail call void @exit(i32 -1) #34
  unreachable

10:                                               ; preds = %1
  %11 = load float*, float** %0, align 8, !tbaa !9
  %12 = getelementptr inbounds float, float* %11, i64 614400
  store float* %12, float** %0, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @CUDA_LBM_initializeGrid(float** nocapture readonly %0, float** nocapture readonly %1) local_unnamed_addr #11 {
  %3 = load float*, float** %0, align 8, !tbaa !9
  %4 = getelementptr inbounds float, float* %3, i64 -614400
  %5 = bitcast float* %4 to i8*
  %6 = load float*, float** %1, align 8, !tbaa !9
  %7 = getelementptr inbounds float, float* %6, i64 -614400
  %8 = bitcast float* %7 to i8*
  %9 = tail call i32 @hipMemcpy(i8* nonnull %5, i8* nonnull %8, i64 194150400, i32 1)
  %10 = tail call i32 @hipGetLastError()
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %14 = tail call i8* @hipGetErrorString(i32 %10)
  %15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0), i32 727, i8* %14) #32
  tail call void @exit(i32 -1) #34
  unreachable

16:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @LBM_showGridStatistics(float* nocapture readonly %0) local_unnamed_addr #8 {
  br label %2

2:                                                ; preds = %1, %192
  %3 = phi i64 [ 0, %1 ], [ %193, %192 ]
  %4 = phi float [ 0.000000e+00, %1 ], [ %113, %192 ]
  %5 = phi i32 [ 0, %1 ], [ %186, %192 ]
  %6 = phi float [ 0xC6293E5940000000, %1 ], [ %112, %192 ]
  %7 = phi float [ 0x46293E5940000000, %1 ], [ %111, %192 ]
  %8 = phi i32 [ 0, %1 ], [ %185, %192 ]
  %9 = phi float [ 0xC6293E5940000000, %1 ], [ %184, %192 ]
  %10 = phi float [ 0x46293E5940000000, %1 ], [ %183, %192 ]
  %11 = phi i32 [ 0, %1 ], [ %182, %192 ]
  %12 = mul nuw nsw i64 %3, 15360
  br label %13

13:                                               ; preds = %2, %189
  %14 = phi i64 [ 0, %2 ], [ %190, %189 ]
  %15 = phi float [ %4, %2 ], [ %113, %189 ]
  %16 = phi i32 [ %5, %2 ], [ %186, %189 ]
  %17 = phi float [ %6, %2 ], [ %112, %189 ]
  %18 = phi float [ %7, %2 ], [ %111, %189 ]
  %19 = phi i32 [ %8, %2 ], [ %185, %189 ]
  %20 = phi float [ %9, %2 ], [ %184, %189 ]
  %21 = phi float [ %10, %2 ], [ %183, %189 ]
  %22 = phi i32 [ %11, %2 ], [ %182, %189 ]
  %23 = shl nsw i64 %14, 7
  %24 = add nuw nsw i64 %23, %12
  br label %25

25:                                               ; preds = %13, %181
  %26 = phi i64 [ 0, %13 ], [ %187, %181 ]
  %27 = phi float [ %15, %13 ], [ %113, %181 ]
  %28 = phi i32 [ %16, %13 ], [ %186, %181 ]
  %29 = phi float [ %17, %13 ], [ %112, %181 ]
  %30 = phi float [ %18, %13 ], [ %111, %181 ]
  %31 = phi i32 [ %19, %13 ], [ %185, %181 ]
  %32 = phi float [ %20, %13 ], [ %184, %181 ]
  %33 = phi float [ %21, %13 ], [ %183, %181 ]
  %34 = phi i32 [ %22, %13 ], [ %182, %181 ]
  %35 = add nuw nsw i64 %24, %26
  %36 = mul nuw nsw i64 %35, 20
  %37 = getelementptr inbounds float, float* %0, i64 %36
  %38 = load float, float* %37, align 4, !tbaa !61
  %39 = or i64 %36, 1
  %40 = getelementptr inbounds float, float* %0, i64 %39
  %41 = load float, float* %40, align 4, !tbaa !61
  %42 = fadd contract float %38, %41
  %43 = or i64 %36, 2
  %44 = getelementptr inbounds float, float* %0, i64 %43
  %45 = load float, float* %44, align 4, !tbaa !61
  %46 = fadd contract float %42, %45
  %47 = or i64 %36, 3
  %48 = getelementptr inbounds float, float* %0, i64 %47
  %49 = load float, float* %48, align 4, !tbaa !61
  %50 = fadd contract float %46, %49
  %51 = add nuw nsw i64 %36, 4
  %52 = getelementptr inbounds float, float* %0, i64 %51
  %53 = load float, float* %52, align 4, !tbaa !61
  %54 = fadd contract float %50, %53
  %55 = add nuw nsw i64 %36, 5
  %56 = getelementptr inbounds float, float* %0, i64 %55
  %57 = load float, float* %56, align 4, !tbaa !61
  %58 = fadd contract float %54, %57
  %59 = add nuw nsw i64 %36, 6
  %60 = getelementptr inbounds float, float* %0, i64 %59
  %61 = load float, float* %60, align 4, !tbaa !61
  %62 = fadd contract float %58, %61
  %63 = add nuw nsw i64 %36, 7
  %64 = getelementptr inbounds float, float* %0, i64 %63
  %65 = load float, float* %64, align 4, !tbaa !61
  %66 = fadd contract float %62, %65
  %67 = add nuw nsw i64 %36, 8
  %68 = getelementptr inbounds float, float* %0, i64 %67
  %69 = load float, float* %68, align 4, !tbaa !61
  %70 = fadd contract float %66, %69
  %71 = add nuw nsw i64 %36, 9
  %72 = getelementptr inbounds float, float* %0, i64 %71
  %73 = load float, float* %72, align 4, !tbaa !61
  %74 = fadd contract float %70, %73
  %75 = add nuw nsw i64 %36, 10
  %76 = getelementptr inbounds float, float* %0, i64 %75
  %77 = load float, float* %76, align 4, !tbaa !61
  %78 = fadd contract float %74, %77
  %79 = add nuw nsw i64 %36, 11
  %80 = getelementptr inbounds float, float* %0, i64 %79
  %81 = load float, float* %80, align 4, !tbaa !61
  %82 = fadd contract float %78, %81
  %83 = add nuw nsw i64 %36, 12
  %84 = getelementptr inbounds float, float* %0, i64 %83
  %85 = load float, float* %84, align 4, !tbaa !61
  %86 = fadd contract float %82, %85
  %87 = add nuw nsw i64 %36, 13
  %88 = getelementptr inbounds float, float* %0, i64 %87
  %89 = load float, float* %88, align 4, !tbaa !61
  %90 = fadd contract float %86, %89
  %91 = add nuw nsw i64 %36, 14
  %92 = getelementptr inbounds float, float* %0, i64 %91
  %93 = load float, float* %92, align 4, !tbaa !61
  %94 = fadd contract float %90, %93
  %95 = add nuw nsw i64 %36, 15
  %96 = getelementptr inbounds float, float* %0, i64 %95
  %97 = load float, float* %96, align 4, !tbaa !61
  %98 = fadd contract float %94, %97
  %99 = add nuw nsw i64 %36, 16
  %100 = getelementptr inbounds float, float* %0, i64 %99
  %101 = load float, float* %100, align 4, !tbaa !61
  %102 = fadd contract float %98, %101
  %103 = add nuw nsw i64 %36, 17
  %104 = getelementptr inbounds float, float* %0, i64 %103
  %105 = load float, float* %104, align 4, !tbaa !61
  %106 = fadd contract float %102, %105
  %107 = add nuw nsw i64 %36, 18
  %108 = getelementptr inbounds float, float* %0, i64 %107
  %109 = load float, float* %108, align 4, !tbaa !61
  %110 = fadd contract float %106, %109
  %111 = tail call float @llvm.minnum.f32(float %110, float %30)
  %112 = tail call float @llvm.maxnum.f32(float %110, float %29)
  %113 = fadd contract float %27, %110
  %114 = add nuw nsw i64 %36, 19
  %115 = getelementptr inbounds float, float* %0, i64 %114
  %116 = bitcast float* %115 to i32*
  %117 = load i32, i32* %116, align 4, !tbaa !10
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %25
  %121 = add nsw i32 %28, 1
  br label %181

122:                                              ; preds = %25
  %123 = lshr i32 %117, 1
  %124 = and i32 %123, 1
  %125 = xor i32 %124, 1
  %126 = add nsw i32 %125, %34
  %127 = add nsw i32 %124, %31
  %128 = fsub contract float %41, %45
  %129 = fadd contract float %128, %65
  %130 = fadd contract float %129, %69
  %131 = fsub contract float %130, %73
  %132 = fsub contract float %131, %77
  %133 = fadd contract float %132, %81
  %134 = fadd contract float %133, %85
  %135 = fsub contract float %134, %89
  %136 = fsub contract float %135, %93
  %137 = insertelement <2 x float> poison, float %57, i64 0
  %138 = insertelement <2 x float> %137, float %49, i64 1
  %139 = insertelement <2 x float> poison, float %61, i64 0
  %140 = insertelement <2 x float> %139, float %53, i64 1
  %141 = fsub contract <2 x float> %138, %140
  %142 = insertelement <2 x float> poison, float %81, i64 0
  %143 = insertelement <2 x float> %142, float %65, i64 1
  %144 = fadd contract <2 x float> %141, %143
  %145 = insertelement <2 x float> poison, float %85, i64 0
  %146 = insertelement <2 x float> %145, float %69, i64 1
  %147 = fsub contract <2 x float> %144, %146
  %148 = insertelement <2 x float> poison, float %89, i64 0
  %149 = insertelement <2 x float> %148, float %73, i64 1
  %150 = fadd contract <2 x float> %147, %149
  %151 = insertelement <2 x float> poison, float %93, i64 0
  %152 = insertelement <2 x float> %151, float %77, i64 1
  %153 = fsub contract <2 x float> %150, %152
  %154 = insertelement <2 x float> poison, float %97, i64 0
  %155 = shufflevector <2 x float> %154, <2 x float> poison, <2 x i32> zeroinitializer
  %156 = fadd contract <2 x float> %153, %155
  %157 = insertelement <2 x float> poison, float %101, i64 0
  %158 = shufflevector <2 x float> %157, <2 x float> poison, <2 x i32> zeroinitializer
  %159 = fsub contract <2 x float> %156, %158
  %160 = fadd contract <2 x float> %156, %158
  %161 = shufflevector <2 x float> %159, <2 x float> %160, <2 x i32> <i32 0, i32 3>
  %162 = insertelement <2 x float> poison, float %105, i64 0
  %163 = shufflevector <2 x float> %162, <2 x float> poison, <2 x i32> zeroinitializer
  %164 = fadd contract <2 x float> %161, %163
  %165 = fsub contract <2 x float> %161, %163
  %166 = shufflevector <2 x float> %164, <2 x float> %165, <2 x i32> <i32 0, i32 3>
  %167 = insertelement <2 x float> poison, float %109, i64 0
  %168 = shufflevector <2 x float> %167, <2 x float> poison, <2 x i32> zeroinitializer
  %169 = fsub contract <2 x float> %166, %168
  %170 = fmul contract float %136, %136
  %171 = fmul contract <2 x float> %169, %169
  %172 = extractelement <2 x float> %171, i64 1
  %173 = fadd contract float %170, %172
  %174 = extractelement <2 x float> %171, i64 0
  %175 = fadd contract float %174, %173
  %176 = fmul contract float %110, %110
  %177 = fdiv contract float %175, %176
  %178 = tail call float @llvm.minnum.f32(float %177, float %33)
  %179 = fcmp contract ogt float %177, %32
  br i1 %179, label %180, label %181

180:                                              ; preds = %122
  br label %181

181:                                              ; preds = %120, %180, %122
  %182 = phi i32 [ %34, %120 ], [ %126, %180 ], [ %126, %122 ]
  %183 = phi float [ %33, %120 ], [ %178, %180 ], [ %178, %122 ]
  %184 = phi float [ %32, %120 ], [ %177, %180 ], [ %32, %122 ]
  %185 = phi i32 [ %31, %120 ], [ %127, %180 ], [ %127, %122 ]
  %186 = phi i32 [ %121, %120 ], [ %28, %180 ], [ %28, %122 ]
  %187 = add nuw nsw i64 %26, 1
  %188 = icmp eq i64 %187, 120
  br i1 %188, label %189, label %25, !llvm.loop !90

189:                                              ; preds = %181
  %190 = add nuw nsw i64 %14, 1
  %191 = icmp eq i64 %190, 120
  br i1 %191, label %192, label %13, !llvm.loop !91

192:                                              ; preds = %189
  %193 = add nuw nsw i64 %3, 1
  %194 = icmp eq i64 %193, 150
  br i1 %194, label %195, label %2, !llvm.loop !92

195:                                              ; preds = %192
  %196 = fpext float %111 to double
  %197 = fpext float %112 to double
  %198 = fpext float %113 to double
  %199 = tail call contract float @sqrtf(float %183) #30
  %200 = fpext float %199 to double
  %201 = tail call contract float @sqrtf(float %184) #30
  %202 = fpext float %201 to double
  %203 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([138 x i8], [138 x i8]* @.str.35, i64 0, i64 0), i32 %186, i32 %185, i32 %182, double %196, double %197, double %198, double %200, double %202)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @CUDA_LBM_getDeviceGrid(float** nocapture readonly %0, float** nocapture readonly %1) local_unnamed_addr #11 {
  %3 = tail call i32 @hipDeviceSynchronize()
  %4 = tail call i32 @hipGetLastError()
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %8 = tail call i8* @hipGetErrorString(i32 %4)
  %9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0), i32 733, i8* %8) #32
  tail call void @exit(i32 -1) #34
  unreachable

10:                                               ; preds = %2
  %11 = load float*, float** %1, align 8, !tbaa !9
  %12 = getelementptr inbounds float, float* %11, i64 -614400
  %13 = bitcast float* %12 to i8*
  %14 = load float*, float** %0, align 8, !tbaa !9
  %15 = getelementptr inbounds float, float* %14, i64 -614400
  %16 = bitcast float* %15 to i8*
  %17 = tail call i32 @hipMemcpy(i8* nonnull %13, i8* nonnull %16, i64 194150400, i32 2)
  %18 = tail call i32 @hipGetLastError()
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %10
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %22 = tail call i8* @hipGetErrorString(i32 %18)
  %23 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0), i32 735, i8* %22) #32
  tail call void @exit(i32 -1) #34
  unreachable

24:                                               ; preds = %10
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @LBM_storeVelocityField(float* nocapture readonly %0, i8* nocapture readonly %1, i32 %2) local_unnamed_addr #8 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = bitcast float* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #30
  %8 = bitcast float* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #30
  %9 = bitcast float* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #30
  %10 = icmp eq i32 %2, 0
  %11 = select i1 %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0)
  %12 = tail call %struct._IO_FILE* @fopen(i8* %1, i8* %11)
  br label %13

13:                                               ; preds = %3, %143
  %14 = phi i64 [ 0, %3 ], [ %144, %143 ]
  %15 = mul nuw nsw i64 %14, 15360
  br label %16

16:                                               ; preds = %13, %140
  %17 = phi i64 [ 0, %13 ], [ %141, %140 ]
  %18 = shl nsw i64 %17, 7
  %19 = add nuw nsw i64 %18, %15
  br label %20

20:                                               ; preds = %16, %137
  %21 = phi i64 [ 0, %16 ], [ %138, %137 ]
  %22 = add nuw nsw i64 %19, %21
  %23 = mul nuw nsw i64 %22, 20
  %24 = getelementptr inbounds float, float* %0, i64 %23
  %25 = load float, float* %24, align 4, !tbaa !61
  %26 = or i64 %23, 1
  %27 = getelementptr inbounds float, float* %0, i64 %26
  %28 = load float, float* %27, align 4, !tbaa !61
  %29 = fadd contract float %25, %28
  %30 = or i64 %23, 2
  %31 = getelementptr inbounds float, float* %0, i64 %30
  %32 = load float, float* %31, align 4, !tbaa !61
  %33 = fadd contract float %29, %32
  %34 = or i64 %23, 3
  %35 = getelementptr inbounds float, float* %0, i64 %34
  %36 = load float, float* %35, align 4, !tbaa !61
  %37 = fadd contract float %33, %36
  %38 = add nuw nsw i64 %23, 4
  %39 = getelementptr inbounds float, float* %0, i64 %38
  %40 = load float, float* %39, align 4, !tbaa !61
  %41 = fadd contract float %37, %40
  %42 = add nuw nsw i64 %23, 5
  %43 = getelementptr inbounds float, float* %0, i64 %42
  %44 = load float, float* %43, align 4, !tbaa !61
  %45 = fadd contract float %41, %44
  %46 = add nuw nsw i64 %23, 6
  %47 = getelementptr inbounds float, float* %0, i64 %46
  %48 = load float, float* %47, align 4, !tbaa !61
  %49 = fadd contract float %45, %48
  %50 = add nuw nsw i64 %23, 7
  %51 = getelementptr inbounds float, float* %0, i64 %50
  %52 = load float, float* %51, align 4, !tbaa !61
  %53 = fadd contract float %49, %52
  %54 = add nuw nsw i64 %23, 8
  %55 = getelementptr inbounds float, float* %0, i64 %54
  %56 = load float, float* %55, align 4, !tbaa !61
  %57 = fadd contract float %53, %56
  %58 = add nuw nsw i64 %23, 9
  %59 = getelementptr inbounds float, float* %0, i64 %58
  %60 = load float, float* %59, align 4, !tbaa !61
  %61 = fadd contract float %57, %60
  %62 = add nuw nsw i64 %23, 10
  %63 = getelementptr inbounds float, float* %0, i64 %62
  %64 = load float, float* %63, align 4, !tbaa !61
  %65 = fadd contract float %61, %64
  %66 = add nuw nsw i64 %23, 11
  %67 = getelementptr inbounds float, float* %0, i64 %66
  %68 = load float, float* %67, align 4, !tbaa !61
  %69 = fadd contract float %65, %68
  %70 = add nuw nsw i64 %23, 12
  %71 = getelementptr inbounds float, float* %0, i64 %70
  %72 = load float, float* %71, align 4, !tbaa !61
  %73 = fadd contract float %69, %72
  %74 = add nuw nsw i64 %23, 13
  %75 = getelementptr inbounds float, float* %0, i64 %74
  %76 = load float, float* %75, align 4, !tbaa !61
  %77 = fadd contract float %73, %76
  %78 = add nuw nsw i64 %23, 14
  %79 = getelementptr inbounds float, float* %0, i64 %78
  %80 = load float, float* %79, align 4, !tbaa !61
  %81 = fadd contract float %77, %80
  %82 = add nuw nsw i64 %23, 15
  %83 = getelementptr inbounds float, float* %0, i64 %82
  %84 = load float, float* %83, align 4, !tbaa !61
  %85 = fadd contract float %81, %84
  %86 = add nuw nsw i64 %23, 16
  %87 = getelementptr inbounds float, float* %0, i64 %86
  %88 = load float, float* %87, align 4, !tbaa !61
  %89 = fadd contract float %85, %88
  %90 = add nuw nsw i64 %23, 17
  %91 = getelementptr inbounds float, float* %0, i64 %90
  %92 = load float, float* %91, align 4, !tbaa !61
  %93 = fadd contract float %89, %92
  %94 = add nuw nsw i64 %23, 18
  %95 = getelementptr inbounds float, float* %0, i64 %94
  %96 = load float, float* %95, align 4, !tbaa !61
  %97 = fadd contract float %93, %96
  %98 = fsub contract float %36, %40
  %99 = fadd contract float %98, %52
  %100 = fsub contract float %99, %56
  %101 = fadd contract float %100, %60
  %102 = fsub contract float %101, %64
  %103 = fadd contract float %102, %84
  %104 = fadd contract float %103, %88
  %105 = fsub contract float %104, %92
  %106 = fsub contract float %105, %96
  %107 = fsub contract float %28, %32
  %108 = fadd contract float %107, %52
  %109 = fadd contract float %108, %56
  %110 = fsub contract float %109, %60
  %111 = fsub contract float %110, %64
  %112 = fadd contract float %111, %68
  %113 = fadd contract float %112, %72
  %114 = fsub contract float %113, %76
  %115 = fsub contract float %114, %80
  %116 = fsub contract float %44, %48
  %117 = fadd contract float %116, %68
  %118 = fsub contract float %117, %72
  %119 = fadd contract float %118, %76
  %120 = fsub contract float %119, %80
  %121 = fadd contract float %120, %84
  %122 = fsub contract float %121, %88
  %123 = fadd contract float %122, %92
  %124 = fsub contract float %123, %96
  %125 = fdiv contract float %106, %97
  store float %125, float* %4, align 4, !tbaa !61
  %126 = fdiv contract float %115, %97
  store float %126, float* %5, align 4, !tbaa !61
  %127 = fdiv contract float %124, %97
  store float %127, float* %6, align 4, !tbaa !61
  br i1 %10, label %132, label %128

128:                                              ; preds = %20
  %129 = call i64 @fwrite(i8* nonnull %7, i64 4, i64 1, %struct._IO_FILE* %12) #30
  %130 = call i64 @fwrite(i8* nonnull %8, i64 4, i64 1, %struct._IO_FILE* %12) #30
  %131 = call i64 @fwrite(i8* nonnull %9, i64 4, i64 1, %struct._IO_FILE* %12) #30
  br label %137

132:                                              ; preds = %20
  %133 = fpext float %125 to double
  %134 = fpext float %126 to double
  %135 = fpext float %127 to double
  %136 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0), double %133, double %134, double %135)
  br label %137

137:                                              ; preds = %128, %132
  %138 = add nuw nsw i64 %21, 1
  %139 = icmp eq i64 %138, 120
  br i1 %139, label %140, label %20, !llvm.loop !93

140:                                              ; preds = %137
  %141 = add nuw nsw i64 %17, 1
  %142 = icmp eq i64 %141, 120
  br i1 %142, label %143, label %16, !llvm.loop !94

143:                                              ; preds = %140
  %144 = add nuw nsw i64 %14, 1
  %145 = icmp eq i64 %144, 150
  br i1 %145, label %146, label %13, !llvm.loop !95

146:                                              ; preds = %143
  %147 = tail call i32 @fclose(%struct._IO_FILE* %12)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @CUDA_LBM_freeGrid(float** nocapture %0) local_unnamed_addr #11 {
  %2 = load float*, float** %0, align 8, !tbaa !9
  %3 = getelementptr inbounds float, float* %2, i64 -614400
  %4 = bitcast float* %3 to i8*
  %5 = tail call i32 @hipFree(i8* nonnull %4)
  store float* null, float** %0, align 8, !tbaa !9
  ret void
}

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #12

declare dso_local i32 @hipGetLastError() local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #5

declare dso_local i8* @hipGetErrorString(i32) local_unnamed_addr #12

declare dso_local i32 @hipMalloc(i8**, i64) local_unnamed_addr #12

declare dso_local i32 @hipFree(i8*) local_unnamed_addr #12

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #12

declare dso_local i32 @hipDeviceSynchronize() local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare dso_local noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fgetc(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

declare dso_local i32 @hipEventCreate(%struct.ihipEvent_t**) local_unnamed_addr #12

declare dso_local i32 @hipEventRecord(%struct.ihipEvent_t*, %struct.ihipStream_t*) local_unnamed_addr #12

declare dso_local i32 @hipEventElapsedTime(float*, %struct.ihipEvent_t*, %struct.ihipEvent_t*) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #23

; Function Attrs: nounwind
declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #24

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local float @sqrtf(float) local_unnamed_addr #25

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

declare dso_local i32 @__hipRegisterFunction(i8**, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32*) local_unnamed_addr

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
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (float*, float*)** @_Z27performStreamCollide_kernelPfS_ to i8*), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strcpy(i8* noalias returned writeonly, i8* noalias nocapture readonly) local_unnamed_addr #26

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #27

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #28

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.minnum.f32(float, float) #29

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.maxnum.f32(float, float) #29

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
attributes #14 = { norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #16 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { argmemonly nofree nounwind willreturn }
attributes #27 = { nofree nounwind }
attributes #28 = { inaccessiblememonly nofree nounwind willreturn }
attributes #29 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #30 = { nounwind }
attributes #31 = { cold nounwind }
attributes #32 = { cold }
attributes #33 = { nounwind readonly willreturn }
attributes #34 = { noreturn nounwind }

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
!74 = !{!"_ZTS10MAIN_Param", !11, i64 0, !5, i64 8, !5, i64 16}
!75 = !{!74, !5, i64 8}
!76 = !{!74, !5, i64 16}
!77 = distinct !{!77, !14}
!78 = !{!79, !37, i64 48}
!79 = !{!"_ZTS4stat", !37, i64 0, !37, i64 8, !37, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !80, i64 72, !80, i64 88, !80, i64 104, !6, i64 120}
!80 = !{!"_ZTS8timespec", !37, i64 0, !37, i64 8}
!81 = distinct !{!81, !14}
!82 = distinct !{!82, !14}
!83 = distinct !{!83, !14}
!84 = distinct !{!84, !14}
!85 = distinct !{!85, !14}
!86 = distinct !{!86, !14}
!87 = distinct !{!87, !14}
!88 = distinct !{!88, !14}
!89 = distinct !{!89, !14}
!90 = distinct !{!90, !14}
!91 = distinct !{!91, !14}
!92 = distinct !{!92, !14}
!93 = distinct !{!93, !14}
!94 = distinct !{!94, !14}
!95 = distinct !{!95, !14}
