; ModuleID = 'sgemm.cpp'
source_filename = "sgemm.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
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
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" = type { float*, float*, float* }
%"class.std::basic_fstream" = type { %"class.std::basic_iostream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { i32 (...)**, i64 }
%"class.std::basic_ostream.base" = type { i32 (...)** }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, i8*, i64, i8, i8, i8, i8, i8*, i8*, i8, %"class.std::codecvt"*, i8*, i64, i8*, i8* }
%union.pthread_mutex_t = type { %"struct.(anonymous union)::__pthread_mutex_s" }
%"struct.(anonymous union)::__pthread_mutex_s" = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%"class.std::__basic_file" = type <{ %struct._IO_FILE*, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%"class.std::codecvt" = type { %"class.std::__codecvt_abstract_base.base", %struct.__locale_struct* }
%"class.std::__codecvt_abstract_base.base" = type { %"class.std::locale::facet.base" }
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }

$_ZNSt6vectorIfSaIfEE9push_backERKf = comdat any

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
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_Z9mysgemmNTPKfiS0_iPfiiff = dso_local constant void (float*, i32, float*, i32, float*, i32, i32, float, float)* @_Z24__device_stub__mysgemmNTPKfiS0_iPfiiff, align 8
@_ZSt4cerr = external dso_local global %"class.std::basic_ostream", align 8
@.str.23 = private unnamed_addr constant [48 x i8] c"unsupported value of 'transa' in regtileSgemm()\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c"unsupported value of 'transb' in regtileSgemm()\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"unsupported size of matrix. m should be multiple of \00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"; n should be multiple of \00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"Cuda error: %s in file '%s' in line %i : %s.\0A\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"mySgemm\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sgemm.cpp\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"Expecting three input filenames\0A\00", align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str.31 = private unnamed_addr constant [10 x i8] c"GFLOPs = \00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"Opening file:\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"Matrix dimension: \00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c" for write.\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"delete_argument\0A\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"next_argument\0A\00", align 1
@_ZTTSt13basic_fstreamIcSt11char_traitsIcEE = external unnamed_addr constant [10 x i8*], align 8
@0 = private unnamed_addr constant [27 x i8] c"_Z9mysgemmNTPKfiS0_iPfiiff\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_sgemm.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias %struct.pb_Parameters* @pb_ReadParameters(i32* nocapture %0, i8** %1) local_unnamed_addr #0 {
  %3 = tail call noalias align 16 dereferenceable_or_null(16) i8* @malloc(i64 16) #27
  %4 = bitcast i8* %3 to %struct.pb_Parameters*
  %5 = getelementptr inbounds %struct.pb_Parameters, %struct.pb_Parameters* %4, i64 0, i32 0
  store i8* null, i8** %5, align 16, !tbaa !3
  %6 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #27
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
  %32 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %31) #28
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
  tail call void @free(i8* %42) #27
  %43 = load i8*, i8** %37, align 8, !tbaa !9
  %44 = icmp slt i32 %16, %36
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %47 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %46) #28
  br label %48

48:                                               ; preds = %41, %45
  %49 = add nsw i32 %13, -2
  %50 = getelementptr inbounds i8*, i8** %15, i64 2
  %51 = tail call noalias i8* @strdup(i8* %43) #27
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
  %59 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %58) #28
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
  %77 = tail call noalias align 16 i8* @malloc(i64 %76) #27
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
  %97 = tail call noalias align 16 i8* @malloc(i64 %96) #27
  %98 = getelementptr inbounds i8*, i8** %78, i64 %83
  store i8* %97, i8** %98, align 8, !tbaa !9
  %99 = ashr exact i64 %94, 32
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %97, i8* align 1 %84, i64 %99, i1 false) #27
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
  %112 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %111) #28
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
  %286 = tail call i32 @fputs(i8* nonnull %284, %struct._IO_FILE* %285) #29
  %287 = load i8*, i8** %5, align 16, !tbaa !3
  tail call void @free(i8* %287) #27
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
  tail call void @free(i8* nonnull %294) #27
  %296 = getelementptr inbounds i8*, i8** %295, i64 1
  %297 = load i8*, i8** %296, align 8, !tbaa !9
  %298 = icmp eq i8* %297, null
  br i1 %298, label %299, label %293, !llvm.loop !28

299:                                              ; preds = %293, %290
  %300 = bitcast i8** %288 to i8*
  tail call void @free(i8* %300) #27
  br label %301

301:                                              ; preds = %283, %299
  tail call void @free(i8* %3) #27
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
  tail call void @free(i8* %3) #27
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
  tail call void @free(i8* nonnull %11) #27
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8, !tbaa !9
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %10, !llvm.loop !28

16:                                               ; preds = %10, %7
  %17 = bitcast i8** %5 to i8*
  tail call void @free(i8* %17) #27
  br label %18

18:                                               ; preds = %1, %16
  %19 = bitcast %struct.pb_Parameters* %0 to i8*
  tail call void @free(i8* %19) #27
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
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %7) #29
  br label %19

9:                                                ; preds = %1
  store i32 1, i32* %3, align 8, !tbaa !30
  %10 = bitcast %struct.timeval* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #27
  %11 = call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* null) #27
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !35
  %14 = mul nsw i64 %13, 1000000
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 1
  %16 = load i64, i64* %15, align 8, !tbaa !38
  %17 = add nsw i64 %14, %16
  %18 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %0, i64 0, i32 2
  store i64 %17, i64* %18, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #27
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
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %8) #29
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ 1, %7 ], [ 3, %2 ]
  %12 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %1, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !30
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %16) #29
  %18 = and i32 %11, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %22 = tail call i64 @fwrite(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i64 53, i64 1, %struct._IO_FILE* %21) #29
  br label %49

23:                                               ; preds = %10, %15
  %24 = phi i32 [ %18, %15 ], [ %11, %10 ]
  store i32 1, i32* %4, align 8, !tbaa !30
  store i32 1, i32* %12, align 8, !tbaa !30
  %25 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #27
  %26 = call i32 @gettimeofday(%struct.timeval* nonnull %3, %struct.timezone* null) #27
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #27
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
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %7) #29
  br label %24

9:                                                ; preds = %1
  store i32 0, i32* %3, align 8, !tbaa !30
  %10 = bitcast %struct.timeval* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #27
  %11 = call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* null) #27
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !35
  %14 = mul nsw i64 %13, 1000000
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 1
  %16 = load i64, i64* %15, align 8, !tbaa !38
  %17 = add nsw i64 %14, %16
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #27
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
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %8) #29
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ 1, %7 ], [ 3, %2 ]
  %12 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %1, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !30
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %16) #29
  %18 = and i32 %11, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %22 = tail call i64 @fwrite(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i64 52, i64 1, %struct._IO_FILE* %21) #29
  br label %52

23:                                               ; preds = %10, %15
  %24 = phi i32 [ %18, %15 ], [ %11, %10 ]
  store i32 0, i32* %4, align 8, !tbaa !30
  store i32 0, i32* %12, align 8, !tbaa !30
  %25 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #27
  %26 = call i32 @gettimeofday(%struct.timeval* nonnull %3, %struct.timezone* null) #27
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 0
  %28 = load i64, i64* %27, align 8, !tbaa !35
  %29 = mul nsw i64 %28, 1000000
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 1
  %31 = load i64, i64* %30, align 8, !tbaa !38
  %32 = add nsw i64 %29, %31
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #27
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
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %6) #29
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
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #27
  %4 = call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* null) #27
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !35
  %7 = mul nsw i64 %6, 1000000
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 1
  %9 = load i64, i64* %8, align 8, !tbaa !38
  %10 = add nsw i64 %7, %9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #27
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
  %4 = tail call noalias align 16 dereferenceable_or_null(40) i8* @malloc(i64 40) #27
  %5 = bitcast i8* %4 to %struct.pb_SubTimer*
  %6 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #30
  %7 = shl i64 %6, 32
  %8 = add i64 %7, 4294967296
  %9 = ashr exact i64 %8, 32
  %10 = tail call noalias align 16 i8* @malloc(i64 %9) #27
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
  %21 = tail call noalias align 16 dereferenceable_or_null(16) i8* @malloc(i64 16) #27
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
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %34) #28
  br label %143

36:                                               ; preds = %29
  store i32 0, i32* %30, align 8, !tbaa !30
  %37 = bitcast %struct.timeval* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %37) #27
  %38 = call i32 @gettimeofday(%struct.timeval* nonnull %8, %struct.timezone* null) #27
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 0, i32 0
  %40 = load i64, i64* %39, align 8, !tbaa !35
  %41 = mul nsw i64 %40, 1000000
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 0, i32 1
  %43 = load i64, i64* %42, align 8, !tbaa !38
  %44 = add nsw i64 %41, %43
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %37) #27
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
  %58 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %57) #28
  br label %143

59:                                               ; preds = %52
  store i32 0, i32* %53, align 8, !tbaa !30
  %60 = bitcast %struct.timeval* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %60) #27
  %61 = call i32 @gettimeofday(%struct.timeval* nonnull %7, %struct.timezone* null) #27
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 0
  %63 = load i64, i64* %62, align 8, !tbaa !35
  %64 = mul nsw i64 %63, 1000000
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 1
  %66 = load i64, i64* %65, align 8, !tbaa !38
  %67 = add nsw i64 %64, %66
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %60) #27
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
  %95 = tail call noalias align 16 dereferenceable_or_null(32) i8* @malloc(i64 32) #27
  %96 = bitcast %struct.pb_async_time_marker_list** %94 to i8**
  store i8* %95, i8** %96, align 8, !tbaa !9
  %97 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #27
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
  %127 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %126) #28
  br label %143

128:                                              ; preds = %121
  store i32 0, i32* %122, align 8, !tbaa !30
  %129 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %129) #27
  %130 = call i32 @gettimeofday(%struct.timeval* nonnull %6, %struct.timezone* null) #27
  %131 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 0
  %132 = load i64, i64* %131, align 8, !tbaa !35
  %133 = mul nsw i64 %132, 1000000
  %134 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %135 = load i64, i64* %134, align 8, !tbaa !38
  %136 = add nsw i64 %133, %135
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %129) #27
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
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %144) #27
  %145 = call i32 @gettimeofday(%struct.timeval* nonnull %5, %struct.timezone* null) #27
  %146 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 0
  %147 = load i64, i64* %146, align 8, !tbaa !35
  %148 = mul nsw i64 %147, 1000000
  %149 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 1
  %150 = load i64, i64* %149, align 8, !tbaa !38
  %151 = add nsw i64 %148, %150
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %144) #27
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
  %209 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %208) #28
  br label %283

210:                                              ; preds = %202
  store i32 1, i32* %204, align 8, !tbaa !30
  %211 = bitcast %struct.timeval* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %211) #27
  %212 = call i32 @gettimeofday(%struct.timeval* nonnull %4, %struct.timezone* null) #27
  %213 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0
  %214 = load i64, i64* %213, align 8, !tbaa !35
  %215 = mul nsw i64 %214, 1000000
  %216 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1
  %217 = load i64, i64* %216, align 8, !tbaa !38
  %218 = add nsw i64 %215, %217
  %219 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %203, i32 2
  store i64 %218, i64* %219, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %211) #27
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
  %228 = tail call noalias align 16 dereferenceable_or_null(32) i8* @malloc(i64 32) #27
  %229 = bitcast %struct.pb_async_time_marker_list** %152 to i8**
  store i8* %228, i8** %229, align 8, !tbaa !9
  %230 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #27
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
  %272 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %271) #28
  br label %283

273:                                              ; preds = %266
  store i32 1, i32* %267, align 8, !tbaa !30
  %274 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %274) #27
  %275 = call i32 @gettimeofday(%struct.timeval* nonnull %3, %struct.timezone* null) #27
  %276 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 0
  %277 = load i64, i64* %276, align 8, !tbaa !35
  %278 = mul nsw i64 %277, 1000000
  %279 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 1
  %280 = load i64, i64* %279, align 8, !tbaa !38
  %281 = add nsw i64 %278, %280
  %282 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 4, i32 2
  store i64 %281, i64* %282, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %274) #27
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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #27
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
  %61 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %60, i8* noundef nonnull dereferenceable(1) %49) #30
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
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #27
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
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %34) #28
  br label %143

36:                                               ; preds = %29
  store i32 0, i32* %30, align 8, !tbaa !30
  %37 = bitcast %struct.timeval* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %37) #27
  %38 = call i32 @gettimeofday(%struct.timeval* nonnull %10, %struct.timezone* null) #27
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i64 0, i32 0
  %40 = load i64, i64* %39, align 8, !tbaa !35
  %41 = mul nsw i64 %40, 1000000
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i64 0, i32 1
  %43 = load i64, i64* %42, align 8, !tbaa !38
  %44 = add nsw i64 %41, %43
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %37) #27
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
  %58 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %57) #28
  br label %143

59:                                               ; preds = %52
  store i32 0, i32* %53, align 8, !tbaa !30
  %60 = bitcast %struct.timeval* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %60) #27
  %61 = call i32 @gettimeofday(%struct.timeval* nonnull %9, %struct.timezone* null) #27
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i64 0, i32 0
  %63 = load i64, i64* %62, align 8, !tbaa !35
  %64 = mul nsw i64 %63, 1000000
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i64 0, i32 1
  %66 = load i64, i64* %65, align 8, !tbaa !38
  %67 = add nsw i64 %64, %66
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %60) #27
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
  %95 = tail call noalias align 16 dereferenceable_or_null(32) i8* @malloc(i64 32) #27
  %96 = bitcast %struct.pb_async_time_marker_list** %94 to i8**
  store i8* %95, i8** %96, align 8, !tbaa !9
  %97 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #27
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
  %127 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %126) #28
  br label %143

128:                                              ; preds = %121
  store i32 0, i32* %122, align 8, !tbaa !30
  %129 = bitcast %struct.timeval* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %129) #27
  %130 = call i32 @gettimeofday(%struct.timeval* nonnull %8, %struct.timezone* null) #27
  %131 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 0, i32 0
  %132 = load i64, i64* %131, align 8, !tbaa !35
  %133 = mul nsw i64 %132, 1000000
  %134 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 0, i32 1
  %135 = load i64, i64* %134, align 8, !tbaa !38
  %136 = add nsw i64 %133, %135
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %129) #27
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
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %144) #27
  %145 = call i32 @gettimeofday(%struct.timeval* nonnull %7, %struct.timezone* null) #27
  %146 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 0
  %147 = load i64, i64* %146, align 8, !tbaa !35
  %148 = mul nsw i64 %147, 1000000
  %149 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 1
  %150 = load i64, i64* %149, align 8, !tbaa !38
  %151 = add nsw i64 %148, %150
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %144) #27
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
  %214 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %213, i8* noundef nonnull %1) #30
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
  %241 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %240) #28
  br label %336

242:                                              ; preds = %235
  store i32 1, i32* %236, align 8, !tbaa !30
  %243 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %243) #27
  %244 = call i32 @gettimeofday(%struct.timeval* nonnull %6, %struct.timezone* null) #27
  %245 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 0
  %246 = load i64, i64* %245, align 8, !tbaa !35
  %247 = mul nsw i64 %246, 1000000
  %248 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %249 = load i64, i64* %248, align 8, !tbaa !38
  %250 = add nsw i64 %247, %249
  %251 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %221, i64 0, i32 1, i32 2
  store i64 %250, i64* %251, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %243) #27
  br label %336

252:                                              ; preds = %234
  %253 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %202, i32 0
  %254 = load i32, i32* %253, align 8, !tbaa !30
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %252
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %258 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %257) #28
  br label %336

259:                                              ; preds = %252
  store i32 1, i32* %253, align 8, !tbaa !30
  %260 = bitcast %struct.timeval* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %260) #27
  %261 = call i32 @gettimeofday(%struct.timeval* nonnull %5, %struct.timezone* null) #27
  %262 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 0
  %263 = load i64, i64* %262, align 8, !tbaa !35
  %264 = mul nsw i64 %263, 1000000
  %265 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 1
  %266 = load i64, i64* %265, align 8, !tbaa !38
  %267 = add nsw i64 %264, %266
  %268 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %202, i32 2
  store i64 %267, i64* %268, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %260) #27
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
  %281 = tail call noalias align 16 dereferenceable_or_null(32) i8* @malloc(i64 32) #27
  %282 = bitcast %struct.pb_async_time_marker_list** %152 to i8**
  store i8* %281, i8** %282, align 8, !tbaa !9
  %283 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #27
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
  %325 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %324) #28
  br label %336

326:                                              ; preds = %319
  store i32 1, i32* %320, align 8, !tbaa !30
  %327 = bitcast %struct.timeval* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %327) #27
  %328 = call i32 @gettimeofday(%struct.timeval* nonnull %4, %struct.timezone* null) #27
  %329 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0
  %330 = load i64, i64* %329, align 8, !tbaa !35
  %331 = mul nsw i64 %330, 1000000
  %332 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1
  %333 = load i64, i64* %332, align 8, !tbaa !38
  %334 = add nsw i64 %331, %333
  %335 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 4, i32 2
  store i64 %334, i64* %335, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %327) #27
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
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #27
  %5 = call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* null) #27
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 1
  %9 = load i64, i64* %8, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #27
  %10 = bitcast [6 x i8*]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %10) #27
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
  %24 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %23) #28
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
  %39 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %38) #28
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
  %58 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %57) #30
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
  %78 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %77) #28
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
  %97 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %96) #28
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
  %109 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %108) #28
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
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %10) #27
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
  tail call void @free(i8* %25) #27
  %26 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %11, align 8, !tbaa !9
  %27 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %26, i64 0, i32 3
  %28 = bitcast %struct.pb_async_time_marker_list* %26 to i8*
  tail call void @free(i8* %28) #27
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
  tail call void @free(i8* %39) #27
  %40 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %37, i64 0, i32 2
  %41 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %40, align 8, !tbaa !48
  %42 = bitcast %struct.pb_SubTimer* %37 to i8*
  tail call void @free(i8* %42) #27
  %43 = icmp eq %struct.pb_SubTimer* %41, null
  br i1 %43, label %44, label %36, !llvm.loop !72

44:                                               ; preds = %36
  %45 = bitcast %struct.pb_SubTimerList** %6 to i8**
  %46 = load i8*, i8** %45, align 8, !tbaa !9
  br label %47

47:                                               ; preds = %31, %44
  %48 = phi i8* [ %46, %44 ], [ %32, %31 ]
  tail call void @free(i8* %48) #27
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
  tail call void @free(i8* %61) #27
  %62 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %59, i64 0, i32 2
  %63 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %62, align 8, !tbaa !48
  %64 = bitcast %struct.pb_SubTimer* %59 to i8*
  tail call void @free(i8* %64) #27
  %65 = icmp eq %struct.pb_SubTimer* %63, null
  br i1 %65, label %66, label %58, !llvm.loop !72

66:                                               ; preds = %58
  %67 = bitcast %struct.pb_SubTimerList** %50 to i8**
  %68 = load i8*, i8** %67, align 8, !tbaa !9
  br label %69

69:                                               ; preds = %53, %66
  %70 = phi i8* [ %68, %66 ], [ %54, %53 ]
  tail call void @free(i8* %70) #27
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
  tail call void @free(i8* %83) #27
  %84 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %81, i64 0, i32 2
  %85 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %84, align 8, !tbaa !48
  %86 = bitcast %struct.pb_SubTimer* %81 to i8*
  tail call void @free(i8* %86) #27
  %87 = icmp eq %struct.pb_SubTimer* %85, null
  br i1 %87, label %88, label %80, !llvm.loop !72

88:                                               ; preds = %80
  %89 = bitcast %struct.pb_SubTimerList** %72 to i8**
  %90 = load i8*, i8** %89, align 8, !tbaa !9
  br label %91

91:                                               ; preds = %75, %88
  %92 = phi i8* [ %90, %88 ], [ %76, %75 ]
  tail call void @free(i8* %92) #27
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
  tail call void @free(i8* %105) #27
  %106 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %103, i64 0, i32 2
  %107 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %106, align 8, !tbaa !48
  %108 = bitcast %struct.pb_SubTimer* %103 to i8*
  tail call void @free(i8* %108) #27
  %109 = icmp eq %struct.pb_SubTimer* %107, null
  br i1 %109, label %110, label %102, !llvm.loop !72

110:                                              ; preds = %102
  %111 = bitcast %struct.pb_SubTimerList** %94 to i8**
  %112 = load i8*, i8** %111, align 8, !tbaa !9
  br label %113

113:                                              ; preds = %97, %110
  %114 = phi i8* [ %112, %110 ], [ %98, %97 ]
  tail call void @free(i8* %114) #27
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
  tail call void @free(i8* %127) #27
  %128 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %125, i64 0, i32 2
  %129 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %128, align 8, !tbaa !48
  %130 = bitcast %struct.pb_SubTimer* %125 to i8*
  tail call void @free(i8* %130) #27
  %131 = icmp eq %struct.pb_SubTimer* %129, null
  br i1 %131, label %132, label %124, !llvm.loop !72

132:                                              ; preds = %124
  %133 = bitcast %struct.pb_SubTimerList** %116 to i8**
  %134 = load i8*, i8** %133, align 8, !tbaa !9
  br label %135

135:                                              ; preds = %119, %132
  %136 = phi i8* [ %134, %132 ], [ %120, %119 ]
  tail call void @free(i8* %136) #27
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
  tail call void @free(i8* %149) #27
  %150 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %147, i64 0, i32 2
  %151 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %150, align 8, !tbaa !48
  %152 = bitcast %struct.pb_SubTimer* %147 to i8*
  tail call void @free(i8* %152) #27
  %153 = icmp eq %struct.pb_SubTimer* %151, null
  br i1 %153, label %154, label %146, !llvm.loop !72

154:                                              ; preds = %146
  %155 = bitcast %struct.pb_SubTimerList** %138 to i8**
  %156 = load i8*, i8** %155, align 8, !tbaa !9
  br label %157

157:                                              ; preds = %141, %154
  %158 = phi i8* [ %156, %154 ], [ %142, %141 ]
  tail call void @free(i8* %158) #27
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
  tail call void @free(i8* %171) #27
  %172 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %169, i64 0, i32 2
  %173 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %172, align 8, !tbaa !48
  %174 = bitcast %struct.pb_SubTimer* %169 to i8*
  tail call void @free(i8* %174) #27
  %175 = icmp eq %struct.pb_SubTimer* %173, null
  br i1 %175, label %176, label %168, !llvm.loop !72

176:                                              ; preds = %168
  %177 = bitcast %struct.pb_SubTimerList** %160 to i8**
  %178 = load i8*, i8** %177, align 8, !tbaa !9
  br label %179

179:                                              ; preds = %163, %176
  %180 = phi i8* [ %178, %176 ], [ %164, %163 ]
  tail call void @free(i8* %180) #27
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
  tail call void @free(i8* %193) #27
  %194 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %191, i64 0, i32 2
  %195 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %194, align 8, !tbaa !48
  %196 = bitcast %struct.pb_SubTimer* %191 to i8*
  tail call void @free(i8* %196) #27
  %197 = icmp eq %struct.pb_SubTimer* %195, null
  br i1 %197, label %198, label %190, !llvm.loop !72

198:                                              ; preds = %190
  %199 = bitcast %struct.pb_SubTimerList** %182 to i8**
  %200 = load i8*, i8** %199, align 8, !tbaa !9
  br label %201

201:                                              ; preds = %185, %198
  %202 = phi i8* [ %200, %198 ], [ %186, %185 ]
  tail call void @free(i8* %202) #27
  br label %203

203:                                              ; preds = %201, %181
  ret void
}

declare dso_local i32 @hipEventDestroy(%struct.ihipEvent_t*) local_unnamed_addr #12

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #12

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #14

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #15

; Function Attrs: norecurse uwtable
define dso_local void @_Z24__device_stub__mysgemmNTPKfiS0_iPfiiff(float* %0, i32 %1, float* %2, i32 %3, float* %4, i32 %5, i32 %6, float %7, float %8) #16 {
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca %struct.dim3, align 8
  %20 = alloca %struct.dim3, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  store float* %0, float** %10, align 8, !tbaa !9
  store i32 %1, i32* %11, align 4, !tbaa !10
  store float* %2, float** %12, align 8, !tbaa !9
  store i32 %3, i32* %13, align 4, !tbaa !10
  store float* %4, float** %14, align 8, !tbaa !9
  store i32 %5, i32* %15, align 4, !tbaa !10
  store i32 %6, i32* %16, align 4, !tbaa !10
  store float %7, float* %17, align 4, !tbaa !61
  store float %8, float* %18, align 4, !tbaa !61
  %23 = alloca [9 x i8*], align 16
  %24 = getelementptr inbounds [9 x i8*], [9 x i8*]* %23, i64 0, i64 0
  %25 = bitcast [9 x i8*]* %23 to float***
  store float** %10, float*** %25, align 16
  %26 = getelementptr inbounds [9 x i8*], [9 x i8*]* %23, i64 0, i64 1
  %27 = bitcast i8** %26 to i32**
  store i32* %11, i32** %27, align 8
  %28 = getelementptr inbounds [9 x i8*], [9 x i8*]* %23, i64 0, i64 2
  %29 = bitcast i8** %28 to float***
  store float** %12, float*** %29, align 16
  %30 = getelementptr inbounds [9 x i8*], [9 x i8*]* %23, i64 0, i64 3
  %31 = bitcast i8** %30 to i32**
  store i32* %13, i32** %31, align 8
  %32 = getelementptr inbounds [9 x i8*], [9 x i8*]* %23, i64 0, i64 4
  %33 = bitcast i8** %32 to float***
  store float** %14, float*** %33, align 16
  %34 = getelementptr inbounds [9 x i8*], [9 x i8*]* %23, i64 0, i64 5
  %35 = bitcast i8** %34 to i32**
  store i32* %15, i32** %35, align 8
  %36 = getelementptr inbounds [9 x i8*], [9 x i8*]* %23, i64 0, i64 6
  %37 = bitcast i8** %36 to i32**
  store i32* %16, i32** %37, align 16
  %38 = getelementptr inbounds [9 x i8*], [9 x i8*]* %23, i64 0, i64 7
  %39 = bitcast i8** %38 to float**
  store float* %17, float** %39, align 8
  %40 = getelementptr inbounds [9 x i8*], [9 x i8*]* %23, i64 0, i64 8
  %41 = bitcast i8** %40 to float**
  store float* %18, float** %41, align 16
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
  %54 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, i32, float*, i32, float*, i32, i32, float, float)** @_Z9mysgemmNTPKfiS0_iPfiiff to i8*), i64 %47, i32 %49, i64 %51, i32 %53, i8** nonnull %24, i64 %43, %struct.ihipStream_t* %45)
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #17

; Function Attrs: uwtable
define dso_local void @_Z10basicSgemmcciiifPKfiS0_ifPfi(i8 signext %0, i8 signext %1, i32 %2, i32 %3, i32 %4, float %5, float* %6, i32 %7, float* %8, i32 %9, float %10, float* %11, i32 %12) local_unnamed_addr #18 {
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca float*, align 8
  %17 = alloca i32, align 4
  %18 = alloca float*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca %struct.dim3, align 8
  %24 = alloca %struct.dim3, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca [9 x i8*], align 16
  %28 = and i8 %0, -33
  %29 = icmp eq i8 %28, 78
  br i1 %29, label %55, label %30

30:                                               ; preds = %13
  %31 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* nonnull getelementptr inbounds ([48 x i8], [48 x i8]* @.str.23, i64 0, i64 0), i64 47)
  %32 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cerr to i8**), align 8, !tbaa !73
  %33 = getelementptr i8, i8* %32, i64 -24
  %34 = bitcast i8* %33 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cerr to i8*), i64 %35
  %37 = getelementptr inbounds i8, i8* %36, i64 240
  %38 = bitcast i8* %37 to %"class.std::ctype"**
  %39 = load %"class.std::ctype"*, %"class.std::ctype"** %38, align 8, !tbaa !75
  %40 = icmp eq %"class.std::ctype"* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  tail call void @_ZSt16__throw_bad_castv() #31
  unreachable

42:                                               ; preds = %30
  %43 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %39, i64 0, i32 8
  %44 = load i8, i8* %43, align 8, !tbaa !78
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %39, i64 0, i32 9, i64 10
  %48 = load i8, i8* %47, align 1, !tbaa !12
  br label %185

49:                                               ; preds = %42
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %39)
  %50 = bitcast %"class.std::ctype"* %39 to i8 (%"class.std::ctype"*, i8)***
  %51 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %50, align 8, !tbaa !73
  %52 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %51, i64 6
  %53 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %52, align 8
  %54 = tail call signext i8 %53(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %39, i8 signext 10)
  br label %185

55:                                               ; preds = %13
  %56 = and i8 %1, -33
  %57 = icmp eq i8 %56, 84
  br i1 %57, label %83, label %58

58:                                               ; preds = %55
  %59 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* nonnull getelementptr inbounds ([48 x i8], [48 x i8]* @.str.24, i64 0, i64 0), i64 47)
  %60 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cerr to i8**), align 8, !tbaa !73
  %61 = getelementptr i8, i8* %60, i64 -24
  %62 = bitcast i8* %61 to i64*
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cerr to i8*), i64 %63
  %65 = getelementptr inbounds i8, i8* %64, i64 240
  %66 = bitcast i8* %65 to %"class.std::ctype"**
  %67 = load %"class.std::ctype"*, %"class.std::ctype"** %66, align 8, !tbaa !75
  %68 = icmp eq %"class.std::ctype"* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  tail call void @_ZSt16__throw_bad_castv() #31
  unreachable

70:                                               ; preds = %58
  %71 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %67, i64 0, i32 8
  %72 = load i8, i8* %71, align 8, !tbaa !78
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %67, i64 0, i32 9, i64 10
  %76 = load i8, i8* %75, align 1, !tbaa !12
  br label %185

77:                                               ; preds = %70
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %67)
  %78 = bitcast %"class.std::ctype"* %67 to i8 (%"class.std::ctype"*, i8)***
  %79 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %78, align 8, !tbaa !73
  %80 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %79, i64 6
  %81 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %80, align 8
  %82 = tail call signext i8 %81(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %67, i8 signext 10)
  br label %185

83:                                               ; preds = %55
  %84 = and i32 %2, 15
  %85 = icmp eq i32 %84, 0
  %86 = and i32 %3, 15
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %85, i1 %87, i1 false
  br i1 %88, label %123, label %89

89:                                               ; preds = %83
  %90 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25, i64 0, i64 0), i64 52)
  %91 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 16)
  %92 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %91, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i64 26)
  %93 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %91, i32 16)
  %94 = bitcast %"class.std::basic_ostream"* %93 to i8**
  %95 = load i8*, i8** %94, align 8, !tbaa !73
  %96 = getelementptr i8, i8* %95, i64 -24
  %97 = bitcast i8* %96 to i64*
  %98 = load i64, i64* %97, align 8
  %99 = bitcast %"class.std::basic_ostream"* %93 to i8*
  %100 = getelementptr inbounds i8, i8* %99, i64 %98
  %101 = getelementptr inbounds i8, i8* %100, i64 240
  %102 = bitcast i8* %101 to %"class.std::ctype"**
  %103 = load %"class.std::ctype"*, %"class.std::ctype"** %102, align 8, !tbaa !75
  %104 = icmp eq %"class.std::ctype"* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %89
  tail call void @_ZSt16__throw_bad_castv() #31
  unreachable

106:                                              ; preds = %89
  %107 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %103, i64 0, i32 8
  %108 = load i8, i8* %107, align 8, !tbaa !78
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %103, i64 0, i32 9, i64 10
  %112 = load i8, i8* %111, align 1, !tbaa !12
  br label %119

113:                                              ; preds = %106
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %103)
  %114 = bitcast %"class.std::ctype"* %103 to i8 (%"class.std::ctype"*, i8)***
  %115 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %114, align 8, !tbaa !73
  %116 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %115, i64 6
  %117 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %116, align 8
  %118 = tail call signext i8 %117(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %103, i8 signext 10)
  br label %119

119:                                              ; preds = %110, %113
  %120 = phi i8 [ %112, %110 ], [ %118, %113 ]
  %121 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %93, i8 signext %120)
  %122 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %121)
  br label %123

123:                                              ; preds = %83, %119
  %124 = sdiv i32 %2, 16
  %125 = sdiv i32 %3, 16
  %126 = zext i32 %125 to i64
  %127 = shl nuw i64 %126, 32
  %128 = zext i32 %124 to i64
  %129 = or i64 %127, %128
  %130 = tail call i32 @__hipPushCallConfiguration(i64 %129, i32 1, i64 68719476752, i32 1, i64 0, %struct.ihipStream_t* null)
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %178

132:                                              ; preds = %123
  %133 = bitcast float** %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %133)
  %134 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %134)
  %135 = bitcast float** %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %135)
  %136 = bitcast i32* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %136)
  %137 = bitcast float** %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %137)
  %138 = bitcast i32* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %138)
  %139 = bitcast i32* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %139)
  %140 = bitcast float* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %140)
  %141 = bitcast float* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %141)
  %142 = bitcast %struct.dim3* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %142)
  %143 = bitcast %struct.dim3* %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %143)
  %144 = bitcast i64* %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %144)
  %145 = bitcast i8** %26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %145)
  %146 = bitcast [9 x i8*]* %27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %146)
  store float* %6, float** %14, align 8, !tbaa !9
  store i32 %7, i32* %15, align 4, !tbaa !10
  store float* %8, float** %16, align 8, !tbaa !9
  store i32 %9, i32* %17, align 4, !tbaa !10
  store float* %11, float** %18, align 8, !tbaa !9
  store i32 %12, i32* %19, align 4, !tbaa !10
  store i32 %4, i32* %20, align 4, !tbaa !10
  store float %5, float* %21, align 4, !tbaa !61
  store float %10, float* %22, align 4, !tbaa !61
  %147 = getelementptr inbounds [9 x i8*], [9 x i8*]* %27, i64 0, i64 0
  %148 = bitcast [9 x i8*]* %27 to float***
  store float** %14, float*** %148, align 16
  %149 = getelementptr inbounds [9 x i8*], [9 x i8*]* %27, i64 0, i64 1
  %150 = bitcast i8** %149 to i32**
  store i32* %15, i32** %150, align 8
  %151 = getelementptr inbounds [9 x i8*], [9 x i8*]* %27, i64 0, i64 2
  %152 = bitcast i8** %151 to float***
  store float** %16, float*** %152, align 16
  %153 = getelementptr inbounds [9 x i8*], [9 x i8*]* %27, i64 0, i64 3
  %154 = bitcast i8** %153 to i32**
  store i32* %17, i32** %154, align 8
  %155 = getelementptr inbounds [9 x i8*], [9 x i8*]* %27, i64 0, i64 4
  %156 = bitcast i8** %155 to float***
  store float** %18, float*** %156, align 16
  %157 = getelementptr inbounds [9 x i8*], [9 x i8*]* %27, i64 0, i64 5
  %158 = bitcast i8** %157 to i32**
  store i32* %19, i32** %158, align 8
  %159 = getelementptr inbounds [9 x i8*], [9 x i8*]* %27, i64 0, i64 6
  %160 = bitcast i8** %159 to i32**
  store i32* %20, i32** %160, align 16
  %161 = getelementptr inbounds [9 x i8*], [9 x i8*]* %27, i64 0, i64 7
  %162 = bitcast i8** %161 to float**
  store float* %21, float** %162, align 8
  %163 = getelementptr inbounds [9 x i8*], [9 x i8*]* %27, i64 0, i64 8
  %164 = bitcast i8** %163 to float**
  store float* %22, float** %164, align 16
  %165 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %23, %struct.dim3* nonnull %24, i64* nonnull %25, i8** nonnull %26)
  %166 = load i64, i64* %25, align 8
  %167 = bitcast i8** %26 to %struct.ihipStream_t**
  %168 = load %struct.ihipStream_t*, %struct.ihipStream_t** %167, align 8
  %169 = bitcast %struct.dim3* %23 to i64*
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.dim3, %struct.dim3* %23, i64 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = bitcast %struct.dim3* %24 to i64*
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.dim3, %struct.dim3* %24, i64 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, i32, float*, i32, float*, i32, i32, float, float)** @_Z9mysgemmNTPKfiS0_iPfiiff to i8*), i64 %170, i32 %172, i64 %174, i32 %176, i8** nonnull %147, i64 %166, %struct.ihipStream_t* %168)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %133)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %134)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %135)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %136)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %137)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %138)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %139)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %140)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %141)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %142)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %143)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %144)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %145)
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %146)
  br label %178

178:                                              ; preds = %132, %123
  %179 = call i32 @hipGetLastError()
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %189, label %181

181:                                              ; preds = %178
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %183 = call i8* @hipGetErrorString(i32 %179)
  %184 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %182, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i32 62, i8* %183) #29
  call void @exit(i32 1) #32
  unreachable

185:                                              ; preds = %77, %74, %49, %46
  %186 = phi i8 [ %48, %46 ], [ %54, %49 ], [ %76, %74 ], [ %82, %77 ]
  %187 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 signext %186)
  %188 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %187)
  br label %189

189:                                              ; preds = %185, %178
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #19

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i32) local_unnamed_addr #12

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #12

declare dso_local i32 @hipGetLastError() local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #5

declare dso_local i8* @hipGetErrorString(i32) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #20

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #16 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %struct.timeval, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pb_TimerSet, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %"class.std::vector", align 8
  %14 = alloca %"class.std::vector", align 8
  %15 = alloca %"class.std::vector", align 8
  store i32 %0, i32* %4, align 4, !tbaa !10
  %16 = bitcast %struct.pb_TimerSet* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 288, i8* nonnull %16) #27
  %17 = bitcast float** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #27
  %18 = bitcast float** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #27
  %19 = bitcast float** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #27
  %20 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #27
  %21 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #27
  %22 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #27
  %23 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #27
  %24 = bitcast %"class.std::vector"* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %24) #27
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false) #27
  %25 = bitcast %"class.std::vector"* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %25) #27
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false) #27
  %26 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #27
  %27 = call i32 @gettimeofday(%struct.timeval* nonnull %3, %struct.timezone* null) #27
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 0
  %29 = load i64, i64* %28, align 8, !tbaa !35
  %30 = mul nsw i64 %29, 1000000
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 1
  %32 = load i64, i64* %31, align 8, !tbaa !38
  %33 = add nsw i64 %30, %32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #27
  %34 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 3
  store i64 %33, i64* %34, align 8, !tbaa !41
  %35 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 0
  store i32 0, i32* %35, align 8, !tbaa !44
  %36 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 1
  store %struct.pb_async_time_marker_list* null, %struct.pb_async_time_marker_list** %36, align 8, !tbaa !45
  %37 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 0, i32 0
  store i32 0, i32* %37, align 8, !tbaa !30
  %38 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 0, i32 1
  store i64 0, i64* %38, align 8, !tbaa !34
  %39 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 5, i64 0
  %40 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 1, i32 0
  store i32 0, i32* %40, align 8, !tbaa !30
  %41 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 1, i32 1
  store i64 0, i64* %41, align 8, !tbaa !34
  %42 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 2, i32 0
  store i32 0, i32* %42, align 8, !tbaa !30
  %43 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 2, i32 1
  store i64 0, i64* %43, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 3, i32 0
  store i32 0, i32* %44, align 8, !tbaa !30
  %45 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 3, i32 1
  store i64 0, i64* %45, align 8, !tbaa !34
  %46 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 4, i32 0
  store i32 0, i32* %46, align 8, !tbaa !30
  %47 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 4, i32 1
  store i64 0, i64* %47, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 5, i32 0
  store i32 0, i32* %48, align 8, !tbaa !30
  %49 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 5, i32 1
  store i64 0, i64* %49, align 8, !tbaa !34
  %50 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 6, i32 0
  store i32 0, i32* %50, align 8, !tbaa !30
  %51 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 6, i32 1
  store i64 0, i64* %51, align 8, !tbaa !34
  %52 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 7, i32 0
  store i32 0, i32* %52, align 8, !tbaa !30
  %53 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %5, i64 0, i32 4, i64 7, i32 1
  store i64 0, i64* %53, align 8, !tbaa !34
  %54 = bitcast %struct.pb_SubTimerList** %39 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %54, i8 0, i64 64, i1 false) #27
  %55 = call %struct.pb_Parameters* @pb_ReadParameters(i32* nonnull %4, i8** %1)
  %56 = getelementptr inbounds %struct.pb_Parameters, %struct.pb_Parameters* %55, i64 0, i32 1
  %57 = load i8**, i8*** %56, align 8, !tbaa !8
  %58 = load i8*, i8** %57, align 8, !tbaa !9
  %59 = icmp eq i8* %58, null
  br i1 %59, label %72, label %60

60:                                               ; preds = %2
  %61 = getelementptr inbounds i8*, i8** %57, i64 1
  %62 = load i8*, i8** %61, align 8, !tbaa !9
  %63 = icmp eq i8* %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8*, i8** %57, i64 2
  %66 = load i8*, i8** %65, align 8, !tbaa !9
  %67 = icmp eq i8* %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds i8*, i8** %57, i64 3
  %70 = load i8*, i8** %69, align 8, !tbaa !9
  %71 = icmp eq i8* %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %68, %64, %60, %2
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %74 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %73) #29
  tail call void @exit(i32 -1) #32
  unreachable

75:                                               ; preds = %89, %81, %78, %77
  %76 = landingpad { i8*, i32 }
          cleanup
  br label %271

77:                                               ; preds = %68
  invoke void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 1)
          to label %78 unwind label %75

78:                                               ; preds = %77
  %79 = load i8*, i8** %57, align 8, !tbaa !9
  %80 = invoke zeroext i1 @_Z22readColMajorMatrixFilePKcRiS1_RSt6vectorIfSaIfEE(i8* %79, i32* nonnull align 4 dereferenceable(4) %9, i32* nonnull align 4 dereferenceable(4) %10, %"class.std::vector"* nonnull align 8 dereferenceable(24) %13)
          to label %81 unwind label %75

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4, !tbaa !10
  %83 = load i32, i32* %10, align 4, !tbaa !10
  %84 = mul nsw i32 %83, %82
  %85 = sext i32 %84 to i64
  %86 = shl nsw i64 %85, 2
  %87 = load i8*, i8** %65, align 8, !tbaa !9
  %88 = invoke zeroext i1 @_Z22readColMajorMatrixFilePKcRiS1_RSt6vectorIfSaIfEE(i8* %87, i32* nonnull align 4 dereferenceable(4) %12, i32* nonnull align 4 dereferenceable(4) %11, %"class.std::vector"* nonnull align 8 dereferenceable(24) %14)
          to label %89 unwind label %75

89:                                               ; preds = %81
  invoke void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 6)
          to label %90 unwind label %75

90:                                               ; preds = %89
  %91 = load i32, i32* %11, align 4, !tbaa !10
  %92 = load i32, i32* %12, align 4, !tbaa !10
  %93 = mul nsw i32 %92, %91
  %94 = sext i32 %93 to i64
  %95 = shl nsw i64 %94, 2
  %96 = load i32, i32* %9, align 4, !tbaa !10
  %97 = mul nsw i32 %96, %92
  %98 = sext i32 %97 to i64
  %99 = shl nsw i64 %98, 2
  %100 = bitcast %"class.std::vector"* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %100) #27
  %101 = icmp eq i32 %97, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %90
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %100, i8 0, i64 24, i1 false)
  br label %114

103:                                              ; preds = %90
  %104 = icmp slt i32 %97, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %103
  invoke void @_ZSt17__throw_bad_allocv() #31
          to label %106 unwind label %165

106:                                              ; preds = %105
  unreachable

107:                                              ; preds = %103
  %108 = invoke noalias nonnull i8* @_Znwm(i64 %99) #33
          to label %109 unwind label %165

109:                                              ; preds = %107
  %110 = bitcast i8* %108 to float*
  %111 = bitcast %"class.std::vector"* %15 to i8**
  store i8* %108, i8** %111, align 8, !tbaa !80
  %112 = getelementptr float, float* %110, i64 %98
  %113 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %15, i64 0, i32 0, i32 0, i32 2
  store float* %112, float** %113, align 8, !tbaa !83
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %108, i8 0, i64 %99, i1 false), !tbaa !61
  br label %114

114:                                              ; preds = %109, %102
  %115 = phi float* [ %110, %109 ], [ null, %102 ]
  %116 = phi i8* [ %108, %109 ], [ null, %102 ]
  %117 = phi float* [ %112, %109 ], [ null, %102 ]
  %118 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %15, i64 0, i32 0, i32 0, i32 1
  store float* %117, float** %118, align 8, !tbaa !84
  %119 = bitcast float** %6 to i8**
  %120 = invoke i32 @hipMalloc(i8** nonnull %119, i64 %86)
          to label %121 unwind label %167

121:                                              ; preds = %114
  %122 = bitcast float** %7 to i8**
  %123 = invoke i32 @hipMalloc(i8** nonnull %122, i64 %95)
          to label %124 unwind label %167

124:                                              ; preds = %121
  %125 = bitcast float** %8 to i8**
  %126 = invoke i32 @hipMalloc(i8** nonnull %125, i64 %99)
          to label %127 unwind label %167

127:                                              ; preds = %124
  invoke void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 3)
          to label %128 unwind label %167

128:                                              ; preds = %127
  %129 = load i8*, i8** %119, align 8, !tbaa !9
  %130 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %13, i64 0, i32 0, i32 0, i32 0
  %131 = bitcast %"class.std::vector"* %13 to i8**
  %132 = load i8*, i8** %131, align 8, !tbaa !9
  %133 = invoke i32 @hipMemcpy(i8* %129, i8* nonnull %132, i64 %86, i32 1)
          to label %134 unwind label %167

134:                                              ; preds = %128
  %135 = load i8*, i8** %122, align 8, !tbaa !9
  %136 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %14, i64 0, i32 0, i32 0, i32 0
  %137 = bitcast %"class.std::vector"* %14 to i8**
  %138 = load i8*, i8** %137, align 8, !tbaa !9
  %139 = invoke i32 @hipMemcpy(i8* %135, i8* nonnull %138, i64 %95, i32 1)
          to label %140 unwind label %167

140:                                              ; preds = %134
  %141 = invoke i32 @hipDeviceSynchronize()
          to label %142 unwind label %167

142:                                              ; preds = %140
  invoke void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 2)
          to label %143 unwind label %167

143:                                              ; preds = %142
  %144 = load i32, i32* %9, align 4, !tbaa !10
  %145 = load i32, i32* %12, align 4, !tbaa !10
  %146 = load i32, i32* %10, align 4, !tbaa !10
  %147 = load float*, float** %6, align 8, !tbaa !9
  %148 = load float*, float** %7, align 8, !tbaa !9
  %149 = load float*, float** %8, align 8, !tbaa !9
  invoke void @_Z10basicSgemmcciiifPKfiS0_ifPfi(i8 signext 78, i8 signext 84, i32 %144, i32 %145, i32 %146, float 1.000000e+00, float* %147, i32 %144, float* %148, i32 %145, float 0.000000e+00, float* %149, i32 %144)
          to label %150 unwind label %167

150:                                              ; preds = %143
  %151 = invoke i32 @hipDeviceSynchronize()
          to label %152 unwind label %167

152:                                              ; preds = %150
  %153 = getelementptr inbounds %struct.pb_Parameters, %struct.pb_Parameters* %55, i64 0, i32 0
  %154 = load i8*, i8** %153, align 8, !tbaa !3
  %155 = icmp eq i8* %154, null
  br i1 %155, label %169, label %156

156:                                              ; preds = %152
  invoke void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 3)
          to label %157 unwind label %167

157:                                              ; preds = %156
  %158 = load i8*, i8** %125, align 8, !tbaa !9
  %159 = invoke i32 @hipMemcpy(i8* nonnull %116, i8* %158, i64 %99, i32 2)
          to label %160 unwind label %167

160:                                              ; preds = %157
  invoke void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 1)
          to label %161 unwind label %167

161:                                              ; preds = %160
  %162 = load i32, i32* %9, align 4, !tbaa !10
  %163 = load i32, i32* %12, align 4, !tbaa !10
  %164 = invoke zeroext i1 @_Z23writeColMajorMatrixFilePKciiRSt6vectorIfSaIfEE(i8* nonnull %154, i32 %162, i32 %163, %"class.std::vector"* nonnull align 8 dereferenceable(24) %15)
          to label %169 unwind label %167

165:                                              ; preds = %107, %105
  %166 = landingpad { i8*, i32 }
          cleanup
  br label %269

167:                                              ; preds = %169, %161, %160, %157, %156, %150, %143, %142, %140, %134, %128, %127, %124, %121, %114
  %168 = landingpad { i8*, i32 }
          cleanup
  br label %264

169:                                              ; preds = %161, %152
  invoke void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 0)
          to label %170 unwind label %167

170:                                              ; preds = %169
  %171 = load i32, i32* %42, align 8, !tbaa !30
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %170
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %175 = call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %174) #28
  br label %176

176:                                              ; preds = %173, %170
  %177 = load i64, i64* %43, align 8, !tbaa !34
  %178 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i64 9)
          to label %179 unwind label %262

179:                                              ; preds = %176
  %180 = uitofp i64 %177 to double
  %181 = fdiv contract double %180, 1.000000e+06
  %182 = load i32, i32* %9, align 4, !tbaa !10
  %183 = sitofp i32 %182 to double
  %184 = fmul contract double %183, 2.000000e+00
  %185 = load i32, i32* %12, align 4, !tbaa !10
  %186 = sitofp i32 %185 to double
  %187 = fmul contract double %184, %186
  %188 = load i32, i32* %10, align 4, !tbaa !10
  %189 = sitofp i32 %188 to double
  %190 = fmul contract double %187, %189
  %191 = fdiv contract double %190, %181
  %192 = fdiv contract double %191, 1.000000e+09
  %193 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, double %192)
          to label %194 unwind label %262

194:                                              ; preds = %179
  %195 = bitcast %"class.std::basic_ostream"* %193 to i8**
  %196 = load i8*, i8** %195, align 8, !tbaa !73
  %197 = getelementptr i8, i8* %196, i64 -24
  %198 = bitcast i8* %197 to i64*
  %199 = load i64, i64* %198, align 8
  %200 = bitcast %"class.std::basic_ostream"* %193 to i8*
  %201 = getelementptr inbounds i8, i8* %200, i64 %199
  %202 = getelementptr inbounds i8, i8* %201, i64 240
  %203 = bitcast i8* %202 to %"class.std::ctype"**
  %204 = load %"class.std::ctype"*, %"class.std::ctype"** %203, align 8, !tbaa !75
  %205 = icmp eq %"class.std::ctype"* %204, null
  br i1 %205, label %206, label %208

206:                                              ; preds = %194
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %207 unwind label %262

207:                                              ; preds = %206
  unreachable

208:                                              ; preds = %194
  %209 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %204, i64 0, i32 8
  %210 = load i8, i8* %209, align 8, !tbaa !78
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %208
  %213 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %204, i64 0, i32 9, i64 10
  %214 = load i8, i8* %213, align 1, !tbaa !12
  br label %222

215:                                              ; preds = %208
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %204)
          to label %216 unwind label %262

216:                                              ; preds = %215
  %217 = bitcast %"class.std::ctype"* %204 to i8 (%"class.std::ctype"*, i8)***
  %218 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %217, align 8, !tbaa !73
  %219 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %218, i64 6
  %220 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %219, align 8
  %221 = invoke signext i8 %220(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %204, i8 signext 10)
          to label %222 unwind label %262

222:                                              ; preds = %216, %212
  %223 = phi i8 [ %214, %212 ], [ %221, %216 ]
  %224 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %193, i8 signext %223)
          to label %225 unwind label %262

225:                                              ; preds = %222
  %226 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %224)
          to label %227 unwind label %262

227:                                              ; preds = %225
  call void @pb_PrintTimerSet(%struct.pb_TimerSet* nonnull %5)
  call void @free(i8* %154) #27
  %228 = load i8*, i8** %57, align 8, !tbaa !9
  %229 = icmp eq i8* %228, null
  br i1 %229, label %236, label %230

230:                                              ; preds = %227, %230
  %231 = phi i8* [ %234, %230 ], [ %228, %227 ]
  %232 = phi i8** [ %233, %230 ], [ %57, %227 ]
  call void @free(i8* nonnull %231) #27
  %233 = getelementptr inbounds i8*, i8** %232, i64 1
  %234 = load i8*, i8** %233, align 8, !tbaa !9
  %235 = icmp eq i8* %234, null
  br i1 %235, label %236, label %230, !llvm.loop !28

236:                                              ; preds = %230, %227
  %237 = bitcast i8** %57 to i8*
  call void @free(i8* %237) #27
  %238 = bitcast %struct.pb_Parameters* %55 to i8*
  call void @free(i8* %238) #27
  %239 = load i8*, i8** %119, align 8, !tbaa !9
  %240 = invoke i32 @hipFree(i8* %239)
          to label %241 unwind label %262

241:                                              ; preds = %236
  %242 = load i8*, i8** %122, align 8, !tbaa !9
  %243 = invoke i32 @hipFree(i8* %242)
          to label %244 unwind label %262

244:                                              ; preds = %241
  %245 = load i8*, i8** %125, align 8, !tbaa !9
  %246 = invoke i32 @hipFree(i8* %245)
          to label %247 unwind label %262

247:                                              ; preds = %244
  %248 = icmp eq float* %115, null
  br i1 %248, label %251, label %249

249:                                              ; preds = %247
  %250 = bitcast float* %115 to i8*
  call void @_ZdlPv(i8* nonnull %250) #27
  br label %251

251:                                              ; preds = %247, %249
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %100) #27
  %252 = load float*, float** %136, align 8, !tbaa !80
  %253 = icmp eq float* %252, null
  br i1 %253, label %256, label %254

254:                                              ; preds = %251
  %255 = bitcast float* %252 to i8*
  call void @_ZdlPv(i8* nonnull %255) #27
  br label %256

256:                                              ; preds = %251, %254
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %25) #27
  %257 = load float*, float** %130, align 8, !tbaa !80
  %258 = icmp eq float* %257, null
  br i1 %258, label %261, label %259

259:                                              ; preds = %256
  %260 = bitcast float* %257 to i8*
  call void @_ZdlPv(i8* nonnull %260) #27
  br label %261

261:                                              ; preds = %256, %259
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %24) #27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #27
  call void @llvm.lifetime.end.p0i8(i64 288, i8* nonnull %16) #27
  ret i32 0

262:                                              ; preds = %225, %222, %216, %215, %206, %179, %176, %244, %241, %236
  %263 = landingpad { i8*, i32 }
          cleanup
  br label %264

264:                                              ; preds = %262, %167
  %265 = phi { i8*, i32 } [ %263, %262 ], [ %168, %167 ]
  %266 = icmp eq float* %115, null
  br i1 %266, label %269, label %267

267:                                              ; preds = %264
  %268 = bitcast float* %115 to i8*
  call void @_ZdlPv(i8* nonnull %268) #27
  br label %269

269:                                              ; preds = %267, %264, %165
  %270 = phi { i8*, i32 } [ %166, %165 ], [ %265, %264 ], [ %265, %267 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %100) #27
  br label %271

271:                                              ; preds = %269, %75
  %272 = phi { i8*, i32 } [ %270, %269 ], [ %76, %75 ]
  %273 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %14, i64 0, i32 0, i32 0, i32 0
  %274 = load float*, float** %273, align 8, !tbaa !80
  %275 = icmp eq float* %274, null
  br i1 %275, label %278, label %276

276:                                              ; preds = %271
  %277 = bitcast float* %274 to i8*
  call void @_ZdlPv(i8* nonnull %277) #27
  br label %278

278:                                              ; preds = %271, %276
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %25) #27
  %279 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %13, i64 0, i32 0, i32 0, i32 0
  %280 = load float*, float** %279, align 8, !tbaa !80
  %281 = icmp eq float* %280, null
  br i1 %281, label %284, label %282

282:                                              ; preds = %278
  %283 = bitcast float* %280 to i8*
  call void @_ZdlPv(i8* nonnull %283) #27
  br label %284

284:                                              ; preds = %278, %282
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %24) #27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #27
  call void @llvm.lifetime.end.p0i8(i64 288, i8* nonnull %16) #27
  resume { i8*, i32 } %272
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: uwtable
define dso_local zeroext i1 @_Z22readColMajorMatrixFilePKcRiS1_RSt6vectorIfSaIfEE(i8* %0, i32* nonnull align 4 dereferenceable(4) %1, i32* nonnull align 4 dereferenceable(4) %2, %"class.std::vector"* nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #18 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = alloca %"class.std::basic_fstream", align 8
  %6 = alloca float, align 4
  %7 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i64 13)
  %8 = icmp eq i8* %0, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cerr to i8**), align 8, !tbaa !73
  %11 = getelementptr i8, i8* %10, i64 -24
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cerr to i8*), i64 %13
  %15 = bitcast i8* %14 to %"class.std::basic_ios"*
  %16 = getelementptr inbounds i8, i8* %14, i64 32
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 8, !tbaa !85
  %19 = or i32 %18, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %15, i32 %19)
  br label %23

20:                                               ; preds = %4
  %21 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #27
  %22 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* nonnull %0, i64 %21)
  br label %23

23:                                               ; preds = %9, %20
  %24 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cerr to i8**), align 8, !tbaa !73
  %25 = getelementptr i8, i8* %24, i64 -24
  %26 = bitcast i8* %25 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cerr to i8*), i64 %27
  %29 = getelementptr inbounds i8, i8* %28, i64 240
  %30 = bitcast i8* %29 to %"class.std::ctype"**
  %31 = load %"class.std::ctype"*, %"class.std::ctype"** %30, align 8, !tbaa !75
  %32 = icmp eq %"class.std::ctype"* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  tail call void @_ZSt16__throw_bad_castv() #31
  unreachable

34:                                               ; preds = %23
  %35 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %31, i64 0, i32 8
  %36 = load i8, i8* %35, align 8, !tbaa !78
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %31, i64 0, i32 9, i64 10
  %40 = load i8, i8* %39, align 1, !tbaa !12
  br label %47

41:                                               ; preds = %34
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %31)
  %42 = bitcast %"class.std::ctype"* %31 to i8 (%"class.std::ctype"*, i8)***
  %43 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %42, align 8, !tbaa !73
  %44 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %43, i64 6
  %45 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %44, align 8
  %46 = tail call signext i8 %45(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %31, i8 signext 10)
  br label %47

47:                                               ; preds = %38, %41
  %48 = phi i8 [ %40, %38 ], [ %46, %41 ]
  %49 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 signext %48)
  %50 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %49)
  %51 = bitcast %"class.std::basic_fstream"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 528, i8* nonnull %51) #27
  call void @_ZNSt13basic_fstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_fstream"* nonnull align 8 dereferenceable(264) %5, i8* %0, i32 8)
  %52 = bitcast %"class.std::basic_fstream"* %5 to i8**
  %53 = load i8*, i8** %52, align 8, !tbaa !73
  %54 = getelementptr i8, i8* %53, i64 -24
  %55 = bitcast i8* %54 to i64*
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i8, i8* %51, i64 %56
  %58 = getelementptr inbounds i8, i8* %57, i64 32
  %59 = bitcast i8* %58 to i32*
  %60 = load i32, i32* %59, align 8, !tbaa !85
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %47
  call void @_ZNSt13basic_fstreamIcSt11char_traitsIcEED2Ev(%"class.std::basic_fstream"* nonnull align 8 dereferenceable(264) %5, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTSt13basic_fstreamIcSt11char_traitsIcEE, i64 0, i64 0)) #27
  %63 = getelementptr inbounds %"class.std::basic_fstream", %"class.std::basic_fstream"* %5, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %63) #27
  call void @llvm.lifetime.end.p0i8(i64 528, i8* nonnull %51) #27
  ret i1 false

64:                                               ; preds = %69, %66
  %65 = landingpad { i8*, i32 }
          cleanup
  br label %104

66:                                               ; preds = %47
  %67 = bitcast %"class.std::basic_fstream"* %5 to %"class.std::basic_istream"*
  %68 = invoke nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* nonnull align 8 dereferenceable(16) %67, i32* nonnull align 4 dereferenceable(4) %1)
          to label %69 unwind label %64

69:                                               ; preds = %66
  %70 = invoke nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* nonnull align 8 dereferenceable(16) %67, i32* nonnull align 4 dereferenceable(4) %2)
          to label %71 unwind label %64

71:                                               ; preds = %69
  %72 = bitcast float* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %72) #27
  %73 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0), i64 18)
          to label %74 unwind label %100

74:                                               ; preds = %71
  %75 = load i32, i32* %1, align 4, !tbaa !10
  %76 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 %75)
          to label %77 unwind label %100

77:                                               ; preds = %74
  %78 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %76, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i64 1)
          to label %79 unwind label %100

79:                                               ; preds = %77
  %80 = load i32, i32* %2, align 4, !tbaa !10
  %81 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %76, i32 %80)
          to label %82 unwind label %100

82:                                               ; preds = %79
  %83 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %81)
          to label %84 unwind label %100

84:                                               ; preds = %82
  %85 = getelementptr inbounds %"class.std::basic_fstream", %"class.std::basic_fstream"* %5, i64 0, i32 1, i32 0, i32 1
  %86 = bitcast i8** %85 to i8*
  br label %87

87:                                               ; preds = %84, %97
  %88 = load i8*, i8** %52, align 8, !tbaa !73
  %89 = getelementptr i8, i8* %88, i64 -24
  %90 = bitcast i8* %89 to i64*
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i8, i8* %86, i64 %91
  %93 = bitcast i8* %92 to i32*
  %94 = load i32, i32* %93, align 8, !tbaa !85
  %95 = icmp eq i32 %94, 0
  call void @llvm.assume(i1 %95)
  %96 = invoke nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSi10_M_extractIfEERSiRT_(%"class.std::basic_istream"* nonnull align 8 dereferenceable(16) %67, float* nonnull align 4 dereferenceable(4) %6)
          to label %97 unwind label %98

97:                                               ; preds = %87
  invoke void @_ZNSt6vectorIfSaIfEE9push_backERKf(%"class.std::vector"* nonnull align 8 dereferenceable(24) %3, float* nonnull align 4 dereferenceable(4) %6)
          to label %87 unwind label %98, !llvm.loop !91

98:                                               ; preds = %97, %87
  %99 = landingpad { i8*, i32 }
          cleanup
  br label %102

100:                                              ; preds = %74, %79, %71, %77, %82
  %101 = landingpad { i8*, i32 }
          cleanup
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi { i8*, i32 } [ %99, %98 ], [ %101, %100 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %72) #27
  br label %104

104:                                              ; preds = %102, %64
  %105 = phi { i8*, i32 } [ %103, %102 ], [ %65, %64 ]
  call void @_ZNSt13basic_fstreamIcSt11char_traitsIcEED2Ev(%"class.std::basic_fstream"* nonnull align 8 dereferenceable(264) %5, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTSt13basic_fstreamIcSt11char_traitsIcEE, i64 0, i64 0)) #27
  %106 = getelementptr inbounds %"class.std::basic_fstream", %"class.std::basic_fstream"* %5, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %106) #27
  call void @llvm.lifetime.end.p0i8(i64 528, i8* nonnull %51) #27
  resume { i8*, i32 } %105
}

declare dso_local i32 @hipMalloc(i8**, i64) local_unnamed_addr #12

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #12

declare dso_local i32 @hipDeviceSynchronize() local_unnamed_addr #12

; Function Attrs: uwtable
define dso_local zeroext i1 @_Z23writeColMajorMatrixFilePKciiRSt6vectorIfSaIfEE(i8* %0, i32 %1, i32 %2, %"class.std::vector"* nocapture nonnull readonly align 8 dereferenceable(24) %3) local_unnamed_addr #18 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = alloca i8, align 1
  %6 = alloca %"class.std::basic_fstream", align 8
  %7 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i64 13)
  %8 = icmp eq i8* %0, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cerr to i8**), align 8, !tbaa !73
  %11 = getelementptr i8, i8* %10, i64 -24
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cerr to i8*), i64 %13
  %15 = bitcast i8* %14 to %"class.std::basic_ios"*
  %16 = getelementptr inbounds i8, i8* %14, i64 32
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 8, !tbaa !85
  %19 = or i32 %18, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %15, i32 %19)
  br label %23

20:                                               ; preds = %4
  %21 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #27
  %22 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* nonnull %0, i64 %21)
  br label %23

23:                                               ; preds = %9, %20
  %24 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i64 11)
  %25 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cerr to i8**), align 8, !tbaa !73
  %26 = getelementptr i8, i8* %25, i64 -24
  %27 = bitcast i8* %26 to i64*
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cerr to i8*), i64 %28
  %30 = getelementptr inbounds i8, i8* %29, i64 240
  %31 = bitcast i8* %30 to %"class.std::ctype"**
  %32 = load %"class.std::ctype"*, %"class.std::ctype"** %31, align 8, !tbaa !75
  %33 = icmp eq %"class.std::ctype"* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  tail call void @_ZSt16__throw_bad_castv() #31
  unreachable

35:                                               ; preds = %23
  %36 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %32, i64 0, i32 8
  %37 = load i8, i8* %36, align 8, !tbaa !78
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %32, i64 0, i32 9, i64 10
  %41 = load i8, i8* %40, align 1, !tbaa !12
  br label %48

42:                                               ; preds = %35
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %32)
  %43 = bitcast %"class.std::ctype"* %32 to i8 (%"class.std::ctype"*, i8)***
  %44 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %43, align 8, !tbaa !73
  %45 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %44, i64 6
  %46 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %45, align 8
  %47 = tail call signext i8 %46(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %32, i8 signext 10)
  br label %48

48:                                               ; preds = %39, %42
  %49 = phi i8 [ %41, %39 ], [ %47, %42 ]
  %50 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 signext %49)
  %51 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %50)
  %52 = bitcast %"class.std::basic_fstream"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 528, i8* nonnull %52) #27
  call void @_ZNSt13basic_fstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_fstream"* nonnull align 8 dereferenceable(264) %6, i8* %0, i32 16)
  %53 = bitcast %"class.std::basic_fstream"* %6 to i8**
  %54 = load i8*, i8** %53, align 8, !tbaa !73
  %55 = getelementptr i8, i8* %54, i64 -24
  %56 = bitcast i8* %55 to i64*
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i8, i8* %52, i64 %57
  %59 = getelementptr inbounds i8, i8* %58, i64 32
  %60 = bitcast i8* %59 to i32*
  %61 = load i32, i32* %60, align 8, !tbaa !85
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %146

63:                                               ; preds = %73, %69, %71, %65
  %64 = landingpad { i8*, i32 }
          cleanup
  br label %148

65:                                               ; preds = %48
  %66 = getelementptr inbounds %"class.std::basic_fstream", %"class.std::basic_fstream"* %6, i64 0, i32 0, i32 1
  %67 = bitcast %"class.std::basic_ostream.base"* %66 to %"class.std::basic_ostream"*
  %68 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %67, i32 %1)
          to label %69 unwind label %63

69:                                               ; preds = %65
  %70 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %68, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i64 1)
          to label %71 unwind label %63

71:                                               ; preds = %69
  %72 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %68, i32 %2)
          to label %73 unwind label %63

73:                                               ; preds = %71
  %74 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %72, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i64 1)
          to label %75 unwind label %63

75:                                               ; preds = %73
  %76 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0), i64 18)
          to label %77 unwind label %124

77:                                               ; preds = %75
  %78 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 %1)
          to label %79 unwind label %124

79:                                               ; preds = %77
  %80 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %78, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i64 1)
          to label %81 unwind label %124

81:                                               ; preds = %79
  %82 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %78, i32 %2)
          to label %83 unwind label %124

83:                                               ; preds = %81
  %84 = bitcast %"class.std::basic_ostream"* %82 to i8**
  %85 = load i8*, i8** %84, align 8, !tbaa !73
  %86 = getelementptr i8, i8* %85, i64 -24
  %87 = bitcast i8* %86 to i64*
  %88 = load i64, i64* %87, align 8
  %89 = bitcast %"class.std::basic_ostream"* %82 to i8*
  %90 = getelementptr inbounds i8, i8* %89, i64 %88
  %91 = getelementptr inbounds i8, i8* %90, i64 240
  %92 = bitcast i8* %91 to %"class.std::ctype"**
  %93 = load %"class.std::ctype"*, %"class.std::ctype"** %92, align 8, !tbaa !75
  %94 = icmp eq %"class.std::ctype"* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %83
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %96 unwind label %124

96:                                               ; preds = %95
  unreachable

97:                                               ; preds = %83
  %98 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %93, i64 0, i32 8
  %99 = load i8, i8* %98, align 8, !tbaa !78
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %93, i64 0, i32 9, i64 10
  %103 = load i8, i8* %102, align 1, !tbaa !12
  br label %111

104:                                              ; preds = %97
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %93)
          to label %105 unwind label %124

105:                                              ; preds = %104
  %106 = bitcast %"class.std::ctype"* %93 to i8 (%"class.std::ctype"*, i8)***
  %107 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %106, align 8, !tbaa !73
  %108 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %107, i64 6
  %109 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %108, align 8
  %110 = invoke signext i8 %109(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %93, i8 signext 10)
          to label %111 unwind label %124

111:                                              ; preds = %105, %101
  %112 = phi i8 [ %103, %101 ], [ %110, %105 ]
  %113 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %82, i8 signext %112)
          to label %114 unwind label %124

114:                                              ; preds = %111
  %115 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %113)
          to label %116 unwind label %124

116:                                              ; preds = %114
  %117 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %3, i64 0, i32 0, i32 0, i32 1
  %118 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %3, i64 0, i32 0, i32 0, i32 0
  %119 = load float*, float** %117, align 8, !tbaa !84
  %120 = load float*, float** %118, align 8, !tbaa !80
  %121 = icmp eq float* %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %135, %116
  %123 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %67, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), i64 1)
          to label %146 unwind label %124

124:                                              ; preds = %114, %111, %105, %104, %95, %122, %79, %75, %81, %77
  %125 = landingpad { i8*, i32 }
          cleanup
  br label %148

126:                                              ; preds = %116, %135
  %127 = phi i64 [ %136, %135 ], [ 0, %116 ]
  %128 = phi float* [ %138, %135 ], [ %120, %116 ]
  %129 = getelementptr inbounds float, float* %128, i64 %127
  %130 = load float, float* %129, align 4, !tbaa !61
  %131 = fpext float %130 to double
  %132 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %67, double %131)
          to label %133 unwind label %144

133:                                              ; preds = %126
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5)
  store i8 32, i8* %5, align 1, !tbaa !12
  %134 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %132, i8* nonnull %5, i64 1)
          to label %135 unwind label %144

135:                                              ; preds = %133
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5)
  %136 = add nuw i64 %127, 1
  %137 = load float*, float** %117, align 8, !tbaa !84
  %138 = load float*, float** %118, align 8, !tbaa !80
  %139 = ptrtoint float* %137 to i64
  %140 = ptrtoint float* %138 to i64
  %141 = sub i64 %139, %140
  %142 = ashr exact i64 %141, 2
  %143 = icmp ugt i64 %142, %136
  br i1 %143, label %126, label %122, !llvm.loop !92

144:                                              ; preds = %133, %126
  %145 = landingpad { i8*, i32 }
          cleanup
  br label %148

146:                                              ; preds = %122, %48
  call void @_ZNSt13basic_fstreamIcSt11char_traitsIcEED2Ev(%"class.std::basic_fstream"* nonnull align 8 dereferenceable(264) %6, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTSt13basic_fstreamIcSt11char_traitsIcEE, i64 0, i64 0)) #27
  %147 = getelementptr inbounds %"class.std::basic_fstream", %"class.std::basic_fstream"* %6, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %147) #27
  call void @llvm.lifetime.end.p0i8(i64 528, i8* nonnull %52) #27
  ret i1 %62

148:                                              ; preds = %124, %144, %63
  %149 = phi { i8*, i32 } [ %64, %63 ], [ %145, %144 ], [ %125, %124 ]
  call void @_ZNSt13basic_fstreamIcSt11char_traitsIcEED2Ev(%"class.std::basic_fstream"* nonnull align 8 dereferenceable(264) %6, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTSt13basic_fstreamIcSt11char_traitsIcEE, i64 0, i64 0)) #27
  %150 = getelementptr inbounds %"class.std::basic_fstream", %"class.std::basic_fstream"* %6, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %150) #27
  call void @llvm.lifetime.end.p0i8(i64 528, i8* nonnull %52) #27
  resume { i8*, i32 } %149
}

declare dso_local i32 @hipFree(i8*) local_unnamed_addr #12

; Function Attrs: uwtable
declare dso_local void @_ZNSt13basic_fstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(%"class.std::basic_fstream"* nonnull align 8 dereferenceable(264), i8*, i32) unnamed_addr #18 align 2

declare dso_local nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* nonnull align 8 dereferenceable(16), i32* nonnull align 4 dereferenceable(4)) local_unnamed_addr #12

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIfSaIfEE9push_backERKf(%"class.std::vector"* nonnull align 8 dereferenceable(24) %0, float* nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #18 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %3 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 1
  %4 = load float*, float** %3, align 8, !tbaa !84
  %5 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 2
  %6 = load float*, float** %5, align 8, !tbaa !83
  %7 = icmp eq float* %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load float, float* %1, align 4, !tbaa !61
  store float %9, float* %4, align 4, !tbaa !61
  %10 = getelementptr inbounds float, float* %4, i64 1
  store float* %10, float** %3, align 8, !tbaa !84
  br label %62

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0
  %13 = load float*, float** %12, align 8, !tbaa !80
  %14 = ptrtoint float* %4 to i64
  %15 = ptrtoint float* %13 to i64
  %16 = sub i64 %14, %15
  %17 = ashr exact i64 %16, 2
  %18 = icmp eq i64 %16, 0
  %19 = select i1 %18, i64 1, i64 %17
  %20 = add nsw i64 %19, %17
  %21 = icmp ult i64 %20, %17
  %22 = icmp ugt i64 %20, 4611686018427387903
  %23 = or i1 %21, %22
  %24 = select i1 %23, i64 4611686018427387903, i64 %20
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %11
  %27 = shl nuw i64 %24, 2
  %28 = tail call noalias nonnull i8* @_Znwm(i64 %27) #33
  %29 = bitcast i8* %28 to float*
  %30 = load float*, float** %12, align 8, !tbaa !80
  %31 = ptrtoint float* %30 to i64
  %32 = sub i64 %14, %31
  br label %33

33:                                               ; preds = %26, %11
  %34 = phi i64 [ %32, %26 ], [ %16, %11 ]
  %35 = phi float* [ %30, %26 ], [ %13, %11 ]
  %36 = phi float* [ %29, %26 ], [ null, %11 ]
  %37 = getelementptr inbounds float, float* %36, i64 %17
  %38 = load float, float* %1, align 4, !tbaa !61
  store float %38, float* %37, align 4, !tbaa !61
  %39 = icmp eq i64 %34, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = bitcast float* %36 to i8*
  %42 = bitcast float* %35 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 %34, i1 false) #27
  br label %43

43:                                               ; preds = %40, %33
  %44 = ashr exact i64 %34, 2
  %45 = getelementptr inbounds float, float* %36, i64 %44
  %46 = getelementptr inbounds float, float* %45, i64 1
  %47 = load float*, float** %3, align 8, !tbaa !84
  %48 = ptrtoint float* %47 to i64
  %49 = sub i64 %48, %14
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = bitcast float* %46 to i8*
  %53 = bitcast float* %4 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 4 %52, i8* align 4 %53, i64 %49, i1 false) #27
  br label %54

54:                                               ; preds = %51, %43
  %55 = icmp eq float* %35, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %54
  %57 = bitcast float* %35 to i8*
  tail call void @_ZdlPv(i8* nonnull %57) #27
  br label %58

58:                                               ; preds = %54, %56
  %59 = ashr exact i64 %49, 2
  %60 = getelementptr inbounds float, float* %46, i64 %59
  store float* %36, float** %12, align 8, !tbaa !80
  store float* %60, float** %3, align 8, !tbaa !84
  %61 = getelementptr inbounds float, float* %36, i64 %24
  store float* %61, float** %5, align 8, !tbaa !83
  br label %62

62:                                               ; preds = %58, %8
  ret void
}

declare dso_local i32 @hipEventCreate(%struct.ihipEvent_t**) local_unnamed_addr #12

declare dso_local i32 @hipEventRecord(%struct.ihipEvent_t*, %struct.ihipStream_t*) local_unnamed_addr #12

declare dso_local i32 @hipEventElapsedTime(float*, %struct.ihipEvent_t*, %struct.ihipEvent_t*) local_unnamed_addr #12

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #12

declare dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264), i32) local_unnamed_addr #12

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8 signext) local_unnamed_addr #12

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #12

; Function Attrs: noreturn
declare dso_local void @_ZSt16__throw_bad_castv() local_unnamed_addr #21

declare dso_local void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570)) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) local_unnamed_addr #22

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() local_unnamed_addr #21

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) local_unnamed_addr #23

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), double) local_unnamed_addr #12

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216)) unnamed_addr #14

; Function Attrs: nounwind uwtable
declare dso_local void @_ZNSt13basic_fstreamIcSt11char_traitsIcEED2Ev(%"class.std::basic_fstream"* nonnull align 8 dereferenceable(264), i8**) unnamed_addr #24 align 2

declare dso_local nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSi10_M_extractIfEERSiRT_(%"class.std::basic_istream"* nonnull align 8 dereferenceable(16), float* nonnull align 4 dereferenceable(4)) local_unnamed_addr #12

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #17

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_sgemm.cpp() #18 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #27
  ret void
}

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
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (float*, i32, float*, i32, float*, i32, i32, float, float)** @_Z9mysgemmNTPKfiS0_iPfiiff to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #15

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strcpy(i8* noalias returned writeonly, i8* noalias nocapture readonly) local_unnamed_addr #25

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #26

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
attributes #14 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #18 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { argmemonly nofree nounwind willreturn }
attributes #26 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #27 = { nounwind }
attributes #28 = { cold nounwind }
attributes #29 = { cold }
attributes #30 = { nounwind readonly willreturn }
attributes #31 = { noreturn }
attributes #32 = { noreturn nounwind }
attributes #33 = { allocsize(0) }

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
!74 = !{!"vtable pointer", !7, i64 0}
!75 = !{!76, !5, i64 240}
!76 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !5, i64 216, !6, i64 224, !77, i64 225, !5, i64 232, !5, i64 240, !5, i64 248, !5, i64 256}
!77 = !{!"bool", !6, i64 0}
!78 = !{!79, !6, i64 56}
!79 = !{!"_ZTSSt5ctypeIcE", !5, i64 16, !77, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!80 = !{!81, !5, i64 0}
!81 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !82, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !5, i64 0, !5, i64 8, !5, i64 16}
!83 = !{!81, !5, i64 16}
!84 = !{!81, !5, i64 8}
!85 = !{!86, !88, i64 32}
!86 = !{!"_ZTSSt8ios_base", !37, i64 8, !37, i64 16, !87, i64 24, !88, i64 28, !88, i64 32, !5, i64 40, !89, i64 48, !6, i64 64, !11, i64 192, !5, i64 200, !90, i64 208}
!87 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!88 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!89 = !{!"_ZTSNSt8ios_base6_WordsE", !5, i64 0, !37, i64 8}
!90 = !{!"_ZTSSt6locale", !5, i64 0}
!91 = distinct !{!91, !14}
!92 = distinct !{!92, !14}
