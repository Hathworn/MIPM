; ModuleID = 'reduction/reduction.cpp'
source_filename = "reduction/reduction.cpp"
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
%struct.hipDeviceProp_t = type { [256 x i8], i64, i64, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.hipDeviceArch_t, i32, i32, i32, i32, i64, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32*, i32*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hipDeviceArch_t = type { i32 }

$__hip_gpubin_handle = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cerr = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [8 x i8] c"Error: \00", align 1
@_Z23atomic_reduction_kernelPiS_i = dso_local constant void (i32*, i32*, i32)* @_Z38__device_stub__atomic_reduction_kernelPiS_i, align 8
@_Z24atomic_reduction_kernel2PiS_i = dso_local constant void (i32*, i32*, i32)* @_Z39__device_stub__atomic_reduction_kernel2PiS_i, align 8
@_Z24atomic_reduction_kernel3PiS_i = dso_local constant void (i32*, i32*, i32)* @_Z39__device_stub__atomic_reduction_kernel3PiS_i, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"using default value: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"ARRAYSIZE: %d\0A\00", align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"Array size: \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" MB\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"The average performance of reduction is \00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c" GBytes/sec\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"VERIFICATION: result is CORRECT\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"VERIFICATION: result is INCORRECT!!\00", align 1
@0 = private unnamed_addr constant [33 x i8] c"_Z23atomic_reduction_kernelPiS_i\00", align 1
@1 = private unnamed_addr constant [34 x i8] c"_Z24atomic_reduction_kernel2PiS_i\00", align 1
@2 = private unnamed_addr constant [34 x i8] c"_Z24atomic_reduction_kernel3PiS_i\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_reduction.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]
@str = private unnamed_addr constant [32 x i8] c"Usage: ./reduction num_of_elems\00", align 1

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z15check_hip_errorv() local_unnamed_addr #3 {
  %1 = tail call i32 @hipGetLastError()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %5 = tail call i8* @hipGetErrorString(i32 %1)
  %6 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %4, i8* %5)
  %7 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %6)
  tail call void @exit(i32 %1) #14
  unreachable

8:                                                ; preds = %0
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare dso_local i32 @hipGetLastError() local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*) local_unnamed_addr #5

declare dso_local i8* @hipGetErrorString(i32) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: norecurse uwtable
define dso_local void @_Z38__device_stub__atomic_reduction_kernelPiS_i(i32* %0, i32* %1, i32 %2) #7 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32* %1, i32** %5, align 8, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !7
  %11 = alloca [3 x i8*], align 16
  %12 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %13 = bitcast [3 x i8*]* %11 to i32***
  store i32** %4, i32*** %13, align 16
  %14 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 1
  %15 = bitcast i8** %14 to i32***
  store i32** %5, i32*** %15, align 8
  %16 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 2
  %17 = bitcast i8** %16 to i32**
  store i32* %6, i32** %17, align 16
  %18 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %7, %struct.dim3* nonnull %8, i64* nonnull %9, i8** nonnull %10)
  %19 = load i64, i64* %9, align 8
  %20 = bitcast i8** %10 to %struct.ihipStream_t**
  %21 = load %struct.ihipStream_t*, %struct.ihipStream_t** %20, align 8
  %22 = bitcast %struct.dim3* %7 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.dim3, %struct.dim3* %7, i64 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = bitcast %struct.dim3* %8 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.dim3, %struct.dim3* %8, i64 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32)** @_Z23atomic_reduction_kernelPiS_i to i8*), i64 %23, i32 %25, i64 %27, i32 %29, i8** nonnull %12, i64 %19, %struct.ihipStream_t* %21)
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: norecurse uwtable
define dso_local void @_Z39__device_stub__atomic_reduction_kernel2PiS_i(i32* %0, i32* %1, i32 %2) #7 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32* %1, i32** %5, align 8, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !7
  %11 = alloca [3 x i8*], align 16
  %12 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %13 = bitcast [3 x i8*]* %11 to i32***
  store i32** %4, i32*** %13, align 16
  %14 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 1
  %15 = bitcast i8** %14 to i32***
  store i32** %5, i32*** %15, align 8
  %16 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 2
  %17 = bitcast i8** %16 to i32**
  store i32* %6, i32** %17, align 16
  %18 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %7, %struct.dim3* nonnull %8, i64* nonnull %9, i8** nonnull %10)
  %19 = load i64, i64* %9, align 8
  %20 = bitcast i8** %10 to %struct.ihipStream_t**
  %21 = load %struct.ihipStream_t*, %struct.ihipStream_t** %20, align 8
  %22 = bitcast %struct.dim3* %7 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.dim3, %struct.dim3* %7, i64 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = bitcast %struct.dim3* %8 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.dim3, %struct.dim3* %8, i64 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32)** @_Z24atomic_reduction_kernel2PiS_i to i8*), i64 %23, i32 %25, i64 %27, i32 %29, i8** nonnull %12, i64 %19, %struct.ihipStream_t* %21)
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local void @_Z39__device_stub__atomic_reduction_kernel3PiS_i(i32* %0, i32* %1, i32 %2) #7 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8, !tbaa !3
  store i32* %1, i32** %5, align 8, !tbaa !3
  store i32 %2, i32* %6, align 4, !tbaa !7
  %11 = alloca [3 x i8*], align 16
  %12 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %13 = bitcast [3 x i8*]* %11 to i32***
  store i32** %4, i32*** %13, align 16
  %14 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 1
  %15 = bitcast i8** %14 to i32***
  store i32** %5, i32*** %15, align 8
  %16 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 2
  %17 = bitcast i8** %16 to i32**
  store i32* %6, i32** %17, align 16
  %18 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %7, %struct.dim3* nonnull %8, i64* nonnull %9, i8** nonnull %10)
  %19 = load i64, i64* %9, align 8
  %20 = bitcast i8** %10 to %struct.ihipStream_t**
  %21 = load %struct.ihipStream_t*, %struct.ihipStream_t** %20, align 8
  %22 = bitcast %struct.dim3* %7 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.dim3, %struct.dim3* %7, i64 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = bitcast %struct.dim3* %8 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.dim3, %struct.dim3* %8, i64 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32)** @_Z24atomic_reduction_kernel3PiS_i to i8*), i64 %23, i32 %25, i64 %27, i32 %29, i8** nonnull %12, i64 %19, %struct.ihipStream_t* %21)
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #7 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dim3, align 8
  %7 = alloca %struct.dim3, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [3 x i8*], align 16
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.hipDeviceProp_t, align 8
  %14 = alloca i32, align 4
  %15 = icmp slt i32 %0, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @str, i64 0, i64 0))
  %18 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 52428800)
  br label %24

19:                                               ; preds = %2
  %20 = getelementptr inbounds i8*, i8** %1, i64 1
  %21 = load i8*, i8** %20, align 8, !tbaa !3
  %22 = tail call i64 @strtol(i8* nocapture nonnull %21, i8** null, i32 10) #15
  %23 = trunc i64 %22 to i32
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i32 [ 52428800, %16 ], [ %23, %19 ]
  %26 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  %27 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i64 12)
  %28 = zext i32 %25 to i64
  %29 = shl nuw nsw i64 %28, 2
  %30 = uitofp i64 %29 to double
  %31 = fmul contract double %30, 0x3F50000000000000
  %32 = fmul contract double %31, 0x3F50000000000000
  %33 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, double %32)
  %34 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %33, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 3)
  %35 = bitcast %"class.std::basic_ostream"* %33 to i8**
  %36 = load i8*, i8** %35, align 8, !tbaa !9
  %37 = getelementptr i8, i8* %36, i64 -24
  %38 = bitcast i8* %37 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = bitcast %"class.std::basic_ostream"* %33 to i8*
  %41 = getelementptr inbounds i8, i8* %40, i64 %39
  %42 = getelementptr inbounds i8, i8* %41, i64 240
  %43 = bitcast i8* %42 to %"class.std::ctype"**
  %44 = load %"class.std::ctype"*, %"class.std::ctype"** %43, align 8, !tbaa !11
  %45 = icmp eq %"class.std::ctype"* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %24
  tail call void @_ZSt16__throw_bad_castv() #16
  unreachable

47:                                               ; preds = %24
  %48 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %44, i64 0, i32 8
  %49 = load i8, i8* %48, align 8, !tbaa !14
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %44, i64 0, i32 9, i64 10
  %53 = load i8, i8* %52, align 1, !tbaa !16
  br label %60

54:                                               ; preds = %47
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %44)
  %55 = bitcast %"class.std::ctype"* %44 to i8 (%"class.std::ctype"*, i8)***
  %56 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %55, align 8, !tbaa !9
  %57 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %56, i64 6
  %58 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %57, align 8
  %59 = tail call signext i8 %58(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %44, i8 signext 10)
  br label %60

60:                                               ; preds = %51, %54
  %61 = phi i8 [ %53, %51 ], [ %59, %54 ]
  %62 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %33, i8 signext %61)
  %63 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %62)
  %64 = tail call noalias align 16 i8* @malloc(i64 %29) #15
  %65 = bitcast i8* %64 to i32*
  %66 = icmp eq i32 %25, 0
  br i1 %66, label %67, label %122

67:                                               ; preds = %122, %60
  %68 = phi i32 [ 0, %60 ], [ %128, %122 ]
  %69 = bitcast i32** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %69) #15
  %70 = bitcast i32** %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %70) #15
  %71 = bitcast i32** %11 to i8**
  %72 = call i32 @hipMalloc(i8** nonnull %71, i64 %29)
  %73 = bitcast i32** %12 to i8**
  %74 = call i32 @hipMalloc(i8** nonnull %73, i64 4)
  %75 = call i32 @hipGetLastError()
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %67
  %78 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %79 = call i8* @hipGetErrorString(i32 %75)
  %80 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %78, i8* %79)
  %81 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %80)
  call void @exit(i32 %75) #14
  unreachable

82:                                               ; preds = %67
  %83 = load i8*, i8** %71, align 8, !tbaa !3
  %84 = call i32 @hipMemcpy(i8* %83, i8* %64, i64 %29, i32 1)
  %85 = call i32 @hipDeviceSynchronize()
  %86 = call i32 @hipGetLastError()
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %82
  %89 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %90 = call i8* @hipGetErrorString(i32 %86)
  %91 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %89, i8* %90)
  %92 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %91)
  call void @exit(i32 %86) #14
  unreachable

93:                                               ; preds = %82
  %94 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %13, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 792, i8* nonnull %94) #15
  %95 = call i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* nonnull %13, i32 0)
  %96 = add i32 %25, 255
  %97 = lshr i32 %96, 8
  %98 = icmp ult i32 %97, 2048
  %99 = select i1 %98, i32 %97, i32 2048
  %100 = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #15
  %101 = zext i32 %99 to i64
  %102 = or i64 %101, 4294967296
  %103 = bitcast i32** %3 to i8*
  %104 = bitcast i32** %4 to i8*
  %105 = bitcast i32* %5 to i8*
  %106 = bitcast %struct.dim3* %6 to i8*
  %107 = bitcast %struct.dim3* %7 to i8*
  %108 = bitcast i64* %8 to i8*
  %109 = bitcast i8** %9 to i8*
  %110 = bitcast [3 x i8*]* %10 to i8*
  %111 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 0
  %112 = bitcast [3 x i8*]* %10 to i32***
  %113 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 1
  %114 = bitcast i8** %113 to i32***
  %115 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 2
  %116 = bitcast i8** %115 to i32**
  %117 = bitcast i8** %9 to %struct.ihipStream_t**
  %118 = bitcast %struct.dim3* %6 to i64*
  %119 = getelementptr inbounds %struct.dim3, %struct.dim3* %6, i64 0, i32 2
  %120 = bitcast %struct.dim3* %7 to i64*
  %121 = getelementptr inbounds %struct.dim3, %struct.dim3* %7, i64 0, i32 2
  br label %190

122:                                              ; preds = %60, %122
  %123 = phi i64 [ %129, %122 ], [ 0, %60 ]
  %124 = phi i32 [ %128, %122 ], [ 0, %60 ]
  %125 = tail call i32 @rand() #15
  %126 = srem i32 %125, 2
  %127 = getelementptr inbounds i32, i32* %65, i64 %123
  store i32 %126, i32* %127, align 4, !tbaa !7
  %128 = add nsw i32 %126, %124
  %129 = add nuw nsw i64 %123, 1
  %130 = icmp eq i64 %129, %28
  br i1 %130, label %67, label %122, !llvm.loop !17

131:                                              ; preds = %215
  %132 = add nuw nsw i32 %191, 1
  %133 = icmp eq i32 %132, 10
  br i1 %133, label %134, label %190, !llvm.loop !19

134:                                              ; preds = %131
  %135 = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #15
  %136 = sub nsw i64 %135, %100
  %137 = sitofp i64 %136 to double
  %138 = fdiv contract double %137, 1.000000e+09
  %139 = uitofp i32 %25 to float
  %140 = fmul contract float %139, 4.000000e+00
  %141 = fmul contract float %140, 1.000000e+01
  %142 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i64 40)
  %143 = fpext float %141 to double
  %144 = fmul contract double %143, 1.000000e-09
  %145 = fdiv contract double %144, %138
  %146 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, double %145)
  %147 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %146, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i64 11)
  %148 = bitcast %"class.std::basic_ostream"* %146 to i8**
  %149 = load i8*, i8** %148, align 8, !tbaa !9
  %150 = getelementptr i8, i8* %149, i64 -24
  %151 = bitcast i8* %150 to i64*
  %152 = load i64, i64* %151, align 8
  %153 = bitcast %"class.std::basic_ostream"* %146 to i8*
  %154 = getelementptr inbounds i8, i8* %153, i64 %152
  %155 = getelementptr inbounds i8, i8* %154, i64 240
  %156 = bitcast i8* %155 to %"class.std::ctype"**
  %157 = load %"class.std::ctype"*, %"class.std::ctype"** %156, align 8, !tbaa !11
  %158 = icmp eq %"class.std::ctype"* %157, null
  br i1 %158, label %159, label %160

159:                                              ; preds = %134
  call void @_ZSt16__throw_bad_castv() #16
  unreachable

160:                                              ; preds = %134
  %161 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %157, i64 0, i32 8
  %162 = load i8, i8* %161, align 8, !tbaa !14
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %157, i64 0, i32 9, i64 10
  %166 = load i8, i8* %165, align 1, !tbaa !16
  br label %173

167:                                              ; preds = %160
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %157)
  %168 = bitcast %"class.std::ctype"* %157 to i8 (%"class.std::ctype"*, i8)***
  %169 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %168, align 8, !tbaa !9
  %170 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %169, i64 6
  %171 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %170, align 8
  %172 = call signext i8 %171(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %157, i8 signext 10)
  br label %173

173:                                              ; preds = %164, %167
  %174 = phi i8 [ %166, %164 ], [ %172, %167 ]
  %175 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %146, i8 signext %174)
  %176 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %175)
  %177 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %177) #15
  %178 = load i8*, i8** %73, align 8, !tbaa !3
  %179 = call i32 @hipMemcpy(i8* nonnull %177, i8* %178, i64 4, i32 2)
  %180 = call i32 @hipGetLastError()
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %187, label %182

182:                                              ; preds = %173
  %183 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %184 = call i8* @hipGetErrorString(i32 %180)
  %185 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %183, i8* %184)
  %186 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %185)
  call void @exit(i32 %180) #14
  unreachable

187:                                              ; preds = %173
  %188 = load i32, i32* %14, align 4, !tbaa !7
  %189 = icmp eq i32 %188, %68
  br i1 %189, label %224, label %281

190:                                              ; preds = %93, %131
  %191 = phi i32 [ 0, %93 ], [ %132, %131 ]
  %192 = load i8*, i8** %73, align 8, !tbaa !3
  %193 = call i32 @hipMemsetAsync(i8* %192, i32 0, i64 4, %struct.ihipStream_t* null)
  %194 = call i32 @__hipPushCallConfiguration(i64 %102, i32 1, i64 4294967552, i32 1, i64 0, %struct.ihipStream_t* null)
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %207

196:                                              ; preds = %190
  %197 = load i32*, i32** %11, align 8, !tbaa !3
  %198 = load i32*, i32** %12, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %103)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %104)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %105)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %106)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %107)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %108)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %109)
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %110)
  store i32* %197, i32** %3, align 8, !tbaa !3
  store i32* %198, i32** %4, align 8, !tbaa !3
  store i32 %25, i32* %5, align 4, !tbaa !7
  store i32** %3, i32*** %112, align 16
  store i32** %4, i32*** %114, align 8
  store i32* %5, i32** %116, align 16
  %199 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %6, %struct.dim3* nonnull %7, i64* nonnull %8, i8** nonnull %9)
  %200 = load i64, i64* %8, align 8
  %201 = load %struct.ihipStream_t*, %struct.ihipStream_t** %117, align 8
  %202 = load i64, i64* %118, align 8
  %203 = load i32, i32* %119, align 8
  %204 = load i64, i64* %120, align 8
  %205 = load i32, i32* %121, align 8
  %206 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32)** @_Z23atomic_reduction_kernelPiS_i to i8*), i64 %202, i32 %203, i64 %204, i32 %205, i8** nonnull %111, i64 %200, %struct.ihipStream_t* %201)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %103)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %104)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %105)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %106)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %107)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %108)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %109)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %110)
  br label %207

207:                                              ; preds = %196, %190
  %208 = call i32 @hipGetLastError()
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %207
  %211 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %212 = call i8* @hipGetErrorString(i32 %208)
  %213 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %211, i8* %212)
  %214 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %213)
  call void @exit(i32 %208) #14
  unreachable

215:                                              ; preds = %207
  %216 = call i32 @hipDeviceSynchronize()
  %217 = call i32 @hipGetLastError()
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %131, label %219

219:                                              ; preds = %215
  %220 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %221 = call i8* @hipGetErrorString(i32 %217)
  %222 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %220, i8* %221)
  %223 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %222)
  call void @exit(i32 %217) #14
  unreachable

224:                                              ; preds = %187
  %225 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i64 31)
  %226 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !9
  %227 = getelementptr i8, i8* %226, i64 -24
  %228 = bitcast i8* %227 to i64*
  %229 = load i64, i64* %228, align 8
  %230 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %229
  %231 = getelementptr inbounds i8, i8* %230, i64 240
  %232 = bitcast i8* %231 to %"class.std::ctype"**
  %233 = load %"class.std::ctype"*, %"class.std::ctype"** %232, align 8, !tbaa !11
  %234 = icmp eq %"class.std::ctype"* %233, null
  br i1 %234, label %235, label %236

235:                                              ; preds = %224
  call void @_ZSt16__throw_bad_castv() #16
  unreachable

236:                                              ; preds = %224
  %237 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %233, i64 0, i32 8
  %238 = load i8, i8* %237, align 8, !tbaa !14
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %236
  %241 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %233, i64 0, i32 9, i64 10
  %242 = load i8, i8* %241, align 1, !tbaa !16
  br label %249

243:                                              ; preds = %236
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %233)
  %244 = bitcast %"class.std::ctype"* %233 to i8 (%"class.std::ctype"*, i8)***
  %245 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %244, align 8, !tbaa !9
  %246 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %245, i64 6
  %247 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %246, align 8
  %248 = call signext i8 %247(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %233, i8 signext 10)
  br label %249

249:                                              ; preds = %240, %243
  %250 = phi i8 [ %242, %240 ], [ %248, %243 ]
  %251 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %250)
  %252 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %251)
  %253 = bitcast %"class.std::basic_ostream"* %252 to i8**
  %254 = load i8*, i8** %253, align 8, !tbaa !9
  %255 = getelementptr i8, i8* %254, i64 -24
  %256 = bitcast i8* %255 to i64*
  %257 = load i64, i64* %256, align 8
  %258 = bitcast %"class.std::basic_ostream"* %252 to i8*
  %259 = getelementptr inbounds i8, i8* %258, i64 %257
  %260 = getelementptr inbounds i8, i8* %259, i64 240
  %261 = bitcast i8* %260 to %"class.std::ctype"**
  %262 = load %"class.std::ctype"*, %"class.std::ctype"** %261, align 8, !tbaa !11
  %263 = icmp eq %"class.std::ctype"* %262, null
  br i1 %263, label %264, label %265

264:                                              ; preds = %249
  call void @_ZSt16__throw_bad_castv() #16
  unreachable

265:                                              ; preds = %249
  %266 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %262, i64 0, i32 8
  %267 = load i8, i8* %266, align 8, !tbaa !14
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %272, label %269

269:                                              ; preds = %265
  %270 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %262, i64 0, i32 9, i64 10
  %271 = load i8, i8* %270, align 1, !tbaa !16
  br label %278

272:                                              ; preds = %265
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %262)
  %273 = bitcast %"class.std::ctype"* %262 to i8 (%"class.std::ctype"*, i8)***
  %274 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %273, align 8, !tbaa !9
  %275 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %274, i64 6
  %276 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %275, align 8
  %277 = call signext i8 %276(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %262, i8 signext 10)
  br label %278

278:                                              ; preds = %269, %272
  %279 = phi i8 [ %271, %269 ], [ %277, %272 ]
  %280 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %252, i8 signext %279)
  br label %338

281:                                              ; preds = %187
  %282 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i64 35)
  %283 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !9
  %284 = getelementptr i8, i8* %283, i64 -24
  %285 = bitcast i8* %284 to i64*
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %286
  %288 = getelementptr inbounds i8, i8* %287, i64 240
  %289 = bitcast i8* %288 to %"class.std::ctype"**
  %290 = load %"class.std::ctype"*, %"class.std::ctype"** %289, align 8, !tbaa !11
  %291 = icmp eq %"class.std::ctype"* %290, null
  br i1 %291, label %292, label %293

292:                                              ; preds = %281
  call void @_ZSt16__throw_bad_castv() #16
  unreachable

293:                                              ; preds = %281
  %294 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %290, i64 0, i32 8
  %295 = load i8, i8* %294, align 8, !tbaa !14
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %300, label %297

297:                                              ; preds = %293
  %298 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %290, i64 0, i32 9, i64 10
  %299 = load i8, i8* %298, align 1, !tbaa !16
  br label %306

300:                                              ; preds = %293
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %290)
  %301 = bitcast %"class.std::ctype"* %290 to i8 (%"class.std::ctype"*, i8)***
  %302 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %301, align 8, !tbaa !9
  %303 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %302, i64 6
  %304 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %303, align 8
  %305 = call signext i8 %304(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %290, i8 signext 10)
  br label %306

306:                                              ; preds = %297, %300
  %307 = phi i8 [ %299, %297 ], [ %305, %300 ]
  %308 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %307)
  %309 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %308)
  %310 = bitcast %"class.std::basic_ostream"* %309 to i8**
  %311 = load i8*, i8** %310, align 8, !tbaa !9
  %312 = getelementptr i8, i8* %311, i64 -24
  %313 = bitcast i8* %312 to i64*
  %314 = load i64, i64* %313, align 8
  %315 = bitcast %"class.std::basic_ostream"* %309 to i8*
  %316 = getelementptr inbounds i8, i8* %315, i64 %314
  %317 = getelementptr inbounds i8, i8* %316, i64 240
  %318 = bitcast i8* %317 to %"class.std::ctype"**
  %319 = load %"class.std::ctype"*, %"class.std::ctype"** %318, align 8, !tbaa !11
  %320 = icmp eq %"class.std::ctype"* %319, null
  br i1 %320, label %321, label %322

321:                                              ; preds = %306
  call void @_ZSt16__throw_bad_castv() #16
  unreachable

322:                                              ; preds = %306
  %323 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %319, i64 0, i32 8
  %324 = load i8, i8* %323, align 8, !tbaa !14
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %329, label %326

326:                                              ; preds = %322
  %327 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %319, i64 0, i32 9, i64 10
  %328 = load i8, i8* %327, align 1, !tbaa !16
  br label %335

329:                                              ; preds = %322
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %319)
  %330 = bitcast %"class.std::ctype"* %319 to i8 (%"class.std::ctype"*, i8)***
  %331 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %330, align 8, !tbaa !9
  %332 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %331, i64 6
  %333 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %332, align 8
  %334 = call signext i8 %333(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %319, i8 signext 10)
  br label %335

335:                                              ; preds = %326, %329
  %336 = phi i8 [ %328, %326 ], [ %334, %329 ]
  %337 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %309, i8 signext %336)
  br label %338

338:                                              ; preds = %335, %278
  %339 = phi %"class.std::basic_ostream"* [ %337, %335 ], [ %280, %278 ]
  %340 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %339)
  %341 = load i8*, i8** %71, align 8, !tbaa !3
  %342 = call i32 @hipFree(i8* %341)
  %343 = load i8*, i8** %73, align 8, !tbaa !3
  %344 = call i32 @hipFree(i8* %343)
  %345 = call i32 @hipGetLastError()
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %352, label %347

347:                                              ; preds = %338
  %348 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %349 = call i8* @hipGetErrorString(i32 %345)
  %350 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %348, i8* %349)
  %351 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %350)
  call void @exit(i32 %345) #14
  unreachable

352:                                              ; preds = %338
  call void @free(i8* %64) #15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %177) #15
  call void @llvm.lifetime.end.p0i8(i64 792, i8* nonnull %94) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %70) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %69) #15
  ret i32 0
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #1

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #0

declare dso_local i32 @hipDeviceSynchronize() local_unnamed_addr #0

declare dso_local i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t*, i32) local_unnamed_addr #0

; Function Attrs: nounwind
declare dso_local i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #1

declare dso_local i32 @hipMemsetAsync(i8*, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #0

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #0

declare dso_local i32 @hipFree(i8*) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #11

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8 signext) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: noreturn
declare dso_local void @_ZSt16__throw_bad_castv() local_unnamed_addr #12

declare dso_local void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570)) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), double) local_unnamed_addr #0

declare dso_local i32 @hipMalloc(i8**, i64) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_reduction.cpp() #13 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #15
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
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32*, i32*, i32)** @_Z23atomic_reduction_kernelPiS_i to i8*), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %9 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32*, i32*, i32)** @_Z24atomic_reduction_kernel2PiS_i to i8*), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %10 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32*, i32*, i32)** @_Z24atomic_reduction_kernel3PiS_i to i8*), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @2, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @2, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %11 = tail call i32 @atexit(void (i8*)* nonnull @__hip_module_dtor)
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

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #2

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { inlinehint mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git bdeeab053a8bf72a56bdf54d056a43ecb9dc2748)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !6, i64 0}
!11 = !{!12, !4, i64 240}
!12 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !4, i64 216, !5, i64 224, !13, i64 225, !4, i64 232, !4, i64 240, !4, i64 248, !4, i64 256}
!13 = !{!"bool", !5, i64 0}
!14 = !{!15, !5, i64 56}
!15 = !{!"_ZTSSt5ctypeIcE", !4, i64 16, !13, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!16 = !{!5, !5, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
