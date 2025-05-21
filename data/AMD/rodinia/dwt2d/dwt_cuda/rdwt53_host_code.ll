; ModuleID = 'hip/dwt2d/dwt_cuda/rdwt53.cu'
source_filename = "hip/dwt2d/dwt_cuda/rdwt53.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque

$_ZN8dwt_cuda8divRndUpIiEET_RKS1_S3_ = comdat any

$_ZN8dwt_cuda7memCopyIiEEvPT_PKS1_mm = comdat any

$_ZN8dwt_cuda18launchRDWT53KernelILi192ELi8EEEvPiS1_ii = comdat any

$_ZN8dwt_cuda18launchRDWT53KernelILi128ELi8EEEvPiS1_ii = comdat any

$_ZN8dwt_cuda18launchRDWT53KernelILi64ELi8EEEvPiS1_ii = comdat any

$_ZN8dwt_cuda13CudaDWTTester5checkERK10hipError_tPKc = comdat any

$_ZN4dim3C2Ejjj = comdat any

$_ZN8dwt_cuda27__device_stub__rdwt53KernelILi192ELi8EEEvPKiPiiii = comdat any

$_ZN8dwt_cuda13CudaDWTTester19checkLastKernelCallEPKc = comdat any

$_ZN8dwt_cuda27__device_stub__rdwt53KernelILi128ELi8EEEvPKiPiiii = comdat any

$_ZN8dwt_cuda27__device_stub__rdwt53KernelILi64ELi8EEEvPKiPiiii = comdat any

$_ZN8dwt_cuda12rdwt53KernelILi192ELi8EEEvPKiPiiii = comdat any

$_ZN8dwt_cuda12rdwt53KernelILi128ELi8EEEvPKiPiiii = comdat any

$_ZN8dwt_cuda12rdwt53KernelILi64ELi8EEEvPKiPiiii = comdat any

$__hip_gpubin_handle = comdat any

@.str = private unnamed_addr constant [23 x i8] c"memcpy device > device\00", align 1
@_ZN8dwt_cuda12rdwt53KernelILi192ELi8EEEvPKiPiiii = linkonce_odr constant void (i32*, i32*, i32, i32, i32)* @_ZN8dwt_cuda27__device_stub__rdwt53KernelILi192ELi8EEEvPKiPiiii, comdat, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"RDWT 5/3 kernel\00", align 1
@_ZN8dwt_cuda12rdwt53KernelILi128ELi8EEEvPKiPiiii = linkonce_odr constant void (i32*, i32*, i32, i32, i32)* @_ZN8dwt_cuda27__device_stub__rdwt53KernelILi128ELi8EEEvPKiPiiii, comdat, align 8
@_ZN8dwt_cuda12rdwt53KernelILi64ELi8EEEvPKiPiiii = linkonce_odr constant void (i32*, i32*, i32, i32, i32)* @_ZN8dwt_cuda27__device_stub__rdwt53KernelILi64ELi8EEEvPKiPiiii, comdat, align 8
@0 = private unnamed_addr constant [49 x i8] c"_ZN8dwt_cuda12rdwt53KernelILi192ELi8EEEvPKiPiiii\00", align 1
@1 = private unnamed_addr constant [49 x i8] c"_ZN8dwt_cuda12rdwt53KernelILi128ELi8EEEvPKiPiiii\00", align 1
@2 = private unnamed_addr constant [48 x i8] c"_ZN8dwt_cuda12rdwt53KernelILi64ELi8EEEvPKiPiiii\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden global i8** null, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN8dwt_cuda6rdwt53EPiS0_iii(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %32

17:                                               ; preds = %5
  store i32 2, i32* %12, align 4
  %18 = call noundef i32 @_ZN8dwt_cuda8divRndUpIiEET_RKS1_S3_(i32* noundef nonnull align 4 dereferenceable(4) %8, i32* noundef nonnull align 4 dereferenceable(4) %12)
  store i32 %18, i32* %11, align 4
  store i32 2, i32* %14, align 4
  %19 = call noundef i32 @_ZN8dwt_cuda8divRndUpIiEET_RKS1_S3_(i32* noundef nonnull align 4 dereferenceable(4) %9, i32* noundef nonnull align 4 dereferenceable(4) %14)
  store i32 %19, i32* %13, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %10, align 4
  %25 = sub nsw i32 %24, 1
  call void @_ZN8dwt_cuda6rdwt53EPiS0_iii(i32* noundef %20, i32* noundef %21, i32 noundef %22, i32 noundef %23, i32 noundef %25)
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  call void @_ZN8dwt_cuda7memCopyIiEEvPT_PKS1_mm(i32* noundef %26, i32* noundef %27, i64 noundef %29, i64 noundef %31)
  br label %32

32:                                               ; preds = %17, %5
  %33 = load i32, i32* %8, align 4
  %34 = icmp sge i32 %33, 960
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  call void @_ZN8dwt_cuda18launchRDWT53KernelILi192ELi8EEEvPiS1_ii(i32* noundef %36, i32* noundef %37, i32 noundef %38, i32 noundef %39)
  br label %54

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  %42 = icmp sge i32 %41, 480
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  call void @_ZN8dwt_cuda18launchRDWT53KernelILi128ELi8EEEvPiS1_ii(i32* noundef %44, i32* noundef %45, i32 noundef %46, i32 noundef %47)
  br label %53

48:                                               ; preds = %40
  %49 = load i32*, i32** %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  call void @_ZN8dwt_cuda18launchRDWT53KernelILi64ELi8EEEvPiS1_ii(i32* noundef %49, i32* noundef %50, i32 noundef %51, i32 noundef %52)
  br label %53

53:                                               ; preds = %48, %43
  br label %54

54:                                               ; preds = %53, %35
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN8dwt_cuda8divRndUpIiEET_RKS1_S3_(i32* noundef nonnull align 4 dereferenceable(4) %0, i32* noundef nonnull align 4 dereferenceable(4) %1) #1 comdat {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %7, align 4
  %9 = sdiv i32 %6, %8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %12, align 4
  %14 = srem i32 %11, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  %18 = add nsw i32 %9, %17
  ret i32 %18
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN8dwt_cuda7memCopyIiEEvPT_PKS1_mm(i32* noundef %0, i32* noundef %1, i64 noundef %2, i64 noundef %3) #0 comdat {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = load i32*, i32** %6, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = mul i64 %14, %15
  %17 = mul i64 %16, 4
  %18 = call i32 @hipMemcpy(i8* noundef %11, i8* noundef %13, i64 noundef %17, i32 noundef 3)
  store i32 %18, i32* %9, align 4
  %19 = call noundef zeroext i1 @_ZN8dwt_cuda13CudaDWTTester5checkERK10hipError_tPKc(i32* noundef nonnull align 4 dereferenceable(4) %9, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN8dwt_cuda18launchRDWT53KernelILi192ELi8EEEvPiS1_ii(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) #0 comdat {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dim3, align 4
  %15 = alloca %struct.dim3, align 4
  %16 = alloca { i64, i32 }, align 4
  %17 = alloca { i64, i32 }, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 120, i32* %10, align 4
  %18 = call noundef i32 @_ZN8dwt_cuda8divRndUpIiEET_RKS1_S3_(i32* noundef nonnull align 4 dereferenceable(4) %8, i32* noundef nonnull align 4 dereferenceable(4) %10)
  store i32 %18, i32* %9, align 4
  store i32 192, i32* %12, align 4
  %19 = call noundef i32 @_ZN8dwt_cuda8divRndUpIiEET_RKS1_S3_(i32* noundef nonnull align 4 dereferenceable(4) %7, i32* noundef nonnull align 4 dereferenceable(4) %12)
  %20 = load i32, i32* %9, align 4
  %21 = mul nsw i32 8, %20
  store i32 %21, i32* %13, align 4
  %22 = call noundef i32 @_ZN8dwt_cuda8divRndUpIiEET_RKS1_S3_(i32* noundef nonnull align 4 dereferenceable(4) %8, i32* noundef nonnull align 4 dereferenceable(4) %13)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %11, i32 noundef %19, i32 noundef %22, i32 noundef 1)
  br label %23

23:                                               ; preds = %4
  %24 = bitcast %struct.dim3* %14 to i8*
  %25 = bitcast %struct.dim3* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 12, i1 false)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %15, i32 noundef 192, i32 noundef 1, i32 noundef 1)
  %26 = bitcast { i64, i32 }* %16 to i8*
  %27 = bitcast %struct.dim3* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 12, i1 false)
  %28 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %29 = load i64, i64* %28, align 4
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = bitcast { i64, i32 }* %17 to i8*
  %33 = bitcast %struct.dim3* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 12, i1 false)
  %34 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %35 = load i64, i64* %34, align 4
  %36 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__hipPushCallConfiguration(i64 %29, i32 %31, i64 %35, i32 %37, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %23
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  call void @_ZN8dwt_cuda27__device_stub__rdwt53KernelILi192ELi8EEEvPKiPiiii(i32* noundef %41, i32* noundef %42, i32 noundef %43, i32 noundef %44, i32 noundef %45)
  br label %46

46:                                               ; preds = %40, %23
  br label %47

47:                                               ; preds = %46
  %48 = call noundef zeroext i1 @_ZN8dwt_cuda13CudaDWTTester19checkLastKernelCallEPKc(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN8dwt_cuda18launchRDWT53KernelILi128ELi8EEEvPiS1_ii(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) #0 comdat {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dim3, align 4
  %15 = alloca %struct.dim3, align 4
  %16 = alloca { i64, i32 }, align 4
  %17 = alloca { i64, i32 }, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 120, i32* %10, align 4
  %18 = call noundef i32 @_ZN8dwt_cuda8divRndUpIiEET_RKS1_S3_(i32* noundef nonnull align 4 dereferenceable(4) %8, i32* noundef nonnull align 4 dereferenceable(4) %10)
  store i32 %18, i32* %9, align 4
  store i32 128, i32* %12, align 4
  %19 = call noundef i32 @_ZN8dwt_cuda8divRndUpIiEET_RKS1_S3_(i32* noundef nonnull align 4 dereferenceable(4) %7, i32* noundef nonnull align 4 dereferenceable(4) %12)
  %20 = load i32, i32* %9, align 4
  %21 = mul nsw i32 8, %20
  store i32 %21, i32* %13, align 4
  %22 = call noundef i32 @_ZN8dwt_cuda8divRndUpIiEET_RKS1_S3_(i32* noundef nonnull align 4 dereferenceable(4) %8, i32* noundef nonnull align 4 dereferenceable(4) %13)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %11, i32 noundef %19, i32 noundef %22, i32 noundef 1)
  br label %23

23:                                               ; preds = %4
  %24 = bitcast %struct.dim3* %14 to i8*
  %25 = bitcast %struct.dim3* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 12, i1 false)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %15, i32 noundef 128, i32 noundef 1, i32 noundef 1)
  %26 = bitcast { i64, i32 }* %16 to i8*
  %27 = bitcast %struct.dim3* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 12, i1 false)
  %28 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %29 = load i64, i64* %28, align 4
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = bitcast { i64, i32 }* %17 to i8*
  %33 = bitcast %struct.dim3* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 12, i1 false)
  %34 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %35 = load i64, i64* %34, align 4
  %36 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__hipPushCallConfiguration(i64 %29, i32 %31, i64 %35, i32 %37, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %23
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  call void @_ZN8dwt_cuda27__device_stub__rdwt53KernelILi128ELi8EEEvPKiPiiii(i32* noundef %41, i32* noundef %42, i32 noundef %43, i32 noundef %44, i32 noundef %45)
  br label %46

46:                                               ; preds = %40, %23
  br label %47

47:                                               ; preds = %46
  %48 = call noundef zeroext i1 @_ZN8dwt_cuda13CudaDWTTester19checkLastKernelCallEPKc(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZN8dwt_cuda18launchRDWT53KernelILi64ELi8EEEvPiS1_ii(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) #0 comdat {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dim3, align 4
  %15 = alloca %struct.dim3, align 4
  %16 = alloca { i64, i32 }, align 4
  %17 = alloca { i64, i32 }, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 120, i32* %10, align 4
  %18 = call noundef i32 @_ZN8dwt_cuda8divRndUpIiEET_RKS1_S3_(i32* noundef nonnull align 4 dereferenceable(4) %8, i32* noundef nonnull align 4 dereferenceable(4) %10)
  store i32 %18, i32* %9, align 4
  store i32 64, i32* %12, align 4
  %19 = call noundef i32 @_ZN8dwt_cuda8divRndUpIiEET_RKS1_S3_(i32* noundef nonnull align 4 dereferenceable(4) %7, i32* noundef nonnull align 4 dereferenceable(4) %12)
  %20 = load i32, i32* %9, align 4
  %21 = mul nsw i32 8, %20
  store i32 %21, i32* %13, align 4
  %22 = call noundef i32 @_ZN8dwt_cuda8divRndUpIiEET_RKS1_S3_(i32* noundef nonnull align 4 dereferenceable(4) %8, i32* noundef nonnull align 4 dereferenceable(4) %13)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %11, i32 noundef %19, i32 noundef %22, i32 noundef 1)
  br label %23

23:                                               ; preds = %4
  %24 = bitcast %struct.dim3* %14 to i8*
  %25 = bitcast %struct.dim3* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 12, i1 false)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %15, i32 noundef 64, i32 noundef 1, i32 noundef 1)
  %26 = bitcast { i64, i32 }* %16 to i8*
  %27 = bitcast %struct.dim3* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 12, i1 false)
  %28 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %29 = load i64, i64* %28, align 4
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = bitcast { i64, i32 }* %17 to i8*
  %33 = bitcast %struct.dim3* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 12, i1 false)
  %34 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %35 = load i64, i64* %34, align 4
  %36 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__hipPushCallConfiguration(i64 %29, i32 %31, i64 %35, i32 %37, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %23
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  call void @_ZN8dwt_cuda27__device_stub__rdwt53KernelILi64ELi8EEEvPKiPiiii(i32* noundef %41, i32* noundef %42, i32 noundef %43, i32 noundef %44, i32 noundef %45)
  br label %46

46:                                               ; preds = %40, %23
  br label %47

47:                                               ; preds = %46
  %48 = call noundef zeroext i1 @_ZN8dwt_cuda13CudaDWTTester19checkLastKernelCallEPKc(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #2

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8dwt_cuda13CudaDWTTester5checkERK10hipError_tPKc(i32* noundef nonnull align 4 dereferenceable(4) %0, i8* noundef %1) #1 comdat align 2 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  ret i1 true
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 comdat align 2 {
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

declare i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) #2

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline norecurse optnone uwtable
define linkonce_odr dso_local void @_ZN8dwt_cuda27__device_stub__rdwt53KernelILi192ELi8EEEvPKiPiiii(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #5 comdat {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca { i64, i32 }, align 8
  %16 = alloca { i64, i32 }, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = alloca i8*, i64 5, align 16
  %18 = bitcast i32** %6 to i8*
  %19 = getelementptr i8*, i8** %17, i32 0
  store i8* %18, i8** %19, align 8
  %20 = bitcast i32** %7 to i8*
  %21 = getelementptr i8*, i8** %17, i32 1
  store i8* %20, i8** %21, align 8
  %22 = bitcast i32* %8 to i8*
  %23 = getelementptr i8*, i8** %17, i32 2
  store i8* %22, i8** %23, align 8
  %24 = bitcast i32* %9 to i8*
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
  %44 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i32*, i32*, i32, i32, i32)** @_ZN8dwt_cuda12rdwt53KernelILi192ELi8EEEvPKiPiiii to i8*), i64 %34, i32 %36, i64 %40, i32 %42, i8** noundef %17, i64 noundef %29, %struct.ihipStream_t* noundef %43)
  br label %45

45:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8dwt_cuda13CudaDWTTester19checkLastKernelCallEPKc(i8* noundef %0) #1 comdat align 2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  ret i1 true
}

declare i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*)

; Function Attrs: noinline norecurse optnone uwtable
define linkonce_odr dso_local void @_ZN8dwt_cuda27__device_stub__rdwt53KernelILi128ELi8EEEvPKiPiiii(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #5 comdat {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca { i64, i32 }, align 8
  %16 = alloca { i64, i32 }, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = alloca i8*, i64 5, align 16
  %18 = bitcast i32** %6 to i8*
  %19 = getelementptr i8*, i8** %17, i32 0
  store i8* %18, i8** %19, align 8
  %20 = bitcast i32** %7 to i8*
  %21 = getelementptr i8*, i8** %17, i32 1
  store i8* %20, i8** %21, align 8
  %22 = bitcast i32* %8 to i8*
  %23 = getelementptr i8*, i8** %17, i32 2
  store i8* %22, i8** %23, align 8
  %24 = bitcast i32* %9 to i8*
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
  %44 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i32*, i32*, i32, i32, i32)** @_ZN8dwt_cuda12rdwt53KernelILi128ELi8EEEvPKiPiiii to i8*), i64 %34, i32 %36, i64 %40, i32 %42, i8** noundef %17, i64 noundef %29, %struct.ihipStream_t* noundef %43)
  br label %45

45:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline norecurse optnone uwtable
define linkonce_odr dso_local void @_ZN8dwt_cuda27__device_stub__rdwt53KernelILi64ELi8EEEvPKiPiiii(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #5 comdat {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca { i64, i32 }, align 8
  %16 = alloca { i64, i32 }, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = alloca i8*, i64 5, align 16
  %18 = bitcast i32** %6 to i8*
  %19 = getelementptr i8*, i8** %17, i32 0
  store i8* %18, i8** %19, align 8
  %20 = bitcast i32** %7 to i8*
  %21 = getelementptr i8*, i8** %17, i32 1
  store i8* %20, i8** %21, align 8
  %22 = bitcast i32* %8 to i8*
  %23 = getelementptr i8*, i8** %17, i32 2
  store i8* %22, i8** %23, align 8
  %24 = bitcast i32* %9 to i8*
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
  %44 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (i32*, i32*, i32, i32, i32)** @_ZN8dwt_cuda12rdwt53KernelILi64ELi8EEEvPKiPiiii to i8*), i64 %34, i32 %36, i64 %40, i32 %42, i8** noundef %17, i64 noundef %29, %struct.ihipStream_t* noundef %43)
  br label %45

45:                                               ; preds = %5
  ret void
}

define internal void @__hip_register_globals(i8** %0) {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i32*, i32*, i32, i32, i32)** @_ZN8dwt_cuda12rdwt53KernelILi192ELi8EEEvPKiPiiii to i8*), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %3 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i32*, i32*, i32, i32, i32)** @_ZN8dwt_cuda12rdwt53KernelILi128ELi8EEEvPKiPiiii to i8*), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %4 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i32*, i32*, i32, i32, i32)** @_ZN8dwt_cuda12rdwt53KernelILi64ELi8EEEvPKiPiiii to i8*), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @2, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @2, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
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
attributes #1 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn }
attributes #5 = { noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 1be90618e508074abc746ab4963d7ad92710d6c5)"}
