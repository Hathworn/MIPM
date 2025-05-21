; ModuleID = 'cutcp.cpp'
source_filename = "cutcp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.HIP_vector_type = type { %struct.HIP_vector_base }
%struct.HIP_vector_base = type { %union.anon }
%union.anon = type { %"struct.HIP_vector_base<int, 3>::Native_vec_" }
%"struct.HIP_vector_base<int, 3>::Native_vec_" = type { [3 x i32] }
%struct.HIP_vector_type.0 = type { %struct.HIP_vector_base.1 }
%struct.HIP_vector_base.1 = type { %union.anon.2 }
%union.anon.2 = type { <4 x float> }
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
%struct.Atoms_t = type { %struct.Atom_t*, i32 }
%struct.Atom_t = type { float, float, float, float }
%struct.Vec3_t = type { float, float, float }
%struct.LatticeDim_t = type { i32, i32, i32, %struct.Vec3_t, float }
%struct.Lattice_t = type { %struct.LatticeDim_t, float* }
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
@.str.23 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"can't open file \22%s\22 for reading\0A\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"can't allocate memory\0A\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"ATOM  \00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"HETATM\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"can't allocate more memory\0A\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"%*s %*d %*s %*s %*d %f %f %f %f\00", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"atom record %d does not have expected format\0A\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"did not find EOF\0A\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"can't close file\0A\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"error appending to file %s..\0A\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"%d  %.3f\0A\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@NbrListLen = internal global i32 undef, align 4
@NbrList = internal global [1331 x %struct.HIP_vector_type] undef, align 16
@.str.37 = private unnamed_addr constant [24 x i8] c"must have cutoff <= %f\0A\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"must have h <= %f\0A\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"exceeded space for storing extra atoms\0A\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"number of atoms = %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"lattice spacing = %g\0A\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"cutoff distance = %g\0A\00", align 1
@.str.44 = private unnamed_addr constant [41 x i8] c"requested lattice dimensions = %d %d %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [39 x i8] c"requested space dimensions = %g %g %g\0A\00", align 1
@.str.46 = private unnamed_addr constant [40 x i8] c"expanded lattice dimensions = %d %d %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [38 x i8] c"expanded space dimensions = %g %g %g\0A\00", align 1
@.str.48 = private unnamed_addr constant [39 x i8] c"number of bytes for lattice data = %u\0A\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"bin padding thickness = %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"bin cover dimensions = %d %d %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [32 x i8] c"bin full dimensions = %d %d %d\0A\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"number of bins = %d\0A\00", align 1
@.str.53 = private unnamed_addr constant [33 x i8] c"total number of atom slots = %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"%% overhead space = %g\0A\00", align 1
@.str.55 = private unnamed_addr constant [35 x i8] c"number of bytes for bin data = %u\0A\00", align 1
@.str.57 = private unnamed_addr constant [40 x i8] c"     number of bins with %d atoms:  %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [32 x i8] c"     total number of bins:  %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"     %% average fill:  %g\0A\00", align 1
@.str.61 = private unnamed_addr constant [28 x i8] c"number of extra atoms = %d\0A\00", align 1
@.str.62 = private unnamed_addr constant [30 x i8] c"%% atoms that are extra = %g\0A\00", align 1
@.str.63 = private unnamed_addr constant [62 x i8] c"sanity check on bin histogram with edges:  sum + others = %d\0A\00", align 1
@.str.64 = private unnamed_addr constant [67 x i8] c"sanity check on bin histogram excluding edges:  sum + others = %d\0A\00", align 1
@.str.65 = private unnamed_addr constant [27 x i8] c"neighbor list length = %d\0A\00", align 1
@.str.66 = private unnamed_addr constant [49 x i8] c"Allocating %.2fMB on CUDA device for potentials\0A\00", align 1
@.str.67 = private unnamed_addr constant [25 x i8] c"CUDA error: %s, line %d\0A\00", align 1
@.str.68 = private unnamed_addr constant [48 x i8] c"Allocating %.2fMB on CUDA device for atom bins\0A\00", align 1
@.str.69 = private unnamed_addr constant [45 x i8] c"Invoking CUDA kernel on %d region planes...\0A\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"  computing plane %d\0D\00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@_ZL29cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfi = internal constant void (i32, i32, %struct.HIP_vector_type.0*, float, float, float, float*, i32)* @_ZL44__device_stub__cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfi, align 8
@.str.74 = private unnamed_addr constant [26 x i8] c"Expecting one input file\0A\00", align 1
@.str.75 = private unnamed_addr constant [25 x i8] c"read_atom_file() failed\0A\00", align 1
@.str.76 = private unnamed_addr constant [30 x i8] c"read %d atoms from file '%s'\0A\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"  minimum %g %g %g\0A\00", align 1
@.str.79 = private unnamed_addr constant [20 x i8] c"  maximum %g %g %g\0A\00", align 1
@.str.80 = private unnamed_addr constant [32 x i8] c"padding domain by %g Angstroms\0A\00", align 1
@.str.81 = private unnamed_addr constant [35 x i8] c"domain lengths are %g by %g by %g\0A\00", align 1
@.str.82 = private unnamed_addr constant [20 x i8] c"Computation failed\0A\00", align 1
@.str.84 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.85 = private unnamed_addr constant [25 x i8] c"Cannot open output file\0A\00", align 1
@.str.86 = private unnamed_addr constant [17 x i8] c"delete_argument\0A\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"next_argument\0A\00", align 1
@0 = private unnamed_addr constant [68 x i8] c"_ZL29cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfi\00", align 1
@1 = private unnamed_addr constant [11 x i8] c"NbrListLen\00", align 1
@2 = private unnamed_addr constant [8 x i8] c"NbrList\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]
@str = private unnamed_addr constant [51 x i8] c"Finished CUDA kernel calls                        \00", align 1
@str.88 = private unnamed_addr constant [29 x i8] c"computing extra atoms on CPU\00", align 1
@str.89 = private unnamed_addr constant [28 x i8] c"bin histogram with padding:\00", align 1
@str.90 = private unnamed_addr constant [33 x i8] c"bin histogram excluding padding:\00", align 1
@str.91 = private unnamed_addr constant [21 x i8] c"extent of domain is:\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias %struct.pb_Parameters* @pb_ReadParameters(i32* nocapture %0, i8** %1) local_unnamed_addr #0 {
  %3 = tail call noalias align 16 dereferenceable_or_null(16) i8* @malloc(i64 16) #28
  %4 = bitcast i8* %3 to %struct.pb_Parameters*
  %5 = getelementptr inbounds %struct.pb_Parameters, %struct.pb_Parameters* %4, i64 0, i32 0
  store i8* null, i8** %5, align 16, !tbaa !3
  %6 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #28
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
  %32 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.86, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %31) #29
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
  tail call void @free(i8* %42) #28
  %43 = load i8*, i8** %37, align 8, !tbaa !9
  %44 = icmp slt i32 %16, %36
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %47 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.86, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %46) #29
  br label %48

48:                                               ; preds = %41, %45
  %49 = add nsw i32 %13, -2
  %50 = getelementptr inbounds i8*, i8** %15, i64 2
  %51 = tail call noalias i8* @strdup(i8* %43) #28
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
  %59 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.86, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %58) #29
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
  %77 = tail call noalias align 16 i8* @malloc(i64 %76) #28
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
  %97 = tail call noalias align 16 i8* @malloc(i64 %96) #28
  %98 = getelementptr inbounds i8*, i8** %78, i64 %83
  store i8* %97, i8** %98, align 8, !tbaa !9
  %99 = ashr exact i64 %94, 32
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %97, i8* align 1 %84, i64 %99, i1 false) #28
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
  %112 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.87, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %111) #29
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
  %286 = tail call i32 @fputs(i8* nonnull %284, %struct._IO_FILE* %285) #30
  %287 = load i8*, i8** %5, align 16, !tbaa !3
  tail call void @free(i8* %287) #28
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
  tail call void @free(i8* nonnull %294) #28
  %296 = getelementptr inbounds i8*, i8** %295, i64 1
  %297 = load i8*, i8** %296, align 8, !tbaa !9
  %298 = icmp eq i8* %297, null
  br i1 %298, label %299, label %293, !llvm.loop !28

299:                                              ; preds = %293, %290
  %300 = bitcast i8** %288 to i8*
  tail call void @free(i8* %300) #28
  br label %301

301:                                              ; preds = %283, %299
  tail call void @free(i8* %3) #28
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
  tail call void @free(i8* %3) #28
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
  tail call void @free(i8* nonnull %11) #28
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8, !tbaa !9
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %10, !llvm.loop !28

16:                                               ; preds = %10, %7
  %17 = bitcast i8** %5 to i8*
  tail call void @free(i8* %17) #28
  br label %18

18:                                               ; preds = %1, %16
  %19 = bitcast %struct.pb_Parameters* %0 to i8*
  tail call void @free(i8* %19) #28
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
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %7) #30
  br label %19

9:                                                ; preds = %1
  store i32 1, i32* %3, align 8, !tbaa !30
  %10 = bitcast %struct.timeval* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #28
  %11 = call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* null) #28
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !35
  %14 = mul nsw i64 %13, 1000000
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 1
  %16 = load i64, i64* %15, align 8, !tbaa !38
  %17 = add nsw i64 %14, %16
  %18 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %0, i64 0, i32 2
  store i64 %17, i64* %18, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #28
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
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %8) #30
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ 1, %7 ], [ 3, %2 ]
  %12 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %1, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !30
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %16) #30
  %18 = and i32 %11, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %22 = tail call i64 @fwrite(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i64 53, i64 1, %struct._IO_FILE* %21) #30
  br label %49

23:                                               ; preds = %10, %15
  %24 = phi i32 [ %18, %15 ], [ %11, %10 ]
  store i32 1, i32* %4, align 8, !tbaa !30
  store i32 1, i32* %12, align 8, !tbaa !30
  %25 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #28
  %26 = call i32 @gettimeofday(%struct.timeval* nonnull %3, %struct.timezone* null) #28
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #28
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
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %7) #30
  br label %24

9:                                                ; preds = %1
  store i32 0, i32* %3, align 8, !tbaa !30
  %10 = bitcast %struct.timeval* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #28
  %11 = call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* null) #28
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !35
  %14 = mul nsw i64 %13, 1000000
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 1
  %16 = load i64, i64* %15, align 8, !tbaa !38
  %17 = add nsw i64 %14, %16
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #28
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
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %8) #30
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ 1, %7 ], [ 3, %2 ]
  %12 = getelementptr inbounds %struct.pb_Timer, %struct.pb_Timer* %1, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !30
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %16) #30
  %18 = and i32 %11, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %22 = tail call i64 @fwrite(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i64 52, i64 1, %struct._IO_FILE* %21) #30
  br label %52

23:                                               ; preds = %10, %15
  %24 = phi i32 [ %18, %15 ], [ %11, %10 ]
  store i32 0, i32* %4, align 8, !tbaa !30
  store i32 0, i32* %12, align 8, !tbaa !30
  %25 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %25) #28
  %26 = call i32 @gettimeofday(%struct.timeval* nonnull %3, %struct.timezone* null) #28
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 0
  %28 = load i64, i64* %27, align 8, !tbaa !35
  %29 = mul nsw i64 %28, 1000000
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 1
  %31 = load i64, i64* %30, align 8, !tbaa !38
  %32 = add nsw i64 %29, %31
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %25) #28
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
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %6) #30
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
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #28
  %4 = call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* null) #28
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !35
  %7 = mul nsw i64 %6, 1000000
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 1
  %9 = load i64, i64* %8, align 8, !tbaa !38
  %10 = add nsw i64 %7, %9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #28
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
  %4 = tail call noalias align 16 dereferenceable_or_null(40) i8* @malloc(i64 40) #28
  %5 = bitcast i8* %4 to %struct.pb_SubTimer*
  %6 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #31
  %7 = shl i64 %6, 32
  %8 = add i64 %7, 4294967296
  %9 = ashr exact i64 %8, 32
  %10 = tail call noalias align 16 i8* @malloc(i64 %9) #28
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
  %21 = tail call noalias align 16 dereferenceable_or_null(16) i8* @malloc(i64 16) #28
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
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %34) #29
  br label %143

36:                                               ; preds = %29
  store i32 0, i32* %30, align 8, !tbaa !30
  %37 = bitcast %struct.timeval* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %37) #28
  %38 = call i32 @gettimeofday(%struct.timeval* nonnull %8, %struct.timezone* null) #28
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 0, i32 0
  %40 = load i64, i64* %39, align 8, !tbaa !35
  %41 = mul nsw i64 %40, 1000000
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 0, i32 1
  %43 = load i64, i64* %42, align 8, !tbaa !38
  %44 = add nsw i64 %41, %43
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %37) #28
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
  %58 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %57) #29
  br label %143

59:                                               ; preds = %52
  store i32 0, i32* %53, align 8, !tbaa !30
  %60 = bitcast %struct.timeval* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %60) #28
  %61 = call i32 @gettimeofday(%struct.timeval* nonnull %7, %struct.timezone* null) #28
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 0
  %63 = load i64, i64* %62, align 8, !tbaa !35
  %64 = mul nsw i64 %63, 1000000
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 1
  %66 = load i64, i64* %65, align 8, !tbaa !38
  %67 = add nsw i64 %64, %66
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %60) #28
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
  %95 = tail call noalias align 16 dereferenceable_or_null(32) i8* @malloc(i64 32) #28
  %96 = bitcast %struct.pb_async_time_marker_list** %94 to i8**
  store i8* %95, i8** %96, align 8, !tbaa !9
  %97 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #28
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
  %127 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %126) #29
  br label %143

128:                                              ; preds = %121
  store i32 0, i32* %122, align 8, !tbaa !30
  %129 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %129) #28
  %130 = call i32 @gettimeofday(%struct.timeval* nonnull %6, %struct.timezone* null) #28
  %131 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 0
  %132 = load i64, i64* %131, align 8, !tbaa !35
  %133 = mul nsw i64 %132, 1000000
  %134 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %135 = load i64, i64* %134, align 8, !tbaa !38
  %136 = add nsw i64 %133, %135
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %129) #28
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
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %144) #28
  %145 = call i32 @gettimeofday(%struct.timeval* nonnull %5, %struct.timezone* null) #28
  %146 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 0
  %147 = load i64, i64* %146, align 8, !tbaa !35
  %148 = mul nsw i64 %147, 1000000
  %149 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 1
  %150 = load i64, i64* %149, align 8, !tbaa !38
  %151 = add nsw i64 %148, %150
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %144) #28
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
  %209 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %208) #29
  br label %283

210:                                              ; preds = %202
  store i32 1, i32* %204, align 8, !tbaa !30
  %211 = bitcast %struct.timeval* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %211) #28
  %212 = call i32 @gettimeofday(%struct.timeval* nonnull %4, %struct.timezone* null) #28
  %213 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0
  %214 = load i64, i64* %213, align 8, !tbaa !35
  %215 = mul nsw i64 %214, 1000000
  %216 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1
  %217 = load i64, i64* %216, align 8, !tbaa !38
  %218 = add nsw i64 %215, %217
  %219 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %203, i32 2
  store i64 %218, i64* %219, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %211) #28
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
  %228 = tail call noalias align 16 dereferenceable_or_null(32) i8* @malloc(i64 32) #28
  %229 = bitcast %struct.pb_async_time_marker_list** %152 to i8**
  store i8* %228, i8** %229, align 8, !tbaa !9
  %230 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #28
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
  %272 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %271) #29
  br label %283

273:                                              ; preds = %266
  store i32 1, i32* %267, align 8, !tbaa !30
  %274 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %274) #28
  %275 = call i32 @gettimeofday(%struct.timeval* nonnull %3, %struct.timezone* null) #28
  %276 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 0
  %277 = load i64, i64* %276, align 8, !tbaa !35
  %278 = mul nsw i64 %277, 1000000
  %279 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 1
  %280 = load i64, i64* %279, align 8, !tbaa !38
  %281 = add nsw i64 %278, %280
  %282 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 4, i32 2
  store i64 %281, i64* %282, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %274) #28
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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #28
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
  %61 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %60, i8* noundef nonnull dereferenceable(1) %49) #31
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
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #28
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
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %34) #29
  br label %143

36:                                               ; preds = %29
  store i32 0, i32* %30, align 8, !tbaa !30
  %37 = bitcast %struct.timeval* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %37) #28
  %38 = call i32 @gettimeofday(%struct.timeval* nonnull %10, %struct.timezone* null) #28
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i64 0, i32 0
  %40 = load i64, i64* %39, align 8, !tbaa !35
  %41 = mul nsw i64 %40, 1000000
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i64 0, i32 1
  %43 = load i64, i64* %42, align 8, !tbaa !38
  %44 = add nsw i64 %41, %43
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %37) #28
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
  %58 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %57) #29
  br label %143

59:                                               ; preds = %52
  store i32 0, i32* %53, align 8, !tbaa !30
  %60 = bitcast %struct.timeval* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %60) #28
  %61 = call i32 @gettimeofday(%struct.timeval* nonnull %9, %struct.timezone* null) #28
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i64 0, i32 0
  %63 = load i64, i64* %62, align 8, !tbaa !35
  %64 = mul nsw i64 %63, 1000000
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i64 0, i32 1
  %66 = load i64, i64* %65, align 8, !tbaa !38
  %67 = add nsw i64 %64, %66
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %60) #28
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
  %95 = tail call noalias align 16 dereferenceable_or_null(32) i8* @malloc(i64 32) #28
  %96 = bitcast %struct.pb_async_time_marker_list** %94 to i8**
  store i8* %95, i8** %96, align 8, !tbaa !9
  %97 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #28
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
  %127 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %126) #29
  br label %143

128:                                              ; preds = %121
  store i32 0, i32* %122, align 8, !tbaa !30
  %129 = bitcast %struct.timeval* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %129) #28
  %130 = call i32 @gettimeofday(%struct.timeval* nonnull %8, %struct.timezone* null) #28
  %131 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 0, i32 0
  %132 = load i64, i64* %131, align 8, !tbaa !35
  %133 = mul nsw i64 %132, 1000000
  %134 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i64 0, i32 1
  %135 = load i64, i64* %134, align 8, !tbaa !38
  %136 = add nsw i64 %133, %135
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %129) #28
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
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %144) #28
  %145 = call i32 @gettimeofday(%struct.timeval* nonnull %7, %struct.timezone* null) #28
  %146 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 0
  %147 = load i64, i64* %146, align 8, !tbaa !35
  %148 = mul nsw i64 %147, 1000000
  %149 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 1
  %150 = load i64, i64* %149, align 8, !tbaa !38
  %151 = add nsw i64 %148, %150
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %144) #28
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
  %214 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %213, i8* noundef nonnull %1) #31
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
  %241 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %240) #29
  br label %336

242:                                              ; preds = %235
  store i32 1, i32* %236, align 8, !tbaa !30
  %243 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %243) #28
  %244 = call i32 @gettimeofday(%struct.timeval* nonnull %6, %struct.timezone* null) #28
  %245 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 0
  %246 = load i64, i64* %245, align 8, !tbaa !35
  %247 = mul nsw i64 %246, 1000000
  %248 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %249 = load i64, i64* %248, align 8, !tbaa !38
  %250 = add nsw i64 %247, %249
  %251 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %221, i64 0, i32 1, i32 2
  store i64 %250, i64* %251, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %243) #28
  br label %336

252:                                              ; preds = %234
  %253 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %202, i32 0
  %254 = load i32, i32* %253, align 8, !tbaa !30
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %252
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %258 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %257) #29
  br label %336

259:                                              ; preds = %252
  store i32 1, i32* %253, align 8, !tbaa !30
  %260 = bitcast %struct.timeval* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %260) #28
  %261 = call i32 @gettimeofday(%struct.timeval* nonnull %5, %struct.timezone* null) #28
  %262 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 0
  %263 = load i64, i64* %262, align 8, !tbaa !35
  %264 = mul nsw i64 %263, 1000000
  %265 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i64 0, i32 1
  %266 = load i64, i64* %265, align 8, !tbaa !38
  %267 = add nsw i64 %264, %266
  %268 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 %202, i32 2
  store i64 %267, i64* %268, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %260) #28
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
  %281 = tail call noalias align 16 dereferenceable_or_null(32) i8* @malloc(i64 32) #28
  %282 = bitcast %struct.pb_async_time_marker_list** %152 to i8**
  store i8* %281, i8** %282, align 8, !tbaa !9
  %283 = tail call noalias align 16 dereferenceable_or_null(8) i8* @malloc(i64 8) #28
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
  %325 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %324) #29
  br label %336

326:                                              ; preds = %319
  store i32 1, i32* %320, align 8, !tbaa !30
  %327 = bitcast %struct.timeval* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %327) #28
  %328 = call i32 @gettimeofday(%struct.timeval* nonnull %4, %struct.timezone* null) #28
  %329 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0
  %330 = load i64, i64* %329, align 8, !tbaa !35
  %331 = mul nsw i64 %330, 1000000
  %332 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1
  %333 = load i64, i64* %332, align 8, !tbaa !38
  %334 = add nsw i64 %331, %333
  %335 = getelementptr inbounds %struct.pb_TimerSet, %struct.pb_TimerSet* %0, i64 0, i32 4, i64 4, i32 2
  store i64 %334, i64* %335, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %327) #28
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
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #28
  %5 = call i32 @gettimeofday(%struct.timeval* nonnull %2, %struct.timezone* null) #28
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i64 0, i32 1
  %9 = load i64, i64* %8, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #28
  %10 = bitcast [6 x i8*]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %10) #28
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
  %24 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %23) #29
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
  %39 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %38) #29
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
  %58 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %57) #31
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
  %78 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %77) #29
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
  %97 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %96) #29
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
  %109 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %108) #29
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
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %10) #28
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
  tail call void @free(i8* %25) #28
  %26 = load %struct.pb_async_time_marker_list*, %struct.pb_async_time_marker_list** %11, align 8, !tbaa !9
  %27 = getelementptr inbounds %struct.pb_async_time_marker_list, %struct.pb_async_time_marker_list* %26, i64 0, i32 3
  %28 = bitcast %struct.pb_async_time_marker_list* %26 to i8*
  tail call void @free(i8* %28) #28
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
  tail call void @free(i8* %39) #28
  %40 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %37, i64 0, i32 2
  %41 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %40, align 8, !tbaa !48
  %42 = bitcast %struct.pb_SubTimer* %37 to i8*
  tail call void @free(i8* %42) #28
  %43 = icmp eq %struct.pb_SubTimer* %41, null
  br i1 %43, label %44, label %36, !llvm.loop !72

44:                                               ; preds = %36
  %45 = bitcast %struct.pb_SubTimerList** %6 to i8**
  %46 = load i8*, i8** %45, align 8, !tbaa !9
  br label %47

47:                                               ; preds = %31, %44
  %48 = phi i8* [ %46, %44 ], [ %32, %31 ]
  tail call void @free(i8* %48) #28
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
  tail call void @free(i8* %61) #28
  %62 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %59, i64 0, i32 2
  %63 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %62, align 8, !tbaa !48
  %64 = bitcast %struct.pb_SubTimer* %59 to i8*
  tail call void @free(i8* %64) #28
  %65 = icmp eq %struct.pb_SubTimer* %63, null
  br i1 %65, label %66, label %58, !llvm.loop !72

66:                                               ; preds = %58
  %67 = bitcast %struct.pb_SubTimerList** %50 to i8**
  %68 = load i8*, i8** %67, align 8, !tbaa !9
  br label %69

69:                                               ; preds = %53, %66
  %70 = phi i8* [ %68, %66 ], [ %54, %53 ]
  tail call void @free(i8* %70) #28
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
  tail call void @free(i8* %83) #28
  %84 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %81, i64 0, i32 2
  %85 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %84, align 8, !tbaa !48
  %86 = bitcast %struct.pb_SubTimer* %81 to i8*
  tail call void @free(i8* %86) #28
  %87 = icmp eq %struct.pb_SubTimer* %85, null
  br i1 %87, label %88, label %80, !llvm.loop !72

88:                                               ; preds = %80
  %89 = bitcast %struct.pb_SubTimerList** %72 to i8**
  %90 = load i8*, i8** %89, align 8, !tbaa !9
  br label %91

91:                                               ; preds = %75, %88
  %92 = phi i8* [ %90, %88 ], [ %76, %75 ]
  tail call void @free(i8* %92) #28
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
  tail call void @free(i8* %105) #28
  %106 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %103, i64 0, i32 2
  %107 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %106, align 8, !tbaa !48
  %108 = bitcast %struct.pb_SubTimer* %103 to i8*
  tail call void @free(i8* %108) #28
  %109 = icmp eq %struct.pb_SubTimer* %107, null
  br i1 %109, label %110, label %102, !llvm.loop !72

110:                                              ; preds = %102
  %111 = bitcast %struct.pb_SubTimerList** %94 to i8**
  %112 = load i8*, i8** %111, align 8, !tbaa !9
  br label %113

113:                                              ; preds = %97, %110
  %114 = phi i8* [ %112, %110 ], [ %98, %97 ]
  tail call void @free(i8* %114) #28
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
  tail call void @free(i8* %127) #28
  %128 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %125, i64 0, i32 2
  %129 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %128, align 8, !tbaa !48
  %130 = bitcast %struct.pb_SubTimer* %125 to i8*
  tail call void @free(i8* %130) #28
  %131 = icmp eq %struct.pb_SubTimer* %129, null
  br i1 %131, label %132, label %124, !llvm.loop !72

132:                                              ; preds = %124
  %133 = bitcast %struct.pb_SubTimerList** %116 to i8**
  %134 = load i8*, i8** %133, align 8, !tbaa !9
  br label %135

135:                                              ; preds = %119, %132
  %136 = phi i8* [ %134, %132 ], [ %120, %119 ]
  tail call void @free(i8* %136) #28
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
  tail call void @free(i8* %149) #28
  %150 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %147, i64 0, i32 2
  %151 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %150, align 8, !tbaa !48
  %152 = bitcast %struct.pb_SubTimer* %147 to i8*
  tail call void @free(i8* %152) #28
  %153 = icmp eq %struct.pb_SubTimer* %151, null
  br i1 %153, label %154, label %146, !llvm.loop !72

154:                                              ; preds = %146
  %155 = bitcast %struct.pb_SubTimerList** %138 to i8**
  %156 = load i8*, i8** %155, align 8, !tbaa !9
  br label %157

157:                                              ; preds = %141, %154
  %158 = phi i8* [ %156, %154 ], [ %142, %141 ]
  tail call void @free(i8* %158) #28
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
  tail call void @free(i8* %171) #28
  %172 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %169, i64 0, i32 2
  %173 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %172, align 8, !tbaa !48
  %174 = bitcast %struct.pb_SubTimer* %169 to i8*
  tail call void @free(i8* %174) #28
  %175 = icmp eq %struct.pb_SubTimer* %173, null
  br i1 %175, label %176, label %168, !llvm.loop !72

176:                                              ; preds = %168
  %177 = bitcast %struct.pb_SubTimerList** %160 to i8**
  %178 = load i8*, i8** %177, align 8, !tbaa !9
  br label %179

179:                                              ; preds = %163, %176
  %180 = phi i8* [ %178, %176 ], [ %164, %163 ]
  tail call void @free(i8* %180) #28
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
  tail call void @free(i8* %193) #28
  %194 = getelementptr inbounds %struct.pb_SubTimer, %struct.pb_SubTimer* %191, i64 0, i32 2
  %195 = load %struct.pb_SubTimer*, %struct.pb_SubTimer** %194, align 8, !tbaa !48
  %196 = bitcast %struct.pb_SubTimer* %191 to i8*
  tail call void @free(i8* %196) #28
  %197 = icmp eq %struct.pb_SubTimer* %195, null
  br i1 %197, label %198, label %190, !llvm.loop !72

198:                                              ; preds = %190
  %199 = bitcast %struct.pb_SubTimerList** %182 to i8**
  %200 = load i8*, i8** %199, align 8, !tbaa !9
  br label %201

201:                                              ; preds = %185, %198
  %202 = phi i8* [ %200, %198 ], [ %186, %185 ]
  tail call void @free(i8* %202) #28
  br label %203

203:                                              ; preds = %201, %181
  ret void
}

declare dso_local i32 @hipEventDestroy(%struct.ihipEvent_t*) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias %struct.Atoms_t* @read_atom_file(i8* %0) local_unnamed_addr #0 {
  %2 = alloca [96 x i8], align 16
  %3 = getelementptr inbounds [96 x i8], [96 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %3) #28
  %4 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  %5 = icmp eq %struct._IO_FILE* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %8 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0), i8* %0) #30
  br label %84

9:                                                ; preds = %1
  %10 = tail call noalias align 16 dereferenceable_or_null(320) i8* @malloc(i64 320) #28
  %11 = icmp eq i8* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = bitcast i8* %10 to %struct.Atom_t*
  br label %57

14:                                               ; preds = %9
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %15) #30
  br label %84

17:                                               ; preds = %57, %23
  %18 = call i8* @fgets(i8* nonnull %3, i32 96, %struct._IO_FILE* nonnull %4)
  %19 = icmp eq i8* %18, null
  br i1 %19, label %61, label %20

20:                                               ; preds = %17
  %21 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i64 6)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i64 6)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %17, !llvm.loop !73

26:                                               ; preds = %23, %20
  %27 = zext i32 %59 to i64
  %28 = icmp eq i64 %58, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = bitcast %struct.Atom_t* %60 to i8*
  %31 = shl nsw i32 %59, 1
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 4
  %34 = call align 16 i8* @realloc(i8* %30, i64 %33) #28
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %38 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %37) #30
  br label %84

39:                                               ; preds = %29
  %40 = bitcast i8* %34 to %struct.Atom_t*
  br label %41

41:                                               ; preds = %39, %26
  %42 = phi i32 [ %31, %39 ], [ %59, %26 ]
  %43 = phi %struct.Atom_t* [ %40, %39 ], [ %60, %26 ]
  %44 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %43, i64 %58, i32 0
  %45 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %43, i64 %58, i32 1
  %46 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %43, i64 %58, i32 2
  %47 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %43, i64 %58, i32 3
  %48 = call i32 (i8*, i8*, ...) @sscanf(i8* nonnull %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0), float* %44, float* nonnull %45, float* nonnull %46, float* nonnull %47) #28
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %55, label %50

50:                                               ; preds = %41
  %51 = trunc i64 %58 to i32
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %53 = add nuw nsw i32 %51, 1
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.30, i64 0, i64 0), i32 %53) #30
  br label %84

55:                                               ; preds = %41
  %56 = add nuw i64 %58, 1
  br label %57, !llvm.loop !73

57:                                               ; preds = %12, %55
  %58 = phi i64 [ 0, %12 ], [ %56, %55 ]
  %59 = phi i32 [ 20, %12 ], [ %42, %55 ]
  %60 = phi %struct.Atom_t* [ %13, %12 ], [ %43, %55 ]
  br label %17

61:                                               ; preds = %17
  %62 = trunc i64 %58 to i32
  %63 = call i32 @feof(%struct._IO_FILE* nonnull %4) #28
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %67 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %66) #30
  br label %84

68:                                               ; preds = %61
  %69 = call i32 @fclose(%struct._IO_FILE* nonnull %4)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %73 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %72) #30
  br label %84

74:                                               ; preds = %68
  %75 = call noalias align 16 dereferenceable_or_null(16) i8* @malloc(i64 16) #28
  %76 = bitcast i8* %75 to %struct.Atoms_t*
  %77 = icmp eq i8* %75, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %80 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %79) #30
  br label %84

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.Atoms_t, %struct.Atoms_t* %76, i64 0, i32 1
  store i32 %62, i32* %82, align 8, !tbaa !74
  %83 = getelementptr inbounds %struct.Atoms_t, %struct.Atoms_t* %76, i64 0, i32 0
  store %struct.Atom_t* %60, %struct.Atom_t** %83, align 16, !tbaa !76
  br label %84

84:                                               ; preds = %36, %78, %81, %71, %65, %50, %14, %6
  %85 = phi %struct.Atoms_t* [ null, %6 ], [ null, %14 ], [ null, %50 ], [ null, %71 ], [ null, %65 ], [ null, %78 ], [ %76, %81 ], [ null, %36 ]
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %3) #28
  ret %struct.Atoms_t* %85
}

; Function Attrs: nofree nounwind
declare dso_local noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local noalias noundef i8* @realloc(i8* nocapture, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @sscanf(i8* nocapture noundef readonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @feof(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local void @free_atom(%struct.Atoms_t* %0) local_unnamed_addr #14 {
  %2 = icmp eq %struct.Atoms_t* %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = bitcast %struct.Atoms_t* %0 to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !76
  tail call void @free(i8* %5) #28
  %6 = bitcast %struct.Atoms_t* %0 to i8*
  tail call void @free(i8* %6) #28
  br label %7

7:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local void @get_atom_extent(%struct.Vec3_t* nocapture writeonly %0, %struct.Vec3_t* nocapture writeonly %1, %struct.Atoms_t* nocapture readonly %2) local_unnamed_addr #15 {
  %4 = getelementptr inbounds %struct.Atoms_t, %struct.Atoms_t* %2, i64 0, i32 0
  %5 = load %struct.Atom_t*, %struct.Atom_t** %4, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.Atoms_t, %struct.Atoms_t* %2, i64 0, i32 1
  %7 = load i32, i32* %6, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %5, i64 0, i32 0
  %9 = load float, float* %8, align 4, !tbaa !77
  %10 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %5, i64 0, i32 1
  %11 = load float, float* %10, align 4, !tbaa !79
  %12 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %5, i64 0, i32 2
  %13 = load float, float* %12, align 4, !tbaa !80
  %14 = icmp sgt i32 %7, 1
  br i1 %14, label %15, label %39

15:                                               ; preds = %3
  %16 = zext i32 %7 to i64
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i64 [ 1, %15 ], [ %37, %17 ]
  %19 = phi float [ %9, %15 ], [ %28, %17 ]
  %20 = phi float [ %11, %15 ], [ %32, %17 ]
  %21 = phi float [ %13, %15 ], [ %36, %17 ]
  %22 = phi float [ %9, %15 ], [ %27, %17 ]
  %23 = phi float [ %11, %15 ], [ %31, %17 ]
  %24 = phi float [ %13, %15 ], [ %35, %17 ]
  %25 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %5, i64 %18, i32 0
  %26 = load float, float* %25, align 4, !tbaa !77
  %27 = tail call contract float @llvm.minnum.f32(float %22, float %26)
  %28 = tail call contract float @llvm.maxnum.f32(float %19, float %26)
  %29 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %5, i64 %18, i32 1
  %30 = load float, float* %29, align 4, !tbaa !79
  %31 = tail call contract float @llvm.minnum.f32(float %23, float %30)
  %32 = tail call contract float @llvm.maxnum.f32(float %20, float %30)
  %33 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %5, i64 %18, i32 2
  %34 = load float, float* %33, align 4, !tbaa !80
  %35 = tail call contract float @llvm.minnum.f32(float %24, float %34)
  %36 = tail call contract float @llvm.maxnum.f32(float %21, float %34)
  %37 = add nuw nsw i64 %18, 1
  %38 = icmp eq i64 %37, %16
  br i1 %38, label %39, label %17, !llvm.loop !81

39:                                               ; preds = %17, %3
  %40 = phi float [ %13, %3 ], [ %35, %17 ]
  %41 = phi float [ %11, %3 ], [ %31, %17 ]
  %42 = phi float [ %9, %3 ], [ %27, %17 ]
  %43 = phi float [ %13, %3 ], [ %36, %17 ]
  %44 = phi float [ %11, %3 ], [ %32, %17 ]
  %45 = phi float [ %9, %3 ], [ %28, %17 ]
  %46 = getelementptr inbounds %struct.Vec3_t, %struct.Vec3_t* %0, i64 0, i32 0
  store float %42, float* %46, align 4, !tbaa.struct !82
  %47 = getelementptr inbounds %struct.Vec3_t, %struct.Vec3_t* %0, i64 0, i32 1
  store float %41, float* %47, align 4, !tbaa.struct !83
  %48 = getelementptr inbounds %struct.Vec3_t, %struct.Vec3_t* %0, i64 0, i32 2
  store float %40, float* %48, align 4, !tbaa.struct !84
  %49 = getelementptr inbounds %struct.Vec3_t, %struct.Vec3_t* %1, i64 0, i32 0
  store float %45, float* %49, align 4, !tbaa.struct !82
  %50 = getelementptr inbounds %struct.Vec3_t, %struct.Vec3_t* %1, i64 0, i32 1
  store float %44, float* %50, align 4, !tbaa.struct !83
  %51 = getelementptr inbounds %struct.Vec3_t, %struct.Vec3_t* %1, i64 0, i32 2
  store float %43, float* %51, align 4, !tbaa.struct !84
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.minnum.f32(float, float) #16

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.maxnum.f32(float, float) #16

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #17

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local i32 @_Z10appenddataPKcid(i8* %0, i32 %1, double %2) local_unnamed_addr #8 {
  %4 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
  %5 = icmp eq %struct._IO_FILE* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i64 0, i64 0), i8* %0)
  br label %11

8:                                                ; preds = %3
  %9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i32 %1, double %2)
  %10 = tail call i32 @fclose(%struct._IO_FILE* nonnull %4)
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i32 [ -1, %6 ], [ 0, %8 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn writeonly
define dso_local void @lattice_from_bounding_box(%struct.LatticeDim_t* noalias nocapture writeonly sret(%struct.LatticeDim_t) align 4 %0, <2 x float> %1, float %2, <2 x float> %3, float %4, float %5) local_unnamed_addr #18 {
  %7 = fsub contract <2 x float> %3, %1
  %8 = extractelement <2 x float> %7, i64 0
  %9 = fdiv contract float %8, %5
  %10 = tail call contract float @llvm.floor.f32(float %9)
  %11 = fptosi float %10 to i32
  %12 = add nsw i32 %11, 1
  %13 = getelementptr inbounds %struct.LatticeDim_t, %struct.LatticeDim_t* %0, i64 0, i32 0
  store i32 %12, i32* %13, align 4, !tbaa !85
  %14 = fsub contract <2 x float> %3, %1
  %15 = extractelement <2 x float> %14, i64 1
  %16 = fdiv contract float %15, %5
  %17 = tail call contract float @llvm.floor.f32(float %16)
  %18 = fptosi float %17 to i32
  %19 = add nsw i32 %18, 1
  %20 = getelementptr inbounds %struct.LatticeDim_t, %struct.LatticeDim_t* %0, i64 0, i32 1
  store i32 %19, i32* %20, align 4, !tbaa !88
  %21 = fsub contract float %4, %2
  %22 = fdiv contract float %21, %5
  %23 = tail call contract float @llvm.floor.f32(float %22)
  %24 = fptosi float %23 to i32
  %25 = add nsw i32 %24, 1
  %26 = getelementptr inbounds %struct.LatticeDim_t, %struct.LatticeDim_t* %0, i64 0, i32 2
  store i32 %25, i32* %26, align 4, !tbaa !89
  %27 = getelementptr inbounds %struct.LatticeDim_t, %struct.LatticeDim_t* %0, i64 0, i32 3
  %28 = bitcast %struct.Vec3_t* %27 to <2 x float>*
  store <2 x float> %1, <2 x float>* %28, align 4, !tbaa.struct !82
  %29 = getelementptr inbounds %struct.LatticeDim_t, %struct.LatticeDim_t* %0, i64 0, i32 3, i32 2
  store float %2, float* %29, align 4, !tbaa.struct !84
  %30 = getelementptr inbounds %struct.LatticeDim_t, %struct.LatticeDim_t* %0, i64 0, i32 4
  store float %5, float* %30, align 4, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.floor.f32(float) #16

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias %struct.Lattice_t* @create_lattice(%struct.LatticeDim_t* nocapture readonly byval(%struct.LatticeDim_t) align 8 %0) local_unnamed_addr #0 {
  %2 = tail call noalias align 16 dereferenceable_or_null(40) i8* @malloc(i64 40) #28
  %3 = bitcast i8* %2 to %struct.Lattice_t*
  %4 = icmp eq i8* %2, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %6) #30
  tail call void @exit(i32 1) #32
  unreachable

8:                                                ; preds = %1
  %9 = bitcast %struct.LatticeDim_t* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(28) %2, i8* noundef nonnull align 8 dereferenceable(28) %9, i64 28, i1 false), !tbaa.struct !91
  %10 = getelementptr inbounds %struct.LatticeDim_t, %struct.LatticeDim_t* %0, i64 0, i32 0
  %11 = load i32, i32* %10, align 8, !tbaa !85
  %12 = getelementptr inbounds %struct.LatticeDim_t, %struct.LatticeDim_t* %0, i64 0, i32 1
  %13 = load i32, i32* %12, align 4, !tbaa !88
  %14 = mul nsw i32 %13, %11
  %15 = getelementptr inbounds %struct.LatticeDim_t, %struct.LatticeDim_t* %0, i64 0, i32 2
  %16 = load i32, i32* %15, align 8, !tbaa !89
  %17 = mul nsw i32 %14, %16
  %18 = add nsw i32 %17, 7
  %19 = and i32 %18, -8
  %20 = sext i32 %19 to i64
  %21 = tail call noalias align 16 i8* @calloc(i64 %20, i64 4) #28
  %22 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %3, i64 0, i32 1
  %23 = bitcast float** %22 to i8**
  store i8* %21, i8** %23, align 16, !tbaa !92
  %24 = icmp eq i8* %21, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %8
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %27 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %26) #30
  tail call void @exit(i32 1) #32
  unreachable

28:                                               ; preds = %8
  ret %struct.Lattice_t* %3
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #19

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local void @destroy_lattice(%struct.Lattice_t* %0) local_unnamed_addr #14 {
  %2 = icmp eq %struct.Lattice_t* %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %0, i64 0, i32 1
  %5 = bitcast float** %4 to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !92
  tail call void @free(i8* %6) #28
  %7 = bitcast %struct.Lattice_t* %0 to i8*
  tail call void @free(i8* %7) #28
  br label %8

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: uwtable
define dso_local i32 @gpu_compute_cutoff_potential_lattice(%struct.pb_TimerSet* nocapture %0, %struct.Lattice_t* nocapture readonly %1, float %2, %struct.Atoms_t* nocapture readonly %3, i32 %4) local_unnamed_addr #20 {
  %6 = alloca [1331 x %struct.HIP_vector_type], align 16
  %7 = alloca i32, align 4
  %8 = alloca [9 x i32], align 16
  %9 = alloca [9 x i32], align 16
  %10 = alloca float*, align 8
  %11 = alloca %struct.HIP_vector_type.0*, align 8
  %12 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %1, i64 0, i32 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !94
  %14 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %1, i64 0, i32 0, i32 1
  %15 = load i32, i32* %14, align 4, !tbaa !95
  %16 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %1, i64 0, i32 0, i32 2
  %17 = load i32, i32* %16, align 8, !tbaa !96
  %18 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %1, i64 0, i32 0, i32 3, i32 0
  %19 = bitcast float* %18 to <2 x float>*
  %20 = load <2 x float>, <2 x float>* %19, align 4, !tbaa !61
  %21 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %1, i64 0, i32 0, i32 3, i32 2
  %22 = load float, float* %21, align 4, !tbaa !97
  %23 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %1, i64 0, i32 0, i32 4
  %24 = load float, float* %23, align 8, !tbaa !98
  %25 = getelementptr inbounds %struct.Atoms_t, %struct.Atoms_t* %3, i64 0, i32 1
  %26 = load i32, i32* %25, align 8, !tbaa !74
  %27 = getelementptr inbounds %struct.Atoms_t, %struct.Atoms_t* %3, i64 0, i32 0
  %28 = load %struct.Atom_t*, %struct.Atom_t** %27, align 8, !tbaa !76
  %29 = bitcast [1331 x %struct.HIP_vector_type]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 15972, i8* nonnull %29) #28
  %30 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %30) #28
  %31 = bitcast [9 x i32]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %31) #28
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(36) %31, i8 0, i64 36, i1 false)
  %32 = bitcast [9 x i32]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %32) #28
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(36) %32, i8 0, i64 36, i1 false)
  %33 = bitcast float** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33) #28
  %34 = bitcast %struct.HIP_vector_type.0** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34) #28
  %35 = fmul contract float %2, %2
  %36 = fdiv contract float 1.000000e+00, %35
  %37 = sitofp i32 %13 to float
  %38 = fmul contract float %37, 1.250000e-01
  %39 = tail call contract float @llvm.ceil.f32(float %38)
  %40 = fptosi float %39 to i32
  %41 = sitofp i32 %15 to float
  %42 = fmul contract float %41, 1.250000e-01
  %43 = tail call contract float @llvm.ceil.f32(float %42)
  %44 = fptosi float %43 to i32
  %45 = sitofp i32 %17 to float
  %46 = fmul contract float %45, 1.250000e-01
  %47 = tail call contract float @llvm.ceil.f32(float %46)
  %48 = fptosi float %47 to i32
  %49 = shl nsw i32 %40, 3
  %50 = shl nsw i32 %44, 3
  %51 = shl nsw i32 %48, 3
  %52 = mul nsw i32 %50, %49
  %53 = mul nsw i32 %52, %51
  %54 = sext i32 %53 to i64
  %55 = shl nsw i64 %54, 2
  %56 = tail call noalias align 16 i8* @malloc(i64 %55) #28
  %57 = bitcast i8* %56 to float*
  %58 = fmul contract float %2, 2.500000e-01
  %59 = tail call contract float @llvm.ceil.f32(float %58) #28
  %60 = fptosi float %59 to i32
  %61 = sitofp i32 %49 to float
  %62 = fmul contract float %24, %61
  %63 = fmul contract float %62, 2.500000e-01
  %64 = tail call contract float @llvm.ceil.f32(float %63) #28
  %65 = fptosi float %64 to i32
  %66 = shl nsw i32 %60, 1
  %67 = add nsw i32 %66, %65
  %68 = sitofp i32 %50 to float
  %69 = fmul contract float %24, %68
  %70 = fmul contract float %69, 2.500000e-01
  %71 = tail call contract float @llvm.ceil.f32(float %70) #28
  %72 = fptosi float %71 to i32
  %73 = add nsw i32 %66, %72
  %74 = sitofp i32 %51 to float
  %75 = fmul contract float %24, %74
  %76 = fmul contract float %75, 2.500000e-01
  %77 = tail call contract float @llvm.ceil.f32(float %76) #28
  %78 = fptosi float %77 to i32
  %79 = add nsw i32 %66, %78
  %80 = mul i32 %73, %67
  %81 = mul i32 %80, %79
  %82 = shl i32 %81, 3
  %83 = sext i32 %82 to i64
  %84 = tail call noalias align 16 i8* @calloc(i64 %83, i64 16) #28
  %85 = bitcast i8* %84 to %struct.HIP_vector_type.0*
  %86 = mul nsw i32 %73, %60
  %87 = add nsw i32 %86, %60
  %88 = mul nsw i32 %87, %67
  %89 = add nsw i32 %88, %60
  %90 = shl nsw i32 %89, 3
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0* %85, i64 %91
  %93 = sext i32 %81 to i64
  %94 = tail call noalias align 16 i8* @calloc(i64 %93, i64 4) #28
  %95 = bitcast i8* %94 to i32*
  %96 = sext i32 %88 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = sext i32 %60 to i64
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = fmul contract float %24, 8.000000e+00
  %101 = fdiv contract float 4.000000e+00, %100
  %102 = tail call contract float @llvm.ceil.f32(float %101)
  %103 = tail call contract float @llvm.floor.f32(float %101)
  %104 = fcmp contract oeq float %102, %103
  br i1 %104, label %105, label %153

105:                                              ; preds = %5
  %106 = fadd contract float %2, 0x401BB67AE0000000
  %107 = fmul contract float %106, %106
  %108 = or i32 %66, 1
  %109 = icmp sgt i32 %108, 11
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %112 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i64 0, i64 0), double 2.000000e+01) #30
  br label %791

113:                                              ; preds = %105
  %114 = sub i32 0, %60
  %115 = icmp slt i32 %60, 0
  br i1 %115, label %205, label %116

116:                                              ; preds = %113
  %117 = icmp sgt i32 %60, %114
  %118 = select i1 %117, i32 %60, i32 %114
  br label %119

119:                                              ; preds = %116, %150
  %120 = phi i32 [ %151, %150 ], [ %114, %116 ]
  %121 = phi i32 [ %144, %150 ], [ 0, %116 ]
  %122 = mul nsw i32 %120, %120
  br label %123

123:                                              ; preds = %119, %147
  %124 = phi i32 [ %114, %119 ], [ %148, %147 ]
  %125 = phi i32 [ %121, %119 ], [ %144, %147 ]
  %126 = mul nsw i32 %124, %124
  %127 = add nuw i32 %126, %122
  br label %128

128:                                              ; preds = %123, %143
  %129 = phi i32 [ %114, %123 ], [ %145, %143 ]
  %130 = phi i32 [ %125, %123 ], [ %144, %143 ]
  %131 = mul nsw i32 %129, %129
  %132 = add i32 %127, %131
  %133 = sitofp i32 %132 to float
  %134 = fmul contract float %133, 4.000000e+00
  %135 = fmul contract float %134, 4.000000e+00
  %136 = fcmp contract ult float %135, %107
  br i1 %136, label %137, label %143

137:                                              ; preds = %128
  %138 = sext i32 %130 to i64
  %139 = getelementptr inbounds [1331 x %struct.HIP_vector_type], [1331 x %struct.HIP_vector_type]* %6, i64 0, i64 %138, i32 0, i32 0, i32 0, i32 0, i64 0
  store i32 %129, i32* %139, align 4, !tbaa !12
  %140 = getelementptr inbounds [1331 x %struct.HIP_vector_type], [1331 x %struct.HIP_vector_type]* %6, i64 0, i64 %138, i32 0, i32 0, i32 0, i32 0, i64 1
  store i32 %124, i32* %140, align 4, !tbaa !12
  %141 = getelementptr inbounds [1331 x %struct.HIP_vector_type], [1331 x %struct.HIP_vector_type]* %6, i64 0, i64 %138, i32 0, i32 0, i32 0, i32 0, i64 2
  store i32 %120, i32* %141, align 4, !tbaa !12
  %142 = add nsw i32 %130, 1
  br label %143

143:                                              ; preds = %128, %137
  %144 = phi i32 [ %130, %128 ], [ %142, %137 ]
  %145 = add i32 %129, 1
  %146 = icmp eq i32 %129, %118
  br i1 %146, label %147, label %128, !llvm.loop !99

147:                                              ; preds = %143
  %148 = add i32 %124, 1
  %149 = icmp eq i32 %124, %118
  br i1 %149, label %150, label %123, !llvm.loop !100

150:                                              ; preds = %147
  %151 = add i32 %120, 1
  %152 = icmp eq i32 %120, %118
  br i1 %152, label %205, label %119, !llvm.loop !101

153:                                              ; preds = %5
  %154 = fcmp contract ugt float %100, 8.000000e+00
  br i1 %154, label %202, label %155

155:                                              ; preds = %153
  %156 = fadd contract float %2, 0x402BB67AE0000000
  %157 = fmul contract float %156, %156
  %158 = icmp sgt i32 %60, 4
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %161 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %160, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i64 0, i64 0), double 1.600000e+01) #30
  br label %791

162:                                              ; preds = %155
  %163 = sub i32 0, %60
  %164 = icmp slt i32 %60, 0
  br i1 %164, label %205, label %165

165:                                              ; preds = %162
  %166 = icmp sgt i32 %60, %163
  %167 = select i1 %166, i32 %60, i32 %163
  br label %168

168:                                              ; preds = %165, %199
  %169 = phi i32 [ %200, %199 ], [ %163, %165 ]
  %170 = phi i32 [ %193, %199 ], [ 0, %165 ]
  %171 = mul nsw i32 %169, %169
  br label %172

172:                                              ; preds = %168, %196
  %173 = phi i32 [ %163, %168 ], [ %197, %196 ]
  %174 = phi i32 [ %170, %168 ], [ %193, %196 ]
  %175 = mul nsw i32 %173, %173
  %176 = add nuw i32 %175, %171
  br label %177

177:                                              ; preds = %172, %192
  %178 = phi i32 [ %163, %172 ], [ %194, %192 ]
  %179 = phi i32 [ %174, %172 ], [ %193, %192 ]
  %180 = mul nsw i32 %178, %178
  %181 = add i32 %176, %180
  %182 = sitofp i32 %181 to float
  %183 = fmul contract float %182, 4.000000e+00
  %184 = fmul contract float %183, 4.000000e+00
  %185 = fcmp contract ult float %184, %157
  br i1 %185, label %186, label %192

186:                                              ; preds = %177
  %187 = sext i32 %179 to i64
  %188 = getelementptr inbounds [1331 x %struct.HIP_vector_type], [1331 x %struct.HIP_vector_type]* %6, i64 0, i64 %187, i32 0, i32 0, i32 0, i32 0, i64 0
  store i32 %178, i32* %188, align 4, !tbaa !12
  %189 = getelementptr inbounds [1331 x %struct.HIP_vector_type], [1331 x %struct.HIP_vector_type]* %6, i64 0, i64 %187, i32 0, i32 0, i32 0, i32 0, i64 1
  store i32 %173, i32* %189, align 4, !tbaa !12
  %190 = getelementptr inbounds [1331 x %struct.HIP_vector_type], [1331 x %struct.HIP_vector_type]* %6, i64 0, i64 %187, i32 0, i32 0, i32 0, i32 0, i64 2
  store i32 %169, i32* %190, align 4, !tbaa !12
  %191 = add nsw i32 %179, 1
  br label %192

192:                                              ; preds = %177, %186
  %193 = phi i32 [ %179, %177 ], [ %191, %186 ]
  %194 = add i32 %178, 1
  %195 = icmp eq i32 %178, %167
  br i1 %195, label %196, label %177, !llvm.loop !102

196:                                              ; preds = %192
  %197 = add i32 %173, 1
  %198 = icmp eq i32 %173, %167
  br i1 %198, label %199, label %172, !llvm.loop !103

199:                                              ; preds = %196
  %200 = add i32 %169, 1
  %201 = icmp eq i32 %169, %167
  br i1 %201, label %205, label %168, !llvm.loop !104

202:                                              ; preds = %153
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %204 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %203, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0), double 1.000000e+00) #30
  br label %791

205:                                              ; preds = %199, %150, %162, %113
  %206 = phi i32 [ 0, %113 ], [ 0, %162 ], [ %144, %150 ], [ %193, %199 ]
  %207 = phi i32 [ %114, %113 ], [ %163, %162 ], [ %114, %150 ], [ %163, %199 ]
  store i32 %206, i32* %7, align 4, !tbaa !10
  %208 = tail call noalias align 16 i8* @calloc(i64 %93, i64 16) #28
  %209 = bitcast i8* %208 to %struct.Atom_t*
  %210 = sub nsw i32 %79, %60
  %211 = icmp sgt i32 %26, 0
  br i1 %211, label %212, label %295

212:                                              ; preds = %205
  %213 = sub nsw i32 %73, %60
  %214 = sub nsw i32 %67, %60
  %215 = zext i32 %26 to i64
  %216 = insertelement <4 x i32> poison, i32 %207, i64 0
  %217 = insertelement <4 x i32> %216, i32 %214, i64 1
  %218 = insertelement <4 x i32> %217, i32 %207, i64 2
  %219 = insertelement <4 x i32> %218, i32 %213, i64 3
  br label %220

220:                                              ; preds = %212, %290
  %221 = phi i64 [ 0, %212 ], [ %293, %290 ]
  %222 = phi i32 [ 0, %212 ], [ %292, %290 ]
  %223 = phi i32 [ 0, %212 ], [ %291, %290 ]
  %224 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %28, i64 %221
  %225 = bitcast %struct.Atom_t* %224 to <2 x float>*
  %226 = load <2 x float>, <2 x float>* %225, align 4, !tbaa !61
  %227 = fsub contract <2 x float> %226, %20
  %228 = extractelement <2 x float> %227, i64 0
  %229 = insertelement <4 x float> poison, float %228, i64 0
  %230 = extractelement <2 x float> %227, i64 1
  %231 = insertelement <4 x float> %229, float %230, i64 1
  %232 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %28, i64 %221, i32 2
  %233 = load float, float* %232, align 4, !tbaa !80
  %234 = fsub contract float %233, %22
  %235 = insertelement <4 x float> %231, float %234, i64 2
  %236 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %28, i64 %221, i32 3
  %237 = load float, float* %236, align 4, !tbaa !105
  %238 = insertelement <4 x float> %235, float %237, i64 3
  %239 = fmul contract <2 x float> %227, <float 2.500000e-01, float 2.500000e-01>
  %240 = call contract <2 x float> @llvm.floor.v2f32(<2 x float> %239)
  %241 = fptosi <2 x float> %240 to <2 x i32>
  %242 = shufflevector <2 x i32> %241, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %243 = fmul contract float %234, 2.500000e-01
  %244 = tail call contract float @llvm.floor.f32(float %243)
  %245 = fptosi float %244 to i32
  %246 = icmp sle <4 x i32> %219, %242
  %247 = icmp sgt <4 x i32> %219, %242
  %248 = shufflevector <4 x i1> %246, <4 x i1> %247, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %249 = freeze <4 x i1> %248
  %250 = bitcast <4 x i1> %249 to i4
  %251 = icmp eq i4 %250, -1
  %252 = icmp sle i32 %207, %245
  %253 = select i1 %251, i1 %252, i1 false
  %254 = icmp sgt i32 %210, %245
  %255 = select i1 %253, i1 %254, i1 false
  %256 = fcmp contract une float %237, 0.000000e+00
  %257 = select i1 %255, i1 %256, i1 false
  br i1 %257, label %258, label %285

258:                                              ; preds = %220
  %259 = mul nsw i32 %73, %245
  %260 = extractelement <2 x i32> %241, i64 1
  %261 = add nsw i32 %259, %260
  %262 = mul nsw i32 %261, %67
  %263 = extractelement <2 x i32> %241, i64 0
  %264 = add nsw i32 %262, %263
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %99, i64 %265
  %267 = load i32, i32* %266, align 4, !tbaa !10
  %268 = icmp slt i32 %267, 8
  br i1 %268, label %269, label %277

269:                                              ; preds = %258
  %270 = shl nsw i32 %264, 3
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0* %92, i64 %271
  %273 = sext i32 %267 to i64
  %274 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0* %272, i64 %273
  %275 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0* %274, i64 0, i32 0, i32 0, i32 0
  store <4 x float> %238, <4 x float>* %275, align 16, !tbaa !12
  %276 = add nsw i32 %267, 1
  store i32 %276, i32* %266, align 4, !tbaa !10
  br label %290

277:                                              ; preds = %258
  %278 = icmp slt i32 %223, %81
  br i1 %278, label %279, label %287

279:                                              ; preds = %277
  %280 = sext i32 %223 to i64
  %281 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %209, i64 %280
  %282 = bitcast %struct.Atom_t* %281 to i8*
  %283 = bitcast %struct.Atom_t* %224 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %282, i8* noundef nonnull align 4 dereferenceable(16) %283, i64 16, i1 false), !tbaa.struct !106
  %284 = add nsw i32 %223, 1
  br label %290

285:                                              ; preds = %220
  %286 = add nsw i32 %222, 1
  br label %290

287:                                              ; preds = %277
  %288 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %289 = tail call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %288) #30
  br label %791

290:                                              ; preds = %269, %279, %285
  %291 = phi i32 [ %223, %285 ], [ %284, %279 ], [ %223, %269 ]
  %292 = phi i32 [ %286, %285 ], [ %222, %279 ], [ %222, %269 ]
  %293 = add nuw nsw i64 %221, 1
  %294 = icmp eq i64 %293, %215
  br i1 %294, label %295, label %220, !llvm.loop !107

295:                                              ; preds = %290, %205
  %296 = phi i32 [ 0, %205 ], [ %291, %290 ]
  %297 = phi i32 [ 0, %205 ], [ %292, %290 ]
  %298 = tail call noalias align 16 dereferenceable_or_null(16) i8* @malloc(i64 16) #28
  %299 = bitcast i8* %298 to %struct.Atoms_t*
  %300 = bitcast i8* %298 to i8**
  store i8* %208, i8** %300, align 16, !tbaa !76
  %301 = getelementptr inbounds %struct.Atoms_t, %struct.Atoms_t* %299, i64 0, i32 1
  store i32 %296, i32* %301, align 8, !tbaa !74
  %302 = icmp sgt i32 %81, 0
  br i1 %302, label %303, label %344

303:                                              ; preds = %295
  %304 = zext i32 %81 to i64
  %305 = and i64 %304, 1
  %306 = icmp eq i32 %81, 1
  br i1 %306, label %331, label %307

307:                                              ; preds = %303
  %308 = and i64 %304, 4294967294
  br label %309

309:                                              ; preds = %309, %307
  %310 = phi i64 [ 0, %307 ], [ %328, %309 ]
  %311 = phi i32 [ 0, %307 ], [ %327, %309 ]
  %312 = phi i64 [ 0, %307 ], [ %329, %309 ]
  %313 = getelementptr inbounds i32, i32* %95, i64 %310
  %314 = load i32, i32* %313, align 8, !tbaa !10
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %315
  %317 = load i32, i32* %316, align 4, !tbaa !10
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %316, align 4, !tbaa !10
  %319 = add nsw i32 %314, %311
  %320 = or i64 %310, 1
  %321 = getelementptr inbounds i32, i32* %95, i64 %320
  %322 = load i32, i32* %321, align 4, !tbaa !10
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %323
  %325 = load i32, i32* %324, align 4, !tbaa !10
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %324, align 4, !tbaa !10
  %327 = add nsw i32 %322, %319
  %328 = add nuw nsw i64 %310, 2
  %329 = add i64 %312, 2
  %330 = icmp eq i64 %329, %308
  br i1 %330, label %331, label %309, !llvm.loop !108

331:                                              ; preds = %309, %303
  %332 = phi i32 [ undef, %303 ], [ %327, %309 ]
  %333 = phi i64 [ 0, %303 ], [ %328, %309 ]
  %334 = phi i32 [ 0, %303 ], [ %327, %309 ]
  %335 = icmp eq i64 %305, 0
  br i1 %335, label %344, label %336

336:                                              ; preds = %331
  %337 = getelementptr inbounds i32, i32* %95, i64 %333
  %338 = load i32, i32* %337, align 4, !tbaa !10
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 %339
  %341 = load i32, i32* %340, align 4, !tbaa !10
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %340, align 4, !tbaa !10
  %343 = add nsw i32 %338, %334
  br label %344

344:                                              ; preds = %336, %331, %295
  %345 = phi i32 [ 0, %295 ], [ %82, %331 ], [ %82, %336 ]
  %346 = phi i32 [ 0, %295 ], [ %332, %331 ], [ %343, %336 ]
  %347 = sitofp i32 %346 to float
  %348 = sitofp i32 %345 to float
  %349 = fdiv contract float %347, %348
  %350 = icmp slt i32 %65, 1
  %351 = icmp slt i32 %78, 1
  %352 = icmp slt i32 %72, 1
  %353 = select i1 %351, i1 true, i1 %352
  %354 = select i1 %353, i1 true, i1 %350
  br i1 %354, label %424, label %355

355:                                              ; preds = %344
  %356 = sext i32 %67 to i64
  %357 = sext i32 %73 to i64
  %358 = mul i32 %78, %72
  %359 = mul i32 %358, %65
  %360 = zext i32 %78 to i64
  %361 = zext i32 %72 to i64
  %362 = zext i32 %65 to i64
  %363 = and i64 %362, 1
  %364 = icmp eq i32 %65, 1
  %365 = and i64 %362, 4294967294
  %366 = icmp eq i64 %363, 0
  br label %367

367:                                              ; preds = %355, %417
  %368 = phi i64 [ 0, %355 ], [ %418, %417 ]
  %369 = phi i32 [ 0, %355 ], [ %414, %417 ]
  %370 = mul nsw i64 %368, %357
  br label %371

371:                                              ; preds = %413, %367
  %372 = phi i64 [ %415, %413 ], [ 0, %367 ]
  %373 = phi i32 [ %414, %413 ], [ %369, %367 ]
  %374 = add nsw i64 %372, %370
  %375 = mul nsw i64 %374, %356
  br i1 %364, label %400, label %376

376:                                              ; preds = %371, %376
  %377 = phi i64 [ %397, %376 ], [ 0, %371 ]
  %378 = phi i32 [ %396, %376 ], [ %373, %371 ]
  %379 = phi i64 [ %398, %376 ], [ 0, %371 ]
  %380 = add nsw i64 %377, %375
  %381 = getelementptr inbounds i32, i32* %99, i64 %380
  %382 = load i32, i32* %381, align 4, !tbaa !10
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 %383
  %385 = load i32, i32* %384, align 4, !tbaa !10
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %384, align 4, !tbaa !10
  %387 = add nsw i32 %382, %378
  %388 = or i64 %377, 1
  %389 = add nsw i64 %388, %375
  %390 = getelementptr inbounds i32, i32* %99, i64 %389
  %391 = load i32, i32* %390, align 4, !tbaa !10
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 %392
  %394 = load i32, i32* %393, align 4, !tbaa !10
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %393, align 4, !tbaa !10
  %396 = add nsw i32 %391, %387
  %397 = add nuw nsw i64 %377, 2
  %398 = add i64 %379, 2
  %399 = icmp eq i64 %398, %365
  br i1 %399, label %400, label %376, !llvm.loop !109

400:                                              ; preds = %376, %371
  %401 = phi i32 [ undef, %371 ], [ %396, %376 ]
  %402 = phi i64 [ 0, %371 ], [ %397, %376 ]
  %403 = phi i32 [ %373, %371 ], [ %396, %376 ]
  br i1 %366, label %413, label %404

404:                                              ; preds = %400
  %405 = add nsw i64 %402, %375
  %406 = getelementptr inbounds i32, i32* %99, i64 %405
  %407 = load i32, i32* %406, align 4, !tbaa !10
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 %408
  %410 = load i32, i32* %409, align 4, !tbaa !10
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %409, align 4, !tbaa !10
  %412 = add nsw i32 %407, %403
  br label %413

413:                                              ; preds = %400, %404
  %414 = phi i32 [ %401, %400 ], [ %412, %404 ]
  %415 = add nuw nsw i64 %372, 1
  %416 = icmp eq i64 %415, %361
  br i1 %416, label %417, label %371, !llvm.loop !110

417:                                              ; preds = %413
  %418 = add nuw nsw i64 %368, 1
  %419 = icmp eq i64 %418, %360
  br i1 %419, label %420, label %367, !llvm.loop !111

420:                                              ; preds = %417
  %421 = shl i32 %359, 3
  %422 = sitofp i32 %414 to float
  %423 = sitofp i32 %421 to float
  br label %424

424:                                              ; preds = %344, %420
  %425 = phi float [ 0.000000e+00, %344 ], [ %423, %420 ]
  %426 = phi float [ 0.000000e+00, %344 ], [ %422, %420 ]
  %427 = icmp eq i32 %4, 0
  br i1 %427, label %428, label %429

428:                                              ; preds = %424
  tail call void @pb_SwitchToTimer(%struct.pb_TimerSet* %0, i32 3)
  br label %595

429:                                              ; preds = %424
  %430 = fdiv contract float %426, %425
  %431 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i64 0, i64 0), i32 %26)
  %432 = fpext float %24 to double
  %433 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i64 0, i64 0), double %432)
  %434 = fpext float %2 to double
  %435 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i64 0, i64 0), double %434)
  %436 = tail call i32 @putchar(i32 10)
  %437 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.44, i64 0, i64 0), i32 %13, i32 %15, i32 %17)
  %438 = fmul contract float %24, %37
  %439 = fpext float %438 to double
  %440 = fmul contract float %24, %41
  %441 = fpext float %440 to double
  %442 = fmul contract float %24, %45
  %443 = fpext float %442 to double
  %444 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @.str.45, i64 0, i64 0), double %439, double %441, double %443)
  %445 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i64 0, i64 0), i32 %49, i32 %50, i32 %51)
  %446 = fpext float %62 to double
  %447 = fpext float %69 to double
  %448 = fpext float %75 to double
  %449 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str.47, i64 0, i64 0), double %446, double %447, double %448)
  %450 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @.str.48, i64 0, i64 0), i64 %55)
  %451 = tail call i32 @putchar(i32 10)
  %452 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.49, i64 0, i64 0), i32 %60)
  %453 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.50, i64 0, i64 0), i32 %65, i32 %72, i32 %78)
  %454 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str.51, i64 0, i64 0), i32 %67, i32 %73, i32 %79)
  %455 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %81)
  %456 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.53, i64 0, i64 0), i32 %82)
  %457 = sitofp i32 %26 to double
  %458 = sitofp i32 %82 to double
  %459 = fdiv contract double %457, %458
  %460 = fmul contract double %459, 1.000000e+02
  %461 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i64 0, i64 0), double %460)
  %462 = shl nsw i64 %83, 4
  %463 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.55, i64 0, i64 0), i64 %462)
  %464 = tail call i32 @putchar(i32 10)
  %465 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @str.89, i64 0, i64 0))
  %466 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %467 = load i32, i32* %466, align 16, !tbaa !10
  %468 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.57, i64 0, i64 0), i32 0, i32 %467)
  %469 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 1
  %470 = load i32, i32* %469, align 4, !tbaa !10
  %471 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.57, i64 0, i64 0), i32 1, i32 %470)
  %472 = add nsw i32 %470, %467
  %473 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 2
  %474 = load i32, i32* %473, align 8, !tbaa !10
  %475 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.57, i64 0, i64 0), i32 2, i32 %474)
  %476 = add nsw i32 %474, %472
  %477 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 3
  %478 = load i32, i32* %477, align 4, !tbaa !10
  %479 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.57, i64 0, i64 0), i32 3, i32 %478)
  %480 = add nsw i32 %478, %476
  %481 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 4
  %482 = load i32, i32* %481, align 16, !tbaa !10
  %483 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.57, i64 0, i64 0), i32 4, i32 %482)
  %484 = add nsw i32 %482, %480
  %485 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 5
  %486 = load i32, i32* %485, align 4, !tbaa !10
  %487 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.57, i64 0, i64 0), i32 5, i32 %486)
  %488 = add nsw i32 %486, %484
  %489 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 6
  %490 = load i32, i32* %489, align 8, !tbaa !10
  %491 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.57, i64 0, i64 0), i32 6, i32 %490)
  %492 = add nsw i32 %490, %488
  %493 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 7
  %494 = load i32, i32* %493, align 4, !tbaa !10
  %495 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.57, i64 0, i64 0), i32 7, i32 %494)
  %496 = add nsw i32 %494, %492
  %497 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 8
  %498 = load i32, i32* %497, align 16, !tbaa !10
  %499 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.57, i64 0, i64 0), i32 8, i32 %498)
  %500 = add nsw i32 %498, %496
  %501 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str.58, i64 0, i64 0), i32 %500)
  %502 = fmul contract float %349, 1.000000e+02
  %503 = fpext float %502 to double
  %504 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i64 0, i64 0), double %503)
  %505 = tail call i32 @putchar(i32 10)
  %506 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @str.90, i64 0, i64 0))
  %507 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 0
  %508 = load i32, i32* %507, align 16, !tbaa !10
  %509 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.57, i64 0, i64 0), i32 0, i32 %508)
  %510 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 1
  %511 = load i32, i32* %510, align 4, !tbaa !10
  %512 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.57, i64 0, i64 0), i32 1, i32 %511)
  %513 = add nsw i32 %511, %508
  %514 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 2
  %515 = load i32, i32* %514, align 8, !tbaa !10
  %516 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.57, i64 0, i64 0), i32 2, i32 %515)
  %517 = add nsw i32 %515, %513
  %518 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3
  %519 = load i32, i32* %518, align 4, !tbaa !10
  %520 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.57, i64 0, i64 0), i32 3, i32 %519)
  %521 = add nsw i32 %519, %517
  %522 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4
  %523 = load i32, i32* %522, align 16, !tbaa !10
  %524 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.57, i64 0, i64 0), i32 4, i32 %523)
  %525 = add nsw i32 %523, %521
  %526 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 5
  %527 = load i32, i32* %526, align 4, !tbaa !10
  %528 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.57, i64 0, i64 0), i32 5, i32 %527)
  %529 = add nsw i32 %527, %525
  %530 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 6
  %531 = load i32, i32* %530, align 8, !tbaa !10
  %532 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.57, i64 0, i64 0), i32 6, i32 %531)
  %533 = add nsw i32 %531, %529
  %534 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 7
  %535 = load i32, i32* %534, align 4, !tbaa !10
  %536 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.57, i64 0, i64 0), i32 7, i32 %535)
  %537 = add nsw i32 %535, %533
  %538 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 8
  %539 = load i32, i32* %538, align 16, !tbaa !10
  %540 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.57, i64 0, i64 0), i32 8, i32 %539)
  %541 = add nsw i32 %539, %537
  %542 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str.58, i64 0, i64 0), i32 %541)
  %543 = fmul contract float %430, 1.000000e+02
  %544 = fpext float %543 to double
  %545 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i64 0, i64 0), double %544)
  %546 = tail call i32 @putchar(i32 10)
  %547 = load i32, i32* %301, align 8, !tbaa !74
  %548 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.61, i64 0, i64 0), i32 %547)
  %549 = sitofp i32 %547 to double
  %550 = fdiv contract double %549, %457
  %551 = fmul contract double %550, 1.000000e+02
  %552 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.62, i64 0, i64 0), double %551)
  %553 = tail call i32 @putchar(i32 10)
  %554 = shl nsw i32 %474, 1
  %555 = add nsw i32 %554, %470
  %556 = mul nsw i32 %478, 3
  %557 = add nsw i32 %556, %555
  %558 = shl nsw i32 %482, 2
  %559 = add nsw i32 %558, %557
  %560 = mul nsw i32 %486, 5
  %561 = add nsw i32 %560, %559
  %562 = mul nsw i32 %490, 6
  %563 = add nsw i32 %562, %561
  %564 = mul nsw i32 %494, 7
  %565 = add nsw i32 %564, %563
  %566 = shl nsw i32 %498, 3
  %567 = add nsw i32 %566, %565
  %568 = add i32 %567, %297
  %569 = add i32 %568, %547
  %570 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.63, i64 0, i64 0), i32 %569)
  %571 = shl nsw i32 %515, 1
  %572 = add nsw i32 %571, %511
  %573 = mul nsw i32 %519, 3
  %574 = add nsw i32 %573, %572
  %575 = shl nsw i32 %523, 2
  %576 = add nsw i32 %575, %574
  %577 = mul nsw i32 %527, 5
  %578 = add nsw i32 %577, %576
  %579 = mul nsw i32 %531, 6
  %580 = add nsw i32 %579, %578
  %581 = mul nsw i32 %535, 7
  %582 = add nsw i32 %581, %580
  %583 = shl nsw i32 %539, 3
  %584 = add nsw i32 %583, %582
  %585 = add i32 %584, %297
  %586 = add i32 %585, %547
  %587 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([67 x i8], [67 x i8]* @.str.64, i64 0, i64 0), i32 %586)
  %588 = tail call i32 @putchar(i32 10)
  %589 = load i32, i32* %7, align 4, !tbaa !10
  %590 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0), i32 %589)
  %591 = tail call i32 @putchar(i32 10)
  tail call void @pb_SwitchToTimer(%struct.pb_TimerSet* %0, i32 3)
  %592 = uitofp i64 %55 to double
  %593 = fmul contract double %592, 0x3EB0000000000000
  %594 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @.str.66, i64 0, i64 0), double %593)
  br label %595

595:                                              ; preds = %428, %429
  %596 = shl nsw i32 %40, 2
  %597 = bitcast float** %10 to i8**
  %598 = call i32 @hipMalloc(i8** nonnull %597, i64 %55)
  %599 = call i32 @hipGetLastError()
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %604, label %601

601:                                              ; preds = %595
  %602 = call i8* @hipGetErrorString(i32 %599)
  %603 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.67, i64 0, i64 0), i8* %602, i32 791)
  br label %791

604:                                              ; preds = %595
  %605 = load i8*, i8** %597, align 8, !tbaa !9
  %606 = call i32 @hipMemset(i8* %605, i32 0, i64 %55)
  %607 = call i32 @hipGetLastError()
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %612, label %609

609:                                              ; preds = %604
  %610 = call i8* @hipGetErrorString(i32 %607)
  %611 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.67, i64 0, i64 0), i8* %610, i32 793)
  br label %791

612:                                              ; preds = %604
  %613 = shl nsw i64 %83, 4
  br i1 %427, label %618, label %614

614:                                              ; preds = %612
  %615 = uitofp i64 %613 to double
  %616 = fmul contract double %615, 0x3EB0000000000000
  %617 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([48 x i8], [48 x i8]* @.str.68, i64 0, i64 0), double %616)
  br label %618

618:                                              ; preds = %612, %614
  %619 = bitcast %struct.HIP_vector_type.0** %11 to i8**
  %620 = call i32 @hipMalloc(i8** nonnull %619, i64 %613)
  %621 = call i32 @hipGetLastError()
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %626, label %623

623:                                              ; preds = %618
  %624 = call i8* @hipGetErrorString(i32 %621)
  %625 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.67, i64 0, i64 0), i8* %624, i32 799)
  br label %791

626:                                              ; preds = %618
  %627 = load i8*, i8** %619, align 8, !tbaa !9
  %628 = call i32 @hipMemcpy(i8* %627, i8* %84, i64 %613, i32 1)
  %629 = call i32 @hipGetLastError()
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %634, label %631

631:                                              ; preds = %626
  %632 = call i8* @hipGetErrorString(i32 %629)
  %633 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.67, i64 0, i64 0), i8* %632, i32 802)
  br label %791

634:                                              ; preds = %626
  %635 = load %struct.HIP_vector_type.0*, %struct.HIP_vector_type.0** %11, align 8, !tbaa !9
  %636 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0* %635, i64 %91
  %637 = call i32 @hipMemcpyToSymbol(i8* nonnull bitcast (i32* @NbrListLen to i8*), i8* nonnull %30, i64 4, i64 0, i32 1)
  %638 = call i32 @hipGetLastError()
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %643, label %640

640:                                              ; preds = %634
  %641 = call i8* @hipGetErrorString(i32 %638)
  %642 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.67, i64 0, i64 0), i8* %641, i32 805)
  br label %791

643:                                              ; preds = %634
  %644 = load i32, i32* %7, align 4, !tbaa !10
  %645 = sext i32 %644 to i64
  %646 = mul nsw i64 %645, 12
  %647 = call i32 @hipMemcpyToSymbol(i8* nonnull bitcast ([1331 x %struct.HIP_vector_type]* @NbrList to i8*), i8* nonnull %29, i64 %646, i64 0, i32 1)
  %648 = call i32 @hipGetLastError()
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %653, label %650

650:                                              ; preds = %643
  %651 = call i8* @hipGetErrorString(i32 %648)
  %652 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.67, i64 0, i64 0), i8* %651, i32 807)
  br label %791

653:                                              ; preds = %643
  br i1 %427, label %656, label %654

654:                                              ; preds = %653
  %655 = call i32 @putchar(i32 10)
  br label %656

656:                                              ; preds = %654, %653
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* %0, i32 2)
  %657 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @.str.69, i64 0, i64 0), i32 %48)
  %658 = zext i32 %44 to i64
  %659 = shl nuw i64 %658, 32
  %660 = zext i32 %596 to i64
  %661 = or i64 %659, %660
  %662 = icmp sgt i32 %48, 0
  br i1 %662, label %665, label %681

663:                                              ; preds = %674
  %664 = icmp eq i32 %677, %48
  br i1 %664, label %681, label %665, !llvm.loop !112

665:                                              ; preds = %656, %663
  %666 = phi i32 [ %677, %663 ], [ 0, %656 ]
  %667 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.70, i64 0, i64 0), i32 %666)
  %668 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !9
  %669 = call i32 @fflush(%struct._IO_FILE* %668)
  %670 = call i32 @__hipPushCallConfiguration(i64 %661, i32 1, i64 34359738376, i32 2, i64 0, %struct.ihipStream_t* null)
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %672, label %674

672:                                              ; preds = %665
  %673 = load float*, float** %10, align 8, !tbaa !9
  call void @_ZL44__device_stub__cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfi(i32 %67, i32 %73, %struct.HIP_vector_type.0* %636, float %24, float %35, float %36, float* %673, i32 %666)
  br label %674

674:                                              ; preds = %665, %672
  %675 = call i32 @hipGetLastError()
  %676 = icmp eq i32 %675, 0
  %677 = add nuw nsw i32 %666, 1
  br i1 %676, label %663, label %678

678:                                              ; preds = %674
  %679 = call i8* @hipGetErrorString(i32 %675)
  %680 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.67, i64 0, i64 0), i8* %679, i32 820)
  br label %791

681:                                              ; preds = %663, %656
  %682 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([51 x i8], [51 x i8]* @str, i64 0, i64 0))
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* %0, i32 3)
  %683 = load i8*, i8** %597, align 8, !tbaa !9
  %684 = call i32 @hipMemcpy(i8* %56, i8* %683, i64 %55, i32 2)
  %685 = call i32 @hipGetLastError()
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %690, label %687

687:                                              ; preds = %681
  %688 = call i8* @hipGetErrorString(i32 %685)
  %689 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.67, i64 0, i64 0), i8* %688, i32 828)
  br label %791

690:                                              ; preds = %681
  %691 = load i8*, i8** %597, align 8, !tbaa !9
  %692 = call i32 @hipFree(i8* %691)
  %693 = load i8*, i8** %619, align 8, !tbaa !9
  %694 = call i32 @hipFree(i8* %693)
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* %0, i32 6)
  %695 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %1, i64 0, i32 1
  %696 = icmp slt i32 %13, 1
  %697 = icmp slt i32 %15, 1
  %698 = icmp sgt i32 %17, 0
  br i1 %698, label %699, label %783

699:                                              ; preds = %690
  %700 = sext i32 %13 to i64
  %701 = sext i32 %15 to i64
  %702 = zext i32 %17 to i64
  %703 = zext i32 %15 to i64
  %704 = zext i32 %13 to i64
  %705 = select i1 %697, i1 true, i1 %696
  %706 = and i64 %704, 1
  %707 = icmp eq i32 %13, 1
  %708 = and i64 %704, 4294967294
  %709 = icmp eq i64 %706, 0
  br label %710

710:                                              ; preds = %699, %780
  %711 = phi i64 [ 0, %699 ], [ %781, %780 ]
  %712 = trunc i64 %711 to i32
  %713 = lshr i32 %712, 3
  %714 = mul nsw i32 %713, %44
  %715 = shl i64 %711, 3
  %716 = and i64 %715, 56
  %717 = mul nsw i64 %711, %701
  br i1 %705, label %780, label %718

718:                                              ; preds = %710
  %719 = load float*, float** %695, align 8, !tbaa !92
  br label %720

720:                                              ; preds = %777, %718
  %721 = phi i64 [ %778, %777 ], [ 0, %718 ]
  %722 = trunc i64 %721 to i32
  %723 = lshr i32 %722, 3
  %724 = and i64 %721, 7
  %725 = add nsw i32 %723, %714
  %726 = mul nsw i32 %725, %40
  %727 = or i64 %724, %716
  %728 = shl nuw nsw i64 %727, 3
  %729 = add nsw i64 %721, %717
  %730 = mul nsw i64 %729, %700
  br i1 %707, label %762, label %731

731:                                              ; preds = %720, %731
  %732 = phi i64 [ %759, %731 ], [ 0, %720 ]
  %733 = phi i64 [ %760, %731 ], [ 0, %720 ]
  %734 = trunc i64 %732 to i32
  %735 = lshr i32 %734, 3
  %736 = and i64 %732, 6
  %737 = add nsw i32 %735, %726
  %738 = shl nsw i32 %737, 9
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds float, float* %57, i64 %739
  %741 = or i64 %736, %728
  %742 = add nsw i64 %732, %730
  %743 = getelementptr inbounds float, float* %740, i64 %741
  %744 = load float, float* %743, align 8, !tbaa !61
  %745 = getelementptr inbounds float, float* %719, i64 %742
  store float %744, float* %745, align 4, !tbaa !61
  %746 = or i64 %732, 1
  %747 = trunc i64 %732 to i32
  %748 = lshr i32 %747, 3
  %749 = and i64 %746, 7
  %750 = add nsw i32 %748, %726
  %751 = shl nsw i32 %750, 9
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds float, float* %57, i64 %752
  %754 = or i64 %749, %728
  %755 = add nsw i64 %746, %730
  %756 = getelementptr inbounds float, float* %753, i64 %754
  %757 = load float, float* %756, align 4, !tbaa !61
  %758 = getelementptr inbounds float, float* %719, i64 %755
  store float %757, float* %758, align 4, !tbaa !61
  %759 = add nuw nsw i64 %732, 2
  %760 = add i64 %733, 2
  %761 = icmp eq i64 %760, %708
  br i1 %761, label %762, label %731, !llvm.loop !113

762:                                              ; preds = %731, %720
  %763 = phi i64 [ 0, %720 ], [ %759, %731 ]
  br i1 %709, label %777, label %764

764:                                              ; preds = %762
  %765 = trunc i64 %763 to i32
  %766 = lshr i32 %765, 3
  %767 = and i64 %763, 7
  %768 = add nsw i32 %766, %726
  %769 = shl nsw i32 %768, 9
  %770 = sext i32 %769 to i64
  %771 = getelementptr inbounds float, float* %57, i64 %770
  %772 = or i64 %767, %728
  %773 = add nsw i64 %763, %730
  %774 = getelementptr inbounds float, float* %771, i64 %772
  %775 = load float, float* %774, align 4, !tbaa !61
  %776 = getelementptr inbounds float, float* %719, i64 %773
  store float %775, float* %776, align 4, !tbaa !61
  br label %777

777:                                              ; preds = %762, %764
  %778 = add nuw nsw i64 %721, 1
  %779 = icmp eq i64 %778, %703
  br i1 %779, label %780, label %720, !llvm.loop !114

780:                                              ; preds = %777, %710
  %781 = add nuw nsw i64 %711, 1
  %782 = icmp eq i64 %781, %702
  br i1 %782, label %783, label %710, !llvm.loop !115

783:                                              ; preds = %780, %690
  %784 = load i32, i32* %301, align 8, !tbaa !74
  %785 = icmp sgt i32 %784, 0
  br i1 %785, label %786, label %790

786:                                              ; preds = %783
  %787 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @str.88, i64 0, i64 0))
  %788 = call i32 @cpu_compute_cutoff_potential_lattice(%struct.Lattice_t* %1, float %2, %struct.Atoms_t* nonnull %299)
  %789 = call i32 @putchar(i32 10)
  br label %790

790:                                              ; preds = %786, %783
  call void @free(i8* %56) #28
  call void @free(i8* %84) #28
  call void @free(i8* %94) #28
  call void @free_atom(%struct.Atoms_t* nonnull %299)
  br label %791

791:                                              ; preds = %287, %159, %110, %687, %678, %650, %640, %631, %623, %609, %601, %790, %202
  %792 = phi i32 [ -1, %678 ], [ 0, %790 ], [ -1, %687 ], [ -1, %650 ], [ -1, %640 ], [ -1, %631 ], [ -1, %623 ], [ -1, %609 ], [ -1, %601 ], [ -1, %202 ], [ -1, %110 ], [ -1, %159 ], [ -1, %287 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #28
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #28
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %32) #28
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %31) #28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %30) #28
  call void @llvm.lifetime.end.p0i8(i64 15972, i8* nonnull %29) #28
  ret i32 %792
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.ceil.f32(float) #16

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local float @sqrtf(float) local_unnamed_addr #21

declare dso_local i32 @hipMalloc(i8**, i64) local_unnamed_addr #12

declare dso_local i32 @hipGetLastError() local_unnamed_addr #12

declare dso_local i8* @hipGetErrorString(i32) local_unnamed_addr #12

declare dso_local i32 @hipMemset(i8*, i32, i64) local_unnamed_addr #12

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #12

; Function Attrs: norecurse uwtable
define internal void @_ZL44__device_stub__cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfi(i32 %0, i32 %1, %struct.HIP_vector_type.0* %2, float %3, float %4, float %5, float* %6, i32 %7) #22 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.HIP_vector_type.0*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.dim3, align 8
  %18 = alloca %struct.dim3, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store i32 %0, i32* %9, align 4, !tbaa !10
  store i32 %1, i32* %10, align 4, !tbaa !10
  store %struct.HIP_vector_type.0* %2, %struct.HIP_vector_type.0** %11, align 8, !tbaa !9
  store float %3, float* %12, align 4, !tbaa !61
  store float %4, float* %13, align 4, !tbaa !61
  store float %5, float* %14, align 4, !tbaa !61
  store float* %6, float** %15, align 8, !tbaa !9
  store i32 %7, i32* %16, align 4, !tbaa !10
  %21 = alloca [8 x i8*], align 16
  %22 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 0
  %23 = bitcast [8 x i8*]* %21 to i32**
  store i32* %9, i32** %23, align 16
  %24 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 1
  %25 = bitcast i8** %24 to i32**
  store i32* %10, i32** %25, align 8
  %26 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 2
  %27 = bitcast i8** %26 to %struct.HIP_vector_type.0***
  store %struct.HIP_vector_type.0** %11, %struct.HIP_vector_type.0*** %27, align 16
  %28 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 3
  %29 = bitcast i8** %28 to float**
  store float* %12, float** %29, align 8
  %30 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 4
  %31 = bitcast i8** %30 to float**
  store float* %13, float** %31, align 16
  %32 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 5
  %33 = bitcast i8** %32 to float**
  store float* %14, float** %33, align 8
  %34 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 6
  %35 = bitcast i8** %34 to float***
  store float** %15, float*** %35, align 16
  %36 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 7
  %37 = bitcast i8** %36 to i32**
  store i32* %16, i32** %37, align 8
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
  %50 = call i32 @hipLaunchKernel(i8* bitcast (void (i32, i32, %struct.HIP_vector_type.0*, float, float, float, float*, i32)** @_ZL29cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfi to i8*), i64 %43, i32 %45, i64 %47, i32 %49, i8** nonnull %22, i64 %39, %struct.ihipStream_t* %41)
  ret void
}

declare dso_local i32 @hipFree(i8*) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @cpu_compute_cutoff_potential_lattice(%struct.Lattice_t* nocapture readonly %0, float %1, %struct.Atoms_t* nocapture readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %0, i64 0, i32 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !94
  %6 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %0, i64 0, i32 0, i32 1
  %7 = load i32, i32* %6, align 4, !tbaa !95
  %8 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %0, i64 0, i32 0, i32 2
  %9 = load i32, i32* %8, align 8, !tbaa !96
  %10 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %0, i64 0, i32 0, i32 3, i32 0
  %11 = load float, float* %10, align 4, !tbaa !116
  %12 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %0, i64 0, i32 0, i32 3, i32 1
  %13 = load float, float* %12, align 4, !tbaa !117
  %14 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %0, i64 0, i32 0, i32 3, i32 2
  %15 = load float, float* %14, align 4, !tbaa !97
  %16 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %0, i64 0, i32 0, i32 4
  %17 = load float, float* %16, align 8, !tbaa !98
  %18 = getelementptr inbounds %struct.Atoms_t, %struct.Atoms_t* %2, i64 0, i32 1
  %19 = load i32, i32* %18, align 8, !tbaa !74
  %20 = getelementptr inbounds %struct.Atoms_t, %struct.Atoms_t* %2, i64 0, i32 0
  %21 = load %struct.Atom_t*, %struct.Atom_t** %20, align 8, !tbaa !76
  %22 = fmul contract float %1, %1
  %23 = fdiv contract float 1.000000e+00, %22
  %24 = fdiv contract float 1.000000e+00, %17
  %25 = fmul contract float %24, %1
  %26 = tail call contract float @llvm.ceil.f32(float %25)
  %27 = fptosi float %26 to i32
  %28 = add nsw i32 %27, -1
  %29 = bitcast %struct.Atom_t* %21 to <2 x float>*
  %30 = load <2 x float>, <2 x float>* %29, align 4, !tbaa !61
  %31 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %21, i64 0, i32 2
  %32 = load float, float* %31, align 4, !tbaa !80
  %33 = icmp sgt i32 %19, 1
  br i1 %33, label %34, label %56

34:                                               ; preds = %3
  %35 = zext i32 %19 to i64
  br label %36

36:                                               ; preds = %36, %34
  %37 = phi i64 [ 1, %34 ], [ %51, %36 ]
  %38 = phi float [ %32, %34 ], [ %50, %36 ]
  %39 = phi float [ %32, %34 ], [ %49, %36 ]
  %40 = phi <2 x float> [ %30, %34 ], [ %46, %36 ]
  %41 = phi <2 x float> [ %30, %34 ], [ %45, %36 ]
  %42 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %21, i64 %37, i32 0
  %43 = bitcast float* %42 to <2 x float>*
  %44 = load <2 x float>, <2 x float>* %43, align 4, !tbaa !61
  %45 = call contract <2 x float> @llvm.minnum.v2f32(<2 x float> %41, <2 x float> %44)
  %46 = call contract <2 x float> @llvm.maxnum.v2f32(<2 x float> %40, <2 x float> %44)
  %47 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %21, i64 %37, i32 2
  %48 = load float, float* %47, align 4, !tbaa !80
  %49 = tail call contract float @llvm.minnum.f32(float %39, float %48) #28
  %50 = tail call contract float @llvm.maxnum.f32(float %38, float %48) #28
  %51 = add nuw nsw i64 %37, 1
  %52 = icmp eq i64 %51, %35
  br i1 %52, label %53, label %36, !llvm.loop !81

53:                                               ; preds = %36
  %54 = call contract <2 x float> @llvm.maxnum.v2f32(<2 x float> %40, <2 x float> %44)
  %55 = call contract <2 x float> @llvm.minnum.v2f32(<2 x float> %41, <2 x float> %44)
  br label %56

56:                                               ; preds = %53, %3
  %57 = phi float [ %32, %3 ], [ %49, %53 ]
  %58 = phi float [ %32, %3 ], [ %50, %53 ]
  %59 = phi <2 x float> [ %30, %3 ], [ %54, %53 ]
  %60 = phi <2 x float> [ %30, %3 ], [ %55, %53 ]
  %61 = fsub contract <2 x float> %59, %60
  %62 = fmul contract <2 x float> %61, <float 2.500000e-01, float 2.500000e-01>
  %63 = call contract <2 x float> @llvm.floor.v2f32(<2 x float> %62)
  %64 = fptosi <2 x float> %63 to <2 x i32>
  %65 = add nsw <2 x i32> %64, <i32 1, i32 1>
  %66 = fsub contract float %58, %57
  %67 = fmul contract float %66, 2.500000e-01
  %68 = tail call contract float @llvm.floor.f32(float %67)
  %69 = fptosi float %68 to i32
  %70 = add nsw i32 %69, 1
  %71 = extractelement <2 x i32> %65, i64 1
  %72 = mul i32 %71, %70
  %73 = extractelement <2 x i32> %65, i64 0
  %74 = mul i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = shl nsw i64 %75, 2
  %77 = tail call noalias align 16 i8* @malloc(i64 %76) #28
  %78 = bitcast i8* %77 to i32*
  %79 = icmp sgt i32 %74, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %56
  %81 = zext i32 %74 to i64
  %82 = shl nuw nsw i64 %81, 2
  call void @llvm.memset.p0i8.i64(i8* align 16 %77, i8 -1, i64 %82, i1 false), !tbaa !10
  br label %83

83:                                               ; preds = %80, %56
  %84 = sext i32 %19 to i64
  %85 = shl nsw i64 %84, 2
  %86 = tail call noalias align 16 i8* @malloc(i64 %85) #28
  %87 = bitcast i8* %86 to i32*
  %88 = icmp sgt i32 %19, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = zext i32 %19 to i64
  %91 = shl nuw nsw i64 %90, 2
  call void @llvm.memset.p0i8.i64(i8* align 16 %86, i8 -1, i64 %91, i1 false), !tbaa !10
  %92 = zext i32 %19 to i64
  %93 = extractelement <2 x float> %60, i64 0
  %94 = extractelement <2 x float> %60, i64 1
  br label %104

95:                                               ; preds = %137, %83
  %96 = add nsw i32 %5, -1
  %97 = add nsw i32 %7, -1
  %98 = add nsw i32 %9, -1
  %99 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %0, i64 0, i32 1
  br i1 %79, label %100, label %257

100:                                              ; preds = %95
  %101 = sext i32 %5 to i64
  %102 = sext i32 %7 to i64
  %103 = zext i32 %74 to i64
  br label %140

104:                                              ; preds = %89, %137
  %105 = phi i64 [ 0, %89 ], [ %138, %137 ]
  %106 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %21, i64 %105, i32 3
  %107 = load float, float* %106, align 4, !tbaa !105
  %108 = fcmp contract oeq float %107, 0.000000e+00
  br i1 %108, label %137, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %21, i64 %105, i32 0
  %111 = load float, float* %110, align 4, !tbaa !77
  %112 = fsub contract float %111, %93
  %113 = fmul contract float %112, 2.500000e-01
  %114 = tail call contract float @llvm.floor.f32(float %113)
  %115 = fptosi float %114 to i32
  %116 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %21, i64 %105, i32 1
  %117 = load float, float* %116, align 4, !tbaa !79
  %118 = fsub contract float %117, %94
  %119 = fmul contract float %118, 2.500000e-01
  %120 = tail call contract float @llvm.floor.f32(float %119)
  %121 = fptosi float %120 to i32
  %122 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %21, i64 %105, i32 2
  %123 = load float, float* %122, align 4, !tbaa !80
  %124 = fsub contract float %123, %57
  %125 = fmul contract float %124, 2.500000e-01
  %126 = tail call contract float @llvm.floor.f32(float %125)
  %127 = fptosi float %126 to i32
  %128 = mul nsw i32 %71, %127
  %129 = add nsw i32 %128, %121
  %130 = mul nsw i32 %129, %73
  %131 = add nsw i32 %130, %115
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %78, i64 %132
  %134 = load i32, i32* %133, align 4, !tbaa !10
  %135 = getelementptr inbounds i32, i32* %87, i64 %105
  store i32 %134, i32* %135, align 4, !tbaa !10
  %136 = trunc i64 %105 to i32
  store i32 %136, i32* %133, align 4, !tbaa !10
  br label %137

137:                                              ; preds = %104, %109
  %138 = add nuw nsw i64 %105, 1
  %139 = icmp eq i64 %138, %92
  br i1 %139, label %95, label %104, !llvm.loop !118

140:                                              ; preds = %100, %254
  %141 = phi i64 [ 0, %100 ], [ %255, %254 ]
  %142 = getelementptr inbounds i32, i32* %78, i64 %141
  %143 = load i32, i32* %142, align 4, !tbaa !10
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %254, label %145

145:                                              ; preds = %140, %250
  %146 = phi i32 [ %252, %250 ], [ %143, %140 ]
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %21, i64 %147, i32 0
  %149 = load float, float* %148, align 4, !tbaa !77
  %150 = fsub contract float %149, %11
  %151 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %21, i64 %147, i32 1
  %152 = load float, float* %151, align 4, !tbaa !79
  %153 = fsub contract float %152, %13
  %154 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %21, i64 %147, i32 2
  %155 = load float, float* %154, align 4, !tbaa !80
  %156 = fsub contract float %155, %15
  %157 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %21, i64 %147, i32 3
  %158 = load float, float* %157, align 4, !tbaa !105
  %159 = fmul contract float %24, %150
  %160 = fptosi float %159 to i32
  %161 = fmul contract float %24, %153
  %162 = fptosi float %161 to i32
  %163 = fmul contract float %24, %156
  %164 = fptosi float %163 to i32
  %165 = sub nsw i32 %160, %28
  %166 = add i32 %160, %27
  %167 = sub nsw i32 %162, %28
  %168 = add i32 %162, %27
  %169 = sub nsw i32 %164, %28
  %170 = add i32 %164, %27
  %171 = icmp sgt i32 %165, 0
  %172 = select i1 %171, i32 %165, i32 0
  %173 = icmp slt i32 %166, %5
  %174 = select i1 %173, i32 %166, i32 %96
  %175 = icmp sgt i32 %167, 0
  %176 = select i1 %175, i32 %167, i32 0
  %177 = icmp slt i32 %168, %7
  %178 = select i1 %177, i32 %168, i32 %97
  %179 = icmp sgt i32 %169, 0
  %180 = select i1 %179, i32 %169, i32 0
  %181 = icmp slt i32 %170, %9
  %182 = select i1 %181, i32 %170, i32 %98
  %183 = sitofp i32 %172 to float
  %184 = fmul contract float %17, %183
  %185 = fsub contract float %184, %150
  %186 = sitofp i32 %176 to float
  %187 = fmul contract float %17, %186
  %188 = fsub contract float %187, %153
  %189 = icmp sgt i32 %172, %174
  %190 = icmp sgt i32 %180, %182
  %191 = icmp sgt i32 %176, %178
  %192 = select i1 %190, i1 true, i1 %191
  %193 = select i1 %192, i1 true, i1 %189
  br i1 %193, label %250, label %194

194:                                              ; preds = %145
  %195 = sitofp i32 %180 to float
  %196 = fmul contract float %17, %195
  %197 = fsub contract float %196, %156
  %198 = zext i32 %176 to i64
  %199 = zext i32 %172 to i64
  %200 = add i32 %178, 1
  %201 = zext i32 %180 to i64
  %202 = add i32 %182, 1
  %203 = zext i32 %202 to i64
  %204 = zext i32 %200 to i64
  br label %205

205:                                              ; preds = %194, %246
  %206 = phi i64 [ %201, %194 ], [ %247, %246 ]
  %207 = phi float [ %197, %194 ], [ %248, %246 ]
  %208 = mul nsw i64 %206, %102
  %209 = fmul contract float %207, %207
  br label %210

210:                                              ; preds = %205, %242
  %211 = phi i64 [ %198, %205 ], [ %243, %242 ]
  %212 = phi float [ %188, %205 ], [ %244, %242 ]
  %213 = add nsw i64 %211, %208
  %214 = mul nsw i64 %213, %101
  %215 = fmul contract float %212, %212
  %216 = fadd contract float %209, %215
  %217 = add nsw i64 %214, %199
  %218 = load float*, float** %99, align 8, !tbaa !92
  %219 = getelementptr inbounds float, float* %218, i64 %217
  br label %220

220:                                              ; preds = %210, %237
  %221 = phi i32 [ %172, %210 ], [ %238, %237 ]
  %222 = phi float [ %185, %210 ], [ %240, %237 ]
  %223 = phi float* [ %219, %210 ], [ %239, %237 ]
  %224 = fmul contract float %222, %222
  %225 = fadd contract float %216, %224
  %226 = fcmp contract ult float %225, %22
  br i1 %226, label %227, label %237

227:                                              ; preds = %220
  %228 = fmul contract float %23, %225
  %229 = fsub contract float 1.000000e+00, %228
  %230 = tail call contract float @sqrtf(float %225) #28
  %231 = fdiv contract float 1.000000e+00, %230
  %232 = fmul contract float %158, %231
  %233 = fmul contract float %229, %232
  %234 = fmul contract float %229, %233
  %235 = load float, float* %223, align 4, !tbaa !61
  %236 = fadd contract float %235, %234
  store float %236, float* %223, align 4, !tbaa !61
  br label %237

237:                                              ; preds = %220, %227
  %238 = add nuw i32 %221, 1
  %239 = getelementptr inbounds float, float* %223, i64 1
  %240 = fadd contract float %17, %222
  %241 = icmp eq i32 %221, %174
  br i1 %241, label %242, label %220, !llvm.loop !119

242:                                              ; preds = %237
  %243 = add nuw nsw i64 %211, 1
  %244 = fadd contract float %17, %212
  %245 = icmp eq i64 %243, %204
  br i1 %245, label %246, label %210, !llvm.loop !120

246:                                              ; preds = %242
  %247 = add nuw nsw i64 %206, 1
  %248 = fadd contract float %17, %207
  %249 = icmp eq i64 %247, %203
  br i1 %249, label %250, label %205, !llvm.loop !121

250:                                              ; preds = %246, %145
  %251 = getelementptr inbounds i32, i32* %87, i64 %147
  %252 = load i32, i32* %251, align 4, !tbaa !10
  %253 = icmp eq i32 %252, -1
  br i1 %253, label %254, label %145, !llvm.loop !122

254:                                              ; preds = %250, %140
  %255 = add nuw nsw i64 %141, 1
  %256 = icmp eq i64 %255, %103
  br i1 %256, label %257, label %140, !llvm.loop !123

257:                                              ; preds = %254, %95
  tail call void @free(i8* %86) #28
  tail call void @free(i8* %77) #28
  ret i32 0
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #23 {
  %3 = alloca %struct.timeval, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pb_TimerSet, align 8
  store i32 %0, i32* %4, align 4, !tbaa !10
  %6 = bitcast %struct.pb_TimerSet* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 288, i8* nonnull %6) #28
  %7 = call %struct.pb_Parameters* @pb_ReadParameters(i32* nonnull %4, i8** %1)
  %8 = icmp eq %struct.pb_Parameters* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @exit(i32 1) #32
  unreachable

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.pb_Parameters, %struct.pb_Parameters* %7, i64 0, i32 1
  %12 = load i8**, i8*** %11, align 8, !tbaa !8
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi i64 [ %18, %13 ], [ 0, %10 ]
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = load i8*, i8** %15, align 8, !tbaa !9
  %17 = icmp eq i8* %16, null
  %18 = add nuw i64 %14, 1
  br i1 %17, label %19, label %13, !llvm.loop !29

19:                                               ; preds = %13
  %20 = trunc i64 %14 to i32
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %24 = tail call i64 @fwrite(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.74, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %23) #30
  tail call void @exit(i32 1) #32
  unreachable

25:                                               ; preds = %19
  %26 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #28
  %27 = call i32 @gettimeofday(%struct.timeval* nonnull %3, %struct.timezone* null) #28
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 0
  %29 = load i64, i64* %28, align 8, !tbaa !35
  %30 = mul nsw i64 %29, 1000000
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 1
  %32 = load i64, i64* %31, align 8, !tbaa !38
  %33 = add nsw i64 %30, %32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #28
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
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %54, i8 0, i64 64, i1 false) #28
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 1)
  %55 = load i8*, i8** %12, align 8, !tbaa !9
  %56 = tail call %struct.Atoms_t* @read_atom_file(i8* %55)
  %57 = icmp eq %struct.Atoms_t* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %25
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %60 = tail call i64 @fwrite(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.75, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %59) #30
  tail call void @exit(i32 1) #32
  unreachable

61:                                               ; preds = %25
  %62 = getelementptr inbounds %struct.Atoms_t, %struct.Atoms_t* %56, i64 0, i32 1
  %63 = load i32, i32* %62, align 8, !tbaa !74
  %64 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.76, i64 0, i64 0), i32 %63, i8* %55)
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 6)
  %65 = getelementptr inbounds %struct.Atoms_t, %struct.Atoms_t* %56, i64 0, i32 0
  %66 = load %struct.Atom_t*, %struct.Atom_t** %65, align 8, !tbaa !76
  %67 = bitcast %struct.Atom_t* %66 to <2 x float>*
  %68 = load <2 x float>, <2 x float>* %67, align 4, !tbaa !61
  %69 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %66, i64 0, i32 2
  %70 = load float, float* %69, align 4, !tbaa !80
  %71 = icmp sgt i32 %63, 1
  %72 = bitcast %struct.Atom_t* %66 to i8*
  br i1 %71, label %73, label %95

73:                                               ; preds = %61
  %74 = zext i32 %63 to i64
  br label %75

75:                                               ; preds = %75, %73
  %76 = phi i64 [ 1, %73 ], [ %90, %75 ]
  %77 = phi float [ %70, %73 ], [ %89, %75 ]
  %78 = phi float [ %70, %73 ], [ %88, %75 ]
  %79 = phi <2 x float> [ %68, %73 ], [ %84, %75 ]
  %80 = phi <2 x float> [ %68, %73 ], [ %85, %75 ]
  %81 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %66, i64 %76, i32 0
  %82 = bitcast float* %81 to <2 x float>*
  %83 = load <2 x float>, <2 x float>* %82, align 4, !tbaa !61
  %84 = call contract <2 x float> @llvm.minnum.v2f32(<2 x float> %79, <2 x float> %83)
  %85 = call contract <2 x float> @llvm.maxnum.v2f32(<2 x float> %80, <2 x float> %83)
  %86 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %66, i64 %76, i32 2
  %87 = load float, float* %86, align 4, !tbaa !80
  %88 = tail call contract float @llvm.minnum.f32(float %78, float %87) #28
  %89 = tail call contract float @llvm.maxnum.f32(float %77, float %87) #28
  %90 = add nuw nsw i64 %76, 1
  %91 = icmp eq i64 %90, %74
  br i1 %91, label %92, label %75, !llvm.loop !81

92:                                               ; preds = %75
  %93 = call contract <2 x float> @llvm.maxnum.v2f32(<2 x float> %80, <2 x float> %83)
  %94 = call contract <2 x float> @llvm.minnum.v2f32(<2 x float> %79, <2 x float> %83)
  br label %95

95:                                               ; preds = %92, %61
  %96 = phi float [ %70, %61 ], [ %88, %92 ]
  %97 = phi float [ %70, %61 ], [ %89, %92 ]
  %98 = phi <2 x float> [ %68, %61 ], [ %94, %92 ]
  %99 = phi <2 x float> [ %68, %61 ], [ %93, %92 ]
  %100 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.91, i64 0, i64 0))
  %101 = extractelement <2 x float> %98, i64 0
  %102 = fpext float %101 to double
  %103 = extractelement <2 x float> %98, i64 1
  %104 = fpext float %103 to double
  %105 = fpext float %96 to double
  %106 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.78, i64 0, i64 0), double %102, double %104, double %105)
  %107 = extractelement <2 x float> %99, i64 0
  %108 = fpext float %107 to double
  %109 = extractelement <2 x float> %99, i64 1
  %110 = fpext float %109 to double
  %111 = fpext float %97 to double
  %112 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.79, i64 0, i64 0), double %108, double %110, double %111)
  %113 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str.80, i64 0, i64 0), double 5.000000e-01)
  %114 = fadd contract <2 x float> %98, <float -5.000000e-01, float -5.000000e-01>
  %115 = fadd contract float %96, -5.000000e-01
  %116 = fadd contract float %107, 5.000000e-01
  %117 = fadd contract float %109, 5.000000e-01
  %118 = fadd contract float %97, 5.000000e-01
  %119 = extractelement <2 x float> %114, i64 0
  %120 = fsub contract float %116, %119
  %121 = fpext float %120 to double
  %122 = extractelement <2 x float> %114, i64 1
  %123 = fsub contract float %117, %122
  %124 = fpext float %123 to double
  %125 = fsub contract float %118, %115
  %126 = fpext float %125 to double
  %127 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.81, i64 0, i64 0), double %121, double %124, double %126)
  %128 = fmul contract float %120, 2.000000e+00
  %129 = tail call contract float @llvm.floor.f32(float %128) #28
  %130 = fptosi float %129 to i32
  %131 = add nsw i32 %130, 1
  %132 = fmul contract float %123, 2.000000e+00
  %133 = tail call contract float @llvm.floor.f32(float %132) #28
  %134 = fptosi float %133 to i32
  %135 = add nsw i32 %134, 1
  %136 = fmul contract float %125, 2.000000e+00
  %137 = tail call contract float @llvm.floor.f32(float %136) #28
  %138 = fptosi float %137 to i32
  %139 = add nsw i32 %138, 1
  %140 = tail call noalias align 16 dereferenceable_or_null(40) i8* @malloc(i64 40) #28
  %141 = bitcast i8* %140 to %struct.Lattice_t*
  %142 = icmp eq i8* %140, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %95
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %145 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %144) #29
  tail call void @exit(i32 1) #32
  unreachable

146:                                              ; preds = %95
  %147 = bitcast i8* %140 to i32*
  store i32 %131, i32* %147, align 16, !tbaa.struct !91
  %148 = getelementptr inbounds i8, i8* %140, i64 4
  %149 = bitcast i8* %148 to i32*
  store i32 %135, i32* %149, align 4, !tbaa.struct !124
  %150 = getelementptr inbounds i8, i8* %140, i64 8
  %151 = bitcast i8* %150 to i32*
  store i32 %139, i32* %151, align 8, !tbaa.struct !125
  %152 = getelementptr inbounds i8, i8* %140, i64 12
  %153 = bitcast i8* %152 to <2 x float>*
  store <2 x float> %114, <2 x float>* %153, align 4, !tbaa.struct !106
  %154 = getelementptr inbounds i8, i8* %140, i64 20
  %155 = bitcast i8* %154 to float*
  store float %115, float* %155, align 4, !tbaa.struct !83
  %156 = getelementptr inbounds i8, i8* %140, i64 24
  %157 = bitcast i8* %156 to float*
  store float 5.000000e-01, float* %157, align 8, !tbaa.struct !84
  %158 = mul i32 %135, %139
  %159 = mul i32 %158, %131
  %160 = add nsw i32 %159, 7
  %161 = and i32 %160, -8
  %162 = sext i32 %161 to i64
  %163 = tail call noalias align 16 i8* @calloc(i64 %162, i64 4) #28
  %164 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %141, i64 0, i32 1
  %165 = bitcast float** %164 to i8**
  store i8* %163, i8** %165, align 16, !tbaa !92
  %166 = icmp eq i8* %163, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %146
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %169 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %168) #29
  tail call void @exit(i32 1) #32
  unreachable

170:                                              ; preds = %146
  %171 = tail call i32 @putchar(i32 10)
  %172 = call i32 @gpu_compute_cutoff_potential_lattice(%struct.pb_TimerSet* nonnull %5, %struct.Lattice_t* nonnull %141, float 1.200000e+01, %struct.Atoms_t* nonnull %56, i32 0)
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %170
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %176 = tail call i64 @fwrite(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.82, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %175) #30
  tail call void @exit(i32 1) #32
  unreachable

177:                                              ; preds = %170
  %178 = tail call i32 @remove_exclusions(%struct.Lattice_t* nonnull %141, float 1.000000e+00, %struct.Atoms_t* nonnull %56)
  %179 = tail call i32 @putchar(i32 10)
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 1)
  %180 = getelementptr inbounds %struct.pb_Parameters, %struct.pb_Parameters* %7, i64 0, i32 0
  %181 = load i8*, i8** %180, align 8, !tbaa !3
  %182 = icmp eq i8* %181, null
  br i1 %182, label %184, label %183

183:                                              ; preds = %177
  tail call void @write_lattice_summary(i8* nonnull %181, %struct.Lattice_t* nonnull %141)
  br label %184

184:                                              ; preds = %177, %183
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 6)
  tail call void @free(i8* nonnull %163) #28
  tail call void @free(i8* nonnull %140) #28
  tail call void @free(i8* nonnull %72) #28
  %185 = bitcast %struct.Atoms_t* %56 to i8*
  tail call void @free(i8* %185) #28
  call void @pb_SwitchToTimer(%struct.pb_TimerSet* nonnull %5, i32 0)
  call void @pb_PrintTimerSet(%struct.pb_TimerSet* nonnull %5)
  tail call void @free(i8* %181) #28
  %186 = load i8*, i8** %12, align 8, !tbaa !9
  %187 = icmp eq i8* %186, null
  br i1 %187, label %194, label %188

188:                                              ; preds = %184, %188
  %189 = phi i8* [ %192, %188 ], [ %186, %184 ]
  %190 = phi i8** [ %191, %188 ], [ %12, %184 ]
  tail call void @free(i8* nonnull %189) #28
  %191 = getelementptr inbounds i8*, i8** %190, i64 1
  %192 = load i8*, i8** %191, align 8, !tbaa !9
  %193 = icmp eq i8* %192, null
  br i1 %193, label %194, label %188, !llvm.loop !28

194:                                              ; preds = %188, %184
  %195 = bitcast i8** %12 to i8*
  tail call void @free(i8* %195) #28
  %196 = bitcast %struct.pb_Parameters* %7 to i8*
  tail call void @free(i8* %196) #28
  call void @llvm.lifetime.end.p0i8(i64 288, i8* nonnull %6) #28
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @remove_exclusions(%struct.Lattice_t* nocapture readonly %0, float %1, %struct.Atoms_t* nocapture readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %0, i64 0, i32 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !94
  %6 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %0, i64 0, i32 0, i32 1
  %7 = bitcast i32* %6 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 4, !tbaa !10
  %9 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %0, i64 0, i32 0, i32 3, i32 0
  %10 = load float, float* %9, align 4, !tbaa !116
  %11 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %0, i64 0, i32 0, i32 3, i32 1
  %12 = bitcast float* %11 to <2 x float>*
  %13 = load <2 x float>, <2 x float>* %12, align 4, !tbaa !61
  %14 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %0, i64 0, i32 0, i32 4
  %15 = load float, float* %14, align 8, !tbaa !98
  %16 = getelementptr inbounds %struct.Atoms_t, %struct.Atoms_t* %2, i64 0, i32 0
  %17 = load %struct.Atom_t*, %struct.Atom_t** %16, align 8, !tbaa !76
  %18 = fmul contract float %1, %1
  %19 = fdiv contract float 1.000000e+00, %15
  %20 = fmul contract float %19, %1
  %21 = tail call contract float @llvm.ceil.f32(float %20)
  %22 = fptosi float %21 to i32
  %23 = add nsw i32 %22, -1
  %24 = getelementptr inbounds %struct.Atoms_t, %struct.Atoms_t* %2, i64 0, i32 1
  %25 = load i32, i32* %24, align 8, !tbaa !74
  %26 = bitcast %struct.Atom_t* %17 to <2 x float>*
  %27 = load <2 x float>, <2 x float>* %26, align 4, !tbaa !61
  %28 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %17, i64 0, i32 2
  %29 = load float, float* %28, align 4, !tbaa !80
  %30 = icmp sgt i32 %25, 1
  br i1 %30, label %31, label %53

31:                                               ; preds = %3
  %32 = zext i32 %25 to i64
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi i64 [ 1, %31 ], [ %48, %33 ]
  %35 = phi float [ %29, %31 ], [ %47, %33 ]
  %36 = phi float [ %29, %31 ], [ %46, %33 ]
  %37 = phi <2 x float> [ %27, %31 ], [ %43, %33 ]
  %38 = phi <2 x float> [ %27, %31 ], [ %42, %33 ]
  %39 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %17, i64 %34, i32 0
  %40 = bitcast float* %39 to <2 x float>*
  %41 = load <2 x float>, <2 x float>* %40, align 4, !tbaa !61
  %42 = call contract <2 x float> @llvm.minnum.v2f32(<2 x float> %38, <2 x float> %41)
  %43 = call contract <2 x float> @llvm.maxnum.v2f32(<2 x float> %37, <2 x float> %41)
  %44 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %17, i64 %34, i32 2
  %45 = load float, float* %44, align 4, !tbaa !80
  %46 = tail call contract float @llvm.minnum.f32(float %36, float %45) #28
  %47 = tail call contract float @llvm.maxnum.f32(float %35, float %45) #28
  %48 = add nuw nsw i64 %34, 1
  %49 = icmp eq i64 %48, %32
  br i1 %49, label %50, label %33, !llvm.loop !81

50:                                               ; preds = %33
  %51 = call contract <2 x float> @llvm.maxnum.v2f32(<2 x float> %37, <2 x float> %41)
  %52 = call contract <2 x float> @llvm.minnum.v2f32(<2 x float> %38, <2 x float> %41)
  br label %53

53:                                               ; preds = %50, %3
  %54 = phi float [ %29, %3 ], [ %46, %50 ]
  %55 = phi float [ %29, %3 ], [ %47, %50 ]
  %56 = phi <2 x float> [ %27, %3 ], [ %51, %50 ]
  %57 = phi <2 x float> [ %27, %3 ], [ %52, %50 ]
  %58 = fsub contract <2 x float> %56, %57
  %59 = fmul contract <2 x float> %58, <float 2.500000e-01, float 2.500000e-01>
  %60 = call contract <2 x float> @llvm.floor.v2f32(<2 x float> %59)
  %61 = fptosi <2 x float> %60 to <2 x i32>
  %62 = add nsw <2 x i32> %61, <i32 1, i32 1>
  %63 = fsub contract float %55, %54
  %64 = fmul contract float %63, 2.500000e-01
  %65 = tail call contract float @llvm.floor.f32(float %64)
  %66 = fptosi float %65 to i32
  %67 = add nsw i32 %66, 1
  %68 = extractelement <2 x i32> %62, i64 1
  %69 = mul i32 %68, %67
  %70 = extractelement <2 x i32> %62, i64 0
  %71 = mul i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = shl nsw i64 %72, 2
  %74 = tail call noalias align 16 i8* @malloc(i64 %73) #28
  %75 = bitcast i8* %74 to i32*
  %76 = icmp sgt i32 %71, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %53
  %78 = zext i32 %71 to i64
  %79 = shl nuw nsw i64 %78, 2
  call void @llvm.memset.p0i8.i64(i8* align 16 %74, i8 -1, i64 %79, i1 false), !tbaa !10
  br label %80

80:                                               ; preds = %77, %53
  %81 = sext i32 %25 to i64
  %82 = shl nsw i64 %81, 2
  %83 = tail call noalias align 16 i8* @malloc(i64 %82) #28
  %84 = bitcast i8* %83 to i32*
  %85 = icmp sgt i32 %25, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = zext i32 %25 to i64
  %88 = shl nuw nsw i64 %87, 2
  call void @llvm.memset.p0i8.i64(i8* align 16 %83, i8 -1, i64 %88, i1 false), !tbaa !10
  %89 = zext i32 %25 to i64
  %90 = extractelement <2 x float> %57, i64 0
  %91 = extractelement <2 x float> %57, i64 1
  br label %107

92:                                               ; preds = %140, %80
  %93 = add nsw i32 %5, -1
  %94 = add nsw <2 x i32> %8, <i32 -1, i32 -1>
  %95 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %0, i64 0, i32 1
  br i1 %76, label %96, label %272

96:                                               ; preds = %92
  %97 = sext i32 %5 to i64
  %98 = extractelement <2 x i32> %8, i64 0
  %99 = sext i32 %98 to i64
  %100 = zext i32 %71 to i64
  %101 = insertelement <2 x float> poison, float %19, i64 0
  %102 = shufflevector <2 x float> %101, <2 x float> poison, <2 x i32> zeroinitializer
  %103 = insertelement <2 x i32> poison, i32 %23, i64 0
  %104 = shufflevector <2 x i32> %103, <2 x i32> poison, <2 x i32> zeroinitializer
  %105 = insertelement <2 x i32> poison, i32 %22, i64 0
  %106 = shufflevector <2 x i32> %105, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %143

107:                                              ; preds = %86, %140
  %108 = phi i64 [ 0, %86 ], [ %141, %140 ]
  %109 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %17, i64 %108, i32 3
  %110 = load float, float* %109, align 4, !tbaa !105
  %111 = fcmp contract oeq float %110, 0.000000e+00
  br i1 %111, label %140, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %17, i64 %108, i32 0
  %114 = load float, float* %113, align 4, !tbaa !77
  %115 = fsub contract float %114, %90
  %116 = fmul contract float %115, 2.500000e-01
  %117 = tail call contract float @llvm.floor.f32(float %116)
  %118 = fptosi float %117 to i32
  %119 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %17, i64 %108, i32 1
  %120 = load float, float* %119, align 4, !tbaa !79
  %121 = fsub contract float %120, %91
  %122 = fmul contract float %121, 2.500000e-01
  %123 = tail call contract float @llvm.floor.f32(float %122)
  %124 = fptosi float %123 to i32
  %125 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %17, i64 %108, i32 2
  %126 = load float, float* %125, align 4, !tbaa !80
  %127 = fsub contract float %126, %54
  %128 = fmul contract float %127, 2.500000e-01
  %129 = tail call contract float @llvm.floor.f32(float %128)
  %130 = fptosi float %129 to i32
  %131 = mul nsw i32 %68, %130
  %132 = add nsw i32 %131, %124
  %133 = mul nsw i32 %132, %70
  %134 = add nsw i32 %133, %118
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %75, i64 %135
  %137 = load i32, i32* %136, align 4, !tbaa !10
  %138 = getelementptr inbounds i32, i32* %84, i64 %108
  store i32 %137, i32* %138, align 4, !tbaa !10
  %139 = trunc i64 %108 to i32
  store i32 %139, i32* %136, align 4, !tbaa !10
  br label %140

140:                                              ; preds = %107, %112
  %141 = add nuw nsw i64 %108, 1
  %142 = icmp eq i64 %141, %89
  br i1 %142, label %92, label %107, !llvm.loop !126

143:                                              ; preds = %96, %269
  %144 = phi i64 [ 0, %96 ], [ %270, %269 ]
  %145 = getelementptr inbounds i32, i32* %75, i64 %144
  %146 = load i32, i32* %145, align 4, !tbaa !10
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %269, label %148

148:                                              ; preds = %143, %265
  %149 = phi i32 [ %267, %265 ], [ %146, %143 ]
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %17, i64 %150, i32 0
  %152 = load float, float* %151, align 4, !tbaa !77
  %153 = fsub contract float %152, %10
  %154 = getelementptr inbounds %struct.Atom_t, %struct.Atom_t* %17, i64 %150, i32 1
  %155 = bitcast float* %154 to <2 x float>*
  %156 = load <2 x float>, <2 x float>* %155, align 4, !tbaa !61
  %157 = fsub contract <2 x float> %156, %13
  %158 = fmul contract float %19, %153
  %159 = fptosi float %158 to i32
  %160 = fmul contract <2 x float> %102, %157
  %161 = fptosi <2 x float> %160 to <2 x i32>
  %162 = sub nsw i32 %159, %23
  %163 = add i32 %159, %22
  %164 = sub nsw <2 x i32> %161, %104
  %165 = add <2 x i32> %106, %161
  %166 = icmp sgt i32 %162, 0
  %167 = select i1 %166, i32 %162, i32 0
  %168 = icmp slt i32 %163, %5
  %169 = select i1 %168, i32 %163, i32 %93
  %170 = icmp sgt <2 x i32> %164, zeroinitializer
  %171 = select <2 x i1> %170, <2 x i32> %164, <2 x i32> zeroinitializer
  %172 = icmp slt <2 x i32> %165, %8
  %173 = select <2 x i1> %172, <2 x i32> %165, <2 x i32> %94
  %174 = sitofp i32 %167 to float
  %175 = fmul contract float %15, %174
  %176 = fsub contract float %175, %153
  %177 = extractelement <2 x i32> %171, i64 0
  %178 = sitofp i32 %177 to float
  %179 = fmul contract float %15, %178
  %180 = extractelement <2 x float> %157, i64 0
  %181 = fsub contract float %179, %180
  %182 = extractelement <2 x i32> %171, i64 1
  %183 = sitofp i32 %182 to float
  %184 = fmul contract float %15, %183
  %185 = extractelement <2 x float> %157, i64 1
  %186 = fsub contract float %184, %185
  %187 = icmp sgt <2 x i32> %171, %173
  %188 = extractelement <2 x i1> %187, i64 0
  %189 = extractelement <2 x i1> %187, i64 1
  %190 = select i1 %189, i1 true, i1 %188
  br i1 %190, label %265, label %191

191:                                              ; preds = %148
  %192 = icmp slt i32 %169, %167
  %193 = load float*, float** %95, align 8, !tbaa !92
  br i1 %192, label %265, label %194

194:                                              ; preds = %191
  %195 = zext i32 %177 to i64
  %196 = zext i32 %167 to i64
  %197 = extractelement <2 x i32> %173, i64 0
  %198 = add i32 %197, 1
  %199 = zext i32 %182 to i64
  %200 = extractelement <2 x i32> %173, i64 1
  %201 = add i32 %200, 1
  %202 = zext i32 %201 to i64
  %203 = zext i32 %198 to i64
  %204 = add i32 %169, 1
  %205 = sub i32 %204, %167
  %206 = and i32 %205, 1
  %207 = icmp eq i32 %206, 0
  %208 = fmul contract float %176, %176
  %209 = add nuw i32 %167, 1
  %210 = fadd contract float %15, %176
  %211 = icmp eq i32 %169, %167
  br label %212

212:                                              ; preds = %194, %261
  %213 = phi i64 [ %199, %194 ], [ %262, %261 ]
  %214 = phi float [ %186, %194 ], [ %263, %261 ]
  %215 = mul nsw i64 %213, %99
  %216 = fmul contract float %214, %214
  br label %217

217:                                              ; preds = %212, %257
  %218 = phi i64 [ %195, %212 ], [ %258, %257 ]
  %219 = phi float [ %181, %212 ], [ %259, %257 ]
  %220 = add nsw i64 %218, %215
  %221 = mul nsw i64 %220, %97
  %222 = fmul contract float %219, %219
  %223 = fadd contract float %216, %222
  %224 = add nsw i64 %221, %196
  %225 = getelementptr inbounds float, float* %193, i64 %224
  br i1 %207, label %232, label %226

226:                                              ; preds = %217
  %227 = fadd contract float %223, %208
  %228 = fcmp contract olt float %227, %18
  br i1 %228, label %229, label %230

229:                                              ; preds = %226
  store float 0.000000e+00, float* %225, align 4, !tbaa !61
  br label %230

230:                                              ; preds = %229, %226
  %231 = getelementptr inbounds float, float* %225, i64 1
  br label %232

232:                                              ; preds = %230, %217
  %233 = phi i32 [ %167, %217 ], [ %209, %230 ]
  %234 = phi float* [ %225, %217 ], [ %231, %230 ]
  %235 = phi float [ %176, %217 ], [ %210, %230 ]
  br i1 %211, label %257, label %236

236:                                              ; preds = %232, %252
  %237 = phi i32 [ %253, %252 ], [ %233, %232 ]
  %238 = phi float* [ %254, %252 ], [ %234, %232 ]
  %239 = phi float [ %255, %252 ], [ %235, %232 ]
  %240 = fmul contract float %239, %239
  %241 = fadd contract float %223, %240
  %242 = fcmp contract olt float %241, %18
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  store float 0.000000e+00, float* %238, align 4, !tbaa !61
  br label %244

244:                                              ; preds = %236, %243
  %245 = add nuw i32 %237, 1
  %246 = fadd contract float %15, %239
  %247 = fmul contract float %246, %246
  %248 = fadd contract float %223, %247
  %249 = fcmp contract olt float %248, %18
  br i1 %249, label %250, label %252

250:                                              ; preds = %244
  %251 = getelementptr inbounds float, float* %238, i64 1
  store float 0.000000e+00, float* %251, align 4, !tbaa !61
  br label %252

252:                                              ; preds = %250, %244
  %253 = add nuw i32 %237, 2
  %254 = getelementptr inbounds float, float* %238, i64 2
  %255 = fadd contract float %15, %246
  %256 = icmp eq i32 %245, %169
  br i1 %256, label %257, label %236, !llvm.loop !127

257:                                              ; preds = %252, %232
  %258 = add nuw nsw i64 %218, 1
  %259 = fadd contract float %15, %219
  %260 = icmp eq i64 %258, %203
  br i1 %260, label %261, label %217, !llvm.loop !128

261:                                              ; preds = %257
  %262 = add nuw nsw i64 %213, 1
  %263 = fadd contract float %15, %214
  %264 = icmp eq i64 %262, %202
  br i1 %264, label %265, label %212, !llvm.loop !129

265:                                              ; preds = %261, %191, %148
  %266 = getelementptr inbounds i32, i32* %84, i64 %150
  %267 = load i32, i32* %266, align 4, !tbaa !10
  %268 = icmp eq i32 %267, -1
  br i1 %268, label %269, label %148, !llvm.loop !130

269:                                              ; preds = %265, %143
  %270 = add nuw nsw i64 %144, 1
  %271 = icmp eq i64 %270, %100
  br i1 %271, label %272, label %143, !llvm.loop !131

272:                                              ; preds = %269, %92
  tail call void @free(i8* %83) #28
  tail call void @free(i8* %74) #28
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @write_lattice_summary(i8* nocapture readonly %0, %struct.Lattice_t* nocapture readonly %1) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %1, i64 0, i32 1
  %6 = load float*, float** %5, align 8, !tbaa !92
  %7 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %1, i64 0, i32 0, i32 0
  %8 = load i32, i32* %7, align 8, !tbaa !94
  %9 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %1, i64 0, i32 0, i32 1
  %10 = load i32, i32* %9, align 4, !tbaa !95
  %11 = getelementptr inbounds %struct.Lattice_t, %struct.Lattice_t* %1, i64 0, i32 0, i32 2
  %12 = load i32, i32* %11, align 8, !tbaa !96
  %13 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0))
  %14 = icmp eq %struct._IO_FILE* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.85, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %16) #30
  tail call void @exit(i32 1) #32
  unreachable

18:                                               ; preds = %2
  %19 = bitcast float* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #28
  %20 = mul nsw i32 %10, %8
  %21 = mul i32 %20, %12
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %80

23:                                               ; preds = %18
  %24 = zext i32 %21 to i64
  %25 = add nsw i64 %24, -1
  %26 = and i64 %24, 3
  %27 = icmp ult i64 %25, 3
  br i1 %27, label %60, label %28

28:                                               ; preds = %23
  %29 = and i64 %24, 4294967292
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi i64 [ 0, %28 ], [ %57, %30 ]
  %32 = phi double [ 0.000000e+00, %28 ], [ %56, %30 ]
  %33 = phi i64 [ 0, %28 ], [ %58, %30 ]
  %34 = getelementptr inbounds float, float* %6, i64 %31
  %35 = load float, float* %34, align 4, !tbaa !61
  %36 = tail call contract float @llvm.fabs.f32(float %35)
  %37 = fpext float %36 to double
  %38 = fadd contract double %32, %37
  %39 = or i64 %31, 1
  %40 = getelementptr inbounds float, float* %6, i64 %39
  %41 = load float, float* %40, align 4, !tbaa !61
  %42 = tail call contract float @llvm.fabs.f32(float %41)
  %43 = fpext float %42 to double
  %44 = fadd contract double %38, %43
  %45 = or i64 %31, 2
  %46 = getelementptr inbounds float, float* %6, i64 %45
  %47 = load float, float* %46, align 4, !tbaa !61
  %48 = tail call contract float @llvm.fabs.f32(float %47)
  %49 = fpext float %48 to double
  %50 = fadd contract double %44, %49
  %51 = or i64 %31, 3
  %52 = getelementptr inbounds float, float* %6, i64 %51
  %53 = load float, float* %52, align 4, !tbaa !61
  %54 = tail call contract float @llvm.fabs.f32(float %53)
  %55 = fpext float %54 to double
  %56 = fadd contract double %50, %55
  %57 = add nuw nsw i64 %31, 4
  %58 = add i64 %33, 4
  %59 = icmp eq i64 %58, %29
  br i1 %59, label %60, label %30, !llvm.loop !132

60:                                               ; preds = %30, %23
  %61 = phi double [ undef, %23 ], [ %56, %30 ]
  %62 = phi i64 [ 0, %23 ], [ %57, %30 ]
  %63 = phi double [ 0.000000e+00, %23 ], [ %56, %30 ]
  %64 = icmp eq i64 %26, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %60, %65
  %66 = phi i64 [ %74, %65 ], [ %62, %60 ]
  %67 = phi double [ %73, %65 ], [ %63, %60 ]
  %68 = phi i64 [ %75, %65 ], [ 0, %60 ]
  %69 = getelementptr inbounds float, float* %6, i64 %66
  %70 = load float, float* %69, align 4, !tbaa !61
  %71 = tail call contract float @llvm.fabs.f32(float %70)
  %72 = fpext float %71 to double
  %73 = fadd contract double %67, %72
  %74 = add nuw nsw i64 %66, 1
  %75 = add i64 %68, 1
  %76 = icmp eq i64 %75, %26
  br i1 %76, label %77, label %65, !llvm.loop !133

77:                                               ; preds = %65, %60
  %78 = phi double [ %61, %60 ], [ %73, %65 ]
  %79 = fptrunc double %78 to float
  br label %80

80:                                               ; preds = %77, %18
  %81 = phi float [ 0.000000e+00, %18 ], [ %79, %77 ]
  store float %81, float* %3, align 4, !tbaa !61
  %82 = call i64 @fwrite(i8* nonnull %19, i64 1, i64 4, %struct._IO_FILE* nonnull %13)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #28
  %83 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %83) #28
  %84 = load i32, i32* %7, align 8, !tbaa !94
  %85 = load i32, i32* %9, align 4, !tbaa !95
  %86 = mul nsw i32 %85, %84
  store i32 %86, i32* %4, align 4, !tbaa !10
  %87 = call i64 @fwrite(i8* nonnull %83, i64 1, i64 4, %struct._IO_FILE* nonnull %13)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %83) #28
  %88 = bitcast float* %6 to i8*
  %89 = sext i32 %20 to i64
  %90 = tail call i64 @fwrite(i8* %88, i64 %89, i64 4, %struct._IO_FILE* nonnull %13)
  %91 = add nsw i32 %12, -1
  %92 = mul nsw i32 %91, %20
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %6, i64 %93
  %95 = bitcast float* %94 to i8*
  %96 = tail call i64 @fwrite(i8* %95, i64 %89, i64 4, %struct._IO_FILE* nonnull %13)
  %97 = tail call i32 @fclose(%struct._IO_FILE* nonnull %13)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

declare dso_local i32 @hipEventCreate(%struct.ihipEvent_t**) local_unnamed_addr #12

declare dso_local i32 @hipEventRecord(%struct.ihipEvent_t*, %struct.ihipStream_t*) local_unnamed_addr #12

declare dso_local i32 @hipEventElapsedTime(float*, %struct.ihipEvent_t*, %struct.ihipEvent_t*) local_unnamed_addr #12

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

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
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32, i32, %struct.HIP_vector_type.0*, float, float, float, float*, i32)** @_ZL29cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfi to i8*), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  tail call void @__hipRegisterVar(i8** %7, i8* bitcast (i32* @NbrListLen to i8*), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i64 0, i64 0), i32 0, i64 4, i32 1, i32 0)
  tail call void @__hipRegisterVar(i8** %7, i8* bitcast ([1331 x %struct.HIP_vector_type]* @NbrList to i8*), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2, i64 0, i64 0), i32 0, i64 15972, i32 1, i32 0)
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
declare i8* @strcpy(i8* noalias returned writeonly, i8* noalias nocapture readonly) local_unnamed_addr #24

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #25

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #26

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #26

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #27

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #27

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #27

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #27

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
attributes #14 = { mustprogress nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #18 = { mustprogress nofree nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { argmemonly nofree nounwind willreturn }
attributes #25 = { argmemonly nofree nounwind readonly willreturn }
attributes #26 = { nofree nounwind }
attributes #27 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #28 = { nounwind }
attributes #29 = { cold nounwind }
attributes #30 = { cold }
attributes #31 = { nounwind readonly willreturn }
attributes #32 = { noreturn nounwind }

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
!74 = !{!75, !11, i64 8}
!75 = !{!"_ZTS7Atoms_t", !5, i64 0, !11, i64 8}
!76 = !{!75, !5, i64 0}
!77 = !{!78, !62, i64 0}
!78 = !{!"_ZTS6Atom_t", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12}
!79 = !{!78, !62, i64 4}
!80 = !{!78, !62, i64 8}
!81 = distinct !{!81, !14}
!82 = !{i64 0, i64 4, !61, i64 4, i64 4, !61, i64 8, i64 4, !61}
!83 = !{i64 0, i64 4, !61, i64 4, i64 4, !61}
!84 = !{i64 0, i64 4, !61}
!85 = !{!86, !11, i64 0}
!86 = !{!"_ZTS12LatticeDim_t", !11, i64 0, !11, i64 4, !11, i64 8, !87, i64 12, !62, i64 24}
!87 = !{!"_ZTS6Vec3_t", !62, i64 0, !62, i64 4, !62, i64 8}
!88 = !{!86, !11, i64 4}
!89 = !{!86, !11, i64 8}
!90 = !{!86, !62, i64 24}
!91 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 4, !61, i64 16, i64 4, !61, i64 20, i64 4, !61, i64 24, i64 4, !61}
!92 = !{!93, !5, i64 32}
!93 = !{!"_ZTS9Lattice_t", !86, i64 0, !5, i64 32}
!94 = !{!93, !11, i64 0}
!95 = !{!93, !11, i64 4}
!96 = !{!93, !11, i64 8}
!97 = !{!93, !62, i64 20}
!98 = !{!93, !62, i64 24}
!99 = distinct !{!99, !14}
!100 = distinct !{!100, !14}
!101 = distinct !{!101, !14}
!102 = distinct !{!102, !14}
!103 = distinct !{!103, !14}
!104 = distinct !{!104, !14}
!105 = !{!78, !62, i64 12}
!106 = !{i64 0, i64 4, !61, i64 4, i64 4, !61, i64 8, i64 4, !61, i64 12, i64 4, !61}
!107 = distinct !{!107, !14}
!108 = distinct !{!108, !14}
!109 = distinct !{!109, !14}
!110 = distinct !{!110, !14}
!111 = distinct !{!111, !14}
!112 = distinct !{!112, !14}
!113 = distinct !{!113, !14}
!114 = distinct !{!114, !14}
!115 = distinct !{!115, !14}
!116 = !{!93, !62, i64 12}
!117 = !{!93, !62, i64 16}
!118 = distinct !{!118, !14}
!119 = distinct !{!119, !14}
!120 = distinct !{!120, !14}
!121 = distinct !{!121, !14}
!122 = distinct !{!122, !14}
!123 = distinct !{!123, !14}
!124 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !61, i64 12, i64 4, !61, i64 16, i64 4, !61, i64 20, i64 4, !61}
!125 = !{i64 0, i64 4, !10, i64 4, i64 4, !61, i64 8, i64 4, !61, i64 12, i64 4, !61, i64 16, i64 4, !61}
!126 = distinct !{!126, !14}
!127 = distinct !{!127, !14}
!128 = distinct !{!128, !14}
!129 = distinct !{!129, !14}
!130 = distinct !{!130, !14}
!131 = distinct !{!131, !14}
!132 = distinct !{!132, !14}
!133 = distinct !{!133, !25}
