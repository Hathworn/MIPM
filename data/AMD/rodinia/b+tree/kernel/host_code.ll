; ModuleID = 'kernel_gpu_cuda_wrapper.cu'
source_filename = "kernel_gpu_cuda_wrapper.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knode = type { i32, [257 x i32], [257 x i32], i8, i32 }
%struct.record = type { i32 }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque

$_ZN4dim3C2Ejjj = comdat any

$__hip_gpubin_handle = comdat any

@findK = constant void (i64, %struct.knode*, i64, %struct.record*, i64*, i64*, i32*, %struct.record*)* @__device_stub__findK, align 8
@.str = private unnamed_addr constant [75 x i8] c"# of blocks = %d, # of threads/block = %d (ensure that device can handle)\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"hipMalloc  recordsD\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"hipMalloc  currKnodeD\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"hipMalloc  offsetD\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"hipMalloc  keysD\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"hipMalloc ansD\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"hipMalloc hipMemcpy memD\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"hipMalloc hipMemcpy currKnodeD\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"hipMalloc hipMemcpy offsetD\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"hipMalloc hipMemcpy keysD\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"hipMalloc hipMemcpy ansD\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"findK\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"hipMemcpy ansD\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @__device_stub__findK(i64 noundef %0, %struct.knode* noundef %1, i64 noundef %2, %struct.record* noundef %3, i64* noundef %4, i64* noundef %5, i32* noundef %6, %struct.record* noundef %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.knode*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.record*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.record*, align 8
  %17 = alloca %struct.dim3, align 8
  %18 = alloca %struct.dim3, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca { i64, i32 }, align 8
  %22 = alloca { i64, i32 }, align 8
  store i64 %0, i64* %9, align 8
  store %struct.knode* %1, %struct.knode** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.record* %3, %struct.record** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.record* %7, %struct.record** %16, align 8
  %23 = alloca i8*, i64 8, align 16
  %24 = bitcast i64* %9 to i8*
  %25 = getelementptr i8*, i8** %23, i32 0
  store i8* %24, i8** %25, align 8
  %26 = bitcast %struct.knode** %10 to i8*
  %27 = getelementptr i8*, i8** %23, i32 1
  store i8* %26, i8** %27, align 8
  %28 = bitcast i64* %11 to i8*
  %29 = getelementptr i8*, i8** %23, i32 2
  store i8* %28, i8** %29, align 8
  %30 = bitcast %struct.record** %12 to i8*
  %31 = getelementptr i8*, i8** %23, i32 3
  store i8* %30, i8** %31, align 8
  %32 = bitcast i64** %13 to i8*
  %33 = getelementptr i8*, i8** %23, i32 4
  store i8* %32, i8** %33, align 8
  %34 = bitcast i64** %14 to i8*
  %35 = getelementptr i8*, i8** %23, i32 5
  store i8* %34, i8** %35, align 8
  %36 = bitcast i32** %15 to i8*
  %37 = getelementptr i8*, i8** %23, i32 6
  store i8* %36, i8** %37, align 8
  %38 = bitcast %struct.record** %16 to i8*
  %39 = getelementptr i8*, i8** %23, i32 7
  store i8* %38, i8** %39, align 8
  %40 = call i32 @__hipPopCallConfiguration(%struct.dim3* %17, %struct.dim3* %18, i64* %19, i8** %20)
  %41 = load i64, i64* %19, align 8
  %42 = load i8*, i8** %20, align 8
  %43 = bitcast { i64, i32 }* %21 to i8*
  %44 = bitcast %struct.dim3* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 12, i1 false)
  %45 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = bitcast { i64, i32 }* %22 to i8*
  %50 = bitcast %struct.dim3* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 12, i1 false)
  %51 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = bitcast i8* %42 to %struct.ihipStream_t*
  %56 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i64, %struct.knode*, i64, %struct.record*, i64*, i64*, i32*, %struct.record*)** @findK to i8*), i64 %46, i32 %48, i64 %52, i32 %54, i8** noundef %23, i64 noundef %41, %struct.ihipStream_t* noundef %55)
  br label %57

57:                                               ; preds = %8
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @kernel_gpu_cuda_wrapper(%struct.record* noundef %0, i64 noundef %1, %struct.knode* noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i64 noundef %6, i32 noundef %7, i64* noundef %8, i64* noundef %9, i32* noundef %10, %struct.record* noundef %11) #2 {
  %13 = alloca %struct.record*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.knode*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.record*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.record*, align 8
  %28 = alloca %struct.knode*, align 8
  %29 = alloca i64*, align 8
  %30 = alloca i64*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca %struct.record*, align 8
  %33 = alloca %struct.dim3, align 4
  %34 = alloca %struct.dim3, align 4
  %35 = alloca { i64, i32 }, align 4
  %36 = alloca { i64, i32 }, align 4
  store %struct.record* %0, %struct.record** %13, align 8
  store i64 %1, i64* %14, align 8
  store %struct.knode* %2, %struct.knode** %15, align 8
  store i64 %3, i64* %16, align 8
  store i64 %4, i64* %17, align 8
  store i32 %5, i32* %18, align 4
  store i64 %6, i64* %19, align 8
  store i32 %7, i32* %20, align 4
  store i64* %8, i64** %21, align 8
  store i64* %9, i64** %22, align 8
  store i32* %10, i32** %23, align 8
  store %struct.record* %11, %struct.record** %24, align 8
  %37 = call i32 @hipDeviceSynchronize()
  %38 = load i32, i32* %20, align 4
  store i32 %38, i32* %25, align 4
  %39 = load i32, i32* %18, align 4
  %40 = icmp slt i32 %39, 1024
  br i1 %40, label %41, label %43

41:                                               ; preds = %12
  %42 = load i32, i32* %18, align 4
  br label %44

43:                                               ; preds = %12
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 1024, %43 ]
  store i32 %45, i32* %26, align 4
  %46 = load i32, i32* %25, align 4
  %47 = load i32, i32* %26, align 4
  %48 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 noundef %46, i32 noundef %47)
  %49 = bitcast %struct.record** %27 to i8**
  %50 = load i64, i64* %14, align 8
  %51 = call i32 @hipMalloc(i8** noundef %49, i64 noundef %50)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %52 = bitcast %struct.knode** %28 to i8**
  %53 = load i64, i64* %17, align 8
  %54 = call i32 @hipMalloc(i8** noundef %52, i64 noundef %53)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %55 = bitcast i64** %29 to i8**
  %56 = load i32, i32* %20, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 8
  %59 = call i32 @hipMalloc(i8** noundef %55, i64 noundef %58)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %60 = bitcast i64** %30 to i8**
  %61 = load i32, i32* %20, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 8
  %64 = call i32 @hipMalloc(i8** noundef %60, i64 noundef %63)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %65 = bitcast i32** %31 to i8**
  %66 = load i32, i32* %20, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = call i32 @hipMalloc(i8** noundef %65, i64 noundef %68)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %70 = bitcast %struct.record** %32 to i8**
  %71 = load i32, i32* %20, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = call i32 @hipMalloc(i8** noundef %70, i64 noundef %73)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %75 = load %struct.record*, %struct.record** %27, align 8
  %76 = bitcast %struct.record* %75 to i8*
  %77 = load %struct.record*, %struct.record** %13, align 8
  %78 = bitcast %struct.record* %77 to i8*
  %79 = load i64, i64* %14, align 8
  %80 = call i32 @hipMemcpy(i8* noundef %76, i8* noundef %78, i64 noundef %79, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %81 = load %struct.knode*, %struct.knode** %28, align 8
  %82 = bitcast %struct.knode* %81 to i8*
  %83 = load %struct.knode*, %struct.knode** %15, align 8
  %84 = bitcast %struct.knode* %83 to i8*
  %85 = load i64, i64* %17, align 8
  %86 = call i32 @hipMemcpy(i8* noundef %82, i8* noundef %84, i64 noundef %85, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %87 = load i64*, i64** %29, align 8
  %88 = bitcast i64* %87 to i8*
  %89 = load i64*, i64** %21, align 8
  %90 = bitcast i64* %89 to i8*
  %91 = load i32, i32* %20, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 8
  %94 = call i32 @hipMemcpy(i8* noundef %88, i8* noundef %90, i64 noundef %93, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %95 = load i64*, i64** %30, align 8
  %96 = bitcast i64* %95 to i8*
  %97 = load i64*, i64** %22, align 8
  %98 = bitcast i64* %97 to i8*
  %99 = load i32, i32* %20, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 8
  %102 = call i32 @hipMemcpy(i8* noundef %96, i8* noundef %98, i64 noundef %101, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %103 = load i32*, i32** %31, align 8
  %104 = bitcast i32* %103 to i8*
  %105 = load i32*, i32** %23, align 8
  %106 = bitcast i32* %105 to i8*
  %107 = load i32, i32* %20, align 4
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 4
  %110 = call i32 @hipMemcpy(i8* noundef %104, i8* noundef %106, i64 noundef %109, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %111 = load %struct.record*, %struct.record** %32, align 8
  %112 = bitcast %struct.record* %111 to i8*
  %113 = load %struct.record*, %struct.record** %24, align 8
  %114 = bitcast %struct.record* %113 to i8*
  %115 = load i32, i32* %20, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 %116, 4
  %118 = call i32 @hipMemcpy(i8* noundef %112, i8* noundef %114, i64 noundef %117, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %119

119:                                              ; preds = %44
  %120 = load i32, i32* %25, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %33, i32 noundef %120, i32 noundef 1, i32 noundef 1)
  %121 = load i32, i32* %26, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %34, i32 noundef %121, i32 noundef 1, i32 noundef 1)
  %122 = bitcast { i64, i32 }* %35 to i8*
  %123 = bitcast %struct.dim3* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %122, i8* align 4 %123, i64 12, i1 false)
  %124 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 0
  %125 = load i64, i64* %124, align 4
  %126 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = bitcast { i64, i32 }* %36 to i8*
  %129 = bitcast %struct.dim3* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %128, i8* align 4 %129, i64 12, i1 false)
  %130 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %36, i32 0, i32 0
  %131 = load i64, i64* %130, align 4
  %132 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %36, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @__hipPushCallConfiguration(i64 %125, i32 %127, i64 %131, i32 %133, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %145, label %136

136:                                              ; preds = %119
  %137 = load i64, i64* %19, align 8
  %138 = load %struct.knode*, %struct.knode** %28, align 8
  %139 = load i64, i64* %16, align 8
  %140 = load %struct.record*, %struct.record** %27, align 8
  %141 = load i64*, i64** %29, align 8
  %142 = load i64*, i64** %30, align 8
  %143 = load i32*, i32** %31, align 8
  %144 = load %struct.record*, %struct.record** %32, align 8
  call void @__device_stub__findK(i64 noundef %137, %struct.knode* noundef %138, i64 noundef %139, %struct.record* noundef %140, i64* noundef %141, i64* noundef %142, i32* noundef %143, %struct.record* noundef %144)
  br label %145

145:                                              ; preds = %136, %119
  br label %146

146:                                              ; preds = %145
  %147 = call i32 @hipDeviceSynchronize()
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %148 = load %struct.record*, %struct.record** %24, align 8
  %149 = bitcast %struct.record* %148 to i8*
  %150 = load %struct.record*, %struct.record** %32, align 8
  %151 = bitcast %struct.record* %150 to i8*
  %152 = load i32, i32* %20, align 4
  %153 = sext i32 %152 to i64
  %154 = mul i64 %153, 4
  %155 = call i32 @hipMemcpy(i8* noundef %149, i8* noundef %151, i64 noundef %154, i32 noundef 2)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %156 = load %struct.record*, %struct.record** %27, align 8
  %157 = bitcast %struct.record* %156 to i8*
  %158 = call i32 @hipFree(i8* noundef %157)
  %159 = load %struct.knode*, %struct.knode** %28, align 8
  %160 = bitcast %struct.knode* %159 to i8*
  %161 = call i32 @hipFree(i8* noundef %160)
  %162 = load i64*, i64** %29, align 8
  %163 = bitcast i64* %162 to i8*
  %164 = call i32 @hipFree(i8* noundef %163)
  %165 = load i64*, i64** %30, align 8
  %166 = bitcast i64* %165 to i8*
  %167 = call i32 @hipFree(i8* noundef %166)
  %168 = load i32*, i32** %31, align 8
  %169 = bitcast i32* %168 to i8*
  %170 = call i32 @hipFree(i8* noundef %169)
  %171 = load %struct.record*, %struct.record** %32, align 8
  %172 = bitcast %struct.record* %171 to i8*
  %173 = call i32 @hipFree(i8* noundef %172)
  ret void
}

declare i32 @hipDeviceSynchronize() #3

declare i32 @printf(i8* noundef, ...) #3

declare i32 @hipMalloc(i8** noundef, i64 noundef) #3

declare void @checkCUDAError(i8* noundef) #3

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #3

declare i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 comdat align 2 {
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

declare i32 @hipFree(i8* noundef) #3

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i64, %struct.knode*, i64, %struct.record*, i64*, i64*, i32*, %struct.record*)** @findK to i8*), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
attributes #2 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 1be90618e508074abc746ab4963d7ad92710d6c5)"}
