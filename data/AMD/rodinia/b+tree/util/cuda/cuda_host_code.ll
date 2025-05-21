; ModuleID = 'hip/b+tree/util/cuda/cuda.cu'
source_filename = "hip/b+tree/util/cuda/cuda.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hipDeviceProp_t = type { [256 x i8], i64, i64, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.hipDeviceArch_t, i32, i32, i32, i32, i64, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32*, i32*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hipDeviceArch_t = type { i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Cuda error: %s: %s.\0A\00", align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @setdevice() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.hipDeviceProp_t, align 8
  %6 = call i32 @hipGetDeviceCount(i32* noundef %1)
  %7 = load i32, i32* %1, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %23

9:                                                ; preds = %0
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %17, %9
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* %1, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* noundef %5, i32 noundef %15)
  br label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %2, align 4
  br label %10, !llvm.loop !6

20:                                               ; preds = %10
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @hipSetDevice(i32 noundef %21)
  br label %23

23:                                               ; preds = %20, %0
  ret void
}

declare i32 @hipGetDeviceCount(i32* noundef) #1

declare i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* noundef, i32 noundef) #1

declare i32 @hipSetDevice(i32 noundef) #1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @checkCUDAError(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = call i32 @hipGetLastError()
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 0, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i8* @hipGetErrorString(i32 noundef %9)
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* noundef %8, i8* noundef %10)
  %12 = call i32 @fflush(%struct._IO_FILE* noundef null)
  call void @exit(i32 noundef 1) #3
  unreachable

13:                                               ; preds = %1
  ret void
}

declare i32 @hipGetLastError() #1

declare i32 @printf(i8* noundef, ...) #1

declare i8* @hipGetErrorString(i32 noundef) #1

declare i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #2

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
