; ModuleID = 'matrixMul.cpp'
source_filename = "matrixMul.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque

$_Z5checkI10hipError_tEvT_PKcS3_i = comdat any

$_Z27__device_stub__MatrixMulHIPILi16EEvPfS0_S0_ii = comdat any

$_Z27__device_stub__MatrixMulHIPILi32EEvPfS0_S0_ii = comdat any

$_Z12MatrixMulHIPILi16EEvPfS0_S0_ii = comdat any

$_Z12MatrixMulHIPILi32EEvPfS0_S0_ii = comdat any

$__hip_gpubin_handle = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [32 x i8] c"hipHostMalloc(&h_A, mem_size_A)\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"matrixMul.cpp\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"hipHostMalloc(&h_B, mem_size_B)\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"hipHostMalloc(&h_C, mem_size_C)\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"hipMalloc(reinterpret_cast<void **>(&d_A), mem_size_A)\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"hipMalloc(reinterpret_cast<void **>(&d_B), mem_size_B)\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"hipMalloc(reinterpret_cast<void **>(&d_C), mem_size_C)\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"hipStreamCreate(&stream)\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"hipMemcpyAsync(d_A, h_A, mem_size_A, hipMemcpyHostToDevice, stream)\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"hipMemcpyAsync(d_B, h_B, mem_size_B, hipMemcpyHostToDevice, stream)\00", align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str.10 = private unnamed_addr constant [37 x i8] c"Computing result using HIP Kernel...\00", align 1
@_Z12MatrixMulHIPILi16EEvPfS0_S0_ii = linkonce_odr dso_local constant void (float*, float*, float*, i32, i32)* @_Z27__device_stub__MatrixMulHIPILi16EEvPfS0_S0_ii, comdat, align 8
@_Z12MatrixMulHIPILi32EEvPfS0_S0_ii = linkonce_odr dso_local constant void (float*, float*, float*, i32, i32)* @_Z27__device_stub__MatrixMulHIPILi32EEvPfS0_S0_ii, comdat, align 8
@.str.11 = private unnamed_addr constant [29 x i8] c"hipStreamSynchronize(stream)\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Performance= \00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c" GFlop/s\0A\00", align 1
@.str.14 = private unnamed_addr constant [68 x i8] c"hipMemcpyAsync(h_C, d_C, mem_size_C, hipMemcpyDeviceToHost, stream)\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"hipHostFree(h_A)\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"hipHostFree(h_B)\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"hipHostFree(h_C)\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"hipFree(d_A)\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"hipFree(d_B)\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"hipFree(d_C)\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"hipStreamDestroy(stream)\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"[Matrix Multiply Using HIP] - Starting...\00", align 1
@_ZSt4cerr = external dso_local global %"class.std::basic_ostream", align 8
@.str.24 = private unnamed_addr constant [9 x i8] c"MatrixA(\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"), MatrixB(\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"HIP error at: \00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c" \00", align 1
@0 = private unnamed_addr constant [35 x i8] c"_Z12MatrixMulHIPILi16EEvPfS0_S0_ii\00", align 1
@1 = private unnamed_addr constant [35 x i8] c"_Z12MatrixMulHIPILi32EEvPfS0_S0_ii\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_matrixMul.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable writeonly
define dso_local void @_Z12ConstantInitPfif(float* nocapture writeonly %0, i32 %1, float %2) local_unnamed_addr #3 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %83

5:                                                ; preds = %3
  %6 = zext i32 %1 to i64
  %7 = icmp ult i32 %1, 8
  br i1 %7, label %81, label %8

8:                                                ; preds = %5
  %9 = and i64 %6, 4294967288
  %10 = insertelement <4 x float> poison, float %2, i64 0
  %11 = shufflevector <4 x float> %10, <4 x float> poison, <4 x i32> zeroinitializer
  %12 = insertelement <4 x float> poison, float %2, i64 0
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> zeroinitializer
  %14 = add nsw i64 %9, -8
  %15 = lshr exact i64 %14, 3
  %16 = add nuw nsw i64 %15, 1
  %17 = and i64 %16, 7
  %18 = icmp ult i64 %14, 56
  br i1 %18, label %66, label %19

19:                                               ; preds = %8
  %20 = and i64 %16, 4611686018427387896
  br label %21

21:                                               ; preds = %21, %19
  %22 = phi i64 [ 0, %19 ], [ %63, %21 ]
  %23 = phi i64 [ 0, %19 ], [ %64, %21 ]
  %24 = getelementptr inbounds float, float* %0, i64 %22
  %25 = bitcast float* %24 to <4 x float>*
  store <4 x float> %11, <4 x float>* %25, align 4, !tbaa !3
  %26 = getelementptr inbounds float, float* %24, i64 4
  %27 = bitcast float* %26 to <4 x float>*
  store <4 x float> %13, <4 x float>* %27, align 4, !tbaa !3
  %28 = or i64 %22, 8
  %29 = getelementptr inbounds float, float* %0, i64 %28
  %30 = bitcast float* %29 to <4 x float>*
  store <4 x float> %11, <4 x float>* %30, align 4, !tbaa !3
  %31 = getelementptr inbounds float, float* %29, i64 4
  %32 = bitcast float* %31 to <4 x float>*
  store <4 x float> %13, <4 x float>* %32, align 4, !tbaa !3
  %33 = or i64 %22, 16
  %34 = getelementptr inbounds float, float* %0, i64 %33
  %35 = bitcast float* %34 to <4 x float>*
  store <4 x float> %11, <4 x float>* %35, align 4, !tbaa !3
  %36 = getelementptr inbounds float, float* %34, i64 4
  %37 = bitcast float* %36 to <4 x float>*
  store <4 x float> %13, <4 x float>* %37, align 4, !tbaa !3
  %38 = or i64 %22, 24
  %39 = getelementptr inbounds float, float* %0, i64 %38
  %40 = bitcast float* %39 to <4 x float>*
  store <4 x float> %11, <4 x float>* %40, align 4, !tbaa !3
  %41 = getelementptr inbounds float, float* %39, i64 4
  %42 = bitcast float* %41 to <4 x float>*
  store <4 x float> %13, <4 x float>* %42, align 4, !tbaa !3
  %43 = or i64 %22, 32
  %44 = getelementptr inbounds float, float* %0, i64 %43
  %45 = bitcast float* %44 to <4 x float>*
  store <4 x float> %11, <4 x float>* %45, align 4, !tbaa !3
  %46 = getelementptr inbounds float, float* %44, i64 4
  %47 = bitcast float* %46 to <4 x float>*
  store <4 x float> %13, <4 x float>* %47, align 4, !tbaa !3
  %48 = or i64 %22, 40
  %49 = getelementptr inbounds float, float* %0, i64 %48
  %50 = bitcast float* %49 to <4 x float>*
  store <4 x float> %11, <4 x float>* %50, align 4, !tbaa !3
  %51 = getelementptr inbounds float, float* %49, i64 4
  %52 = bitcast float* %51 to <4 x float>*
  store <4 x float> %13, <4 x float>* %52, align 4, !tbaa !3
  %53 = or i64 %22, 48
  %54 = getelementptr inbounds float, float* %0, i64 %53
  %55 = bitcast float* %54 to <4 x float>*
  store <4 x float> %11, <4 x float>* %55, align 4, !tbaa !3
  %56 = getelementptr inbounds float, float* %54, i64 4
  %57 = bitcast float* %56 to <4 x float>*
  store <4 x float> %13, <4 x float>* %57, align 4, !tbaa !3
  %58 = or i64 %22, 56
  %59 = getelementptr inbounds float, float* %0, i64 %58
  %60 = bitcast float* %59 to <4 x float>*
  store <4 x float> %11, <4 x float>* %60, align 4, !tbaa !3
  %61 = getelementptr inbounds float, float* %59, i64 4
  %62 = bitcast float* %61 to <4 x float>*
  store <4 x float> %13, <4 x float>* %62, align 4, !tbaa !3
  %63 = add nuw i64 %22, 64
  %64 = add nuw i64 %23, 8
  %65 = icmp eq i64 %64, %20
  br i1 %65, label %66, label %21, !llvm.loop !7

66:                                               ; preds = %21, %8
  %67 = phi i64 [ 0, %8 ], [ %63, %21 ]
  %68 = icmp eq i64 %17, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %66, %69
  %70 = phi i64 [ %76, %69 ], [ %67, %66 ]
  %71 = phi i64 [ %77, %69 ], [ 0, %66 ]
  %72 = getelementptr inbounds float, float* %0, i64 %70
  %73 = bitcast float* %72 to <4 x float>*
  store <4 x float> %11, <4 x float>* %73, align 4, !tbaa !3
  %74 = getelementptr inbounds float, float* %72, i64 4
  %75 = bitcast float* %74 to <4 x float>*
  store <4 x float> %13, <4 x float>* %75, align 4, !tbaa !3
  %76 = add nuw i64 %70, 8
  %77 = add i64 %71, 1
  %78 = icmp eq i64 %77, %17
  br i1 %78, label %79, label %69, !llvm.loop !10

79:                                               ; preds = %69, %66
  %80 = icmp eq i64 %9, %6
  br i1 %80, label %83, label %81

81:                                               ; preds = %5, %79
  %82 = phi i64 [ 0, %5 ], [ %9, %79 ]
  br label %84

83:                                               ; preds = %84, %79, %3
  ret void

84:                                               ; preds = %81, %84
  %85 = phi i64 [ %87, %84 ], [ %82, %81 ]
  %86 = getelementptr inbounds float, float* %0, i64 %85
  store float %2, float* %86, align 4, !tbaa !3
  %87 = add nuw nsw i64 %85, 1
  %88 = icmp eq i64 %87, %6
  br i1 %88, label %83, label %84, !llvm.loop !12
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: uwtable
define dso_local i32 @_Z14MatrixMultiplyiRK4dim3S1_(i32 %0, %struct.dim3* nocapture nonnull readonly align 4 dereferenceable(12) %1, %struct.dim3* nocapture nonnull readonly align 4 dereferenceable(12) %2) local_unnamed_addr #5 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dim3, align 8
  %10 = alloca %struct.dim3, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [5 x i8*], align 16
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.dim3, align 8
  %20 = alloca %struct.dim3, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca [5 x i8*], align 16
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.dim3, align 8
  %30 = alloca %struct.dim3, align 8
  %31 = alloca i64, align 8
  %32 = alloca i8*, align 8
  %33 = alloca [5 x i8*], align 16
  %34 = alloca float*, align 8
  %35 = alloca float*, align 8
  %36 = alloca float*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca %struct.dim3, align 8
  %40 = alloca %struct.dim3, align 8
  %41 = alloca i64, align 8
  %42 = alloca i8*, align 8
  %43 = alloca [5 x i8*], align 16
  %44 = alloca float*, align 8
  %45 = alloca float*, align 8
  %46 = alloca float*, align 8
  %47 = alloca float*, align 8
  %48 = alloca float*, align 8
  %49 = alloca float*, align 8
  %50 = alloca %struct.ihipStream_t*, align 8
  %51 = getelementptr inbounds %struct.dim3, %struct.dim3* %1, i64 0, i32 0
  %52 = load i32, i32* %51, align 4, !tbaa !14
  %53 = getelementptr inbounds %struct.dim3, %struct.dim3* %1, i64 0, i32 1
  %54 = load i32, i32* %53, align 4, !tbaa !17
  %55 = mul i32 %54, %52
  %56 = shl i32 %55, 2
  %57 = bitcast float** %44 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %57) #11
  %58 = zext i32 %56 to i64
  %59 = bitcast float** %44 to i8**
  %60 = call i32 @hipHostMalloc(i8** nonnull %59, i64 %58, i32 0)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 67)
  %61 = getelementptr inbounds %struct.dim3, %struct.dim3* %2, i64 0, i32 0
  %62 = load i32, i32* %61, align 4, !tbaa !14
  %63 = getelementptr inbounds %struct.dim3, %struct.dim3* %2, i64 0, i32 1
  %64 = load i32, i32* %63, align 4, !tbaa !17
  %65 = mul i32 %64, %62
  %66 = shl i32 %65, 2
  %67 = bitcast float** %45 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %67) #11
  %68 = zext i32 %66 to i64
  %69 = bitcast float** %45 to i8**
  %70 = call i32 @hipHostMalloc(i8** nonnull %69, i64 %68, i32 0)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 71)
  %71 = load float*, float** %44, align 8, !tbaa !18
  %72 = icmp sgt i32 %55, 0
  br i1 %72, label %73, label %152

73:                                               ; preds = %3
  %74 = zext i32 %55 to i64
  %75 = icmp ult i32 %55, 8
  br i1 %75, label %145, label %76

76:                                               ; preds = %73
  %77 = and i64 %74, 4294967288
  %78 = add nsw i64 %77, -8
  %79 = lshr exact i64 %78, 3
  %80 = add nuw nsw i64 %79, 1
  %81 = and i64 %80, 7
  %82 = icmp ult i64 %78, 56
  br i1 %82, label %130, label %83

83:                                               ; preds = %76
  %84 = and i64 %80, 4611686018427387896
  br label %85

85:                                               ; preds = %85, %83
  %86 = phi i64 [ 0, %83 ], [ %127, %85 ]
  %87 = phi i64 [ 0, %83 ], [ %128, %85 ]
  %88 = getelementptr inbounds float, float* %71, i64 %86
  %89 = bitcast float* %88 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %89, align 4, !tbaa !3
  %90 = getelementptr inbounds float, float* %88, i64 4
  %91 = bitcast float* %90 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %91, align 4, !tbaa !3
  %92 = or i64 %86, 8
  %93 = getelementptr inbounds float, float* %71, i64 %92
  %94 = bitcast float* %93 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %94, align 4, !tbaa !3
  %95 = getelementptr inbounds float, float* %93, i64 4
  %96 = bitcast float* %95 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %96, align 4, !tbaa !3
  %97 = or i64 %86, 16
  %98 = getelementptr inbounds float, float* %71, i64 %97
  %99 = bitcast float* %98 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %99, align 4, !tbaa !3
  %100 = getelementptr inbounds float, float* %98, i64 4
  %101 = bitcast float* %100 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %101, align 4, !tbaa !3
  %102 = or i64 %86, 24
  %103 = getelementptr inbounds float, float* %71, i64 %102
  %104 = bitcast float* %103 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %104, align 4, !tbaa !3
  %105 = getelementptr inbounds float, float* %103, i64 4
  %106 = bitcast float* %105 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %106, align 4, !tbaa !3
  %107 = or i64 %86, 32
  %108 = getelementptr inbounds float, float* %71, i64 %107
  %109 = bitcast float* %108 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %109, align 4, !tbaa !3
  %110 = getelementptr inbounds float, float* %108, i64 4
  %111 = bitcast float* %110 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %111, align 4, !tbaa !3
  %112 = or i64 %86, 40
  %113 = getelementptr inbounds float, float* %71, i64 %112
  %114 = bitcast float* %113 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %114, align 4, !tbaa !3
  %115 = getelementptr inbounds float, float* %113, i64 4
  %116 = bitcast float* %115 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %116, align 4, !tbaa !3
  %117 = or i64 %86, 48
  %118 = getelementptr inbounds float, float* %71, i64 %117
  %119 = bitcast float* %118 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %119, align 4, !tbaa !3
  %120 = getelementptr inbounds float, float* %118, i64 4
  %121 = bitcast float* %120 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %121, align 4, !tbaa !3
  %122 = or i64 %86, 56
  %123 = getelementptr inbounds float, float* %71, i64 %122
  %124 = bitcast float* %123 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %124, align 4, !tbaa !3
  %125 = getelementptr inbounds float, float* %123, i64 4
  %126 = bitcast float* %125 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %126, align 4, !tbaa !3
  %127 = add nuw i64 %86, 64
  %128 = add nuw i64 %87, 8
  %129 = icmp eq i64 %128, %84
  br i1 %129, label %130, label %85, !llvm.loop !20

130:                                              ; preds = %85, %76
  %131 = phi i64 [ 0, %76 ], [ %127, %85 ]
  %132 = icmp eq i64 %81, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %130, %133
  %134 = phi i64 [ %140, %133 ], [ %131, %130 ]
  %135 = phi i64 [ %141, %133 ], [ 0, %130 ]
  %136 = getelementptr inbounds float, float* %71, i64 %134
  %137 = bitcast float* %136 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %137, align 4, !tbaa !3
  %138 = getelementptr inbounds float, float* %136, i64 4
  %139 = bitcast float* %138 to <4 x float>*
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %139, align 4, !tbaa !3
  %140 = add nuw i64 %134, 8
  %141 = add i64 %135, 1
  %142 = icmp eq i64 %141, %81
  br i1 %142, label %143, label %133, !llvm.loop !21

143:                                              ; preds = %133, %130
  %144 = icmp eq i64 %77, %74
  br i1 %144, label %152, label %145

145:                                              ; preds = %73, %143
  %146 = phi i64 [ 0, %73 ], [ %77, %143 ]
  br label %147

147:                                              ; preds = %145, %147
  %148 = phi i64 [ %150, %147 ], [ %146, %145 ]
  %149 = getelementptr inbounds float, float* %71, i64 %148
  store float 1.000000e+00, float* %149, align 4, !tbaa !3
  %150 = add nuw nsw i64 %148, 1
  %151 = icmp eq i64 %150, %74
  br i1 %151, label %152, label %147, !llvm.loop !22

152:                                              ; preds = %147, %143, %3
  %153 = load float*, float** %45, align 8, !tbaa !18
  %154 = icmp sgt i32 %65, 0
  br i1 %154, label %155, label %234

155:                                              ; preds = %152
  %156 = zext i32 %65 to i64
  %157 = icmp ult i32 %65, 8
  br i1 %157, label %227, label %158

158:                                              ; preds = %155
  %159 = and i64 %156, 4294967288
  %160 = add nsw i64 %159, -8
  %161 = lshr exact i64 %160, 3
  %162 = add nuw nsw i64 %161, 1
  %163 = and i64 %162, 7
  %164 = icmp ult i64 %160, 56
  br i1 %164, label %212, label %165

165:                                              ; preds = %158
  %166 = and i64 %162, 4611686018427387896
  br label %167

167:                                              ; preds = %167, %165
  %168 = phi i64 [ 0, %165 ], [ %209, %167 ]
  %169 = phi i64 [ 0, %165 ], [ %210, %167 ]
  %170 = getelementptr inbounds float, float* %153, i64 %168
  %171 = bitcast float* %170 to <4 x float>*
  store <4 x float> <float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000>, <4 x float>* %171, align 4, !tbaa !3
  %172 = getelementptr inbounds float, float* %170, i64 4
  %173 = bitcast float* %172 to <4 x float>*
  store <4 x float> <float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000>, <4 x float>* %173, align 4, !tbaa !3
  %174 = or i64 %168, 8
  %175 = getelementptr inbounds float, float* %153, i64 %174
  %176 = bitcast float* %175 to <4 x float>*
  store <4 x float> <float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000>, <4 x float>* %176, align 4, !tbaa !3
  %177 = getelementptr inbounds float, float* %175, i64 4
  %178 = bitcast float* %177 to <4 x float>*
  store <4 x float> <float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000>, <4 x float>* %178, align 4, !tbaa !3
  %179 = or i64 %168, 16
  %180 = getelementptr inbounds float, float* %153, i64 %179
  %181 = bitcast float* %180 to <4 x float>*
  store <4 x float> <float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000>, <4 x float>* %181, align 4, !tbaa !3
  %182 = getelementptr inbounds float, float* %180, i64 4
  %183 = bitcast float* %182 to <4 x float>*
  store <4 x float> <float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000>, <4 x float>* %183, align 4, !tbaa !3
  %184 = or i64 %168, 24
  %185 = getelementptr inbounds float, float* %153, i64 %184
  %186 = bitcast float* %185 to <4 x float>*
  store <4 x float> <float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000>, <4 x float>* %186, align 4, !tbaa !3
  %187 = getelementptr inbounds float, float* %185, i64 4
  %188 = bitcast float* %187 to <4 x float>*
  store <4 x float> <float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000>, <4 x float>* %188, align 4, !tbaa !3
  %189 = or i64 %168, 32
  %190 = getelementptr inbounds float, float* %153, i64 %189
  %191 = bitcast float* %190 to <4 x float>*
  store <4 x float> <float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000>, <4 x float>* %191, align 4, !tbaa !3
  %192 = getelementptr inbounds float, float* %190, i64 4
  %193 = bitcast float* %192 to <4 x float>*
  store <4 x float> <float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000>, <4 x float>* %193, align 4, !tbaa !3
  %194 = or i64 %168, 40
  %195 = getelementptr inbounds float, float* %153, i64 %194
  %196 = bitcast float* %195 to <4 x float>*
  store <4 x float> <float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000>, <4 x float>* %196, align 4, !tbaa !3
  %197 = getelementptr inbounds float, float* %195, i64 4
  %198 = bitcast float* %197 to <4 x float>*
  store <4 x float> <float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000>, <4 x float>* %198, align 4, !tbaa !3
  %199 = or i64 %168, 48
  %200 = getelementptr inbounds float, float* %153, i64 %199
  %201 = bitcast float* %200 to <4 x float>*
  store <4 x float> <float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000>, <4 x float>* %201, align 4, !tbaa !3
  %202 = getelementptr inbounds float, float* %200, i64 4
  %203 = bitcast float* %202 to <4 x float>*
  store <4 x float> <float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000>, <4 x float>* %203, align 4, !tbaa !3
  %204 = or i64 %168, 56
  %205 = getelementptr inbounds float, float* %153, i64 %204
  %206 = bitcast float* %205 to <4 x float>*
  store <4 x float> <float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000>, <4 x float>* %206, align 4, !tbaa !3
  %207 = getelementptr inbounds float, float* %205, i64 4
  %208 = bitcast float* %207 to <4 x float>*
  store <4 x float> <float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000>, <4 x float>* %208, align 4, !tbaa !3
  %209 = add nuw i64 %168, 64
  %210 = add nuw i64 %169, 8
  %211 = icmp eq i64 %210, %166
  br i1 %211, label %212, label %167, !llvm.loop !23

212:                                              ; preds = %167, %158
  %213 = phi i64 [ 0, %158 ], [ %209, %167 ]
  %214 = icmp eq i64 %163, 0
  br i1 %214, label %225, label %215

215:                                              ; preds = %212, %215
  %216 = phi i64 [ %222, %215 ], [ %213, %212 ]
  %217 = phi i64 [ %223, %215 ], [ 0, %212 ]
  %218 = getelementptr inbounds float, float* %153, i64 %216
  %219 = bitcast float* %218 to <4 x float>*
  store <4 x float> <float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000>, <4 x float>* %219, align 4, !tbaa !3
  %220 = getelementptr inbounds float, float* %218, i64 4
  %221 = bitcast float* %220 to <4 x float>*
  store <4 x float> <float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000>, <4 x float>* %221, align 4, !tbaa !3
  %222 = add nuw i64 %216, 8
  %223 = add i64 %217, 1
  %224 = icmp eq i64 %223, %163
  br i1 %224, label %225, label %215, !llvm.loop !24

225:                                              ; preds = %215, %212
  %226 = icmp eq i64 %159, %156
  br i1 %226, label %234, label %227

227:                                              ; preds = %155, %225
  %228 = phi i64 [ 0, %155 ], [ %159, %225 ]
  br label %229

229:                                              ; preds = %227, %229
  %230 = phi i64 [ %232, %229 ], [ %228, %227 ]
  %231 = getelementptr inbounds float, float* %153, i64 %230
  store float 0x3F847AE140000000, float* %231, align 4, !tbaa !3
  %232 = add nuw nsw i64 %230, 1
  %233 = icmp eq i64 %232, %156
  br i1 %233, label %234, label %229, !llvm.loop !25

234:                                              ; preds = %229, %225, %152
  %235 = bitcast float** %46 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %235) #11
  %236 = bitcast float** %47 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %236) #11
  %237 = bitcast float** %48 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %237) #11
  %238 = load i32, i32* %61, align 4, !tbaa !14
  %239 = load i32, i32* %53, align 4, !tbaa !17
  %240 = shl i32 %238, 2
  %241 = mul i32 %240, %239
  %242 = bitcast float** %49 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %242) #11
  %243 = zext i32 %241 to i64
  %244 = bitcast float** %49 to i8**
  %245 = call i32 @hipHostMalloc(i8** nonnull %244, i64 %243, i32 0)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %245, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 82)
  %246 = bitcast float** %46 to i8**
  %247 = call i32 @hipMalloc(i8** nonnull %246, i64 %58)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %247, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 84)
  %248 = bitcast float** %47 to i8**
  %249 = call i32 @hipMalloc(i8** nonnull %248, i64 %68)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %249, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 85)
  %250 = bitcast float** %48 to i8**
  %251 = call i32 @hipMalloc(i8** nonnull %250, i64 %243)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %251, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 86)
  %252 = bitcast %struct.ihipStream_t** %50 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %252) #11
  %253 = call i32 @hipStreamCreate(%struct.ihipStream_t** nonnull %50)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %253, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 89)
  %254 = load i8*, i8** %246, align 8, !tbaa !18
  %255 = load i8*, i8** %59, align 8, !tbaa !18
  %256 = load %struct.ihipStream_t*, %struct.ihipStream_t** %50, align 8, !tbaa !18
  %257 = call i32 @hipMemcpyAsync(i8* %254, i8* %255, i64 %58, i32 1, %struct.ihipStream_t* %256)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %257, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 91)
  %258 = load i8*, i8** %248, align 8, !tbaa !18
  %259 = load i8*, i8** %69, align 8, !tbaa !18
  %260 = load %struct.ihipStream_t*, %struct.ihipStream_t** %50, align 8, !tbaa !18
  %261 = call i32 @hipMemcpyAsync(i8* %258, i8* %259, i64 %68, i32 1, %struct.ihipStream_t* %260)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %261, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 92)
  %262 = load i32, i32* %61, align 4, !tbaa !14
  %263 = udiv i32 %262, %0
  %264 = load i32, i32* %53, align 4, !tbaa !17
  %265 = udiv i32 %264, %0
  %266 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i64 36)
  %267 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !26
  %268 = getelementptr i8, i8* %267, i64 -24
  %269 = bitcast i8* %268 to i64*
  %270 = load i64, i64* %269, align 8
  %271 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %270
  %272 = getelementptr inbounds i8, i8* %271, i64 240
  %273 = bitcast i8* %272 to %"class.std::ctype"**
  %274 = load %"class.std::ctype"*, %"class.std::ctype"** %273, align 8, !tbaa !28
  %275 = icmp eq %"class.std::ctype"* %274, null
  br i1 %275, label %276, label %277

276:                                              ; preds = %234
  call void @_ZSt16__throw_bad_castv() #12
  unreachable

277:                                              ; preds = %234
  %278 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %274, i64 0, i32 8
  %279 = load i8, i8* %278, align 8, !tbaa !31
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %277
  %282 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %274, i64 0, i32 9, i64 10
  %283 = load i8, i8* %282, align 1, !tbaa !33
  br label %290

284:                                              ; preds = %277
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %274)
  %285 = bitcast %"class.std::ctype"* %274 to i8 (%"class.std::ctype"*, i8)***
  %286 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %285, align 8, !tbaa !26
  %287 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %286, i64 6
  %288 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %287, align 8
  %289 = call signext i8 %288(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %274, i8 signext 10)
  br label %290

290:                                              ; preds = %281, %284
  %291 = phi i8 [ %283, %281 ], [ %289, %284 ]
  %292 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %291)
  %293 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %292)
  %294 = icmp eq i32 %0, 16
  %295 = zext i32 %265 to i64
  %296 = shl nuw i64 %295, 32
  %297 = zext i32 %263 to i64
  %298 = or i64 %296, %297
  br i1 %294, label %299, label %342

299:                                              ; preds = %290
  %300 = load %struct.ihipStream_t*, %struct.ihipStream_t** %50, align 8, !tbaa !18
  %301 = call i32 @__hipPushCallConfiguration(i64 %298, i32 1, i64 68719476752, i32 1, i64 0, %struct.ihipStream_t* %300)
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %387

303:                                              ; preds = %299
  %304 = load float*, float** %48, align 8, !tbaa !18
  %305 = load float*, float** %46, align 8, !tbaa !18
  %306 = load float*, float** %47, align 8, !tbaa !18
  %307 = load i32, i32* %51, align 4, !tbaa !14
  %308 = load i32, i32* %61, align 4, !tbaa !14
  %309 = bitcast float** %34 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %309)
  %310 = bitcast float** %35 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %310)
  %311 = bitcast float** %36 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %311)
  %312 = bitcast i32* %37 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %312)
  %313 = bitcast i32* %38 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %313)
  %314 = bitcast %struct.dim3* %39 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %314)
  %315 = bitcast %struct.dim3* %40 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %315)
  %316 = bitcast i64* %41 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %316)
  %317 = bitcast i8** %42 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %317)
  %318 = bitcast [5 x i8*]* %43 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %318)
  store float* %304, float** %34, align 8, !tbaa !18
  store float* %305, float** %35, align 8, !tbaa !18
  store float* %306, float** %36, align 8, !tbaa !18
  store i32 %307, i32* %37, align 4, !tbaa !34
  store i32 %308, i32* %38, align 4, !tbaa !34
  %319 = getelementptr inbounds [5 x i8*], [5 x i8*]* %43, i64 0, i64 0
  %320 = bitcast [5 x i8*]* %43 to float***
  store float** %34, float*** %320, align 16
  %321 = getelementptr inbounds [5 x i8*], [5 x i8*]* %43, i64 0, i64 1
  %322 = bitcast i8** %321 to float***
  store float** %35, float*** %322, align 8
  %323 = getelementptr inbounds [5 x i8*], [5 x i8*]* %43, i64 0, i64 2
  %324 = bitcast i8** %323 to float***
  store float** %36, float*** %324, align 16
  %325 = getelementptr inbounds [5 x i8*], [5 x i8*]* %43, i64 0, i64 3
  %326 = bitcast i8** %325 to i32**
  store i32* %37, i32** %326, align 8
  %327 = getelementptr inbounds [5 x i8*], [5 x i8*]* %43, i64 0, i64 4
  %328 = bitcast i8** %327 to i32**
  store i32* %38, i32** %328, align 16
  %329 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %39, %struct.dim3* nonnull %40, i64* nonnull %41, i8** nonnull %42)
  %330 = load i64, i64* %41, align 8
  %331 = bitcast i8** %42 to %struct.ihipStream_t**
  %332 = load %struct.ihipStream_t*, %struct.ihipStream_t** %331, align 8
  %333 = bitcast %struct.dim3* %39 to i64*
  %334 = load i64, i64* %333, align 8
  %335 = getelementptr inbounds %struct.dim3, %struct.dim3* %39, i64 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = bitcast %struct.dim3* %40 to i64*
  %338 = load i64, i64* %337, align 8
  %339 = getelementptr inbounds %struct.dim3, %struct.dim3* %40, i64 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, float*, i32, i32)** @_Z12MatrixMulHIPILi16EEvPfS0_S0_ii to i8*), i64 %334, i32 %336, i64 %338, i32 %340, i8** nonnull %319, i64 %330, %struct.ihipStream_t* %332)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %309)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %310)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %311)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %312)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %313)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %314)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %315)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %316)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %317)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %318)
  br label %387

342:                                              ; preds = %290
  %343 = zext i32 %0 to i64
  %344 = mul nuw i64 %343, 4294967297
  %345 = load %struct.ihipStream_t*, %struct.ihipStream_t** %50, align 8, !tbaa !18
  %346 = call i32 @__hipPushCallConfiguration(i64 %298, i32 1, i64 %344, i32 1, i64 0, %struct.ihipStream_t* %345)
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %387

348:                                              ; preds = %342
  %349 = load float*, float** %48, align 8, !tbaa !18
  %350 = load float*, float** %46, align 8, !tbaa !18
  %351 = load float*, float** %47, align 8, !tbaa !18
  %352 = load i32, i32* %51, align 4, !tbaa !14
  %353 = load i32, i32* %61, align 4, !tbaa !14
  %354 = bitcast float** %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %354)
  %355 = bitcast float** %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %355)
  %356 = bitcast float** %26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %356)
  %357 = bitcast i32* %27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %357)
  %358 = bitcast i32* %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %358)
  %359 = bitcast %struct.dim3* %29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %359)
  %360 = bitcast %struct.dim3* %30 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %360)
  %361 = bitcast i64* %31 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %361)
  %362 = bitcast i8** %32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %362)
  %363 = bitcast [5 x i8*]* %33 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %363)
  store float* %349, float** %24, align 8, !tbaa !18
  store float* %350, float** %25, align 8, !tbaa !18
  store float* %351, float** %26, align 8, !tbaa !18
  store i32 %352, i32* %27, align 4, !tbaa !34
  store i32 %353, i32* %28, align 4, !tbaa !34
  %364 = getelementptr inbounds [5 x i8*], [5 x i8*]* %33, i64 0, i64 0
  %365 = bitcast [5 x i8*]* %33 to float***
  store float** %24, float*** %365, align 16
  %366 = getelementptr inbounds [5 x i8*], [5 x i8*]* %33, i64 0, i64 1
  %367 = bitcast i8** %366 to float***
  store float** %25, float*** %367, align 8
  %368 = getelementptr inbounds [5 x i8*], [5 x i8*]* %33, i64 0, i64 2
  %369 = bitcast i8** %368 to float***
  store float** %26, float*** %369, align 16
  %370 = getelementptr inbounds [5 x i8*], [5 x i8*]* %33, i64 0, i64 3
  %371 = bitcast i8** %370 to i32**
  store i32* %27, i32** %371, align 8
  %372 = getelementptr inbounds [5 x i8*], [5 x i8*]* %33, i64 0, i64 4
  %373 = bitcast i8** %372 to i32**
  store i32* %28, i32** %373, align 16
  %374 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %29, %struct.dim3* nonnull %30, i64* nonnull %31, i8** nonnull %32)
  %375 = load i64, i64* %31, align 8
  %376 = bitcast i8** %32 to %struct.ihipStream_t**
  %377 = load %struct.ihipStream_t*, %struct.ihipStream_t** %376, align 8
  %378 = bitcast %struct.dim3* %29 to i64*
  %379 = load i64, i64* %378, align 8
  %380 = getelementptr inbounds %struct.dim3, %struct.dim3* %29, i64 0, i32 2
  %381 = load i32, i32* %380, align 8
  %382 = bitcast %struct.dim3* %30 to i64*
  %383 = load i64, i64* %382, align 8
  %384 = getelementptr inbounds %struct.dim3, %struct.dim3* %30, i64 0, i32 2
  %385 = load i32, i32* %384, align 8
  %386 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, float*, i32, i32)** @_Z12MatrixMulHIPILi32EEvPfS0_S0_ii to i8*), i64 %379, i32 %381, i64 %383, i32 %385, i8** nonnull %364, i64 %375, %struct.ihipStream_t* %377)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %354)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %355)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %356)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %357)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %358)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %359)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %360)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %361)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %362)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %363)
  br label %387

387:                                              ; preds = %342, %348, %299, %303
  %388 = load %struct.ihipStream_t*, %struct.ihipStream_t** %50, align 8, !tbaa !18
  %389 = call i32 @hipStreamSynchronize(%struct.ihipStream_t* %388)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %389, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 105)
  %390 = zext i32 %0 to i64
  %391 = mul nuw i64 %390, 4294967297
  %392 = bitcast float** %4 to i8*
  %393 = bitcast float** %5 to i8*
  %394 = bitcast float** %6 to i8*
  %395 = bitcast i32* %7 to i8*
  %396 = bitcast i32* %8 to i8*
  %397 = bitcast %struct.dim3* %9 to i8*
  %398 = bitcast %struct.dim3* %10 to i8*
  %399 = bitcast i64* %11 to i8*
  %400 = bitcast i8** %12 to i8*
  %401 = bitcast [5 x i8*]* %13 to i8*
  %402 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 0
  %403 = bitcast [5 x i8*]* %13 to float***
  %404 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 1
  %405 = bitcast i8** %404 to float***
  %406 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 2
  %407 = bitcast i8** %406 to float***
  %408 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 3
  %409 = bitcast i8** %408 to i32**
  %410 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 4
  %411 = bitcast i8** %410 to i32**
  %412 = bitcast i8** %12 to %struct.ihipStream_t**
  %413 = bitcast %struct.dim3* %9 to i64*
  %414 = getelementptr inbounds %struct.dim3, %struct.dim3* %9, i64 0, i32 2
  %415 = bitcast %struct.dim3* %10 to i64*
  %416 = getelementptr inbounds %struct.dim3, %struct.dim3* %10, i64 0, i32 2
  %417 = bitcast float** %14 to i8*
  %418 = bitcast float** %15 to i8*
  %419 = bitcast float** %16 to i8*
  %420 = bitcast i32* %17 to i8*
  %421 = bitcast i32* %18 to i8*
  %422 = bitcast %struct.dim3* %19 to i8*
  %423 = bitcast %struct.dim3* %20 to i8*
  %424 = bitcast i64* %21 to i8*
  %425 = bitcast i8** %22 to i8*
  %426 = bitcast [5 x i8*]* %23 to i8*
  %427 = getelementptr inbounds [5 x i8*], [5 x i8*]* %23, i64 0, i64 0
  %428 = bitcast [5 x i8*]* %23 to float***
  %429 = getelementptr inbounds [5 x i8*], [5 x i8*]* %23, i64 0, i64 1
  %430 = bitcast i8** %429 to float***
  %431 = getelementptr inbounds [5 x i8*], [5 x i8*]* %23, i64 0, i64 2
  %432 = bitcast i8** %431 to float***
  %433 = getelementptr inbounds [5 x i8*], [5 x i8*]* %23, i64 0, i64 3
  %434 = bitcast i8** %433 to i32**
  %435 = getelementptr inbounds [5 x i8*], [5 x i8*]* %23, i64 0, i64 4
  %436 = bitcast i8** %435 to i32**
  %437 = bitcast i8** %22 to %struct.ihipStream_t**
  %438 = bitcast %struct.dim3* %19 to i64*
  %439 = getelementptr inbounds %struct.dim3, %struct.dim3* %19, i64 0, i32 2
  %440 = bitcast %struct.dim3* %20 to i64*
  %441 = getelementptr inbounds %struct.dim3, %struct.dim3* %20, i64 0, i32 2
  br i1 %294, label %442, label %499

442:                                              ; preds = %387, %461
  %443 = phi i32 [ %462, %461 ], [ 0, %387 ]
  %444 = load %struct.ihipStream_t*, %struct.ihipStream_t** %50, align 8, !tbaa !18
  %445 = call i32 @__hipPushCallConfiguration(i64 %298, i32 1, i64 %391, i32 1, i64 0, %struct.ihipStream_t* %444)
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %461

447:                                              ; preds = %442
  %448 = load float*, float** %48, align 8, !tbaa !18
  %449 = load float*, float** %46, align 8, !tbaa !18
  %450 = load float*, float** %47, align 8, !tbaa !18
  %451 = load i32, i32* %51, align 4, !tbaa !14
  %452 = load i32, i32* %61, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %417)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %418)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %419)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %420)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %421)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %422)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %423)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %424)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %425)
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %426)
  store float* %448, float** %14, align 8, !tbaa !18
  store float* %449, float** %15, align 8, !tbaa !18
  store float* %450, float** %16, align 8, !tbaa !18
  store i32 %451, i32* %17, align 4, !tbaa !34
  store i32 %452, i32* %18, align 4, !tbaa !34
  store float** %14, float*** %428, align 16
  store float** %15, float*** %430, align 8
  store float** %16, float*** %432, align 16
  store i32* %17, i32** %434, align 8
  store i32* %18, i32** %436, align 16
  %453 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %19, %struct.dim3* nonnull %20, i64* nonnull %21, i8** nonnull %22)
  %454 = load i64, i64* %21, align 8
  %455 = load %struct.ihipStream_t*, %struct.ihipStream_t** %437, align 8
  %456 = load i64, i64* %438, align 8
  %457 = load i32, i32* %439, align 8
  %458 = load i64, i64* %440, align 8
  %459 = load i32, i32* %441, align 8
  %460 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, float*, i32, i32)** @_Z12MatrixMulHIPILi16EEvPfS0_S0_ii to i8*), i64 %456, i32 %457, i64 %458, i32 %459, i8** nonnull %427, i64 %454, %struct.ihipStream_t* %455)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %417)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %418)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %419)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %420)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %421)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %422)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %423)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %424)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %425)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %426)
  br label %461

461:                                              ; preds = %447, %442
  %462 = add nuw nsw i32 %443, 1
  %463 = icmp eq i32 %462, 300
  br i1 %463, label %464, label %442, !llvm.loop !35

464:                                              ; preds = %518, %461
  %465 = load i32, i32* %51, align 4, !tbaa !14
  %466 = uitofp i32 %465 to double
  %467 = fmul contract double %466, 2.000000e+00
  %468 = load i32, i32* %53, align 4, !tbaa !17
  %469 = uitofp i32 %468 to double
  %470 = fmul contract double %467, %469
  %471 = load i32, i32* %61, align 4, !tbaa !14
  %472 = uitofp i32 %471 to double
  %473 = fmul contract double %470, %472
  %474 = fmul contract double %473, 0x3E112E0BE0000000
  %475 = fdiv contract double %474, 0.000000e+00
  %476 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i64 13)
  %477 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, double %475)
  %478 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %477, i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i64 9)
  %479 = load i8*, i8** %244, align 8, !tbaa !18
  %480 = load i8*, i8** %250, align 8, !tbaa !18
  %481 = load %struct.ihipStream_t*, %struct.ihipStream_t** %50, align 8, !tbaa !18
  %482 = call i32 @hipMemcpyAsync(i8* %479, i8* %480, i64 %243, i32 2, %struct.ihipStream_t* %481)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %482, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 125)
  %483 = load %struct.ihipStream_t*, %struct.ihipStream_t** %50, align 8, !tbaa !18
  %484 = call i32 @hipStreamSynchronize(%struct.ihipStream_t* %483)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %484, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 126)
  %485 = load i8*, i8** %59, align 8, !tbaa !18
  %486 = call i32 @hipHostFree(i8* %485)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %486, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 128)
  %487 = load i8*, i8** %69, align 8, !tbaa !18
  %488 = call i32 @hipHostFree(i8* %487)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %488, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 129)
  %489 = load i8*, i8** %244, align 8, !tbaa !18
  %490 = call i32 @hipHostFree(i8* %489)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %490, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 130)
  %491 = load i8*, i8** %246, align 8, !tbaa !18
  %492 = call i32 @hipFree(i8* %491)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %492, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 131)
  %493 = load i8*, i8** %248, align 8, !tbaa !18
  %494 = call i32 @hipFree(i8* %493)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %494, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 132)
  %495 = load i8*, i8** %250, align 8, !tbaa !18
  %496 = call i32 @hipFree(i8* %495)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %496, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 133)
  %497 = load %struct.ihipStream_t*, %struct.ihipStream_t** %50, align 8, !tbaa !18
  %498 = call i32 @hipStreamDestroy(%struct.ihipStream_t* %497)
  call void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %498, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 134)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %252) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %242) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %237) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %236) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %235) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %57) #11
  ret i32 0

499:                                              ; preds = %387, %518
  %500 = phi i32 [ %519, %518 ], [ 0, %387 ]
  %501 = load %struct.ihipStream_t*, %struct.ihipStream_t** %50, align 8, !tbaa !18
  %502 = call i32 @__hipPushCallConfiguration(i64 %298, i32 1, i64 %391, i32 1, i64 0, %struct.ihipStream_t* %501)
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %504, label %518

504:                                              ; preds = %499
  %505 = load float*, float** %48, align 8, !tbaa !18
  %506 = load float*, float** %46, align 8, !tbaa !18
  %507 = load float*, float** %47, align 8, !tbaa !18
  %508 = load i32, i32* %51, align 4, !tbaa !14
  %509 = load i32, i32* %61, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %392)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %393)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %394)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %395)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %396)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %397)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %398)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %399)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %400)
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %401)
  store float* %505, float** %4, align 8, !tbaa !18
  store float* %506, float** %5, align 8, !tbaa !18
  store float* %507, float** %6, align 8, !tbaa !18
  store i32 %508, i32* %7, align 4, !tbaa !34
  store i32 %509, i32* %8, align 4, !tbaa !34
  store float** %4, float*** %403, align 16
  store float** %5, float*** %405, align 8
  store float** %6, float*** %407, align 16
  store i32* %7, i32** %409, align 8
  store i32* %8, i32** %411, align 16
  %510 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %9, %struct.dim3* nonnull %10, i64* nonnull %11, i8** nonnull %12)
  %511 = load i64, i64* %11, align 8
  %512 = load %struct.ihipStream_t*, %struct.ihipStream_t** %412, align 8
  %513 = load i64, i64* %413, align 8
  %514 = load i32, i32* %414, align 8
  %515 = load i64, i64* %415, align 8
  %516 = load i32, i32* %416, align 8
  %517 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, float*, i32, i32)** @_Z12MatrixMulHIPILi32EEvPfS0_S0_ii to i8*), i64 %513, i32 %514, i64 %515, i32 %516, i8** nonnull %402, i64 %511, %struct.ihipStream_t* %512)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %392)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %393)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %394)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %395)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %396)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %397)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %398)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %399)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %400)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %401)
  br label %518

518:                                              ; preds = %504, %499
  %519 = add nuw nsw i32 %500, 1
  %520 = icmp eq i32 %519, 300
  br i1 %520, label %464, label %499, !llvm.loop !35
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z5checkI10hipError_tEvT_PKcS3_i(i32 %0, i8* %1, i8* %2, i32 %3) local_unnamed_addr #6 comdat {
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0))
  %8 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %7, i8* %2)
  %9 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0))
  %10 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %9, i32 %3)
  %11 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %10)
  %12 = tail call i8* @hipGetErrorString(i32 %0)
  %13 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* %12)
  %14 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0))
  %15 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %14, i8* %1)
  %16 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %15)
  tail call void @exit(i32 1) #13
  unreachable

17:                                               ; preds = %4
  ret void
}

declare dso_local i32 @hipMalloc(i8**, i64) local_unnamed_addr #0

declare dso_local i32 @hipStreamCreate(%struct.ihipStream_t**) local_unnamed_addr #0

declare dso_local i32 @hipMemcpyAsync(i8*, i8*, i64, i32, %struct.ihipStream_t*) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #0

; Function Attrs: norecurse uwtable
define linkonce_odr dso_local void @_Z27__device_stub__MatrixMulHIPILi16EEvPfS0_S0_ii(float* %0, float* %1, float* %2, i32 %3, i32 %4) #8 comdat {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store float* %0, float** %6, align 8, !tbaa !18
  store float* %1, float** %7, align 8, !tbaa !18
  store float* %2, float** %8, align 8, !tbaa !18
  store i32 %3, i32* %9, align 4, !tbaa !34
  store i32 %4, i32* %10, align 4, !tbaa !34
  %15 = alloca [5 x i8*], align 16
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 0
  %17 = bitcast [5 x i8*]* %15 to float***
  store float** %6, float*** %17, align 16
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 1
  %19 = bitcast i8** %18 to float***
  store float** %7, float*** %19, align 8
  %20 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 2
  %21 = bitcast i8** %20 to float***
  store float** %8, float*** %21, align 16
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 3
  %23 = bitcast i8** %22 to i32**
  store i32* %9, i32** %23, align 8
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 4
  %25 = bitcast i8** %24 to i32**
  store i32* %10, i32** %25, align 16
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
  %38 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, float*, i32, i32)** @_Z12MatrixMulHIPILi16EEvPfS0_S0_ii to i8*), i64 %31, i32 %33, i64 %35, i32 %37, i8** nonnull %16, i64 %27, %struct.ihipStream_t* %29)
  ret void
}

; Function Attrs: norecurse uwtable
define linkonce_odr dso_local void @_Z27__device_stub__MatrixMulHIPILi32EEvPfS0_S0_ii(float* %0, float* %1, float* %2, i32 %3, i32 %4) #8 comdat {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store float* %0, float** %6, align 8, !tbaa !18
  store float* %1, float** %7, align 8, !tbaa !18
  store float* %2, float** %8, align 8, !tbaa !18
  store i32 %3, i32* %9, align 4, !tbaa !34
  store i32 %4, i32* %10, align 4, !tbaa !34
  %15 = alloca [5 x i8*], align 16
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 0
  %17 = bitcast [5 x i8*]* %15 to float***
  store float** %6, float*** %17, align 16
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 1
  %19 = bitcast i8** %18 to float***
  store float** %7, float*** %19, align 8
  %20 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 2
  %21 = bitcast i8** %20 to float***
  store float** %8, float*** %21, align 16
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 3
  %23 = bitcast i8** %22 to i32**
  store i32* %9, i32** %23, align 8
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 4
  %25 = bitcast i8** %24 to i32**
  store i32* %10, i32** %25, align 16
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
  %38 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, float*, float*, i32, i32)** @_Z12MatrixMulHIPILi32EEvPfS0_S0_ii to i8*), i64 %31, i32 %33, i64 %35, i32 %37, i8** nonnull %16, i64 %27, %struct.ihipStream_t* %29)
  ret void
}

declare dso_local i32 @hipStreamSynchronize(%struct.ihipStream_t*) local_unnamed_addr #0

declare dso_local i32 @hipHostFree(i8*) local_unnamed_addr #0

declare dso_local i32 @hipFree(i8*) local_unnamed_addr #0

declare dso_local i32 @hipStreamDestroy(%struct.ihipStream_t*) local_unnamed_addr #0

; Function Attrs: norecurse uwtable
define dso_local i32 @main() local_unnamed_addr #8 {
  %1 = alloca %struct.dim3, align 4
  %2 = alloca %struct.dim3, align 4
  %3 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i64 0, i64 0), i64 41)
  %4 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !26
  %5 = getelementptr i8, i8* %4, i64 -24
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %7
  %9 = getelementptr inbounds i8, i8* %8, i64 240
  %10 = bitcast i8* %9 to %"class.std::ctype"**
  %11 = load %"class.std::ctype"*, %"class.std::ctype"** %10, align 8, !tbaa !28
  %12 = icmp eq %"class.std::ctype"* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  tail call void @_ZSt16__throw_bad_castv() #12
  unreachable

14:                                               ; preds = %0
  %15 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %11, i64 0, i32 8
  %16 = load i8, i8* %15, align 8, !tbaa !31
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %11, i64 0, i32 9, i64 10
  %20 = load i8, i8* %19, align 1, !tbaa !33
  br label %27

21:                                               ; preds = %14
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %11)
  %22 = bitcast %"class.std::ctype"* %11 to i8 (%"class.std::ctype"*, i8)***
  %23 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %22, align 8, !tbaa !26
  %24 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %23, i64 6
  %25 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %24, align 8
  %26 = tail call signext i8 %25(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %11, i8 signext 10)
  br label %27

27:                                               ; preds = %18, %21
  %28 = phi i8 [ %20, %18 ], [ %26, %21 ]
  %29 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %28)
  %30 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %29)
  %31 = bitcast %struct.dim3* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %31) #11
  %32 = getelementptr inbounds %struct.dim3, %struct.dim3* %1, i64 0, i32 0
  store i32 320, i32* %32, align 4, !tbaa !14
  %33 = getelementptr inbounds %struct.dim3, %struct.dim3* %1, i64 0, i32 1
  store i32 320, i32* %33, align 4, !tbaa !17
  %34 = getelementptr inbounds %struct.dim3, %struct.dim3* %1, i64 0, i32 2
  store i32 1, i32* %34, align 4, !tbaa !36
  %35 = bitcast %struct.dim3* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %35) #11
  %36 = getelementptr inbounds %struct.dim3, %struct.dim3* %2, i64 0, i32 0
  store i32 640, i32* %36, align 4, !tbaa !14
  %37 = getelementptr inbounds %struct.dim3, %struct.dim3* %2, i64 0, i32 1
  store i32 320, i32* %37, align 4, !tbaa !17
  %38 = getelementptr inbounds %struct.dim3, %struct.dim3* %2, i64 0, i32 2
  store i32 1, i32* %38, align 4, !tbaa !36
  %39 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i64 8)
  %40 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 320)
  %41 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %40, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i64 1)
  %42 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %40, i64 320)
  %43 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %42, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i64 11)
  %44 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %42, i64 640)
  %45 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %44, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i64 1)
  %46 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %44, i64 320)
  %47 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %46, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i64 2)
  %48 = call i32 @_Z14MatrixMultiplyiRK4dim3S1_(i32 32, %struct.dim3* nonnull align 4 dereferenceable(12) %1, %struct.dim3* nonnull align 4 dereferenceable(12) %2)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %35) #11
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %31) #11
  ret i32 0
}

declare dso_local i32 @hipHostMalloc(i8**, i64, i32) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i32) local_unnamed_addr #0

declare dso_local i8* @hipGetErrorString(i32) local_unnamed_addr #0

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #9

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8 signext) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: noreturn
declare dso_local void @_ZSt16__throw_bad_castv() local_unnamed_addr #10

declare dso_local void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570)) local_unnamed_addr #0

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), double) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_matrixMul.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #11
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
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (float*, float*, float*, i32, i32)** @_Z12MatrixMulHIPILi16EEvPfS0_S0_ii to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %9 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (float*, float*, float*, i32, i32)** @_Z12MatrixMulHIPILi32EEvPfS0_S0_ii to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git bdeeab053a8bf72a56bdf54d056a43ecb9dc2748)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"float", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = distinct !{!7, !8, !9}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !8, !13, !9}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!15, !16, i64 0}
!15 = !{!"_ZTS4dim3", !16, i64 0, !16, i64 4, !16, i64 8}
!16 = !{!"int", !5, i64 0}
!17 = !{!15, !16, i64 4}
!18 = !{!19, !19, i64 0}
!19 = !{!"any pointer", !5, i64 0}
!20 = distinct !{!20, !8, !9}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !8, !13, !9}
!23 = distinct !{!23, !8, !9}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !8, !13, !9}
!26 = !{!27, !27, i64 0}
!27 = !{!"vtable pointer", !6, i64 0}
!28 = !{!29, !19, i64 240}
!29 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !19, i64 216, !5, i64 224, !30, i64 225, !19, i64 232, !19, i64 240, !19, i64 248, !19, i64 256}
!30 = !{!"bool", !5, i64 0}
!31 = !{!32, !5, i64 56}
!32 = !{!"_ZTSSt5ctypeIcE", !19, i64 16, !30, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!33 = !{!5, !5, i64 0}
!34 = !{!16, !16, i64 0}
!35 = distinct !{!35, !8}
!36 = !{!15, !16, i64 8}
