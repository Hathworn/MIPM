; ModuleID = 'components.cu'
source_filename = "components.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque

$_Z15rgbToComponentsIfEvPT_S1_S1_Phii = comdat any

$_ZN4dim3C2Ejjj = comdat any

$_Z36__device_stub__c_CopySrcToComponentsIfEvPT_S1_S1_Phi = comdat any

$_Z15rgbToComponentsIiEvPT_S1_S1_Phii = comdat any

$_Z36__device_stub__c_CopySrcToComponentsIiEvPT_S1_S1_Phi = comdat any

$_Z13bwToComponentIfEvPT_Phii = comdat any

$_Z35__device_stub__c_CopySrcToComponentIfEvPT_Phi = comdat any

$_Z13bwToComponentIiEvPT_Phii = comdat any

$_Z35__device_stub__c_CopySrcToComponentIiEvPT_Phi = comdat any

$_Z21c_CopySrcToComponentsIfEvPT_S1_S1_Phi = comdat any

$_Z21c_CopySrcToComponentsIiEvPT_S1_S1_Phi = comdat any

$_Z20c_CopySrcToComponentIfEvPT_Phi = comdat any

$_Z20c_CopySrcToComponentIiEvPT_Phi = comdat any

$__hip_gpubin_handle = comdat any

@.str = private unnamed_addr constant [25 x i8] c"alignedSize%(256*3) == 0\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"components.cu\00", align 1
@__PRETTY_FUNCTION__._Z15rgbToComponentsIfEvPT_S1_S1_Phii = private unnamed_addr constant [75 x i8] c"void rgbToComponents(T *, T *, T *, unsigned char *, int, int) [T = float]\00", align 1
@_Z21c_CopySrcToComponentsIfEvPT_S1_S1_Phi = linkonce_odr constant void (float*, float*, float*, i8*, i32)* @_Z36__device_stub__c_CopySrcToComponentsIfEvPT_S1_S1_Phi, comdat, align 8
@__PRETTY_FUNCTION__._Z15rgbToComponentsIiEvPT_S1_S1_Phii = private unnamed_addr constant [73 x i8] c"void rgbToComponents(T *, T *, T *, unsigned char *, int, int) [T = int]\00", align 1
@_Z21c_CopySrcToComponentsIiEvPT_S1_S1_Phi = linkonce_odr constant void (i32*, i32*, i32*, i8*, i32)* @_Z36__device_stub__c_CopySrcToComponentsIiEvPT_S1_S1_Phi, comdat, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"alignedSize%(256) == 0\00", align 1
@__PRETTY_FUNCTION__._Z13bwToComponentIfEvPT_Phii = private unnamed_addr constant [63 x i8] c"void bwToComponent(T *, unsigned char *, int, int) [T = float]\00", align 1
@_Z20c_CopySrcToComponentIfEvPT_Phi = linkonce_odr constant void (float*, i8*, i32)* @_Z35__device_stub__c_CopySrcToComponentIfEvPT_Phi, comdat, align 8
@__PRETTY_FUNCTION__._Z13bwToComponentIiEvPT_Phii = private unnamed_addr constant [61 x i8] c"void bwToComponent(T *, unsigned char *, int, int) [T = int]\00", align 1
@_Z20c_CopySrcToComponentIiEvPT_Phi = linkonce_odr constant void (i32*, i8*, i32)* @_Z35__device_stub__c_CopySrcToComponentIiEvPT_Phi, comdat, align 8
@0 = private unnamed_addr constant [42 x i8] c"_Z21c_CopySrcToComponentsIfEvPT_S1_S1_Phi\00", align 1
@1 = private unnamed_addr constant [42 x i8] c"_Z21c_CopySrcToComponentsIiEvPT_S1_S1_Phi\00", align 1
@2 = private unnamed_addr constant [35 x i8] c"_Z20c_CopySrcToComponentIfEvPT_Phi\00", align 1
@3 = private unnamed_addr constant [35 x i8] c"_Z20c_CopySrcToComponentIiEvPT_Phi\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: mustprogress noinline optnone uwtable
define weak_odr dso_local void @_Z15rgbToComponentsIfEvPT_S1_S1_Phii(float* noundef %0, float* noundef %1, float* noundef %2, i8* noundef %3, i32 noundef %4, i32 noundef %5) #0 comdat {
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dim3, align 4
  %17 = alloca %struct.dim3, align 4
  %18 = alloca %struct.dim3, align 4
  %19 = alloca %struct.dim3, align 4
  %20 = alloca { i64, i32 }, align 4
  %21 = alloca { i64, i32 }, align 4
  store float* %0, float** %7, align 8
  store float* %1, float** %8, align 8
  store float* %2, float** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = mul nsw i32 %22, %23
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = mul nsw i32 %25, %26
  %28 = srem i32 %27, 256
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %6
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sdiv i32 %33, 256
  %35 = add nsw i32 %34, 1
  br label %41

36:                                               ; preds = %6
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = mul nsw i32 %37, %38
  %40 = sdiv i32 %39, 256
  br label %41

41:                                               ; preds = %36, %30
  %42 = phi i32 [ %35, %30 ], [ %40, %36 ]
  %43 = mul nsw i32 %42, 256
  %44 = mul nsw i32 %43, 3
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = call i32 @hipMalloc(i8** noundef %13, i64 noundef %46)
  %48 = load i8*, i8** %13, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = call i32 @hipMemset(i8* noundef %48, i32 noundef 0, i64 noundef %50)
  %52 = load i8*, i8** %13, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* %14, align 4
  %55 = mul nsw i32 %54, 3
  %56 = sext i32 %55 to i64
  %57 = call i32 @hipMemcpy(i8* noundef %52, i8* noundef %53, i64 noundef %56, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %16, i32 noundef 256, i32 noundef 1, i32 noundef 1)
  %58 = load i32, i32* %15, align 4
  %59 = sdiv i32 %58, 768
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %17, i32 noundef %59, i32 noundef 1, i32 noundef 1)
  %60 = load i32, i32* %15, align 4
  %61 = srem i32 %60, 768
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %41
  br label %66

64:                                               ; preds = %41
  call void @__assert_fail(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 151, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @__PRETTY_FUNCTION__._Z15rgbToComponentsIfEvPT_S1_S1_Phii, i64 0, i64 0)) #6
  unreachable

65:                                               ; No predecessors!
  br label %66

66:                                               ; preds = %65, %63
  br label %67

67:                                               ; preds = %66
  %68 = bitcast %struct.dim3* %18 to i8*
  %69 = bitcast %struct.dim3* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 %69, i64 12, i1 false)
  %70 = bitcast %struct.dim3* %19 to i8*
  %71 = bitcast %struct.dim3* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 12, i1 false)
  %72 = bitcast { i64, i32 }* %20 to i8*
  %73 = bitcast %struct.dim3* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 12, i1 false)
  %74 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 0
  %75 = load i64, i64* %74, align 4
  %76 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = bitcast { i64, i32 }* %21 to i8*
  %79 = bitcast %struct.dim3* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %78, i8* align 4 %79, i64 12, i1 false)
  %80 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 0
  %81 = load i64, i64* %80, align 4
  %82 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @__hipPushCallConfiguration(i64 %75, i32 %77, i64 %81, i32 %83, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %67
  %87 = load float*, float** %7, align 8
  %88 = load float*, float** %8, align 8
  %89 = load float*, float** %9, align 8
  %90 = load i8*, i8** %13, align 8
  %91 = load i32, i32* %14, align 4
  call void @_Z36__device_stub__c_CopySrcToComponentsIfEvPT_S1_S1_Phi(float* noundef %87, float* noundef %88, float* noundef %89, i8* noundef %90, i32 noundef %91)
  br label %92

92:                                               ; preds = %86, %67
  br label %93

93:                                               ; preds = %92
  %94 = load i8*, i8** %13, align 8
  %95 = call i32 @hipFree(i8* noundef %94)
  ret void
}

declare i32 @hipMalloc(i8** noundef, i64 noundef) #1

declare i32 @hipMemset(i8* noundef, i32 noundef, i64 noundef) #1

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 comdat align 2 {
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

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

declare i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) #1

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline norecurse optnone uwtable
define linkonce_odr dso_local void @_Z36__device_stub__c_CopySrcToComponentsIfEvPT_S1_S1_Phi(float* noundef %0, float* noundef %1, float* noundef %2, i8* noundef %3, i32 noundef %4) #5 comdat {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca { i64, i32 }, align 8
  %16 = alloca { i64, i32 }, align 8
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = alloca i8*, i64 5, align 16
  %18 = bitcast float** %6 to i8*
  %19 = getelementptr i8*, i8** %17, i32 0
  store i8* %18, i8** %19, align 8
  %20 = bitcast float** %7 to i8*
  %21 = getelementptr i8*, i8** %17, i32 1
  store i8* %20, i8** %21, align 8
  %22 = bitcast float** %8 to i8*
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
  %44 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (float*, float*, float*, i8*, i32)** @_Z21c_CopySrcToComponentsIfEvPT_S1_S1_Phi to i8*), i64 %34, i32 %36, i64 %40, i32 %42, i8** noundef %17, i64 noundef %29, %struct.ihipStream_t* noundef %43)
  br label %45

45:                                               ; preds = %5
  ret void
}

declare i32 @hipFree(i8* noundef) #1

; Function Attrs: mustprogress noinline optnone uwtable
define weak_odr dso_local void @_Z15rgbToComponentsIiEvPT_S1_S1_Phii(i32* noundef %0, i32* noundef %1, i32* noundef %2, i8* noundef %3, i32 noundef %4, i32 noundef %5) #0 comdat {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dim3, align 4
  %17 = alloca %struct.dim3, align 4
  %18 = alloca %struct.dim3, align 4
  %19 = alloca %struct.dim3, align 4
  %20 = alloca { i64, i32 }, align 4
  %21 = alloca { i64, i32 }, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = mul nsw i32 %22, %23
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = mul nsw i32 %25, %26
  %28 = srem i32 %27, 256
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %6
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sdiv i32 %33, 256
  %35 = add nsw i32 %34, 1
  br label %41

36:                                               ; preds = %6
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = mul nsw i32 %37, %38
  %40 = sdiv i32 %39, 256
  br label %41

41:                                               ; preds = %36, %30
  %42 = phi i32 [ %35, %30 ], [ %40, %36 ]
  %43 = mul nsw i32 %42, 256
  %44 = mul nsw i32 %43, 3
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = call i32 @hipMalloc(i8** noundef %13, i64 noundef %46)
  %48 = load i8*, i8** %13, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = call i32 @hipMemset(i8* noundef %48, i32 noundef 0, i64 noundef %50)
  %52 = load i8*, i8** %13, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* %14, align 4
  %55 = mul nsw i32 %54, 3
  %56 = sext i32 %55 to i64
  %57 = call i32 @hipMemcpy(i8* noundef %52, i8* noundef %53, i64 noundef %56, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %16, i32 noundef 256, i32 noundef 1, i32 noundef 1)
  %58 = load i32, i32* %15, align 4
  %59 = sdiv i32 %58, 768
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %17, i32 noundef %59, i32 noundef 1, i32 noundef 1)
  %60 = load i32, i32* %15, align 4
  %61 = srem i32 %60, 768
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %41
  br label %66

64:                                               ; preds = %41
  call void @__assert_fail(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 151, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__._Z15rgbToComponentsIiEvPT_S1_S1_Phii, i64 0, i64 0)) #6
  unreachable

65:                                               ; No predecessors!
  br label %66

66:                                               ; preds = %65, %63
  br label %67

67:                                               ; preds = %66
  %68 = bitcast %struct.dim3* %18 to i8*
  %69 = bitcast %struct.dim3* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 %69, i64 12, i1 false)
  %70 = bitcast %struct.dim3* %19 to i8*
  %71 = bitcast %struct.dim3* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 12, i1 false)
  %72 = bitcast { i64, i32 }* %20 to i8*
  %73 = bitcast %struct.dim3* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 12, i1 false)
  %74 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 0
  %75 = load i64, i64* %74, align 4
  %76 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = bitcast { i64, i32 }* %21 to i8*
  %79 = bitcast %struct.dim3* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %78, i8* align 4 %79, i64 12, i1 false)
  %80 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 0
  %81 = load i64, i64* %80, align 4
  %82 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @__hipPushCallConfiguration(i64 %75, i32 %77, i64 %81, i32 %83, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %67
  %87 = load i32*, i32** %7, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = load i8*, i8** %13, align 8
  %91 = load i32, i32* %14, align 4
  call void @_Z36__device_stub__c_CopySrcToComponentsIiEvPT_S1_S1_Phi(i32* noundef %87, i32* noundef %88, i32* noundef %89, i8* noundef %90, i32 noundef %91)
  br label %92

92:                                               ; preds = %86, %67
  br label %93

93:                                               ; preds = %92
  %94 = load i8*, i8** %13, align 8
  %95 = call i32 @hipFree(i8* noundef %94)
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define linkonce_odr dso_local void @_Z36__device_stub__c_CopySrcToComponentsIiEvPT_S1_S1_Phi(i32* noundef %0, i32* noundef %1, i32* noundef %2, i8* noundef %3, i32 noundef %4) #5 comdat {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca { i64, i32 }, align 8
  %16 = alloca { i64, i32 }, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = alloca i8*, i64 5, align 16
  %18 = bitcast i32** %6 to i8*
  %19 = getelementptr i8*, i8** %17, i32 0
  store i8* %18, i8** %19, align 8
  %20 = bitcast i32** %7 to i8*
  %21 = getelementptr i8*, i8** %17, i32 1
  store i8* %20, i8** %21, align 8
  %22 = bitcast i32** %8 to i8*
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
  %44 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i32*, i32*, i32*, i8*, i32)** @_Z21c_CopySrcToComponentsIiEvPT_S1_S1_Phi to i8*), i64 %34, i32 %36, i64 %40, i32 %42, i8** noundef %17, i64 noundef %29, %struct.ihipStream_t* noundef %43)
  br label %45

45:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define weak_odr dso_local void @_Z13bwToComponentIfEvPT_Phii(float* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) #0 comdat {
  %5 = alloca float*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dim3, align 4
  %13 = alloca %struct.dim3, align 4
  %14 = alloca %struct.dim3, align 4
  %15 = alloca %struct.dim3, align 4
  %16 = alloca { i64, i32 }, align 4
  %17 = alloca { i64, i32 }, align 4
  store float* %0, float** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = mul nsw i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = srem i32 %21, 256
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  %26 = sdiv i32 %25, 256
  %27 = add nsw i32 %26, 1
  br label %31

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = sdiv i32 %29, 256
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi i32 [ %27, %24 ], [ %30, %28 ]
  %33 = mul nsw i32 %32, 256
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = call i32 @hipMalloc(i8** noundef %9, i64 noundef %35)
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = call i32 @hipMemset(i8* noundef %37, i32 noundef 0, i64 noundef %39)
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = call i32 @hipMemcpy(i8* noundef %41, i8* noundef %42, i64 noundef %44, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %12, i32 noundef 256, i32 noundef 1, i32 noundef 1)
  %46 = load i32, i32* %11, align 4
  %47 = sdiv i32 %46, 256
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %13, i32 noundef %47, i32 noundef 1, i32 noundef 1)
  %48 = load i32, i32* %11, align 4
  %49 = srem i32 %48, 256
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %31
  br label %54

52:                                               ; preds = %31
  call void @__assert_fail(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 179, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__._Z13bwToComponentIfEvPT_Phii, i64 0, i64 0)) #6
  unreachable

53:                                               ; No predecessors!
  br label %54

54:                                               ; preds = %53, %51
  br label %55

55:                                               ; preds = %54
  %56 = bitcast %struct.dim3* %14 to i8*
  %57 = bitcast %struct.dim3* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %57, i64 12, i1 false)
  %58 = bitcast %struct.dim3* %15 to i8*
  %59 = bitcast %struct.dim3* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 12, i1 false)
  %60 = bitcast { i64, i32 }* %16 to i8*
  %61 = bitcast %struct.dim3* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 12, i1 false)
  %62 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %63 = load i64, i64* %62, align 4
  %64 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = bitcast { i64, i32 }* %17 to i8*
  %67 = bitcast %struct.dim3* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 12, i1 false)
  %68 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %69 = load i64, i64* %68, align 4
  %70 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @__hipPushCallConfiguration(i64 %63, i32 %65, i64 %69, i32 %71, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %55
  %75 = load float*, float** %5, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i32, i32* %10, align 4
  call void @_Z35__device_stub__c_CopySrcToComponentIfEvPT_Phi(float* noundef %75, i8* noundef %76, i32 noundef %77)
  br label %78

78:                                               ; preds = %74, %55
  br label %79

79:                                               ; preds = %78
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @hipFree(i8* noundef %80)
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define linkonce_odr dso_local void @_Z35__device_stub__c_CopySrcToComponentIfEvPT_Phi(float* noundef %0, i8* noundef %1, i32 noundef %2) #5 comdat {
  %4 = alloca float*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca { i64, i32 }, align 8
  %12 = alloca { i64, i32 }, align 8
  store float* %0, float** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = alloca i8*, i64 3, align 16
  %14 = bitcast float** %4 to i8*
  %15 = getelementptr i8*, i8** %13, i32 0
  store i8* %14, i8** %15, align 8
  %16 = bitcast i8** %5 to i8*
  %17 = getelementptr i8*, i8** %13, i32 1
  store i8* %16, i8** %17, align 8
  %18 = bitcast i32* %6 to i8*
  %19 = getelementptr i8*, i8** %13, i32 2
  store i8* %18, i8** %19, align 8
  %20 = call i32 @__hipPopCallConfiguration(%struct.dim3* %7, %struct.dim3* %8, i64* %9, i8** %10)
  %21 = load i64, i64* %9, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = bitcast { i64, i32 }* %11 to i8*
  %24 = bitcast %struct.dim3* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 12, i1 false)
  %25 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = bitcast { i64, i32 }* %12 to i8*
  %30 = bitcast %struct.dim3* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 12, i1 false)
  %31 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = bitcast i8* %22 to %struct.ihipStream_t*
  %36 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (float*, i8*, i32)** @_Z20c_CopySrcToComponentIfEvPT_Phi to i8*), i64 %26, i32 %28, i64 %32, i32 %34, i8** noundef %13, i64 noundef %21, %struct.ihipStream_t* noundef %35)
  br label %37

37:                                               ; preds = %3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define weak_odr dso_local void @_Z13bwToComponentIiEvPT_Phii(i32* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) #0 comdat {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dim3, align 4
  %13 = alloca %struct.dim3, align 4
  %14 = alloca %struct.dim3, align 4
  %15 = alloca %struct.dim3, align 4
  %16 = alloca { i64, i32 }, align 4
  %17 = alloca { i64, i32 }, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = mul nsw i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = srem i32 %21, 256
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  %26 = sdiv i32 %25, 256
  %27 = add nsw i32 %26, 1
  br label %31

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = sdiv i32 %29, 256
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi i32 [ %27, %24 ], [ %30, %28 ]
  %33 = mul nsw i32 %32, 256
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = call i32 @hipMalloc(i8** noundef %9, i64 noundef %35)
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = call i32 @hipMemset(i8* noundef %37, i32 noundef 0, i64 noundef %39)
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = call i32 @hipMemcpy(i8* noundef %41, i8* noundef %42, i64 noundef %44, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %12, i32 noundef 256, i32 noundef 1, i32 noundef 1)
  %46 = load i32, i32* %11, align 4
  %47 = sdiv i32 %46, 256
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %13, i32 noundef %47, i32 noundef 1, i32 noundef 1)
  %48 = load i32, i32* %11, align 4
  %49 = srem i32 %48, 256
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %31
  br label %54

52:                                               ; preds = %31
  call void @__assert_fail(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 179, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__._Z13bwToComponentIiEvPT_Phii, i64 0, i64 0)) #6
  unreachable

53:                                               ; No predecessors!
  br label %54

54:                                               ; preds = %53, %51
  br label %55

55:                                               ; preds = %54
  %56 = bitcast %struct.dim3* %14 to i8*
  %57 = bitcast %struct.dim3* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %57, i64 12, i1 false)
  %58 = bitcast %struct.dim3* %15 to i8*
  %59 = bitcast %struct.dim3* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 12, i1 false)
  %60 = bitcast { i64, i32 }* %16 to i8*
  %61 = bitcast %struct.dim3* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 12, i1 false)
  %62 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %63 = load i64, i64* %62, align 4
  %64 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = bitcast { i64, i32 }* %17 to i8*
  %67 = bitcast %struct.dim3* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 12, i1 false)
  %68 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %69 = load i64, i64* %68, align 4
  %70 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @__hipPushCallConfiguration(i64 %63, i32 %65, i64 %69, i32 %71, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %55
  %75 = load i32*, i32** %5, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i32, i32* %10, align 4
  call void @_Z35__device_stub__c_CopySrcToComponentIiEvPT_Phi(i32* noundef %75, i8* noundef %76, i32 noundef %77)
  br label %78

78:                                               ; preds = %74, %55
  br label %79

79:                                               ; preds = %78
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @hipFree(i8* noundef %80)
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define linkonce_odr dso_local void @_Z35__device_stub__c_CopySrcToComponentIiEvPT_Phi(i32* noundef %0, i8* noundef %1, i32 noundef %2) #5 comdat {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca { i64, i32 }, align 8
  %12 = alloca { i64, i32 }, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = alloca i8*, i64 3, align 16
  %14 = bitcast i32** %4 to i8*
  %15 = getelementptr i8*, i8** %13, i32 0
  store i8* %14, i8** %15, align 8
  %16 = bitcast i8** %5 to i8*
  %17 = getelementptr i8*, i8** %13, i32 1
  store i8* %16, i8** %17, align 8
  %18 = bitcast i32* %6 to i8*
  %19 = getelementptr i8*, i8** %13, i32 2
  store i8* %18, i8** %19, align 8
  %20 = call i32 @__hipPopCallConfiguration(%struct.dim3* %7, %struct.dim3* %8, i64* %9, i8** %10)
  %21 = load i64, i64* %9, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = bitcast { i64, i32 }* %11 to i8*
  %24 = bitcast %struct.dim3* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 12, i1 false)
  %25 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = bitcast { i64, i32 }* %12 to i8*
  %30 = bitcast %struct.dim3* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 12, i1 false)
  %31 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = bitcast i8* %22 to %struct.ihipStream_t*
  %36 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i32*, i8*, i32)** @_Z20c_CopySrcToComponentIiEvPT_Phi to i8*), i64 %26, i32 %28, i64 %32, i32 %34, i8** noundef %13, i64 noundef %21, %struct.ihipStream_t* noundef %35)
  br label %37

37:                                               ; preds = %3
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (float*, float*, float*, i8*, i32)** @_Z21c_CopySrcToComponentsIfEvPT_S1_S1_Phi to i8*), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %3 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i32*, i32*, i32*, i8*, i32)** @_Z21c_CopySrcToComponentsIiEvPT_S1_S1_Phi to i8*), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %4 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (float*, i8*, i32)** @_Z20c_CopySrcToComponentIfEvPT_Phi to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %5 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i32*, i8*, i32)** @_Z20c_CopySrcToComponentIiEvPT_Phi to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @3, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn }
attributes #5 = { noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 1be90618e508074abc746ab4963d7ad92710d6c5)"}
