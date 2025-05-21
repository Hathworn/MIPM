; ModuleID = 'concurrentkernels.cpp'
source_filename = "concurrentkernels.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque
%struct.hipDeviceProp_t = type { [256 x i8], i64, i64, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.hipDeviceArch_t, i32, i32, i32, i32, i64, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32*, i32*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hipDeviceArch_t = type { i32 }
%struct.ihipEvent_t = type opaque

$__hip_gpubin_handle = comdat any

@_Z11clock_blockPll = dso_local constant void (i64*, i64)* @_Z26__device_stub__clock_blockPll, align 8
@_Z3sumPli = dso_local constant void (i64*, i32)* @_Z18__device_stub__sumPli, align 8
@.str = private unnamed_addr constant [20 x i8] c"[%s] - Starting...\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"hipGetDeviceProperties(&deviceProp, hip_device)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"concurrentkernels.cpp\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"> Detected Compute Capability %d.%d hardware with %d multi-processors\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"hipHostMalloc((void **)&a, nbytes)\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"hipMalloc((void **)&d_a, nbytes)\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"hipStreamCreate(&streams[i])\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"hipEventCreate(&start_event)\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"hipEventCreate(&stop_event)\00", align 1
@.str.11 = private unnamed_addr constant [64 x i8] c"hipEventCreateWithFlags(&kernelEvent[i], hipEventDisableTiming)\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"hipEventRecord(start_event, 0)\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"hipEventRecord(kernelEvent[i], streams[i])\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"hipStreamWaitEvent(streams[nstreams - 1], kernelEvent[i], 0)\00", align 1
@.str.15 = private unnamed_addr constant [86 x i8] c"hipMemcpyAsync(a, d_a, sizeof(clock_t), hipMemcpyDeviceToHost, streams[nstreams - 1])\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"hipEventRecord(stop_event, 0)\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"hipEventSynchronize(stop_event)\00", align 1
@.str.18 = private unnamed_addr constant [60 x i8] c"hipEventElapsedTime(&elapsed_time, start_event, stop_event)\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"Expected time for serial execution of %d kernels = %.3fs\0A\00", align 1
@.str.20 = private unnamed_addr constant [62 x i8] c"Expected time for concurrent execution of %d kernels = %.3fs\0A\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"Measured time for sample = %.3fs\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"hipStreamDestroy(streams[i])\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"hipEventDestroy(kernelEvent[i])\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"hipEventDestroy(start_event)\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"hipEventDestroy(stop_event)\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"hipHostFree(a)\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"hipFree(d_a)\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.30 = private unnamed_addr constant [38 x i8] c"HIP error at %s:%d code=%d (%s) \22%s\22\0A\00", align 1
@0 = private unnamed_addr constant [19 x i8] c"_Z11clock_blockPll\00", align 1
@1 = private unnamed_addr constant [10 x i8] c"_Z3sumPli\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]
@str = private unnamed_addr constant [51 x i8] c"> GPU does not support concurrent kernel execution\00", align 1
@str.31 = private unnamed_addr constant [37 x i8] c"  HIP kernel runs will be serialized\00", align 1
@str.32 = private unnamed_addr constant [13 x i8] c"Test failed!\00", align 1
@str.33 = private unnamed_addr constant [12 x i8] c"Test passed\00", align 1

; Function Attrs: norecurse uwtable
define dso_local void @_Z26__device_stub__clock_blockPll(i64* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dim3, align 8
  %6 = alloca %struct.dim3, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i64* %0, i64** %3, align 8, !tbaa !3
  store i64 %1, i64* %4, align 8, !tbaa !7
  %9 = alloca [2 x i8*], align 16
  %10 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %11 = bitcast [2 x i8*]* %9 to i64***
  store i64** %3, i64*** %11, align 16
  %12 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 1
  %13 = bitcast i8** %12 to i64**
  store i64* %4, i64** %13, align 8
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
  %26 = call i32 @hipLaunchKernel(i8* bitcast (void (i64*, i64)** @_Z11clock_blockPll to i8*), i64 %19, i32 %21, i64 %23, i32 %25, i8** nonnull %10, i64 %15, %struct.ihipStream_t* %17)
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: norecurse uwtable
define dso_local void @_Z18__device_stub__sumPli(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dim3, align 8
  %6 = alloca %struct.dim3, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i64* %0, i64** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !9
  %9 = alloca [2 x i8*], align 16
  %10 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %11 = bitcast [2 x i8*]* %9 to i64***
  store i64** %3, i64*** %11, align 16
  %12 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 1
  %13 = bitcast i8** %12 to i32**
  store i32* %4, i32** %13, align 8
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
  %26 = call i32 @hipLaunchKernel(i8* bitcast (void (i64*, i32)** @_Z3sumPli to i8*), i64 %19, i32 %21, i64 %23, i32 %25, i8** nonnull %10, i64 %15, %struct.ihipStream_t* %17)
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dim3, align 8
  %6 = alloca %struct.dim3, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [2 x i8*], align 16
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca %struct.dim3, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [2 x i8*], align 16
  %17 = alloca float, align 4
  %18 = alloca %struct.hipDeviceProp_t, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca %struct.ihipEvent_t*, align 8
  %22 = alloca %struct.ihipEvent_t*, align 8
  %23 = bitcast float* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #8
  %24 = load i8*, i8** %1, align 8, !tbaa !3
  %25 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %18, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 792, i8* nonnull %26) #8
  %27 = call i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* nonnull %18, i32 0)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %2
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %31 = call i8* @hipGetErrorString(i32 %27)
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 65, i32 %27, i8* %31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0)) #9
  call void @exit(i32 1) #10
  unreachable

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %18, i64 0, i32 20
  %35 = load i32, i32* %34, align 8, !tbaa !11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([51 x i8], [51 x i8]* @str, i64 0, i64 0))
  %39 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @str.31, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %33
  %41 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %18, i64 0, i32 12
  %42 = load i32, i32* %41, align 8, !tbaa !14
  %43 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %18, i64 0, i32 13
  %44 = load i32, i32* %43, align 4, !tbaa !15
  %45 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %18, i64 0, i32 14
  %46 = load i32, i32* %45, align 8, !tbaa !16
  %47 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0), i32 %42, i32 %44, i32 %46)
  %48 = bitcast i64** %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %48) #8
  store i64* null, i64** %19, align 8, !tbaa !3
  %49 = bitcast i64** %19 to i8**
  %50 = call i32 @hipHostMalloc(i8** nonnull %49, i64 64, i32 0)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %40
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %54 = call i8* @hipGetErrorString(i32 %50)
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 77, i32 %50, i8* %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0)) #9
  call void @exit(i32 1) #10
  unreachable

56:                                               ; preds = %40
  %57 = bitcast i64** %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %57) #8
  store i64* null, i64** %20, align 8, !tbaa !3
  %58 = bitcast i64** %20 to i8**
  %59 = call i32 @hipMalloc(i8** nonnull %58, i64 64)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %63 = call i8* @hipGetErrorString(i32 %59)
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 81, i32 %59, i8* %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0)) #9
  call void @exit(i32 1) #10
  unreachable

65:                                               ; preds = %56
  %66 = call noalias align 16 dereferenceable_or_null(72) i8* @malloc(i64 72) #8
  %67 = bitcast i8* %66 to %struct.ihipStream_t**
  %68 = call i32 @hipStreamCreate(%struct.ihipStream_t** %67)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %123

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.ihipStream_t*, %struct.ihipStream_t** %67, i64 1
  %72 = call i32 @hipStreamCreate(%struct.ihipStream_t** nonnull %71)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %123

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.ihipStream_t*, %struct.ihipStream_t** %67, i64 2
  %76 = call i32 @hipStreamCreate(%struct.ihipStream_t** nonnull %75)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %123

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.ihipStream_t*, %struct.ihipStream_t** %67, i64 3
  %80 = call i32 @hipStreamCreate(%struct.ihipStream_t** nonnull %79)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %123

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.ihipStream_t*, %struct.ihipStream_t** %67, i64 4
  %84 = call i32 @hipStreamCreate(%struct.ihipStream_t** nonnull %83)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %123

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.ihipStream_t*, %struct.ihipStream_t** %67, i64 5
  %88 = call i32 @hipStreamCreate(%struct.ihipStream_t** nonnull %87)
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %123

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.ihipStream_t*, %struct.ihipStream_t** %67, i64 6
  %92 = call i32 @hipStreamCreate(%struct.ihipStream_t** nonnull %91)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %123

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.ihipStream_t*, %struct.ihipStream_t** %67, i64 7
  %96 = call i32 @hipStreamCreate(%struct.ihipStream_t** nonnull %95)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %123

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.ihipStream_t*, %struct.ihipStream_t** %67, i64 8
  %100 = call i32 @hipStreamCreate(%struct.ihipStream_t** nonnull %99)
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %123

102:                                              ; preds = %98
  %103 = bitcast %struct.ihipEvent_t** %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %103) #8
  %104 = bitcast %struct.ihipEvent_t** %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %104) #8
  %105 = call i32 @hipEventCreate(%struct.ihipEvent_t** nonnull %21)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %102
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %109 = call i8* @hipGetErrorString(i32 %105)
  %110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 91, i32 %105, i8* %109, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0)) #9
  call void @exit(i32 1) #10
  unreachable

111:                                              ; preds = %102
  %112 = call i32 @hipEventCreate(%struct.ihipEvent_t** nonnull %22)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %111
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %116 = call i8* @hipGetErrorString(i32 %112)
  %117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %115, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 92, i32 %112, i8* %116, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0)) #9
  call void @exit(i32 1) #10
  unreachable

118:                                              ; preds = %111
  %119 = call noalias align 16 dereferenceable_or_null(64) i8* @malloc(i64 64) #8
  %120 = bitcast i8* %119 to %struct.ihipEvent_t**
  %121 = call i32 @hipEventCreateWithFlags(%struct.ihipEvent_t** %120, i32 2)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %128, label %186

123:                                              ; preds = %98, %94, %90, %86, %82, %78, %74, %70, %65
  %124 = phi i32 [ %68, %65 ], [ %72, %70 ], [ %76, %74 ], [ %80, %78 ], [ %84, %82 ], [ %88, %86 ], [ %92, %90 ], [ %96, %94 ], [ %100, %98 ]
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %126 = call i8* @hipGetErrorString(i32 %124)
  %127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 86, i32 %124, i8* %126, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0)) #9
  call void @exit(i32 1) #10
  unreachable

128:                                              ; preds = %118
  %129 = getelementptr inbounds %struct.ihipEvent_t*, %struct.ihipEvent_t** %120, i64 1
  %130 = call i32 @hipEventCreateWithFlags(%struct.ihipEvent_t** nonnull %129, i32 2)
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %186

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.ihipEvent_t*, %struct.ihipEvent_t** %120, i64 2
  %134 = call i32 @hipEventCreateWithFlags(%struct.ihipEvent_t** nonnull %133, i32 2)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %186

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.ihipEvent_t*, %struct.ihipEvent_t** %120, i64 3
  %138 = call i32 @hipEventCreateWithFlags(%struct.ihipEvent_t** nonnull %137, i32 2)
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %186

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.ihipEvent_t*, %struct.ihipEvent_t** %120, i64 4
  %142 = call i32 @hipEventCreateWithFlags(%struct.ihipEvent_t** nonnull %141, i32 2)
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %186

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.ihipEvent_t*, %struct.ihipEvent_t** %120, i64 5
  %146 = call i32 @hipEventCreateWithFlags(%struct.ihipEvent_t** nonnull %145, i32 2)
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %186

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.ihipEvent_t*, %struct.ihipEvent_t** %120, i64 6
  %150 = call i32 @hipEventCreateWithFlags(%struct.ihipEvent_t** nonnull %149, i32 2)
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %186

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.ihipEvent_t*, %struct.ihipEvent_t** %120, i64 7
  %154 = call i32 @hipEventCreateWithFlags(%struct.ihipEvent_t** nonnull %153, i32 2)
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %186

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %18, i64 0, i32 8
  %158 = load i32, i32* %157, align 4, !tbaa !17
  %159 = sitofp i32 %158 to float
  %160 = fmul contract float %159, 1.000000e+01
  %161 = fptosi float %160 to i64
  %162 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %21, align 8, !tbaa !3
  %163 = call i32 @hipEventRecord(%struct.ihipEvent_t* %162, %struct.ihipStream_t* null)
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %182

165:                                              ; preds = %156
  %166 = bitcast i64** %10 to i8*
  %167 = bitcast i64* %11 to i8*
  %168 = bitcast %struct.dim3* %12 to i8*
  %169 = bitcast %struct.dim3* %13 to i8*
  %170 = bitcast i64* %14 to i8*
  %171 = bitcast i8** %15 to i8*
  %172 = bitcast [2 x i8*]* %16 to i8*
  %173 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i64 0, i64 0
  %174 = bitcast [2 x i8*]* %16 to i64***
  %175 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i64 0, i64 1
  %176 = bitcast i8** %175 to i64**
  %177 = bitcast i8** %15 to %struct.ihipStream_t**
  %178 = bitcast %struct.dim3* %12 to i64*
  %179 = getelementptr inbounds %struct.dim3, %struct.dim3* %12, i64 0, i32 2
  %180 = bitcast %struct.dim3* %13 to i64*
  %181 = getelementptr inbounds %struct.dim3, %struct.dim3* %13, i64 0, i32 2
  br label %198

182:                                              ; preds = %156
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %184 = call i8* @hipGetErrorString(i32 %163)
  %185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %183, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 103, i32 %163, i8* %184, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0)) #9
  call void @exit(i32 1) #10
  unreachable

186:                                              ; preds = %152, %148, %144, %140, %136, %132, %128, %118
  %187 = phi i32 [ %121, %118 ], [ %130, %128 ], [ %134, %132 ], [ %138, %136 ], [ %142, %140 ], [ %146, %144 ], [ %150, %148 ], [ %154, %152 ]
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %189 = call i8* @hipGetErrorString(i32 %187)
  %190 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %188, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 96, i32 %187, i8* %189, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i64 0, i64 0)) #9
  call void @exit(i32 1) #10
  unreachable

191:                                              ; preds = %225
  %192 = add nuw nsw i64 %199, 1
  %193 = icmp eq i64 %192, 8
  br i1 %193, label %194, label %198, !llvm.loop !18

194:                                              ; preds = %191
  %195 = load %struct.ihipStream_t*, %struct.ihipStream_t** %99, align 16, !tbaa !3
  %196 = call i32 @__hipPushCallConfiguration(i64 4294967297, i32 1, i64 4294967328, i32 1, i64 0, %struct.ihipStream_t* %195)
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %234, label %260

198:                                              ; preds = %165, %191
  %199 = phi i64 [ 0, %165 ], [ %192, %191 ]
  %200 = getelementptr inbounds %struct.ihipStream_t*, %struct.ihipStream_t** %67, i64 %199
  %201 = load %struct.ihipStream_t*, %struct.ihipStream_t** %200, align 8, !tbaa !3
  %202 = call i32 @__hipPushCallConfiguration(i64 4294967297, i32 1, i64 4294967297, i32 1, i64 0, %struct.ihipStream_t* %201)
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %215

204:                                              ; preds = %198
  %205 = load i64*, i64** %20, align 8, !tbaa !3
  %206 = getelementptr inbounds i64, i64* %205, i64 %199
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %166)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %167)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %168)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %169)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %170)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %171)
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %172)
  store i64* %206, i64** %10, align 8, !tbaa !3
  store i64 %161, i64* %11, align 8, !tbaa !7
  store i64** %10, i64*** %174, align 16
  store i64* %11, i64** %176, align 8
  %207 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %12, %struct.dim3* nonnull %13, i64* nonnull %14, i8** nonnull %15)
  %208 = load i64, i64* %14, align 8
  %209 = load %struct.ihipStream_t*, %struct.ihipStream_t** %177, align 8
  %210 = load i64, i64* %178, align 8
  %211 = load i32, i32* %179, align 8
  %212 = load i64, i64* %180, align 8
  %213 = load i32, i32* %181, align 8
  %214 = call i32 @hipLaunchKernel(i8* bitcast (void (i64*, i64)** @_Z11clock_blockPll to i8*), i64 %210, i32 %211, i64 %212, i32 %213, i8** nonnull %173, i64 %208, %struct.ihipStream_t* %209)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %166)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %167)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %168)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %169)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %170)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %171)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %172)
  br label %215

215:                                              ; preds = %204, %198
  %216 = getelementptr inbounds %struct.ihipEvent_t*, %struct.ihipEvent_t** %120, i64 %199
  %217 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %216, align 8, !tbaa !3
  %218 = load %struct.ihipStream_t*, %struct.ihipStream_t** %200, align 8, !tbaa !3
  %219 = call i32 @hipEventRecord(%struct.ihipEvent_t* %217, %struct.ihipStream_t* %218)
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %215
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %223 = call i8* @hipGetErrorString(i32 %219)
  %224 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %222, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 108, i32 %219, i8* %223, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0)) #9
  call void @exit(i32 1) #10
  unreachable

225:                                              ; preds = %215
  %226 = load %struct.ihipStream_t*, %struct.ihipStream_t** %99, align 16, !tbaa !3
  %227 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %216, align 8, !tbaa !3
  %228 = call i32 @hipStreamWaitEvent(%struct.ihipStream_t* %226, %struct.ihipEvent_t* %227, i32 0)
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %191, label %230

230:                                              ; preds = %225
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %232 = call i8* @hipGetErrorString(i32 %228)
  %233 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %231, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 109, i32 %228, i8* %232, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.14, i64 0, i64 0)) #9
  call void @exit(i32 1) #10
  unreachable

234:                                              ; preds = %194
  %235 = load i64*, i64** %20, align 8, !tbaa !3
  %236 = bitcast i64** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %236)
  %237 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %237)
  %238 = bitcast %struct.dim3* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %238)
  %239 = bitcast %struct.dim3* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %239)
  %240 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %240)
  %241 = bitcast i8** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %241)
  %242 = bitcast [2 x i8*]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %242)
  store i64* %235, i64** %3, align 8, !tbaa !3
  store i32 8, i32* %4, align 4, !tbaa !9
  %243 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %244 = bitcast [2 x i8*]* %9 to i64***
  store i64** %3, i64*** %244, align 16
  %245 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 1
  %246 = bitcast i8** %245 to i32**
  store i32* %4, i32** %246, align 8
  %247 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %5, %struct.dim3* nonnull %6, i64* nonnull %7, i8** nonnull %8)
  %248 = load i64, i64* %7, align 8
  %249 = bitcast i8** %8 to %struct.ihipStream_t**
  %250 = load %struct.ihipStream_t*, %struct.ihipStream_t** %249, align 8
  %251 = bitcast %struct.dim3* %5 to i64*
  %252 = load i64, i64* %251, align 8
  %253 = getelementptr inbounds %struct.dim3, %struct.dim3* %5, i64 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = bitcast %struct.dim3* %6 to i64*
  %256 = load i64, i64* %255, align 8
  %257 = getelementptr inbounds %struct.dim3, %struct.dim3* %6, i64 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @hipLaunchKernel(i8* bitcast (void (i64*, i32)** @_Z3sumPli to i8*), i64 %252, i32 %254, i64 %256, i32 %258, i8** nonnull %243, i64 %248, %struct.ihipStream_t* %250)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %236)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %237)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %238)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %239)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %240)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %241)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %242)
  br label %260

260:                                              ; preds = %234, %194
  %261 = load i8*, i8** %49, align 8, !tbaa !3
  %262 = load i8*, i8** %58, align 8, !tbaa !3
  %263 = load %struct.ihipStream_t*, %struct.ihipStream_t** %99, align 16, !tbaa !3
  %264 = call i32 @hipMemcpyAsync(i8* %261, i8* %262, i64 8, i32 2, %struct.ihipStream_t* %263)
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %270, label %266

266:                                              ; preds = %260
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %268 = call i8* @hipGetErrorString(i32 %264)
  %269 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %267, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 116, i32 %264, i8* %268, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.15, i64 0, i64 0)) #9
  call void @exit(i32 1) #10
  unreachable

270:                                              ; preds = %260
  %271 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %22, align 8, !tbaa !3
  %272 = call i32 @hipEventRecord(%struct.ihipEvent_t* %271, %struct.ihipStream_t* null)
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %278, label %274

274:                                              ; preds = %270
  %275 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %276 = call i8* @hipGetErrorString(i32 %272)
  %277 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %275, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 119, i32 %272, i8* %276, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0)) #9
  call void @exit(i32 1) #10
  unreachable

278:                                              ; preds = %270
  %279 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %22, align 8, !tbaa !3
  %280 = call i32 @hipEventSynchronize(%struct.ihipEvent_t* %279)
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %286, label %282

282:                                              ; preds = %278
  %283 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %284 = call i8* @hipGetErrorString(i32 %280)
  %285 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %283, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 120, i32 %280, i8* %284, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0)) #9
  call void @exit(i32 1) #10
  unreachable

286:                                              ; preds = %278
  %287 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %21, align 8, !tbaa !3
  %288 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %22, align 8, !tbaa !3
  %289 = call i32 @hipEventElapsedTime(float* nonnull %17, %struct.ihipEvent_t* %287, %struct.ihipEvent_t* %288)
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %295, label %291

291:                                              ; preds = %286
  %292 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %293 = call i8* @hipGetErrorString(i32 %289)
  %294 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %292, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 121, i32 %289, i8* %293, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.18, i64 0, i64 0)) #9
  call void @exit(i32 1) #10
  unreachable

295:                                              ; preds = %286
  %296 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i32 8, double 0x3FB47AE140000000)
  %297 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.20, i64 0, i64 0), i32 8, double 0x3F847AE140000000)
  %298 = load float, float* %17, align 4, !tbaa !20
  %299 = fdiv contract float %298, 1.000000e+03
  %300 = fpext float %299 to double
  %301 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), double %300)
  %302 = load i64*, i64** %19, align 8, !tbaa !3
  %303 = load i64, i64* %302, align 8, !tbaa !7
  %304 = shl nsw i64 %161, 3
  %305 = icmp sgt i64 %303, %304
  %306 = load %struct.ihipStream_t*, %struct.ihipStream_t** %67, align 16, !tbaa !3
  %307 = call i32 @hipStreamDestroy(%struct.ihipStream_t* %306)
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %345

309:                                              ; preds = %295
  %310 = load %struct.ihipStream_t*, %struct.ihipStream_t** %71, align 8, !tbaa !3
  %311 = call i32 @hipStreamDestroy(%struct.ihipStream_t* %310)
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %345

313:                                              ; preds = %309
  %314 = load %struct.ihipStream_t*, %struct.ihipStream_t** %75, align 16, !tbaa !3
  %315 = call i32 @hipStreamDestroy(%struct.ihipStream_t* %314)
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %345

317:                                              ; preds = %313
  %318 = load %struct.ihipStream_t*, %struct.ihipStream_t** %79, align 8, !tbaa !3
  %319 = call i32 @hipStreamDestroy(%struct.ihipStream_t* %318)
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %345

321:                                              ; preds = %317
  %322 = load %struct.ihipStream_t*, %struct.ihipStream_t** %83, align 16, !tbaa !3
  %323 = call i32 @hipStreamDestroy(%struct.ihipStream_t* %322)
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %345

325:                                              ; preds = %321
  %326 = load %struct.ihipStream_t*, %struct.ihipStream_t** %87, align 8, !tbaa !3
  %327 = call i32 @hipStreamDestroy(%struct.ihipStream_t* %326)
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %345

329:                                              ; preds = %325
  %330 = load %struct.ihipStream_t*, %struct.ihipStream_t** %91, align 16, !tbaa !3
  %331 = call i32 @hipStreamDestroy(%struct.ihipStream_t* %330)
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %345

333:                                              ; preds = %329
  %334 = load %struct.ihipStream_t*, %struct.ihipStream_t** %95, align 8, !tbaa !3
  %335 = call i32 @hipStreamDestroy(%struct.ihipStream_t* %334)
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %345

337:                                              ; preds = %333
  %338 = load %struct.ihipStream_t*, %struct.ihipStream_t** %99, align 16, !tbaa !3
  %339 = call i32 @hipStreamDestroy(%struct.ihipStream_t* %338)
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %337
  %342 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %120, align 16, !tbaa !3
  %343 = call i32 @hipEventDestroy(%struct.ihipEvent_t* %342)
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %350, label %415

345:                                              ; preds = %337, %333, %329, %325, %321, %317, %313, %309, %295
  %346 = phi i32 [ %307, %295 ], [ %311, %309 ], [ %315, %313 ], [ %319, %317 ], [ %323, %321 ], [ %327, %325 ], [ %331, %329 ], [ %335, %333 ], [ %339, %337 ]
  %347 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %348 = call i8* @hipGetErrorString(i32 %346)
  %349 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %347, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 133, i32 %346, i8* %348, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0)) #9
  call void @exit(i32 1) #10
  unreachable

350:                                              ; preds = %341
  %351 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %129, align 8, !tbaa !3
  %352 = call i32 @hipEventDestroy(%struct.ihipEvent_t* %351)
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %415

354:                                              ; preds = %350
  %355 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %133, align 16, !tbaa !3
  %356 = call i32 @hipEventDestroy(%struct.ihipEvent_t* %355)
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %415

358:                                              ; preds = %354
  %359 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %137, align 8, !tbaa !3
  %360 = call i32 @hipEventDestroy(%struct.ihipEvent_t* %359)
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %415

362:                                              ; preds = %358
  %363 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %141, align 16, !tbaa !3
  %364 = call i32 @hipEventDestroy(%struct.ihipEvent_t* %363)
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %415

366:                                              ; preds = %362
  %367 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %145, align 8, !tbaa !3
  %368 = call i32 @hipEventDestroy(%struct.ihipEvent_t* %367)
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %415

370:                                              ; preds = %366
  %371 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %149, align 16, !tbaa !3
  %372 = call i32 @hipEventDestroy(%struct.ihipEvent_t* %371)
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %415

374:                                              ; preds = %370
  %375 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %153, align 8, !tbaa !3
  %376 = call i32 @hipEventDestroy(%struct.ihipEvent_t* %375)
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %415

378:                                              ; preds = %374
  %379 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %21, align 8, !tbaa !3
  %380 = call i32 @hipEventDestroy(%struct.ihipEvent_t* %379)
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %386, label %382

382:                                              ; preds = %378
  %383 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %384 = call i8* @hipGetErrorString(i32 %380)
  %385 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %383, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 140, i32 %380, i8* %384, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0)) #9
  call void @exit(i32 1) #10
  unreachable

386:                                              ; preds = %378
  %387 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %22, align 8, !tbaa !3
  %388 = call i32 @hipEventDestroy(%struct.ihipEvent_t* %387)
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %394, label %390

390:                                              ; preds = %386
  %391 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %392 = call i8* @hipGetErrorString(i32 %388)
  %393 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %391, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 141, i32 %388, i8* %392, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0)) #9
  call void @exit(i32 1) #10
  unreachable

394:                                              ; preds = %386
  %395 = load i8*, i8** %49, align 8, !tbaa !3
  %396 = call i32 @hipHostFree(i8* %395)
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %402, label %398

398:                                              ; preds = %394
  %399 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %400 = call i8* @hipGetErrorString(i32 %396)
  %401 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %399, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 142, i32 %396, i8* %400, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0)) #9
  call void @exit(i32 1) #10
  unreachable

402:                                              ; preds = %394
  %403 = load i8*, i8** %58, align 8, !tbaa !3
  %404 = call i32 @hipFree(i8* %403)
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %410, label %406

406:                                              ; preds = %402
  %407 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %408 = call i8* @hipGetErrorString(i32 %404)
  %409 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %407, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 143, i32 %404, i8* %408, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0)) #9
  call void @exit(i32 1) #10
  unreachable

410:                                              ; preds = %402
  call void @free(i8* nonnull %66) #8
  call void @free(i8* nonnull %119) #8
  %411 = select i1 %305, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @str.33, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @str.32, i64 0, i64 0)
  %412 = xor i1 %305, true
  %413 = zext i1 %412 to i32
  %414 = call i32 @puts(i8* nonnull dereferenceable(1) %411)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %104) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %103) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %57) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %48) #8
  call void @llvm.lifetime.end.p0i8(i64 792, i8* nonnull %26) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #8
  ret i32 %413

415:                                              ; preds = %374, %370, %366, %362, %358, %354, %350, %341
  %416 = phi i32 [ %343, %341 ], [ %352, %350 ], [ %356, %354 ], [ %360, %358 ], [ %364, %362 ], [ %368, %366 ], [ %372, %370 ], [ %376, %374 ]
  %417 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %418 = call i8* @hipGetErrorString(i32 %416)
  %419 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %417, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 137, i32 %416, i8* %418, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0)) #9
  call void @exit(i32 1) #10
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

declare dso_local i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t*, i32) local_unnamed_addr #3

declare dso_local i32 @hipMalloc(i8**, i64) local_unnamed_addr #3

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #4

declare dso_local i32 @hipStreamCreate(%struct.ihipStream_t**) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @hipEventCreate(%struct.ihipEvent_t**) local_unnamed_addr #3

declare dso_local i32 @hipEventCreateWithFlags(%struct.ihipEvent_t**, i32) local_unnamed_addr #3

declare dso_local i32 @hipEventRecord(%struct.ihipEvent_t*, %struct.ihipStream_t*) local_unnamed_addr #3

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #3

declare dso_local i32 @hipStreamWaitEvent(%struct.ihipStream_t*, %struct.ihipEvent_t*, i32) local_unnamed_addr #3

declare dso_local i32 @hipMemcpyAsync(i8*, i8*, i64, i32, %struct.ihipStream_t*) local_unnamed_addr #3

declare dso_local i32 @hipEventSynchronize(%struct.ihipEvent_t*) local_unnamed_addr #3

declare dso_local i32 @hipEventElapsedTime(float*, %struct.ihipEvent_t*, %struct.ihipEvent_t*) local_unnamed_addr #3

declare dso_local i32 @hipStreamDestroy(%struct.ihipStream_t*) local_unnamed_addr #3

declare dso_local i32 @hipEventDestroy(%struct.ihipEvent_t*) local_unnamed_addr #3

declare dso_local i32 @hipHostFree(i8*) local_unnamed_addr #3

declare dso_local i32 @hipFree(i8*) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #2

declare dso_local i8* @hipGetErrorString(i32) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #6

declare dso_local i32 @hipHostMalloc(i8**, i64, i32) local_unnamed_addr #3

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
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i64*, i64)** @_Z11clock_blockPll to i8*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %9 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i64*, i32)** @_Z3sumPli to i8*), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %10 = tail call i32 @atexit(void (i8*)* nonnull @__hip_module_dtor)
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
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #7

attributes #0 = { norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git bdeeab053a8bf72a56bdf54d056a43ecb9dc2748)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!12, !10, i64 360}
!12 = !{!"_ZTS15hipDeviceProp_t", !5, i64 0, !8, i64 256, !8, i64 264, !10, i64 272, !10, i64 276, !10, i64 280, !5, i64 284, !5, i64 296, !10, i64 308, !10, i64 312, !10, i64 316, !8, i64 320, !10, i64 328, !10, i64 332, !10, i64 336, !10, i64 340, !10, i64 344, !10, i64 348, !10, i64 352, !13, i64 356, !10, i64 360, !10, i64 364, !10, i64 368, !10, i64 372, !8, i64 376, !10, i64 384, !10, i64 388, !10, i64 392, !5, i64 396, !10, i64 652, !10, i64 656, !10, i64 660, !10, i64 664, !10, i64 668, !5, i64 672, !5, i64 680, !4, i64 696, !4, i64 704, !8, i64 712, !8, i64 720, !8, i64 728, !10, i64 736, !10, i64 740, !10, i64 744, !10, i64 748, !10, i64 752, !10, i64 756, !10, i64 760, !10, i64 764, !10, i64 768, !10, i64 772, !10, i64 776, !10, i64 780, !10, i64 784, !10, i64 788}
!13 = !{!"_ZTS15hipDeviceArch_t", !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 1, !10, i64 1, !10, i64 1, !10, i64 1, !10, i64 1, !10, i64 1, !10, i64 1, !10, i64 1, !10, i64 2, !10, i64 2, !10, i64 2}
!14 = !{!12, !10, i64 328}
!15 = !{!12, !10, i64 332}
!16 = !{!12, !10, i64 336}
!17 = !{!12, !10, i64 308}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!21, !21, i64 0}
!21 = !{!"float", !5, i64 0}
