; ModuleID = 'hip/streamcluster/streamcluster_hip.cu'
source_filename = "hip/streamcluster/streamcluster_hip.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct.Point = type { float, float*, i64, float }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque
%struct.Points = type { i64, i32, %struct.Point* }

$_ZN4dim3C2Ejjj = comdat any

$__hip_gpubin_handle = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@work_mem_h = dso_local global float* null, align 8
@coord_h = dso_local global float* null, align 8
@work_mem_d = dso_local global float* null, align 8
@coord_d = dso_local global float* null, align 8
@center_table_d = dso_local global i32* null, align 8
@switch_membership_d = dso_local global i8* null, align 8
@p = dso_local global %struct.Point* null, align 8
@_Z19kernel_compute_costiilP5PointiiPfS1_PiPb = constant void (i32, i32, i64, %struct.Point*, i32, i32, float*, float*, i32*, i8*)* @_Z34__device_stub__kernel_compute_costiilP5PointiiPfS1_PiPb, align 8
@_ZL4iter = internal global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"kernel error: %s\0A\00", align 1
@0 = private unnamed_addr constant [45 x i8] c"_Z19kernel_compute_costiilP5PointiiPfS1_PiPb\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_streamcluster_hip.cu, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z34__device_stub__kernel_compute_costiilP5PointiiPfS1_PiPb(i32 noundef %0, i32 noundef %1, i64 noundef %2, %struct.Point* noundef %3, i32 noundef %4, i32 noundef %5, float* noundef %6, float* noundef %7, i32* noundef %8, i8* noundef %9) #4 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.Point*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.dim3, align 8
  %22 = alloca %struct.dim3, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca { i64, i32 }, align 8
  %26 = alloca { i64, i32 }, align 8
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i64 %2, i64* %13, align 8
  store %struct.Point* %3, %struct.Point** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store float* %6, float** %17, align 8
  store float* %7, float** %18, align 8
  store i32* %8, i32** %19, align 8
  store i8* %9, i8** %20, align 8
  %27 = alloca i8*, i64 10, align 16
  %28 = bitcast i32* %11 to i8*
  %29 = getelementptr i8*, i8** %27, i32 0
  store i8* %28, i8** %29, align 8
  %30 = bitcast i32* %12 to i8*
  %31 = getelementptr i8*, i8** %27, i32 1
  store i8* %30, i8** %31, align 8
  %32 = bitcast i64* %13 to i8*
  %33 = getelementptr i8*, i8** %27, i32 2
  store i8* %32, i8** %33, align 8
  %34 = bitcast %struct.Point** %14 to i8*
  %35 = getelementptr i8*, i8** %27, i32 3
  store i8* %34, i8** %35, align 8
  %36 = bitcast i32* %15 to i8*
  %37 = getelementptr i8*, i8** %27, i32 4
  store i8* %36, i8** %37, align 8
  %38 = bitcast i32* %16 to i8*
  %39 = getelementptr i8*, i8** %27, i32 5
  store i8* %38, i8** %39, align 8
  %40 = bitcast float** %17 to i8*
  %41 = getelementptr i8*, i8** %27, i32 6
  store i8* %40, i8** %41, align 8
  %42 = bitcast float** %18 to i8*
  %43 = getelementptr i8*, i8** %27, i32 7
  store i8* %42, i8** %43, align 8
  %44 = bitcast i32** %19 to i8*
  %45 = getelementptr i8*, i8** %27, i32 8
  store i8* %44, i8** %45, align 8
  %46 = bitcast i8** %20 to i8*
  %47 = getelementptr i8*, i8** %27, i32 9
  store i8* %46, i8** %47, align 8
  %48 = call i32 @__hipPopCallConfiguration(%struct.dim3* %21, %struct.dim3* %22, i64* %23, i8** %24)
  %49 = load i64, i64* %23, align 8
  %50 = load i8*, i8** %24, align 8
  %51 = bitcast { i64, i32 }* %25 to i8*
  %52 = bitcast %struct.dim3* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 12, i1 false)
  %53 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = bitcast { i64, i32 }* %26 to i8*
  %58 = bitcast %struct.dim3* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 12, i1 false)
  %59 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %26, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %26, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = bitcast i8* %50 to %struct.ihipStream_t*
  %64 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i32, i32, i64, %struct.Point*, i32, i32, float*, float*, i32*, i8*)** @_Z19kernel_compute_costiilP5PointiiPfS1_PiPb to i8*), i64 %54, i32 %56, i64 %60, i32 %62, i8** noundef %27, i64 noundef %49, %struct.ihipStream_t* noundef %63)
  br label %65

65:                                               ; preds = %10
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z11allocDevMemii(i32 noundef %0, i32 noundef %1) #6 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 4
  %8 = call i32 @hipMalloc(i8** noundef bitcast (i32** @center_table_d to i8**), i64 noundef %7)
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 1
  %12 = call i32 @hipMalloc(i8** noundef @switch_membership_d, i64 noundef %11)
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 32
  %16 = call i32 @hipMalloc(i8** noundef bitcast (%struct.Point** @p to i8**), i64 noundef %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = mul nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = call i32 @hipMalloc(i8** noundef bitcast (float** @coord_d to i8**), i64 noundef %21)
  ret void
}

declare i32 @hipMalloc(i8** noundef, i64 noundef) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z12allocHostMemii(i32 noundef %0, i32 noundef %1) #7 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = mul nsw i32 %5, %6
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = call noalias i8* @malloc(i64 noundef %9) #11
  %11 = bitcast i8* %10 to float*
  store float* %11, float** @coord_h, align 8
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #8

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z10freeDevMemv() #6 {
  %1 = load i32*, i32** @center_table_d, align 8
  %2 = bitcast i32* %1 to i8*
  %3 = call i32 @hipFree(i8* noundef %2)
  %4 = load i8*, i8** @switch_membership_d, align 8
  %5 = call i32 @hipFree(i8* noundef %4)
  %6 = load %struct.Point*, %struct.Point** @p, align 8
  %7 = bitcast %struct.Point* %6 to i8*
  %8 = call i32 @hipFree(i8* noundef %7)
  %9 = load float*, float** @coord_d, align 8
  %10 = bitcast float* %9 to i8*
  %11 = call i32 @hipFree(i8* noundef %10)
  ret void
}

declare i32 @hipFree(i8* noundef) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z11freeHostMemv() #7 {
  %1 = load float*, float** @coord_h, align 8
  %2 = bitcast float* %1 to i8*
  call void @free(i8* noundef %2) #3
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef float @_Z5pgainlP6PointsfPliPbPiS2_bPdS4_S4_S4_S4_S4_(i64 noundef %0, %struct.Points* noundef %1, float noundef %2, i64* noundef %3, i32 noundef %4, i8* noundef %5, i32* noundef %6, i8* noundef %7, i1 noundef zeroext %8, double* noundef %9, double* noundef %10, double* noundef %11, double* noundef %12, double* noundef %13, double* noundef %14) #6 {
  %16 = alloca i64, align 8
  %17 = alloca %struct.Points*, align 8
  %18 = alloca float, align 4
  %19 = alloca i64*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8, align 1
  %25 = alloca double*, align 8
  %26 = alloca double*, align 8
  %27 = alloca double*, align 8
  %28 = alloca double*, align 8
  %29 = alloca double*, align 8
  %30 = alloca double*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca %struct.dim3, align 4
  %45 = alloca %struct.dim3, align 4
  %46 = alloca %struct.dim3, align 4
  %47 = alloca { i64, i32 }, align 4
  %48 = alloca { i64, i32 }, align 4
  %49 = alloca i32, align 4
  %50 = alloca float, align 4
  %51 = alloca float*, align 8
  %52 = alloca i32, align 4
  %53 = alloca float, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i8, align 1
  %57 = alloca %struct.Point, align 8
  %58 = alloca %struct.Point, align 8
  %59 = alloca i32, align 4
  store i64 %0, i64* %16, align 8
  store %struct.Points* %1, %struct.Points** %17, align 8
  store float %2, float* %18, align 4
  store i64* %3, i64** %19, align 8
  store i32 %4, i32* %20, align 4
  store i8* %5, i8** %21, align 8
  store i32* %6, i32** %22, align 8
  store i8* %7, i8** %23, align 8
  %60 = zext i1 %8 to i8
  store i8 %60, i8* %24, align 1
  store double* %9, double** %25, align 8
  store double* %10, double** %26, align 8
  store double* %11, double** %27, align 8
  store double* %12, double** %28, align 8
  store double* %13, double** %29, align 8
  store double* %14, double** %30, align 8
  %61 = load i64*, i64** %19, align 8
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %32, align 4
  %65 = load i64*, i64** %19, align 8
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %33, align 4
  %68 = load %struct.Points*, %struct.Points** %17, align 8
  %69 = getelementptr inbounds %struct.Points, %struct.Points* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %34, align 4
  %72 = load %struct.Points*, %struct.Points** %17, align 8
  %73 = getelementptr inbounds %struct.Points, %struct.Points* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %35, align 4
  %75 = load i32, i32* %34, align 4
  store i32 %75, i32* %36, align 4
  %76 = load i32, i32* %32, align 4
  %77 = load i32, i32* %36, align 4
  %78 = add nsw i32 %77, 1
  %79 = mul nsw i32 %76, %78
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 4
  %82 = call noalias i8* @malloc(i64 noundef %81) #11
  %83 = bitcast i8* %82 to float*
  store float* %83, float** @work_mem_h, align 8
  %84 = load i32, i32* @_ZL4iter, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %15
  %87 = load i32, i32* %34, align 4
  %88 = load i32, i32* %35, align 4
  call void @_Z12allocHostMemii(i32 noundef %87, i32 noundef %88)
  br label %89

89:                                               ; preds = %86, %15
  store i32 0, i32* %37, align 4
  store i32 0, i32* %38, align 4
  br label %90

90:                                               ; preds = %109, %89
  %91 = load i32, i32* %38, align 4
  %92 = load i32, i32* %34, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %90
  %95 = load i8*, i8** %21, align 8
  %96 = load i32, i32* %38, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = trunc i8 %99 to i1
  br i1 %100, label %101, label %108

101:                                              ; preds = %94
  %102 = load i32, i32* %37, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %37, align 4
  %104 = load i32*, i32** %22, align 8
  %105 = load i32, i32* %38, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %102, i32* %107, align 4
  br label %108

108:                                              ; preds = %101, %94
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %38, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %38, align 4
  br label %90, !llvm.loop !6

112:                                              ; preds = %90
  %113 = load i8, i8* %24, align 1
  %114 = trunc i8 %113 to i1
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* @_ZL4iter, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %157

118:                                              ; preds = %115, %112
  store i32 0, i32* %39, align 4
  br label %119

119:                                              ; preds = %153, %118
  %120 = load i32, i32* %39, align 4
  %121 = load i32, i32* %35, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %156

123:                                              ; preds = %119
  store i32 0, i32* %40, align 4
  br label %124

124:                                              ; preds = %149, %123
  %125 = load i32, i32* %40, align 4
  %126 = load i32, i32* %34, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %152

128:                                              ; preds = %124
  %129 = load %struct.Points*, %struct.Points** %17, align 8
  %130 = getelementptr inbounds %struct.Points, %struct.Points* %129, i32 0, i32 2
  %131 = load %struct.Point*, %struct.Point** %130, align 8
  %132 = load i32, i32* %40, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.Point, %struct.Point* %131, i64 %133
  %135 = getelementptr inbounds %struct.Point, %struct.Point* %134, i32 0, i32 1
  %136 = load float*, float** %135, align 8
  %137 = load i32, i32* %39, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds float, float* %136, i64 %138
  %140 = load float, float* %139, align 4
  %141 = load float*, float** @coord_h, align 8
  %142 = load i32, i32* %34, align 4
  %143 = load i32, i32* %39, align 4
  %144 = mul nsw i32 %142, %143
  %145 = load i32, i32* %40, align 4
  %146 = add nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float, float* %141, i64 %147
  store float %140, float* %148, align 4
  br label %149

149:                                              ; preds = %128
  %150 = load i32, i32* %40, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %40, align 4
  br label %124, !llvm.loop !8

152:                                              ; preds = %124
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %39, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %39, align 4
  br label %119, !llvm.loop !9

156:                                              ; preds = %119
  br label %157

157:                                              ; preds = %156, %115
  %158 = load i32, i32* %32, align 4
  %159 = load i32, i32* %36, align 4
  %160 = add nsw i32 %159, 1
  %161 = mul nsw i32 %158, %160
  %162 = sext i32 %161 to i64
  %163 = mul i64 %162, 4
  %164 = call i32 @hipMalloc(i8** noundef bitcast (float** @work_mem_d to i8**), i64 noundef %163)
  %165 = load i32, i32* @_ZL4iter, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %157
  %168 = load i32, i32* %34, align 4
  %169 = load i32, i32* %35, align 4
  call void @_Z11allocDevMemii(i32 noundef %168, i32 noundef %169)
  br label %170

170:                                              ; preds = %167, %157
  %171 = load i8, i8* %24, align 1
  %172 = trunc i8 %171 to i1
  br i1 %172, label %176, label %173

173:                                              ; preds = %170
  %174 = load i32, i32* @_ZL4iter, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %173, %170
  %177 = load float*, float** @coord_d, align 8
  %178 = bitcast float* %177 to i8*
  %179 = load float*, float** @coord_h, align 8
  %180 = bitcast float* %179 to i8*
  %181 = load i32, i32* %34, align 4
  %182 = load i32, i32* %35, align 4
  %183 = mul nsw i32 %181, %182
  %184 = sext i32 %183 to i64
  %185 = mul i64 %184, 4
  %186 = call i32 @hipMemcpy(i8* noundef %178, i8* noundef %180, i64 noundef %185, i32 noundef 1)
  br label %187

187:                                              ; preds = %176, %173
  %188 = load i32*, i32** @center_table_d, align 8
  %189 = bitcast i32* %188 to i8*
  %190 = load i32*, i32** %22, align 8
  %191 = bitcast i32* %190 to i8*
  %192 = load i32, i32* %34, align 4
  %193 = sext i32 %192 to i64
  %194 = mul i64 %193, 4
  %195 = call i32 @hipMemcpy(i8* noundef %189, i8* noundef %191, i64 noundef %194, i32 noundef 1)
  %196 = load %struct.Point*, %struct.Point** @p, align 8
  %197 = bitcast %struct.Point* %196 to i8*
  %198 = load %struct.Points*, %struct.Points** %17, align 8
  %199 = getelementptr inbounds %struct.Points, %struct.Points* %198, i32 0, i32 2
  %200 = load %struct.Point*, %struct.Point** %199, align 8
  %201 = bitcast %struct.Point* %200 to i8*
  %202 = load i32, i32* %34, align 4
  %203 = sext i32 %202 to i64
  %204 = mul i64 %203, 32
  %205 = call i32 @hipMemcpy(i8* noundef %197, i8* noundef %201, i64 noundef %204, i32 noundef 1)
  %206 = load i8*, i8** @switch_membership_d, align 8
  %207 = load i32, i32* %34, align 4
  %208 = sext i32 %207 to i64
  %209 = mul i64 %208, 1
  %210 = call i32 @hipMemset(i8* noundef %206, i32 noundef 0, i64 noundef %209)
  %211 = load float*, float** @work_mem_d, align 8
  %212 = bitcast float* %211 to i8*
  %213 = load i32, i32* %32, align 4
  %214 = load i32, i32* %36, align 4
  %215 = add nsw i32 %214, 1
  %216 = mul nsw i32 %213, %215
  %217 = sext i32 %216 to i64
  %218 = mul i64 %217, 4
  %219 = call i32 @hipMemset(i8* noundef %212, i32 noundef 0, i64 noundef %218)
  %220 = load i32, i32* %34, align 4
  %221 = add nsw i32 %220, 512
  %222 = sub nsw i32 %221, 1
  %223 = sitofp i32 %222 to float
  %224 = fdiv contract float %223, 5.120000e+02
  %225 = fptosi float %224 to i32
  store i32 %225, i32* %41, align 4
  %226 = load i32, i32* %41, align 4
  %227 = add nsw i32 %226, 65536
  %228 = sub nsw i32 %227, 1
  %229 = sitofp i32 %228 to float
  %230 = fdiv contract float %229, 6.553600e+04
  %231 = fptosi float %230 to i32
  store i32 %231, i32* %42, align 4
  %232 = load i32, i32* %41, align 4
  %233 = load i32, i32* %42, align 4
  %234 = add nsw i32 %232, %233
  %235 = sub nsw i32 %234, 1
  %236 = sitofp i32 %235 to float
  %237 = load i32, i32* %42, align 4
  %238 = sitofp i32 %237 to float
  %239 = fdiv contract float %236, %238
  %240 = fptosi float %239 to i32
  store i32 %240, i32* %43, align 4
  %241 = load i32, i32* %43, align 4
  %242 = load i32, i32* %42, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %44, i32 noundef %241, i32 noundef %242, i32 noundef 1)
  br label %243

243:                                              ; preds = %187
  %244 = bitcast %struct.dim3* %45 to i8*
  %245 = bitcast %struct.dim3* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %244, i8* align 4 %245, i64 12, i1 false)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %46, i32 noundef 512, i32 noundef 1, i32 noundef 1)
  %246 = bitcast { i64, i32 }* %47 to i8*
  %247 = bitcast %struct.dim3* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %246, i8* align 4 %247, i64 12, i1 false)
  %248 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %47, i32 0, i32 0
  %249 = load i64, i64* %248, align 4
  %250 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %47, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = bitcast { i64, i32 }* %48 to i8*
  %253 = bitcast %struct.dim3* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %252, i8* align 4 %253, i64 12, i1 false)
  %254 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %48, i32 0, i32 0
  %255 = load i64, i64* %254, align 4
  %256 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %48, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @__hipPushCallConfiguration(i64 %249, i32 %251, i64 %255, i32 %257, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %271, label %260

260:                                              ; preds = %243
  %261 = load i32, i32* %34, align 4
  %262 = load i32, i32* %35, align 4
  %263 = load i64, i64* %16, align 8
  %264 = load %struct.Point*, %struct.Point** @p, align 8
  %265 = load i32, i32* %33, align 4
  %266 = load i32, i32* %32, align 4
  %267 = load float*, float** @coord_d, align 8
  %268 = load float*, float** @work_mem_d, align 8
  %269 = load i32*, i32** @center_table_d, align 8
  %270 = load i8*, i8** @switch_membership_d, align 8
  call void @_Z34__device_stub__kernel_compute_costiilP5PointiiPfS1_PiPb(i32 noundef %261, i32 noundef %262, i64 noundef %263, %struct.Point* noundef %264, i32 noundef %265, i32 noundef %266, float* noundef %267, float* noundef %268, i32* noundef %269, i8* noundef %270)
  br label %271

271:                                              ; preds = %260, %243
  br label %272

272:                                              ; preds = %271
  %273 = call i32 @hipDeviceSynchronize()
  %274 = call i32 @hipGetLastError()
  store i32 %274, i32* %31, align 4
  %275 = load i32, i32* %31, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %272
  %278 = load i32, i32* %31, align 4
  %279 = call i8* @hipGetErrorString(i32 noundef %278)
  %280 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* noundef %279)
  call void @exit(i32 noundef 1) #12
  unreachable

281:                                              ; preds = %272
  %282 = load float*, float** @work_mem_h, align 8
  %283 = bitcast float* %282 to i8*
  %284 = load float*, float** @work_mem_d, align 8
  %285 = bitcast float* %284 to i8*
  %286 = load i32, i32* %32, align 4
  %287 = load i32, i32* %36, align 4
  %288 = add nsw i32 %287, 1
  %289 = mul nsw i32 %286, %288
  %290 = sext i32 %289 to i64
  %291 = mul i64 %290, 4
  %292 = call i32 @hipMemcpy(i8* noundef %283, i8* noundef %285, i64 noundef %291, i32 noundef 2)
  %293 = load i8*, i8** %23, align 8
  %294 = load i8*, i8** @switch_membership_d, align 8
  %295 = load i32, i32* %34, align 4
  %296 = sext i32 %295 to i64
  %297 = mul i64 %296, 1
  %298 = call i32 @hipMemcpy(i8* noundef %293, i8* noundef %294, i64 noundef %297, i32 noundef 2)
  store i32 0, i32* %49, align 4
  %299 = load float, float* %18, align 4
  store float %299, float* %50, align 4
  %300 = load float*, float** @work_mem_h, align 8
  %301 = load i32, i32* %32, align 4
  %302 = load i32, i32* %36, align 4
  %303 = mul nsw i32 %301, %302
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds float, float* %300, i64 %304
  store float* %305, float** %51, align 8
  store i32 0, i32* %52, align 4
  br label %306

306:                                              ; preds = %381, %281
  %307 = load i32, i32* %52, align 4
  %308 = load i32, i32* %34, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %384

310:                                              ; preds = %306
  %311 = load i8*, i8** %21, align 8
  %312 = load i32, i32* %52, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i8, i8* %311, i64 %313
  %315 = load i8, i8* %314, align 1
  %316 = trunc i8 %315 to i1
  br i1 %316, label %317, label %369

317:                                              ; preds = %310
  %318 = load float, float* %18, align 4
  store float %318, float* %53, align 4
  store i32 0, i32* %54, align 4
  br label %319

319:                                              ; preds = %339, %317
  %320 = load i32, i32* %54, align 4
  %321 = load i32, i32* %34, align 4
  %322 = icmp slt i32 %320, %321
  br i1 %322, label %323, label %342

323:                                              ; preds = %319
  %324 = load float*, float** @work_mem_h, align 8
  %325 = load i32, i32* %54, align 4
  %326 = load i32, i32* %32, align 4
  %327 = mul nsw i32 %325, %326
  %328 = load i32*, i32** %22, align 8
  %329 = load i32, i32* %52, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = add nsw i32 %327, %332
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds float, float* %324, i64 %334
  %336 = load float, float* %335, align 4
  %337 = load float, float* %53, align 4
  %338 = fadd contract float %337, %336
  store float %338, float* %53, align 4
  br label %339

339:                                              ; preds = %323
  %340 = load i32, i32* %54, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %54, align 4
  br label %319, !llvm.loop !10

342:                                              ; preds = %319
  %343 = load float, float* %53, align 4
  %344 = load float*, float** %51, align 8
  %345 = load i32*, i32** %22, align 8
  %346 = load i32, i32* %52, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds float, float* %344, i64 %350
  store float %343, float* %351, align 4
  %352 = load float, float* %53, align 4
  %353 = fcmp contract ogt float %352, 0.000000e+00
  br i1 %353, label %354, label %368

354:                                              ; preds = %342
  %355 = load i32, i32* %49, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %49, align 4
  %357 = load float, float* %53, align 4
  %358 = load float*, float** @work_mem_h, align 8
  %359 = load i32, i32* %52, align 4
  %360 = load i32, i32* %32, align 4
  %361 = mul nsw i32 %359, %360
  %362 = load i32, i32* %33, align 4
  %363 = add nsw i32 %361, %362
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds float, float* %358, i64 %364
  %366 = load float, float* %365, align 4
  %367 = fsub contract float %366, %357
  store float %367, float* %365, align 4
  br label %368

368:                                              ; preds = %354, %342
  br label %369

369:                                              ; preds = %368, %310
  %370 = load float*, float** @work_mem_h, align 8
  %371 = load i32, i32* %52, align 4
  %372 = load i32, i32* %32, align 4
  %373 = mul nsw i32 %371, %372
  %374 = load i32, i32* %33, align 4
  %375 = add nsw i32 %373, %374
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds float, float* %370, i64 %376
  %378 = load float, float* %377, align 4
  %379 = load float, float* %50, align 4
  %380 = fadd contract float %379, %378
  store float %380, float* %50, align 4
  br label %381

381:                                              ; preds = %369
  %382 = load i32, i32* %52, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %52, align 4
  br label %306, !llvm.loop !11

384:                                              ; preds = %306
  %385 = load float, float* %50, align 4
  %386 = fcmp contract olt float %385, 0.000000e+00
  br i1 %386, label %387, label %517

387:                                              ; preds = %384
  store i32 0, i32* %55, align 4
  br label %388

388:                                              ; preds = %462, %387
  %389 = load i32, i32* %55, align 4
  %390 = load i32, i32* %34, align 4
  %391 = icmp slt i32 %389, %390
  br i1 %391, label %392, label %465

392:                                              ; preds = %388
  %393 = load float*, float** %51, align 8
  %394 = load i32*, i32** %22, align 8
  %395 = load %struct.Points*, %struct.Points** %17, align 8
  %396 = getelementptr inbounds %struct.Points, %struct.Points* %395, i32 0, i32 2
  %397 = load %struct.Point*, %struct.Point** %396, align 8
  %398 = load i32, i32* %55, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.Point, %struct.Point* %397, i64 %399
  %401 = getelementptr inbounds %struct.Point, %struct.Point* %400, i32 0, i32 2
  %402 = load i64, i64* %401, align 8
  %403 = getelementptr inbounds i32, i32* %394, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds float, float* %393, i64 %405
  %407 = load float, float* %406, align 4
  %408 = fcmp contract ogt float %407, 0.000000e+00
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %56, align 1
  %410 = load i8*, i8** %23, align 8
  %411 = load i32, i32* %55, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i8, i8* %410, i64 %412
  %414 = load i8, i8* %413, align 1
  %415 = trunc i8 %414 to i1
  br i1 %415, label %419, label %416

416:                                              ; preds = %392
  %417 = load i8, i8* %56, align 1
  %418 = trunc i8 %417 to i1
  br i1 %418, label %419, label %461

419:                                              ; preds = %416, %392
  %420 = load %struct.Points*, %struct.Points** %17, align 8
  %421 = getelementptr inbounds %struct.Points, %struct.Points* %420, i32 0, i32 2
  %422 = load %struct.Point*, %struct.Point** %421, align 8
  %423 = load i32, i32* %55, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.Point, %struct.Point* %422, i64 %424
  %426 = bitcast %struct.Point* %57 to i8*
  %427 = bitcast %struct.Point* %425 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %426, i8* align 8 %427, i64 32, i1 false)
  %428 = load %struct.Points*, %struct.Points** %17, align 8
  %429 = getelementptr inbounds %struct.Points, %struct.Points* %428, i32 0, i32 2
  %430 = load %struct.Point*, %struct.Point** %429, align 8
  %431 = load i64, i64* %16, align 8
  %432 = getelementptr inbounds %struct.Point, %struct.Point* %430, i64 %431
  %433 = bitcast %struct.Point* %58 to i8*
  %434 = bitcast %struct.Point* %432 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %433, i8* align 8 %434, i64 32, i1 false)
  %435 = load i32, i32* %35, align 4
  %436 = call contract noundef float @_Z4dist5PointS_i(%struct.Point* noundef byval(%struct.Point) align 8 %57, %struct.Point* noundef byval(%struct.Point) align 8 %58, i32 noundef %435)
  %437 = load %struct.Points*, %struct.Points** %17, align 8
  %438 = getelementptr inbounds %struct.Points, %struct.Points* %437, i32 0, i32 2
  %439 = load %struct.Point*, %struct.Point** %438, align 8
  %440 = load i32, i32* %55, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds %struct.Point, %struct.Point* %439, i64 %441
  %443 = getelementptr inbounds %struct.Point, %struct.Point* %442, i32 0, i32 0
  %444 = load float, float* %443, align 8
  %445 = fmul contract float %436, %444
  %446 = load %struct.Points*, %struct.Points** %17, align 8
  %447 = getelementptr inbounds %struct.Points, %struct.Points* %446, i32 0, i32 2
  %448 = load %struct.Point*, %struct.Point** %447, align 8
  %449 = load i32, i32* %55, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.Point, %struct.Point* %448, i64 %450
  %452 = getelementptr inbounds %struct.Point, %struct.Point* %451, i32 0, i32 3
  store float %445, float* %452, align 8
  %453 = load i64, i64* %16, align 8
  %454 = load %struct.Points*, %struct.Points** %17, align 8
  %455 = getelementptr inbounds %struct.Points, %struct.Points* %454, i32 0, i32 2
  %456 = load %struct.Point*, %struct.Point** %455, align 8
  %457 = load i32, i32* %55, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds %struct.Point, %struct.Point* %456, i64 %458
  %460 = getelementptr inbounds %struct.Point, %struct.Point* %459, i32 0, i32 2
  store i64 %453, i64* %460, align 8
  br label %461

461:                                              ; preds = %419, %416
  br label %462

462:                                              ; preds = %461
  %463 = load i32, i32* %55, align 4
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %55, align 4
  br label %388, !llvm.loop !12

465:                                              ; preds = %388
  store i32 0, i32* %59, align 4
  br label %466

466:                                              ; preds = %494, %465
  %467 = load i32, i32* %59, align 4
  %468 = load i32, i32* %34, align 4
  %469 = icmp slt i32 %467, %468
  br i1 %469, label %470, label %497

470:                                              ; preds = %466
  %471 = load i8*, i8** %21, align 8
  %472 = load i32, i32* %59, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i8, i8* %471, i64 %473
  %475 = load i8, i8* %474, align 1
  %476 = trunc i8 %475 to i1
  br i1 %476, label %477, label %493

477:                                              ; preds = %470
  %478 = load float*, float** %51, align 8
  %479 = load i32*, i32** %22, align 8
  %480 = load i32, i32* %59, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i32, i32* %479, i64 %481
  %483 = load i32, i32* %482, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds float, float* %478, i64 %484
  %486 = load float, float* %485, align 4
  %487 = fcmp contract ogt float %486, 0.000000e+00
  br i1 %487, label %488, label %493

488:                                              ; preds = %477
  %489 = load i8*, i8** %21, align 8
  %490 = load i32, i32* %59, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds i8, i8* %489, i64 %491
  store i8 0, i8* %492, align 1
  br label %493

493:                                              ; preds = %488, %477, %470
  br label %494

494:                                              ; preds = %493
  %495 = load i32, i32* %59, align 4
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* %59, align 4
  br label %466, !llvm.loop !13

497:                                              ; preds = %466
  %498 = load i64, i64* %16, align 8
  %499 = icmp sge i64 %498, 0
  br i1 %499, label %500, label %509

500:                                              ; preds = %497
  %501 = load i64, i64* %16, align 8
  %502 = load i32, i32* %34, align 4
  %503 = sext i32 %502 to i64
  %504 = icmp slt i64 %501, %503
  br i1 %504, label %505, label %509

505:                                              ; preds = %500
  %506 = load i8*, i8** %21, align 8
  %507 = load i64, i64* %16, align 8
  %508 = getelementptr inbounds i8, i8* %506, i64 %507
  store i8 1, i8* %508, align 1
  br label %509

509:                                              ; preds = %505, %500, %497
  %510 = load i64*, i64** %19, align 8
  %511 = load i64, i64* %510, align 8
  %512 = add nsw i64 %511, 1
  %513 = load i32, i32* %49, align 4
  %514 = sext i32 %513 to i64
  %515 = sub nsw i64 %512, %514
  %516 = load i64*, i64** %19, align 8
  store i64 %515, i64* %516, align 8
  br label %518

517:                                              ; preds = %384
  store float 0.000000e+00, float* %50, align 4
  br label %518

518:                                              ; preds = %517, %509
  %519 = load float*, float** @work_mem_h, align 8
  %520 = bitcast float* %519 to i8*
  call void @free(i8* noundef %520) #3
  %521 = load float*, float** @work_mem_d, align 8
  %522 = bitcast float* %521 to i8*
  %523 = call i32 @hipFree(i8* noundef %522)
  %524 = load i32, i32* @_ZL4iter, align 4
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* @_ZL4iter, align 4
  %526 = load float, float* %50, align 4
  %527 = fneg contract float %526
  ret float %527
}

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #1

declare i32 @hipMemset(i8* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 comdat align 2 {
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

declare i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) #1

declare i32 @hipDeviceSynchronize() #1

declare i32 @hipGetLastError() #1

declare i32 @printf(i8* noundef, ...) #1

declare i8* @hipGetErrorString(i32 noundef) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #10

declare noundef float @_Z4dist5PointS_i(%struct.Point* noundef byval(%struct.Point) align 8, %struct.Point* noundef byval(%struct.Point) align 8, i32 noundef) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_streamcluster_hip.cu() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i32, i32, i64, %struct.Point*, i32, i32, float*, float*, i32*, i8*)** @_Z19kernel_compute_costiilP5PointiiPfS1_PiPb to i8*), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nocallback nofree nounwind willreturn }
attributes #6 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
