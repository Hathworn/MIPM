; ModuleID = 'hip/heartwall/setdevice.cu'
source_filename = "hip/heartwall/setdevice.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hipDeviceProp_t = type { [256 x i8], i64, i64, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.hipDeviceArch_t, i32, i32, i32, i32, i64, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32*, i32*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hipDeviceArch_t = type { i32 }

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z9setdevicev() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.hipDeviceProp_t, align 8
  %6 = call i32 @hipGetDeviceCount(i32* noundef %1)
  %7 = load i32, i32* %1, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %32

9:                                                ; preds = %0
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
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
  br label %10, !llvm.loop !6

29:                                               ; preds = %10
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @hipSetDevice(i32 noundef %30)
  br label %32

32:                                               ; preds = %29, %0
  ret void
}

declare i32 @hipGetDeviceCount(i32* noundef) #1

declare i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* noundef, i32 noundef) #1

declare i32 @hipSetDevice(i32 noundef) #1

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
