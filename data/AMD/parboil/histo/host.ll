; ModuleID = 'histo.cpp'
source_filename = "histo.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.HIP_vector_type.0 = type { %struct.HIP_vector_base.1 }
%struct.HIP_vector_base.1 = type { %union.anon.2 }
%union.anon.2 = type { <2 x i32> }
%struct.HIP_vector_type = type { %struct.HIP_vector_base }
%struct.HIP_vector_base = type { %union.anon }
%union.anon = type { <4 x i8> }
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
%struct.RGB = type { i8, i8, i8 }
%struct.bmp_image = type { [2 x i8], %struct.bmpfile_header_t, %struct.bmp_dib_header_t, i32*, i8* }
%struct.bmpfile_header_t = type { i32, i16, i16, i32 }
%struct.bmp_dib_header_t = type { i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }
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
@.str.23 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"Input file expected\0A\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"Could not append default timer set!\0A\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"PreScanKernel\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"PostPreMems\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"IntermediatesKernel\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"MainKernel\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"FinalKernel\00", align 1
@.str.33 = private unnamed_addr constant [45 x i8] c"Expected at least one command line argument\0A\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.35 = private unnamed_addr constant [53 x i8] c"Error reading input and output dimensions from file\0A\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"Error reading input array from file\0A\00", align 1
@_Z20histo_prescan_kernelPjiS_ = dso_local constant void (i32*, i32, i32*)* @_Z35__device_stub__histo_prescan_kernelPjiS_, align 8
@_Z26histo_intermediates_kernelP15HIP_vector_typeIjLj2EEjjjPS_IhLj4EE = dso_local constant void (%struct.HIP_vector_type.0*, i32, i32, i32, %struct.HIP_vector_type*)* @_Z41__device_stub__histo_intermediates_kernelP15HIP_vector_typeIjLj2EEjjjPS_IhLj4EE, align 8
@_Z17histo_main_kernelP15HIP_vector_typeIhLj4EEjjjjjPjS2_S2_ = dso_local constant void (%struct.HIP_vector_type*, i32, i32, i32, i32, i32, i32*, i32*, i32*)* @_Z32__device_stub__histo_main_kernelP15HIP_vector_typeIhLj4EEjjjjjPjS2_S2_, align 8
@_Z18histo_final_kerneljjjjPjS_S_S_ = dso_local constant void (i32, i32, i32, i32, i32*, i32*, i32*, i32*)* @_Z33__device_stub__histo_final_kerneljjjjPjS_S_S_, align 8
@.str.38 = private unnamed_addr constant [17 x i8] c"delete_argument\0A\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"next_argument\0A\00", align 1
@0 = private unnamed_addr constant [30 x i8] c"_Z20histo_prescan_kernelPjiS_\00", align 1
@1 = private unnamed_addr constant [69 x i8] c"_Z26histo_intermediates_kernelP15HIP_vector_typeIjLj2EEjjjPS_IhLj4EE\00", align 1
@2 = private unnamed_addr constant [35 x i8] c"_Z18histo_final_kerneljjjjPjS_S_S_\00", align 1
@3 = private unnamed_addr constant [60 x i8] c"_Z17histo_main_kernelP15HIP_vector_typeIhLj4EEjjjjjPjS2_S2_\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias %struct.pb_Parameters* @pb_ReadParameters(i32* nocapture %0, i8** %1) local_unnamed_addr #0 {
  %3 = tail call noalias align 16 dereferenceable_or_null(16) i8* @malloc(i64 16) #23
  %4 = bitcast i8* %3 to %struct.pb_Parameters*
  %5 = getelementptr inbounds %struct.pb_Parameters, %struct.pb_Parameters* %4, i64 0, i32 0
  store i8* null, i8** %5, align 16, !tbaa !3
  %6 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #23
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
  %32 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %31) #24
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
  tail call void @free(i8* %42) #23
  %43 = load i8*, i8** %37, align 8, !tbaa !9
  %44 = icmp slt i32 %16, %36
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %47 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %46) #24
  br label %48

48:                                               ; preds = %41, %45
  %49 = add nsw i32 %13, -2
  %50 = getelementptr inbounds i8*, i8** %15, i64 2
  %51 = tail call noalias i8* @strdup(i8* %43) #23
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
  %59 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %58) #24
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
  %77 = tail call noalias align 16 i8* @malloc(i64 %76) #23
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
  %97 = tail call noalias align 16 i8* @malloc(i64 %96) #23
  %98 = getelementptr inbounds i8*, i8** %78, i64 %83
  store i8* %97, i8** %98, align 8, !tbaa !9
  %99 = ashr exact i64 %94, 32
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %97, i8* align 1 %84, i64 %99, i1 false) #23
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
  %112 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %111) #24
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
  %286 = tail call i32 @fputs(i8* nonnull %284, %struct._IO_FILE* %285) #25
  %287 = load i8*, i8** %5, align 16, !tbaa !3
  tail call void @free(i8* %287) #23
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
  tail call void @free(i8* nonnull %294) #23
  %296 = getelementptr inbounds i8*, i8** %295, i64 1
  %297 = load i8*, i8** %296, align 8, !tbaa !9
  %298 = icmp eq i8* %297, null
  br i1 %298, label %299, label %293, !llvm.loop !28

299:                                              ; preds = %293, %290
  %300 = bitcast i8** %288 to i8*
  tail call void @free(i8* %300) #23
  br label %301

301:                                              ; preds = %283, %299
  tail call void @free(i8* %3) #23
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
  tail call void @free(i8* %3) #23
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
  tail call void @free(i8* nonnull %11) #23
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8, !tbaa !9
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %10, !llvm.loop !28

16:                                               ; preds = %10, %7
  %17 = bitcast i8** %5 to i8*
  tail call void @free(i8* %17) #23
  br label %18

18:                                               ; preds = %1, %16
  %19 = bitcast %struct.pb_Parameters* %0 to i8*
  tail call void @free(i8* %19) #23
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
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %7) #25
  br label %19

9:                                                ; preds = %1
  store i32 1, i32* %3, align 8, !tbaa !30
  %10 = bitcast %struct.timeval* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #23
  %11 = call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* null) #23
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !35
  %14 = mul nsw i64 %13, 1000000
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 1
  %16 = load i64, i64* %15, align 8, !tbaa !38
  %17 = add nsw i64 %14, %16
  %18 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %0, i64 0, i32 2
  store i64 %17, i64* %18, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #23
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
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %8) #25
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ 1, %7 ], [ 3, %2 ]
  %12 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %1, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !30
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %16) #25
  %18 = and i32 %11, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %22 = tail call i64 @fwrite(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i64 53, i64 1, %struct._IO_FILE* %21) #25
  br label %49

23:                                               ; preds = %10, %15
  %24 = phi i32 [ %18, %15 ], [ %11, %10 ]
  store i32 1, i32* %4, align 8, !tbaa !30
  store i32 1, i32* %12, align 8, !tbaa !30
  %25 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #23
  %26 = call i32 @gettimeofday(%struct.timeval* nonnull %3, %struct.timezone* null) #23
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #23
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
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %7) #25
  br label %24

9:                                                ; preds = %1
  store i32 0, i32* %3, align 8, !tbaa !30
  %10 = bitcast %struct.timeval* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #23
  %11 = call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* null) #23
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !35
  %14 = mul nsw i64 %13, 1000000
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 1
  %16 = load i64, i64* %15, align 8, !tbaa !38
  %17 = add nsw i64 %14, %16
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #23
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
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %8) #25
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ 1, %7 ], [ 3, %2 ]
  %12 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %1, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !30
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %16) #25
  %18 = and i32 %11, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %22 = tail call i64 @fwrite(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i64 52, i64 1, %struct._IO_FILE* %21) #25
  br label %52

23:                                               ; preds = %10, %15
  %24 = phi i32 [ %18, %15 ], [ %11, %10 ]
  store i32 0, i32* %4, align 8, !tbaa !30
  store i32 0, i32* %12, align 8, !tbaa !30
  %25 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #23
  %26 = call i32 @gettimeofday(%struct.timeval* nonnull %3, %struct.timezone* null) #23
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 0
  %28 = load i64, i64* %27, align 8, !tbaa !35
  %29 = mul nsw i64 %28, 1000000
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 1
  %31 = load i64, i64* %30, align 8, !tbaa !38
  %32 = add nsw i64 %29, %31
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #23
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
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %6) #25
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
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #23
  %4 = call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* null) #23
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !35
  %7 = mul nsw i64 %6, 1000000
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 1
  %9 = load i64, i64* %8, align 8, !tbaa !38
  %10 = add nsw i64 %7, %9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #23
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
  %4 = tail call noalias align 16 dereferenceable_or_null(40) i8* @malloc(i64 40) #23
  %5 = bitcast i8* %4 to %struct.pb_SubTimer*
  %6 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #26
  %7 = shl i64 %6, 32
  %8 = add i64 %7, 4294967296
  %9 = ashr exact i64 %8, 32
  %10 = tail call noalias align 16 i8* @malloc(i64 %9) #23
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
  %21 = tail call noalias align 16 dereferenceable_or_null(16) i8* @malloc(i64 16) #23
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
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %34) #24
  br label %143

36:                                               ; preds = %29
  store i32 0, i32* %30, align 8, !tbaa !30
  %37 = bitcast %struct.timeval* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %37) #23
  %38 = call i32 @gettimeofday(%struct.timeval* nonnull %8, %struct.timezone* null) #23
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 0, i32 0
  %40 = load i64, i64* %39, align 8, !tbaa !35
  %41 = mul nsw i64 %40, 1000000
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 0, i32 1
  %43 = load i64, i64* %42, align 8, !tbaa !38
  %44 = add nsw i64 %41, %43
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %37) #23
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
  %58 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %57) #24
  br label %143

59:                                               ; preds = %52
  store i32 0, i32* %53, align 8, !tbaa !30
  %60 = bitcast %struct.timeval* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %60) #23
  %61 = call i32 @gettimeofday(%struct.timeval* nonnull %7, %struct.timezone* null) #23
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 0
  %63 = load i64, i64* %62, align 8, !tbaa !35
  %64 = mul nsw i64 %63, 1000000
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 1
  %66 = load i64, i64* %65, align 8, !tbaa !38
  %67 = add nsw i64 %64, %66
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %60) #23
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
  %95 = tail call noalias align 16 dereferenceable_or_null(32) i8* @malloc(i64 32) #23
  %96 = bitcast %struct.pb_async_time_marker_list** %94 to i8**
  store i8* %95, i8** %96, align 8, !tbaa !9
  %97 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #23
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
  %127 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %126) #24
  br label %143

128:                                              ; preds = %121
  store i32 0, i32* %122, align 8, !tbaa !30
  %129 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %129) #23
  %130 = call i32 @gettimeofday(%struct.timeval* nonnull %6, %struct.timezone* null) #23
  %131 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 0
  %132 = load i64, i64* %131, align 8, !tbaa !35
  %133 = mul nsw i64 %132, 1000000
  %134 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %135 = load i64, i64* %134, align 8, !tbaa !38
  %136 = add nsw i64 %133, %135
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %129) #23
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
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %144) #23
  %145 = call i32 @gettimeofday(%struct.timeval* nonnull %5, %struct.timezone* null) #23
  %146 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 0
  %147 = load i64, i64* %146, align 8, !tbaa !35
  %148 = mul nsw i64 %147, 1000000
  %149 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 1
  %150 = load i64, i64* %149, align 8, !tbaa !38
  %151 = add nsw i64 %148, %150
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %144) #23
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
  %209 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %208) #24
  br label %283

210:                                              ; preds = %202
  store i32 1, i32* %204, align 8, !tbaa !30
  %211 = bitcast %struct.timeval* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %211) #23
  %212 = call i32 @gettimeofday(%struct.timeval* nonnull %4, %struct.timezone* null) #23
  %213 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0
  %214 = load i64, i64* %213, align 8, !tbaa !35
  %215 = mul nsw i64 %214, 1000000
  %216 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1
  %217 = load i64, i64* %216, align 8, !tbaa !38
  %218 = add nsw i64 %215, %217
  %219 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %203, i32 2
  store i64 %218, i64* %219, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %211) #23
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
  %228 = tail call noalias align 16 dereferenceable_or_null(32) i8* @malloc(i64 32) #23
  %229 = bitcast %struct.pb_async_time_marker_list** %152 to i8**
  store i8* %228, i8** %229, align 8, !tbaa !9
  %230 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #23
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
  %272 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %271) #24
  br label %283

273:                                              ; preds = %266
  store i32 1, i32* %267, align 8, !tbaa !30
  %274 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %274) #23
  %275 = call i32 @gettimeofday(%struct.timeval* nonnull %3, %struct.timezone* null) #23
  %276 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 0
  %277 = load i64, i64* %276, align 8, !tbaa !35
  %278 = mul nsw i64 %277, 1000000
  %279 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 1
  %280 = load i64, i64* %279, align 8, !tbaa !38
  %281 = add nsw i64 %278, %280
  %282 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 4, i32 2
  store i64 %281, i64* %282, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %274) #23
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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #23
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
  %61 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %60, i8* noundef nonnull dereferenceable(1) %49) #26
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
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #23
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
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %34) #24
  br label %143

36:                                               ; preds = %29
  store i32 0, i32* %30, align 8, !tbaa !30
  %37 = bitcast %struct.timeval* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %37) #23
  %38 = call i32 @gettimeofday(%struct.timeval* nonnull %10, %struct.timezone* null) #23
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i64 0, i32 0
  %40 = load i64, i64* %39, align 8, !tbaa !35
  %41 = mul nsw i64 %40, 1000000
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i64 0, i32 1
  %43 = load i64, i64* %42, align 8, !tbaa !38
  %44 = add nsw i64 %41, %43
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %37) #23
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
  %58 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %57) #24
  br label %143

59:                                               ; preds = %52
  store i32 0, i32* %53, align 8, !tbaa !30
  %60 = bitcast %struct.timeval* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %60) #23
  %61 = call i32 @gettimeofday(%struct.timeval* nonnull %9, %struct.timezone* null) #23
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i64 0, i32 0
  %63 = load i64, i64* %62, align 8, !tbaa !35
  %64 = mul nsw i64 %63, 1000000
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i64 0, i32 1
  %66 = load i64, i64* %65, align 8, !tbaa !38
  %67 = add nsw i64 %64, %66
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %60) #23
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
  %95 = tail call noalias align 16 dereferenceable_or_null(32) i8* @malloc(i64 32) #23
  %96 = bitcast %struct.pb_async_time_marker_list** %94 to i8**
  store i8* %95, i8** %96, align 8, !tbaa !9
  %97 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #23
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
  %127 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %126) #24
  br label %143

128:                                              ; preds = %121
  store i32 0, i32* %122, align 8, !tbaa !30
  %129 = bitcast %struct.timeval* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %129) #23
  %130 = call i32 @gettimeofday(%struct.timeval* nonnull %8, %struct.timezone* null) #23
  %131 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 0, i32 0
  %132 = load i64, i64* %131, align 8, !tbaa !35
  %133 = mul nsw i64 %132, 1000000
  %134 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 0, i32 1
  %135 = load i64, i64* %134, align 8, !tbaa !38
  %136 = add nsw i64 %133, %135
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %129) #23
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
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %144) #23
  %145 = call i32 @gettimeofday(%struct.timeval* nonnull %7, %struct.timezone* null) #23
  %146 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 0
  %147 = load i64, i64* %146, align 8, !tbaa !35
  %148 = mul nsw i64 %147, 1000000
  %149 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 1
  %150 = load i64, i64* %149, align 8, !tbaa !38
  %151 = add nsw i64 %148, %150
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %144) #23
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
  %214 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %213, i8* noundef nonnull %1) #26
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
  %241 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %240) #24
  br label %336

242:                                              ; preds = %235
  store i32 1, i32* %236, align 8, !tbaa !30
  %243 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %243) #23
  %244 = call i32 @gettimeofday(%struct.timeval* nonnull %6, %struct.timezone* null) #23
  %245 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 0
  %246 = load i64, i64* %245, align 8, !tbaa !35
  %247 = mul nsw i64 %246, 1000000
  %248 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %249 = load i64, i64* %248, align 8, !tbaa !38
  %250 = add nsw i64 %247, %249
  %251 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %221, i64 0, i32 1, i32 2
  store i64 %250, i64* %251, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %243) #23
  br label %336

252:                                              ; preds = %234
  %253 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %202, i32 0
  %254 = load i32, i32* %253, align 8, !tbaa !30
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %252
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %258 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %257) #24
  br label %336

259:                                              ; preds = %252
  store i32 1, i32* %253, align 8, !tbaa !30
  %260 = bitcast %struct.timeval* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %260) #23
  %261 = call i32 @gettimeofday(%struct.timeval* nonnull %5, %struct.timezone* null) #23
  %262 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 0
  %263 = load i64, i64* %262, align 8, !tbaa !35
  %264 = mul nsw i64 %263, 1000000
  %265 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 1
  %266 = load i64, i64* %265, align 8, !tbaa !38
  %267 = add nsw i64 %264, %266
  %268 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %202, i32 2
  store i64 %267, i64* %268, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %260) #23
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
  %281 = tail call noalias align 16 dereferenceable_or_null(32) i8* @malloc(i64 32) #23
  %282 = bitcast %struct.pb_async_time_marker_list** %152 to i8**
  store i8* %281, i8** %282, align 8, !tbaa !9
  %283 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #23
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
  %325 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %324) #24
  br label %336

326:                                              ; preds = %319
  store i32 1, i32* %320, align 8, !tbaa !30
  %327 = bitcast %struct.timeval* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %327) #23
  %328 = call i32 @gettimeofday(%struct.timeval* nonnull %4, %struct.timezone* null) #23
  %329 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0
  %330 = load i64, i64* %329, align 8, !tbaa !35
  %331 = mul nsw i64 %330, 1000000
  %332 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1
  %333 = load i64, i64* %332, align 8, !tbaa !38
  %334 = add nsw i64 %331, %333
  %335 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 4, i32 2
  store i64 %334, i64* %335, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %327) #23
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
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #23
  %5 = call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* null) #23
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 1
  %9 = load i64, i64* %8, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #23
  %10 = bitcast [6 x i8*]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %10) #23
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
  %24 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %23) #24
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
  %39 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %38) #24
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
  %58 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %57) #26
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
  %78 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %77) #24
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
  %97 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %96) #24
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
  %109 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %108) #24
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
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %10) #23
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
  tail call void @free(i8* %25) #23
  %26 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %11, align 8, !tbaa !9
  %27 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %26, i64 0, i32 3
  %28 = bitcast %struct.pb_async_time_marker_list* %26 to i8*
  tail call void @free(i8* %28) #23
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
  tail call void @free(i8* %39) #23
  %40 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %37, i64 0, i32 2
  %41 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %40, align 8, !tbaa !48
  %42 = bitcast %struct.pb_SubTimer* %37 to i8*
  tail call void @free(i8* %42) #23
  %43 = icmp eq %struct.pb_SubTimer* %41, null
  br i1 %43, label %44, label %36, !llvm.loop !72

44:                                               ; preds = %36
  %45 = bitcast %struct.pb_SubTimerList** %6 to i8**
  %46 = load i8*, i8** %45, align 8, !tbaa !9
  br label %47

47:                                               ; preds = %31, %44
  %48 = phi i8* [ %46, %44 ], [ %32, %31 ]
  tail call void @free(i8* %48) #23
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
  tail call void @free(i8* %61) #23
  %62 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %59, i64 0, i32 2
  %63 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %62, align 8, !tbaa !48
  %64 = bitcast %struct.pb_SubTimer* %59 to i8*
  tail call void @free(i8* %64) #23
  %65 = icmp eq %struct.pb_SubTimer* %63, null
  br i1 %65, label %66, label %58, !llvm.loop !72

66:                                               ; preds = %58
  %67 = bitcast %struct.pb_SubTimerList** %50 to i8**
  %68 = load i8*, i8** %67, align 8, !tbaa !9
  br label %69

69:                                               ; preds = %53, %66
  %70 = phi i8* [ %68, %66 ], [ %54, %53 ]
  tail call void @free(i8* %70) #23
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
  tail call void @free(i8* %83) #23
  %84 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %81, i64 0, i32 2
  %85 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %84, align 8, !tbaa !48
  %86 = bitcast %struct.pb_SubTimer* %81 to i8*
  tail call void @free(i8* %86) #23
  %87 = icmp eq %struct.pb_SubTimer* %85, null
  br i1 %87, label %88, label %80, !llvm.loop !72

88:                                               ; preds = %80
  %89 = bitcast %struct.pb_SubTimerList** %72 to i8**
  %90 = load i8*, i8** %89, align 8, !tbaa !9
  br label %91

91:                                               ; preds = %75, %88
  %92 = phi i8* [ %90, %88 ], [ %76, %75 ]
  tail call void @free(i8* %92) #23
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
  tail call void @free(i8* %105) #23
  %106 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %103, i64 0, i32 2
  %107 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %106, align 8, !tbaa !48
  %108 = bitcast %struct.pb_SubTimer* %103 to i8*
  tail call void @free(i8* %108) #23
  %109 = icmp eq %struct.pb_SubTimer* %107, null
  br i1 %109, label %110, label %102, !llvm.loop !72

110:                                              ; preds = %102
  %111 = bitcast %struct.pb_SubTimerList** %94 to i8**
  %112 = load i8*, i8** %111, align 8, !tbaa !9
  br label %113

113:                                              ; preds = %97, %110
  %114 = phi i8* [ %112, %110 ], [ %98, %97 ]
  tail call void @free(i8* %114) #23
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
  tail call void @free(i8* %127) #23
  %128 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %125, i64 0, i32 2
  %129 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %128, align 8, !tbaa !48
  %130 = bitcast %struct.pb_SubTimer* %125 to i8*
  tail call void @free(i8* %130) #23
  %131 = icmp eq %struct.pb_SubTimer* %129, null
  br i1 %131, label %132, label %124, !llvm.loop !72

132:                                              ; preds = %124
  %133 = bitcast %struct.pb_SubTimerList** %116 to i8**
  %134 = load i8*, i8** %133, align 8, !tbaa !9
  br label %135

135:                                              ; preds = %119, %132
  %136 = phi i8* [ %134, %132 ], [ %120, %119 ]
  tail call void @free(i8* %136) #23
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
  tail call void @free(i8* %149) #23
  %150 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %147, i64 0, i32 2
  %151 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %150, align 8, !tbaa !48
  %152 = bitcast %struct.pb_SubTimer* %147 to i8*
  tail call void @free(i8* %152) #23
  %153 = icmp eq %struct.pb_SubTimer* %151, null
  br i1 %153, label %154, label %146, !llvm.loop !72

154:                                              ; preds = %146
  %155 = bitcast %struct.pb_SubTimerList** %138 to i8**
  %156 = load i8*, i8** %155, align 8, !tbaa !9
  br label %157

157:                                              ; preds = %141, %154
  %158 = phi i8* [ %156, %154 ], [ %142, %141 ]
  tail call void @free(i8* %158) #23
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
  tail call void @free(i8* %171) #23
  %172 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %169, i64 0, i32 2
  %173 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %172, align 8, !tbaa !48
  %174 = bitcast %struct.pb_SubTimer* %169 to i8*
  tail call void @free(i8* %174) #23
  %175 = icmp eq %struct.pb_SubTimer* %173, null
  br i1 %175, label %176, label %168, !llvm.loop !72

176:                                              ; preds = %168
  %177 = bitcast %struct.pb_SubTimerList** %160 to i8**
  %178 = load i8*, i8** %177, align 8, !tbaa !9
  br label %179

179:                                              ; preds = %163, %176
  %180 = phi i8* [ %178, %176 ], [ %164, %163 ]
  tail call void @free(i8* %180) #23
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
  tail call void @free(i8* %193) #23
  %194 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %191, i64 0, i32 2
  %195 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %194, align 8, !tbaa !48
  %196 = bitcast %struct.pb_SubTimer* %191 to i8*
  tail call void @free(i8* %196) #23
  %197 = icmp eq %struct.pb_SubTimer* %195, null
  br i1 %197, label %198, label %190, !llvm.loop !72

198:                                              ; preds = %190
  %199 = bitcast %struct.pb_SubTimerList** %182 to i8**
  %200 = load i8*, i8** %199, align 8, !tbaa !9
  br label %201

201:                                              ; preds = %185, %198
  %202 = phi i8* [ %200, %198 ], [ %186, %185 ]
  tail call void @free(i8* %202) #23
  br label %203

203:                                              ; preds = %201, %181
  ret void
}

declare dso_local i32 @hipEventDestroy(%struct.ihipEvent_t*) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z10create_bmpP3RGBiiPKc(%struct.RGB* nocapture %0, i32 %1, i32 %2, i8* nocapture readonly %3) local_unnamed_addr #8 {
  %5 = alloca %struct.bmp_image, align 8
  %6 = getelementptr inbounds %struct.bmp_image, %struct.bmp_image* %5, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %6) #23
  %7 = mul nsw i32 %2, 24
  %8 = add nsw i32 %7, 31
  %9 = sdiv i32 %8, 32
  %10 = shl nsw i32 %9, 2
  %11 = sext i32 %2 to i64
  %12 = mul i32 %2, -3
  %13 = add i32 %10, %12
  %14 = sext i32 %13 to i64
  %15 = tail call noalias align 16 i8* @calloc(i64 %14, i64 1) #23
  store i8 66, i8* %6, align 8, !tbaa !12
  %16 = getelementptr inbounds %struct.bmp_image, %struct.bmp_image* %5, i64 0, i32 0, i64 1
  store i8 77, i8* %16, align 1, !tbaa !12
  %17 = mul i32 %1, 3
  %18 = mul i32 %17, %2
  %19 = add i32 %18, 54
  %20 = getelementptr inbounds %struct.bmp_image, %struct.bmp_image* %5, i64 0, i32 1
  %21 = getelementptr inbounds %struct.bmpfile_header_t, %struct.bmpfile_header_t* %20, i64 0, i32 0
  store i32 %19, i32* %21, align 4, !tbaa !73
  %22 = getelementptr inbounds %struct.bmp_image, %struct.bmp_image* %5, i64 0, i32 1, i32 2
  store i16 0, i16* %22, align 2, !tbaa !78
  %23 = getelementptr inbounds %struct.bmp_image, %struct.bmp_image* %5, i64 0, i32 1, i32 1
  store i16 0, i16* %23, align 8, !tbaa !79
  %24 = getelementptr inbounds %struct.bmp_image, %struct.bmp_image* %5, i64 0, i32 1, i32 3
  store i32 54, i32* %24, align 4, !tbaa !80
  %25 = getelementptr inbounds %struct.bmp_image, %struct.bmp_image* %5, i64 0, i32 2
  %26 = getelementptr inbounds %struct.bmp_dib_header_t, %struct.bmp_dib_header_t* %25, i64 0, i32 0
  store i32 40, i32* %26, align 8, !tbaa !81
  %27 = getelementptr inbounds %struct.bmp_image, %struct.bmp_image* %5, i64 0, i32 2, i32 1
  store i32 %2, i32* %27, align 4, !tbaa !82
  %28 = getelementptr inbounds %struct.bmp_image, %struct.bmp_image* %5, i64 0, i32 2, i32 2
  store i32 %1, i32* %28, align 8, !tbaa !83
  %29 = getelementptr inbounds %struct.bmp_image, %struct.bmp_image* %5, i64 0, i32 2, i32 3
  store i16 1, i16* %29, align 4, !tbaa !84
  %30 = getelementptr inbounds %struct.bmp_image, %struct.bmp_image* %5, i64 0, i32 2, i32 4
  store i16 24, i16* %30, align 2, !tbaa !85
  %31 = getelementptr inbounds %struct.bmp_image, %struct.bmp_image* %5, i64 0, i32 2, i32 5
  store i32 0, i32* %31, align 8, !tbaa !86
  %32 = getelementptr inbounds %struct.bmp_image, %struct.bmp_image* %5, i64 0, i32 2, i32 6
  store i32 %18, i32* %32, align 4, !tbaa !87
  %33 = getelementptr inbounds %struct.bmp_image, %struct.bmp_image* %5, i64 0, i32 2, i32 7
  %34 = bitcast i32* %33 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %34, i8 0, i64 16, i1 false)
  %35 = tail call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  %36 = call i64 @fwrite(i8* nonnull %6, i64 1, i64 2, %struct._IO_FILE* %35)
  %37 = bitcast %struct.bmpfile_header_t* %20 to i8*
  %38 = call i64 @fwrite(i8* nonnull %37, i64 1, i64 12, %struct._IO_FILE* %35)
  %39 = bitcast %struct.bmp_dib_header_t* %25 to i8*
  %40 = call i64 @fwrite(i8* nonnull %39, i64 1, i64 40, %struct._IO_FILE* %35)
  %41 = icmp sgt i32 %1, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %4
  %43 = zext i32 %1 to i64
  br label %44

44:                                               ; preds = %42, %44
  %45 = phi i64 [ %43, %42 ], [ %46, %44 ]
  %46 = add nsw i64 %45, -1
  %47 = mul nsw i64 %46, %11
  %48 = getelementptr inbounds %struct.RGB, %struct.RGB* %0, i64 %47, i32 0
  %49 = tail call i64 @fwrite(i8* %48, i64 3, i64 %11, %struct._IO_FILE* %35)
  %50 = tail call i64 @fwrite(i8* %15, i64 1, i64 %14, %struct._IO_FILE* %35)
  %51 = icmp ugt i64 %45, 1
  br i1 %51, label %44, label %52, !llvm.loop !88

52:                                               ; preds = %44, %4
  %53 = tail call i32 @fclose(%struct._IO_FILE* %35)
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %6) #23
  ret void
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local i24 @_Z8HSVtoRGBfff(float %0, float %1, float %2) local_unnamed_addr #14 {
  %4 = fcmp contract oeq float %1, 0.000000e+00
  br i1 %4, label %38, label %5

5:                                                ; preds = %3
  %6 = fdiv contract float %0, 6.000000e+01
  %7 = tail call contract float @llvm.floor.f32(float %6) #23
  %8 = fptosi float %7 to i32
  %9 = sitofp i32 %8 to float
  %10 = fsub contract float %6, %9
  %11 = fsub contract float 1.000000e+00, %1
  %12 = fmul contract float %11, %2
  %13 = fmul contract float %10, %1
  %14 = fsub contract float 1.000000e+00, %13
  %15 = fmul contract float %14, %2
  %16 = fsub contract float 1.000000e+00, %10
  %17 = fmul contract float %16, %1
  %18 = fsub contract float 1.000000e+00, %17
  %19 = fmul contract float %18, %2
  switch i32 %8, label %24 [
    i32 0, label %25
    i32 1, label %20
    i32 2, label %21
    i32 3, label %22
    i32 4, label %23
  ]

20:                                               ; preds = %5
  br label %25

21:                                               ; preds = %5
  br label %25

22:                                               ; preds = %5
  br label %25

23:                                               ; preds = %5
  br label %25

24:                                               ; preds = %5
  br label %25

25:                                               ; preds = %5, %24, %23, %22, %21, %20
  %26 = phi float [ %2, %24 ], [ %19, %23 ], [ %12, %22 ], [ %12, %21 ], [ %15, %20 ], [ %2, %5 ]
  %27 = phi float [ %12, %24 ], [ %12, %23 ], [ %15, %22 ], [ %2, %21 ], [ %2, %20 ], [ %19, %5 ]
  %28 = phi float [ %15, %24 ], [ %2, %23 ], [ %2, %22 ], [ %19, %21 ], [ %12, %20 ], [ %12, %5 ]
  %29 = fmul contract float %26, 2.550000e+02
  %30 = fptoui float %29 to i32
  %31 = trunc i32 %30 to i8
  %32 = fmul contract float %27, 2.550000e+02
  %33 = fptoui float %32 to i32
  %34 = trunc i32 %33 to i8
  %35 = fmul contract float %28, 2.550000e+02
  %36 = fptoui float %35 to i32
  %37 = trunc i32 %36 to i8
  br label %38

38:                                               ; preds = %3, %25
  %39 = phi i8 [ %31, %25 ], [ 0, %3 ]
  %40 = phi i8 [ %34, %25 ], [ 0, %3 ]
  %41 = phi i8 [ %37, %25 ], [ 0, %3 ]
  %42 = zext i8 %39 to i24
  %43 = shl nuw i24 %42, 16
  %44 = zext i8 %40 to i24
  %45 = shl nuw nsw i24 %44, 8
  %46 = or i24 %45, %43
  %47 = zext i8 %41 to i24
  %48 = or i24 %46, %47
  ret i24 %48
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z14dump_histo_imgPhjjPKc(i8* nocapture readonly %0, i32 %1, i32 %2, i8* nocapture readonly %3) local_unnamed_addr #0 {
  %5 = mul i32 %2, %1
  %6 = zext i32 %5 to i64
  %7 = mul nuw nsw i64 %6, 3
  %8 = tail call noalias align 16 i8* @malloc(i64 %7) #23
  %9 = bitcast i8* %8 to %struct.RGB*
  %10 = zext i32 %1 to i64
  %11 = zext i32 %2 to i64
  %12 = icmp eq i32 %1, 0
  %13 = icmp eq i32 %2, 0
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %56, label %15

15:                                               ; preds = %4, %53
  %16 = phi i64 [ %54, %53 ], [ 0, %4 ]
  %17 = mul nuw i64 %16, %11
  br label %18

18:                                               ; preds = %15, %50
  %19 = phi i64 [ 0, %15 ], [ %51, %50 ]
  %20 = add nuw i64 %19, %17
  %21 = getelementptr inbounds i8, i8* %0, i64 %20
  %22 = load i8, i8* %21, align 1, !tbaa !12
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %46, label %24

24:                                               ; preds = %18
  %25 = uitofp i8 %22 to double
  %26 = fmul contract double %25, 6.300000e+01
  %27 = fdiv contract double %26, 2.550000e+02
  %28 = fadd contract double %27, 1.000000e+00
  %29 = tail call contract double @cbrt(double %28) #27
  %30 = fmul contract double %29, 2.500000e-01
  %31 = fptrunc double %30 to float
  %32 = fmul contract float %31, 0.000000e+00
  %33 = fmul contract float %31, 2.550000e+02
  %34 = fptoui float %33 to i32
  %35 = fmul contract float %32, 2.550000e+02
  %36 = fptoui float %35 to i32
  %37 = trunc i32 %34 to i24
  %38 = shl i24 %37, 16
  %39 = trunc i32 %36 to i24
  %40 = and i24 %39, 255
  %41 = shl nuw nsw i24 %40, 8
  %42 = or i24 %41, %38
  %43 = or i24 %42, %40
  %44 = getelementptr inbounds %struct.RGB, %struct.RGB* %9, i64 %20
  %45 = bitcast %struct.RGB* %44 to i24*
  store i24 %43, i24* %45, align 1, !tbaa.struct !89
  br label %50

46:                                               ; preds = %18
  %47 = getelementptr inbounds %struct.RGB, %struct.RGB* %9, i64 %20, i32 2
  store i8 0, i8* %47, align 1, !tbaa !90
  %48 = getelementptr inbounds %struct.RGB, %struct.RGB* %9, i64 %20, i32 1
  store i8 0, i8* %48, align 1, !tbaa !92
  %49 = getelementptr inbounds %struct.RGB, %struct.RGB* %9, i64 %20, i32 0
  store i8 0, i8* %49, align 1, !tbaa !93
  br label %50

50:                                               ; preds = %46, %24
  %51 = add nuw nsw i64 %19, 1
  %52 = icmp eq i64 %51, %11
  br i1 %52, label %53, label %18, !llvm.loop !94

53:                                               ; preds = %50
  %54 = add nuw nsw i64 %16, 1
  %55 = icmp eq i64 %54, %10
  br i1 %55, label %56, label %15, !llvm.loop !95

56:                                               ; preds = %53, %4
  tail call void @_Z10create_bmpP3RGBiiPKc(%struct.RGB* %9, i32 %1, i32 %2, i8* %3)
  tail call void @free(i8* %8) #23
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local double @cbrt(double) local_unnamed_addr #16

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #17 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [8 x i8*], align 16
  %16 = alloca %struct.HIP_vector_type*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.dim3, align 8
  %26 = alloca %struct.dim3, align 8
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca [9 x i8*], align 16
  %30 = alloca %struct.HIP_vector_type.0*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.HIP_vector_type*, align 8
  %35 = alloca %struct.dim3, align 8
  %36 = alloca %struct.dim3, align 8
  %37 = alloca i64, align 8
  %38 = alloca i8*, align 8
  %39 = alloca [5 x i8*], align 16
  %40 = alloca i32*, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32*, align 8
  %43 = alloca %struct.dim3, align 8
  %44 = alloca %struct.dim3, align 8
  %45 = alloca i64, align 8
  %46 = alloca i8*, align 8
  %47 = alloca [3 x i8*], align 16
  %48 = alloca %struct.timeval, align 8
  %49 = alloca i32, align 4
  %50 = alloca %struct.pb_TimerSet, align 8
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32*, align 8
  %56 = alloca i32*, align 8
  %57 = alloca %struct.HIP_vector_type*, align 8
  %58 = alloca i32*, align 8
  %59 = alloca i16*, align 8
  %60 = alloca i32*, align 8
  %61 = alloca i8*, align 8
  %62 = alloca i64, align 8
  %63 = bitcast i64* %62 to [2 x i32]*
  store i32 %0, i32* %49, align 4, !tbaa !10
  %64 = call %struct.pb_Parameters* @pb_ReadParameters(i32* nonnull %49, i8** %1)
  %65 = icmp eq %struct.pb_Parameters* %64, null
  br i1 %65, label %660, label %66

66:                                               ; preds = %2
  %67 = getelementptr inbounds %struct.pb_Parameters, %struct.pb_Parameters* %64, i64 0, i32 1
  %68 = load i8**, i8*** %67, align 8, !tbaa !8
  %69 = load i8*, i8** %68, align 8, !tbaa !9
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %73 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %72) #25
  br label %660

74:                                               ; preds = %66
  %75 = tail call noalias align 16 dereferenceable_or_null(288) i8* @malloc(i64 288) #23
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %79 = tail call i64 @fwrite(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %78) #25
  tail call void @exit(i32 1) #28
  unreachable

80:                                               ; preds = %74
  %81 = bitcast %struct.pb_TimerSet* %50 to i8*
  call void @llvm.lifetime.start.p0i8(i64 288, i8* nonnull %81) #23
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(288) %81, i8* noundef nonnull align 16 dereferenceable(288) %75, i64 288, i1 false), !tbaa.struct !96
  %82 = bitcast %struct.timeval* %48 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %82) #23
  %83 = call i32 @gettimeofday(%struct.timeval* nonnull %48, %struct.timezone* null) #23
  %84 = getelementptr inbounds %struct.timeval, %struct.timeval* %48, i64 0, i32 0
  %85 = load i64, i64* %84, align 8, !tbaa !35
  %86 = mul nsw i64 %85, 1000000
  %87 = getelementptr inbounds %struct.timeval, %struct.timeval* %48, i64 0, i32 1
  %88 = load i64, i64* %87, align 8, !tbaa !38
  %89 = add nsw i64 %86, %88
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %82) #23
  %90 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %50, i64 0, i32 3
  store i64 %89, i64* %90, align 8, !tbaa !41
  %91 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %50, i64 0, i32 0
  store i32 0, i32* %91, align 8, !tbaa !44
  %92 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %50, i64 0, i32 1
  store %struct.pb_async_time_marker_list* null, %struct.pb_async_time_marker_list** %92, align 8, !tbaa !45
  %93 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %50, i64 0, i32 4, i64 0, i32 0
  store i32 0, i32* %93, align 8, !tbaa !30
  %94 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %50, i64 0, i32 4, i64 0, i32 1
  store i64 0, i64* %94, align 8, !tbaa !34
  %95 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %50, i64 0, i32 5, i64 0
  %96 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %50, i64 0, i32 4, i64 1, i32 0
  store i32 0, i32* %96, align 8, !tbaa !30
  %97 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %50, i64 0, i32 4, i64 1, i32 1
  store i64 0, i64* %97, align 8, !tbaa !34
  %98 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %50, i64 0, i32 4, i64 2, i32 0
  store i32 0, i32* %98, align 8, !tbaa !30
  %99 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %50, i64 0, i32 4, i64 2, i32 1
  store i64 0, i64* %99, align 8, !tbaa !34
  %100 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %50, i64 0, i32 4, i64 3, i32 0
  store i32 0, i32* %100, align 8, !tbaa !30
  %101 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %50, i64 0, i32 4, i64 3, i32 1
  store i64 0, i64* %101, align 8, !tbaa !34
  %102 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %50, i64 0, i32 4, i64 4, i32 0
  store i32 0, i32* %102, align 8, !tbaa !30
  %103 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %50, i64 0, i32 4, i64 4, i32 1
  store i64 0, i64* %103, align 8, !tbaa !34
  %104 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %50, i64 0, i32 4, i64 5, i32 0
  store i32 0, i32* %104, align 8, !tbaa !30
  %105 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %50, i64 0, i32 4, i64 5, i32 1
  store i64 0, i64* %105, align 8, !tbaa !34
  %106 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %50, i64 0, i32 4, i64 6, i32 0
  store i32 0, i32* %106, align 8, !tbaa !30
  %107 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %50, i64 0, i32 4, i64 6, i32 1
  store i64 0, i64* %107, align 8, !tbaa !34
  %108 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %50, i64 0, i32 4, i64 7, i32 0
  store i32 0, i32* %108, align 8, !tbaa !30
  %109 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %50, i64 0, i32 4, i64 7, i32 1
  store i64 0, i64* %109, align 8, !tbaa !34
  %110 = bitcast %struct.pb_SubTimerList** %95 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %110, i8 0, i64 64, i1 false) #23
  %111 = tail call noalias align 16 dereferenceable_or_null(40) i8* @malloc(i64 40) #23
  %112 = bitcast i8* %111 to %struct.pb_SubTimer*
  %113 = tail call noalias align 16 dereferenceable_or_null(6) i8* @malloc(i64 6) #23
  %114 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %112, i64 0, i32 0
  store i8* %113, i8** %114, align 16, !tbaa !46
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(6) %113, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i64 6, i1 false) #23
  %115 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %112, i64 0, i32 1, i32 0
  store i32 0, i32* %115, align 8, !tbaa !30
  %116 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %112, i64 0, i32 1, i32 1
  store i64 0, i64* %116, align 16, !tbaa !34
  %117 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %112, i64 0, i32 2
  store %struct.pb_SubTimer* null, %struct.pb_SubTimer** %117, align 16, !tbaa !48
  %118 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %50, i64 0, i32 5, i64 1
  %119 = tail call noalias align 16 dereferenceable_or_null(16) i8* @malloc(i64 16) #23
  %120 = bitcast i8* %119 to %struct.pb_SubTimerList*
  %121 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %120, i64 0, i32 1
  %122 = bitcast %struct.pb_SubTimer** %121 to i8**
  store i8* %111, i8** %122, align 8, !tbaa !49
  %123 = bitcast %struct.pb_SubTimerList** %118 to i8**
  store i8* %119, i8** %123, align 8, !tbaa !9
  %124 = tail call noalias align 16 dereferenceable_or_null(40) i8* @malloc(i64 40) #23
  %125 = bitcast i8* %124 to %struct.pb_SubTimer*
  %126 = tail call noalias align 16 dereferenceable_or_null(7) i8* @malloc(i64 7) #23
  %127 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %125, i64 0, i32 0
  store i8* %126, i8** %127, align 16, !tbaa !46
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(7) %126, i8* noundef nonnull align 1 dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i64 7, i1 false) #23
  %128 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %125, i64 0, i32 1, i32 0
  store i32 0, i32* %128, align 8, !tbaa !30
  %129 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %125, i64 0, i32 1, i32 1
  store i64 0, i64* %129, align 16, !tbaa !34
  %130 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %125, i64 0, i32 2
  store %struct.pb_SubTimer* null, %struct.pb_SubTimer** %130, align 16, !tbaa !48
  %131 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %120, i64 0, i32 1
  %132 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %131, align 8, !tbaa !49
  br label %133

133:                                              ; preds = %133, %80
  %134 = phi %struct.pb_SubTimer* [ %132, %80 ], [ %136, %133 ]
  %135 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %134, i64 0, i32 2
  %136 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %135, align 8, !tbaa !48
  %137 = icmp eq %struct.pb_SubTimer* %136, null
  br i1 %137, label %138, label %133, !llvm.loop !51

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %134, i64 0, i32 2
  %140 = bitcast %struct.pb_SubTimer** %139 to i8**
  store i8* %124, i8** %140, align 8, !tbaa !48
  %141 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %50, i64 0, i32 5, i64 2
  %142 = load %struct.pb_SubTimerList*, %struct.pb_SubTimerList** %141, align 8, !tbaa !9
  %143 = tail call noalias align 16 dereferenceable_or_null(40) i8* @malloc(i64 40) #23
  %144 = bitcast i8* %143 to %struct.pb_SubTimer*
  %145 = tail call noalias align 16 dereferenceable_or_null(14) i8* @malloc(i64 14) #23
  %146 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %144, i64 0, i32 0
  store i8* %145, i8** %146, align 16, !tbaa !46
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(14) %145, i8* noundef nonnull align 1 dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i64 14, i1 false) #23
  %147 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %144, i64 0, i32 1, i32 0
  store i32 0, i32* %147, align 8, !tbaa !30
  %148 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %144, i64 0, i32 1, i32 1
  store i64 0, i64* %148, align 16, !tbaa !34
  %149 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %144, i64 0, i32 2
  store %struct.pb_SubTimer* null, %struct.pb_SubTimer** %149, align 16, !tbaa !48
  %150 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %50, i64 0, i32 5, i64 2
  %151 = icmp eq %struct.pb_SubTimerList* %142, null
  br i1 %151, label %152, label %158

152:                                              ; preds = %138
  %153 = tail call noalias align 16 dereferenceable_or_null(16) i8* @malloc(i64 16) #23
  %154 = bitcast i8* %153 to %struct.pb_SubTimerList*
  %155 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %154, i64 0, i32 1
  %156 = bitcast %struct.pb_SubTimer** %155 to i8**
  store i8* %143, i8** %156, align 8, !tbaa !49
  %157 = bitcast %struct.pb_SubTimerList** %150 to i8**
  store i8* %153, i8** %157, align 8, !tbaa !9
  br label %170

158:                                              ; preds = %138
  %159 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %142, i64 0, i32 1
  %160 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %159, align 8, !tbaa !49
  br label %161

161:                                              ; preds = %161, %158
  %162 = phi %struct.pb_SubTimer* [ %160, %158 ], [ %164, %161 ]
  %163 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %162, i64 0, i32 2
  %164 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %163, align 8, !tbaa !48
  %165 = icmp eq %struct.pb_SubTimer* %164, null
  br i1 %165, label %166, label %161, !llvm.loop !51

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %162, i64 0, i32 2
  %168 = bitcast %struct.pb_SubTimer** %167 to i8**
  store i8* %143, i8** %168, align 8, !tbaa !48
  %169 = load %struct.pb_SubTimerList*, %struct.pb_SubTimerList** %150, align 8, !tbaa !9
  br label %170

170:                                              ; preds = %152, %166
  %171 = phi %struct.pb_SubTimerList* [ %154, %152 ], [ %169, %166 ]
  %172 = tail call noalias align 16 dereferenceable_or_null(40) i8* @malloc(i64 40) #23
  %173 = bitcast i8* %172 to %struct.pb_SubTimer*
  %174 = tail call noalias align 16 dereferenceable_or_null(12) i8* @malloc(i64 12) #23
  %175 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %173, i64 0, i32 0
  store i8* %174, i8** %175, align 16, !tbaa !46
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %174, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i64 12, i1 false) #23
  %176 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %173, i64 0, i32 1, i32 0
  store i32 0, i32* %176, align 8, !tbaa !30
  %177 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %173, i64 0, i32 1, i32 1
  store i64 0, i64* %177, align 16, !tbaa !34
  %178 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %173, i64 0, i32 2
  store %struct.pb_SubTimer* null, %struct.pb_SubTimer** %178, align 16, !tbaa !48
  %179 = icmp eq %struct.pb_SubTimerList* %171, null
  br i1 %179, label %180, label %186

180:                                              ; preds = %170
  %181 = tail call noalias align 16 dereferenceable_or_null(16) i8* @malloc(i64 16) #23
  %182 = bitcast i8* %181 to %struct.pb_SubTimerList*
  %183 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %182, i64 0, i32 1
  %184 = bitcast %struct.pb_SubTimer** %183 to i8**
  store i8* %172, i8** %184, align 8, !tbaa !49
  %185 = bitcast %struct.pb_SubTimerList** %150 to i8**
  store i8* %181, i8** %185, align 8, !tbaa !9
  br label %198

186:                                              ; preds = %170
  %187 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %171, i64 0, i32 1
  %188 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %187, align 8, !tbaa !49
  br label %189

189:                                              ; preds = %189, %186
  %190 = phi %struct.pb_SubTimer* [ %188, %186 ], [ %192, %189 ]
  %191 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %190, i64 0, i32 2
  %192 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %191, align 8, !tbaa !48
  %193 = icmp eq %struct.pb_SubTimer* %192, null
  br i1 %193, label %194, label %189, !llvm.loop !51

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %190, i64 0, i32 2
  %196 = bitcast %struct.pb_SubTimer** %195 to i8**
  store i8* %172, i8** %196, align 8, !tbaa !48
  %197 = load %struct.pb_SubTimerList*, %struct.pb_SubTimerList** %150, align 8, !tbaa !9
  br label %198

198:                                              ; preds = %180, %194
  %199 = phi %struct.pb_SubTimerList* [ %182, %180 ], [ %197, %194 ]
  %200 = tail call noalias align 16 dereferenceable_or_null(40) i8* @malloc(i64 40) #23
  %201 = bitcast i8* %200 to %struct.pb_SubTimer*
  %202 = tail call noalias align 16 dereferenceable_or_null(20) i8* @malloc(i64 20) #23
  %203 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %201, i64 0, i32 0
  store i8* %202, i8** %203, align 16, !tbaa !46
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(20) %202, i8* noundef nonnull align 1 dereferenceable(20) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0), i64 20, i1 false) #23
  %204 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %201, i64 0, i32 1, i32 0
  store i32 0, i32* %204, align 8, !tbaa !30
  %205 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %201, i64 0, i32 1, i32 1
  store i64 0, i64* %205, align 16, !tbaa !34
  %206 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %201, i64 0, i32 2
  store %struct.pb_SubTimer* null, %struct.pb_SubTimer** %206, align 16, !tbaa !48
  %207 = icmp eq %struct.pb_SubTimerList* %199, null
  br i1 %207, label %208, label %214

208:                                              ; preds = %198
  %209 = tail call noalias align 16 dereferenceable_or_null(16) i8* @malloc(i64 16) #23
  %210 = bitcast i8* %209 to %struct.pb_SubTimerList*
  %211 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %210, i64 0, i32 1
  %212 = bitcast %struct.pb_SubTimer** %211 to i8**
  store i8* %200, i8** %212, align 8, !tbaa !49
  %213 = bitcast %struct.pb_SubTimerList** %150 to i8**
  store i8* %209, i8** %213, align 8, !tbaa !9
  br label %226

214:                                              ; preds = %198
  %215 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %199, i64 0, i32 1
  %216 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %215, align 8, !tbaa !49
  br label %217

217:                                              ; preds = %217, %214
  %218 = phi %struct.pb_SubTimer* [ %216, %214 ], [ %220, %217 ]
  %219 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %218, i64 0, i32 2
  %220 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %219, align 8, !tbaa !48
  %221 = icmp eq %struct.pb_SubTimer* %220, null
  br i1 %221, label %222, label %217, !llvm.loop !51

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %218, i64 0, i32 2
  %224 = bitcast %struct.pb_SubTimer** %223 to i8**
  store i8* %200, i8** %224, align 8, !tbaa !48
  %225 = load %struct.pb_SubTimerList*, %struct.pb_SubTimerList** %150, align 8, !tbaa !9
  br label %226

226:                                              ; preds = %208, %222
  %227 = phi %struct.pb_SubTimerList* [ %210, %208 ], [ %225, %222 ]
  %228 = tail call noalias align 16 dereferenceable_or_null(40) i8* @malloc(i64 40) #23
  %229 = bitcast i8* %228 to %struct.pb_SubTimer*
  %230 = tail call noalias align 16 dereferenceable_or_null(11) i8* @malloc(i64 11) #23
  %231 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %229, i64 0, i32 0
  store i8* %230, i8** %231, align 16, !tbaa !46
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(11) %230, i8* noundef nonnull align 1 dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i64 11, i1 false) #23
  %232 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %229, i64 0, i32 1, i32 0
  store i32 0, i32* %232, align 8, !tbaa !30
  %233 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %229, i64 0, i32 1, i32 1
  store i64 0, i64* %233, align 16, !tbaa !34
  %234 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %229, i64 0, i32 2
  store %struct.pb_SubTimer* null, %struct.pb_SubTimer** %234, align 16, !tbaa !48
  %235 = icmp eq %struct.pb_SubTimerList* %227, null
  br i1 %235, label %236, label %242

236:                                              ; preds = %226
  %237 = tail call noalias align 16 dereferenceable_or_null(16) i8* @malloc(i64 16) #23
  %238 = bitcast i8* %237 to %struct.pb_SubTimerList*
  %239 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %238, i64 0, i32 1
  %240 = bitcast %struct.pb_SubTimer** %239 to i8**
  store i8* %228, i8** %240, align 8, !tbaa !49
  %241 = bitcast %struct.pb_SubTimerList** %150 to i8**
  store i8* %237, i8** %241, align 8, !tbaa !9
  br label %254

242:                                              ; preds = %226
  %243 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %227, i64 0, i32 1
  %244 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %243, align 8, !tbaa !49
  br label %245

245:                                              ; preds = %245, %242
  %246 = phi %struct.pb_SubTimer* [ %244, %242 ], [ %248, %245 ]
  %247 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %246, i64 0, i32 2
  %248 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %247, align 8, !tbaa !48
  %249 = icmp eq %struct.pb_SubTimer* %248, null
  br i1 %249, label %250, label %245, !llvm.loop !51

250:                                              ; preds = %245
  %251 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %246, i64 0, i32 2
  %252 = bitcast %struct.pb_SubTimer** %251 to i8**
  store i8* %228, i8** %252, align 8, !tbaa !48
  %253 = load %struct.pb_SubTimerList*, %struct.pb_SubTimerList** %150, align 8, !tbaa !9
  br label %254

254:                                              ; preds = %236, %250
  %255 = phi %struct.pb_SubTimerList* [ %238, %236 ], [ %253, %250 ]
  %256 = tail call noalias align 16 dereferenceable_or_null(40) i8* @malloc(i64 40) #23
  %257 = bitcast i8* %256 to %struct.pb_SubTimer*
  %258 = tail call noalias align 16 dereferenceable_or_null(12) i8* @malloc(i64 12) #23
  %259 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %257, i64 0, i32 0
  store i8* %258, i8** %259, align 16, !tbaa !46
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(12) %258, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i64 12, i1 false) #23
  %260 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %257, i64 0, i32 1, i32 0
  store i32 0, i32* %260, align 8, !tbaa !30
  %261 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %257, i64 0, i32 1, i32 1
  store i64 0, i64* %261, align 16, !tbaa !34
  %262 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %257, i64 0, i32 2
  store %struct.pb_SubTimer* null, %struct.pb_SubTimer** %262, align 16, !tbaa !48
  %263 = icmp eq %struct.pb_SubTimerList* %255, null
  br i1 %263, label %264, label %270

264:                                              ; preds = %254
  %265 = tail call noalias align 16 dereferenceable_or_null(16) i8* @malloc(i64 16) #23
  %266 = bitcast i8* %265 to %struct.pb_SubTimerList*
  %267 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %266, i64 0, i32 1
  %268 = bitcast %struct.pb_SubTimer** %267 to i8**
  store i8* %256, i8** %268, align 8, !tbaa !49
  %269 = bitcast %struct.pb_SubTimerList** %150 to i8**
  store i8* %265, i8** %269, align 8, !tbaa !9
  br label %281

270:                                              ; preds = %254
  %271 = getelementptr inbounds %struct.pb_SubTimerList, %struct.pb_SubTimerList* %255, i64 0, i32 1
  %272 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %271, align 8, !tbaa !49
  br label %273

273:                                              ; preds = %273, %270
  %274 = phi %struct.pb_SubTimer* [ %272, %270 ], [ %276, %273 ]
  %275 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %274, i64 0, i32 2
  %276 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %275, align 8, !tbaa !48
  %277 = icmp eq %struct.pb_SubTimer* %276, null
  br i1 %277, label %278, label %273, !llvm.loop !51

278:                                              ; preds = %273
  %279 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %274, i64 0, i32 2
  %280 = bitcast %struct.pb_SubTimer** %279 to i8**
  store i8* %256, i8** %280, align 8, !tbaa !48
  br label %281

281:                                              ; preds = %264, %278
  call void @pb_SwitchToSubTimer(%struct.pb_TimerSet* nonnull %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i32 1)
  %282 = load i32, i32* %49, align 4, !tbaa !10
  %283 = icmp sgt i32 %282, 1
  br i1 %283, label %284, label %304

284:                                              ; preds = %281
  %285 = getelementptr inbounds i8*, i8** %1, i64 1
  %286 = load i8*, i8** %285, align 8, !tbaa !9
  %287 = call i64 @strtol(i8* nocapture nonnull %286, i8** null, i32 10) #23
  %288 = trunc i64 %287 to i32
  %289 = bitcast i32* %51 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %289) #23
  %290 = bitcast i32* %52 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %290) #23
  %291 = bitcast i32* %53 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %291) #23
  %292 = bitcast i32* %54 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %292) #23
  %293 = load i8*, i8** %68, align 8, !tbaa !9
  %294 = call %struct._IO_FILE* @fopen(i8* %293, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0))
  %295 = call i64 @fread(i8* nonnull %289, i64 4, i64 1, %struct._IO_FILE* %294)
  %296 = call i64 @fread(i8* nonnull %290, i64 4, i64 1, %struct._IO_FILE* %294)
  %297 = add i64 %296, %295
  %298 = call i64 @fread(i8* nonnull %291, i64 4, i64 1, %struct._IO_FILE* %294)
  %299 = add i64 %297, %298
  %300 = call i64 @fread(i8* nonnull %292, i64 4, i64 1, %struct._IO_FILE* %294)
  %301 = add i64 %299, %300
  %302 = trunc i64 %301 to i32
  %303 = icmp eq i32 %302, 4
  br i1 %303, label %310, label %307

304:                                              ; preds = %281
  %305 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %306 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.33, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %305) #25
  br label %658

307:                                              ; preds = %284
  %308 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %309 = call i64 @fwrite(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.35, i64 0, i64 0), i64 52, i64 1, %struct._IO_FILE* %308) #25
  br label %656

310:                                              ; preds = %284
  %311 = load i32, i32* %51, align 4, !tbaa !10
  %312 = load i32, i32* %52, align 4, !tbaa !10
  %313 = mul i32 %312, %311
  %314 = zext i32 %313 to i64
  %315 = shl nuw nsw i64 %314, 2
  %316 = call noalias align 16 i8* @malloc(i64 %315) #23
  %317 = bitcast i8* %316 to i32*
  %318 = load i32, i32* %53, align 4, !tbaa !10
  %319 = load i32, i32* %54, align 4, !tbaa !10
  %320 = mul i32 %319, %318
  %321 = zext i32 %320 to i64
  %322 = call noalias align 16 i8* @calloc(i64 %321, i64 1) #23
  %323 = call i64 @fread(i8* %316, i64 4, i64 %314, %struct._IO_FILE* %294)
  %324 = trunc i64 %323 to i32
  %325 = call i32 @fclose(%struct._IO_FILE* %294)
  %326 = icmp eq i32 %313, %324
  br i1 %326, label %330, label %327

327:                                              ; preds = %310
  %328 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %329 = call i64 @fwrite(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.36, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %328) #25
  br label %656

330:                                              ; preds = %310
  %331 = add i32 %311, 1
  %332 = and i32 %331, -2
  %333 = bitcast i32** %55 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %333) #23
  %334 = bitcast i32** %56 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %334) #23
  %335 = bitcast %struct.HIP_vector_type** %57 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %335) #23
  %336 = bitcast i32** %58 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %336) #23
  %337 = bitcast i16** %59 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %337) #23
  %338 = bitcast i32** %60 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %338) #23
  %339 = bitcast i8** %61 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %339) #23
  %340 = bitcast i32** %55 to i8**
  %341 = add i32 %312, 15
  %342 = and i32 %341, -16
  %343 = mul i32 %342, %332
  %344 = zext i32 %343 to i64
  %345 = shl nuw nsw i64 %344, 2
  %346 = call i32 @hipMalloc(i8** nonnull %340, i64 %345)
  %347 = bitcast i32** %56 to i8**
  %348 = call i32 @hipMalloc(i8** nonnull %347, i64 8)
  %349 = bitcast %struct.HIP_vector_type** %57 to i8**
  %350 = call i32 @hipMalloc(i8** nonnull %349, i64 %315)
  %351 = bitcast i32** %58 to i8**
  %352 = mul i32 %319, %311
  %353 = zext i32 %352 to i64
  %354 = shl nuw nsw i64 %353, 2
  %355 = call i32 @hipMalloc(i8** nonnull %351, i64 %354)
  %356 = bitcast i16** %59 to i8**
  %357 = shl nuw nsw i64 %353, 1
  %358 = call i32 @hipMalloc(i8** nonnull %356, i64 %357)
  %359 = bitcast i32** %60 to i8**
  %360 = call i32 @hipMalloc(i8** nonnull %359, i64 %354)
  %361 = call i32 @hipMalloc(i8** nonnull %61, i64 %353)
  %362 = load i8*, i8** %61, align 8, !tbaa !9
  %363 = call i32 @hipMemset(i8* %362, i32 0, i64 %353)
  %364 = zext i32 %311 to i64
  %365 = shl nuw nsw i64 %364, 2
  %366 = icmp eq i32 %312, 0
  br i1 %366, label %370, label %367

367:                                              ; preds = %330
  %368 = sext i32 %332 to i64
  %369 = zext i32 %312 to i64
  br label %496

370:                                              ; preds = %496, %330
  call void @pb_SwitchToSubTimer(%struct.pb_TimerSet* nonnull %50, i8* null, i32 2)
  %371 = call noalias align 16 i8* @calloc(i64 %353, i64 4) #23
  %372 = bitcast i64* %62 to i8*
  %373 = bitcast i64* %62 to i32*
  %374 = bitcast i32** %40 to i8*
  %375 = bitcast i32* %41 to i8*
  %376 = bitcast i32** %42 to i8*
  %377 = bitcast %struct.dim3* %43 to i8*
  %378 = bitcast %struct.dim3* %44 to i8*
  %379 = bitcast i64* %45 to i8*
  %380 = bitcast i8** %46 to i8*
  %381 = bitcast [3 x i8*]* %47 to i8*
  %382 = getelementptr inbounds [3 x i8*], [3 x i8*]* %47, i64 0, i64 0
  %383 = bitcast [3 x i8*]* %47 to i32***
  %384 = getelementptr inbounds [3 x i8*], [3 x i8*]* %47, i64 0, i64 1
  %385 = bitcast i8** %384 to i32**
  %386 = getelementptr inbounds [3 x i8*], [3 x i8*]* %47, i64 0, i64 2
  %387 = bitcast i8** %386 to i32***
  %388 = bitcast i8** %46 to %struct.ihipStream_t**
  %389 = bitcast %struct.dim3* %43 to i64*
  %390 = getelementptr inbounds %struct.dim3, %struct.dim3* %43, i64 0, i32 2
  %391 = bitcast %struct.dim3* %44 to i64*
  %392 = getelementptr inbounds %struct.dim3, %struct.dim3* %44, i64 0, i32 2
  %393 = bitcast i32** %55 to %struct.HIP_vector_type.0**
  %394 = bitcast %struct.HIP_vector_type.0** %30 to i8*
  %395 = bitcast i32* %31 to i8*
  %396 = bitcast i32* %32 to i8*
  %397 = bitcast i32* %33 to i8*
  %398 = bitcast %struct.HIP_vector_type** %34 to i8*
  %399 = bitcast %struct.dim3* %35 to i8*
  %400 = bitcast %struct.dim3* %36 to i8*
  %401 = bitcast i64* %37 to i8*
  %402 = bitcast i8** %38 to i8*
  %403 = bitcast [5 x i8*]* %39 to i8*
  %404 = getelementptr inbounds [5 x i8*], [5 x i8*]* %39, i64 0, i64 0
  %405 = bitcast [5 x i8*]* %39 to %struct.HIP_vector_type.0***
  %406 = getelementptr inbounds [5 x i8*], [5 x i8*]* %39, i64 0, i64 1
  %407 = bitcast i8** %406 to i32**
  %408 = getelementptr inbounds [5 x i8*], [5 x i8*]* %39, i64 0, i64 2
  %409 = bitcast i8** %408 to i32**
  %410 = getelementptr inbounds [5 x i8*], [5 x i8*]* %39, i64 0, i64 3
  %411 = bitcast i8** %410 to i32**
  %412 = getelementptr inbounds [5 x i8*], [5 x i8*]* %39, i64 0, i64 4
  %413 = bitcast i8** %412 to %struct.HIP_vector_type***
  %414 = bitcast i8** %38 to %struct.ihipStream_t**
  %415 = bitcast %struct.dim3* %35 to i64*
  %416 = getelementptr inbounds %struct.dim3, %struct.dim3* %35, i64 0, i32 2
  %417 = bitcast %struct.dim3* %36 to i64*
  %418 = getelementptr inbounds %struct.dim3, %struct.dim3* %36, i64 0, i32 2
  %419 = getelementptr inbounds [2 x i32], [2 x i32]* %63, i64 0, i64 1
  %420 = bitcast i16** %59 to i32**
  %421 = bitcast %struct.HIP_vector_type** %16 to i8*
  %422 = bitcast i32* %17 to i8*
  %423 = bitcast i32* %18 to i8*
  %424 = bitcast i32* %19 to i8*
  %425 = bitcast i32* %20 to i8*
  %426 = bitcast i32* %21 to i8*
  %427 = bitcast i32** %22 to i8*
  %428 = bitcast i32** %23 to i8*
  %429 = bitcast i32** %24 to i8*
  %430 = bitcast %struct.dim3* %25 to i8*
  %431 = bitcast %struct.dim3* %26 to i8*
  %432 = bitcast i64* %27 to i8*
  %433 = bitcast i8** %28 to i8*
  %434 = bitcast [9 x i8*]* %29 to i8*
  %435 = getelementptr inbounds [9 x i8*], [9 x i8*]* %29, i64 0, i64 0
  %436 = bitcast [9 x i8*]* %29 to %struct.HIP_vector_type***
  %437 = getelementptr inbounds [9 x i8*], [9 x i8*]* %29, i64 0, i64 1
  %438 = bitcast i8** %437 to i32**
  %439 = getelementptr inbounds [9 x i8*], [9 x i8*]* %29, i64 0, i64 2
  %440 = bitcast i8** %439 to i32**
  %441 = getelementptr inbounds [9 x i8*], [9 x i8*]* %29, i64 0, i64 3
  %442 = bitcast i8** %441 to i32**
  %443 = getelementptr inbounds [9 x i8*], [9 x i8*]* %29, i64 0, i64 4
  %444 = bitcast i8** %443 to i32**
  %445 = getelementptr inbounds [9 x i8*], [9 x i8*]* %29, i64 0, i64 5
  %446 = bitcast i8** %445 to i32**
  %447 = getelementptr inbounds [9 x i8*], [9 x i8*]* %29, i64 0, i64 6
  %448 = bitcast i8** %447 to i32***
  %449 = getelementptr inbounds [9 x i8*], [9 x i8*]* %29, i64 0, i64 7
  %450 = bitcast i8** %449 to i32***
  %451 = getelementptr inbounds [9 x i8*], [9 x i8*]* %29, i64 0, i64 8
  %452 = bitcast i8** %451 to i32***
  %453 = bitcast i8** %28 to %struct.ihipStream_t**
  %454 = bitcast %struct.dim3* %25 to i64*
  %455 = getelementptr inbounds %struct.dim3, %struct.dim3* %25, i64 0, i32 2
  %456 = bitcast %struct.dim3* %26 to i64*
  %457 = getelementptr inbounds %struct.dim3, %struct.dim3* %26, i64 0, i32 2
  %458 = bitcast i8** %61 to i32**
  %459 = bitcast i32* %3 to i8*
  %460 = bitcast i32* %4 to i8*
  %461 = bitcast i32* %5 to i8*
  %462 = bitcast i32* %6 to i8*
  %463 = bitcast i32** %7 to i8*
  %464 = bitcast i32** %8 to i8*
  %465 = bitcast i32** %9 to i8*
  %466 = bitcast i32** %10 to i8*
  %467 = bitcast %struct.dim3* %11 to i8*
  %468 = bitcast %struct.dim3* %12 to i8*
  %469 = bitcast i64* %13 to i8*
  %470 = bitcast i8** %14 to i8*
  %471 = bitcast [8 x i8*]* %15 to i8*
  %472 = getelementptr inbounds [8 x i8*], [8 x i8*]* %15, i64 0, i64 0
  %473 = bitcast [8 x i8*]* %15 to i32**
  %474 = getelementptr inbounds [8 x i8*], [8 x i8*]* %15, i64 0, i64 1
  %475 = bitcast i8** %474 to i32**
  %476 = getelementptr inbounds [8 x i8*], [8 x i8*]* %15, i64 0, i64 2
  %477 = bitcast i8** %476 to i32**
  %478 = getelementptr inbounds [8 x i8*], [8 x i8*]* %15, i64 0, i64 3
  %479 = bitcast i8** %478 to i32**
  %480 = getelementptr inbounds [8 x i8*], [8 x i8*]* %15, i64 0, i64 4
  %481 = bitcast i8** %480 to i32***
  %482 = getelementptr inbounds [8 x i8*], [8 x i8*]* %15, i64 0, i64 5
  %483 = bitcast i8** %482 to i32***
  %484 = getelementptr inbounds [8 x i8*], [8 x i8*]* %15, i64 0, i64 6
  %485 = bitcast i8** %484 to i32***
  %486 = getelementptr inbounds [8 x i8*], [8 x i8*]* %15, i64 0, i64 7
  %487 = bitcast i8** %486 to i32***
  %488 = bitcast i8** %14 to %struct.ihipStream_t**
  %489 = bitcast %struct.dim3* %11 to i64*
  %490 = getelementptr inbounds %struct.dim3, %struct.dim3* %11, i64 0, i32 2
  %491 = bitcast %struct.dim3* %12 to i64*
  %492 = getelementptr inbounds %struct.dim3, %struct.dim3* %12, i64 0, i32 2
  %493 = icmp sgt i32 %288, 0
  br i1 %493, label %534, label %494

494:                                              ; preds = %370
  %495 = load i32, i32* %54, align 4, !tbaa !10
  br label %510

496:                                              ; preds = %367, %496
  %497 = phi i64 [ 0, %367 ], [ %508, %496 ]
  %498 = load i32*, i32** %55, align 8, !tbaa !9
  %499 = mul nsw i64 %497, %368
  %500 = getelementptr inbounds i32, i32* %498, i64 %499
  %501 = bitcast i32* %500 to i8*
  %502 = trunc i64 %497 to i32
  %503 = mul i32 %311, %502
  %504 = zext i32 %503 to i64
  %505 = getelementptr inbounds i32, i32* %317, i64 %504
  %506 = bitcast i32* %505 to i8*
  %507 = call i32 @hipMemcpy(i8* %501, i8* %506, i64 %365, i32 1)
  %508 = add nuw nsw i64 %497, 1
  %509 = icmp eq i64 %508, %369
  br i1 %509, label %370, label %496, !llvm.loop !98

510:                                              ; preds = %635, %494
  %511 = phi i32 [ %495, %494 ], [ %563, %635 ]
  call void @pb_SwitchToSubTimer(%struct.pb_TimerSet* nonnull %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i32 1)
  %512 = load i8*, i8** %61, align 8, !tbaa !9
  %513 = load i32, i32* %53, align 4, !tbaa !10
  %514 = mul i32 %513, %511
  %515 = zext i32 %514 to i64
  %516 = call i32 @hipMemcpy(i8* %322, i8* %512, i64 %515, i32 2)
  %517 = load i8*, i8** %340, align 8, !tbaa !9
  %518 = call i32 @hipFree(i8* %517)
  %519 = load i8*, i8** %347, align 8, !tbaa !9
  %520 = call i32 @hipFree(i8* %519)
  %521 = load i8*, i8** %349, align 8, !tbaa !9
  %522 = call i32 @hipFree(i8* %521)
  %523 = load i8*, i8** %351, align 8, !tbaa !9
  %524 = call i32 @hipFree(i8* %523)
  %525 = load i8*, i8** %356, align 8, !tbaa !9
  %526 = call i32 @hipFree(i8* %525)
  %527 = load i8*, i8** %359, align 8, !tbaa !9
  %528 = call i32 @hipFree(i8* %527)
  %529 = load i8*, i8** %61, align 8, !tbaa !9
  %530 = call i32 @hipFree(i8* %529)
  %531 = getelementptr inbounds %struct.pb_Parameters, %struct.pb_Parameters* %64, i64 0, i32 0
  %532 = load i8*, i8** %531, align 8, !tbaa !3
  %533 = icmp eq i8* %532, null
  br i1 %533, label %639, label %638

534:                                              ; preds = %370, %635
  %535 = phi i32 [ %636, %635 ], [ 0, %370 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %372) #23
  store i64 4294967295, i64* %62, align 8
  %536 = load i8*, i8** %347, align 8, !tbaa !9
  %537 = call i32 @hipMemcpy(i8* %536, i8* nonnull %372, i64 8, i32 1)
  call void @pb_SwitchToSubTimer(%struct.pb_TimerSet* nonnull %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i32 2)
  %538 = call i32 @__hipPushCallConfiguration(i64 4294967360, i32 1, i64 4294967808, i32 1, i64 0, %struct.ihipStream_t* null)
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %543, label %540

540:                                              ; preds = %534
  %541 = load i32, i32* %51, align 4, !tbaa !10
  %542 = load i32, i32* %52, align 4, !tbaa !10
  br label %557

543:                                              ; preds = %534
  %544 = load i32*, i32** %55, align 8, !tbaa !9
  %545 = load i32, i32* %52, align 4, !tbaa !10
  %546 = load i32, i32* %51, align 4, !tbaa !10
  %547 = mul i32 %546, %545
  %548 = load i32*, i32** %56, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %374)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %375)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %376)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %377)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %378)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %379)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %380)
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %381)
  store i32* %544, i32** %40, align 8, !tbaa !9
  store i32 %547, i32* %41, align 4, !tbaa !10
  store i32* %548, i32** %42, align 8, !tbaa !9
  store i32** %40, i32*** %383, align 16
  store i32* %41, i32** %385, align 8
  store i32** %42, i32*** %387, align 16
  %549 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %43, %struct.dim3* nonnull %44, i64* nonnull %45, i8** nonnull %46)
  %550 = load i64, i64* %45, align 8
  %551 = load %struct.ihipStream_t*, %struct.ihipStream_t** %388, align 8
  %552 = load i64, i64* %389, align 8
  %553 = load i32, i32* %390, align 8
  %554 = load i64, i64* %391, align 8
  %555 = load i32, i32* %392, align 8
  %556 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32, i32*)** @_Z20histo_prescan_kernelPjiS_ to i8*), i64 %552, i32 %553, i64 %554, i32 %555, i8** nonnull %382, i64 %550, %struct.ihipStream_t* %551)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %374)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %375)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %376)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %377)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %378)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %379)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %380)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %381)
  br label %557

557:                                              ; preds = %540, %543
  %558 = phi i32 [ %542, %540 ], [ %545, %543 ]
  %559 = phi i32 [ %541, %540 ], [ %546, %543 ]
  call void @pb_SwitchToSubTimer(%struct.pb_TimerSet* nonnull %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i32 2)
  %560 = load i8*, i8** %347, align 8, !tbaa !9
  %561 = call i32 @hipMemcpy(i8* nonnull %372, i8* %560, i64 8, i32 2)
  %562 = load i8*, i8** %351, align 8, !tbaa !9
  %563 = load i32, i32* %54, align 4, !tbaa !10
  %564 = mul i32 %563, %559
  %565 = zext i32 %564 to i64
  %566 = shl nuw nsw i64 %565, 2
  %567 = call i32 @hipMemcpy(i8* %562, i8* %371, i64 %566, i32 1)
  call void @pb_SwitchToSubTimer(%struct.pb_TimerSet* nonnull %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0), i32 2)
  %568 = add i32 %558, 15
  %569 = lshr i32 %568, 4
  %570 = add i32 %559, 1
  %571 = lshr i32 %570, 1
  %572 = zext i32 %569 to i64
  %573 = or i64 %572, 4294967296
  %574 = zext i32 %571 to i64
  %575 = or i64 %574, 4294967296
  %576 = call i32 @__hipPushCallConfiguration(i64 %573, i32 1, i64 %575, i32 1, i64 0, %struct.ihipStream_t* null)
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %578, label %589

578:                                              ; preds = %557
  %579 = load %struct.HIP_vector_type.0*, %struct.HIP_vector_type.0** %393, align 8, !tbaa !9
  %580 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %57, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %394)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %395)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %396)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %397)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %398)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %399)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %400)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %401)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %402)
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %403)
  store %struct.HIP_vector_type.0* %579, %struct.HIP_vector_type.0** %30, align 8, !tbaa !9
  store i32 %558, i32* %31, align 4, !tbaa !10
  store i32 %559, i32* %32, align 4, !tbaa !10
  store i32 %571, i32* %33, align 4, !tbaa !10
  store %struct.HIP_vector_type* %580, %struct.HIP_vector_type** %34, align 8, !tbaa !9
  store %struct.HIP_vector_type.0** %30, %struct.HIP_vector_type.0*** %405, align 16
  store i32* %31, i32** %407, align 8
  store i32* %32, i32** %409, align 16
  store i32* %33, i32** %411, align 8
  store %struct.HIP_vector_type** %34, %struct.HIP_vector_type*** %413, align 16
  %581 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %35, %struct.dim3* nonnull %36, i64* nonnull %37, i8** nonnull %38)
  %582 = load i64, i64* %37, align 8
  %583 = load %struct.ihipStream_t*, %struct.ihipStream_t** %414, align 8
  %584 = load i64, i64* %415, align 8
  %585 = load i32, i32* %416, align 8
  %586 = load i64, i64* %417, align 8
  %587 = load i32, i32* %418, align 8
  %588 = call i32 @hipLaunchKernel(i8* bitcast (void (%struct.HIP_vector_type.0*, i32, i32, i32, %struct.HIP_vector_type*)** @_Z26histo_intermediates_kernelP15HIP_vector_typeIjLj2EEjjjPS_IhLj4EE to i8*), i64 %584, i32 %585, i64 %586, i32 %587, i8** nonnull %404, i64 %582, %struct.ihipStream_t* %583)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %394)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %395)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %396)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %397)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %398)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %399)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %400)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %401)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %402)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %403)
  br label %589

589:                                              ; preds = %578, %557
  call void @pb_SwitchToSubTimer(%struct.pb_TimerSet* nonnull %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i32 2)
  %590 = load i32, i32* %419, align 4, !tbaa !10
  %591 = load i32, i32* %373, align 8, !tbaa !10
  %592 = add i32 %590, 1
  %593 = sub i32 %592, %591
  %594 = zext i32 %593 to i64
  %595 = shl nuw i64 %594, 32
  %596 = or i64 %595, 14
  %597 = call i32 @__hipPushCallConfiguration(i64 %596, i32 1, i64 4294967808, i32 1, i64 0, %struct.ihipStream_t* null)
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %599, label %616

599:                                              ; preds = %589
  %600 = load %struct.HIP_vector_type*, %struct.HIP_vector_type** %57, align 8, !tbaa !9
  %601 = mul i32 %558, %559
  %602 = load i32, i32* %373, align 8, !tbaa !10
  %603 = load i32, i32* %419, align 4, !tbaa !10
  %604 = load i32, i32* %53, align 4, !tbaa !10
  %605 = load i32*, i32** %58, align 8, !tbaa !9
  %606 = load i32*, i32** %420, align 8, !tbaa !9
  %607 = load i32*, i32** %60, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %421)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %422)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %423)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %424)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %425)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %426)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %427)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %428)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %429)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %430)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %431)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %432)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %433)
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %434)
  store %struct.HIP_vector_type* %600, %struct.HIP_vector_type** %16, align 8, !tbaa !9
  store i32 %601, i32* %17, align 4, !tbaa !10
  store i32 %602, i32* %18, align 4, !tbaa !10
  store i32 %603, i32* %19, align 4, !tbaa !10
  store i32 %563, i32* %20, align 4, !tbaa !10
  store i32 %604, i32* %21, align 4, !tbaa !10
  store i32* %605, i32** %22, align 8, !tbaa !9
  store i32* %606, i32** %23, align 8, !tbaa !9
  store i32* %607, i32** %24, align 8, !tbaa !9
  store %struct.HIP_vector_type** %16, %struct.HIP_vector_type*** %436, align 16
  store i32* %17, i32** %438, align 8
  store i32* %18, i32** %440, align 16
  store i32* %19, i32** %442, align 8
  store i32* %20, i32** %444, align 16
  store i32* %21, i32** %446, align 8
  store i32** %22, i32*** %448, align 16
  store i32** %23, i32*** %450, align 8
  store i32** %24, i32*** %452, align 16
  %608 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %25, %struct.dim3* nonnull %26, i64* nonnull %27, i8** nonnull %28)
  %609 = load i64, i64* %27, align 8
  %610 = load %struct.ihipStream_t*, %struct.ihipStream_t** %453, align 8
  %611 = load i64, i64* %454, align 8
  %612 = load i32, i32* %455, align 8
  %613 = load i64, i64* %456, align 8
  %614 = load i32, i32* %457, align 8
  %615 = call i32 @hipLaunchKernel(i8* bitcast (void (%struct.HIP_vector_type*, i32, i32, i32, i32, i32, i32*, i32*, i32*)** @_Z17histo_main_kernelP15HIP_vector_typeIhLj4EEjjjjjPjS2_S2_ to i8*), i64 %611, i32 %612, i64 %613, i32 %614, i8** nonnull %435, i64 %609, %struct.ihipStream_t* %610)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %421)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %422)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %423)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %424)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %425)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %426)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %427)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %428)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %429)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %430)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %431)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %432)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %433)
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %434)
  br label %616

616:                                              ; preds = %599, %589
  call void @pb_SwitchToSubTimer(%struct.pb_TimerSet* nonnull %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i32 2)
  %617 = call i32 @__hipPushCallConfiguration(i64 4294967338, i32 1, i64 4294967808, i32 1, i64 0, %struct.ihipStream_t* null)
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %619, label %635

619:                                              ; preds = %616
  %620 = load i32, i32* %373, align 8, !tbaa !10
  %621 = load i32, i32* %419, align 4, !tbaa !10
  %622 = load i32, i32* %53, align 4, !tbaa !10
  %623 = load i32*, i32** %58, align 8, !tbaa !9
  %624 = load i32*, i32** %420, align 8, !tbaa !9
  %625 = load i32*, i32** %60, align 8, !tbaa !9
  %626 = load i32*, i32** %458, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %459)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %460)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %461)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %462)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %463)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %464)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %465)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %466)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %467)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %468)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %469)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %470)
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %471)
  store i32 %620, i32* %3, align 4, !tbaa !10
  store i32 %621, i32* %4, align 4, !tbaa !10
  store i32 %563, i32* %5, align 4, !tbaa !10
  store i32 %622, i32* %6, align 4, !tbaa !10
  store i32* %623, i32** %7, align 8, !tbaa !9
  store i32* %624, i32** %8, align 8, !tbaa !9
  store i32* %625, i32** %9, align 8, !tbaa !9
  store i32* %626, i32** %10, align 8, !tbaa !9
  store i32* %3, i32** %473, align 16
  store i32* %4, i32** %475, align 8
  store i32* %5, i32** %477, align 16
  store i32* %6, i32** %479, align 8
  store i32** %7, i32*** %481, align 16
  store i32** %8, i32*** %483, align 8
  store i32** %9, i32*** %485, align 16
  store i32** %10, i32*** %487, align 8
  %627 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %11, %struct.dim3* nonnull %12, i64* nonnull %13, i8** nonnull %14)
  %628 = load i64, i64* %13, align 8
  %629 = load %struct.ihipStream_t*, %struct.ihipStream_t** %488, align 8
  %630 = load i64, i64* %489, align 8
  %631 = load i32, i32* %490, align 8
  %632 = load i64, i64* %491, align 8
  %633 = load i32, i32* %492, align 8
  %634 = call i32 @hipLaunchKernel(i8* bitcast (void (i32, i32, i32, i32, i32*, i32*, i32*, i32*)** @_Z18histo_final_kerneljjjjPjS_S_S_ to i8*), i64 %630, i32 %631, i64 %632, i32 %633, i8** nonnull %472, i64 %628, %struct.ihipStream_t* %629)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %459)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %460)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %461)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %462)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %463)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %464)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %465)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %466)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %467)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %468)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %469)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %470)
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %471)
  br label %635

635:                                              ; preds = %619, %616
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %372) #23
  %636 = add nuw nsw i32 %535, 1
  %637 = icmp eq i32 %636, %288
  br i1 %637, label %510, label %534, !llvm.loop !99

638:                                              ; preds = %510
  call void @_Z14dump_histo_imgPhjjPKc(i8* %322, i32 %511, i32 %513, i8* nonnull %532)
  br label %639

639:                                              ; preds = %638, %510
  call void @pb_SwitchToSubTimer(%struct.pb_TimerSet* nonnull %50, i8* null, i32 6)
  call void @free(i8* %316) #23
  call void @free(i8* %322) #23
  call void @pb_SwitchToSubTimer(%struct.pb_TimerSet* nonnull %50, i8* null, i32 0)
  %640 = call i32 @putchar(i32 10)
  call void @pb_PrintTimerSet(%struct.pb_TimerSet* nonnull %50)
  call void @free(i8* %532) #23
  %641 = load i8**, i8*** %67, align 8, !tbaa !8
  %642 = icmp eq i8** %641, null
  br i1 %642, label %654, label %643

643:                                              ; preds = %639
  %644 = load i8*, i8** %641, align 8, !tbaa !9
  %645 = icmp eq i8* %644, null
  br i1 %645, label %652, label %646

646:                                              ; preds = %643, %646
  %647 = phi i8* [ %650, %646 ], [ %644, %643 ]
  %648 = phi i8** [ %649, %646 ], [ %641, %643 ]
  call void @free(i8* nonnull %647) #23
  %649 = getelementptr inbounds i8*, i8** %648, i64 1
  %650 = load i8*, i8** %649, align 8, !tbaa !9
  %651 = icmp eq i8* %650, null
  br i1 %651, label %652, label %646, !llvm.loop !28

652:                                              ; preds = %646, %643
  %653 = bitcast i8** %641 to i8*
  call void @free(i8* %653) #23
  br label %654

654:                                              ; preds = %639, %652
  %655 = bitcast %struct.pb_Parameters* %64 to i8*
  call void @free(i8* %655) #23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %339) #23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %338) #23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %337) #23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %336) #23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %335) #23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %334) #23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %333) #23
  br label %656

656:                                              ; preds = %327, %654, %307
  %657 = phi i32 [ -1, %307 ], [ -1, %327 ], [ 0, %654 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %292) #23
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %291) #23
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %290) #23
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %289) #23
  br label %658

658:                                              ; preds = %656, %304
  %659 = phi i32 [ %657, %656 ], [ -1, %304 ]
  call void @llvm.lifetime.end.p0i8(i64 288, i8* nonnull %81) #23
  br label %660

660:                                              ; preds = %2, %658, %71
  %661 = phi i32 [ %659, %658 ], [ -1, %71 ], [ -1, %2 ]
  ret i32 %661
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fread(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

declare dso_local i32 @hipMalloc(i8**, i64) local_unnamed_addr #12

declare dso_local i32 @hipMemset(i8*, i32, i64) local_unnamed_addr #12

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #12

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #12

; Function Attrs: norecurse uwtable
define dso_local void @_Z35__device_stub__histo_prescan_kernelPjiS_(i32* %0, i32 %1, i32* %2) #17 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8, !tbaa !9
  store i32 %1, i32* %5, align 4, !tbaa !10
  store i32* %2, i32** %6, align 8, !tbaa !9
  %11 = alloca [3 x i8*], align 16
  %12 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %13 = bitcast [3 x i8*]* %11 to i32***
  store i32** %4, i32*** %13, align 16
  %14 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 1
  %15 = bitcast i8** %14 to i32**
  store i32* %5, i32** %15, align 8
  %16 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 2
  %17 = bitcast i8** %16 to i32***
  store i32** %6, i32*** %17, align 16
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
  %30 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32, i32*)** @_Z20histo_prescan_kernelPjiS_ to i8*), i64 %23, i32 %25, i64 %27, i32 %29, i8** nonnull %12, i64 %19, %struct.ihipStream_t* %21)
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local void @_Z41__device_stub__histo_intermediates_kernelP15HIP_vector_typeIjLj2EEjjjPS_IhLj4EE(%struct.HIP_vector_type.0* %0, i32 %1, i32 %2, i32 %3, %struct.HIP_vector_type* %4) #17 {
  %6 = alloca %struct.HIP_vector_type.0*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.HIP_vector_type*, align 8
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.HIP_vector_type.0* %0, %struct.HIP_vector_type.0** %6, align 8, !tbaa !9
  store i32 %1, i32* %7, align 4, !tbaa !10
  store i32 %2, i32* %8, align 4, !tbaa !10
  store i32 %3, i32* %9, align 4, !tbaa !10
  store %struct.HIP_vector_type* %4, %struct.HIP_vector_type** %10, align 8, !tbaa !9
  %15 = alloca [5 x i8*], align 16
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 0
  %17 = bitcast [5 x i8*]* %15 to %struct.HIP_vector_type.0***
  store %struct.HIP_vector_type.0** %6, %struct.HIP_vector_type.0*** %17, align 16
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 1
  %19 = bitcast i8** %18 to i32**
  store i32* %7, i32** %19, align 8
  %20 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 2
  %21 = bitcast i8** %20 to i32**
  store i32* %8, i32** %21, align 16
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 3
  %23 = bitcast i8** %22 to i32**
  store i32* %9, i32** %23, align 8
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 4
  %25 = bitcast i8** %24 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %10, %struct.HIP_vector_type*** %25, align 16
  %26 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %11, %struct.dim3* nonnull %12, i64* nonnull %13, i8** nonnull %14)
  %27 = load i64, i64* %13, align 8
  %28 = bitcast i8** %14 to %struct.ihipStream_t**
  %29 = load %struct.ihipStream_t*, %struct.ihipStream_t** %28, align 8
  %30 = bitcast %struct.dim3* %11 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.dim3, %struct.dim3* %11, i64 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = bitcast %struct.dim3* %12 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.dim3, %struct.dim3* %12, i64 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @hipLaunchKernel(i8* bitcast (void (%struct.HIP_vector_type.0*, i32, i32, i32, %struct.HIP_vector_type*)** @_Z26histo_intermediates_kernelP15HIP_vector_typeIjLj2EEjjjPS_IhLj4EE to i8*), i64 %31, i32 %33, i64 %35, i32 %37, i8** nonnull %16, i64 %27, %struct.ihipStream_t* %29)
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local void @_Z32__device_stub__histo_main_kernelP15HIP_vector_typeIhLj4EEjjjjjPjS2_S2_(%struct.HIP_vector_type* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7, i32* %8) #17 {
  %10 = alloca %struct.HIP_vector_type*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.dim3, align 8
  %20 = alloca %struct.dim3, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  store %struct.HIP_vector_type* %0, %struct.HIP_vector_type** %10, align 8, !tbaa !9
  store i32 %1, i32* %11, align 4, !tbaa !10
  store i32 %2, i32* %12, align 4, !tbaa !10
  store i32 %3, i32* %13, align 4, !tbaa !10
  store i32 %4, i32* %14, align 4, !tbaa !10
  store i32 %5, i32* %15, align 4, !tbaa !10
  store i32* %6, i32** %16, align 8, !tbaa !9
  store i32* %7, i32** %17, align 8, !tbaa !9
  store i32* %8, i32** %18, align 8, !tbaa !9
  %23 = alloca [9 x i8*], align 16
  %24 = getelementptr inbounds [9 x i8*], [9 x i8*]* %23, i64 0, i64 0
  %25 = bitcast [9 x i8*]* %23 to %struct.HIP_vector_type***
  store %struct.HIP_vector_type** %10, %struct.HIP_vector_type*** %25, align 16
  %26 = getelementptr inbounds [9 x i8*], [9 x i8*]* %23, i64 0, i64 1
  %27 = bitcast i8** %26 to i32**
  store i32* %11, i32** %27, align 8
  %28 = getelementptr inbounds [9 x i8*], [9 x i8*]* %23, i64 0, i64 2
  %29 = bitcast i8** %28 to i32**
  store i32* %12, i32** %29, align 16
  %30 = getelementptr inbounds [9 x i8*], [9 x i8*]* %23, i64 0, i64 3
  %31 = bitcast i8** %30 to i32**
  store i32* %13, i32** %31, align 8
  %32 = getelementptr inbounds [9 x i8*], [9 x i8*]* %23, i64 0, i64 4
  %33 = bitcast i8** %32 to i32**
  store i32* %14, i32** %33, align 16
  %34 = getelementptr inbounds [9 x i8*], [9 x i8*]* %23, i64 0, i64 5
  %35 = bitcast i8** %34 to i32**
  store i32* %15, i32** %35, align 8
  %36 = getelementptr inbounds [9 x i8*], [9 x i8*]* %23, i64 0, i64 6
  %37 = bitcast i8** %36 to i32***
  store i32** %16, i32*** %37, align 16
  %38 = getelementptr inbounds [9 x i8*], [9 x i8*]* %23, i64 0, i64 7
  %39 = bitcast i8** %38 to i32***
  store i32** %17, i32*** %39, align 8
  %40 = getelementptr inbounds [9 x i8*], [9 x i8*]* %23, i64 0, i64 8
  %41 = bitcast i8** %40 to i32***
  store i32** %18, i32*** %41, align 16
  %42 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %19, %struct.dim3* nonnull %20, i64* nonnull %21, i8** nonnull %22)
  %43 = load i64, i64* %21, align 8
  %44 = bitcast i8** %22 to %struct.ihipStream_t**
  %45 = load %struct.ihipStream_t*, %struct.ihipStream_t** %44, align 8
  %46 = bitcast %struct.dim3* %19 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.dim3, %struct.dim3* %19, i64 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = bitcast %struct.dim3* %20 to i64*
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.dim3, %struct.dim3* %20, i64 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @hipLaunchKernel(i8* bitcast (void (%struct.HIP_vector_type*, i32, i32, i32, i32, i32, i32*, i32*, i32*)** @_Z17histo_main_kernelP15HIP_vector_typeIhLj4EEjjjjjPjS2_S2_ to i8*), i64 %47, i32 %49, i64 %51, i32 %53, i8** nonnull %24, i64 %43, %struct.ihipStream_t* %45)
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local void @_Z33__device_stub__histo_final_kerneljjjjPjS_S_S_(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7) #17 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.dim3, align 8
  %18 = alloca %struct.dim3, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store i32 %0, i32* %9, align 4, !tbaa !10
  store i32 %1, i32* %10, align 4, !tbaa !10
  store i32 %2, i32* %11, align 4, !tbaa !10
  store i32 %3, i32* %12, align 4, !tbaa !10
  store i32* %4, i32** %13, align 8, !tbaa !9
  store i32* %5, i32** %14, align 8, !tbaa !9
  store i32* %6, i32** %15, align 8, !tbaa !9
  store i32* %7, i32** %16, align 8, !tbaa !9
  %21 = alloca [8 x i8*], align 16
  %22 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 0
  %23 = bitcast [8 x i8*]* %21 to i32**
  store i32* %9, i32** %23, align 16
  %24 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 1
  %25 = bitcast i8** %24 to i32**
  store i32* %10, i32** %25, align 8
  %26 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 2
  %27 = bitcast i8** %26 to i32**
  store i32* %11, i32** %27, align 16
  %28 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 3
  %29 = bitcast i8** %28 to i32**
  store i32* %12, i32** %29, align 8
  %30 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 4
  %31 = bitcast i8** %30 to i32***
  store i32** %13, i32*** %31, align 16
  %32 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 5
  %33 = bitcast i8** %32 to i32***
  store i32** %14, i32*** %33, align 8
  %34 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 6
  %35 = bitcast i8** %34 to i32***
  store i32** %15, i32*** %35, align 16
  %36 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 7
  %37 = bitcast i8** %36 to i32***
  store i32** %16, i32*** %37, align 8
  %38 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %17, %struct.dim3* nonnull %18, i64* nonnull %19, i8** nonnull %20)
  %39 = load i64, i64* %19, align 8
  %40 = bitcast i8** %20 to %struct.ihipStream_t**
  %41 = load %struct.ihipStream_t*, %struct.ihipStream_t** %40, align 8
  %42 = bitcast %struct.dim3* %17 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.dim3, %struct.dim3* %17, i64 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = bitcast %struct.dim3* %18 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.dim3, %struct.dim3* %18, i64 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @hipLaunchKernel(i8* bitcast (void (i32, i32, i32, i32, i32*, i32*, i32*, i32*)** @_Z18histo_final_kerneljjjjPjS_S_S_ to i8*), i64 %43, i32 %45, i64 %47, i32 %49, i8** nonnull %22, i64 %39, %struct.ihipStream_t* %41)
  ret void
}

declare dso_local i32 @hipFree(i8*) local_unnamed_addr #12

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

declare dso_local i32 @hipEventCreate(%struct.ihipEvent_t**) local_unnamed_addr #12

declare dso_local i32 @hipEventRecord(%struct.ihipEvent_t*, %struct.ihipStream_t*) local_unnamed_addr #12

declare dso_local i32 @hipEventElapsedTime(float*, %struct.ihipEvent_t*, %struct.ihipEvent_t*) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.floor.f32(float) #19

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #20

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
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32*, i32, i32*)** @_Z20histo_prescan_kernelPjiS_ to i8*), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %9 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (%struct.HIP_vector_type.0*, i32, i32, i32, %struct.HIP_vector_type*)** @_Z26histo_intermediates_kernelP15HIP_vector_typeIjLj2EEjjjPS_IhLj4EE to i8*), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %10 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32, i32, i32, i32, i32*, i32*, i32*, i32*)** @_Z18histo_final_kerneljjjjPjS_S_S_ to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %11 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (%struct.HIP_vector_type*, i32, i32, i32, i32, i32, i32*, i32*, i32*)** @_Z17histo_main_kernelP15HIP_vector_typeIhLj4EEjjjjjPjS2_S2_ to i8*), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @3, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @3, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %12 = tail call i32 @atexit(void (i8*)* nonnull @__hip_module_dtor)
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
declare i8* @strcpy(i8* noalias returned writeonly, i8* noalias nocapture readonly) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #22

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
attributes #14 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #16 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #20 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { argmemonly nofree nounwind willreturn }
attributes #22 = { nofree nounwind }
attributes #23 = { nounwind }
attributes #24 = { cold nounwind }
attributes #25 = { cold }
attributes #26 = { nounwind readonly willreturn }
attributes #27 = { nounwind readnone willreturn }
attributes #28 = { noreturn nounwind }

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
!73 = !{!74, !11, i64 4}
!74 = !{!"_ZTS9bmp_image", !6, i64 0, !75, i64 4, !77, i64 16, !5, i64 56, !5, i64 64}
!75 = !{!"_ZTS16bmpfile_header_t", !11, i64 0, !76, i64 4, !76, i64 6, !11, i64 8}
!76 = !{!"short", !6, i64 0}
!77 = !{!"_ZTS16bmp_dib_header_t", !11, i64 0, !11, i64 4, !11, i64 8, !76, i64 12, !76, i64 14, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36}
!78 = !{!74, !76, i64 10}
!79 = !{!74, !76, i64 8}
!80 = !{!74, !11, i64 12}
!81 = !{!74, !11, i64 16}
!82 = !{!74, !11, i64 20}
!83 = !{!74, !11, i64 24}
!84 = !{!74, !76, i64 28}
!85 = !{!74, !76, i64 30}
!86 = !{!74, !11, i64 32}
!87 = !{!74, !11, i64 36}
!88 = distinct !{!88, !14}
!89 = !{i64 0, i64 1, !12, i64 1, i64 1, !12, i64 2, i64 1, !12}
!90 = !{!91, !6, i64 2}
!91 = !{!"_ZTS3RGB", !6, i64 0, !6, i64 1, !6, i64 2}
!92 = !{!91, !6, i64 1}
!93 = !{!91, !6, i64 0}
!94 = distinct !{!94, !14}
!95 = distinct !{!95, !14}
!96 = !{i64 0, i64 4, !97, i64 8, i64 8, !9, i64 16, i64 8, !40, i64 24, i64 8, !40, i64 32, i64 192, !12, i64 224, i64 64, !12}
!97 = !{!43, !43, i64 0}
!98 = distinct !{!98, !14}
!99 = distinct !{!99, !14}
