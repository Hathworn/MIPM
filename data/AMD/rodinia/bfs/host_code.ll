; ModuleID = 'bfs.cu'
source_filename = "bfs.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Node = type { i32, i32 }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque

$_ZN4dim3C2Ejjj = comdat any

$__hip_gpubin_handle = comdat any

@fp = dso_local global %struct._IO_FILE* null, align 8
@_Z6KernelP4NodePiPbS2_S2_S1_i = constant void (%struct.Node*, i32*, i8*, i8*, i8*, i32*, i32)* @_Z21__device_stub__KernelP4NodePiPbS2_S2_S1_i, align 8
@_Z7Kernel2PbS_S_S_i = constant void (i8*, i8*, i8*, i8*, i32)* @_Z22__device_stub__Kernel2PbS_S_S_i, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [24 x i8] c"Usage: %s <input_file>\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Reading File\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Error Reading graph file\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Read File\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Copied Everything to GPU memory\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Start traversing the tree\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Kernel Executed %d times\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"result.txt\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"%d) cost:%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Result stored in result.txt\0A\00", align 1
@0 = private unnamed_addr constant [30 x i8] c"_Z6KernelP4NodePiPbS2_S2_S1_i\00", align 1
@1 = private unnamed_addr constant [20 x i8] c"_Z7Kernel2PbS_S_S_i\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z21__device_stub__KernelP4NodePiPbS2_S2_S1_i(%struct.Node* noundef %0, i32* noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, i32* noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.Node*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.dim3, align 8
  %16 = alloca %struct.dim3, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca { i64, i32 }, align 8
  %20 = alloca { i64, i32 }, align 8
  store %struct.Node* %0, %struct.Node** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %21 = alloca i8*, i64 7, align 16
  %22 = bitcast %struct.Node** %8 to i8*
  %23 = getelementptr i8*, i8** %21, i32 0
  store i8* %22, i8** %23, align 8
  %24 = bitcast i32** %9 to i8*
  %25 = getelementptr i8*, i8** %21, i32 1
  store i8* %24, i8** %25, align 8
  %26 = bitcast i8** %10 to i8*
  %27 = getelementptr i8*, i8** %21, i32 2
  store i8* %26, i8** %27, align 8
  %28 = bitcast i8** %11 to i8*
  %29 = getelementptr i8*, i8** %21, i32 3
  store i8* %28, i8** %29, align 8
  %30 = bitcast i8** %12 to i8*
  %31 = getelementptr i8*, i8** %21, i32 4
  store i8* %30, i8** %31, align 8
  %32 = bitcast i32** %13 to i8*
  %33 = getelementptr i8*, i8** %21, i32 5
  store i8* %32, i8** %33, align 8
  %34 = bitcast i32* %14 to i8*
  %35 = getelementptr i8*, i8** %21, i32 6
  store i8* %34, i8** %35, align 8
  %36 = call i32 @__hipPopCallConfiguration(%struct.dim3* %15, %struct.dim3* %16, i64* %17, i8** %18)
  %37 = load i64, i64* %17, align 8
  %38 = load i8*, i8** %18, align 8
  %39 = bitcast { i64, i32 }* %19 to i8*
  %40 = bitcast %struct.dim3* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 12, i1 false)
  %41 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = bitcast { i64, i32 }* %20 to i8*
  %46 = bitcast %struct.dim3* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 12, i1 false)
  %47 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = bitcast i8* %38 to %struct.ihipStream_t*
  %52 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (%struct.Node*, i32*, i8*, i8*, i8*, i32*, i32)** @_Z6KernelP4NodePiPbS2_S2_S1_i to i8*), i64 %42, i32 %44, i64 %48, i32 %50, i8** noundef %21, i64 noundef %37, %struct.ihipStream_t* noundef %51)
  br label %53

53:                                               ; preds = %7
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z22__device_stub__Kernel2PbS_S_S_i(i8* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i32 noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca { i64, i32 }, align 8
  %16 = alloca { i64, i32 }, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = alloca i8*, i64 5, align 16
  %18 = bitcast i8** %6 to i8*
  %19 = getelementptr i8*, i8** %17, i32 0
  store i8* %18, i8** %19, align 8
  %20 = bitcast i8** %7 to i8*
  %21 = getelementptr i8*, i8** %17, i32 1
  store i8* %20, i8** %21, align 8
  %22 = bitcast i8** %8 to i8*
  %23 = getelementptr i8*, i8** %17, i32 2
  store i8* %22, i8** %23, align 8
  %24 = bitcast i8** %9 to i8*
  %25 = getelementptr i8*, i8** %17, i32 3
  store i8* %24, i8** %25, align 8
  %26 = bitcast i32* %10 to i8*
  %27 = getelementptr i8*, i8** %17, i32 4
  store i8* %26, i8** %27, align 8
  %28 = call i32 @__hipPopCallConfiguration(%struct.dim3* %11, %struct.dim3* %12, i64* %13, i8** %14)
  %29 = load i64, i64* %13, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = bitcast { i64, i32 }* %15 to i8*
  %32 = bitcast %struct.dim3* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 12, i1 false)
  %33 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = bitcast { i64, i32 }* %16 to i8*
  %38 = bitcast %struct.dim3* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 12, i1 false)
  %39 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = bitcast i8* %30 to %struct.ihipStream_t*
  %44 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i8*, i8*, i8*, i8*, i32)** @_Z7Kernel2PbS_S_S_i to i8*), i64 %34, i32 %36, i64 %40, i32 %42, i8** noundef %17, i64 noundef %29, %struct.ihipStream_t* noundef %43)
  br label %45

45:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i8**, i8*** %4, align 8
  call void @_Z8BFSGraphiPPc(i32 noundef %5, i8** noundef %6)
  ret i32 0
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z8BFSGraphiPPc(i32 noundef %0, i8** noundef %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.Node*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.Node*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca %struct.dim3, align 4
  %32 = alloca %struct.dim3, align 4
  %33 = alloca i32, align 4
  %34 = alloca i8, align 1
  %35 = alloca %struct.dim3, align 4
  %36 = alloca %struct.dim3, align 4
  %37 = alloca { i64, i32 }, align 4
  %38 = alloca { i64, i32 }, align 4
  %39 = alloca %struct.dim3, align 4
  %40 = alloca %struct.dim3, align 4
  %41 = alloca { i64, i32 }, align 4
  %42 = alloca { i64, i32 }, align 4
  %43 = alloca %struct._IO_FILE*, align 8
  %44 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 2
  br i1 %46, label %47, label %50

47:                                               ; preds = %2
  %48 = load i32, i32* %3, align 4
  %49 = load i8**, i8*** %4, align 8
  call void @_Z5UsageiPPc(i32 noundef %48, i8** noundef %49)
  call void @exit(i32 noundef 0) #10
  unreachable

50:                                               ; preds = %2
  %51 = load i8**, i8*** %4, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %7, align 8
  %54 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i8*, i8** %7, align 8
  %56 = call %struct._IO_FILE* @fopen(i8* noundef %55, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %56, %struct._IO_FILE** @fp, align 8
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %58 = icmp ne %struct._IO_FILE* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %50
  %60 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %382

61:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %62, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* noundef %5)
  store i32 1, i32* %9, align 4
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp sgt i32 %65, 512
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load i32, i32* %5, align 4
  %69 = sitofp i32 %68 to double
  %70 = fdiv contract double %69, 5.120000e+02
  %71 = call contract double @llvm.ceil.f64(double %70)
  %72 = fptosi double %71 to i32
  store i32 %72, i32* %9, align 4
  store i32 512, i32* %10, align 4
  br label %73

73:                                               ; preds = %67, %61
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 8, %75
  %77 = call noalias i8* @malloc(i64 noundef %76) #11
  %78 = bitcast i8* %77 to %struct.Node*
  store %struct.Node* %78, %struct.Node** %11, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 1, %80
  %82 = call noalias i8* @malloc(i64 noundef %81) #11
  store i8* %82, i8** %12, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 1, %84
  %86 = call noalias i8* @malloc(i64 noundef %85) #11
  store i8* %86, i8** %13, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 1, %88
  %90 = call noalias i8* @malloc(i64 noundef %89) #11
  store i8* %90, i8** %14, align 8
  store i32 0, i32* %17, align 4
  br label %91

91:                                               ; preds = %122, %73
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %125

95:                                               ; preds = %91
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %97 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %96, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* noundef %15, i32* noundef %16)
  %98 = load i32, i32* %15, align 4
  %99 = load %struct.Node*, %struct.Node** %11, align 8
  %100 = load i32, i32* %17, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.Node, %struct.Node* %99, i64 %101
  %103 = getelementptr inbounds %struct.Node, %struct.Node* %102, i32 0, i32 0
  store i32 %98, i32* %103, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load %struct.Node*, %struct.Node** %11, align 8
  %106 = load i32, i32* %17, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.Node, %struct.Node* %105, i64 %107
  %109 = getelementptr inbounds %struct.Node, %struct.Node* %108, i32 0, i32 1
  store i32 %104, i32* %109, align 4
  %110 = load i8*, i8** %12, align 8
  %111 = load i32, i32* %17, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  store i8 0, i8* %113, align 1
  %114 = load i8*, i8** %13, align 8
  %115 = load i32, i32* %17, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  store i8 0, i8* %117, align 1
  %118 = load i8*, i8** %14, align 8
  %119 = load i32, i32* %17, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  store i8 0, i8* %121, align 1
  br label %122

122:                                              ; preds = %95
  %123 = load i32, i32* %17, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %17, align 4
  br label %91, !llvm.loop !6

125:                                              ; preds = %91
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %127 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %126, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* noundef %8)
  store i32 0, i32* %8, align 4
  %128 = load i8*, i8** %12, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  store i8 1, i8* %131, align 1
  %132 = load i8*, i8** %14, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  store i8 1, i8* %135, align 1
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %137 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %136, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* noundef %6)
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = mul i64 4, %139
  %141 = call noalias i8* @malloc(i64 noundef %140) #11
  %142 = bitcast i8* %141 to i32*
  store i32* %142, i32** %20, align 8
  store i32 0, i32* %21, align 4
  br label %143

143:                                              ; preds = %157, %125
  %144 = load i32, i32* %21, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %160

147:                                              ; preds = %143
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %149 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %148, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* noundef %18)
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %151 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* noundef %150, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* noundef %19)
  %152 = load i32, i32* %18, align 4
  %153 = load i32*, i32** %20, align 8
  %154 = load i32, i32* %21, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %152, i32* %156, align 4
  br label %157

157:                                              ; preds = %147
  %158 = load i32, i32* %21, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %21, align 4
  br label %143, !llvm.loop !8

160:                                              ; preds = %143
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %162 = icmp ne %struct._IO_FILE* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @fp, align 8
  %165 = call i32 @fclose(%struct._IO_FILE* noundef %164)
  br label %166

166:                                              ; preds = %163, %160
  %167 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %168 = bitcast %struct.Node** %22 to i8**
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = mul i64 8, %170
  %172 = call i32 @hipMalloc(i8** noundef %168, i64 noundef %171)
  %173 = load %struct.Node*, %struct.Node** %22, align 8
  %174 = bitcast %struct.Node* %173 to i8*
  %175 = load %struct.Node*, %struct.Node** %11, align 8
  %176 = bitcast %struct.Node* %175 to i8*
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = mul i64 8, %178
  %180 = call i32 @hipMemcpy(i8* noundef %174, i8* noundef %176, i64 noundef %179, i32 noundef 1)
  %181 = bitcast i32** %23 to i8**
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = mul i64 4, %183
  %185 = call i32 @hipMalloc(i8** noundef %181, i64 noundef %184)
  %186 = load i32*, i32** %23, align 8
  %187 = bitcast i32* %186 to i8*
  %188 = load i32*, i32** %20, align 8
  %189 = bitcast i32* %188 to i8*
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = mul i64 4, %191
  %193 = call i32 @hipMemcpy(i8* noundef %187, i8* noundef %189, i64 noundef %192, i32 noundef 1)
  %194 = load i32, i32* %5, align 4
  %195 = sext i32 %194 to i64
  %196 = mul i64 1, %195
  %197 = call i32 @hipMalloc(i8** noundef %24, i64 noundef %196)
  %198 = load i8*, i8** %24, align 8
  %199 = load i8*, i8** %12, align 8
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = mul i64 1, %201
  %203 = call i32 @hipMemcpy(i8* noundef %198, i8* noundef %199, i64 noundef %202, i32 noundef 1)
  %204 = load i32, i32* %5, align 4
  %205 = sext i32 %204 to i64
  %206 = mul i64 1, %205
  %207 = call i32 @hipMalloc(i8** noundef %25, i64 noundef %206)
  %208 = load i8*, i8** %25, align 8
  %209 = load i8*, i8** %13, align 8
  %210 = load i32, i32* %5, align 4
  %211 = sext i32 %210 to i64
  %212 = mul i64 1, %211
  %213 = call i32 @hipMemcpy(i8* noundef %208, i8* noundef %209, i64 noundef %212, i32 noundef 1)
  %214 = load i32, i32* %5, align 4
  %215 = sext i32 %214 to i64
  %216 = mul i64 1, %215
  %217 = call i32 @hipMalloc(i8** noundef %26, i64 noundef %216)
  %218 = load i8*, i8** %26, align 8
  %219 = load i8*, i8** %14, align 8
  %220 = load i32, i32* %5, align 4
  %221 = sext i32 %220 to i64
  %222 = mul i64 1, %221
  %223 = call i32 @hipMemcpy(i8* noundef %218, i8* noundef %219, i64 noundef %222, i32 noundef 1)
  %224 = load i32, i32* %5, align 4
  %225 = sext i32 %224 to i64
  %226 = mul i64 4, %225
  %227 = call noalias i8* @malloc(i64 noundef %226) #11
  %228 = bitcast i8* %227 to i32*
  store i32* %228, i32** %27, align 8
  store i32 0, i32* %28, align 4
  br label %229

229:                                              ; preds = %238, %166
  %230 = load i32, i32* %28, align 4
  %231 = load i32, i32* %5, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %241

233:                                              ; preds = %229
  %234 = load i32*, i32** %27, align 8
  %235 = load i32, i32* %28, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  store i32 -1, i32* %237, align 4
  br label %238

238:                                              ; preds = %233
  %239 = load i32, i32* %28, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %28, align 4
  br label %229, !llvm.loop !9

241:                                              ; preds = %229
  %242 = load i32*, i32** %27, align 8
  %243 = load i32, i32* %8, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  store i32 0, i32* %245, align 4
  %246 = bitcast i32** %29 to i8**
  %247 = load i32, i32* %5, align 4
  %248 = sext i32 %247 to i64
  %249 = mul i64 4, %248
  %250 = call i32 @hipMalloc(i8** noundef %246, i64 noundef %249)
  %251 = load i32*, i32** %29, align 8
  %252 = bitcast i32* %251 to i8*
  %253 = load i32*, i32** %27, align 8
  %254 = bitcast i32* %253 to i8*
  %255 = load i32, i32* %5, align 4
  %256 = sext i32 %255 to i64
  %257 = mul i64 4, %256
  %258 = call i32 @hipMemcpy(i8* noundef %252, i8* noundef %254, i64 noundef %257, i32 noundef 1)
  %259 = call i32 @hipMalloc(i8** noundef %30, i64 noundef 1)
  %260 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %261 = load i32, i32* %9, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %31, i32 noundef %261, i32 noundef 1, i32 noundef 1)
  %262 = load i32, i32* %10, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %32, i32 noundef %262, i32 noundef 1, i32 noundef 1)
  store i32 0, i32* %33, align 4
  %263 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %264

264:                                              ; preds = %323, %241
  store i8 0, i8* %34, align 1
  %265 = load i8*, i8** %30, align 8
  %266 = call i32 @hipMemcpy(i8* noundef %265, i8* noundef %34, i64 noundef 1, i32 noundef 1)
  %267 = bitcast %struct.dim3* %35 to i8*
  %268 = bitcast %struct.dim3* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %267, i8* align 4 %268, i64 12, i1 false)
  %269 = bitcast %struct.dim3* %36 to i8*
  %270 = bitcast %struct.dim3* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %269, i8* align 4 %270, i64 12, i1 false)
  %271 = bitcast { i64, i32 }* %37 to i8*
  %272 = bitcast %struct.dim3* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %271, i8* align 4 %272, i64 12, i1 false)
  %273 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 0
  %274 = load i64, i64* %273, align 4
  %275 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = bitcast { i64, i32 }* %38 to i8*
  %278 = bitcast %struct.dim3* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %277, i8* align 4 %278, i64 12, i1 false)
  %279 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %38, i32 0, i32 0
  %280 = load i64, i64* %279, align 4
  %281 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %38, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @__hipPushCallConfiguration(i64 %274, i32 %276, i64 %280, i32 %282, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %293, label %285

285:                                              ; preds = %264
  %286 = load %struct.Node*, %struct.Node** %22, align 8
  %287 = load i32*, i32** %23, align 8
  %288 = load i8*, i8** %24, align 8
  %289 = load i8*, i8** %25, align 8
  %290 = load i8*, i8** %26, align 8
  %291 = load i32*, i32** %29, align 8
  %292 = load i32, i32* %5, align 4
  call void @_Z21__device_stub__KernelP4NodePiPbS2_S2_S1_i(%struct.Node* noundef %286, i32* noundef %287, i8* noundef %288, i8* noundef %289, i8* noundef %290, i32* noundef %291, i32 noundef %292)
  br label %293

293:                                              ; preds = %285, %264
  %294 = bitcast %struct.dim3* %39 to i8*
  %295 = bitcast %struct.dim3* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %294, i8* align 4 %295, i64 12, i1 false)
  %296 = bitcast %struct.dim3* %40 to i8*
  %297 = bitcast %struct.dim3* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %296, i8* align 4 %297, i64 12, i1 false)
  %298 = bitcast { i64, i32 }* %41 to i8*
  %299 = bitcast %struct.dim3* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %298, i8* align 4 %299, i64 12, i1 false)
  %300 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %41, i32 0, i32 0
  %301 = load i64, i64* %300, align 4
  %302 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %41, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = bitcast { i64, i32 }* %42 to i8*
  %305 = bitcast %struct.dim3* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %304, i8* align 4 %305, i64 12, i1 false)
  %306 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %42, i32 0, i32 0
  %307 = load i64, i64* %306, align 4
  %308 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %42, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @__hipPushCallConfiguration(i64 %301, i32 %303, i64 %307, i32 %309, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %318, label %312

312:                                              ; preds = %293
  %313 = load i8*, i8** %24, align 8
  %314 = load i8*, i8** %25, align 8
  %315 = load i8*, i8** %26, align 8
  %316 = load i8*, i8** %30, align 8
  %317 = load i32, i32* %5, align 4
  call void @_Z22__device_stub__Kernel2PbS_S_S_i(i8* noundef %313, i8* noundef %314, i8* noundef %315, i8* noundef %316, i32 noundef %317)
  br label %318

318:                                              ; preds = %312, %293
  %319 = load i8*, i8** %30, align 8
  %320 = call i32 @hipMemcpy(i8* noundef %34, i8* noundef %319, i64 noundef 1, i32 noundef 2)
  %321 = load i32, i32* %33, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %33, align 4
  br label %323

323:                                              ; preds = %318
  %324 = load i8, i8* %34, align 1
  %325 = trunc i8 %324 to i1
  br i1 %325, label %264, label %326, !llvm.loop !10

326:                                              ; preds = %323
  %327 = load i32, i32* %33, align 4
  %328 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 noundef %327)
  %329 = load i32*, i32** %27, align 8
  %330 = bitcast i32* %329 to i8*
  %331 = load i32*, i32** %29, align 8
  %332 = bitcast i32* %331 to i8*
  %333 = load i32, i32* %5, align 4
  %334 = sext i32 %333 to i64
  %335 = mul i64 4, %334
  %336 = call i32 @hipMemcpy(i8* noundef %330, i8* noundef %332, i64 noundef %335, i32 noundef 2)
  %337 = call %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store %struct._IO_FILE* %337, %struct._IO_FILE** %43, align 8
  store i32 0, i32* %44, align 4
  br label %338

338:                                              ; preds = %351, %326
  %339 = load i32, i32* %44, align 4
  %340 = load i32, i32* %5, align 4
  %341 = icmp slt i32 %339, %340
  br i1 %341, label %342, label %354

342:                                              ; preds = %338
  %343 = load %struct._IO_FILE*, %struct._IO_FILE** %43, align 8
  %344 = load i32, i32* %44, align 4
  %345 = load i32*, i32** %27, align 8
  %346 = load i32, i32* %44, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %343, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 noundef %344, i32 noundef %349)
  br label %351

351:                                              ; preds = %342
  %352 = load i32, i32* %44, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %44, align 4
  br label %338, !llvm.loop !11

354:                                              ; preds = %338
  %355 = load %struct._IO_FILE*, %struct._IO_FILE** %43, align 8
  %356 = call i32 @fclose(%struct._IO_FILE* noundef %355)
  %357 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  %358 = load %struct.Node*, %struct.Node** %11, align 8
  %359 = bitcast %struct.Node* %358 to i8*
  call void @free(i8* noundef %359) #12
  %360 = load i32*, i32** %20, align 8
  %361 = bitcast i32* %360 to i8*
  call void @free(i8* noundef %361) #12
  %362 = load i8*, i8** %12, align 8
  call void @free(i8* noundef %362) #12
  %363 = load i8*, i8** %13, align 8
  call void @free(i8* noundef %363) #12
  %364 = load i8*, i8** %14, align 8
  call void @free(i8* noundef %364) #12
  %365 = load i32*, i32** %27, align 8
  %366 = bitcast i32* %365 to i8*
  call void @free(i8* noundef %366) #12
  %367 = load %struct.Node*, %struct.Node** %22, align 8
  %368 = bitcast %struct.Node* %367 to i8*
  %369 = call i32 @hipFree(i8* noundef %368)
  %370 = load i32*, i32** %23, align 8
  %371 = bitcast i32* %370 to i8*
  %372 = call i32 @hipFree(i8* noundef %371)
  %373 = load i8*, i8** %24, align 8
  %374 = call i32 @hipFree(i8* noundef %373)
  %375 = load i8*, i8** %25, align 8
  %376 = call i32 @hipFree(i8* noundef %375)
  %377 = load i8*, i8** %26, align 8
  %378 = call i32 @hipFree(i8* noundef %377)
  %379 = load i32*, i32** %29, align 8
  %380 = bitcast i32* %379 to i8*
  %381 = call i32 @hipFree(i8* noundef %380)
  br label %382

382:                                              ; preds = %354, %59
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z5UsageiPPc(i32 noundef %0, i8** noundef %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8**, i8*** %4, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* noundef %8)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #5

declare i32 @printf(i8* noundef, ...) #4

declare %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #4

declare i32 @fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #6

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #7

declare i32 @fclose(%struct._IO_FILE* noundef) #4

declare i32 @hipMalloc(i8** noundef, i64 noundef) #4

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #8 comdat align 2 {
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

declare i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #9

declare i32 @hipFree(i8* noundef) #4

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (%struct.Node*, i32*, i8*, i8*, i8*, i32*, i32)** @_Z6KernelP4NodePiPbS2_S2_S1_i to i8*), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %3 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i8*, i8*, i8*, i8*, i32)** @_Z7Kernel2PbS_S_S_i to i8*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
attributes #2 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind }

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
