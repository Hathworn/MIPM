; ModuleID = 'hip/dwt2d/main.cu'
source_filename = "hip/dwt2d/main.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct.hipDeviceProp_t = type { [256 x i8], i64, i64, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.hipDeviceArch_t, i32, i32, i32, i32, i64, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32*, i32*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hipDeviceArch_t = type { i32 }
%struct.dwt = type { i8*, i8*, i8*, i32, i32, i32, i32 }

$_Z10processDWTIfEvP3dwtii = comdat any

$_Z10processDWTIiEvP3dwtii = comdat any

@.str = private unnamed_addr constant [18 x i8] c"../../data/dwt2d/\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Loading ipnput: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"cannot access %s\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"precteno %d, inputsize %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [468 x i8] c"dwt [otpions] src_img.rgb <out_img.dwt>\0A  -d, --dimension\09\09dimensions of src img, e.g. 1920x1080\0A  -c, --components\09\09number of color components, default 3\0A  -b, --depth\09\09\09bit depth, default 8\0A  -l, --level\09\09\09DWT level, default 3\0A  -D, --device\09\09\09cuda device\0A  -f, --forward\09\09\09forward transform\0A  -r, --reverse\09\09\09reverse transform\0A  -9, --97\09\09\099/7 transform\0A  -5, --53\09\09\095/3 transform\0A  -w  --write-visual\09\09write output in visual (tiled) fashion instead of the linear\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"dimension\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"components\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"forward\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"97\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"53\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"write-visual\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@__const.main.longopts = private unnamed_addr constant [11 x %struct.option] [%struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 1, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 1, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 1, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 1, i32* null, i32 68 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 0, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32 0, i32* null, i32 57 }, %struct.option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i32 0, i32* null, i32 53 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i32 0, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 0, i32* null, i32 104 }], align 16
@.str.16 = private unnamed_addr constant [17 x i8] c"d:c:b:l:D:fr95wh\00", align 1
@optarg = external global i8*, align 8
@.str.17 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@optind = external global i32, align 4
@.str.18 = private unnamed_addr constant [29 x i8] c"Please supply src file name\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"Wrong or missing dimensions\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"No CUDA enabled device\0A\00", align 1
@.str.21 = private unnamed_addr constant [81 x i8] c"Selected device %d is out of bound. Devices on your system are in range %d - %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"Device %d does not support CUDA\0A\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"Using device %d: %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c".dwt\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"Source file:\09\09%s\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c" Dimensions:\09\09%dx%d\0A\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c" Components count:\09%d\0A\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c" Bit depth:\09\09%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c" DWT levels:\09\09%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c" Forward transform:\09%d\0A\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c" 9/7 transform:\09\09%d\0A\00", align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local noundef i32 @_Z6getImgPcPhi(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* null, i8** %9, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strlen(i8* noundef %12) #8
  %14 = load i8*, i8** %8, align 8
  %15 = call i64 @strlen(i8* noundef %14) #8
  %16 = add i64 %13, %15
  %17 = add i64 %16, 1
  %18 = call noalias i8* @malloc(i64 noundef %17) #9
  store i8* %18, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 0, i8* %22, align 1
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i8* @strcat(i8* noundef %23, i8* noundef %24) #10
  %26 = load i8*, i8** %9, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i8* @strcat(i8* noundef %26, i8* noundef %27) #10
  %29 = load i8*, i8** %9, align 8
  store i8* %29, i8** %5, align 8
  br label %30

30:                                               ; preds = %20, %3
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* noundef %31)
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 (i8*, i32, ...) @open(i8* noundef %33, i32 noundef 0, i32 noundef 420)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = call i32* @__errno_location() #11
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %5, align 8
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %39, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* noundef %40)
  store i32 -1, i32* %4, align 4
  br label %53

41:                                               ; preds = %30
  %42 = load i32, i32* %10, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = call i64 @read(i32 noundef %42, i8* noundef %43, i64 noundef %45)
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 noundef %48, i32 noundef %49)
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @close(i32 noundef %51)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %41, %37
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare i8* @strcat(i8* noundef, i8* noundef) #3

declare i32 @printf(i8* noundef, ...) #4

declare i32 @open(i8* noundef, i32 noundef, ...) #4

declare void @error(i32 noundef, i32 noundef, i8* noundef, ...) #4

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() #5

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) #4

declare i32 @close(i32 noundef) #4

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z5usagev() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([468 x i8], [468 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1) #6 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca [11 x %struct.option], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.hipDeviceProp_t, align 8
  %21 = alloca %struct.dwt*, align 8
  %22 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %23 = bitcast [11 x %struct.option]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 bitcast ([11 x %struct.option]* @__const.main.longopts to i8*), i64 352, i1 false)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 3, i32* %11, align 4
  store i32 8, i32* %12, align 4
  store i32 3, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %24

24:                                               ; preds = %76, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds [11 x %struct.option], [11 x %struct.option]* %8, i64 0, i64 0
  %28 = call i32 @getopt_long(i32 noundef %25, i8** noundef %26, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), %struct.option* noundef %27, i32* noundef %6) #10
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %7, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %77

32:                                               ; preds = %24
  %33 = load i8, i8* %7, align 1
  %34 = sext i8 %33 to i32
  switch i32 %34, label %75 [
    i32 100, label %35
    i32 99, label %56
    i32 98, label %59
    i32 108, label %62
    i32 68, label %65
    i32 102, label %68
    i32 114, label %69
    i32 57, label %70
    i32 53, label %71
    i32 119, label %72
    i32 104, label %73
    i32 63, label %74
  ]

35:                                               ; preds = %32
  %36 = load i8*, i8** @optarg, align 8
  %37 = call i32 @atoi(i8* noundef %36) #8
  store i32 %37, i32* %9, align 4
  %38 = load i8*, i8** @optarg, align 8
  %39 = call i8* @strstr(i8* noundef %38, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #8
  store i8* %39, i8** %18, align 8
  %40 = load i8*, i8** %18, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load i8*, i8** %18, align 8
  %47 = call i64 @strlen(i8* noundef %46) #8
  %48 = load i8*, i8** @optarg, align 8
  %49 = call i64 @strlen(i8* noundef %48) #8
  %50 = icmp uge i64 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %42, %35
  call void @_Z5usagev()
  store i32 -1, i32* %3, align 4
  br label %270

52:                                               ; preds = %45
  %53 = load i8*, i8** %18, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = call i32 @atoi(i8* noundef %54) #8
  store i32 %55, i32* %10, align 4
  br label %76

56:                                               ; preds = %32
  %57 = load i8*, i8** @optarg, align 8
  %58 = call i32 @atoi(i8* noundef %57) #8
  store i32 %58, i32* %11, align 4
  br label %76

59:                                               ; preds = %32
  %60 = load i8*, i8** @optarg, align 8
  %61 = call i32 @atoi(i8* noundef %60) #8
  store i32 %61, i32* %12, align 4
  br label %76

62:                                               ; preds = %32
  %63 = load i8*, i8** @optarg, align 8
  %64 = call i32 @atoi(i8* noundef %63) #8
  store i32 %64, i32* %13, align 4
  br label %76

65:                                               ; preds = %32
  %66 = load i8*, i8** @optarg, align 8
  %67 = call i32 @atoi(i8* noundef %66) #8
  store i32 %67, i32* %14, align 4
  br label %76

68:                                               ; preds = %32
  store i32 1, i32* %15, align 4
  br label %76

69:                                               ; preds = %32
  store i32 0, i32* %15, align 4
  br label %76

70:                                               ; preds = %32
  store i32 1, i32* %16, align 4
  br label %76

71:                                               ; preds = %32
  store i32 0, i32* %16, align 4
  br label %76

72:                                               ; preds = %32
  store i32 1, i32* %17, align 4
  br label %76

73:                                               ; preds = %32
  call void @_Z5usagev()
  store i32 0, i32* %3, align 4
  br label %270

74:                                               ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %270

75:                                               ; preds = %32
  call void @_Z5usagev()
  store i32 -1, i32* %3, align 4
  br label %270

76:                                               ; preds = %72, %71, %70, %69, %68, %65, %62, %59, %56, %52
  br label %24, !llvm.loop !6

77:                                               ; preds = %24
  %78 = load i32, i32* @optind, align 4
  %79 = load i32, i32* %4, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* @optind, align 4
  %82 = load i8**, i8*** %5, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8*, i8** %82, i64 %83
  store i8** %84, i8*** %5, align 8
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0))
  call void @_Z5usagev()
  store i32 -1, i32* %3, align 4
  br label %270

89:                                               ; preds = %77
  %90 = load i32, i32* %9, align 4
  %91 = icmp sle i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %10, align 4
  %94 = icmp sle i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92, %89
  %96 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0))
  call void @_Z5usagev()
  store i32 -1, i32* %3, align 4
  br label %270

97:                                               ; preds = %92
  %98 = load i32, i32* %15, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 0, i32* %17, align 4
  br label %101

101:                                              ; preds = %100, %97
  %102 = call i32 @hipGetDeviceCount(i32* noundef %19)
  %103 = load i32, i32* %19, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %270

107:                                              ; preds = %101
  %108 = load i32, i32* %14, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %19, align 4
  %113 = sub nsw i32 %112, 1
  %114 = icmp sgt i32 %111, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %110, %107
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %19, align 4
  %118 = sub nsw i32 %117, 1
  %119 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.21, i64 0, i64 0), i32 noundef %116, i32 noundef 0, i32 noundef %118)
  store i32 -1, i32* %3, align 4
  br label %270

120:                                              ; preds = %110
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* noundef %20, i32 noundef %121)
  %123 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %20, i32 0, i32 12
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %124, 1
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load i32, i32* %14, align 4
  %128 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0), i32 noundef %127)
  store i32 -1, i32* %3, align 4
  br label %270

129:                                              ; preds = %120
  %130 = load i32, i32* %14, align 4
  %131 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %20, i32 0, i32 0
  %132 = getelementptr inbounds [256 x i8], [256 x i8]* %131, i64 0, i64 0
  %133 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i32 noundef %130, i8* noundef %132)
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @hipSetDevice(i32 noundef %134)
  %136 = call noalias i8* @malloc(i64 noundef 40) #9
  %137 = bitcast i8* %136 to %struct.dwt*
  store %struct.dwt* %137, %struct.dwt** %21, align 8
  %138 = load %struct.dwt*, %struct.dwt** %21, align 8
  %139 = getelementptr inbounds %struct.dwt, %struct.dwt* %138, i32 0, i32 2
  store i8* null, i8** %139, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load %struct.dwt*, %struct.dwt** %21, align 8
  %142 = getelementptr inbounds %struct.dwt, %struct.dwt* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.dwt*, %struct.dwt** %21, align 8
  %145 = getelementptr inbounds %struct.dwt, %struct.dwt* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load %struct.dwt*, %struct.dwt** %21, align 8
  %148 = getelementptr inbounds %struct.dwt, %struct.dwt* %147, i32 0, i32 5
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.dwt*, %struct.dwt** %21, align 8
  %151 = getelementptr inbounds %struct.dwt, %struct.dwt* %150, i32 0, i32 6
  store i32 %149, i32* %151, align 4
  %152 = load i8**, i8*** %5, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i64 @strlen(i8* noundef %154) #8
  %156 = call noalias i8* @malloc(i64 noundef %155) #9
  %157 = load %struct.dwt*, %struct.dwt** %21, align 8
  %158 = getelementptr inbounds %struct.dwt, %struct.dwt* %157, i32 0, i32 0
  store i8* %156, i8** %158, align 8
  %159 = load %struct.dwt*, %struct.dwt** %21, align 8
  %160 = getelementptr inbounds %struct.dwt, %struct.dwt* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = load i8**, i8*** %5, align 8
  %163 = getelementptr inbounds i8*, i8** %162, i64 0
  %164 = load i8*, i8** %163, align 8
  %165 = call i8* @strcpy(i8* noundef %161, i8* noundef %164) #10
  %166 = load i32, i32* %4, align 4
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %168, label %193

168:                                              ; preds = %129
  %169 = load %struct.dwt*, %struct.dwt** %21, align 8
  %170 = getelementptr inbounds %struct.dwt, %struct.dwt* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = call i64 @strlen(i8* noundef %171) #8
  %173 = add i64 %172, 4
  %174 = call noalias i8* @malloc(i64 noundef %173) #9
  %175 = load %struct.dwt*, %struct.dwt** %21, align 8
  %176 = getelementptr inbounds %struct.dwt, %struct.dwt* %175, i32 0, i32 1
  store i8* %174, i8** %176, align 8
  %177 = load %struct.dwt*, %struct.dwt** %21, align 8
  %178 = getelementptr inbounds %struct.dwt, %struct.dwt* %177, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.dwt*, %struct.dwt** %21, align 8
  %181 = getelementptr inbounds %struct.dwt, %struct.dwt* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = call i8* @strcpy(i8* noundef %179, i8* noundef %182) #10
  %184 = load %struct.dwt*, %struct.dwt** %21, align 8
  %185 = getelementptr inbounds %struct.dwt, %struct.dwt* %184, i32 0, i32 1
  %186 = load i8*, i8** %185, align 8
  %187 = load %struct.dwt*, %struct.dwt** %21, align 8
  %188 = getelementptr inbounds %struct.dwt, %struct.dwt* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i64 @strlen(i8* noundef %189) #8
  %191 = getelementptr inbounds i8, i8* %186, i64 %190
  %192 = call i8* @strcpy(i8* noundef %191, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #10
  br label %200

193:                                              ; preds = %129
  %194 = load i8**, i8*** %5, align 8
  %195 = getelementptr inbounds i8*, i8** %194, i64 1
  %196 = load i8*, i8** %195, align 8
  %197 = call noalias i8* @strdup(i8* noundef %196) #10
  %198 = load %struct.dwt*, %struct.dwt** %21, align 8
  %199 = getelementptr inbounds %struct.dwt, %struct.dwt* %198, i32 0, i32 1
  store i8* %197, i8** %199, align 8
  br label %200

200:                                              ; preds = %193, %168
  %201 = load %struct.dwt*, %struct.dwt** %21, align 8
  %202 = getelementptr inbounds %struct.dwt, %struct.dwt* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i8* noundef %203)
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* %10, align 4
  %207 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), i32 noundef %205, i32 noundef %206)
  %208 = load i32, i32* %11, align 4
  %209 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0), i32 noundef %208)
  %210 = load i32, i32* %12, align 4
  %211 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i32 noundef %210)
  %212 = load i32, i32* %13, align 4
  %213 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i32 noundef %212)
  %214 = load i32, i32* %15, align 4
  %215 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i32 noundef %214)
  %216 = load i32, i32* %16, align 4
  %217 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0), i32 noundef %216)
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* %10, align 4
  %220 = mul nsw i32 %218, %219
  %221 = load i32, i32* %11, align 4
  %222 = mul nsw i32 %220, %221
  store i32 %222, i32* %22, align 4
  %223 = load %struct.dwt*, %struct.dwt** %21, align 8
  %224 = getelementptr inbounds %struct.dwt, %struct.dwt* %223, i32 0, i32 2
  %225 = load i32, i32* %22, align 4
  %226 = sext i32 %225 to i64
  %227 = call noundef i32 @_ZL13hipHostMallocIvE10hipError_tPPT_mj(i8** noundef %224, i64 noundef %226, i32 noundef 0)
  %228 = load %struct.dwt*, %struct.dwt** %21, align 8
  %229 = getelementptr inbounds %struct.dwt, %struct.dwt* %228, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8
  %231 = load %struct.dwt*, %struct.dwt** %21, align 8
  %232 = getelementptr inbounds %struct.dwt, %struct.dwt* %231, i32 0, i32 2
  %233 = load i8*, i8** %232, align 8
  %234 = load i32, i32* %22, align 4
  %235 = call noundef i32 @_Z6getImgPcPhi(i8* noundef %230, i8* noundef %233, i32 noundef %234)
  %236 = icmp eq i32 %235, -1
  br i1 %236, label %237, label %238

237:                                              ; preds = %200
  store i32 -1, i32* %3, align 4
  br label %270

238:                                              ; preds = %200
  %239 = load i32, i32* %15, align 4
  %240 = icmp eq i32 %239, 1
  br i1 %240, label %241, label %253

241:                                              ; preds = %238
  %242 = load i32, i32* %16, align 4
  %243 = icmp eq i32 %242, 1
  br i1 %243, label %244, label %248

244:                                              ; preds = %241
  %245 = load %struct.dwt*, %struct.dwt** %21, align 8
  %246 = load i32, i32* %15, align 4
  %247 = load i32, i32* %17, align 4
  call void @_Z10processDWTIfEvP3dwtii(%struct.dwt* noundef %245, i32 noundef %246, i32 noundef %247)
  br label %252

248:                                              ; preds = %241
  %249 = load %struct.dwt*, %struct.dwt** %21, align 8
  %250 = load i32, i32* %15, align 4
  %251 = load i32, i32* %17, align 4
  call void @_Z10processDWTIiEvP3dwtii(%struct.dwt* noundef %249, i32 noundef %250, i32 noundef %251)
  br label %252

252:                                              ; preds = %248, %244
  br label %265

253:                                              ; preds = %238
  %254 = load i32, i32* %16, align 4
  %255 = icmp eq i32 %254, 1
  br i1 %255, label %256, label %260

256:                                              ; preds = %253
  %257 = load %struct.dwt*, %struct.dwt** %21, align 8
  %258 = load i32, i32* %15, align 4
  %259 = load i32, i32* %17, align 4
  call void @_Z10processDWTIfEvP3dwtii(%struct.dwt* noundef %257, i32 noundef %258, i32 noundef %259)
  br label %264

260:                                              ; preds = %253
  %261 = load %struct.dwt*, %struct.dwt** %21, align 8
  %262 = load i32, i32* %15, align 4
  %263 = load i32, i32* %17, align 4
  call void @_Z10processDWTIiEvP3dwtii(%struct.dwt* noundef %261, i32 noundef %262, i32 noundef %263)
  br label %264

264:                                              ; preds = %260, %256
  br label %265

265:                                              ; preds = %264, %252
  %266 = load %struct.dwt*, %struct.dwt** %21, align 8
  %267 = getelementptr inbounds %struct.dwt, %struct.dwt* %266, i32 0, i32 2
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 @hipHostFree(i8* noundef %268)
  store i32 0, i32* %3, align 4
  br label %270

270:                                              ; preds = %265, %237, %126, %115, %105, %95, %87, %75, %74, %73, %51
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i8* @strstr(i8* noundef, i8* noundef) #2

declare i32 @hipGetDeviceCount(i32* noundef) #4

declare i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* noundef, i32 noundef) #4

declare i32 @hipSetDevice(i32 noundef) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind
declare noalias i8* @strdup(i8* noundef) #3

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

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z10processDWTIfEvP3dwtii(%struct.dwt* noundef %0, i32 noundef %1, i32 noundef %2) #0 comdat {
  %4 = alloca %struct.dwt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  store %struct.dwt* %0, %struct.dwt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load %struct.dwt*, %struct.dwt** %4, align 8
  %17 = getelementptr inbounds %struct.dwt, %struct.dwt* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.dwt*, %struct.dwt** %4, align 8
  %20 = getelementptr inbounds %struct.dwt, %struct.dwt* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %18, %21
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = bitcast float** %8 to i8**
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = call i32 @hipMalloc(i8** noundef %26, i64 noundef %28)
  %30 = load float*, float** %8, align 8
  %31 = bitcast float* %30 to i8*
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = call i32 @hipMemset(i8* noundef %31, i32 noundef 0, i64 noundef %33)
  %35 = bitcast float** %9 to i8**
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = call i32 @hipMalloc(i8** noundef %35, i64 noundef %37)
  %39 = load float*, float** %9, align 8
  %40 = bitcast float* %39 to i8*
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = call i32 @hipMemset(i8* noundef %40, i32 noundef 0, i64 noundef %42)
  %44 = load %struct.dwt*, %struct.dwt** %4, align 8
  %45 = getelementptr inbounds %struct.dwt, %struct.dwt* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %48, label %166

48:                                               ; preds = %3
  %49 = bitcast float** %10 to i8**
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = call i32 @hipMalloc(i8** noundef %49, i64 noundef %51)
  %53 = load float*, float** %10, align 8
  %54 = bitcast float* %53 to i8*
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = call i32 @hipMemset(i8* noundef %54, i32 noundef 0, i64 noundef %56)
  %58 = bitcast float** %11 to i8**
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = call i32 @hipMalloc(i8** noundef %58, i64 noundef %60)
  %62 = load float*, float** %11, align 8
  %63 = bitcast float* %62 to i8*
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = call i32 @hipMemset(i8* noundef %63, i32 noundef 0, i64 noundef %65)
  %67 = bitcast float** %12 to i8**
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = call i32 @hipMalloc(i8** noundef %67, i64 noundef %69)
  %71 = load float*, float** %12, align 8
  %72 = bitcast float* %71 to i8*
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = call i32 @hipMemset(i8* noundef %72, i32 noundef 0, i64 noundef %74)
  %76 = bitcast float** %13 to i8**
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = call i32 @hipMalloc(i8** noundef %76, i64 noundef %78)
  %80 = load float*, float** %13, align 8
  %81 = bitcast float* %80 to i8*
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = call i32 @hipMemset(i8* noundef %81, i32 noundef 0, i64 noundef %83)
  %85 = bitcast float** %14 to i8**
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = call i32 @hipMalloc(i8** noundef %85, i64 noundef %87)
  %89 = load float*, float** %14, align 8
  %90 = bitcast float* %89 to i8*
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = call i32 @hipMemset(i8* noundef %90, i32 noundef 0, i64 noundef %92)
  %94 = load float*, float** %12, align 8
  %95 = load float*, float** %13, align 8
  %96 = load float*, float** %14, align 8
  %97 = load %struct.dwt*, %struct.dwt** %4, align 8
  %98 = getelementptr inbounds %struct.dwt, %struct.dwt* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.dwt*, %struct.dwt** %4, align 8
  %101 = getelementptr inbounds %struct.dwt, %struct.dwt* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.dwt*, %struct.dwt** %4, align 8
  %104 = getelementptr inbounds %struct.dwt, %struct.dwt* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  call void @_Z15rgbToComponentsIfEvPT_S1_S1_Phii(float* noundef %94, float* noundef %95, float* noundef %96, i8* noundef %99, i32 noundef %102, i32 noundef %105)
  %106 = load float*, float** %12, align 8
  %107 = load float*, float** %8, align 8
  %108 = load float*, float** %9, align 8
  %109 = load %struct.dwt*, %struct.dwt** %4, align 8
  %110 = getelementptr inbounds %struct.dwt, %struct.dwt* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.dwt*, %struct.dwt** %4, align 8
  %113 = getelementptr inbounds %struct.dwt, %struct.dwt* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.dwt*, %struct.dwt** %4, align 8
  %116 = getelementptr inbounds %struct.dwt, %struct.dwt* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %118, 0
  %120 = call noundef i32 @_Z11nStage2dDWTIfEiPT_S1_S1_iiib(float* noundef %106, float* noundef %107, float* noundef %108, i32 noundef %111, i32 noundef %114, i32 noundef %117, i1 noundef zeroext %119)
  %121 = load float*, float** %13, align 8
  %122 = load float*, float** %10, align 8
  %123 = load float*, float** %9, align 8
  %124 = load %struct.dwt*, %struct.dwt** %4, align 8
  %125 = getelementptr inbounds %struct.dwt, %struct.dwt* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.dwt*, %struct.dwt** %4, align 8
  %128 = getelementptr inbounds %struct.dwt, %struct.dwt* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.dwt*, %struct.dwt** %4, align 8
  %131 = getelementptr inbounds %struct.dwt, %struct.dwt* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %5, align 4
  %134 = icmp ne i32 %133, 0
  %135 = call noundef i32 @_Z11nStage2dDWTIfEiPT_S1_S1_iiib(float* noundef %121, float* noundef %122, float* noundef %123, i32 noundef %126, i32 noundef %129, i32 noundef %132, i1 noundef zeroext %134)
  %136 = load float*, float** %14, align 8
  %137 = load float*, float** %11, align 8
  %138 = load float*, float** %9, align 8
  %139 = load %struct.dwt*, %struct.dwt** %4, align 8
  %140 = getelementptr inbounds %struct.dwt, %struct.dwt* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.dwt*, %struct.dwt** %4, align 8
  %143 = getelementptr inbounds %struct.dwt, %struct.dwt* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.dwt*, %struct.dwt** %4, align 8
  %146 = getelementptr inbounds %struct.dwt, %struct.dwt* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %5, align 4
  %149 = icmp ne i32 %148, 0
  %150 = call noundef i32 @_Z11nStage2dDWTIfEiPT_S1_S1_iiib(float* noundef %136, float* noundef %137, float* noundef %138, i32 noundef %141, i32 noundef %144, i32 noundef %147, i1 noundef zeroext %149)
  %151 = load float*, float** %12, align 8
  %152 = bitcast float* %151 to i8*
  %153 = call i32 @hipFree(i8* noundef %152)
  %154 = load float*, float** %13, align 8
  %155 = bitcast float* %154 to i8*
  %156 = call i32 @hipFree(i8* noundef %155)
  %157 = load float*, float** %14, align 8
  %158 = bitcast float* %157 to i8*
  %159 = call i32 @hipFree(i8* noundef %158)
  %160 = load float*, float** %10, align 8
  %161 = bitcast float* %160 to i8*
  %162 = call i32 @hipFree(i8* noundef %161)
  %163 = load float*, float** %11, align 8
  %164 = bitcast float* %163 to i8*
  %165 = call i32 @hipFree(i8* noundef %164)
  br label %210

166:                                              ; preds = %3
  %167 = load %struct.dwt*, %struct.dwt** %4, align 8
  %168 = getelementptr inbounds %struct.dwt, %struct.dwt* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %209

171:                                              ; preds = %166
  %172 = bitcast float** %15 to i8**
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = call i32 @hipMalloc(i8** noundef %172, i64 noundef %174)
  %176 = load float*, float** %15, align 8
  %177 = bitcast float* %176 to i8*
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = call i32 @hipMemset(i8* noundef %177, i32 noundef 0, i64 noundef %179)
  %181 = load float*, float** %15, align 8
  %182 = load %struct.dwt*, %struct.dwt** %4, align 8
  %183 = getelementptr inbounds %struct.dwt, %struct.dwt* %182, i32 0, i32 2
  %184 = load i8*, i8** %183, align 8
  %185 = load %struct.dwt*, %struct.dwt** %4, align 8
  %186 = getelementptr inbounds %struct.dwt, %struct.dwt* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.dwt*, %struct.dwt** %4, align 8
  %189 = getelementptr inbounds %struct.dwt, %struct.dwt* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  call void @_Z13bwToComponentIfEvPT_Phii(float* noundef %181, i8* noundef %184, i32 noundef %187, i32 noundef %190)
  %191 = load float*, float** %15, align 8
  %192 = load float*, float** %8, align 8
  %193 = load float*, float** %9, align 8
  %194 = load %struct.dwt*, %struct.dwt** %4, align 8
  %195 = getelementptr inbounds %struct.dwt, %struct.dwt* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.dwt*, %struct.dwt** %4, align 8
  %198 = getelementptr inbounds %struct.dwt, %struct.dwt* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.dwt*, %struct.dwt** %4, align 8
  %201 = getelementptr inbounds %struct.dwt, %struct.dwt* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %5, align 4
  %204 = icmp ne i32 %203, 0
  %205 = call noundef i32 @_Z11nStage2dDWTIfEiPT_S1_S1_iiib(float* noundef %191, float* noundef %192, float* noundef %193, i32 noundef %196, i32 noundef %199, i32 noundef %202, i1 noundef zeroext %204)
  %206 = load float*, float** %15, align 8
  %207 = bitcast float* %206 to i8*
  %208 = call i32 @hipFree(i8* noundef %207)
  br label %209

209:                                              ; preds = %171, %166
  br label %210

210:                                              ; preds = %209, %48
  %211 = load float*, float** %8, align 8
  %212 = bitcast float* %211 to i8*
  %213 = call i32 @hipFree(i8* noundef %212)
  %214 = load float*, float** %9, align 8
  %215 = bitcast float* %214 to i8*
  %216 = call i32 @hipFree(i8* noundef %215)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_Z10processDWTIiEvP3dwtii(%struct.dwt* noundef %0, i32 noundef %1, i32 noundef %2) #0 comdat {
  %4 = alloca %struct.dwt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.dwt* %0, %struct.dwt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load %struct.dwt*, %struct.dwt** %4, align 8
  %17 = getelementptr inbounds %struct.dwt, %struct.dwt* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.dwt*, %struct.dwt** %4, align 8
  %20 = getelementptr inbounds %struct.dwt, %struct.dwt* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %18, %21
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = bitcast i32** %8 to i8**
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = call i32 @hipMalloc(i8** noundef %26, i64 noundef %28)
  %30 = load i32*, i32** %8, align 8
  %31 = bitcast i32* %30 to i8*
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = call i32 @hipMemset(i8* noundef %31, i32 noundef 0, i64 noundef %33)
  %35 = bitcast i32** %9 to i8**
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = call i32 @hipMalloc(i8** noundef %35, i64 noundef %37)
  %39 = load i32*, i32** %9, align 8
  %40 = bitcast i32* %39 to i8*
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = call i32 @hipMemset(i8* noundef %40, i32 noundef 0, i64 noundef %42)
  %44 = load %struct.dwt*, %struct.dwt** %4, align 8
  %45 = getelementptr inbounds %struct.dwt, %struct.dwt* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %48, label %166

48:                                               ; preds = %3
  %49 = bitcast i32** %10 to i8**
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = call i32 @hipMalloc(i8** noundef %49, i64 noundef %51)
  %53 = load i32*, i32** %10, align 8
  %54 = bitcast i32* %53 to i8*
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = call i32 @hipMemset(i8* noundef %54, i32 noundef 0, i64 noundef %56)
  %58 = bitcast i32** %11 to i8**
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = call i32 @hipMalloc(i8** noundef %58, i64 noundef %60)
  %62 = load i32*, i32** %11, align 8
  %63 = bitcast i32* %62 to i8*
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = call i32 @hipMemset(i8* noundef %63, i32 noundef 0, i64 noundef %65)
  %67 = bitcast i32** %12 to i8**
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = call i32 @hipMalloc(i8** noundef %67, i64 noundef %69)
  %71 = load i32*, i32** %12, align 8
  %72 = bitcast i32* %71 to i8*
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = call i32 @hipMemset(i8* noundef %72, i32 noundef 0, i64 noundef %74)
  %76 = bitcast i32** %13 to i8**
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = call i32 @hipMalloc(i8** noundef %76, i64 noundef %78)
  %80 = load i32*, i32** %13, align 8
  %81 = bitcast i32* %80 to i8*
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = call i32 @hipMemset(i8* noundef %81, i32 noundef 0, i64 noundef %83)
  %85 = bitcast i32** %14 to i8**
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = call i32 @hipMalloc(i8** noundef %85, i64 noundef %87)
  %89 = load i32*, i32** %14, align 8
  %90 = bitcast i32* %89 to i8*
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = call i32 @hipMemset(i8* noundef %90, i32 noundef 0, i64 noundef %92)
  %94 = load i32*, i32** %12, align 8
  %95 = load i32*, i32** %13, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = load %struct.dwt*, %struct.dwt** %4, align 8
  %98 = getelementptr inbounds %struct.dwt, %struct.dwt* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.dwt*, %struct.dwt** %4, align 8
  %101 = getelementptr inbounds %struct.dwt, %struct.dwt* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.dwt*, %struct.dwt** %4, align 8
  %104 = getelementptr inbounds %struct.dwt, %struct.dwt* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  call void @_Z15rgbToComponentsIiEvPT_S1_S1_Phii(i32* noundef %94, i32* noundef %95, i32* noundef %96, i8* noundef %99, i32 noundef %102, i32 noundef %105)
  %106 = load i32*, i32** %12, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = load %struct.dwt*, %struct.dwt** %4, align 8
  %110 = getelementptr inbounds %struct.dwt, %struct.dwt* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.dwt*, %struct.dwt** %4, align 8
  %113 = getelementptr inbounds %struct.dwt, %struct.dwt* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.dwt*, %struct.dwt** %4, align 8
  %116 = getelementptr inbounds %struct.dwt, %struct.dwt* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %118, 0
  %120 = call noundef i32 @_Z11nStage2dDWTIiEiPT_S1_S1_iiib(i32* noundef %106, i32* noundef %107, i32* noundef %108, i32 noundef %111, i32 noundef %114, i32 noundef %117, i1 noundef zeroext %119)
  %121 = load i32*, i32** %13, align 8
  %122 = load i32*, i32** %10, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = load %struct.dwt*, %struct.dwt** %4, align 8
  %125 = getelementptr inbounds %struct.dwt, %struct.dwt* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.dwt*, %struct.dwt** %4, align 8
  %128 = getelementptr inbounds %struct.dwt, %struct.dwt* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.dwt*, %struct.dwt** %4, align 8
  %131 = getelementptr inbounds %struct.dwt, %struct.dwt* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %5, align 4
  %134 = icmp ne i32 %133, 0
  %135 = call noundef i32 @_Z11nStage2dDWTIiEiPT_S1_S1_iiib(i32* noundef %121, i32* noundef %122, i32* noundef %123, i32 noundef %126, i32 noundef %129, i32 noundef %132, i1 noundef zeroext %134)
  %136 = load i32*, i32** %14, align 8
  %137 = load i32*, i32** %11, align 8
  %138 = load i32*, i32** %9, align 8
  %139 = load %struct.dwt*, %struct.dwt** %4, align 8
  %140 = getelementptr inbounds %struct.dwt, %struct.dwt* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.dwt*, %struct.dwt** %4, align 8
  %143 = getelementptr inbounds %struct.dwt, %struct.dwt* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.dwt*, %struct.dwt** %4, align 8
  %146 = getelementptr inbounds %struct.dwt, %struct.dwt* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %5, align 4
  %149 = icmp ne i32 %148, 0
  %150 = call noundef i32 @_Z11nStage2dDWTIiEiPT_S1_S1_iiib(i32* noundef %136, i32* noundef %137, i32* noundef %138, i32 noundef %141, i32 noundef %144, i32 noundef %147, i1 noundef zeroext %149)
  %151 = load i32*, i32** %12, align 8
  %152 = bitcast i32* %151 to i8*
  %153 = call i32 @hipFree(i8* noundef %152)
  %154 = load i32*, i32** %13, align 8
  %155 = bitcast i32* %154 to i8*
  %156 = call i32 @hipFree(i8* noundef %155)
  %157 = load i32*, i32** %14, align 8
  %158 = bitcast i32* %157 to i8*
  %159 = call i32 @hipFree(i8* noundef %158)
  %160 = load i32*, i32** %10, align 8
  %161 = bitcast i32* %160 to i8*
  %162 = call i32 @hipFree(i8* noundef %161)
  %163 = load i32*, i32** %11, align 8
  %164 = bitcast i32* %163 to i8*
  %165 = call i32 @hipFree(i8* noundef %164)
  br label %210

166:                                              ; preds = %3
  %167 = load %struct.dwt*, %struct.dwt** %4, align 8
  %168 = getelementptr inbounds %struct.dwt, %struct.dwt* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %209

171:                                              ; preds = %166
  %172 = bitcast i32** %15 to i8**
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = call i32 @hipMalloc(i8** noundef %172, i64 noundef %174)
  %176 = load i32*, i32** %15, align 8
  %177 = bitcast i32* %176 to i8*
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = call i32 @hipMemset(i8* noundef %177, i32 noundef 0, i64 noundef %179)
  %181 = load i32*, i32** %15, align 8
  %182 = load %struct.dwt*, %struct.dwt** %4, align 8
  %183 = getelementptr inbounds %struct.dwt, %struct.dwt* %182, i32 0, i32 2
  %184 = load i8*, i8** %183, align 8
  %185 = load %struct.dwt*, %struct.dwt** %4, align 8
  %186 = getelementptr inbounds %struct.dwt, %struct.dwt* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.dwt*, %struct.dwt** %4, align 8
  %189 = getelementptr inbounds %struct.dwt, %struct.dwt* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  call void @_Z13bwToComponentIiEvPT_Phii(i32* noundef %181, i8* noundef %184, i32 noundef %187, i32 noundef %190)
  %191 = load i32*, i32** %15, align 8
  %192 = load i32*, i32** %8, align 8
  %193 = load i32*, i32** %9, align 8
  %194 = load %struct.dwt*, %struct.dwt** %4, align 8
  %195 = getelementptr inbounds %struct.dwt, %struct.dwt* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.dwt*, %struct.dwt** %4, align 8
  %198 = getelementptr inbounds %struct.dwt, %struct.dwt* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.dwt*, %struct.dwt** %4, align 8
  %201 = getelementptr inbounds %struct.dwt, %struct.dwt* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %5, align 4
  %204 = icmp ne i32 %203, 0
  %205 = call noundef i32 @_Z11nStage2dDWTIiEiPT_S1_S1_iiib(i32* noundef %191, i32* noundef %192, i32* noundef %193, i32 noundef %196, i32 noundef %199, i32 noundef %202, i1 noundef zeroext %204)
  %206 = load i32*, i32** %15, align 8
  %207 = bitcast i32* %206 to i8*
  %208 = call i32 @hipFree(i8* noundef %207)
  br label %209

209:                                              ; preds = %171, %166
  br label %210

210:                                              ; preds = %209, %48
  %211 = load i32*, i32** %8, align 8
  %212 = bitcast i32* %211 to i8*
  %213 = call i32 @hipFree(i8* noundef %212)
  %214 = load i32*, i32** %9, align 8
  %215 = bitcast i32* %214 to i8*
  %216 = call i32 @hipFree(i8* noundef %215)
  ret void
}

declare i32 @hipHostFree(i8* noundef) #4

declare i32 @hipHostMalloc(i8** noundef, i64 noundef, i32 noundef) #4

declare i32 @hipMalloc(i8** noundef, i64 noundef) #4

declare i32 @hipMemset(i8* noundef, i32 noundef, i64 noundef) #4

declare void @_Z15rgbToComponentsIfEvPT_S1_S1_Phii(float* noundef, float* noundef, float* noundef, i8* noundef, i32 noundef, i32 noundef) #4

declare noundef i32 @_Z11nStage2dDWTIfEiPT_S1_S1_iiib(float* noundef, float* noundef, float* noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) #4

declare i32 @hipFree(i8* noundef) #4

declare void @_Z13bwToComponentIfEvPT_Phii(float* noundef, i8* noundef, i32 noundef, i32 noundef) #4

declare void @_Z15rgbToComponentsIiEvPT_S1_S1_Phii(i32* noundef, i32* noundef, i32* noundef, i8* noundef, i32 noundef, i32 noundef) #4

declare noundef i32 @_Z11nStage2dDWTIiEiPT_S1_S1_iiib(i32* noundef, i32* noundef, i32* noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) #4

declare void @_Z13bwToComponentIiEvPT_Phii(i32* noundef, i8* noundef, i32 noundef, i32 noundef) #4

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nocallback nofree nounwind willreturn }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone willreturn }

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
