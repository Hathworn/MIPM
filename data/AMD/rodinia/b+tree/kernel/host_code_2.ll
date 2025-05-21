; ModuleID = 'kernel_gpu_cuda_wrapper_2.cu'
source_filename = "kernel_gpu_cuda_wrapper_2.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knode = type { i32, [257 x i32], [257 x i32], i8, i32 }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque

$_ZN4dim3C2Ejjj = comdat any

$__hip_gpubin_handle = comdat any

@findRangeK = constant void (i64, %struct.knode*, i64, i64*, i64*, i64*, i64*, i32*, i32*, i32*, i32*)* @__device_stub__findRangeK, align 8
@.str = private unnamed_addr constant [75 x i8] c"# of blocks = %d, # of threads/block = %d (ensure that device can handle)\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"hipMalloc  recordsD\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"hipMalloc  currKnodeD\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"hipMalloc  offsetD\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"hipMalloc  lastKnodeD\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"hipMalloc  offset_2D\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"hipMalloc startD\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"hipMalloc endD\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"hipMalloc ansDStart\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"hipMalloc ansDLength\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"hipMalloc hipMemcpy memD\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"hipMalloc hipMemcpy currKnodeD\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"hipMalloc hipMemcpy offsetD\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"hipMalloc hipMemcpy lastKnodeD\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"hipMalloc hipMemcpy offset_2D\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"hipMemcpy startD\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"hipMemcpy endD\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"hipMemcpy ansDStart\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"hipMemcpy ansDLength\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"findRangeK\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @__device_stub__findRangeK(i64 noundef %0, %struct.knode* noundef %1, i64 noundef %2, i64* noundef %3, i64* noundef %4, i64* noundef %5, i64* noundef %6, i32* noundef %7, i32* noundef %8, i32* noundef %9, i32* noundef %10) #0 {
  %12 = alloca i64, align 8
  %13 = alloca %struct.knode*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.dim3, align 8
  %24 = alloca %struct.dim3, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca { i64, i32 }, align 8
  %28 = alloca { i64, i32 }, align 8
  store i64 %0, i64* %12, align 8
  store %struct.knode* %1, %struct.knode** %13, align 8
  store i64 %2, i64* %14, align 8
  store i64* %3, i64** %15, align 8
  store i64* %4, i64** %16, align 8
  store i64* %5, i64** %17, align 8
  store i64* %6, i64** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %29 = alloca i8*, i64 11, align 16
  %30 = bitcast i64* %12 to i8*
  %31 = getelementptr i8*, i8** %29, i32 0
  store i8* %30, i8** %31, align 8
  %32 = bitcast %struct.knode** %13 to i8*
  %33 = getelementptr i8*, i8** %29, i32 1
  store i8* %32, i8** %33, align 8
  %34 = bitcast i64* %14 to i8*
  %35 = getelementptr i8*, i8** %29, i32 2
  store i8* %34, i8** %35, align 8
  %36 = bitcast i64** %15 to i8*
  %37 = getelementptr i8*, i8** %29, i32 3
  store i8* %36, i8** %37, align 8
  %38 = bitcast i64** %16 to i8*
  %39 = getelementptr i8*, i8** %29, i32 4
  store i8* %38, i8** %39, align 8
  %40 = bitcast i64** %17 to i8*
  %41 = getelementptr i8*, i8** %29, i32 5
  store i8* %40, i8** %41, align 8
  %42 = bitcast i64** %18 to i8*
  %43 = getelementptr i8*, i8** %29, i32 6
  store i8* %42, i8** %43, align 8
  %44 = bitcast i32** %19 to i8*
  %45 = getelementptr i8*, i8** %29, i32 7
  store i8* %44, i8** %45, align 8
  %46 = bitcast i32** %20 to i8*
  %47 = getelementptr i8*, i8** %29, i32 8
  store i8* %46, i8** %47, align 8
  %48 = bitcast i32** %21 to i8*
  %49 = getelementptr i8*, i8** %29, i32 9
  store i8* %48, i8** %49, align 8
  %50 = bitcast i32** %22 to i8*
  %51 = getelementptr i8*, i8** %29, i32 10
  store i8* %50, i8** %51, align 8
  %52 = call i32 @__hipPopCallConfiguration(%struct.dim3* %23, %struct.dim3* %24, i64* %25, i8** %26)
  %53 = load i64, i64* %25, align 8
  %54 = load i8*, i8** %26, align 8
  %55 = bitcast { i64, i32 }* %27 to i8*
  %56 = bitcast %struct.dim3* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 12, i1 false)
  %57 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %27, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %27, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = bitcast { i64, i32 }* %28 to i8*
  %62 = bitcast %struct.dim3* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 12, i1 false)
  %63 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = bitcast i8* %54 to %struct.ihipStream_t*
  %68 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i64, %struct.knode*, i64, i64*, i64*, i64*, i64*, i32*, i32*, i32*, i32*)** @findRangeK to i8*), i64 %58, i32 %60, i64 %64, i32 %66, i8** noundef %29, i64 noundef %53, %struct.ihipStream_t* noundef %67)
  br label %69

69:                                               ; preds = %11
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @kernel_gpu_cuda_wrapper_2(%struct.knode* noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i64* noundef %6, i64* noundef %7, i64* noundef %8, i64* noundef %9, i32* noundef %10, i32* noundef %11, i32* noundef %12, i32* noundef %13) #2 {
  %15 = alloca %struct.knode*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.knode*, align 8
  %32 = alloca i64*, align 8
  %33 = alloca i64*, align 8
  %34 = alloca i64*, align 8
  %35 = alloca i64*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca %struct.dim3, align 4
  %41 = alloca %struct.dim3, align 4
  %42 = alloca { i64, i32 }, align 4
  %43 = alloca { i64, i32 }, align 4
  store %struct.knode* %0, %struct.knode** %15, align 8
  store i64 %1, i64* %16, align 8
  store i64 %2, i64* %17, align 8
  store i32 %3, i32* %18, align 4
  store i64 %4, i64* %19, align 8
  store i32 %5, i32* %20, align 4
  store i64* %6, i64** %21, align 8
  store i64* %7, i64** %22, align 8
  store i64* %8, i64** %23, align 8
  store i64* %9, i64** %24, align 8
  store i32* %10, i32** %25, align 8
  store i32* %11, i32** %26, align 8
  store i32* %12, i32** %27, align 8
  store i32* %13, i32** %28, align 8
  %44 = call i32 @hipDeviceSynchronize()
  %45 = load i32, i32* %20, align 4
  store i32 %45, i32* %29, align 4
  %46 = load i32, i32* %18, align 4
  %47 = icmp slt i32 %46, 1024
  br i1 %47, label %48, label %50

48:                                               ; preds = %14
  %49 = load i32, i32* %18, align 4
  br label %51

50:                                               ; preds = %14
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 1024, %50 ]
  store i32 %52, i32* %30, align 4
  %53 = load i32, i32* %29, align 4
  %54 = load i32, i32* %30, align 4
  %55 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 noundef %53, i32 noundef %54)
  %56 = bitcast %struct.knode** %31 to i8**
  %57 = load i64, i64* %17, align 8
  %58 = call i32 @hipMalloc(i8** noundef %56, i64 noundef %57)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %59 = bitcast i64** %32 to i8**
  %60 = load i32, i32* %20, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 8
  %63 = call i32 @hipMalloc(i8** noundef %59, i64 noundef %62)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %64 = bitcast i64** %33 to i8**
  %65 = load i32, i32* %20, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 8
  %68 = call i32 @hipMalloc(i8** noundef %64, i64 noundef %67)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %69 = bitcast i64** %34 to i8**
  %70 = load i32, i32* %20, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 8
  %73 = call i32 @hipMalloc(i8** noundef %69, i64 noundef %72)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %74 = bitcast i64** %35 to i8**
  %75 = load i32, i32* %20, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 8
  %78 = call i32 @hipMalloc(i8** noundef %74, i64 noundef %77)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %79 = bitcast i32** %36 to i8**
  %80 = load i32, i32* %20, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 4
  %83 = call i32 @hipMalloc(i8** noundef %79, i64 noundef %82)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %84 = bitcast i32** %37 to i8**
  %85 = load i32, i32* %20, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = call i32 @hipMalloc(i8** noundef %84, i64 noundef %87)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %89 = bitcast i32** %38 to i8**
  %90 = load i32, i32* %20, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = call i32 @hipMalloc(i8** noundef %89, i64 noundef %92)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %94 = bitcast i32** %39 to i8**
  %95 = load i32, i32* %20, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 4
  %98 = call i32 @hipMalloc(i8** noundef %94, i64 noundef %97)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %99 = load %struct.knode*, %struct.knode** %31, align 8
  %100 = bitcast %struct.knode* %99 to i8*
  %101 = load %struct.knode*, %struct.knode** %15, align 8
  %102 = bitcast %struct.knode* %101 to i8*
  %103 = load i64, i64* %17, align 8
  %104 = call i32 @hipMemcpy(i8* noundef %100, i8* noundef %102, i64 noundef %103, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %105 = load i64*, i64** %32, align 8
  %106 = bitcast i64* %105 to i8*
  %107 = load i64*, i64** %21, align 8
  %108 = bitcast i64* %107 to i8*
  %109 = load i32, i32* %20, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 %110, 8
  %112 = call i32 @hipMemcpy(i8* noundef %106, i8* noundef %108, i64 noundef %111, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %113 = load i64*, i64** %33, align 8
  %114 = bitcast i64* %113 to i8*
  %115 = load i64*, i64** %22, align 8
  %116 = bitcast i64* %115 to i8*
  %117 = load i32, i32* %20, align 4
  %118 = sext i32 %117 to i64
  %119 = mul i64 %118, 8
  %120 = call i32 @hipMemcpy(i8* noundef %114, i8* noundef %116, i64 noundef %119, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %121 = load i64*, i64** %34, align 8
  %122 = bitcast i64* %121 to i8*
  %123 = load i64*, i64** %23, align 8
  %124 = bitcast i64* %123 to i8*
  %125 = load i32, i32* %20, align 4
  %126 = sext i32 %125 to i64
  %127 = mul i64 %126, 8
  %128 = call i32 @hipMemcpy(i8* noundef %122, i8* noundef %124, i64 noundef %127, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %129 = load i64*, i64** %35, align 8
  %130 = bitcast i64* %129 to i8*
  %131 = load i64*, i64** %24, align 8
  %132 = bitcast i64* %131 to i8*
  %133 = load i32, i32* %20, align 4
  %134 = sext i32 %133 to i64
  %135 = mul i64 %134, 8
  %136 = call i32 @hipMemcpy(i8* noundef %130, i8* noundef %132, i64 noundef %135, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  %137 = load i32*, i32** %36, align 8
  %138 = bitcast i32* %137 to i8*
  %139 = load i32*, i32** %25, align 8
  %140 = bitcast i32* %139 to i8*
  %141 = load i32, i32* %20, align 4
  %142 = sext i32 %141 to i64
  %143 = mul i64 %142, 4
  %144 = call i32 @hipMemcpy(i8* noundef %138, i8* noundef %140, i64 noundef %143, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  %145 = load i32*, i32** %37, align 8
  %146 = bitcast i32* %145 to i8*
  %147 = load i32*, i32** %26, align 8
  %148 = bitcast i32* %147 to i8*
  %149 = load i32, i32* %20, align 4
  %150 = sext i32 %149 to i64
  %151 = mul i64 %150, 4
  %152 = call i32 @hipMemcpy(i8* noundef %146, i8* noundef %148, i64 noundef %151, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  %153 = load i32*, i32** %38, align 8
  %154 = bitcast i32* %153 to i8*
  %155 = load i32*, i32** %27, align 8
  %156 = bitcast i32* %155 to i8*
  %157 = load i32, i32* %20, align 4
  %158 = sext i32 %157 to i64
  %159 = mul i64 %158, 4
  %160 = call i32 @hipMemcpy(i8* noundef %154, i8* noundef %156, i64 noundef %159, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  %161 = load i32*, i32** %39, align 8
  %162 = bitcast i32* %161 to i8*
  %163 = load i32*, i32** %28, align 8
  %164 = bitcast i32* %163 to i8*
  %165 = load i32, i32* %20, align 4
  %166 = sext i32 %165 to i64
  %167 = mul i64 %166, 4
  %168 = call i32 @hipMemcpy(i8* noundef %162, i8* noundef %164, i64 noundef %167, i32 noundef 1)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  br label %169

169:                                              ; preds = %51
  %170 = load i32, i32* %29, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %40, i32 noundef %170, i32 noundef 1, i32 noundef 1)
  %171 = load i32, i32* %30, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %41, i32 noundef %171, i32 noundef 1, i32 noundef 1)
  %172 = bitcast { i64, i32 }* %42 to i8*
  %173 = bitcast %struct.dim3* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %172, i8* align 4 %173, i64 12, i1 false)
  %174 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %42, i32 0, i32 0
  %175 = load i64, i64* %174, align 4
  %176 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %42, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = bitcast { i64, i32 }* %43 to i8*
  %179 = bitcast %struct.dim3* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %178, i8* align 4 %179, i64 12, i1 false)
  %180 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %43, i32 0, i32 0
  %181 = load i64, i64* %180, align 4
  %182 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %43, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @__hipPushCallConfiguration(i64 %175, i32 %177, i64 %181, i32 %183, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %198, label %186

186:                                              ; preds = %169
  %187 = load i64, i64* %19, align 8
  %188 = load %struct.knode*, %struct.knode** %31, align 8
  %189 = load i64, i64* %16, align 8
  %190 = load i64*, i64** %32, align 8
  %191 = load i64*, i64** %33, align 8
  %192 = load i64*, i64** %34, align 8
  %193 = load i64*, i64** %35, align 8
  %194 = load i32*, i32** %36, align 8
  %195 = load i32*, i32** %37, align 8
  %196 = load i32*, i32** %38, align 8
  %197 = load i32*, i32** %39, align 8
  call void @__device_stub__findRangeK(i64 noundef %187, %struct.knode* noundef %188, i64 noundef %189, i64* noundef %190, i64* noundef %191, i64* noundef %192, i64* noundef %193, i32* noundef %194, i32* noundef %195, i32* noundef %196, i32* noundef %197)
  br label %198

198:                                              ; preds = %186, %169
  br label %199

199:                                              ; preds = %198
  %200 = call i32 @hipDeviceSynchronize()
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  %201 = load i32*, i32** %27, align 8
  %202 = bitcast i32* %201 to i8*
  %203 = load i32*, i32** %38, align 8
  %204 = bitcast i32* %203 to i8*
  %205 = load i32, i32* %20, align 4
  %206 = sext i32 %205 to i64
  %207 = mul i64 %206, 4
  %208 = call i32 @hipMemcpy(i8* noundef %202, i8* noundef %204, i64 noundef %207, i32 noundef 2)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  %209 = load i32*, i32** %28, align 8
  %210 = bitcast i32* %209 to i8*
  %211 = load i32*, i32** %39, align 8
  %212 = bitcast i32* %211 to i8*
  %213 = load i32, i32* %20, align 4
  %214 = sext i32 %213 to i64
  %215 = mul i64 %214, 4
  %216 = call i32 @hipMemcpy(i8* noundef %210, i8* noundef %212, i64 noundef %215, i32 noundef 2)
  call void @checkCUDAError(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  %217 = load %struct.knode*, %struct.knode** %31, align 8
  %218 = bitcast %struct.knode* %217 to i8*
  %219 = call i32 @hipFree(i8* noundef %218)
  %220 = load i64*, i64** %32, align 8
  %221 = bitcast i64* %220 to i8*
  %222 = call i32 @hipFree(i8* noundef %221)
  %223 = load i64*, i64** %33, align 8
  %224 = bitcast i64* %223 to i8*
  %225 = call i32 @hipFree(i8* noundef %224)
  %226 = load i64*, i64** %34, align 8
  %227 = bitcast i64* %226 to i8*
  %228 = call i32 @hipFree(i8* noundef %227)
  %229 = load i64*, i64** %35, align 8
  %230 = bitcast i64* %229 to i8*
  %231 = call i32 @hipFree(i8* noundef %230)
  %232 = load i32*, i32** %36, align 8
  %233 = bitcast i32* %232 to i8*
  %234 = call i32 @hipFree(i8* noundef %233)
  %235 = load i32*, i32** %37, align 8
  %236 = bitcast i32* %235 to i8*
  %237 = call i32 @hipFree(i8* noundef %236)
  %238 = load i32*, i32** %38, align 8
  %239 = bitcast i32* %238 to i8*
  %240 = call i32 @hipFree(i8* noundef %239)
  %241 = load i32*, i32** %39, align 8
  %242 = bitcast i32* %241 to i8*
  %243 = call i32 @hipFree(i8* noundef %242)
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
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i64, %struct.knode*, i64, i64*, i64*, i64*, i64*, i32*, i32*, i32*, i32*)** @findRangeK to i8*), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
