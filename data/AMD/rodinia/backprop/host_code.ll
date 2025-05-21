; ModuleID = 'backprop_cuda.cu'
source_filename = "backprop_cuda.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.BPNN = type { i32, i32, i32, float*, float*, float*, float*, float*, float*, float**, float**, float**, float** }

$_ZN4dim3C2Ejjj = comdat any

$_ZSt3expf = comdat any

$__hip_gpubin_handle = comdat any

@_Z22bpnn_layerforward_CUDAPfS_S_S_ii = constant void (float*, float*, float*, float*, i32, i32)* @_Z37__device_stub__bpnn_layerforward_CUDAPfS_S_S_ii, align 8
@_Z24bpnn_adjust_weights_cudaPfiS_iS_S_ = constant void (float*, i32, float*, i32, float*, float*)* @_Z39__device_stub__bpnn_adjust_weights_cudaPfiS_iS_S_, align 8
@num_threads = dso_local global i32 0, align 4
@num_blocks = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Performing GPU computation\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"bpnn kernel error: %s\0A\00", align 1
@0 = private unnamed_addr constant [37 x i8] c"_Z22bpnn_layerforward_CUDAPfS_S_S_ii\00", align 1
@1 = private unnamed_addr constant [39 x i8] c"_Z24bpnn_adjust_weights_cudaPfiS_iS_S_\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z37__device_stub__bpnn_layerforward_CUDAPfS_S_S_ii(float* noundef %0, float* noundef %1, float* noundef %2, float* noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dim3, align 8
  %14 = alloca %struct.dim3, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca { i64, i32 }, align 8
  %18 = alloca { i64, i32 }, align 8
  store float* %0, float** %7, align 8
  store float* %1, float** %8, align 8
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = alloca i8*, i64 6, align 16
  %20 = bitcast float** %7 to i8*
  %21 = getelementptr i8*, i8** %19, i32 0
  store i8* %20, i8** %21, align 8
  %22 = bitcast float** %8 to i8*
  %23 = getelementptr i8*, i8** %19, i32 1
  store i8* %22, i8** %23, align 8
  %24 = bitcast float** %9 to i8*
  %25 = getelementptr i8*, i8** %19, i32 2
  store i8* %24, i8** %25, align 8
  %26 = bitcast float** %10 to i8*
  %27 = getelementptr i8*, i8** %19, i32 3
  store i8* %26, i8** %27, align 8
  %28 = bitcast i32* %11 to i8*
  %29 = getelementptr i8*, i8** %19, i32 4
  store i8* %28, i8** %29, align 8
  %30 = bitcast i32* %12 to i8*
  %31 = getelementptr i8*, i8** %19, i32 5
  store i8* %30, i8** %31, align 8
  %32 = call i32 @__hipPopCallConfiguration(%struct.dim3* %13, %struct.dim3* %14, i64* %15, i8** %16)
  %33 = load i64, i64* %15, align 8
  %34 = load i8*, i8** %16, align 8
  %35 = bitcast { i64, i32 }* %17 to i8*
  %36 = bitcast %struct.dim3* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 12, i1 false)
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = bitcast { i64, i32 }* %18 to i8*
  %42 = bitcast %struct.dim3* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 12, i1 false)
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = bitcast i8* %34 to %struct.ihipStream_t*
  %48 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (float*, float*, float*, float*, i32, i32)** @_Z22bpnn_layerforward_CUDAPfS_S_S_ii to i8*), i64 %38, i32 %40, i64 %44, i32 %46, i8** noundef %19, i64 noundef %33, %struct.ihipStream_t* noundef %47)
  br label %49

49:                                               ; preds = %6
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z39__device_stub__bpnn_adjust_weights_cudaPfiS_iS_S_(float* noundef %0, i32 noundef %1, float* noundef %2, i32 noundef %3, float* noundef %4, float* noundef %5) #0 {
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca %struct.dim3, align 8
  %14 = alloca %struct.dim3, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca { i64, i32 }, align 8
  %18 = alloca { i64, i32 }, align 8
  store float* %0, float** %7, align 8
  store i32 %1, i32* %8, align 4
  store float* %2, float** %9, align 8
  store i32 %3, i32* %10, align 4
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  %19 = alloca i8*, i64 6, align 16
  %20 = bitcast float** %7 to i8*
  %21 = getelementptr i8*, i8** %19, i32 0
  store i8* %20, i8** %21, align 8
  %22 = bitcast i32* %8 to i8*
  %23 = getelementptr i8*, i8** %19, i32 1
  store i8* %22, i8** %23, align 8
  %24 = bitcast float** %9 to i8*
  %25 = getelementptr i8*, i8** %19, i32 2
  store i8* %24, i8** %25, align 8
  %26 = bitcast i32* %10 to i8*
  %27 = getelementptr i8*, i8** %19, i32 3
  store i8* %26, i8** %27, align 8
  %28 = bitcast float** %11 to i8*
  %29 = getelementptr i8*, i8** %19, i32 4
  store i8* %28, i8** %29, align 8
  %30 = bitcast float** %12 to i8*
  %31 = getelementptr i8*, i8** %19, i32 5
  store i8* %30, i8** %31, align 8
  %32 = call i32 @__hipPopCallConfiguration(%struct.dim3* %13, %struct.dim3* %14, i64* %15, i8** %16)
  %33 = load i64, i64* %15, align 8
  %34 = load i8*, i8** %16, align 8
  %35 = bitcast { i64, i32 }* %17 to i8*
  %36 = bitcast %struct.dim3* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 12, i1 false)
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = bitcast { i64, i32 }* %18 to i8*
  %42 = bitcast %struct.dim3* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 12, i1 false)
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = bitcast i8* %34 to %struct.ihipStream_t*
  %48 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (float*, i32, float*, i32, float*, float*)** @_Z24bpnn_adjust_weights_cudaPfiS_iS_S_ to i8*), i64 %38, i32 %40, i64 %44, i32 %46, i8** noundef %19, i64 noundef %33, %struct.ihipStream_t* noundef %47)
  br label %49

49:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef double @_Z7gettimev() #2 {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @gettimeofday(%struct.timeval* noundef %1, %struct.timezone* noundef null) #10
  %3 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = sitofp i64 %4 to double
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = sitofp i64 %7 to double
  %9 = fmul contract double %8, 0x3EB0C6F7A0B5ED8D
  %10 = fadd contract double %5, %9
  ret double %10
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* noundef, %struct.timezone* noundef) #3

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i8**, i8*** %4, align 8
  %7 = call i32 @setup(i32 noundef %5, i8** noundef %6)
  ret i32 0
}

declare i32 @setup(i32 noundef, i8** noundef) #5

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @bpnn_train_cuda(%struct.BPNN* noundef %0, float* noundef %1, float* noundef %2) #6 {
  %4 = alloca %struct.BPNN*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca float, align 4
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca %struct.dim3, align 4
  %24 = alloca %struct.dim3, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.dim3, align 4
  %28 = alloca %struct.dim3, align 4
  %29 = alloca { i64, i32 }, align 4
  %30 = alloca { i64, i32 }, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.dim3, align 4
  %35 = alloca %struct.dim3, align 4
  %36 = alloca { i64, i32 }, align 4
  %37 = alloca { i64, i32 }, align 4
  store %struct.BPNN* %0, %struct.BPNN** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %38 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %39 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %7, align 4
  %41 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %42 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %45 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sdiv i32 %47, 16
  store i32 %48, i32* @num_blocks, align 4
  %49 = load i32, i32* @num_blocks, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %23, i32 noundef 1, i32 noundef %49, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %24, i32 noundef 16, i32 noundef 16, i32 noundef 1)
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  %54 = mul nsw i32 %51, %53
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = call noalias i8* @malloc(i64 noundef %56) #11
  %58 = bitcast i8* %57 to float*
  store float* %58, float** %21, align 8
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  %63 = mul nsw i32 %60, %62
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = call noalias i8* @malloc(i64 noundef %65) #11
  %67 = bitcast i8* %66 to float*
  store float* %67, float** %22, align 8
  %68 = load i32, i32* @num_blocks, align 4
  %69 = mul i32 %68, 16
  %70 = zext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = call noalias i8* @malloc(i64 noundef %71) #11
  %73 = bitcast i8* %72 to float*
  store float* %73, float** %16, align 8
  store i32 0, i32* %25, align 4
  br label %74

74:                                               ; preds = %120, %3
  %75 = load i32, i32* %25, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %123

78:                                               ; preds = %74
  store i32 0, i32* %26, align 4
  br label %79

79:                                               ; preds = %116, %78
  %80 = load i32, i32* %26, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %119

83:                                               ; preds = %79
  %84 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %85 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %84, i32 0, i32 9
  %86 = load float**, float*** %85, align 8
  %87 = load i32, i32* %25, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float*, float** %86, i64 %88
  %90 = load float*, float** %89, align 8
  %91 = load i32, i32* %26, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %90, i64 %92
  %94 = load float, float* %93, align 4
  %95 = load float*, float** %21, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %95, i64 %97
  store float %94, float* %98, align 4
  %99 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %100 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %99, i32 0, i32 11
  %101 = load float**, float*** %100, align 8
  %102 = load i32, i32* %25, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float*, float** %101, i64 %103
  %105 = load float*, float** %104, align 8
  %106 = load i32, i32* %26, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, float* %105, i64 %107
  %109 = load float, float* %108, align 4
  %110 = load float*, float** %22, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, float* %110, i64 %112
  store float %109, float* %113, align 4
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %83
  %117 = load i32, i32* %26, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %26, align 4
  br label %79, !llvm.loop !6

119:                                              ; preds = %79
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %25, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %25, align 4
  br label %74, !llvm.loop !8

123:                                              ; preds = %74
  %124 = bitcast float** %14 to i8**
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = mul i64 %127, 4
  %129 = call i32 @hipMalloc(i8** noundef %124, i64 noundef %128)
  %130 = bitcast float** %15 to i8**
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = mul i64 %133, 4
  %135 = call i32 @hipMalloc(i8** noundef %130, i64 noundef %134)
  %136 = bitcast float** %13 to i8**
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  %141 = mul nsw i32 %138, %140
  %142 = sext i32 %141 to i64
  %143 = mul i64 %142, 4
  %144 = call i32 @hipMalloc(i8** noundef %136, i64 noundef %143)
  %145 = bitcast float** %17 to i8**
  %146 = load i32, i32* @num_blocks, align 4
  %147 = mul i32 %146, 16
  %148 = zext i32 %147 to i64
  %149 = mul i64 %148, 4
  %150 = call i32 @hipMalloc(i8** noundef %145, i64 noundef %149)
  %151 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %152 = load float*, float** %14, align 8
  %153 = bitcast float* %152 to i8*
  %154 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %155 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %154, i32 0, i32 3
  %156 = load float*, float** %155, align 8
  %157 = bitcast float* %156 to i8*
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = mul i64 %160, 4
  %162 = call i32 @hipMemcpy(i8* noundef %153, i8* noundef %157, i64 noundef %161, i32 noundef 1)
  %163 = load float*, float** %13, align 8
  %164 = bitcast float* %163 to i8*
  %165 = load float*, float** %21, align 8
  %166 = bitcast float* %165 to i8*
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, 1
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, 1
  %171 = mul nsw i32 %168, %170
  %172 = sext i32 %171 to i64
  %173 = mul i64 %172, 4
  %174 = call i32 @hipMemcpy(i8* noundef %164, i8* noundef %166, i64 noundef %173, i32 noundef 1)
  br label %175

175:                                              ; preds = %123
  %176 = bitcast %struct.dim3* %27 to i8*
  %177 = bitcast %struct.dim3* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %176, i8* align 4 %177, i64 12, i1 false)
  %178 = bitcast %struct.dim3* %28 to i8*
  %179 = bitcast %struct.dim3* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %178, i8* align 4 %179, i64 12, i1 false)
  %180 = bitcast { i64, i32 }* %29 to i8*
  %181 = bitcast %struct.dim3* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %180, i8* align 4 %181, i64 12, i1 false)
  %182 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %29, i32 0, i32 0
  %183 = load i64, i64* %182, align 4
  %184 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %29, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = bitcast { i64, i32 }* %30 to i8*
  %187 = bitcast %struct.dim3* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %186, i8* align 4 %187, i64 12, i1 false)
  %188 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %30, i32 0, i32 0
  %189 = load i64, i64* %188, align 4
  %190 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %30, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @__hipPushCallConfiguration(i64 %183, i32 %185, i64 %189, i32 %191, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %201, label %194

194:                                              ; preds = %175
  %195 = load float*, float** %14, align 8
  %196 = load float*, float** %15, align 8
  %197 = load float*, float** %13, align 8
  %198 = load float*, float** %17, align 8
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* %8, align 4
  call void @_Z37__device_stub__bpnn_layerforward_CUDAPfS_S_S_ii(float* noundef %195, float* noundef %196, float* noundef %197, float* noundef %198, i32 noundef %199, i32 noundef %200)
  br label %201

201:                                              ; preds = %194, %175
  br label %202

202:                                              ; preds = %201
  %203 = call i32 @hipDeviceSynchronize()
  %204 = call i32 @hipGetLastError()
  store i32 %204, i32* %31, align 4
  %205 = load i32, i32* %31, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %202
  %208 = load i32, i32* %31, align 4
  %209 = call i8* @hipGetErrorString(i32 noundef %208)
  %210 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* noundef %209)
  call void @exit(i32 noundef 1) #12
  unreachable

211:                                              ; preds = %202
  %212 = load float*, float** %16, align 8
  %213 = bitcast float* %212 to i8*
  %214 = load float*, float** %17, align 8
  %215 = bitcast float* %214 to i8*
  %216 = load i32, i32* @num_blocks, align 4
  %217 = mul i32 %216, 16
  %218 = zext i32 %217 to i64
  %219 = mul i64 %218, 4
  %220 = call i32 @hipMemcpy(i8* noundef %213, i8* noundef %215, i64 noundef %219, i32 noundef 2)
  store i32 1, i32* %32, align 4
  br label %221

221:                                              ; preds = %271, %211
  %222 = load i32, i32* %32, align 4
  %223 = load i32, i32* %8, align 4
  %224 = icmp sle i32 %222, %223
  br i1 %224, label %225, label %274

225:                                              ; preds = %221
  store float 0.000000e+00, float* %20, align 4
  store i32 0, i32* %33, align 4
  br label %226

226:                                              ; preds = %243, %225
  %227 = load i32, i32* %33, align 4
  %228 = load i32, i32* @num_blocks, align 4
  %229 = icmp ult i32 %227, %228
  br i1 %229, label %230, label %246

230:                                              ; preds = %226
  %231 = load float*, float** %16, align 8
  %232 = load i32, i32* %33, align 4
  %233 = load i32, i32* %8, align 4
  %234 = mul nsw i32 %232, %233
  %235 = load i32, i32* %32, align 4
  %236 = add nsw i32 %234, %235
  %237 = sub nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds float, float* %231, i64 %238
  %240 = load float, float* %239, align 4
  %241 = load float, float* %20, align 4
  %242 = fadd contract float %241, %240
  store float %242, float* %20, align 4
  br label %243

243:                                              ; preds = %230
  %244 = load i32, i32* %33, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %33, align 4
  br label %226, !llvm.loop !9

246:                                              ; preds = %226
  %247 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %248 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %247, i32 0, i32 9
  %249 = load float**, float*** %248, align 8
  %250 = getelementptr inbounds float*, float** %249, i64 0
  %251 = load float*, float** %250, align 8
  %252 = load i32, i32* %32, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds float, float* %251, i64 %253
  %255 = load float, float* %254, align 4
  %256 = load float, float* %20, align 4
  %257 = fadd contract float %256, %255
  store float %257, float* %20, align 4
  %258 = load float, float* %20, align 4
  %259 = fneg contract float %258
  %260 = call contract noundef float @_ZSt3expf(float noundef %259)
  %261 = fpext float %260 to double
  %262 = fadd contract double 1.000000e+00, %261
  %263 = fdiv contract double 1.000000e+00, %262
  %264 = fptrunc double %263 to float
  %265 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %266 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %265, i32 0, i32 4
  %267 = load float*, float** %266, align 8
  %268 = load i32, i32* %32, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds float, float* %267, i64 %269
  store float %264, float* %270, align 4
  br label %271

271:                                              ; preds = %246
  %272 = load i32, i32* %32, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %32, align 4
  br label %221, !llvm.loop !10

274:                                              ; preds = %221
  %275 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %276 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %275, i32 0, i32 4
  %277 = load float*, float** %276, align 8
  %278 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %279 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %278, i32 0, i32 5
  %280 = load float*, float** %279, align 8
  %281 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %282 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %281, i32 0, i32 10
  %283 = load float**, float*** %282, align 8
  %284 = load i32, i32* %8, align 4
  %285 = load i32, i32* %9, align 4
  call void @bpnn_layerforward(float* noundef %277, float* noundef %280, float** noundef %283, i32 noundef %284, i32 noundef %285)
  %286 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %287 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %286, i32 0, i32 7
  %288 = load float*, float** %287, align 8
  %289 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %290 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %289, i32 0, i32 8
  %291 = load float*, float** %290, align 8
  %292 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %293 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %292, i32 0, i32 5
  %294 = load float*, float** %293, align 8
  %295 = load i32, i32* %9, align 4
  call void @bpnn_output_error(float* noundef %288, float* noundef %291, float* noundef %294, i32 noundef %295, float* noundef %10)
  %296 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %297 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %296, i32 0, i32 6
  %298 = load float*, float** %297, align 8
  %299 = load i32, i32* %8, align 4
  %300 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %301 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %300, i32 0, i32 7
  %302 = load float*, float** %301, align 8
  %303 = load i32, i32* %9, align 4
  %304 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %305 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %304, i32 0, i32 10
  %306 = load float**, float*** %305, align 8
  %307 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %308 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %307, i32 0, i32 4
  %309 = load float*, float** %308, align 8
  call void @bpnn_hidden_error(float* noundef %298, i32 noundef %299, float* noundef %302, i32 noundef %303, float** noundef %306, float* noundef %309, float* noundef %11)
  %310 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %311 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %310, i32 0, i32 7
  %312 = load float*, float** %311, align 8
  %313 = load i32, i32* %9, align 4
  %314 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %315 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %314, i32 0, i32 4
  %316 = load float*, float** %315, align 8
  %317 = load i32, i32* %8, align 4
  %318 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %319 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %318, i32 0, i32 10
  %320 = load float**, float*** %319, align 8
  %321 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %322 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %321, i32 0, i32 12
  %323 = load float**, float*** %322, align 8
  call void @bpnn_adjust_weights(float* noundef %312, i32 noundef %313, float* noundef %316, i32 noundef %317, float** noundef %320, float** noundef %323)
  %324 = bitcast float** %18 to i8**
  %325 = load i32, i32* %8, align 4
  %326 = add nsw i32 %325, 1
  %327 = sext i32 %326 to i64
  %328 = mul i64 %327, 4
  %329 = call i32 @hipMalloc(i8** noundef %324, i64 noundef %328)
  %330 = bitcast float** %19 to i8**
  %331 = load i32, i32* %7, align 4
  %332 = add nsw i32 %331, 1
  %333 = load i32, i32* %8, align 4
  %334 = add nsw i32 %333, 1
  %335 = mul nsw i32 %332, %334
  %336 = sext i32 %335 to i64
  %337 = mul i64 %336, 4
  %338 = call i32 @hipMalloc(i8** noundef %330, i64 noundef %337)
  %339 = load float*, float** %18, align 8
  %340 = bitcast float* %339 to i8*
  %341 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %342 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %341, i32 0, i32 6
  %343 = load float*, float** %342, align 8
  %344 = bitcast float* %343 to i8*
  %345 = load i32, i32* %8, align 4
  %346 = add nsw i32 %345, 1
  %347 = sext i32 %346 to i64
  %348 = mul i64 %347, 4
  %349 = call i32 @hipMemcpy(i8* noundef %340, i8* noundef %344, i64 noundef %348, i32 noundef 1)
  %350 = load float*, float** %19, align 8
  %351 = bitcast float* %350 to i8*
  %352 = load float*, float** %22, align 8
  %353 = bitcast float* %352 to i8*
  %354 = load i32, i32* %7, align 4
  %355 = add nsw i32 %354, 1
  %356 = load i32, i32* %8, align 4
  %357 = add nsw i32 %356, 1
  %358 = mul nsw i32 %355, %357
  %359 = sext i32 %358 to i64
  %360 = mul i64 %359, 4
  %361 = call i32 @hipMemcpy(i8* noundef %351, i8* noundef %353, i64 noundef %360, i32 noundef 1)
  %362 = load float*, float** %13, align 8
  %363 = bitcast float* %362 to i8*
  %364 = load float*, float** %21, align 8
  %365 = bitcast float* %364 to i8*
  %366 = load i32, i32* %7, align 4
  %367 = add nsw i32 %366, 1
  %368 = load i32, i32* %8, align 4
  %369 = add nsw i32 %368, 1
  %370 = mul nsw i32 %367, %369
  %371 = sext i32 %370 to i64
  %372 = mul i64 %371, 4
  %373 = call i32 @hipMemcpy(i8* noundef %363, i8* noundef %365, i64 noundef %372, i32 noundef 1)
  br label %374

374:                                              ; preds = %274
  %375 = bitcast %struct.dim3* %34 to i8*
  %376 = bitcast %struct.dim3* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %375, i8* align 4 %376, i64 12, i1 false)
  %377 = bitcast %struct.dim3* %35 to i8*
  %378 = bitcast %struct.dim3* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %377, i8* align 4 %378, i64 12, i1 false)
  %379 = bitcast { i64, i32 }* %36 to i8*
  %380 = bitcast %struct.dim3* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %379, i8* align 4 %380, i64 12, i1 false)
  %381 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %36, i32 0, i32 0
  %382 = load i64, i64* %381, align 4
  %383 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %36, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = bitcast { i64, i32 }* %37 to i8*
  %386 = bitcast %struct.dim3* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %385, i8* align 4 %386, i64 12, i1 false)
  %387 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 0
  %388 = load i64, i64* %387, align 4
  %389 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %37, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = call i32 @__hipPushCallConfiguration(i64 %382, i32 %384, i64 %388, i32 %390, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %400, label %393

393:                                              ; preds = %374
  %394 = load float*, float** %18, align 8
  %395 = load i32, i32* %8, align 4
  %396 = load float*, float** %14, align 8
  %397 = load i32, i32* %7, align 4
  %398 = load float*, float** %13, align 8
  %399 = load float*, float** %19, align 8
  call void @_Z39__device_stub__bpnn_adjust_weights_cudaPfiS_iS_S_(float* noundef %394, i32 noundef %395, float* noundef %396, i32 noundef %397, float* noundef %398, float* noundef %399)
  br label %400

400:                                              ; preds = %393, %374
  br label %401

401:                                              ; preds = %400
  %402 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %403 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %402, i32 0, i32 3
  %404 = load float*, float** %403, align 8
  %405 = bitcast float* %404 to i8*
  %406 = load float*, float** %14, align 8
  %407 = bitcast float* %406 to i8*
  %408 = load i32, i32* %7, align 4
  %409 = add nsw i32 %408, 1
  %410 = sext i32 %409 to i64
  %411 = mul i64 %410, 4
  %412 = call i32 @hipMemcpy(i8* noundef %405, i8* noundef %407, i64 noundef %411, i32 noundef 2)
  %413 = load float*, float** %21, align 8
  %414 = bitcast float* %413 to i8*
  %415 = load float*, float** %13, align 8
  %416 = bitcast float* %415 to i8*
  %417 = load i32, i32* %7, align 4
  %418 = add nsw i32 %417, 1
  %419 = load i32, i32* %8, align 4
  %420 = add nsw i32 %419, 1
  %421 = mul nsw i32 %418, %420
  %422 = sext i32 %421 to i64
  %423 = mul i64 %422, 4
  %424 = call i32 @hipMemcpy(i8* noundef %414, i8* noundef %416, i64 noundef %423, i32 noundef 2)
  %425 = load float*, float** %14, align 8
  %426 = bitcast float* %425 to i8*
  %427 = call i32 @hipFree(i8* noundef %426)
  %428 = load float*, float** %15, align 8
  %429 = bitcast float* %428 to i8*
  %430 = call i32 @hipFree(i8* noundef %429)
  %431 = load float*, float** %13, align 8
  %432 = bitcast float* %431 to i8*
  %433 = call i32 @hipFree(i8* noundef %432)
  %434 = load float*, float** %17, align 8
  %435 = bitcast float* %434 to i8*
  %436 = call i32 @hipFree(i8* noundef %435)
  %437 = load float*, float** %19, align 8
  %438 = bitcast float* %437 to i8*
  %439 = call i32 @hipFree(i8* noundef %438)
  %440 = load float*, float** %18, align 8
  %441 = bitcast float* %440 to i8*
  %442 = call i32 @hipFree(i8* noundef %441)
  %443 = load float*, float** %16, align 8
  %444 = bitcast float* %443 to i8*
  call void @free(i8* noundef %444) #10
  %445 = load float*, float** %21, align 8
  %446 = bitcast float* %445 to i8*
  call void @free(i8* noundef %446) #10
  %447 = load float*, float** %22, align 8
  %448 = bitcast float* %447 to i8*
  call void @free(i8* noundef %448) #10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #7 comdat align 2 {
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

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #8

declare i32 @hipMalloc(i8** noundef, i64 noundef) #5

declare i32 @printf(i8* noundef, ...) #5

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #5

declare i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) #5

declare i32 @hipDeviceSynchronize() #5

declare i32 @hipGetLastError() #5

declare i8* @hipGetErrorString(i32 noundef) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #9

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef float @_ZSt3expf(float noundef %0) #2 comdat {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = call contract float @expf(float noundef %3) #10
  ret float %4
}

declare void @bpnn_layerforward(float* noundef, float* noundef, float** noundef, i32 noundef, i32 noundef) #5

declare void @bpnn_output_error(float* noundef, float* noundef, float* noundef, i32 noundef, float* noundef) #5

declare void @bpnn_hidden_error(float* noundef, i32 noundef, float* noundef, i32 noundef, float** noundef, float* noundef, float* noundef) #5

declare void @bpnn_adjust_weights(float* noundef, i32 noundef, float* noundef, i32 noundef, float** noundef, float** noundef) #5

declare i32 @hipFree(i8* noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: nounwind
declare float @expf(float noundef) #3

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (float*, float*, float*, float*, i32, i32)** @_Z22bpnn_layerforward_CUDAPfS_S_S_ii to i8*), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %3 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (float*, i32, float*, i32, float*, float*)** @_Z24bpnn_adjust_weights_cudaPfiS_iS_S_ to i8*), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
attributes #2 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { noreturn nounwind }

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
