; ModuleID = 'hip/dwt2d/dwt.cu'
source_filename = "hip/dwt2d/dwt.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dimensions = type { %struct.band, %struct.band, %struct.band, %struct.band }
%struct.band = type { i32, i32 }
%struct.dimensions.0 = type { %struct.band.1, %struct.band.1, %struct.band.1, %struct.band.1 }
%struct.band.1 = type { i32, i32 }

$_Z11nStage2dDWTIfEiPT_S1_S1_iiib = comdat any

$_Z4fdwtPfS_iii = comdat any

$_Z4rdwtPfS_iii = comdat any

$_Z11nStage2dDWTIiEiPT_S1_S1_iiib = comdat any

$_Z4fdwtPiS_iii = comdat any

$_Z4rdwtPiS_iii = comdat any

$_Z11writeLinearIfEiPT_iiPKcS3_ = comdat any

$_Z11writeLinearIiEiPT_iiPKcS3_ = comdat any

$_Z16writeNStage2DDWTIfEiPT_iiiPKcS3_ = comdat any

$_Z16writeNStage2DDWTIiEiPT_iiiPKcS3_ = comdat any

@.str = private unnamed_addr constant [35 x i8] c"\0A*** %d stages of 2D forward DWT:\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"cannot access %s\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"\0AWriting to %s (%d x %d)\0A\00", align 1

; Function Attrs: mustprogress noinline optnone uwtable
define weak_odr dso_local noundef i32 @_Z11nStage2dDWTIfEiPT_S1_S1_iiib(float* noundef %0, float* noundef %1, float* noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) #0 comdat {
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store float* %0, float** %8, align 8
  store float* %1, float** %9, align 8
  store float* %2, float** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = zext i1 %6 to i8
  store i8 %16, i8* %14, align 1
  %17 = load i32, i32* %13, align 4
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef %17)
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %11, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %15, align 4
  %25 = load float*, float** %10, align 8
  %26 = bitcast float* %25 to i8*
  %27 = load float*, float** %8, align 8
  %28 = bitcast float* %27 to i8*
  %29 = load i32, i32* %15, align 4
  %30 = sext i32 %29 to i64
  %31 = call i32 @hipMemcpy(i8* noundef %26, i8* noundef %28, i64 noundef %30, i32 noundef 3)
  %32 = load i8, i8* %14, align 1
  %33 = trunc i8 %32 to i1
  br i1 %33, label %34, label %40

34:                                               ; preds = %7
  %35 = load float*, float** %8, align 8
  %36 = load float*, float** %9, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  call void @_Z4fdwtPfS_iii(float* noundef %35, float* noundef %36, i32 noundef %37, i32 noundef %38, i32 noundef %39)
  br label %46

40:                                               ; preds = %7
  %41 = load float*, float** %8, align 8
  %42 = load float*, float** %9, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  call void @_Z4rdwtPfS_iii(float* noundef %41, float* noundef %42, i32 noundef %43, i32 noundef %44, i32 noundef %45)
  br label %46

46:                                               ; preds = %40, %34
  ret i32 0
}

declare i32 @printf(i8* noundef, ...) #1

declare i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z4fdwtPfS_iii(float* noundef %0, float* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 comdat {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load float*, float** %6, align 8
  %12 = load float*, float** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  call void @_ZN8dwt_cuda6fdwt97EPfS0_iii(float* noundef %11, float* noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z4rdwtPfS_iii(float* noundef %0, float* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 comdat {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load float*, float** %6, align 8
  %12 = load float*, float** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  call void @_ZN8dwt_cuda6rdwt97EPfS0_iii(float* noundef %11, float* noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define weak_odr dso_local noundef i32 @_Z11nStage2dDWTIiEiPT_S1_S1_iiib(i32* noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) #0 comdat {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = zext i1 %6 to i8
  store i8 %16, i8* %14, align 1
  %17 = load i32, i32* %13, align 4
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef %17)
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %11, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %15, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = bitcast i32* %25 to i8*
  %27 = load i32*, i32** %8, align 8
  %28 = bitcast i32* %27 to i8*
  %29 = load i32, i32* %15, align 4
  %30 = sext i32 %29 to i64
  %31 = call i32 @hipMemcpy(i8* noundef %26, i8* noundef %28, i64 noundef %30, i32 noundef 3)
  %32 = load i8, i8* %14, align 1
  %33 = trunc i8 %32 to i1
  br i1 %33, label %34, label %40

34:                                               ; preds = %7
  %35 = load i32*, i32** %8, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  call void @_Z4fdwtPiS_iii(i32* noundef %35, i32* noundef %36, i32 noundef %37, i32 noundef %38, i32 noundef %39)
  br label %46

40:                                               ; preds = %7
  %41 = load i32*, i32** %8, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  call void @_Z4rdwtPiS_iii(i32* noundef %41, i32* noundef %42, i32 noundef %43, i32 noundef %44, i32 noundef %45)
  br label %46

46:                                               ; preds = %40, %34
  ret i32 0
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z4fdwtPiS_iii(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 comdat {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  call void @_ZN8dwt_cuda6fdwt53EPiS0_iii(i32* noundef %11, i32* noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z4rdwtPiS_iii(i32* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 comdat {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  call void @_ZN8dwt_cuda6rdwt53EPiS0_iii(i32* noundef %11, i32* noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z13samplesToCharPhPfi(i8* noundef %0, float* noundef %1, i32 noundef %2) #2 {
  %4 = alloca i8*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  store i8* %0, i8** %4, align 8
  store float* %1, float** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %35, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %38

13:                                               ; preds = %9
  %14 = load float*, float** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds float, float* %14, i64 %16
  %18 = load float, float* %17, align 4
  %19 = fadd contract float %18, 5.000000e-01
  %20 = fmul contract float %19, 2.550000e+02
  store float %20, float* %8, align 4
  %21 = load float, float* %8, align 4
  %22 = fcmp contract ogt float %21, 2.550000e+02
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store float 2.550000e+02, float* %8, align 4
  br label %24

24:                                               ; preds = %23, %13
  %25 = load float, float* %8, align 4
  %26 = fcmp contract olt float %25, 0.000000e+00
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store float 0.000000e+00, float* %8, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load float, float* %8, align 4
  %30 = fptoui float %29 to i8
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8 %30, i8* %34, align 1
  br label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %9, !llvm.loop !6

38:                                               ; preds = %9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z13samplesToCharPhPii(i8* noundef %0, i32* noundef %1, i32 noundef %2) #2 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %34, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 128
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp sgt i32 %20, 255
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32 255, i32* %8, align 4
  br label %23

23:                                               ; preds = %22, %13
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32, i32* %8, align 4
  %29 = trunc i32 %28 to i8
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8 %29, i8* %33, align 1
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %9, !llvm.loop !8

37:                                               ; preds = %9
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define weak_odr dso_local noundef i32 @_Z11writeLinearIfEiPT_iiPKcS3_(float* noundef %0, i32 noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4) #0 comdat {
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store float* %0, float** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %15, align 4
  %28 = bitcast float** %13 to i8**
  %29 = load i32, i32* %15, align 4
  %30 = sext i32 %29 to i64
  %31 = call noundef i32 @_ZL13hipHostMallocIvE10hipError_tPPT_mj(i8** noundef %28, i64 noundef %30, i32 noundef 0)
  %32 = load float*, float** %13, align 8
  %33 = bitcast float* %32 to i8*
  %34 = load i32, i32* %15, align 4
  %35 = sext i32 %34 to i64
  call void @llvm.memset.p0i8.i64(i8* align 4 %33, i8 0, i64 %35, i1 false)
  %36 = load i32, i32* %16, align 4
  %37 = sext i32 %36 to i64
  %38 = call noalias i8* @malloc(i64 noundef %37) #10
  store i8* %38, i8** %12, align 8
  %39 = load float*, float** %13, align 8
  %40 = bitcast float* %39 to i8*
  %41 = load float*, float** %7, align 8
  %42 = bitcast float* %41 to i8*
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = call i32 @hipMemcpy(i8* noundef %40, i8* noundef %42, i64 noundef %44, i32 noundef 2)
  %46 = load i8*, i8** %12, align 8
  %47 = load float*, float** %13, align 8
  %48 = load i32, i32* %16, align 4
  call void @_Z13samplesToCharPhPfi(i8* noundef %46, float* noundef %47, i32 noundef %48)
  %49 = load i8*, i8** %10, align 8
  %50 = call i64 @strlen(i8* noundef %49) #11
  %51 = load i8*, i8** %11, align 8
  %52 = call i64 @strlen(i8* noundef %51) #11
  %53 = add i64 %50, %52
  %54 = call i8* @llvm.stacksave()
  store i8* %54, i8** %17, align 8
  %55 = alloca i8, i64 %53, align 16
  store i64 %53, i64* %18, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = call i8* @strcpy(i8* noundef %55, i8* noundef %56) #12
  %58 = load i8*, i8** %10, align 8
  %59 = call i64 @strlen(i8* noundef %58) #11
  %60 = getelementptr inbounds i8, i8* %55, i64 %59
  %61 = load i8*, i8** %11, align 8
  %62 = call i8* @strcpy(i8* noundef %60, i8* noundef %61) #12
  %63 = call i32 (i8*, i32, ...) @open(i8* noundef %55, i32 noundef 65, i32 noundef 420)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %69

66:                                               ; preds = %5
  %67 = call i32* @__errno_location() #13
  %68 = load i32, i32* %67, align 4
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %68, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* noundef %55)
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %88

69:                                               ; preds = %5
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef %55, i32 noundef %70, i32 noundef %71)
  %73 = load i32, i32* %14, align 4
  %74 = load i8*, i8** %12, align 8
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = call i64 @write(i32 noundef %73, i8* noundef %74, i64 noundef %76)
  store i64 %77, i64* %20, align 8
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @close(i32 noundef %78)
  %80 = load float*, float** %13, align 8
  %81 = bitcast float* %80 to i8*
  %82 = call i32 @hipHostFree(i8* noundef %81)
  %83 = load i8*, i8** %12, align 8
  call void @free(i8* noundef %83) #12
  %84 = load i64, i64* %20, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %69
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %88

87:                                               ; preds = %69
  store i32 0, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %88

88:                                               ; preds = %87, %86, %66
  %89 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef i32 @_ZL13hipHostMallocIvE10hipError_tPPT_mj(i8** noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8**, i8*** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @hipHostMalloc(i8** noundef %7, i64 noundef %8, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #6

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) #7

declare i32 @open(i8* noundef, i32 noundef, ...) #1

declare void @error(i32 noundef, i32 noundef, i8* noundef, ...) #1

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #8

declare i64 @write(i32 noundef, i8* noundef, i64 noundef) #1

declare i32 @close(i32 noundef) #1

declare i32 @hipHostFree(i8* noundef) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #6

; Function Attrs: mustprogress noinline optnone uwtable
define weak_odr dso_local noundef i32 @_Z11writeLinearIiEiPT_iiPKcS3_(i32* noundef %0, i32 noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4) #0 comdat {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %15, align 4
  %28 = bitcast i32** %13 to i8**
  %29 = load i32, i32* %15, align 4
  %30 = sext i32 %29 to i64
  %31 = call noundef i32 @_ZL13hipHostMallocIvE10hipError_tPPT_mj(i8** noundef %28, i64 noundef %30, i32 noundef 0)
  %32 = load i32*, i32** %13, align 8
  %33 = bitcast i32* %32 to i8*
  %34 = load i32, i32* %15, align 4
  %35 = sext i32 %34 to i64
  call void @llvm.memset.p0i8.i64(i8* align 4 %33, i8 0, i64 %35, i1 false)
  %36 = load i32, i32* %16, align 4
  %37 = sext i32 %36 to i64
  %38 = call noalias i8* @malloc(i64 noundef %37) #10
  store i8* %38, i8** %12, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = bitcast i32* %39 to i8*
  %41 = load i32*, i32** %7, align 8
  %42 = bitcast i32* %41 to i8*
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = call i32 @hipMemcpy(i8* noundef %40, i8* noundef %42, i64 noundef %44, i32 noundef 2)
  %46 = load i8*, i8** %12, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = load i32, i32* %16, align 4
  call void @_Z13samplesToCharPhPii(i8* noundef %46, i32* noundef %47, i32 noundef %48)
  %49 = load i8*, i8** %10, align 8
  %50 = call i64 @strlen(i8* noundef %49) #11
  %51 = load i8*, i8** %11, align 8
  %52 = call i64 @strlen(i8* noundef %51) #11
  %53 = add i64 %50, %52
  %54 = call i8* @llvm.stacksave()
  store i8* %54, i8** %17, align 8
  %55 = alloca i8, i64 %53, align 16
  store i64 %53, i64* %18, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = call i8* @strcpy(i8* noundef %55, i8* noundef %56) #12
  %58 = load i8*, i8** %10, align 8
  %59 = call i64 @strlen(i8* noundef %58) #11
  %60 = getelementptr inbounds i8, i8* %55, i64 %59
  %61 = load i8*, i8** %11, align 8
  %62 = call i8* @strcpy(i8* noundef %60, i8* noundef %61) #12
  %63 = call i32 (i8*, i32, ...) @open(i8* noundef %55, i32 noundef 65, i32 noundef 420)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %69

66:                                               ; preds = %5
  %67 = call i32* @__errno_location() #13
  %68 = load i32, i32* %67, align 4
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %68, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* noundef %55)
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %88

69:                                               ; preds = %5
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef %55, i32 noundef %70, i32 noundef %71)
  %73 = load i32, i32* %14, align 4
  %74 = load i8*, i8** %12, align 8
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = call i64 @write(i32 noundef %73, i8* noundef %74, i64 noundef %76)
  store i64 %77, i64* %20, align 8
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @close(i32 noundef %78)
  %80 = load i32*, i32** %13, align 8
  %81 = bitcast i32* %80 to i8*
  %82 = call i32 @hipHostFree(i8* noundef %81)
  %83 = load i8*, i8** %12, align 8
  call void @free(i8* noundef %83) #12
  %84 = load i64, i64* %20, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %69
  store i32 1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %88

87:                                               ; preds = %69
  store i32 0, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %88

88:                                               ; preds = %87, %86, %66
  %89 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

; Function Attrs: mustprogress noinline optnone uwtable
define weak_odr dso_local noundef i32 @_Z16writeNStage2DDWTIfEiPT_iiiPKcS3_(float* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8* noundef %4, i8* noundef %5) #0 comdat {
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.dimensions*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store float* %0, float** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %22, align 4
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 32
  %34 = call noalias i8* @malloc(i64 noundef %33) #10
  %35 = bitcast i8* %34 to %struct.dimensions*
  store %struct.dimensions* %35, %struct.dimensions** %23, align 8
  %36 = load i32, i32* %9, align 4
  %37 = srem i32 %36, 2
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %6
  %40 = load i32, i32* %9, align 4
  %41 = sdiv i32 %40, 2
  %42 = add nsw i32 %41, 1
  br label %46

43:                                               ; preds = %6
  %44 = load i32, i32* %9, align 4
  %45 = sdiv i32 %44, 2
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi i32 [ %42, %39 ], [ %45, %43 ]
  %48 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %49 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %48, i64 0
  %50 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.band, %struct.band* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* %10, align 4
  %53 = srem i32 %52, 2
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load i32, i32* %10, align 4
  %57 = sdiv i32 %56, 2
  %58 = add nsw i32 %57, 1
  br label %62

59:                                               ; preds = %46
  %60 = load i32, i32* %10, align 4
  %61 = sdiv i32 %60, 2
  br label %62

62:                                               ; preds = %59, %55
  %63 = phi i32 [ %58, %55 ], [ %61, %59 ]
  %64 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %65 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %64, i64 0
  %66 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.band, %struct.band* %66, i32 0, i32 1
  store i32 %63, i32* %67, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %70 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %69, i64 0
  %71 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.band, %struct.band* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %68, %73
  %75 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %76 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %75, i64 0
  %77 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.band, %struct.band* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 4
  %79 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %80 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %79, i64 0
  %81 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.band, %struct.band* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %85 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %84, i64 0
  %86 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.band, %struct.band* %86, i32 0, i32 1
  store i32 %83, i32* %87, align 4
  %88 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %89 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %88, i64 0
  %90 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.band, %struct.band* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %94 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %93, i64 0
  %95 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.band, %struct.band* %95, i32 0, i32 0
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %99 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %98, i64 0
  %100 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.band, %struct.band* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %97, %102
  %104 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %105 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %104, i64 0
  %106 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.band, %struct.band* %106, i32 0, i32 1
  store i32 %103, i32* %107, align 4
  %108 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %109 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %108, i64 0
  %110 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.band, %struct.band* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %114 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %113, i64 0
  %115 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.band, %struct.band* %115, i32 0, i32 0
  store i32 %112, i32* %116, align 4
  %117 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %118 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %117, i64 0
  %119 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.band, %struct.band* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %123 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %122, i64 0
  %124 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.band, %struct.band* %124, i32 0, i32 1
  store i32 %121, i32* %125, align 4
  store i32 1, i32* %17, align 4
  br label %126

126:                                              ; preds = %305, %62
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %308

130:                                              ; preds = %126
  %131 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %132 = load i32, i32* %17, align 4
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %131, i64 %134
  %136 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.band, %struct.band* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = srem i32 %138, 2
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %130
  %142 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %143 = load i32, i32* %17, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %142, i64 %145
  %147 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.band, %struct.band* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = sdiv i32 %149, 2
  %151 = add nsw i32 %150, 1
  br label %162

152:                                              ; preds = %130
  %153 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %154 = load i32, i32* %17, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %153, i64 %156
  %158 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.band, %struct.band* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = sdiv i32 %160, 2
  br label %162

162:                                              ; preds = %152, %141
  %163 = phi i32 [ %151, %141 ], [ %161, %152 ]
  %164 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %165 = load i32, i32* %17, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %164, i64 %166
  %168 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.band, %struct.band* %168, i32 0, i32 0
  store i32 %163, i32* %169, align 4
  %170 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %171 = load i32, i32* %17, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %170, i64 %173
  %175 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.band, %struct.band* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = srem i32 %177, 2
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %162
  %181 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %182 = load i32, i32* %17, align 4
  %183 = sub nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %181, i64 %184
  %186 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.band, %struct.band* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = sdiv i32 %188, 2
  %190 = add nsw i32 %189, 1
  br label %201

191:                                              ; preds = %162
  %192 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %193 = load i32, i32* %17, align 4
  %194 = sub nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %192, i64 %195
  %197 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.band, %struct.band* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = sdiv i32 %199, 2
  br label %201

201:                                              ; preds = %191, %180
  %202 = phi i32 [ %190, %180 ], [ %200, %191 ]
  %203 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %204 = load i32, i32* %17, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %203, i64 %205
  %207 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.band, %struct.band* %207, i32 0, i32 1
  store i32 %202, i32* %208, align 4
  %209 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %210 = load i32, i32* %17, align 4
  %211 = sub nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %209, i64 %212
  %214 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.band, %struct.band* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %218 = load i32, i32* %17, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %217, i64 %219
  %221 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.band, %struct.band* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = sub nsw i32 %216, %223
  %225 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %226 = load i32, i32* %17, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %225, i64 %227
  %229 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.band, %struct.band* %229, i32 0, i32 0
  store i32 %224, i32* %230, align 4
  %231 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %232 = load i32, i32* %17, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %231, i64 %233
  %235 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.band, %struct.band* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %239 = load i32, i32* %17, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %238, i64 %240
  %242 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.band, %struct.band* %242, i32 0, i32 1
  store i32 %237, i32* %243, align 4
  %244 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %245 = load i32, i32* %17, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %244, i64 %246
  %248 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.band, %struct.band* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %252 = load i32, i32* %17, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %251, i64 %253
  %255 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.band, %struct.band* %255, i32 0, i32 0
  store i32 %250, i32* %256, align 4
  %257 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %258 = load i32, i32* %17, align 4
  %259 = sub nsw i32 %258, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %257, i64 %260
  %262 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.band, %struct.band* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %266 = load i32, i32* %17, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %265, i64 %267
  %269 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.band, %struct.band* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = sub nsw i32 %264, %271
  %273 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %274 = load i32, i32* %17, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %273, i64 %275
  %277 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.band, %struct.band* %277, i32 0, i32 1
  store i32 %272, i32* %278, align 4
  %279 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %280 = load i32, i32* %17, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %279, i64 %281
  %283 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.band, %struct.band* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %287 = load i32, i32* %17, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %286, i64 %288
  %290 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.band, %struct.band* %290, i32 0, i32 0
  store i32 %285, i32* %291, align 4
  %292 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %293 = load i32, i32* %17, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %292, i64 %294
  %296 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.band, %struct.band* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %300 = load i32, i32* %17, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %299, i64 %301
  %303 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %302, i32 0, i32 3
  %304 = getelementptr inbounds %struct.band, %struct.band* %303, i32 0, i32 1
  store i32 %298, i32* %304, align 4
  br label %305

305:                                              ; preds = %201
  %306 = load i32, i32* %17, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %17, align 4
  br label %126, !llvm.loop !9

308:                                              ; preds = %126
  %309 = load i32, i32* %22, align 4
  %310 = sext i32 %309 to i64
  %311 = mul i64 %310, 4
  %312 = trunc i64 %311 to i32
  store i32 %312, i32* %19, align 4
  %313 = bitcast float** %15 to i8**
  %314 = load i32, i32* %19, align 4
  %315 = sext i32 %314 to i64
  %316 = call noundef i32 @_ZL13hipHostMallocIvE10hipError_tPPT_mj(i8** noundef %313, i64 noundef %315, i32 noundef 0)
  %317 = load i32, i32* %19, align 4
  %318 = sext i32 %317 to i64
  %319 = call noalias i8* @malloc(i64 noundef %318) #10
  %320 = bitcast i8* %319 to float*
  store float* %320, float** %16, align 8
  %321 = load float*, float** %15, align 8
  %322 = bitcast float* %321 to i8*
  %323 = load i32, i32* %19, align 4
  %324 = sext i32 %323 to i64
  call void @llvm.memset.p0i8.i64(i8* align 4 %322, i8 0, i64 %324, i1 false)
  %325 = load float*, float** %16, align 8
  %326 = bitcast float* %325 to i8*
  %327 = load i32, i32* %19, align 4
  %328 = sext i32 %327 to i64
  call void @llvm.memset.p0i8.i64(i8* align 4 %326, i8 0, i64 %328, i1 false)
  %329 = load i32, i32* %22, align 4
  %330 = sext i32 %329 to i64
  %331 = call noalias i8* @malloc(i64 noundef %330) #10
  store i8* %331, i8** %14, align 8
  %332 = load float*, float** %15, align 8
  %333 = bitcast float* %332 to i8*
  %334 = load float*, float** %8, align 8
  %335 = bitcast float* %334 to i8*
  %336 = load i32, i32* %19, align 4
  %337 = sext i32 %336 to i64
  %338 = call i32 @hipMemcpy(i8* noundef %333, i8* noundef %335, i64 noundef %337, i32 noundef 2)
  %339 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %340 = load i32, i32* %11, align 4
  %341 = sub nsw i32 %340, 1
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %339, i64 %342
  %344 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.band, %struct.band* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = sext i32 %346 to i64
  %348 = mul i64 %347, 4
  %349 = trunc i64 %348 to i32
  store i32 %349, i32* %19, align 4
  store i32 0, i32* %17, align 4
  br label %350

350:                                              ; preds = %385, %308
  %351 = load i32, i32* %17, align 4
  %352 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %353 = load i32, i32* %11, align 4
  %354 = sub nsw i32 %353, 1
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %352, i64 %355
  %357 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.band, %struct.band* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = icmp slt i32 %351, %359
  br i1 %360, label %361, label %388

361:                                              ; preds = %350
  %362 = load float*, float** %16, align 8
  %363 = load i32, i32* %17, align 4
  %364 = load i32, i32* %9, align 4
  %365 = mul nsw i32 %363, %364
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds float, float* %362, i64 %366
  %368 = bitcast float* %367 to i8*
  %369 = load float*, float** %15, align 8
  %370 = load i32, i32* %17, align 4
  %371 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %372 = load i32, i32* %11, align 4
  %373 = sub nsw i32 %372, 1
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %371, i64 %374
  %376 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.band, %struct.band* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = mul nsw i32 %370, %378
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds float, float* %369, i64 %380
  %382 = bitcast float* %381 to i8*
  %383 = load i32, i32* %19, align 4
  %384 = sext i32 %383 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %368, i8* align 4 %382, i64 %384, i1 false)
  br label %385

385:                                              ; preds = %361
  %386 = load i32, i32* %17, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %17, align 4
  br label %350, !llvm.loop !10

388:                                              ; preds = %350
  %389 = load i32, i32* %11, align 4
  %390 = sub nsw i32 %389, 1
  store i32 %390, i32* %18, align 4
  br label %391

391:                                              ; preds = %630, %388
  %392 = load i32, i32* %18, align 4
  %393 = icmp sge i32 %392, 0
  br i1 %393, label %394, label %633

394:                                              ; preds = %391
  %395 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %396 = load i32, i32* %18, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %395, i64 %397
  %399 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.band, %struct.band* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 4
  %402 = sext i32 %401 to i64
  %403 = mul i64 %402, 4
  %404 = trunc i64 %403 to i32
  store i32 %404, i32* %19, align 4
  %405 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %406 = load i32, i32* %18, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %405, i64 %407
  %409 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.band, %struct.band* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %413 = load i32, i32* %18, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %412, i64 %414
  %416 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.band, %struct.band* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = mul nsw i32 %411, %418
  store i32 %419, i32* %20, align 4
  store i32 0, i32* %17, align 4
  br label %420

420:                                              ; preds = %465, %394
  %421 = load i32, i32* %17, align 4
  %422 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %423 = load i32, i32* %18, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %422, i64 %424
  %426 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.band, %struct.band* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = icmp slt i32 %421, %428
  br i1 %429, label %430, label %468

430:                                              ; preds = %420
  %431 = load float*, float** %16, align 8
  %432 = load i32, i32* %17, align 4
  %433 = load i32, i32* %9, align 4
  %434 = mul nsw i32 %432, %433
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds float, float* %431, i64 %435
  %437 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %438 = load i32, i32* %18, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %437, i64 %439
  %441 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.band, %struct.band* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds float, float* %436, i64 %444
  %446 = bitcast float* %445 to i8*
  %447 = load float*, float** %15, align 8
  %448 = load i32, i32* %20, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds float, float* %447, i64 %449
  %451 = load i32, i32* %17, align 4
  %452 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %453 = load i32, i32* %18, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %452, i64 %454
  %456 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %455, i32 0, i32 1
  %457 = getelementptr inbounds %struct.band, %struct.band* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 4
  %459 = mul nsw i32 %451, %458
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds float, float* %450, i64 %460
  %462 = bitcast float* %461 to i8*
  %463 = load i32, i32* %19, align 4
  %464 = sext i32 %463 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %446, i8* align 4 %462, i64 %464, i1 false)
  br label %465

465:                                              ; preds = %430
  %466 = load i32, i32* %17, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %17, align 4
  br label %420, !llvm.loop !11

468:                                              ; preds = %420
  %469 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %470 = load i32, i32* %18, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %469, i64 %471
  %473 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %472, i32 0, i32 2
  %474 = getelementptr inbounds %struct.band, %struct.band* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 4
  %476 = sext i32 %475 to i64
  %477 = mul i64 %476, 4
  %478 = trunc i64 %477 to i32
  store i32 %478, i32* %19, align 4
  %479 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %480 = load i32, i32* %18, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %479, i64 %481
  %483 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %482, i32 0, i32 1
  %484 = getelementptr inbounds %struct.band, %struct.band* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 4
  %486 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %487 = load i32, i32* %18, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %486, i64 %488
  %490 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %489, i32 0, i32 1
  %491 = getelementptr inbounds %struct.band, %struct.band* %490, i32 0, i32 1
  %492 = load i32, i32* %491, align 4
  %493 = mul nsw i32 %485, %492
  %494 = load i32, i32* %20, align 4
  %495 = add nsw i32 %494, %493
  store i32 %495, i32* %20, align 4
  %496 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %497 = load i32, i32* %18, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %496, i64 %498
  %500 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %499, i32 0, i32 0
  %501 = getelementptr inbounds %struct.band, %struct.band* %500, i32 0, i32 1
  %502 = load i32, i32* %501, align 4
  store i32 %502, i32* %21, align 4
  store i32 0, i32* %17, align 4
  br label %503

503:                                              ; preds = %541, %468
  %504 = load i32, i32* %17, align 4
  %505 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %506 = load i32, i32* %18, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %505, i64 %507
  %509 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %508, i32 0, i32 1
  %510 = getelementptr inbounds %struct.band, %struct.band* %509, i32 0, i32 1
  %511 = load i32, i32* %510, align 4
  %512 = icmp slt i32 %504, %511
  br i1 %512, label %513, label %544

513:                                              ; preds = %503
  %514 = load float*, float** %16, align 8
  %515 = load i32, i32* %21, align 4
  %516 = load i32, i32* %17, align 4
  %517 = add nsw i32 %515, %516
  %518 = load i32, i32* %9, align 4
  %519 = mul nsw i32 %517, %518
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds float, float* %514, i64 %520
  %522 = bitcast float* %521 to i8*
  %523 = load float*, float** %15, align 8
  %524 = load i32, i32* %20, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds float, float* %523, i64 %525
  %527 = load i32, i32* %17, align 4
  %528 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %529 = load i32, i32* %18, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %528, i64 %530
  %532 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %531, i32 0, i32 2
  %533 = getelementptr inbounds %struct.band, %struct.band* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 4
  %535 = mul nsw i32 %527, %534
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds float, float* %526, i64 %536
  %538 = bitcast float* %537 to i8*
  %539 = load i32, i32* %19, align 4
  %540 = sext i32 %539 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %522, i8* align 4 %538, i64 %540, i1 false)
  br label %541

541:                                              ; preds = %513
  %542 = load i32, i32* %17, align 4
  %543 = add nsw i32 %542, 1
  store i32 %543, i32* %17, align 4
  br label %503, !llvm.loop !12

544:                                              ; preds = %503
  %545 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %546 = load i32, i32* %18, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %545, i64 %547
  %549 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %548, i32 0, i32 3
  %550 = getelementptr inbounds %struct.band, %struct.band* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 4
  %552 = sext i32 %551 to i64
  %553 = mul i64 %552, 4
  %554 = trunc i64 %553 to i32
  store i32 %554, i32* %19, align 4
  %555 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %556 = load i32, i32* %18, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %555, i64 %557
  %559 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %558, i32 0, i32 2
  %560 = getelementptr inbounds %struct.band, %struct.band* %559, i32 0, i32 0
  %561 = load i32, i32* %560, align 4
  %562 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %563 = load i32, i32* %18, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %562, i64 %564
  %566 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %565, i32 0, i32 2
  %567 = getelementptr inbounds %struct.band, %struct.band* %566, i32 0, i32 1
  %568 = load i32, i32* %567, align 4
  %569 = mul nsw i32 %561, %568
  %570 = load i32, i32* %20, align 4
  %571 = add nsw i32 %570, %569
  store i32 %571, i32* %20, align 4
  %572 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %573 = load i32, i32* %18, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %572, i64 %574
  %576 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %575, i32 0, i32 1
  %577 = getelementptr inbounds %struct.band, %struct.band* %576, i32 0, i32 1
  %578 = load i32, i32* %577, align 4
  store i32 %578, i32* %21, align 4
  store i32 0, i32* %17, align 4
  br label %579

579:                                              ; preds = %626, %544
  %580 = load i32, i32* %17, align 4
  %581 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %582 = load i32, i32* %18, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %581, i64 %583
  %585 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %584, i32 0, i32 3
  %586 = getelementptr inbounds %struct.band, %struct.band* %585, i32 0, i32 1
  %587 = load i32, i32* %586, align 4
  %588 = icmp slt i32 %580, %587
  br i1 %588, label %589, label %629

589:                                              ; preds = %579
  %590 = load float*, float** %16, align 8
  %591 = load i32, i32* %21, align 4
  %592 = load i32, i32* %17, align 4
  %593 = add nsw i32 %591, %592
  %594 = load i32, i32* %9, align 4
  %595 = mul nsw i32 %593, %594
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds float, float* %590, i64 %596
  %598 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %599 = load i32, i32* %18, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %598, i64 %600
  %602 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %601, i32 0, i32 2
  %603 = getelementptr inbounds %struct.band, %struct.band* %602, i32 0, i32 0
  %604 = load i32, i32* %603, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds float, float* %597, i64 %605
  %607 = bitcast float* %606 to i8*
  %608 = load float*, float** %15, align 8
  %609 = load i32, i32* %20, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds float, float* %608, i64 %610
  %612 = load i32, i32* %17, align 4
  %613 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %614 = load i32, i32* %18, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %613, i64 %615
  %617 = getelementptr inbounds %struct.dimensions, %struct.dimensions* %616, i32 0, i32 3
  %618 = getelementptr inbounds %struct.band, %struct.band* %617, i32 0, i32 0
  %619 = load i32, i32* %618, align 4
  %620 = mul nsw i32 %612, %619
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds float, float* %611, i64 %621
  %623 = bitcast float* %622 to i8*
  %624 = load i32, i32* %19, align 4
  %625 = sext i32 %624 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %607, i8* align 4 %623, i64 %625, i1 false)
  br label %626

626:                                              ; preds = %589
  %627 = load i32, i32* %17, align 4
  %628 = add nsw i32 %627, 1
  store i32 %628, i32* %17, align 4
  br label %579, !llvm.loop !13

629:                                              ; preds = %579
  br label %630

630:                                              ; preds = %629
  %631 = load i32, i32* %18, align 4
  %632 = add nsw i32 %631, -1
  store i32 %632, i32* %18, align 4
  br label %391, !llvm.loop !14

633:                                              ; preds = %391
  %634 = load i8*, i8** %14, align 8
  %635 = load float*, float** %16, align 8
  %636 = load i32, i32* %22, align 4
  call void @_Z13samplesToCharPhPfi(i8* noundef %634, float* noundef %635, i32 noundef %636)
  %637 = load i8*, i8** %12, align 8
  %638 = call i64 @strlen(i8* noundef %637) #11
  %639 = load i8*, i8** %13, align 8
  %640 = call i64 @strlen(i8* noundef %639) #11
  %641 = add i64 %638, %640
  %642 = call i8* @llvm.stacksave()
  store i8* %642, i8** %24, align 8
  %643 = alloca i8, i64 %641, align 16
  store i64 %641, i64* %25, align 8
  %644 = load i8*, i8** %12, align 8
  %645 = call i8* @strcpy(i8* noundef %643, i8* noundef %644) #12
  %646 = load i8*, i8** %12, align 8
  %647 = call i64 @strlen(i8* noundef %646) #11
  %648 = getelementptr inbounds i8, i8* %643, i64 %647
  %649 = load i8*, i8** %13, align 8
  %650 = call i8* @strcpy(i8* noundef %648, i8* noundef %649) #12
  %651 = call i32 (i8*, i32, ...) @open(i8* noundef %643, i32 noundef 65, i32 noundef 420)
  store i32 %651, i32* %17, align 4
  %652 = load i32, i32* %17, align 4
  %653 = icmp eq i32 %652, -1
  br i1 %653, label %654, label %657

654:                                              ; preds = %633
  %655 = call i32* @__errno_location() #13
  %656 = load i32, i32* %655, align 4
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %656, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* noundef %643)
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %26, align 4
  br label %680

657:                                              ; preds = %633
  %658 = load i32, i32* %9, align 4
  %659 = load i32, i32* %10, align 4
  %660 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef %643, i32 noundef %658, i32 noundef %659)
  %661 = load i32, i32* %17, align 4
  %662 = load i8*, i8** %14, align 8
  %663 = load i32, i32* %22, align 4
  %664 = sext i32 %663 to i64
  %665 = call i64 @write(i32 noundef %661, i8* noundef %662, i64 noundef %664)
  store i64 %665, i64* %27, align 8
  %666 = load i32, i32* %17, align 4
  %667 = call i32 @close(i32 noundef %666)
  %668 = load float*, float** %15, align 8
  %669 = bitcast float* %668 to i8*
  %670 = call i32 @hipHostFree(i8* noundef %669)
  %671 = load float*, float** %16, align 8
  %672 = bitcast float* %671 to i8*
  call void @free(i8* noundef %672) #12
  %673 = load i8*, i8** %14, align 8
  call void @free(i8* noundef %673) #12
  %674 = load %struct.dimensions*, %struct.dimensions** %23, align 8
  %675 = bitcast %struct.dimensions* %674 to i8*
  call void @free(i8* noundef %675) #12
  %676 = load i64, i64* %27, align 8
  %677 = icmp eq i64 %676, 0
  br i1 %677, label %678, label %679

678:                                              ; preds = %657
  store i32 1, i32* %7, align 4
  store i32 1, i32* %26, align 4
  br label %680

679:                                              ; preds = %657
  store i32 0, i32* %7, align 4
  store i32 1, i32* %26, align 4
  br label %680

680:                                              ; preds = %679, %678, %654
  %681 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %681)
  %682 = load i32, i32* %7, align 4
  ret i32 %682
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline optnone uwtable
define weak_odr dso_local noundef i32 @_Z16writeNStage2DDWTIiEiPT_iiiPKcS3_(i32* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8* noundef %4, i8* noundef %5) #0 comdat {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.dimensions.0*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %22, align 4
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 32
  %34 = call noalias i8* @malloc(i64 noundef %33) #10
  %35 = bitcast i8* %34 to %struct.dimensions.0*
  store %struct.dimensions.0* %35, %struct.dimensions.0** %23, align 8
  %36 = load i32, i32* %9, align 4
  %37 = srem i32 %36, 2
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %6
  %40 = load i32, i32* %9, align 4
  %41 = sdiv i32 %40, 2
  %42 = add nsw i32 %41, 1
  br label %46

43:                                               ; preds = %6
  %44 = load i32, i32* %9, align 4
  %45 = sdiv i32 %44, 2
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi i32 [ %42, %39 ], [ %45, %43 ]
  %48 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %49 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %48, i64 0
  %50 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.band.1, %struct.band.1* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* %10, align 4
  %53 = srem i32 %52, 2
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load i32, i32* %10, align 4
  %57 = sdiv i32 %56, 2
  %58 = add nsw i32 %57, 1
  br label %62

59:                                               ; preds = %46
  %60 = load i32, i32* %10, align 4
  %61 = sdiv i32 %60, 2
  br label %62

62:                                               ; preds = %59, %55
  %63 = phi i32 [ %58, %55 ], [ %61, %59 ]
  %64 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %65 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %64, i64 0
  %66 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.band.1, %struct.band.1* %66, i32 0, i32 1
  store i32 %63, i32* %67, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %70 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %69, i64 0
  %71 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.band.1, %struct.band.1* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %68, %73
  %75 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %76 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %75, i64 0
  %77 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.band.1, %struct.band.1* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 4
  %79 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %80 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %79, i64 0
  %81 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.band.1, %struct.band.1* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %85 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %84, i64 0
  %86 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.band.1, %struct.band.1* %86, i32 0, i32 1
  store i32 %83, i32* %87, align 4
  %88 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %89 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %88, i64 0
  %90 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.band.1, %struct.band.1* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %94 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %93, i64 0
  %95 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.band.1, %struct.band.1* %95, i32 0, i32 0
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %99 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %98, i64 0
  %100 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.band.1, %struct.band.1* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %97, %102
  %104 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %105 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %104, i64 0
  %106 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.band.1, %struct.band.1* %106, i32 0, i32 1
  store i32 %103, i32* %107, align 4
  %108 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %109 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %108, i64 0
  %110 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.band.1, %struct.band.1* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %114 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %113, i64 0
  %115 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.band.1, %struct.band.1* %115, i32 0, i32 0
  store i32 %112, i32* %116, align 4
  %117 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %118 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %117, i64 0
  %119 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.band.1, %struct.band.1* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %123 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %122, i64 0
  %124 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.band.1, %struct.band.1* %124, i32 0, i32 1
  store i32 %121, i32* %125, align 4
  store i32 1, i32* %17, align 4
  br label %126

126:                                              ; preds = %305, %62
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %308

130:                                              ; preds = %126
  %131 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %132 = load i32, i32* %17, align 4
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %131, i64 %134
  %136 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.band.1, %struct.band.1* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = srem i32 %138, 2
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %130
  %142 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %143 = load i32, i32* %17, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %142, i64 %145
  %147 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.band.1, %struct.band.1* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = sdiv i32 %149, 2
  %151 = add nsw i32 %150, 1
  br label %162

152:                                              ; preds = %130
  %153 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %154 = load i32, i32* %17, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %153, i64 %156
  %158 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.band.1, %struct.band.1* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = sdiv i32 %160, 2
  br label %162

162:                                              ; preds = %152, %141
  %163 = phi i32 [ %151, %141 ], [ %161, %152 ]
  %164 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %165 = load i32, i32* %17, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %164, i64 %166
  %168 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.band.1, %struct.band.1* %168, i32 0, i32 0
  store i32 %163, i32* %169, align 4
  %170 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %171 = load i32, i32* %17, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %170, i64 %173
  %175 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.band.1, %struct.band.1* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = srem i32 %177, 2
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %162
  %181 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %182 = load i32, i32* %17, align 4
  %183 = sub nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %181, i64 %184
  %186 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.band.1, %struct.band.1* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = sdiv i32 %188, 2
  %190 = add nsw i32 %189, 1
  br label %201

191:                                              ; preds = %162
  %192 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %193 = load i32, i32* %17, align 4
  %194 = sub nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %192, i64 %195
  %197 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.band.1, %struct.band.1* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = sdiv i32 %199, 2
  br label %201

201:                                              ; preds = %191, %180
  %202 = phi i32 [ %190, %180 ], [ %200, %191 ]
  %203 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %204 = load i32, i32* %17, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %203, i64 %205
  %207 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.band.1, %struct.band.1* %207, i32 0, i32 1
  store i32 %202, i32* %208, align 4
  %209 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %210 = load i32, i32* %17, align 4
  %211 = sub nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %209, i64 %212
  %214 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.band.1, %struct.band.1* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %218 = load i32, i32* %17, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %217, i64 %219
  %221 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.band.1, %struct.band.1* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = sub nsw i32 %216, %223
  %225 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %226 = load i32, i32* %17, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %225, i64 %227
  %229 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.band.1, %struct.band.1* %229, i32 0, i32 0
  store i32 %224, i32* %230, align 4
  %231 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %232 = load i32, i32* %17, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %231, i64 %233
  %235 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.band.1, %struct.band.1* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %239 = load i32, i32* %17, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %238, i64 %240
  %242 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.band.1, %struct.band.1* %242, i32 0, i32 1
  store i32 %237, i32* %243, align 4
  %244 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %245 = load i32, i32* %17, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %244, i64 %246
  %248 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.band.1, %struct.band.1* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %252 = load i32, i32* %17, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %251, i64 %253
  %255 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.band.1, %struct.band.1* %255, i32 0, i32 0
  store i32 %250, i32* %256, align 4
  %257 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %258 = load i32, i32* %17, align 4
  %259 = sub nsw i32 %258, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %257, i64 %260
  %262 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.band.1, %struct.band.1* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %266 = load i32, i32* %17, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %265, i64 %267
  %269 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.band.1, %struct.band.1* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = sub nsw i32 %264, %271
  %273 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %274 = load i32, i32* %17, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %273, i64 %275
  %277 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.band.1, %struct.band.1* %277, i32 0, i32 1
  store i32 %272, i32* %278, align 4
  %279 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %280 = load i32, i32* %17, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %279, i64 %281
  %283 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.band.1, %struct.band.1* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %287 = load i32, i32* %17, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %286, i64 %288
  %290 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.band.1, %struct.band.1* %290, i32 0, i32 0
  store i32 %285, i32* %291, align 4
  %292 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %293 = load i32, i32* %17, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %292, i64 %294
  %296 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.band.1, %struct.band.1* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %300 = load i32, i32* %17, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %299, i64 %301
  %303 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %302, i32 0, i32 3
  %304 = getelementptr inbounds %struct.band.1, %struct.band.1* %303, i32 0, i32 1
  store i32 %298, i32* %304, align 4
  br label %305

305:                                              ; preds = %201
  %306 = load i32, i32* %17, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %17, align 4
  br label %126, !llvm.loop !15

308:                                              ; preds = %126
  %309 = load i32, i32* %22, align 4
  %310 = sext i32 %309 to i64
  %311 = mul i64 %310, 4
  %312 = trunc i64 %311 to i32
  store i32 %312, i32* %19, align 4
  %313 = bitcast i32** %15 to i8**
  %314 = load i32, i32* %19, align 4
  %315 = sext i32 %314 to i64
  %316 = call noundef i32 @_ZL13hipHostMallocIvE10hipError_tPPT_mj(i8** noundef %313, i64 noundef %315, i32 noundef 0)
  %317 = load i32, i32* %19, align 4
  %318 = sext i32 %317 to i64
  %319 = call noalias i8* @malloc(i64 noundef %318) #10
  %320 = bitcast i8* %319 to i32*
  store i32* %320, i32** %16, align 8
  %321 = load i32*, i32** %15, align 8
  %322 = bitcast i32* %321 to i8*
  %323 = load i32, i32* %19, align 4
  %324 = sext i32 %323 to i64
  call void @llvm.memset.p0i8.i64(i8* align 4 %322, i8 0, i64 %324, i1 false)
  %325 = load i32*, i32** %16, align 8
  %326 = bitcast i32* %325 to i8*
  %327 = load i32, i32* %19, align 4
  %328 = sext i32 %327 to i64
  call void @llvm.memset.p0i8.i64(i8* align 4 %326, i8 0, i64 %328, i1 false)
  %329 = load i32, i32* %22, align 4
  %330 = sext i32 %329 to i64
  %331 = call noalias i8* @malloc(i64 noundef %330) #10
  store i8* %331, i8** %14, align 8
  %332 = load i32*, i32** %15, align 8
  %333 = bitcast i32* %332 to i8*
  %334 = load i32*, i32** %8, align 8
  %335 = bitcast i32* %334 to i8*
  %336 = load i32, i32* %19, align 4
  %337 = sext i32 %336 to i64
  %338 = call i32 @hipMemcpy(i8* noundef %333, i8* noundef %335, i64 noundef %337, i32 noundef 2)
  %339 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %340 = load i32, i32* %11, align 4
  %341 = sub nsw i32 %340, 1
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %339, i64 %342
  %344 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.band.1, %struct.band.1* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = sext i32 %346 to i64
  %348 = mul i64 %347, 4
  %349 = trunc i64 %348 to i32
  store i32 %349, i32* %19, align 4
  store i32 0, i32* %17, align 4
  br label %350

350:                                              ; preds = %385, %308
  %351 = load i32, i32* %17, align 4
  %352 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %353 = load i32, i32* %11, align 4
  %354 = sub nsw i32 %353, 1
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %352, i64 %355
  %357 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.band.1, %struct.band.1* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = icmp slt i32 %351, %359
  br i1 %360, label %361, label %388

361:                                              ; preds = %350
  %362 = load i32*, i32** %16, align 8
  %363 = load i32, i32* %17, align 4
  %364 = load i32, i32* %9, align 4
  %365 = mul nsw i32 %363, %364
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %362, i64 %366
  %368 = bitcast i32* %367 to i8*
  %369 = load i32*, i32** %15, align 8
  %370 = load i32, i32* %17, align 4
  %371 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %372 = load i32, i32* %11, align 4
  %373 = sub nsw i32 %372, 1
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %371, i64 %374
  %376 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.band.1, %struct.band.1* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = mul nsw i32 %370, %378
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %369, i64 %380
  %382 = bitcast i32* %381 to i8*
  %383 = load i32, i32* %19, align 4
  %384 = sext i32 %383 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %368, i8* align 4 %382, i64 %384, i1 false)
  br label %385

385:                                              ; preds = %361
  %386 = load i32, i32* %17, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %17, align 4
  br label %350, !llvm.loop !16

388:                                              ; preds = %350
  %389 = load i32, i32* %11, align 4
  %390 = sub nsw i32 %389, 1
  store i32 %390, i32* %18, align 4
  br label %391

391:                                              ; preds = %630, %388
  %392 = load i32, i32* %18, align 4
  %393 = icmp sge i32 %392, 0
  br i1 %393, label %394, label %633

394:                                              ; preds = %391
  %395 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %396 = load i32, i32* %18, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %395, i64 %397
  %399 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.band.1, %struct.band.1* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 4
  %402 = sext i32 %401 to i64
  %403 = mul i64 %402, 4
  %404 = trunc i64 %403 to i32
  store i32 %404, i32* %19, align 4
  %405 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %406 = load i32, i32* %18, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %405, i64 %407
  %409 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.band.1, %struct.band.1* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %413 = load i32, i32* %18, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %412, i64 %414
  %416 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.band.1, %struct.band.1* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = mul nsw i32 %411, %418
  store i32 %419, i32* %20, align 4
  store i32 0, i32* %17, align 4
  br label %420

420:                                              ; preds = %465, %394
  %421 = load i32, i32* %17, align 4
  %422 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %423 = load i32, i32* %18, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %422, i64 %424
  %426 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.band.1, %struct.band.1* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = icmp slt i32 %421, %428
  br i1 %429, label %430, label %468

430:                                              ; preds = %420
  %431 = load i32*, i32** %16, align 8
  %432 = load i32, i32* %17, align 4
  %433 = load i32, i32* %9, align 4
  %434 = mul nsw i32 %432, %433
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, i32* %431, i64 %435
  %437 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %438 = load i32, i32* %18, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %437, i64 %439
  %441 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.band.1, %struct.band.1* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32, i32* %436, i64 %444
  %446 = bitcast i32* %445 to i8*
  %447 = load i32*, i32** %15, align 8
  %448 = load i32, i32* %20, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i32, i32* %447, i64 %449
  %451 = load i32, i32* %17, align 4
  %452 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %453 = load i32, i32* %18, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %452, i64 %454
  %456 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %455, i32 0, i32 1
  %457 = getelementptr inbounds %struct.band.1, %struct.band.1* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 4
  %459 = mul nsw i32 %451, %458
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %450, i64 %460
  %462 = bitcast i32* %461 to i8*
  %463 = load i32, i32* %19, align 4
  %464 = sext i32 %463 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %446, i8* align 4 %462, i64 %464, i1 false)
  br label %465

465:                                              ; preds = %430
  %466 = load i32, i32* %17, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %17, align 4
  br label %420, !llvm.loop !17

468:                                              ; preds = %420
  %469 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %470 = load i32, i32* %18, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %469, i64 %471
  %473 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %472, i32 0, i32 2
  %474 = getelementptr inbounds %struct.band.1, %struct.band.1* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 4
  %476 = sext i32 %475 to i64
  %477 = mul i64 %476, 4
  %478 = trunc i64 %477 to i32
  store i32 %478, i32* %19, align 4
  %479 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %480 = load i32, i32* %18, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %479, i64 %481
  %483 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %482, i32 0, i32 1
  %484 = getelementptr inbounds %struct.band.1, %struct.band.1* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 4
  %486 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %487 = load i32, i32* %18, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %486, i64 %488
  %490 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %489, i32 0, i32 1
  %491 = getelementptr inbounds %struct.band.1, %struct.band.1* %490, i32 0, i32 1
  %492 = load i32, i32* %491, align 4
  %493 = mul nsw i32 %485, %492
  %494 = load i32, i32* %20, align 4
  %495 = add nsw i32 %494, %493
  store i32 %495, i32* %20, align 4
  %496 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %497 = load i32, i32* %18, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %496, i64 %498
  %500 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %499, i32 0, i32 0
  %501 = getelementptr inbounds %struct.band.1, %struct.band.1* %500, i32 0, i32 1
  %502 = load i32, i32* %501, align 4
  store i32 %502, i32* %21, align 4
  store i32 0, i32* %17, align 4
  br label %503

503:                                              ; preds = %541, %468
  %504 = load i32, i32* %17, align 4
  %505 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %506 = load i32, i32* %18, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %505, i64 %507
  %509 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %508, i32 0, i32 1
  %510 = getelementptr inbounds %struct.band.1, %struct.band.1* %509, i32 0, i32 1
  %511 = load i32, i32* %510, align 4
  %512 = icmp slt i32 %504, %511
  br i1 %512, label %513, label %544

513:                                              ; preds = %503
  %514 = load i32*, i32** %16, align 8
  %515 = load i32, i32* %21, align 4
  %516 = load i32, i32* %17, align 4
  %517 = add nsw i32 %515, %516
  %518 = load i32, i32* %9, align 4
  %519 = mul nsw i32 %517, %518
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i32, i32* %514, i64 %520
  %522 = bitcast i32* %521 to i8*
  %523 = load i32*, i32** %15, align 8
  %524 = load i32, i32* %20, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i32, i32* %523, i64 %525
  %527 = load i32, i32* %17, align 4
  %528 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %529 = load i32, i32* %18, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %528, i64 %530
  %532 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %531, i32 0, i32 2
  %533 = getelementptr inbounds %struct.band.1, %struct.band.1* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 4
  %535 = mul nsw i32 %527, %534
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds i32, i32* %526, i64 %536
  %538 = bitcast i32* %537 to i8*
  %539 = load i32, i32* %19, align 4
  %540 = sext i32 %539 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %522, i8* align 4 %538, i64 %540, i1 false)
  br label %541

541:                                              ; preds = %513
  %542 = load i32, i32* %17, align 4
  %543 = add nsw i32 %542, 1
  store i32 %543, i32* %17, align 4
  br label %503, !llvm.loop !18

544:                                              ; preds = %503
  %545 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %546 = load i32, i32* %18, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %545, i64 %547
  %549 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %548, i32 0, i32 3
  %550 = getelementptr inbounds %struct.band.1, %struct.band.1* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 4
  %552 = sext i32 %551 to i64
  %553 = mul i64 %552, 4
  %554 = trunc i64 %553 to i32
  store i32 %554, i32* %19, align 4
  %555 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %556 = load i32, i32* %18, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %555, i64 %557
  %559 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %558, i32 0, i32 2
  %560 = getelementptr inbounds %struct.band.1, %struct.band.1* %559, i32 0, i32 0
  %561 = load i32, i32* %560, align 4
  %562 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %563 = load i32, i32* %18, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %562, i64 %564
  %566 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %565, i32 0, i32 2
  %567 = getelementptr inbounds %struct.band.1, %struct.band.1* %566, i32 0, i32 1
  %568 = load i32, i32* %567, align 4
  %569 = mul nsw i32 %561, %568
  %570 = load i32, i32* %20, align 4
  %571 = add nsw i32 %570, %569
  store i32 %571, i32* %20, align 4
  %572 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %573 = load i32, i32* %18, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %572, i64 %574
  %576 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %575, i32 0, i32 1
  %577 = getelementptr inbounds %struct.band.1, %struct.band.1* %576, i32 0, i32 1
  %578 = load i32, i32* %577, align 4
  store i32 %578, i32* %21, align 4
  store i32 0, i32* %17, align 4
  br label %579

579:                                              ; preds = %626, %544
  %580 = load i32, i32* %17, align 4
  %581 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %582 = load i32, i32* %18, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %581, i64 %583
  %585 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %584, i32 0, i32 3
  %586 = getelementptr inbounds %struct.band.1, %struct.band.1* %585, i32 0, i32 1
  %587 = load i32, i32* %586, align 4
  %588 = icmp slt i32 %580, %587
  br i1 %588, label %589, label %629

589:                                              ; preds = %579
  %590 = load i32*, i32** %16, align 8
  %591 = load i32, i32* %21, align 4
  %592 = load i32, i32* %17, align 4
  %593 = add nsw i32 %591, %592
  %594 = load i32, i32* %9, align 4
  %595 = mul nsw i32 %593, %594
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i32, i32* %590, i64 %596
  %598 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %599 = load i32, i32* %18, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %598, i64 %600
  %602 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %601, i32 0, i32 2
  %603 = getelementptr inbounds %struct.band.1, %struct.band.1* %602, i32 0, i32 0
  %604 = load i32, i32* %603, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds i32, i32* %597, i64 %605
  %607 = bitcast i32* %606 to i8*
  %608 = load i32*, i32** %15, align 8
  %609 = load i32, i32* %20, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds i32, i32* %608, i64 %610
  %612 = load i32, i32* %17, align 4
  %613 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %614 = load i32, i32* %18, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %613, i64 %615
  %617 = getelementptr inbounds %struct.dimensions.0, %struct.dimensions.0* %616, i32 0, i32 3
  %618 = getelementptr inbounds %struct.band.1, %struct.band.1* %617, i32 0, i32 0
  %619 = load i32, i32* %618, align 4
  %620 = mul nsw i32 %612, %619
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds i32, i32* %611, i64 %621
  %623 = bitcast i32* %622 to i8*
  %624 = load i32, i32* %19, align 4
  %625 = sext i32 %624 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %607, i8* align 4 %623, i64 %625, i1 false)
  br label %626

626:                                              ; preds = %589
  %627 = load i32, i32* %17, align 4
  %628 = add nsw i32 %627, 1
  store i32 %628, i32* %17, align 4
  br label %579, !llvm.loop !19

629:                                              ; preds = %579
  br label %630

630:                                              ; preds = %629
  %631 = load i32, i32* %18, align 4
  %632 = add nsw i32 %631, -1
  store i32 %632, i32* %18, align 4
  br label %391, !llvm.loop !20

633:                                              ; preds = %391
  %634 = load i8*, i8** %14, align 8
  %635 = load i32*, i32** %16, align 8
  %636 = load i32, i32* %22, align 4
  call void @_Z13samplesToCharPhPii(i8* noundef %634, i32* noundef %635, i32 noundef %636)
  %637 = load i8*, i8** %12, align 8
  %638 = call i64 @strlen(i8* noundef %637) #11
  %639 = load i8*, i8** %13, align 8
  %640 = call i64 @strlen(i8* noundef %639) #11
  %641 = add i64 %638, %640
  %642 = call i8* @llvm.stacksave()
  store i8* %642, i8** %24, align 8
  %643 = alloca i8, i64 %641, align 16
  store i64 %641, i64* %25, align 8
  %644 = load i8*, i8** %12, align 8
  %645 = call i8* @strcpy(i8* noundef %643, i8* noundef %644) #12
  %646 = load i8*, i8** %12, align 8
  %647 = call i64 @strlen(i8* noundef %646) #11
  %648 = getelementptr inbounds i8, i8* %643, i64 %647
  %649 = load i8*, i8** %13, align 8
  %650 = call i8* @strcpy(i8* noundef %648, i8* noundef %649) #12
  %651 = call i32 (i8*, i32, ...) @open(i8* noundef %643, i32 noundef 65, i32 noundef 420)
  store i32 %651, i32* %17, align 4
  %652 = load i32, i32* %17, align 4
  %653 = icmp eq i32 %652, -1
  br i1 %653, label %654, label %657

654:                                              ; preds = %633
  %655 = call i32* @__errno_location() #13
  %656 = load i32, i32* %655, align 4
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %656, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* noundef %643)
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %26, align 4
  br label %680

657:                                              ; preds = %633
  %658 = load i32, i32* %9, align 4
  %659 = load i32, i32* %10, align 4
  %660 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef %643, i32 noundef %658, i32 noundef %659)
  %661 = load i32, i32* %17, align 4
  %662 = load i8*, i8** %14, align 8
  %663 = load i32, i32* %22, align 4
  %664 = sext i32 %663 to i64
  %665 = call i64 @write(i32 noundef %661, i8* noundef %662, i64 noundef %664)
  store i64 %665, i64* %27, align 8
  %666 = load i32, i32* %17, align 4
  %667 = call i32 @close(i32 noundef %666)
  %668 = load i32*, i32** %15, align 8
  %669 = bitcast i32* %668 to i8*
  %670 = call i32 @hipHostFree(i8* noundef %669)
  %671 = load i32*, i32** %16, align 8
  %672 = bitcast i32* %671 to i8*
  call void @free(i8* noundef %672) #12
  %673 = load i8*, i8** %14, align 8
  call void @free(i8* noundef %673) #12
  %674 = load %struct.dimensions.0*, %struct.dimensions.0** %23, align 8
  %675 = bitcast %struct.dimensions.0* %674 to i8*
  call void @free(i8* noundef %675) #12
  %676 = load i64, i64* %27, align 8
  %677 = icmp eq i64 %676, 0
  br i1 %677, label %678, label %679

678:                                              ; preds = %657
  store i32 1, i32* %7, align 4
  store i32 1, i32* %26, align 4
  br label %680

679:                                              ; preds = %657
  store i32 0, i32* %7, align 4
  store i32 1, i32* %26, align 4
  br label %680

680:                                              ; preds = %679, %678, %654
  %681 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %681)
  %682 = load i32, i32* %7, align 4
  ret i32 %682
}

declare void @_ZN8dwt_cuda6fdwt97EPfS0_iii(float* noundef, float* noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare void @_ZN8dwt_cuda6rdwt97EPfS0_iii(float* noundef, float* noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare void @_ZN8dwt_cuda6fdwt53EPiS0_iii(i32* noundef, i32* noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare void @_ZN8dwt_cuda6rdwt53EPiS0_iii(i32* noundef, i32* noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare i32 @hipHostMalloc(i8** noundef, i64 noundef, i32 noundef) #1

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #4 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly nocallback nofree nounwind willreturn }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind readnone willreturn }

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
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
