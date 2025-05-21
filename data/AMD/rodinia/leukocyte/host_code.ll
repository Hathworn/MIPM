; ModuleID = 'find_ellipse_kernel.cu'
source_filename = "find_ellipse_kernel.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.texture = type { %struct.textureReference }
%struct.textureReference = type { i32, i32, i32, [3 x i32], %struct.hipChannelFormatDesc, i32, i32, i32, float, float, float, %struct.__hip_texture*, i32, i32 }
%struct.hipChannelFormatDesc = type { i32, i32, i32, i32, i32 }
%struct.__hip_texture = type opaque
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque
%struct.hipDeviceProp_t = type { [256 x i8], i64, i64, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.hipDeviceArch_t, i32, i32, i32, i32, i64, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32*, i32*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hipDeviceArch_t = type { i32 }

$_ZN7textureIfLi1EL18hipTextureReadMode0EEC2Ei20hipTextureFilterMode21hipTextureAddressMode = comdat any

$_ZN4dim3C2Ejjj = comdat any

$__hip_gpubin_handle = comdat any

@device_gicov = dso_local global float* null, align 8
@t_grad_x = internal global %struct.texture zeroinitializer, align 8
@t_grad_y = internal global %struct.texture zeroinitializer, align 8
@_Z12GICOV_kerneliPfS_S_PiS0_ = constant void (i32, float*, float*, float*, i32*, i32*)* @_Z27__device_stub__GICOV_kerneliPfS_S_PiS0_, align 8
@.str = private unnamed_addr constant [24 x i8] c"GICOV kernel error: %s\0A\00", align 1
@t_img = internal global %struct.texture zeroinitializer, align 8
@_Z13dilate_kerneliiiiPfS_ = constant void (i32, i32, i32, i32, float*, float*)* @_Z28__device_stub__dilate_kerneliiiiPfS_, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Dilation kernel error: %s\0A\00", align 1
@0 = private unnamed_addr constant [29 x i8] c"_Z12GICOV_kerneliPfS_S_PiS0_\00", align 1
@1 = private unnamed_addr constant [26 x i8] c"_Z13dilate_kerneliiiiPfS_\00", align 1
@2 = private unnamed_addr constant [9 x i8] c"t_grad_x\00", align 1
@3 = private unnamed_addr constant [9 x i8] c"t_grad_y\00", align 1
@4 = private unnamed_addr constant [6 x i8] c"t_img\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_find_ellipse_kernel.cu, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZN7textureIfLi1EL18hipTextureReadMode0EEC2Ei20hipTextureFilterMode21hipTextureAddressMode(%struct.texture* noundef nonnull align 8 dereferenceable(88) @t_grad_x, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN7textureIfLi1EL18hipTextureReadMode0EEC2Ei20hipTextureFilterMode21hipTextureAddressMode(%struct.texture* noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 comdat align 2 {
  %5 = alloca %struct.texture*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hipChannelFormatDesc, align 4
  store %struct.texture* %0, %struct.texture** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.texture*, %struct.texture** %5, align 8
  %11 = bitcast %struct.texture* %10 to %struct.textureReference*
  %12 = load i32, i32* %6, align 4
  %13 = bitcast %struct.texture* %10 to %struct.textureReference*
  %14 = getelementptr inbounds %struct.textureReference, %struct.textureReference* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = bitcast %struct.texture* %10 to %struct.textureReference*
  %16 = getelementptr inbounds %struct.textureReference, %struct.textureReference* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  %18 = bitcast %struct.texture* %10 to %struct.textureReference*
  %19 = getelementptr inbounds %struct.textureReference, %struct.textureReference* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %8, align 4
  %21 = bitcast %struct.texture* %10 to %struct.textureReference*
  %22 = getelementptr inbounds %struct.textureReference, %struct.textureReference* %21, i32 0, i32 3
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = bitcast %struct.texture* %10 to %struct.textureReference*
  %26 = getelementptr inbounds %struct.textureReference, %struct.textureReference* %25, i32 0, i32 3
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %26, i64 0, i64 1
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = bitcast %struct.texture* %10 to %struct.textureReference*
  %30 = getelementptr inbounds %struct.textureReference, %struct.textureReference* %29, i32 0, i32 3
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %30, i64 0, i64 2
  store i32 %28, i32* %31, align 4
  call void @_ZL20hipCreateChannelDescIfE20hipChannelFormatDescv(%struct.hipChannelFormatDesc* sret(%struct.hipChannelFormatDesc) align 4 %9)
  %32 = bitcast %struct.texture* %10 to %struct.textureReference*
  %33 = getelementptr inbounds %struct.textureReference, %struct.textureReference* %32, i32 0, i32 4
  %34 = bitcast %struct.hipChannelFormatDesc* %33 to i8*
  %35 = bitcast %struct.hipChannelFormatDesc* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 4 %35, i64 20, i1 false)
  %36 = bitcast %struct.texture* %10 to %struct.textureReference*
  %37 = getelementptr inbounds %struct.textureReference, %struct.textureReference* %36, i32 0, i32 5
  store i32 0, i32* %37, align 4
  %38 = bitcast %struct.texture* %10 to %struct.textureReference*
  %39 = getelementptr inbounds %struct.textureReference, %struct.textureReference* %38, i32 0, i32 11
  store %struct.__hip_texture* null, %struct.__hip_texture** %39, align 8
  %40 = bitcast %struct.texture* %10 to %struct.textureReference*
  %41 = getelementptr inbounds %struct.textureReference, %struct.textureReference* %40, i32 0, i32 6
  store i32 0, i32* %41, align 8
  %42 = bitcast %struct.texture* %10 to %struct.textureReference*
  %43 = getelementptr inbounds %struct.textureReference, %struct.textureReference* %42, i32 0, i32 8
  store float 0.000000e+00, float* %43, align 8
  %44 = bitcast %struct.texture* %10 to %struct.textureReference*
  %45 = getelementptr inbounds %struct.textureReference, %struct.textureReference* %44, i32 0, i32 9
  store float 0.000000e+00, float* %45, align 4
  %46 = bitcast %struct.texture* %10 to %struct.textureReference*
  %47 = getelementptr inbounds %struct.textureReference, %struct.textureReference* %46, i32 0, i32 10
  store float 0.000000e+00, float* %47, align 8
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.1() #0 section ".text.startup" {
  call void @_ZN7textureIfLi1EL18hipTextureReadMode0EEC2Ei20hipTextureFilterMode21hipTextureAddressMode(%struct.texture* noundef nonnull align 8 dereferenceable(88) @t_grad_y, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z27__device_stub__GICOV_kerneliPfS_S_PiS0_(i32 noundef %0, float* noundef %1, float* noundef %2, float* noundef %3, i32* noundef %4, i32* noundef %5) #2 {
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.dim3, align 8
  %14 = alloca %struct.dim3, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca { i64, i32 }, align 8
  %18 = alloca { i64, i32 }, align 8
  store i32 %0, i32* %7, align 4
  store float* %1, float** %8, align 8
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = alloca i8*, i64 6, align 16
  %20 = bitcast i32* %7 to i8*
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
  %28 = bitcast i32** %11 to i8*
  %29 = getelementptr i8*, i8** %19, i32 4
  store i8* %28, i8** %29, align 8
  %30 = bitcast i32** %12 to i8*
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
  %48 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i32, float*, float*, float*, i32*, i32*)** @_Z12GICOV_kerneliPfS_S_PiS0_ to i8*), i64 %38, i32 %40, i64 %44, i32 %46, i8** noundef %19, i64 noundef %33, %struct.ihipStream_t* noundef %47)
  br label %49

49:                                               ; preds = %6
  ret void
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z22compute_copy_constantsPfS_PiS0_(float* noundef %0, float* noundef %1, i32* noundef %2, i32* noundef %3) #4 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [150 x float], align 16
  %12 = alloca [150 x float], align 16
  %13 = alloca [150 x float], align 16
  %14 = alloca [1050 x i32], align 16
  %15 = alloca [1050 x i32], align 16
  %16 = alloca double, align 8
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %50, %4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 150
  br i1 %19, label %20, label %53

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  %22 = sitofp i32 %21 to double
  %23 = fmul contract double %22, 2.000000e+00
  %24 = fmul contract double %23, 3.141590e+00
  %25 = fdiv contract double %24, 1.500000e+02
  %26 = fptrunc double %25 to float
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [150 x float], [150 x float]* %13, i64 0, i64 %28
  store float %26, float* %29, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [150 x float], [150 x float]* %13, i64 0, i64 %31
  %33 = load float, float* %32, align 4
  %34 = fpext float %33 to double
  %35 = call contract double @sin(double noundef %34) #11
  %36 = fptrunc double %35 to float
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [150 x float], [150 x float]* %11, i64 0, i64 %38
  store float %36, float* %39, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [150 x float], [150 x float]* %13, i64 0, i64 %41
  %43 = load float, float* %42, align 4
  %44 = fpext float %43 to double
  %45 = call contract double @cos(double noundef %44) #11
  %46 = fptrunc double %45 to float
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [150 x float], [150 x float]* %12, i64 0, i64 %48
  store float %46, float* %49, align 4
  br label %50

50:                                               ; preds = %20
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %17, !llvm.loop !6

53:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %100, %53
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 7
  br i1 %56, label %57, label %103

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  %59 = mul nsw i32 2, %58
  %60 = add nsw i32 8, %59
  %61 = sitofp i32 %60 to double
  store double %61, double* %16, align 8
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %96, %57
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 150
  br i1 %64, label %65, label %99

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [150 x float], [150 x float]* %13, i64 0, i64 %67
  %69 = load float, float* %68, align 4
  %70 = fpext float %69 to double
  %71 = call contract double @cos(double noundef %70) #11
  %72 = load double, double* %16, align 8
  %73 = fmul contract double %71, %72
  %74 = fptosi double %73 to i32
  %75 = load i32, i32* %10, align 4
  %76 = mul nsw i32 %75, 150
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [1050 x i32], [1050 x i32]* %14, i64 0, i64 %79
  store i32 %74, i32* %80, align 4
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [150 x float], [150 x float]* %13, i64 0, i64 %82
  %84 = load float, float* %83, align 4
  %85 = fpext float %84 to double
  %86 = call contract double @sin(double noundef %85) #11
  %87 = load double, double* %16, align 8
  %88 = fmul contract double %86, %87
  %89 = fptosi double %88 to i32
  %90 = load i32, i32* %10, align 4
  %91 = mul nsw i32 %90, 150
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [1050 x i32], [1050 x i32]* %15, i64 0, i64 %94
  store i32 %89, i32* %95, align 4
  br label %96

96:                                               ; preds = %65
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %62, !llvm.loop !8

99:                                               ; preds = %62
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %54, !llvm.loop !9

103:                                              ; preds = %54
  %104 = load float*, float** %5, align 8
  %105 = bitcast float* %104 to i8*
  %106 = getelementptr inbounds [150 x float], [150 x float]* %11, i64 0, i64 0
  %107 = bitcast float* %106 to i8*
  %108 = call i32 @hipMemcpy(i8* noundef %105, i8* noundef %107, i64 noundef 600, i32 noundef 1)
  %109 = load float*, float** %6, align 8
  %110 = bitcast float* %109 to i8*
  %111 = getelementptr inbounds [150 x float], [150 x float]* %12, i64 0, i64 0
  %112 = bitcast float* %111 to i8*
  %113 = call i32 @hipMemcpy(i8* noundef %110, i8* noundef %112, i64 noundef 600, i32 noundef 1)
  %114 = load i32*, i32** %7, align 8
  %115 = bitcast i32* %114 to i8*
  %116 = getelementptr inbounds [1050 x i32], [1050 x i32]* %14, i64 0, i64 0
  %117 = bitcast i32* %116 to i8*
  %118 = call i32 @hipMemcpy(i8* noundef %115, i8* noundef %117, i64 noundef 4200, i32 noundef 1)
  %119 = load i32*, i32** %8, align 8
  %120 = bitcast i32* %119 to i8*
  %121 = getelementptr inbounds [1050 x i32], [1050 x i32]* %15, i64 0, i64 0
  %122 = bitcast i32* %121 to i8*
  %123 = call i32 @hipMemcpy(i8* noundef %120, i8* noundef %122, i64 noundef 4200, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind
declare double @sin(double noundef) #5

; Function Attrs: nounwind
declare double @cos(double noundef) #5

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #6

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local float* @GICOV_CUDA(i32 noundef %0, i32 noundef %1, float* noundef %2, float* noundef %3) #4 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.dim3, align 4
  %20 = alloca %struct.dim3, align 4
  %21 = alloca { i64, i32 }, align 4
  %22 = alloca { i64, i32 }, align 4
  %23 = alloca i32, align 4
  %24 = alloca float*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  store i32 22, i32* %9, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %27, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %14, align 4
  %32 = bitcast float** %15 to i8**
  %33 = load i32, i32* %14, align 4
  %34 = zext i32 %33 to i64
  %35 = call i32 @hipMalloc(i8** noundef %32, i64 noundef %34)
  %36 = bitcast float** %16 to i8**
  %37 = load i32, i32* %14, align 4
  %38 = zext i32 %37 to i64
  %39 = call i32 @hipMalloc(i8** noundef %36, i64 noundef %38)
  %40 = bitcast float** %10 to i8**
  %41 = call i32 @hipMalloc(i8** noundef %40, i64 noundef 600)
  %42 = bitcast float** %11 to i8**
  %43 = call i32 @hipMalloc(i8** noundef %42, i64 noundef 600)
  %44 = bitcast i32** %12 to i8**
  %45 = call i32 @hipMalloc(i8** noundef %44, i64 noundef 4200)
  %46 = bitcast i32** %13 to i8**
  %47 = call i32 @hipMalloc(i8** noundef %46, i64 noundef 4200)
  %48 = load float*, float** %10, align 8
  %49 = load float*, float** %11, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = load i32*, i32** %13, align 8
  call void @_Z22compute_copy_constantsPfS_PiS0_(float* noundef %48, float* noundef %49, i32* noundef %50, i32* noundef %51)
  %52 = load float*, float** %15, align 8
  %53 = bitcast float* %52 to i8*
  %54 = load float*, float** %7, align 8
  %55 = bitcast float* %54 to i8*
  %56 = load i32, i32* %14, align 4
  %57 = zext i32 %56 to i64
  %58 = call i32 @hipMemcpy(i8* noundef %53, i8* noundef %55, i64 noundef %57, i32 noundef 1)
  %59 = load float*, float** %16, align 8
  %60 = bitcast float* %59 to i8*
  %61 = load float*, float** %8, align 8
  %62 = bitcast float* %61 to i8*
  %63 = load i32, i32* %14, align 4
  %64 = zext i32 %63 to i64
  %65 = call i32 @hipMemcpy(i8* noundef %60, i8* noundef %62, i64 noundef %64, i32 noundef 1)
  %66 = load float*, float** %15, align 8
  %67 = bitcast float* %66 to i8*
  %68 = load i32, i32* %14, align 4
  %69 = zext i32 %68 to i64
  %70 = call noundef i32 @_ZL14hipBindTextureIfLi1EL18hipTextureReadMode0EE10hipError_tPmRK7textureIT_XT0_EXT1_EEPKvm(i64* noundef null, %struct.texture* noundef nonnull align 8 dereferenceable(88) @t_grad_x, i8* noundef %67, i64 noundef %69)
  %71 = load float*, float** %16, align 8
  %72 = bitcast float* %71 to i8*
  %73 = load i32, i32* %14, align 4
  %74 = zext i32 %73 to i64
  %75 = call noundef i32 @_ZL14hipBindTextureIfLi1EL18hipTextureReadMode0EE10hipError_tPmRK7textureIT_XT0_EXT1_EEPKvm(i64* noundef null, %struct.texture* noundef nonnull align 8 dereferenceable(88) @t_grad_y, i8* noundef %72, i64 noundef %74)
  %76 = load i32, i32* %14, align 4
  %77 = zext i32 %76 to i64
  %78 = call i32 @hipMalloc(i8** noundef bitcast (float** @device_gicov to i8**), i64 noundef %77)
  %79 = load float*, float** @device_gicov, align 8
  %80 = bitcast float* %79 to i8*
  %81 = load i32, i32* %14, align 4
  %82 = zext i32 %81 to i64
  %83 = call i32 @hipMemset(i8* noundef %80, i32 noundef 0, i64 noundef %82)
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %9, align 4
  %86 = mul nsw i32 2, %85
  %87 = sub nsw i32 %84, %86
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %9, align 4
  %90 = mul nsw i32 2, %89
  %91 = sub nsw i32 %88, %90
  store i32 %91, i32* %18, align 4
  br label %92

92:                                               ; preds = %4
  %93 = load i32, i32* %17, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %19, i32 noundef %93, i32 noundef 1, i32 noundef 1)
  %94 = load i32, i32* %18, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %20, i32 noundef %94, i32 noundef 1, i32 noundef 1)
  %95 = bitcast { i64, i32 }* %21 to i8*
  %96 = bitcast %struct.dim3* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 4 %96, i64 12, i1 false)
  %97 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 0
  %98 = load i64, i64* %97, align 4
  %99 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = bitcast { i64, i32 }* %22 to i8*
  %102 = bitcast %struct.dim3* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %101, i8* align 4 %102, i64 12, i1 false)
  %103 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 0
  %104 = load i64, i64* %103, align 4
  %105 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @__hipPushCallConfiguration(i64 %98, i32 %100, i64 %104, i32 %106, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %92
  %110 = load i32, i32* %5, align 4
  %111 = load float*, float** @device_gicov, align 8
  %112 = load float*, float** %10, align 8
  %113 = load float*, float** %11, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = load i32*, i32** %13, align 8
  call void @_Z27__device_stub__GICOV_kerneliPfS_S_PiS0_(i32 noundef %110, float* noundef %111, float* noundef %112, float* noundef %113, i32* noundef %114, i32* noundef %115)
  br label %116

116:                                              ; preds = %109, %92
  br label %117

117:                                              ; preds = %116
  %118 = call i32 @hipDeviceSynchronize()
  %119 = call i32 @hipGetLastError()
  store i32 %119, i32* %23, align 4
  %120 = load i32, i32* %23, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i32, i32* %23, align 4
  %124 = call i8* @hipGetErrorString(i32 noundef %123)
  %125 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* noundef %124)
  call void @exit(i32 noundef 1) #12
  unreachable

126:                                              ; preds = %117
  %127 = load i32, i32* %14, align 4
  %128 = zext i32 %127 to i64
  %129 = call noalias i8* @malloc(i64 noundef %128) #13
  %130 = bitcast i8* %129 to float*
  store float* %130, float** %24, align 8
  %131 = load float*, float** %24, align 8
  %132 = bitcast float* %131 to i8*
  %133 = load float*, float** @device_gicov, align 8
  %134 = bitcast float* %133 to i8*
  %135 = load i32, i32* %14, align 4
  %136 = zext i32 %135 to i64
  %137 = call i32 @hipMemcpy(i8* noundef %132, i8* noundef %134, i64 noundef %136, i32 noundef 2)
  %138 = call i32 @hipUnbindTexture(%struct.textureReference* noundef getelementptr inbounds (%struct.texture, %struct.texture* @t_grad_x, i32 0, i32 0))
  %139 = call i32 @hipUnbindTexture(%struct.textureReference* noundef getelementptr inbounds (%struct.texture, %struct.texture* @t_grad_y, i32 0, i32 0))
  %140 = load float*, float** %15, align 8
  %141 = bitcast float* %140 to i8*
  %142 = call i32 @hipFree(i8* noundef %141)
  %143 = load float*, float** %16, align 8
  %144 = bitcast float* %143 to i8*
  %145 = call i32 @hipFree(i8* noundef %144)
  %146 = load float*, float** %10, align 8
  %147 = bitcast float* %146 to i8*
  %148 = call i32 @hipFree(i8* noundef %147)
  %149 = load float*, float** %11, align 8
  %150 = bitcast float* %149 to i8*
  %151 = call i32 @hipFree(i8* noundef %150)
  %152 = load i32*, i32** %12, align 8
  %153 = bitcast i32* %152 to i8*
  %154 = call i32 @hipFree(i8* noundef %153)
  %155 = load i32*, i32** %13, align 8
  %156 = bitcast i32* %155 to i8*
  %157 = call i32 @hipFree(i8* noundef %156)
  %158 = load float*, float** %24, align 8
  ret float* %158
}

declare i32 @hipMalloc(i8** noundef, i64 noundef) #6

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef i32 @_ZL14hipBindTextureIfLi1EL18hipTextureReadMode0EE10hipError_tPmRK7textureIT_XT0_EXT1_EEPKvm(i64* noundef %0, %struct.texture* noundef nonnull align 8 dereferenceable(88) %1, i8* noundef %2, i64 noundef %3) #4 {
  %5 = alloca i64*, align 8
  %6 = alloca %struct.texture*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store %struct.texture* %1, %struct.texture** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64*, i64** %5, align 8
  %10 = load %struct.texture*, %struct.texture** %6, align 8
  %11 = bitcast %struct.texture* %10 to %struct.textureReference*
  %12 = load i8*, i8** %7, align 8
  %13 = load %struct.texture*, %struct.texture** %6, align 8
  %14 = bitcast %struct.texture* %13 to %struct.textureReference*
  %15 = getelementptr inbounds %struct.textureReference, %struct.textureReference* %14, i32 0, i32 4
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @hipBindTexture(i64* noundef %9, %struct.textureReference* noundef %11, i8* noundef %12, %struct.hipChannelFormatDesc* noundef %15, i64 noundef %16)
  ret i32 %17
}

declare i32 @hipMemset(i8* noundef, i32 noundef, i64 noundef) #6

declare i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) #6

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

declare i32 @hipDeviceSynchronize() #6

declare i32 @hipGetLastError() #6

declare i32 @printf(i8* noundef, ...) #6

declare i8* @hipGetErrorString(i32 noundef) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #8

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #9

declare i32 @hipUnbindTexture(%struct.textureReference* noundef) #6

declare i32 @hipFree(i8* noundef) #6

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.2() #0 section ".text.startup" {
  call void @_ZN7textureIfLi1EL18hipTextureReadMode0EEC2Ei20hipTextureFilterMode21hipTextureAddressMode(%struct.texture* noundef nonnull align 8 dereferenceable(88) @t_img, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z28__device_stub__dilate_kerneliiiiPfS_(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, float* noundef %4, float* noundef %5) #2 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca %struct.dim3, align 8
  %14 = alloca %struct.dim3, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca { i64, i32 }, align 8
  %18 = alloca { i64, i32 }, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  %19 = alloca i8*, i64 6, align 16
  %20 = bitcast i32* %7 to i8*
  %21 = getelementptr i8*, i8** %19, i32 0
  store i8* %20, i8** %21, align 8
  %22 = bitcast i32* %8 to i8*
  %23 = getelementptr i8*, i8** %19, i32 1
  store i8* %22, i8** %23, align 8
  %24 = bitcast i32* %9 to i8*
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
  %48 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i32, i32, i32, i32, float*, float*)** @_Z13dilate_kerneliiiiPfS_ to i8*), i64 %38, i32 %40, i64 %44, i32 %46, i8** noundef %19, i64 noundef %33, %struct.ihipStream_t* noundef %47)
  br label %49

49:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef float* @_Z19structuring_elementi(i32 noundef %0) #10 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = mul nsw i32 %8, 2
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = mul nsw i32 %11, 2
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %16, %18
  %20 = call noalias i8* @malloc(i64 noundef %19) #13
  %21 = bitcast i8* %20 to float*
  store float* %21, float** %5, align 8
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %76, %1
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %79

26:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %72, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %75

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %2, align 4
  %34 = sub nsw i32 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %2, align 4
  %37 = sub nsw i32 %35, %36
  %38 = mul nsw i32 %34, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %2, align 4
  %41 = sub nsw i32 %39, %40
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %2, align 4
  %44 = sub nsw i32 %42, %43
  %45 = mul nsw i32 %41, %44
  %46 = add nsw i32 %38, %45
  %47 = sitofp i32 %46 to float
  %48 = fpext float %47 to double
  %49 = call contract double @sqrt(double noundef %48) #11
  %50 = load i32, i32* %2, align 4
  %51 = sitofp i32 %50 to double
  %52 = fcmp contract ole double %49, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %31
  %54 = load float*, float** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %3, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %54, i64 %60
  store float 1.000000e+00, float* %61, align 4
  br label %71

62:                                               ; preds = %31
  %63 = load float*, float** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %3, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %63, i64 %69
  store float 0.000000e+00, float* %70, align 4
  br label %71

71:                                               ; preds = %62, %53
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %27, !llvm.loop !10

75:                                               ; preds = %27
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %22, !llvm.loop !11

79:                                               ; preds = %22
  %80 = load float*, float** %5, align 8
  ret float* %80
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) #5

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local float* @dilate_CUDA(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dim3, align 4
  %17 = alloca %struct.dim3, align 4
  %18 = alloca { i64, i32 }, align 4
  %19 = alloca { i64, i32 }, align 4
  %20 = alloca i32, align 4
  %21 = alloca float*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %24, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = bitcast float** %10 to i8**
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = call i32 @hipMalloc(i8** noundef %29, i64 noundef %31)
  %33 = bitcast float** %11 to i8**
  %34 = call i32 @hipMalloc(i8** noundef %33, i64 noundef 2500)
  %35 = call noundef float* @_Z19structuring_elementi(i32 noundef 12)
  store float* %35, float** %12, align 8
  %36 = load float*, float** %12, align 8
  %37 = bitcast float* %36 to i8*
  %38 = load float*, float** %11, align 8
  %39 = bitcast float* %38 to i8*
  %40 = call i32 @hipMemcpy(i8* noundef %37, i8* noundef %39, i64 noundef 2500, i32 noundef 1)
  %41 = load float*, float** %12, align 8
  %42 = bitcast float* %41 to i8*
  call void @free(i8* noundef %42) #11
  %43 = load float*, float** @device_gicov, align 8
  %44 = bitcast float* %43 to i8*
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = call noundef i32 @_ZL14hipBindTextureIfLi1EL18hipTextureReadMode0EE10hipError_tPmRK7textureIT_XT0_EXT1_EEPKvm(i64* noundef null, %struct.texture* noundef nonnull align 8 dereferenceable(88) @t_img, i8* noundef %44, i64 noundef %46)
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = mul nsw i32 %48, %49
  store i32 %50, i32* %13, align 4
  store i32 176, i32* %14, align 4
  %51 = load i32, i32* %13, align 4
  %52 = sitofp i32 %51 to float
  %53 = load i32, i32* %14, align 4
  %54 = sitofp i32 %53 to float
  %55 = fdiv contract float %52, %54
  %56 = fpext float %55 to double
  %57 = fadd contract double %56, 5.000000e-01
  %58 = fptosi double %57 to i32
  store i32 %58, i32* %15, align 4
  br label %59

59:                                               ; preds = %4
  %60 = load i32, i32* %15, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %16, i32 noundef %60, i32 noundef 1, i32 noundef 1)
  %61 = load i32, i32* %14, align 4
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %17, i32 noundef %61, i32 noundef 1, i32 noundef 1)
  %62 = bitcast { i64, i32 }* %18 to i8*
  %63 = bitcast %struct.dim3* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 12, i1 false)
  %64 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %65 = load i64, i64* %64, align 4
  %66 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = bitcast { i64, i32 }* %19 to i8*
  %69 = bitcast %struct.dim3* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 %69, i64 12, i1 false)
  %70 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %71 = load i64, i64* %70, align 4
  %72 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @__hipPushCallConfiguration(i64 %65, i32 %67, i64 %71, i32 %73, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %59
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load float*, float** %10, align 8
  %82 = load float*, float** %11, align 8
  call void @_Z28__device_stub__dilate_kerneliiiiPfS_(i32 noundef %77, i32 noundef %78, i32 noundef %79, i32 noundef %80, float* noundef %81, float* noundef %82)
  br label %83

83:                                               ; preds = %76, %59
  br label %84

84:                                               ; preds = %83
  %85 = call i32 @hipDeviceSynchronize()
  %86 = call i32 @hipGetLastError()
  store i32 %86, i32* %20, align 4
  %87 = load i32, i32* %20, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* %20, align 4
  %91 = call i8* @hipGetErrorString(i32 noundef %90)
  %92 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* noundef %91)
  call void @exit(i32 noundef 1) #12
  unreachable

93:                                               ; preds = %84
  %94 = load i32, i32* %9, align 4
  %95 = zext i32 %94 to i64
  %96 = call noalias i8* @malloc(i64 noundef %95) #13
  %97 = bitcast i8* %96 to float*
  store float* %97, float** %21, align 8
  %98 = load float*, float** %21, align 8
  %99 = bitcast float* %98 to i8*
  %100 = load float*, float** %10, align 8
  %101 = bitcast float* %100 to i8*
  %102 = load i32, i32* %9, align 4
  %103 = zext i32 %102 to i64
  %104 = call i32 @hipMemcpy(i8* noundef %99, i8* noundef %101, i64 noundef %103, i32 noundef 2)
  %105 = call i32 @hipUnbindTexture(%struct.textureReference* noundef getelementptr inbounds (%struct.texture, %struct.texture* @t_img, i32 0, i32 0))
  %106 = load float*, float** @device_gicov, align 8
  %107 = bitcast float* %106 to i8*
  %108 = call i32 @hipFree(i8* noundef %107)
  %109 = load float*, float** %10, align 8
  %110 = bitcast float* %109 to i8*
  %111 = call i32 @hipFree(i8* noundef %110)
  %112 = load float*, float** %11, align 8
  %113 = bitcast float* %112 to i8*
  %114 = call i32 @hipFree(i8* noundef %113)
  %115 = load float*, float** %21, align 8
  ret float* %115
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #5

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @select_device() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.hipDeviceProp_t, align 8
  %6 = call i32 @hipGetDeviceCount(i32* noundef %1)
  %7 = load i32, i32* %1, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %0
  store i32 0, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %26, %9
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* %1, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* noundef %5, i32 noundef %15)
  %17 = load i32, i32* %3, align 4
  %18 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %5, i32 0, i32 14
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %5, i32 0, i32 14
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %2, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %21, %14
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %10, !llvm.loop !12

29:                                               ; preds = %10
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @hipSetDevice(i32 noundef %30)
  br label %32

32:                                               ; preds = %29, %0
  %33 = call i32 @hipFree(i8* noundef null)
  ret void
}

declare i32 @hipGetDeviceCount(i32* noundef) #6

declare i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* noundef, i32 noundef) #6

declare i32 @hipSetDevice(i32 noundef) #6

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @_ZL20hipCreateChannelDescIfE20hipChannelFormatDescv(%struct.hipChannelFormatDesc* noalias sret(%struct.hipChannelFormatDesc) align 4 %0) #4 {
  %2 = alloca i32, align 4
  store i32 32, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @hipCreateChannelDesc(%struct.hipChannelFormatDesc* sret(%struct.hipChannelFormatDesc) align 4 %0, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 2)
  ret void
}

declare void @hipCreateChannelDesc(%struct.hipChannelFormatDesc* sret(%struct.hipChannelFormatDesc) align 4, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #6

declare i32 @hipBindTexture(i64* noundef, %struct.textureReference* noundef, i8* noundef, %struct.hipChannelFormatDesc* noundef, i64 noundef) #6

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_find_ellipse_kernel.cu() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init.1()
  call void @__cxx_global_var_init.2()
  ret void
}

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i32, float*, float*, float*, i32*, i32*)** @_Z12GICOV_kerneliPfS_S_PiS0_ to i8*), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %3 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i32, i32, i32, i32, float*, float*)** @_Z13dilate_kerneliiiiPfS_ to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  call void @__hipRegisterTexture(i8** %0, i8* bitcast (%struct.texture* @t_grad_x to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @2, i64 0, i64 0), i32 1, i32 0, i32 0)
  call void @__hipRegisterTexture(i8** %0, i8* bitcast (%struct.texture* @t_grad_y to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i64 0, i64 0), i32 1, i32 0, i32 0)
  call void @__hipRegisterTexture(i8** %0, i8* bitcast (%struct.texture* @t_img to i8*), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i64 0, i64 0), i32 1, i32 0, i32 0)
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
attributes #1 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nocallback nofree nounwind willreturn }
attributes #4 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind allocsize(0) }

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
