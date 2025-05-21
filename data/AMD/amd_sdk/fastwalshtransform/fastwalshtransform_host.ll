; ModuleID = 'fastwalshtransform/fastwalshtransform.cpp'
source_filename = "fastwalshtransform/fastwalshtransform.cpp"
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
%class.FastWalshTransform = type { i32, double, double, double, double, i32, float*, float*, float*, float*, float*, i32, %"class.appsdk::SDKTimer"*, %"class.appsdk::HIPCommandArgs"* }
%"class.appsdk::SDKTimer" = type { %"class.std::vector", double }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<appsdk::SDKTimer::Timer *, std::allocator<appsdk::SDKTimer::Timer *>>::_Vector_impl" }
%"struct.std::_Vector_base<appsdk::SDKTimer::Timer *, std::allocator<appsdk::SDKTimer::Timer *>>::_Vector_impl" = type { %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"** }
%"struct.appsdk::SDKTimer::Timer" = type { %"class.std::basic_string", i64, i64, i64 }
%"class.std::basic_string" = type { %"struct.std::basic_string<char>::_Alloc_hider" }
%"struct.std::basic_string<char>::_Alloc_hider" = type { i8* }
%"class.appsdk::HIPCommandArgs" = type <{ %"class.appsdk::SDKCmdArgsParser", i32, i8, [3 x i8] }>
%"class.appsdk::SDKCmdArgsParser" = type { i32 (...)**, i32, i32, i32, i8**, %"struct.appsdk::Option"*, i8, %"class.std::basic_string", %"struct.appsdk::sdkVersionStr", i8, i8, i8, %"class.std::basic_string" }
%"struct.appsdk::Option" = type { %"class.std::basic_string", %"class.std::basic_string", %"class.std::basic_string", %"class.std::basic_string", i32, i8* }
%"struct.appsdk::sdkVersionStr" = type { i32, i32, i32, i32, i32 }
%"class.std::allocator.0" = type { i8 }
%"struct.std::basic_string<char>::_Rep" = type { %"struct.std::basic_string<char>::_Rep_base" }
%"struct.std::basic_string<char>::_Rep_base" = type { i64, i64, i32 }
%struct.hipDeviceProp_t = type { [256 x i8], i64, i64, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.hipDeviceArch_t, i32, i32, i32, i32, i64, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32*, i32*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hipDeviceArch_t = type { i32 }
%struct.ihipEvent_t = type opaque
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%"class.std::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { i32 (...)** }
%"class.std::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::basic_string" }

$_ZN6appsdk10fillRandomIfEEiPT_iiS1_S1_j = comdat any

$_ZN6appsdk10printArrayIfEEvSsPKT_ii = comdat any

$_ZN6appsdk14HIPCommandArgs10initializeEv = comdat any

$_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE = comdat any

$_ZN6appsdk6OptionD2Ev = comdat any

$_ZN6appsdk8SDKTimer11createTimerEv = comdat any

$_ZN6appsdk8SDKTimer10startTimerEi = comdat any

$_ZN6appsdk8SDKTimer9stopTimerEi = comdat any

$_ZN6appsdk8SDKTimer9readTimerEi = comdat any

$_ZN6appsdk14HIPCommandArgs16parseCommandLineEiPPc = comdat any

$_ZN6appsdk16SDKCmdArgsParserD2Ev = comdat any

$_ZN6appsdk14HIPCommandArgsD0Ev = comdat any

$_ZN6appsdk16SDKCmdArgsParser5usageEv = comdat any

$_ZN6appsdk16SDKCmdArgsParser5matchEPPci = comdat any

$_ZN6appsdk16SDKCmdArgsParser4helpEv = comdat any

$_ZTVN6appsdk14HIPCommandArgsE = comdat any

$_ZTSN6appsdk14HIPCommandArgsE = comdat any

$_ZTSN6appsdk16SDKCmdArgsParserE = comdat any

$_ZTIN6appsdk16SDKCmdArgsParserE = comdat any

$_ZTIN6appsdk14HIPCommandArgsE = comdat any

$_ZTVN6appsdk16SDKCmdArgsParserE = comdat any

$__hip_gpubin_handle = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_Z18fastWalshTransformPfi = dso_local constant void (float*, i32)* @_Z33__device_stub__fastWalshTransformPfi, align 8
@.str = private unnamed_addr constant [40 x i8] c"Failed to allocate host memory. (input)\00", align 1
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"Location : \00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"fastwalshtransform/fastwalshtransform.cpp\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Failed to allocate host memory. (output)\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"Failed to allocate host memory. (verificationInput)\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c" System minor \00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c" System major \00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c" agent prop name \00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"kernel_time (hipEventElapsedTime) =%6.3fms\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Length of input array\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"Number of iterations for kernel execution\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Executing kernel for \00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c" iterations\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"-------------------------------------------\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"Passed!\0A\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"Failed\0A\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"Length\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"Time(sec)\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"[Transfer+Kernel]Time(sec)\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"Error: \00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"Quiet mode. Suppress all text output.\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.36 = private unnamed_addr constant [49 x i8] c"Verify results against reference implementation.\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"timing\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"Print timing.\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"AMD APP SDK version string.\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"deviceId\00", align 1
@.str.45 = private unnamed_addr constant [74 x i8] c"Select deviceId to be used[0 to N-1 where N is number devices available].\00", align 1
@.str.46 = private unnamed_addr constant [37 x i8] c"Error. Cannot add option, NULL input\00", align 1
@.str.50 = private unnamed_addr constant [36 x i8] c"Cannot reset timer. Invalid handle.\00", align 1
@.str.51 = private unnamed_addr constant [35 x i8] c"Cannot read timer. Invalid handle.\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.55 = private unnamed_addr constant [30 x i8] c"HIP-Examples-Application-v1.0\00", align 1
@_ZTVN6appsdk14HIPCommandArgsE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN6appsdk14HIPCommandArgsE to i8*), i8* bitcast (i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)* @_ZN6appsdk14HIPCommandArgs16parseCommandLineEiPPc to i8*), i8* bitcast (void (%"class.appsdk::SDKCmdArgsParser"*)* @_ZN6appsdk16SDKCmdArgsParserD2Ev to i8*), i8* bitcast (void (%"class.appsdk::HIPCommandArgs"*)* @_ZN6appsdk14HIPCommandArgsD0Ev to i8*)] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTSN6appsdk14HIPCommandArgsE = linkonce_odr dso_local constant [26 x i8] c"N6appsdk14HIPCommandArgsE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTSN6appsdk16SDKCmdArgsParserE = linkonce_odr dso_local constant [28 x i8] c"N6appsdk16SDKCmdArgsParserE\00", comdat, align 1
@_ZTIN6appsdk16SDKCmdArgsParserE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_ZTSN6appsdk16SDKCmdArgsParserE, i32 0, i32 0) }, comdat, align 8
@_ZTIN6appsdk14HIPCommandArgsE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @_ZTSN6appsdk14HIPCommandArgsE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN6appsdk16SDKCmdArgsParserE to i8*) }, comdat, align 8
@_ZTVN6appsdk16SDKCmdArgsParserE = linkonce_odr dso_local unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN6appsdk16SDKCmdArgsParserE to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str.56 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"SDK version : \00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.59 = private unnamed_addr constant [30 x i8] c"Error. Missing argument for \22\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_ZNSs4_Rep20_S_empty_rep_storageE = external dso_local global [0 x i64], align 8
@.str.63 = private unnamed_addr constant [7 x i8] c"Usage\0A\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"-h, \00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.66 = private unnamed_addr constant [26 x i8] c"Display this information\0A\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.70 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"Cannot fill array. NULL pointer.\00", align 1
@_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE = external unnamed_addr constant [4 x i8*], align 8
@_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@0 = private unnamed_addr constant [26 x i8] c"_Z18fastWalshTransformPfi\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_fastwalshtransform.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: norecurse uwtable
define dso_local void @_Z33__device_stub__fastWalshTransformPfi(float* %0, i32 %1) #3 {
  %3 = alloca float*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dim3, align 8
  %6 = alloca %struct.dim3, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store float* %0, float** %3, align 8, !tbaa !3
  store i32 %1, i32* %4, align 4, !tbaa !7
  %9 = alloca [2 x i8*], align 16
  %10 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %11 = bitcast [2 x i8*]* %9 to float***
  store float** %3, float*** %11, align 16
  %12 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 1
  %13 = bitcast i8** %12 to i32**
  store i32* %4, i32** %13, align 8
  %14 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %5, %struct.dim3* nonnull %6, i64* nonnull %7, i8** nonnull %8)
  %15 = load i64, i64* %7, align 8
  %16 = bitcast i8** %8 to %struct.ihipStream_t**
  %17 = load %struct.ihipStream_t*, %struct.ihipStream_t** %16, align 8
  %18 = bitcast %struct.dim3* %5 to i64*
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.dim3, %struct.dim3* %5, i64 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = bitcast %struct.dim3* %6 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.dim3, %struct.dim3* %6, i64 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, i32)** @_Z18fastWalshTransformPfi to i8*), i64 %19, i32 %21, i64 %23, i32 %25, i8** nonnull %10, i64 %15, %struct.ihipStream_t* %17)
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: uwtable
define dso_local i32 @_ZN18FastWalshTransform23setupFastWalshTransformEv(%class.FastWalshTransform* nocapture nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::allocator.0", align 1
  %8 = alloca %"class.std::basic_string", align 8
  %9 = alloca %"class.std::allocator.0", align 1
  %10 = alloca %"class.std::basic_string", align 8
  %11 = alloca %"class.std::allocator.0", align 1
  %12 = alloca %"class.std::basic_string", align 8
  %13 = alloca %"class.std::allocator.0", align 1
  %14 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 5
  %15 = load i32, i32* %14, align 8, !tbaa !9
  %16 = icmp slt i32 %15, 512
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 512, i32* %14, align 8, !tbaa !9
  br label %18

18:                                               ; preds = %17, %1
  %19 = phi i32 [ 512, %17 ], [ %15, %1 ]
  %20 = shl i32 %19, 2
  %21 = zext i32 %20 to i64
  %22 = tail call noalias align 16 i8* @malloc(i64 %21) #25
  %23 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 6
  %24 = bitcast float** %23 to i8**
  store i8* %22, i8** %24, align 8, !tbaa !12
  %25 = icmp eq i8* %22, null
  %26 = bitcast i8* %22 to float*
  br i1 %25, label %27, label %89

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %28) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7)
          to label %29 unwind label %83

29:                                               ; preds = %27
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %6)
          to label %30 unwind label %85

30:                                               ; preds = %29
  %31 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i64 0, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8, !tbaa !13
  %33 = getelementptr inbounds i8, i8* %32, i64 -24
  %34 = bitcast i8* %33 to %"struct.std::basic_string<char>::_Rep"*
  %35 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %35) #25
  %36 = icmp eq i8* %33, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %36, label %49, label %37, !prof !16

37:                                               ; preds = %30
  %38 = getelementptr inbounds i8, i8* %32, i64 -8
  %39 = bitcast i8* %38 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %40, label %42

40:                                               ; preds = %37
  %41 = atomicrmw volatile add i32* %39, i32 -1 acq_rel, align 4
  br label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %39, align 8, !tbaa !7
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %39, align 8, !tbaa !7
  br label %45

45:                                               ; preds = %42, %40
  %46 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %34, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #25
  br label %49

49:                                               ; preds = %30, %45, %48
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %35) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %28) #25
  %50 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %51 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 41)
  %52 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %53 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 142)
  %54 = bitcast %"class.std::basic_ostream"* %53 to i8**
  %55 = load i8*, i8** %54, align 8, !tbaa !17
  %56 = getelementptr i8, i8* %55, i64 -24
  %57 = bitcast i8* %56 to i64*
  %58 = load i64, i64* %57, align 8
  %59 = bitcast %"class.std::basic_ostream"* %53 to i8*
  %60 = getelementptr inbounds i8, i8* %59, i64 %58
  %61 = getelementptr inbounds i8, i8* %60, i64 240
  %62 = bitcast i8* %61 to %"class.std::ctype"**
  %63 = load %"class.std::ctype"*, %"class.std::ctype"** %62, align 8, !tbaa !19
  %64 = icmp eq %"class.std::ctype"* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %49
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

66:                                               ; preds = %49
  %67 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %63, i64 0, i32 8
  %68 = load i8, i8* %67, align 8, !tbaa !22
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %63, i64 0, i32 9, i64 10
  %72 = load i8, i8* %71, align 1, !tbaa !24
  br label %79

73:                                               ; preds = %66
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %63)
  %74 = bitcast %"class.std::ctype"* %63 to i8 (%"class.std::ctype"*, i8)***
  %75 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %74, align 8, !tbaa !17
  %76 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %75, i64 6
  %77 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %76, align 8
  %78 = call signext i8 %77(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %63, i8 signext 10)
  br label %79

79:                                               ; preds = %70, %73
  %80 = phi i8 [ %72, %70 ], [ %78, %73 ]
  %81 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %53, i8 signext %80)
  %82 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %81)
  br label %268

83:                                               ; preds = %27
  %84 = landingpad { i8*, i32 }
          cleanup
  br label %87

85:                                               ; preds = %29
  %86 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6) #25
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi { i8*, i32 } [ %86, %85 ], [ %84, %83 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %28) #25
  br label %270

89:                                               ; preds = %18
  %90 = tail call noalias align 16 i8* @malloc(i64 %21) #25
  %91 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 7
  %92 = bitcast float** %91 to i8**
  store i8* %90, i8** %92, align 8, !tbaa !25
  %93 = icmp eq i8* %90, null
  br i1 %93, label %94, label %156

94:                                               ; preds = %89
  %95 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %9, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %95) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %9)
          to label %96 unwind label %150

96:                                               ; preds = %94
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %8)
          to label %97 unwind label %152

97:                                               ; preds = %96
  %98 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %8, i64 0, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8, !tbaa !13
  %100 = getelementptr inbounds i8, i8* %99, i64 -24
  %101 = bitcast i8* %100 to %"struct.std::basic_string<char>::_Rep"*
  %102 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %102) #25
  %103 = icmp eq i8* %100, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %103, label %116, label %104, !prof !16

104:                                              ; preds = %97
  %105 = getelementptr inbounds i8, i8* %99, i64 -8
  %106 = bitcast i8* %105 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %107, label %109

107:                                              ; preds = %104
  %108 = atomicrmw volatile add i32* %106, i32 -1 acq_rel, align 4
  br label %112

109:                                              ; preds = %104
  %110 = load i32, i32* %106, align 8, !tbaa !7
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %106, align 8, !tbaa !7
  br label %112

112:                                              ; preds = %109, %107
  %113 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %114 = icmp slt i32 %113, 1
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %101, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #25
  br label %116

116:                                              ; preds = %97, %112, %115
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %102) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %95) #25
  %117 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %118 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 41)
  %119 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %120 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 145)
  %121 = bitcast %"class.std::basic_ostream"* %120 to i8**
  %122 = load i8*, i8** %121, align 8, !tbaa !17
  %123 = getelementptr i8, i8* %122, i64 -24
  %124 = bitcast i8* %123 to i64*
  %125 = load i64, i64* %124, align 8
  %126 = bitcast %"class.std::basic_ostream"* %120 to i8*
  %127 = getelementptr inbounds i8, i8* %126, i64 %125
  %128 = getelementptr inbounds i8, i8* %127, i64 240
  %129 = bitcast i8* %128 to %"class.std::ctype"**
  %130 = load %"class.std::ctype"*, %"class.std::ctype"** %129, align 8, !tbaa !19
  %131 = icmp eq %"class.std::ctype"* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %116
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

133:                                              ; preds = %116
  %134 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %130, i64 0, i32 8
  %135 = load i8, i8* %134, align 8, !tbaa !22
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %130, i64 0, i32 9, i64 10
  %139 = load i8, i8* %138, align 1, !tbaa !24
  br label %146

140:                                              ; preds = %133
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %130)
  %141 = bitcast %"class.std::ctype"* %130 to i8 (%"class.std::ctype"*, i8)***
  %142 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %141, align 8, !tbaa !17
  %143 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %142, i64 6
  %144 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %143, align 8
  %145 = call signext i8 %144(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %130, i8 signext 10)
  br label %146

146:                                              ; preds = %137, %140
  %147 = phi i8 [ %139, %137 ], [ %145, %140 ]
  %148 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %120, i8 signext %147)
  %149 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %148)
  br label %268

150:                                              ; preds = %94
  %151 = landingpad { i8*, i32 }
          cleanup
  br label %154

152:                                              ; preds = %96
  %153 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8) #25
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi { i8*, i32 } [ %153, %152 ], [ %151, %150 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %95) #25
  br label %270

156:                                              ; preds = %89
  %157 = tail call i32 @_ZN6appsdk10fillRandomIfEEiPT_iiS1_S1_j(float* nonnull %26, i32 %19, i32 1, float 0.000000e+00, float 2.550000e+02, i32 123)
  %158 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 13
  %159 = bitcast %"class.appsdk::HIPCommandArgs"** %158 to %"class.appsdk::SDKCmdArgsParser"**
  %160 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %159, align 8, !tbaa !26
  %161 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %160, i64 0, i32 10
  %162 = load i8, i8* %161, align 1, !tbaa !27, !range !30
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %233, label %164

164:                                              ; preds = %156
  %165 = tail call noalias align 16 i8* @malloc(i64 %21) #25
  %166 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 8
  %167 = bitcast float** %166 to i8**
  store i8* %165, i8** %167, align 8, !tbaa !31
  %168 = icmp eq i8* %165, null
  br i1 %168, label %169, label %231

169:                                              ; preds = %164
  %170 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %11, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %170) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11)
          to label %171 unwind label %225

171:                                              ; preds = %169
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %10)
          to label %172 unwind label %227

172:                                              ; preds = %171
  %173 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %10, i64 0, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8, !tbaa !13
  %175 = getelementptr inbounds i8, i8* %174, i64 -24
  %176 = bitcast i8* %175 to %"struct.std::basic_string<char>::_Rep"*
  %177 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %177) #25
  %178 = icmp eq i8* %175, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %178, label %191, label %179, !prof !16

179:                                              ; preds = %172
  %180 = getelementptr inbounds i8, i8* %174, i64 -8
  %181 = bitcast i8* %180 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %182, label %184

182:                                              ; preds = %179
  %183 = atomicrmw volatile add i32* %181, i32 -1 acq_rel, align 4
  br label %187

184:                                              ; preds = %179
  %185 = load i32, i32* %181, align 8, !tbaa !7
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %181, align 8, !tbaa !7
  br label %187

187:                                              ; preds = %184, %182
  %188 = phi i32 [ %183, %182 ], [ %185, %184 ]
  %189 = icmp slt i32 %188, 1
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %176, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #25
  br label %191

191:                                              ; preds = %172, %187, %190
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %177) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %170) #25
  %192 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 11)
  %193 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 41)
  %194 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %195 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 154)
  %196 = bitcast %"class.std::basic_ostream"* %195 to i8**
  %197 = load i8*, i8** %196, align 8, !tbaa !17
  %198 = getelementptr i8, i8* %197, i64 -24
  %199 = bitcast i8* %198 to i64*
  %200 = load i64, i64* %199, align 8
  %201 = bitcast %"class.std::basic_ostream"* %195 to i8*
  %202 = getelementptr inbounds i8, i8* %201, i64 %200
  %203 = getelementptr inbounds i8, i8* %202, i64 240
  %204 = bitcast i8* %203 to %"class.std::ctype"**
  %205 = load %"class.std::ctype"*, %"class.std::ctype"** %204, align 8, !tbaa !19
  %206 = icmp eq %"class.std::ctype"* %205, null
  br i1 %206, label %207, label %208

207:                                              ; preds = %191
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

208:                                              ; preds = %191
  %209 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %205, i64 0, i32 8
  %210 = load i8, i8* %209, align 8, !tbaa !22
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %208
  %213 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %205, i64 0, i32 9, i64 10
  %214 = load i8, i8* %213, align 1, !tbaa !24
  br label %221

215:                                              ; preds = %208
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %205)
  %216 = bitcast %"class.std::ctype"* %205 to i8 (%"class.std::ctype"*, i8)***
  %217 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %216, align 8, !tbaa !17
  %218 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %217, i64 6
  %219 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %218, align 8
  %220 = call signext i8 %219(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %205, i8 signext 10)
  br label %221

221:                                              ; preds = %212, %215
  %222 = phi i8 [ %214, %212 ], [ %220, %215 ]
  %223 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %195, i8 signext %222)
  %224 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %223)
  br label %268

225:                                              ; preds = %169
  %226 = landingpad { i8*, i32 }
          cleanup
  br label %229

227:                                              ; preds = %171
  %228 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10) #25
  br label %229

229:                                              ; preds = %227, %225
  %230 = phi { i8*, i32 } [ %228, %227 ], [ %226, %225 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %170) #25
  br label %270

231:                                              ; preds = %164
  %232 = load i8*, i8** %24, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %165, i8* align 4 %232, i64 %21, i1 false)
  br label %233

233:                                              ; preds = %231, %156
  %234 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %160, i64 0, i32 9
  %235 = load i8, i8* %234, align 4, !tbaa !32, !range !30
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %237, label %268

237:                                              ; preds = %233
  %238 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %13, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %238) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %13)
          to label %239 unwind label %262

239:                                              ; preds = %237
  %240 = load float*, float** %23, align 8, !tbaa !12
  %241 = load i32, i32* %14, align 8, !tbaa !9
  invoke void @_ZN6appsdk10printArrayIfEEvSsPKT_ii(%"class.std::basic_string"* nonnull %12, float* %240, i32 %241, i32 1)
          to label %242 unwind label %264

242:                                              ; preds = %239
  %243 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %12, i64 0, i32 0, i32 0
  %244 = load i8*, i8** %243, align 8, !tbaa !13
  %245 = getelementptr inbounds i8, i8* %244, i64 -24
  %246 = bitcast i8* %245 to %"struct.std::basic_string<char>::_Rep"*
  %247 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %247) #25
  %248 = icmp eq i8* %245, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %248, label %261, label %249, !prof !16

249:                                              ; preds = %242
  %250 = getelementptr inbounds i8, i8* %244, i64 -8
  %251 = bitcast i8* %250 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %252, label %254

252:                                              ; preds = %249
  %253 = atomicrmw volatile add i32* %251, i32 -1 acq_rel, align 4
  br label %257

254:                                              ; preds = %249
  %255 = load i32, i32* %251, align 8, !tbaa !7
  %256 = add nsw i32 %255, -1
  store i32 %256, i32* %251, align 8, !tbaa !7
  br label %257

257:                                              ; preds = %254, %252
  %258 = phi i32 [ %253, %252 ], [ %255, %254 ]
  %259 = icmp slt i32 %258, 1
  br i1 %259, label %260, label %261

260:                                              ; preds = %257
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %246, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #25
  br label %261

261:                                              ; preds = %242, %257, %260
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %247) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %238) #25
  br label %268

262:                                              ; preds = %237
  %263 = landingpad { i8*, i32 }
          cleanup
  br label %266

264:                                              ; preds = %239
  %265 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12) #25
  br label %266

266:                                              ; preds = %264, %262
  %267 = phi { i8*, i32 } [ %265, %264 ], [ %263, %262 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %238) #25
  br label %270

268:                                              ; preds = %233, %261, %221, %146, %79
  %269 = phi i32 [ 1, %79 ], [ 1, %146 ], [ 1, %221 ], [ 0, %261 ], [ 0, %233 ]
  ret i32 %269

270:                                              ; preds = %266, %229, %154, %87
  %271 = phi { i8*, i32 } [ %88, %87 ], [ %155, %154 ], [ %230, %229 ], [ %267, %266 ]
  resume { i8*, i32 } %271
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nocapture readonly %0) unnamed_addr #8 {
  %2 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i64 7)
  %3 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 0, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8, !tbaa !13
  %5 = getelementptr inbounds i8, i8* %4, i64 -24
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !33
  %8 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %4, i64 %7)
  %9 = bitcast %"class.std::basic_ostream"* %8 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !17
  %11 = getelementptr i8, i8* %10, i64 -24
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = bitcast %"class.std::basic_ostream"* %8 to i8*
  %15 = getelementptr inbounds i8, i8* %14, i64 %13
  %16 = getelementptr inbounds i8, i8* %15, i64 240
  %17 = bitcast i8* %16 to %"class.std::ctype"**
  %18 = load %"class.std::ctype"*, %"class.std::ctype"** %17, align 8, !tbaa !19
  %19 = icmp eq %"class.std::ctype"* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

21:                                               ; preds = %1
  %22 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %18, i64 0, i32 8
  %23 = load i8, i8* %22, align 8, !tbaa !22
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %18, i64 0, i32 9, i64 10
  %27 = load i8, i8* %26, align 1, !tbaa !24
  br label %34

28:                                               ; preds = %21
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %18)
  %29 = bitcast %"class.std::ctype"* %18 to i8 (%"class.std::ctype"*, i8)***
  %30 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %29, align 8, !tbaa !17
  %31 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %30, i64 6
  %32 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %31, align 8
  %33 = tail call signext i8 %32(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %18, i8 signext 10)
  br label %34

34:                                               ; preds = %25, %28
  %35 = phi i8 [ %27, %25 ], [ %33, %28 ]
  %36 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %8, i8 signext %35)
  %37 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %36)
  ret void
}

declare dso_local void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i8*, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1)) unnamed_addr #0

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind uwtable
declare dso_local void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8)) unnamed_addr #9 align 2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: inlinehint mustprogress uwtable
declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*) local_unnamed_addr #10

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i32) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #10

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk10fillRandomIfEEiPT_iiS1_S1_j(float* %0, i32 %1, i32 %2, float %3, float %4, i32 %5) local_unnamed_addr #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %7 = alloca %"class.std::allocator.0", align 1
  %8 = alloca %"class.std::basic_string", align 8
  %9 = alloca %"class.std::allocator.0", align 1
  %10 = icmp eq float* %0, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %6
  %12 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %9, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %12) #25
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.72, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %9)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %8)
          to label %13 unwind label %33

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %8, i64 0, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8, !tbaa !13
  %16 = getelementptr inbounds i8, i8* %15, i64 -24
  %17 = bitcast i8* %16 to %"struct.std::basic_string<char>::_Rep"*
  %18 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #25
  %19 = icmp eq i8* %16, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %19, label %32, label %20, !prof !16

20:                                               ; preds = %13
  %21 = getelementptr inbounds i8, i8* %15, i64 -8
  %22 = bitcast i8* %21 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %23, label %25

23:                                               ; preds = %20
  %24 = atomicrmw volatile add i32* %22, i32 -1 acq_rel, align 4
  br label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %22, align 8, !tbaa !7
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %22, align 8, !tbaa !7
  br label %28

28:                                               ; preds = %25, %23
  %29 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %17, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7) #25
  br label %32

32:                                               ; preds = %13, %28, %31
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %12) #25
  br label %70

33:                                               ; preds = %11
  %34 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %12) #25
  resume { i8*, i32 } %34

35:                                               ; preds = %6
  %36 = icmp eq i32 %5, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = tail call i64 @time(i64* null) #25
  %39 = trunc i64 %38 to i32
  br label %40

40:                                               ; preds = %37, %35
  %41 = phi i32 [ %5, %35 ], [ %39, %37 ]
  tail call void @srand(i32 %41) #25
  %42 = fsub contract float %4, %3
  %43 = fpext float %42 to double
  %44 = fadd contract double %43, 1.000000e+00
  %45 = icmp sgt i32 %2, 0
  %46 = icmp sgt i32 %1, 0
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %48, label %70

48:                                               ; preds = %40
  %49 = zext i32 %1 to i64
  %50 = zext i32 %2 to i64
  %51 = zext i32 %1 to i64
  br label %52

52:                                               ; preds = %48, %67
  %53 = phi i64 [ 0, %48 ], [ %68, %67 ]
  %54 = mul nsw i64 %53, %49
  br label %55

55:                                               ; preds = %52, %55
  %56 = phi i64 [ 0, %52 ], [ %65, %55 ]
  %57 = add nuw nsw i64 %56, %54
  %58 = tail call i32 @rand() #25
  %59 = sitofp i32 %58 to double
  %60 = fmul contract double %44, %59
  %61 = fmul contract double %60, 0x3E00000000000000
  %62 = fptrunc double %61 to float
  %63 = fadd contract float %62, %3
  %64 = getelementptr inbounds float, float* %0, i64 %57
  store float %63, float* %64, align 4, !tbaa !36
  %65 = add nuw nsw i64 %56, 1
  %66 = icmp eq i64 %65, %51
  br i1 %66, label %67, label %55, !llvm.loop !38

67:                                               ; preds = %55
  %68 = add nuw nsw i64 %53, 1
  %69 = icmp eq i64 %68, %50
  br i1 %69, label %70, label %52, !llvm.loop !40

70:                                               ; preds = %67, %40, %32
  %71 = phi i32 [ 1, %32 ], [ 0, %40 ], [ 0, %67 ]
  ret i32 %71
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6appsdk10printArrayIfEEvSsPKT_ii(%"class.std::basic_string"* %0, float* %1, i32 %2, i32 %3) local_unnamed_addr #8 comdat {
  %5 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), i64 1)
  %6 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %0, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !13
  %8 = getelementptr inbounds i8, i8* %7, i64 -24
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !33
  %11 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* %7, i64 %10)
  %12 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %11, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), i64 1)
  %13 = icmp sgt i32 %3, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %4
  %15 = icmp sgt i32 %2, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %14
  %17 = zext i32 %2 to i64
  %18 = zext i32 %3 to i64
  %19 = zext i32 %2 to i64
  br label %20

20:                                               ; preds = %16, %33
  %21 = phi i64 [ 0, %16 ], [ %35, %33 ]
  %22 = mul nsw i64 %21, %17
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 0, %20 ], [ %31, %23 ]
  %25 = add nuw nsw i64 %24, %22
  %26 = getelementptr inbounds float, float* %1, i64 %25
  %27 = load float, float* %26, align 4, !tbaa !36
  %28 = fpext float %27 to double
  %29 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, double %28)
  %30 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %29, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0), i64 1)
  %31 = add nuw nsw i64 %24, 1
  %32 = icmp eq i64 %31, %19
  br i1 %32, label %33, label %23, !llvm.loop !41

33:                                               ; preds = %23
  %34 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), i64 1)
  %35 = add nuw nsw i64 %21, 1
  %36 = icmp eq i64 %35, %18
  br i1 %36, label %42, label %20, !llvm.loop !42

37:                                               ; preds = %14, %37
  %38 = phi i32 [ %40, %37 ], [ 0, %14 ]
  %39 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), i64 1)
  %40 = add nuw nsw i32 %38, 1
  %41 = icmp eq i32 %40, %3
  br i1 %41, label %42, label %37, !llvm.loop !42

42:                                               ; preds = %37, %33, %4
  %43 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), i64 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN18FastWalshTransform8setupHIPEv(%class.FastWalshTransform* nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #8 align 2 {
  %2 = alloca %struct.hipDeviceProp_t, align 8
  %3 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %2, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 792, i8* nonnull %3) #25
  %4 = call i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t* nonnull %2, i32 0)
  %5 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i64 14)
  %6 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %2, i64 0, i32 13
  %7 = load i32, i32* %6, align 4, !tbaa !43
  %8 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %7)
  %9 = bitcast %"class.std::basic_ostream"* %8 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !17
  %11 = getelementptr i8, i8* %10, i64 -24
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = bitcast %"class.std::basic_ostream"* %8 to i8*
  %15 = getelementptr inbounds i8, i8* %14, i64 %13
  %16 = getelementptr inbounds i8, i8* %15, i64 240
  %17 = bitcast i8* %16 to %"class.std::ctype"**
  %18 = load %"class.std::ctype"*, %"class.std::ctype"** %17, align 8, !tbaa !19
  %19 = icmp eq %"class.std::ctype"* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

21:                                               ; preds = %1
  %22 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %18, i64 0, i32 8
  %23 = load i8, i8* %22, align 8, !tbaa !22
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %18, i64 0, i32 9, i64 10
  %27 = load i8, i8* %26, align 1, !tbaa !24
  br label %34

28:                                               ; preds = %21
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %18)
  %29 = bitcast %"class.std::ctype"* %18 to i8 (%"class.std::ctype"*, i8)***
  %30 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %29, align 8, !tbaa !17
  %31 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %30, i64 6
  %32 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %31, align 8
  %33 = call signext i8 %32(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %18, i8 signext 10)
  br label %34

34:                                               ; preds = %25, %28
  %35 = phi i8 [ %27, %25 ], [ %33, %28 ]
  %36 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %8, i8 signext %35)
  %37 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %36)
  %38 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i64 14)
  %39 = getelementptr inbounds %struct.hipDeviceProp_t, %struct.hipDeviceProp_t* %2, i64 0, i32 12
  %40 = load i32, i32* %39, align 8, !tbaa !46
  %41 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %40)
  %42 = bitcast %"class.std::basic_ostream"* %41 to i8**
  %43 = load i8*, i8** %42, align 8, !tbaa !17
  %44 = getelementptr i8, i8* %43, i64 -24
  %45 = bitcast i8* %44 to i64*
  %46 = load i64, i64* %45, align 8
  %47 = bitcast %"class.std::basic_ostream"* %41 to i8*
  %48 = getelementptr inbounds i8, i8* %47, i64 %46
  %49 = getelementptr inbounds i8, i8* %48, i64 240
  %50 = bitcast i8* %49 to %"class.std::ctype"**
  %51 = load %"class.std::ctype"*, %"class.std::ctype"** %50, align 8, !tbaa !19
  %52 = icmp eq %"class.std::ctype"* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %34
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

54:                                               ; preds = %34
  %55 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %51, i64 0, i32 8
  %56 = load i8, i8* %55, align 8, !tbaa !22
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %51, i64 0, i32 9, i64 10
  %60 = load i8, i8* %59, align 1, !tbaa !24
  br label %67

61:                                               ; preds = %54
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %51)
  %62 = bitcast %"class.std::ctype"* %51 to i8 (%"class.std::ctype"*, i8)***
  %63 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %62, align 8, !tbaa !17
  %64 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %63, i64 6
  %65 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %64, align 8
  %66 = call signext i8 %65(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %51, i8 signext 10)
  br label %67

67:                                               ; preds = %58, %61
  %68 = phi i8 [ %60, %58 ], [ %66, %61 ]
  %69 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %41, i8 signext %68)
  %70 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %69)
  %71 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i64 17)
  %72 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %3) #25
  %73 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %3, i64 %72)
  %74 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %75 = getelementptr i8, i8* %74, i64 -24
  %76 = bitcast i8* %75 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %77
  %79 = getelementptr inbounds i8, i8* %78, i64 240
  %80 = bitcast i8* %79 to %"class.std::ctype"**
  %81 = load %"class.std::ctype"*, %"class.std::ctype"** %80, align 8, !tbaa !19
  %82 = icmp eq %"class.std::ctype"* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %67
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

84:                                               ; preds = %67
  %85 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %81, i64 0, i32 8
  %86 = load i8, i8* %85, align 8, !tbaa !22
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %81, i64 0, i32 9, i64 10
  %90 = load i8, i8* %89, align 1, !tbaa !24
  br label %97

91:                                               ; preds = %84
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %81)
  %92 = bitcast %"class.std::ctype"* %81 to i8 (%"class.std::ctype"*, i8)***
  %93 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %92, align 8, !tbaa !17
  %94 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %93, i64 6
  %95 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %94, align 8
  %96 = call signext i8 %95(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %81, i8 signext 10)
  br label %97

97:                                               ; preds = %88, %91
  %98 = phi i8 [ %90, %88 ], [ %96, %91 ]
  %99 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %98)
  %100 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %99)
  %101 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 9
  %102 = bitcast float** %101 to i8**
  %103 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 5
  %104 = load i32, i32* %103, align 8, !tbaa !9
  %105 = sext i32 %104 to i64
  %106 = shl nsw i64 %105, 2
  %107 = call i32 @hipHostMalloc(i8** nonnull %102, i64 %106, i32 0)
  call void @llvm.lifetime.end.p0i8(i64 792, i8* nonnull %3) #25
  ret i32 0
}

declare dso_local i32 @hipGetDeviceProperties(%struct.hipDeviceProp_t*, i32) local_unnamed_addr #0

declare dso_local i32 @hipHostMalloc(i8**, i64, i32) local_unnamed_addr #0

; Function Attrs: uwtable
define dso_local i32 @_ZN18FastWalshTransform10runKernelsEv(%class.FastWalshTransform* nocapture nonnull readonly align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 {
  %2 = alloca float*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dim3, align 8
  %5 = alloca %struct.dim3, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [2 x i8*], align 16
  %9 = alloca %struct.ihipEvent_t*, align 8
  %10 = alloca %struct.ihipEvent_t*, align 8
  %11 = alloca float, align 4
  %12 = alloca float*, align 8
  %13 = bitcast %struct.ihipEvent_t** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #25
  %14 = bitcast %struct.ihipEvent_t** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #25
  %15 = call i32 @hipEventCreate(%struct.ihipEvent_t** nonnull %9)
  %16 = call i32 @hipEventCreate(%struct.ihipEvent_t** nonnull %10)
  %17 = bitcast float* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #25
  store float 1.000000e+00, float* %11, align 4, !tbaa !36
  %18 = bitcast float** %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #25
  %19 = bitcast float** %12 to i8**
  %20 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 9
  %21 = bitcast float** %20 to i8**
  %22 = load i8*, i8** %21, align 8, !tbaa !47
  %23 = call i32 @hipHostGetDevicePointer(i8** nonnull %19, i8* %22, i32 0)
  %24 = load i8*, i8** %19, align 8, !tbaa !3
  %25 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 6
  %26 = bitcast float** %25 to i8**
  %27 = load i8*, i8** %26, align 8, !tbaa !12
  %28 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 5
  %29 = load i32, i32* %28, align 8, !tbaa !9
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 2
  %32 = call i32 @hipMemcpy(i8* %24, i8* %27, i64 %31, i32 1)
  %33 = load i32, i32* %28, align 8, !tbaa !9
  %34 = sdiv i32 %33, 512
  %35 = zext i32 %34 to i64
  %36 = or i64 %35, 4294967296
  %37 = bitcast float** %2 to i8*
  %38 = bitcast i32* %3 to i8*
  %39 = bitcast %struct.dim3* %4 to i8*
  %40 = bitcast %struct.dim3* %5 to i8*
  %41 = bitcast i64* %6 to i8*
  %42 = bitcast i8** %7 to i8*
  %43 = bitcast [2 x i8*]* %8 to i8*
  %44 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %45 = bitcast [2 x i8*]* %8 to float***
  %46 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 1
  %47 = bitcast i8** %46 to i32**
  %48 = bitcast i8** %7 to %struct.ihipStream_t**
  %49 = bitcast %struct.dim3* %4 to i64*
  %50 = getelementptr inbounds %struct.dim3, %struct.dim3* %4, i64 0, i32 2
  %51 = bitcast %struct.dim3* %5 to i64*
  %52 = getelementptr inbounds %struct.dim3, %struct.dim3* %5, i64 0, i32 2
  %53 = icmp sgt i32 %33, 1
  br i1 %53, label %63, label %54

54:                                               ; preds = %79, %1
  %55 = phi i32 [ %33, %1 ], [ %91, %79 ]
  %56 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 7
  %57 = bitcast float** %56 to i8**
  %58 = load i8*, i8** %57, align 8, !tbaa !25
  %59 = load i8*, i8** %19, align 8, !tbaa !3
  %60 = sext i32 %55 to i64
  %61 = shl nsw i64 %60, 2
  %62 = call i32 @hipMemcpy(i8* %58, i8* %59, i64 %61, i32 2)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #25
  ret i32 0

63:                                               ; preds = %1, %79
  %64 = phi i32 [ %90, %79 ], [ 1, %1 ]
  %65 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %9, align 8, !tbaa !3
  %66 = call i32 @hipEventRecord(%struct.ihipEvent_t* %65, %struct.ihipStream_t* null)
  %67 = call i32 @__hipPushCallConfiguration(i64 %36, i32 1, i64 4294967552, i32 1, i64 0, %struct.ihipStream_t* null)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = load float*, float** %20, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %37)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %38)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %39)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %40)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %42)
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %43)
  store float* %70, float** %2, align 8, !tbaa !3
  store i32 %64, i32* %3, align 4, !tbaa !7
  store float** %2, float*** %45, align 16
  store i32* %3, i32** %47, align 8
  %71 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %4, %struct.dim3* nonnull %5, i64* nonnull %6, i8** nonnull %7)
  %72 = load i64, i64* %6, align 8
  %73 = load %struct.ihipStream_t*, %struct.ihipStream_t** %48, align 8
  %74 = load i64, i64* %49, align 8
  %75 = load i32, i32* %50, align 8
  %76 = load i64, i64* %51, align 8
  %77 = load i32, i32* %52, align 8
  %78 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, i32)** @_Z18fastWalshTransformPfi to i8*), i64 %74, i32 %75, i64 %76, i32 %77, i8** nonnull %44, i64 %72, %struct.ihipStream_t* %73)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %37)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %38)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %39)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %40)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %43)
  br label %79

79:                                               ; preds = %69, %63
  %80 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %10, align 8, !tbaa !3
  %81 = call i32 @hipEventRecord(%struct.ihipEvent_t* %80, %struct.ihipStream_t* null)
  %82 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %10, align 8, !tbaa !3
  %83 = call i32 @hipEventSynchronize(%struct.ihipEvent_t* %82)
  %84 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %9, align 8, !tbaa !3
  %85 = load %struct.ihipEvent_t*, %struct.ihipEvent_t** %10, align 8, !tbaa !3
  %86 = call i32 @hipEventElapsedTime(float* nonnull %11, %struct.ihipEvent_t* %84, %struct.ihipEvent_t* %85)
  %87 = load float, float* %11, align 4, !tbaa !36
  %88 = fpext float %87 to double
  %89 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), double %88)
  %90 = shl i32 %64, 1
  %91 = load i32, i32* %28, align 8, !tbaa !9
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %63, label %54, !llvm.loop !48
}

declare dso_local i32 @hipEventCreate(%struct.ihipEvent_t**) local_unnamed_addr #0

declare dso_local i32 @hipHostGetDevicePointer(i8**, i8*, i32) local_unnamed_addr #0

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #0

declare dso_local i32 @hipEventRecord(%struct.ihipEvent_t*, %struct.ihipStream_t*) local_unnamed_addr #0

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #0

declare dso_local i32 @hipEventSynchronize(%struct.ihipEvent_t*) local_unnamed_addr #0

declare dso_local i32 @hipEventElapsedTime(float*, %struct.ihipEvent_t*, %struct.ihipEvent_t*) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_ZN18FastWalshTransform30fastWalshTransformCPUReferenceEPfj(%class.FastWalshTransform* nocapture nonnull readnone align 8 %0, float* nocapture %1, i32 %2) local_unnamed_addr #12 align 2 {
  %4 = icmp ugt i32 %2, 1
  br i1 %4, label %8, label %7

5:                                                ; preds = %15, %8
  %6 = icmp ult i32 %10, %2
  br i1 %6, label %8, label %7, !llvm.loop !49

7:                                                ; preds = %5, %3
  ret void

8:                                                ; preds = %3, %5
  %9 = phi i32 [ %10, %5 ], [ 1, %3 ]
  %10 = shl i32 %9, 1
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %5, label %12

12:                                               ; preds = %8, %15
  %13 = phi i32 [ %16, %15 ], [ 0, %8 ]
  %14 = icmp ult i32 %13, %2
  br i1 %14, label %18, label %15

15:                                               ; preds = %18, %12
  %16 = add nuw i32 %13, 1
  %17 = icmp eq i32 %16, %9
  br i1 %17, label %5, label %12, !llvm.loop !50

18:                                               ; preds = %12, %18
  %19 = phi i32 [ %29, %18 ], [ %13, %12 ]
  %20 = add i32 %19, %9
  %21 = zext i32 %19 to i64
  %22 = getelementptr inbounds float, float* %1, i64 %21
  %23 = load float, float* %22, align 4, !tbaa !36
  %24 = zext i32 %20 to i64
  %25 = getelementptr inbounds float, float* %1, i64 %24
  %26 = load float, float* %25, align 4, !tbaa !36
  %27 = fadd contract float %23, %26
  store float %27, float* %22, align 4, !tbaa !36
  %28 = fsub contract float %23, %26
  store float %28, float* %25, align 4, !tbaa !36
  %29 = add i32 %19, %10
  %30 = icmp ult i32 %29, %2
  br i1 %30, label %18, label %15, !llvm.loop !51
}

; Function Attrs: uwtable
define dso_local i32 @_ZN18FastWalshTransform10initializeEv(%class.FastWalshTransform* nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 13
  %3 = load %"class.appsdk::HIPCommandArgs"*, %"class.appsdk::HIPCommandArgs"** %2, align 8, !tbaa !26
  %4 = tail call i32 @_ZN6appsdk14HIPCommandArgs10initializeEv(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %44

6:                                                ; preds = %1
  %7 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #27
  %8 = bitcast i8* %7 to %"struct.appsdk::Option"*
  %9 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %9, align 8, !tbaa !52
  %10 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %10, align 8, !tbaa !52
  %11 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %11, align 8, !tbaa !52
  %12 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %12, align 8, !tbaa !52
  %13 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 0
  %14 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i64 1)
  %15 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 1
  %16 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i64 6)
  %17 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 2
  %18 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i64 21)
  %19 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 4
  store i32 0, i32* %19, align 8, !tbaa !53
  %20 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 5
  %21 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 0, i32 5
  %22 = bitcast i8** %21 to i32**
  store i32* %20, i32** %22, align 8, !tbaa !56
  %23 = bitcast %"class.appsdk::HIPCommandArgs"** %2 to %"class.appsdk::SDKCmdArgsParser"**
  %24 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %23, align 8, !tbaa !26
  %25 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %24, %"struct.appsdk::Option"* nonnull %8)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %8) #25
  tail call void @_ZdlPv(i8* nonnull %7) #28
  %26 = tail call noalias nonnull dereferenceable(48) i8* @_Znwm(i64 48) #27
  %27 = bitcast i8* %26 to %"struct.appsdk::Option"*
  %28 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %28, align 8, !tbaa !52
  %29 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %29, align 8, !tbaa !52
  %30 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %30, align 8, !tbaa !52
  %31 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !52
  %32 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 0
  %33 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i64 1)
  %34 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 1
  %35 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i64 10)
  %36 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 2
  %37 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i64 41)
  %38 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 4
  store i32 0, i32* %38, align 8, !tbaa !53
  %39 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 11
  %40 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %27, i64 0, i32 5
  %41 = bitcast i8** %40 to i32**
  store i32* %39, i32** %41, align 8, !tbaa !56
  %42 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %23, align 8, !tbaa !26
  %43 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %42, %"struct.appsdk::Option"* nonnull %27)
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %27) #25
  tail call void @_ZdlPv(i8* nonnull %26) #28
  br label %44

44:                                               ; preds = %1, %6
  %45 = phi i32 [ 0, %6 ], [ 1, %1 ]
  ret i32 %45
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk14HIPCommandArgs10initializeEv(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %0) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = tail call noalias nonnull dereferenceable(248) i8* @_Znam(i64 248) #27
  %3 = bitcast i8* %2 to i64*
  store i64 5, i64* %3, align 16
  %4 = getelementptr inbounds i8, i8* %2, i64 8
  %5 = bitcast i8* %4 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %5, align 8, !tbaa !52
  %6 = getelementptr inbounds i8, i8* %2, i64 16
  %7 = bitcast i8* %6 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %7, align 8, !tbaa !52
  %8 = getelementptr inbounds i8, i8* %2, i64 24
  %9 = bitcast i8* %8 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %9, align 8, !tbaa !52
  %10 = getelementptr inbounds i8, i8* %2, i64 32
  %11 = bitcast i8* %10 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %11, align 8, !tbaa !52
  %12 = getelementptr inbounds i8, i8* %2, i64 56
  %13 = bitcast i8* %12 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %13, align 8, !tbaa !52
  %14 = getelementptr inbounds i8, i8* %2, i64 64
  %15 = bitcast i8* %14 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %15, align 8, !tbaa !52
  %16 = getelementptr inbounds i8, i8* %2, i64 72
  %17 = bitcast i8* %16 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %17, align 8, !tbaa !52
  %18 = getelementptr inbounds i8, i8* %2, i64 80
  %19 = bitcast i8* %18 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %19, align 8, !tbaa !52
  %20 = getelementptr inbounds i8, i8* %2, i64 104
  %21 = bitcast i8* %20 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %21, align 8, !tbaa !52
  %22 = getelementptr inbounds i8, i8* %2, i64 112
  %23 = bitcast i8* %22 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %23, align 8, !tbaa !52
  %24 = getelementptr inbounds i8, i8* %2, i64 120
  %25 = bitcast i8* %24 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %25, align 8, !tbaa !52
  %26 = getelementptr inbounds i8, i8* %2, i64 128
  %27 = bitcast i8* %26 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %27, align 8, !tbaa !52
  %28 = getelementptr inbounds i8, i8* %2, i64 152
  %29 = bitcast i8* %28 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %29, align 8, !tbaa !52
  %30 = getelementptr inbounds i8, i8* %2, i64 160
  %31 = bitcast i8* %30 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !52
  %32 = getelementptr inbounds i8, i8* %2, i64 168
  %33 = bitcast i8* %32 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %33, align 8, !tbaa !52
  %34 = getelementptr inbounds i8, i8* %2, i64 176
  %35 = bitcast i8* %34 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %35, align 8, !tbaa !52
  %36 = getelementptr inbounds i8, i8* %2, i64 200
  %37 = bitcast i8* %36 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %37, align 8, !tbaa !52
  %38 = getelementptr inbounds i8, i8* %2, i64 208
  %39 = bitcast i8* %38 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %39, align 8, !tbaa !52
  %40 = getelementptr inbounds i8, i8* %2, i64 216
  %41 = bitcast i8* %40 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %41, align 8, !tbaa !52
  %42 = getelementptr inbounds i8, i8* %2, i64 224
  %43 = bitcast i8* %42 to i8**
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %43, align 8, !tbaa !52
  %44 = bitcast i8* %4 to %"class.std::basic_string"*
  %45 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i64 1)
  %46 = getelementptr inbounds i8, i8* %2, i64 16
  %47 = bitcast i8* %46 to %"class.std::basic_string"*
  %48 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i64 5)
  %49 = getelementptr inbounds i8, i8* %2, i64 24
  %50 = bitcast i8* %49 to %"class.std::basic_string"*
  %51 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i64 0, i64 0), i64 37)
  %52 = getelementptr inbounds i8, i8* %2, i64 40
  %53 = bitcast i8* %52 to i32*
  store i32 4, i32* %53, align 8, !tbaa !53
  %54 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 9
  %55 = getelementptr inbounds i8, i8* %2, i64 48
  %56 = bitcast i8* %55 to i8**
  store i8* %54, i8** %56, align 8, !tbaa !56
  %57 = getelementptr inbounds i8, i8* %2, i64 56
  %58 = bitcast i8* %57 to %"class.std::basic_string"*
  %59 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i64 1)
  %60 = getelementptr inbounds i8, i8* %2, i64 64
  %61 = bitcast i8* %60 to %"class.std::basic_string"*
  %62 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i64 6)
  %63 = getelementptr inbounds i8, i8* %2, i64 72
  %64 = bitcast i8* %63 to %"class.std::basic_string"*
  %65 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %64, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.36, i64 0, i64 0), i64 48)
  %66 = getelementptr inbounds i8, i8* %2, i64 88
  %67 = bitcast i8* %66 to i32*
  store i32 4, i32* %67, align 8, !tbaa !53
  %68 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 10
  %69 = getelementptr inbounds i8, i8* %2, i64 96
  %70 = bitcast i8* %69 to i8**
  store i8* %68, i8** %70, align 8, !tbaa !56
  %71 = getelementptr inbounds i8, i8* %2, i64 104
  %72 = bitcast i8* %71 to %"class.std::basic_string"*
  %73 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), i64 1)
  %74 = getelementptr inbounds i8, i8* %2, i64 112
  %75 = bitcast i8* %74 to %"class.std::basic_string"*
  %76 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i64 6)
  %77 = getelementptr inbounds i8, i8* %2, i64 120
  %78 = bitcast i8* %77 to %"class.std::basic_string"*
  %79 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i64 0, i64 0), i64 13)
  %80 = getelementptr inbounds i8, i8* %2, i64 136
  %81 = bitcast i8* %80 to i32*
  store i32 4, i32* %81, align 8, !tbaa !53
  %82 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 11
  %83 = getelementptr inbounds i8, i8* %2, i64 144
  %84 = bitcast i8* %83 to i8**
  store i8* %82, i8** %84, align 8, !tbaa !56
  %85 = getelementptr inbounds i8, i8* %2, i64 152
  %86 = bitcast i8* %85 to %"class.std::basic_string"*
  %87 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i64 1)
  %88 = getelementptr inbounds i8, i8* %2, i64 160
  %89 = bitcast i8* %88 to %"class.std::basic_string"*
  %90 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), i64 7)
  %91 = getelementptr inbounds i8, i8* %2, i64 168
  %92 = bitcast i8* %91 to %"class.std::basic_string"*
  %93 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i64 0, i64 0), i64 27)
  %94 = getelementptr inbounds i8, i8* %2, i64 184
  %95 = bitcast i8* %94 to i32*
  store i32 4, i32* %95, align 8, !tbaa !53
  %96 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 6
  %97 = getelementptr inbounds i8, i8* %2, i64 192
  %98 = bitcast i8* %97 to i8**
  store i8* %96, i8** %98, align 8, !tbaa !56
  %99 = getelementptr inbounds i8, i8* %2, i64 200
  %100 = bitcast i8* %99 to %"class.std::basic_string"*
  %101 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), i64 1)
  %102 = getelementptr inbounds i8, i8* %2, i64 208
  %103 = bitcast i8* %102 to %"class.std::basic_string"*
  %104 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0), i64 8)
  %105 = getelementptr inbounds i8, i8* %2, i64 216
  %106 = bitcast i8* %105 to %"class.std::basic_string"*
  %107 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %106, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.45, i64 0, i64 0), i64 73)
  %108 = getelementptr inbounds i8, i8* %2, i64 232
  %109 = bitcast i8* %108 to i32*
  store i32 0, i32* %109, align 8, !tbaa !53
  %110 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 1
  %111 = getelementptr inbounds i8, i8* %2, i64 240
  %112 = bitcast i8* %111 to i32**
  store i32* %110, i32** %112, align 8, !tbaa !56
  %113 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 1
  store i32 5, i32* %113, align 8, !tbaa !57
  %114 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 5
  %115 = bitcast %"struct.appsdk::Option"** %114 to i8**
  store i8* %4, i8** %115, align 8, !tbaa !58
  ret i32 0
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) local_unnamed_addr #14

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk16SDKCmdArgsParser9AddOptionEPNS_6OptionE(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0, %"struct.appsdk::Option"* %1) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = icmp eq %"struct.appsdk::Option"* %1, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i64 0, i64 0), i64 36)
  br label %98

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %8 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %7, align 8, !tbaa !58
  %9 = icmp eq %"struct.appsdk::Option"* %8, null
  %10 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 1
  %11 = load i32, i32* %10, align 8, !tbaa !57
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %13, i64 48)
  %15 = extractvalue { i64, i1 } %14, 1
  %16 = extractvalue { i64, i1 } %14, 0
  %17 = or i64 %16, 8
  %18 = select i1 %15, i64 -1, i64 %17
  %19 = tail call noalias nonnull i8* @_Znam(i64 %18) #27
  %20 = bitcast i8* %19 to i64*
  store i64 %13, i64* %20, align 16
  %21 = getelementptr inbounds i8, i8* %19, i64 8
  %22 = bitcast i8* %21 to %"struct.appsdk::Option"*
  %23 = icmp eq i32 %12, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = bitcast %"struct.appsdk::Option"** %7 to i8**
  store i8* %21, i8** %25, align 8, !tbaa !58
  br label %63

26:                                               ; preds = %6
  %27 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %22, i64 %13
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi %"struct.appsdk::Option"* [ %22, %26 ], [ %34, %28 ]
  %30 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %30, align 8, !tbaa !52
  %31 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %31, align 8, !tbaa !52
  %32 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %32, align 8, !tbaa !52
  %33 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 0, i32 3, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %33, align 8, !tbaa !52
  %34 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %29, i64 1
  %35 = icmp eq %"struct.appsdk::Option"* %34, %27
  br i1 %35, label %36, label %28

36:                                               ; preds = %28
  %37 = bitcast %"struct.appsdk::Option"** %7 to i8**
  store i8* %21, i8** %37, align 8, !tbaa !58
  %38 = icmp sgt i32 %11, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %36, %39
  %40 = phi %"struct.appsdk::Option"* [ %62, %39 ], [ %22, %36 ]
  %41 = phi i64 [ %58, %39 ], [ 0, %36 ]
  %42 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %40, i64 %41, i32 0
  %43 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 %41, i32 0
  %44 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %42, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %43)
  %45 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %40, i64 %41, i32 1
  %46 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 %41, i32 1
  %47 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %45, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %46)
  %48 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %40, i64 %41, i32 2
  %49 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 %41, i32 2
  %50 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %48, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %49)
  %51 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %40, i64 %41, i32 3
  %52 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 %41, i32 3
  %53 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %51, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %52)
  %54 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %40, i64 %41, i32 4
  %55 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 %41, i32 4
  %56 = bitcast i32* %54 to i8*
  %57 = bitcast i32* %55 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %56, i8* noundef nonnull align 8 dereferenceable(16) %57, i64 16, i1 false)
  %58 = add nuw nsw i64 %41, 1
  %59 = load i32, i32* %10, align 8, !tbaa !57
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  %62 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %7, align 8, !tbaa !58
  br i1 %61, label %39, label %63, !llvm.loop !59

63:                                               ; preds = %39, %36, %24
  %64 = phi i32 [ %11, %24 ], [ %11, %36 ], [ %59, %39 ]
  %65 = phi %"struct.appsdk::Option"* [ %22, %24 ], [ %22, %36 ], [ %62, %39 ]
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %65, i64 %66, i32 0
  %68 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %1, i64 0, i32 0
  %69 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %67, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %68)
  %70 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %65, i64 %66, i32 1
  %71 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %1, i64 0, i32 1
  %72 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %70, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %71)
  %73 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %65, i64 %66, i32 2
  %74 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %1, i64 0, i32 2
  %75 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %73, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %74)
  %76 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %65, i64 %66, i32 3
  %77 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %1, i64 0, i32 3
  %78 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %76, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %77)
  %79 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %65, i64 %66, i32 4
  %80 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %1, i64 0, i32 4
  %81 = bitcast i32* %79 to i8*
  %82 = bitcast i32* %80 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %81, i8* noundef nonnull align 8 dereferenceable(16) %82, i64 16, i1 false)
  %83 = load i32, i32* %10, align 8, !tbaa !57
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 8, !tbaa !57
  br i1 %9, label %98, label %85

85:                                               ; preds = %63
  %86 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 -1, i32 5
  %87 = bitcast i8** %86 to i8*
  %88 = bitcast i8** %86 to i64*
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %8, i64 %89
  br label %93

93:                                               ; preds = %91, %93
  %94 = phi %"struct.appsdk::Option"* [ %95, %93 ], [ %92, %91 ]
  %95 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %94, i64 -1
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %95) #25
  %96 = icmp eq %"struct.appsdk::Option"* %95, %8
  br i1 %96, label %97, label %93

97:                                               ; preds = %93, %85
  tail call void @_ZdaPv(i8* nonnull %87) #28
  br label %98

98:                                               ; preds = %63, %97, %4
  %99 = phi i32 [ -1, %4 ], [ 0, %97 ], [ 0, %63 ]
  ret i32 %99
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %0) unnamed_addr #15 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 3, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !13
  %8 = getelementptr inbounds i8, i8* %7, i64 -24
  %9 = bitcast i8* %8 to %"struct.std::basic_string<char>::_Rep"*
  %10 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %10) #25
  %11 = icmp eq i8* %8, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %11, label %24, label %12, !prof !16

12:                                               ; preds = %1
  %13 = getelementptr inbounds i8, i8* %7, i64 -8
  %14 = bitcast i8* %13 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %15, label %17

15:                                               ; preds = %12
  %16 = atomicrmw volatile add i32* %14, i32 -1 acq_rel, align 4
  br label %20

17:                                               ; preds = %12
  %18 = load i32, i32* %14, align 8, !tbaa !7
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %14, align 8, !tbaa !7
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %9, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #25
  br label %24

24:                                               ; preds = %1, %20, %23
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %10) #25
  %25 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 2, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8, !tbaa !13
  %27 = getelementptr inbounds i8, i8* %26, i64 -24
  %28 = bitcast i8* %27 to %"struct.std::basic_string<char>::_Rep"*
  %29 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %29) #25
  %30 = icmp eq i8* %27, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %30, label %43, label %31, !prof !16

31:                                               ; preds = %24
  %32 = getelementptr inbounds i8, i8* %26, i64 -8
  %33 = bitcast i8* %32 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %34, label %36

34:                                               ; preds = %31
  %35 = atomicrmw volatile add i32* %33, i32 -1 acq_rel, align 4
  br label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %33, align 8, !tbaa !7
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %33, align 8, !tbaa !7
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %28, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #25
  br label %43

43:                                               ; preds = %24, %39, %42
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %29) #25
  %44 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 1, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8, !tbaa !13
  %46 = getelementptr inbounds i8, i8* %45, i64 -24
  %47 = bitcast i8* %46 to %"struct.std::basic_string<char>::_Rep"*
  %48 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %48) #25
  %49 = icmp eq i8* %46, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %49, label %62, label %50, !prof !16

50:                                               ; preds = %43
  %51 = getelementptr inbounds i8, i8* %45, i64 -8
  %52 = bitcast i8* %51 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %53, label %55

53:                                               ; preds = %50
  %54 = atomicrmw volatile add i32* %52, i32 -1 acq_rel, align 4
  br label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %52, align 8, !tbaa !7
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %52, align 8, !tbaa !7
  br label %58

58:                                               ; preds = %55, %53
  %59 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %60 = icmp slt i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %47, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #25
  br label %62

62:                                               ; preds = %43, %58, %61
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %48) #25
  %63 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %0, i64 0, i32 0, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8, !tbaa !13
  %65 = getelementptr inbounds i8, i8* %64, i64 -24
  %66 = bitcast i8* %65 to %"struct.std::basic_string<char>::_Rep"*
  %67 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %67) #25
  %68 = icmp eq i8* %65, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %68, label %81, label %69, !prof !16

69:                                               ; preds = %62
  %70 = getelementptr inbounds i8, i8* %64, i64 -8
  %71 = bitcast i8* %70 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %72, label %74

72:                                               ; preds = %69
  %73 = atomicrmw volatile add i32* %71, i32 -1 acq_rel, align 4
  br label %77

74:                                               ; preds = %69
  %75 = load i32, i32* %71, align 8, !tbaa !7
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %71, align 8, !tbaa !7
  br label %77

77:                                               ; preds = %74, %72
  %78 = phi i32 [ %73, %72 ], [ %75, %74 ]
  %79 = icmp slt i32 %78, 1
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %66, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #25
  br label %81

81:                                               ; preds = %62, %77, %80
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %67) #25
  ret void
}

; Function Attrs: uwtable
define dso_local i32 @_ZN18FastWalshTransform5setupEv(%class.FastWalshTransform* nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 5
  %7 = load i32, i32* %6, align 8, !tbaa !9
  %8 = sext i32 %7 to i64
  %9 = tail call i64 @llvm.ctpop.i64(i64 %8) #25, !range !60
  %10 = icmp ult i64 %9, 2
  %11 = icmp ne i32 %7, 0
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %24, label %13

13:                                               ; preds = %1
  %14 = add nsw i32 %7, -1
  %15 = ashr i32 %14, 1
  %16 = or i32 %15, %14
  %17 = ashr i32 %16, 2
  %18 = or i32 %17, %16
  %19 = ashr i32 %18, 4
  %20 = or i32 %19, %18
  %21 = ashr i32 %20, 8
  %22 = or i32 %21, %20
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 8, !tbaa !9
  br label %24

24:                                               ; preds = %13, %1
  %25 = tail call i32 @_ZN18FastWalshTransform23setupFastWalshTransformEv(%class.FastWalshTransform* nonnull align 8 dereferenceable(112) %0)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %101

27:                                               ; preds = %24
  %28 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 12
  %29 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %28, align 8, !tbaa !61
  %30 = tail call i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %29)
  %31 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %28, align 8, !tbaa !61
  %32 = bitcast %"class.std::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32)
  %33 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %31, i64 0, i32 0, i32 0, i32 0, i32 1
  %34 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %33, align 8, !tbaa !62
  %35 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %31, i64 0, i32 0, i32 0, i32 0, i32 0
  %36 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %35, align 8, !tbaa !65
  %37 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %34 to i64
  %38 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %36 to i64
  %39 = sub i64 %37, %38
  %40 = lshr exact i64 %39, 3
  %41 = trunc i64 %40 to i32
  %42 = icmp slt i32 %30, %41
  br i1 %42, label %86, label %43

43:                                               ; preds = %27
  %44 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %44) #25
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.50, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %45 unwind label %65

45:                                               ; preds = %43
  %46 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8, !tbaa !13
  %48 = getelementptr inbounds i8, i8* %47, i64 -24
  %49 = bitcast i8* %48 to %"struct.std::basic_string<char>::_Rep"*
  %50 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %50) #25
  %51 = icmp eq i8* %48, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %51, label %64, label %52, !prof !16

52:                                               ; preds = %45
  %53 = getelementptr inbounds i8, i8* %47, i64 -8
  %54 = bitcast i8* %53 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %55, label %57

55:                                               ; preds = %52
  %56 = atomicrmw volatile add i32* %54, i32 -1 acq_rel, align 4
  br label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %54, align 8, !tbaa !7
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %54, align 8, !tbaa !7
  br label %60

60:                                               ; preds = %57, %55
  %61 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %62 = icmp slt i32 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %49, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #25
  br label %64

64:                                               ; preds = %63, %60, %45
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %50) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %44) #25
  br label %92

65:                                               ; preds = %43
  %66 = landingpad { i8*, i32 }
          cleanup
  %67 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8, !tbaa !13
  %69 = getelementptr inbounds i8, i8* %68, i64 -24
  %70 = bitcast i8* %69 to %"struct.std::basic_string<char>::_Rep"*
  %71 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %71) #25
  %72 = icmp eq i8* %69, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %72, label %85, label %73, !prof !16

73:                                               ; preds = %65
  %74 = getelementptr inbounds i8, i8* %68, i64 -8
  %75 = bitcast i8* %74 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %76, label %78

76:                                               ; preds = %73
  %77 = atomicrmw volatile add i32* %75, i32 -1 acq_rel, align 4
  br label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %75, align 8, !tbaa !7
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %75, align 8, !tbaa !7
  br label %81

81:                                               ; preds = %78, %76
  %82 = phi i32 [ %77, %76 ], [ %79, %78 ]
  %83 = icmp slt i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %70, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #25
  br label %85

85:                                               ; preds = %65, %81, %84
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %71) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %44) #25
  resume { i8*, i32 } %66

86:                                               ; preds = %27
  %87 = sext i32 %30 to i64
  %88 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %36, i64 %87
  %89 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %88, align 8, !tbaa !3
  %90 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %89, i64 0, i32 2
  %91 = bitcast i64* %90 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %91, i8 0, i64 16, i1 false)
  br label %92

92:                                               ; preds = %64, %86
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32)
  %93 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %28, align 8, !tbaa !61
  %94 = call i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %93, i32 %30)
  %95 = call i32 @_ZN18FastWalshTransform8setupHIPEv(%class.FastWalshTransform* nonnull align 8 dereferenceable(112) %0)
  %96 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %28, align 8, !tbaa !61
  %97 = call i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %96, i32 %30)
  %98 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %28, align 8, !tbaa !61
  %99 = call contract double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %98, i32 %30)
  %100 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 1
  store double %99, double* %100, align 8, !tbaa !66
  br label %101

101:                                              ; preds = %24, %92
  %102 = phi i32 [ 0, %92 ], [ 1, %24 ]
  ret i32 %102
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = tail call noalias nonnull dereferenceable(32) i8* @_Znwm(i64 32) #27
  %3 = bitcast i8* %2 to %"struct.appsdk::SDKTimer::Timer"*
  %4 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %4, align 8, !tbaa !52
  %5 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 2
  %6 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %3, i64 0, i32 1
  %7 = bitcast i64* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store i64 1000, i64* %6, align 8, !tbaa !67
  %8 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %9 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !62
  %10 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 2
  %11 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %10, align 8, !tbaa !70
  %12 = icmp eq %"struct.appsdk::SDKTimer::Timer"** %9, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = bitcast %"struct.appsdk::SDKTimer::Timer"** %9 to i8**
  store i8* %2, i8** %14, align 8, !tbaa !3
  %15 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !62
  %16 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %15, i64 1
  store %"struct.appsdk::SDKTimer::Timer"** %16, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !62
  %17 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %18 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %17, align 8, !tbaa !65
  br label %70

19:                                               ; preds = %1
  %20 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %21 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !65
  %22 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %9 to i64
  %23 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %21 to i64
  %24 = sub i64 %22, %23
  %25 = ashr exact i64 %24, 3
  %26 = icmp eq i64 %24, 0
  %27 = select i1 %26, i64 1, i64 %25
  %28 = add nsw i64 %27, %25
  %29 = icmp ult i64 %28, %25
  %30 = icmp ugt i64 %28, 2305843009213693951
  %31 = or i1 %29, %30
  %32 = select i1 %31, i64 2305843009213693951, i64 %28
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %19
  %35 = shl nuw i64 %32, 3
  %36 = tail call noalias nonnull i8* @_Znwm(i64 %35) #29
  %37 = bitcast i8* %36 to %"struct.appsdk::SDKTimer::Timer"**
  %38 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !65
  %39 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %38 to i64
  %40 = sub i64 %22, %39
  br label %41

41:                                               ; preds = %34, %19
  %42 = phi i64 [ %40, %34 ], [ %24, %19 ]
  %43 = phi %"struct.appsdk::SDKTimer::Timer"** [ %38, %34 ], [ %21, %19 ]
  %44 = phi %"struct.appsdk::SDKTimer::Timer"** [ %37, %34 ], [ null, %19 ]
  %45 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %44, i64 %25
  %46 = bitcast %"struct.appsdk::SDKTimer::Timer"** %45 to i8**
  store i8* %2, i8** %46, align 8, !tbaa !3
  %47 = icmp eq i64 %42, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = bitcast %"struct.appsdk::SDKTimer::Timer"** %44 to i8*
  %50 = bitcast %"struct.appsdk::SDKTimer::Timer"** %43 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 %42, i1 false) #25
  br label %51

51:                                               ; preds = %48, %41
  %52 = ashr exact i64 %42, 3
  %53 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %44, i64 %52
  %54 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %53, i64 1
  %55 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !62
  %56 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %55 to i64
  %57 = sub i64 %56, %22
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %51
  %60 = bitcast %"struct.appsdk::SDKTimer::Timer"** %54 to i8*
  %61 = bitcast %"struct.appsdk::SDKTimer::Timer"** %9 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 8 %60, i8* align 8 %61, i64 %57, i1 false) #25
  br label %62

62:                                               ; preds = %59, %51
  %63 = icmp eq %"struct.appsdk::SDKTimer::Timer"** %43, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %62
  %65 = bitcast %"struct.appsdk::SDKTimer::Timer"** %43 to i8*
  tail call void @_ZdlPv(i8* nonnull %65) #25
  br label %66

66:                                               ; preds = %64, %62
  %67 = ashr exact i64 %57, 3
  %68 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %54, i64 %67
  store %"struct.appsdk::SDKTimer::Timer"** %44, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !65
  store %"struct.appsdk::SDKTimer::Timer"** %68, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !62
  %69 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %44, i64 %32
  store %"struct.appsdk::SDKTimer::Timer"** %69, %"struct.appsdk::SDKTimer::Timer"*** %10, align 8, !tbaa !70
  br label %70

70:                                               ; preds = %13, %66
  %71 = phi %"struct.appsdk::SDKTimer::Timer"** [ %18, %13 ], [ %44, %66 ]
  %72 = phi %"struct.appsdk::SDKTimer::Timer"** [ %16, %13 ], [ %68, %66 ]
  %73 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %72 to i64
  %74 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %71 to i64
  %75 = sub i64 %73, %74
  %76 = lshr exact i64 %75, 3
  %77 = trunc i64 %76 to i32
  %78 = add i32 %77, -1
  ret i32 %78
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %0, i32 %1) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = alloca %struct.timeval, align 8
  %7 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %8 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %7, align 8, !tbaa !62
  %9 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %10 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !65
  %11 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %8 to i64
  %12 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = icmp sgt i32 %15, %1
  br i1 %16, label %41, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #25
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.50, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %19 unwind label %39

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !13
  %22 = getelementptr inbounds i8, i8* %21, i64 -24
  %23 = bitcast i8* %22 to %"struct.std::basic_string<char>::_Rep"*
  %24 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %24) #25
  %25 = icmp eq i8* %22, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %25, label %38, label %26, !prof !16

26:                                               ; preds = %19
  %27 = getelementptr inbounds i8, i8* %21, i64 -8
  %28 = bitcast i8* %27 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %29, label %31

29:                                               ; preds = %26
  %30 = atomicrmw volatile add i32* %28, i32 -1 acq_rel, align 4
  br label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %28, align 8, !tbaa !7
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %28, align 8, !tbaa !7
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %23, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #25
  br label %38

38:                                               ; preds = %19, %34, %37
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %24) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #25
  br label %56

39:                                               ; preds = %17
  %40 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #25
  resume { i8*, i32 } %40

41:                                               ; preds = %2
  %42 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %42) #25
  %43 = call i32 @gettimeofday(%struct.timeval* nonnull %6, %struct.timezone* null) #25
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 0
  %45 = load i64, i64* %44, align 8, !tbaa !71
  %46 = mul nsw i64 %45, 1000
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !73
  %49 = sdiv i64 %48, 1000
  %50 = add nsw i64 %49, %46
  %51 = sext i32 %1 to i64
  %52 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !65
  %53 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %52, i64 %51
  %54 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %53, align 8, !tbaa !3
  %55 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %54, i64 0, i32 3
  store i64 %50, i64* %55, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %42) #25
  br label %56

56:                                               ; preds = %41, %38
  %57 = phi i32 [ 1, %38 ], [ 0, %41 ]
  ret i32 %57
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %0, i32 %1) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = alloca %struct.timeval, align 8
  %7 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %8 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %7, align 8, !tbaa !62
  %9 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %10 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !65
  %11 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %8 to i64
  %12 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = icmp sgt i32 %15, %1
  br i1 %16, label %41, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %18) #25
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.50, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %19 unwind label %39

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !13
  %22 = getelementptr inbounds i8, i8* %21, i64 -24
  %23 = bitcast i8* %22 to %"struct.std::basic_string<char>::_Rep"*
  %24 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %24) #25
  %25 = icmp eq i8* %22, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %25, label %38, label %26, !prof !16

26:                                               ; preds = %19
  %27 = getelementptr inbounds i8, i8* %21, i64 -8
  %28 = bitcast i8* %27 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %29, label %31

29:                                               ; preds = %26
  %30 = atomicrmw volatile add i32* %28, i32 -1 acq_rel, align 4
  br label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %28, align 8, !tbaa !7
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %28, align 8, !tbaa !7
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %23, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #25
  br label %38

38:                                               ; preds = %19, %34, %37
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %24) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #25
  br label %61

39:                                               ; preds = %17
  %40 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %18) #25
  resume { i8*, i32 } %40

41:                                               ; preds = %2
  %42 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %42) #25
  %43 = call i32 @gettimeofday(%struct.timeval* nonnull %6, %struct.timezone* null) #25
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 0
  %45 = load i64, i64* %44, align 8, !tbaa !71
  %46 = mul nsw i64 %45, 1000
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !73
  %49 = sdiv i64 %48, 1000
  %50 = add nsw i64 %49, %46
  %51 = sext i32 %1 to i64
  %52 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %9, align 8, !tbaa !65
  %53 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %52, i64 %51
  %54 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %53, align 8, !tbaa !3
  %55 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %54, i64 0, i32 3
  %56 = load i64, i64* %55, align 8, !tbaa !74
  %57 = sub i64 %50, %56
  store i64 0, i64* %55, align 8, !tbaa !74
  %58 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %54, i64 0, i32 2
  %59 = load i64, i64* %58, align 8, !tbaa !75
  %60 = add nsw i64 %57, %59
  store i64 %60, i64* %58, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %42) #25
  br label %61

61:                                               ; preds = %41, %38
  %62 = phi i32 [ 1, %38 ], [ 0, %41 ]
  ret i32 %62
}

; Function Attrs: uwtable
define linkonce_odr dso_local double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %0, i32 %1) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %7 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %6, align 8, !tbaa !62
  %8 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %9 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %8, align 8, !tbaa !65
  %10 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %7 to i64
  %11 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp sgt i32 %14, %1
  br i1 %15, label %40, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %17) #25
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.51, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %18 unwind label %38

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8, !tbaa !13
  %21 = getelementptr inbounds i8, i8* %20, i64 -24
  %22 = bitcast i8* %21 to %"struct.std::basic_string<char>::_Rep"*
  %23 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %23) #25
  %24 = icmp eq i8* %21, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %24, label %37, label %25, !prof !16

25:                                               ; preds = %18
  %26 = getelementptr inbounds i8, i8* %20, i64 -8
  %27 = bitcast i8* %26 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %28, label %30

28:                                               ; preds = %25
  %29 = atomicrmw volatile add i32* %27, i32 -1 acq_rel, align 4
  br label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %27, align 8, !tbaa !7
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %27, align 8, !tbaa !7
  br label %33

33:                                               ; preds = %30, %28
  %34 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %22, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #25
  br label %37

37:                                               ; preds = %18, %33, %36
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %23) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %17) #25
  br label %51

38:                                               ; preds = %16
  %39 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %17) #25
  resume { i8*, i32 } %39

40:                                               ; preds = %2
  %41 = sext i32 %1 to i64
  %42 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %9, i64 %41
  %43 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %42, align 8, !tbaa !3
  %44 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %43, i64 0, i32 2
  %45 = load i64, i64* %44, align 8, !tbaa !75
  %46 = sitofp i64 %45 to double
  %47 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %43, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !67
  %49 = sitofp i64 %48 to double
  %50 = fdiv contract double %46, %49
  br label %51

51:                                               ; preds = %40, %37
  %52 = phi double [ 1.000000e+00, %37 ], [ %50, %40 ]
  ret double %52
}

; Function Attrs: uwtable
define dso_local i32 @_ZN18FastWalshTransform3runEv(%class.FastWalshTransform* nocapture nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::allocator.0", align 1
  %8 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 11
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @_ZN18FastWalshTransform10runKernelsEv(%class.FastWalshTransform* nonnull align 8 dereferenceable(112) %0)
  %13 = load i32, i32* %8, align 8
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @_ZN18FastWalshTransform10runKernelsEv(%class.FastWalshTransform* nonnull align 8 dereferenceable(112) %0)
  br label %17

17:                                               ; preds = %11, %15, %1
  %18 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i64 21)
  %19 = load i32, i32* %8, align 8, !tbaa !76
  %20 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %19)
  %21 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %20, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i64 11)
  %22 = bitcast %"class.std::basic_ostream"* %20 to i8**
  %23 = load i8*, i8** %22, align 8, !tbaa !17
  %24 = getelementptr i8, i8* %23, i64 -24
  %25 = bitcast i8* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = bitcast %"class.std::basic_ostream"* %20 to i8*
  %28 = getelementptr inbounds i8, i8* %27, i64 %26
  %29 = getelementptr inbounds i8, i8* %28, i64 240
  %30 = bitcast i8* %29 to %"class.std::ctype"**
  %31 = load %"class.std::ctype"*, %"class.std::ctype"** %30, align 8, !tbaa !19
  %32 = icmp eq %"class.std::ctype"* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

34:                                               ; preds = %17
  %35 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %31, i64 0, i32 8
  %36 = load i8, i8* %35, align 8, !tbaa !22
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %31, i64 0, i32 9, i64 10
  %40 = load i8, i8* %39, align 1, !tbaa !24
  br label %47

41:                                               ; preds = %34
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %31)
  %42 = bitcast %"class.std::ctype"* %31 to i8 (%"class.std::ctype"*, i8)***
  %43 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %42, align 8, !tbaa !17
  %44 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %43, i64 6
  %45 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %44, align 8
  %46 = tail call signext i8 %45(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %31, i8 signext 10)
  br label %47

47:                                               ; preds = %38, %41
  %48 = phi i8 [ %40, %38 ], [ %46, %41 ]
  %49 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %20, i8 signext %48)
  %50 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %49)
  %51 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @.str.21, i64 0, i64 0), i64 43)
  %52 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %53 = getelementptr i8, i8* %52, i64 -24
  %54 = bitcast i8* %53 to i64*
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %55
  %57 = getelementptr inbounds i8, i8* %56, i64 240
  %58 = bitcast i8* %57 to %"class.std::ctype"**
  %59 = load %"class.std::ctype"*, %"class.std::ctype"** %58, align 8, !tbaa !19
  %60 = icmp eq %"class.std::ctype"* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

62:                                               ; preds = %47
  %63 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %59, i64 0, i32 8
  %64 = load i8, i8* %63, align 8, !tbaa !22
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %59, i64 0, i32 9, i64 10
  %68 = load i8, i8* %67, align 1, !tbaa !24
  br label %75

69:                                               ; preds = %62
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %59)
  %70 = bitcast %"class.std::ctype"* %59 to i8 (%"class.std::ctype"*, i8)***
  %71 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %70, align 8, !tbaa !17
  %72 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %71, i64 6
  %73 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %72, align 8
  %74 = tail call signext i8 %73(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %59, i8 signext 10)
  br label %75

75:                                               ; preds = %66, %69
  %76 = phi i8 [ %68, %66 ], [ %74, %69 ]
  %77 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %76)
  %78 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %77)
  %79 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 12
  %80 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %79, align 8, !tbaa !61
  %81 = tail call i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %80)
  %82 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %79, align 8, !tbaa !61
  %83 = bitcast %"class.std::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %83)
  %84 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %82, i64 0, i32 0, i32 0, i32 0, i32 1
  %85 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %84, align 8, !tbaa !62
  %86 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %82, i64 0, i32 0, i32 0, i32 0, i32 0
  %87 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %86, align 8, !tbaa !65
  %88 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %85 to i64
  %89 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %87 to i64
  %90 = sub i64 %88, %89
  %91 = lshr exact i64 %90, 3
  %92 = trunc i64 %91 to i32
  %93 = icmp slt i32 %81, %92
  br i1 %93, label %120, label %94

94:                                               ; preds = %75
  %95 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %95) #25
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.50, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %96 unwind label %118

96:                                               ; preds = %94
  %97 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8, !tbaa !13
  %99 = getelementptr inbounds i8, i8* %98, i64 -24
  %100 = bitcast i8* %99 to %"struct.std::basic_string<char>::_Rep"*
  %101 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %101) #25
  %102 = icmp eq i8* %99, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %102, label %115, label %103, !prof !16

103:                                              ; preds = %96
  %104 = getelementptr inbounds i8, i8* %98, i64 -8
  %105 = bitcast i8* %104 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %106, label %108

106:                                              ; preds = %103
  %107 = atomicrmw volatile add i32* %105, i32 -1 acq_rel, align 4
  br label %111

108:                                              ; preds = %103
  %109 = load i32, i32* %105, align 8, !tbaa !7
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %105, align 8, !tbaa !7
  br label %111

111:                                              ; preds = %108, %106
  %112 = phi i32 [ %107, %106 ], [ %109, %108 ]
  %113 = icmp slt i32 %112, 1
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %100, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #25
  br label %115

115:                                              ; preds = %114, %111, %96
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %101) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %95) #25
  br label %126

116:                                              ; preds = %183, %118
  %117 = phi { i8*, i32 } [ %119, %118 ], [ %184, %183 ]
  resume { i8*, i32 } %117

118:                                              ; preds = %94
  %119 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %95) #25
  br label %116

120:                                              ; preds = %75
  %121 = sext i32 %81 to i64
  %122 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %87, i64 %121
  %123 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %122, align 8, !tbaa !3
  %124 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %123, i64 0, i32 2
  %125 = bitcast i64* %124 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %125, i8 0, i64 16, i1 false)
  br label %126

126:                                              ; preds = %115, %120
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %83)
  %127 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %79, align 8, !tbaa !61
  %128 = call i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %127, i32 %81)
  %129 = load i32, i32* %8, align 8, !tbaa !76
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %126, %131
  %132 = phi i32 [ %134, %131 ], [ 0, %126 ]
  %133 = call i32 @_ZN18FastWalshTransform10runKernelsEv(%class.FastWalshTransform* nonnull align 8 dereferenceable(112) %0)
  %134 = add nuw nsw i32 %132, 1
  %135 = load i32, i32* %8, align 8, !tbaa !76
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %131, label %137, !llvm.loop !77

137:                                              ; preds = %131, %126
  %138 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %79, align 8, !tbaa !61
  %139 = call i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %138, i32 %81)
  %140 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %79, align 8, !tbaa !61
  %141 = call contract double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %140, i32 %81)
  %142 = load i32, i32* %8, align 8, !tbaa !76
  %143 = sitofp i32 %142 to double
  %144 = fdiv contract double %141, %143
  %145 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 2
  store double %144, double* %145, align 8, !tbaa !78
  %146 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 13
  %147 = bitcast %"class.appsdk::HIPCommandArgs"** %146 to %"class.appsdk::SDKCmdArgsParser"**
  %148 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %147, align 8, !tbaa !26
  %149 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %148, i64 0, i32 9
  %150 = load i8, i8* %149, align 4, !tbaa !32, !range !30
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %185

152:                                              ; preds = %137
  %153 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %153) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7)
          to label %154 unwind label %179

154:                                              ; preds = %152
  %155 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 6
  %156 = load float*, float** %155, align 8, !tbaa !12
  %157 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 5
  %158 = load i32, i32* %157, align 8, !tbaa !9
  invoke void @_ZN6appsdk10printArrayIfEEvSsPKT_ii(%"class.std::basic_string"* nonnull %6, float* %156, i32 %158, i32 1)
          to label %159 unwind label %181

159:                                              ; preds = %154
  %160 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i64 0, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8, !tbaa !13
  %162 = getelementptr inbounds i8, i8* %161, i64 -24
  %163 = bitcast i8* %162 to %"struct.std::basic_string<char>::_Rep"*
  %164 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %164) #25
  %165 = icmp eq i8* %162, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %165, label %178, label %166, !prof !16

166:                                              ; preds = %159
  %167 = getelementptr inbounds i8, i8* %161, i64 -8
  %168 = bitcast i8* %167 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %169, label %171

169:                                              ; preds = %166
  %170 = atomicrmw volatile add i32* %168, i32 -1 acq_rel, align 4
  br label %174

171:                                              ; preds = %166
  %172 = load i32, i32* %168, align 8, !tbaa !7
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %168, align 8, !tbaa !7
  br label %174

174:                                              ; preds = %171, %169
  %175 = phi i32 [ %170, %169 ], [ %172, %171 ]
  %176 = icmp slt i32 %175, 1
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %163, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #25
  br label %178

178:                                              ; preds = %159, %174, %177
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %164) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %153) #25
  br label %185

179:                                              ; preds = %152
  %180 = landingpad { i8*, i32 }
          cleanup
  br label %183

181:                                              ; preds = %154
  %182 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6) #25
  br label %183

183:                                              ; preds = %181, %179
  %184 = phi { i8*, i32 } [ %182, %181 ], [ %180, %179 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %153) #25
  br label %116

185:                                              ; preds = %178, %137
  ret i32 0
}

; Function Attrs: uwtable
define dso_local i32 @_ZN18FastWalshTransform13verifyResultsEv(%class.FastWalshTransform* nocapture nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::basic_string", align 8
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 13
  %7 = bitcast %"class.appsdk::HIPCommandArgs"** %6 to %"class.appsdk::SDKCmdArgsParser"**
  %8 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %7, align 8, !tbaa !26
  %9 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %8, i64 0, i32 10
  %10 = load i8, i8* %9, align 1, !tbaa !27, !range !30
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %235, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 12
  %14 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %13, align 8, !tbaa !61
  %15 = tail call i32 @_ZN6appsdk8SDKTimer11createTimerEv(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %14)
  %16 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %13, align 8, !tbaa !61
  %17 = bitcast %"class.std::basic_string"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17)
  %18 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %16, i64 0, i32 0, i32 0, i32 0, i32 1
  %19 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %18, align 8, !tbaa !62
  %20 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %16, i64 0, i32 0, i32 0, i32 0, i32 0
  %21 = load %"struct.appsdk::SDKTimer::Timer"**, %"struct.appsdk::SDKTimer::Timer"*** %20, align 8, !tbaa !65
  %22 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %19 to i64
  %23 = ptrtoint %"struct.appsdk::SDKTimer::Timer"** %21 to i64
  %24 = sub i64 %22, %23
  %25 = lshr exact i64 %24, 3
  %26 = trunc i64 %25 to i32
  %27 = icmp slt i32 %15, %26
  br i1 %27, label %71, label %28

28:                                               ; preds = %12
  %29 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %29) #25
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.50, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5)
  invoke fastcc void @_ZN6appsdkL9sdk_errorESs(%"class.std::basic_string"* nonnull %4)
          to label %30 unwind label %50

30:                                               ; preds = %28
  %31 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8, !tbaa !13
  %33 = getelementptr inbounds i8, i8* %32, i64 -24
  %34 = bitcast i8* %33 to %"struct.std::basic_string<char>::_Rep"*
  %35 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %35) #25
  %36 = icmp eq i8* %33, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %36, label %49, label %37, !prof !16

37:                                               ; preds = %30
  %38 = getelementptr inbounds i8, i8* %32, i64 -8
  %39 = bitcast i8* %38 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %40, label %42

40:                                               ; preds = %37
  %41 = atomicrmw volatile add i32* %39, i32 -1 acq_rel, align 4
  br label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %39, align 8, !tbaa !7
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %39, align 8, !tbaa !7
  br label %45

45:                                               ; preds = %42, %40
  %46 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %34, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #25
  br label %49

49:                                               ; preds = %48, %45, %30
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %35) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %29) #25
  br label %77

50:                                               ; preds = %28
  %51 = landingpad { i8*, i32 }
          cleanup
  %52 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %4, i64 0, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8, !tbaa !13
  %54 = getelementptr inbounds i8, i8* %53, i64 -24
  %55 = bitcast i8* %54 to %"struct.std::basic_string<char>::_Rep"*
  %56 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %56) #25
  %57 = icmp eq i8* %54, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %57, label %70, label %58, !prof !16

58:                                               ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 -8
  %60 = bitcast i8* %59 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %61, label %63

61:                                               ; preds = %58
  %62 = atomicrmw volatile add i32* %60, i32 -1 acq_rel, align 4
  br label %66

63:                                               ; preds = %58
  %64 = load i32, i32* %60, align 8, !tbaa !7
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %60, align 8, !tbaa !7
  br label %66

66:                                               ; preds = %63, %61
  %67 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %68 = icmp slt i32 %67, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %55, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #25
  br label %70

70:                                               ; preds = %50, %66, %69
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %56) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %29) #25
  resume { i8*, i32 } %51

71:                                               ; preds = %12
  %72 = sext i32 %15 to i64
  %73 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %21, i64 %72
  %74 = load %"struct.appsdk::SDKTimer::Timer"*, %"struct.appsdk::SDKTimer::Timer"** %73, align 8, !tbaa !3
  %75 = getelementptr inbounds %"struct.appsdk::SDKTimer::Timer", %"struct.appsdk::SDKTimer::Timer"* %74, i64 0, i32 2
  %76 = bitcast i64* %75 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %76, i8 0, i64 16, i1 false)
  br label %77

77:                                               ; preds = %49, %71
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17)
  %78 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %13, align 8, !tbaa !61
  %79 = call i32 @_ZN6appsdk8SDKTimer10startTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %78, i32 %15)
  %80 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 8
  %81 = load float*, float** %80, align 8, !tbaa !31
  %82 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 5
  %83 = load i32, i32* %82, align 8, !tbaa !9
  %84 = icmp ugt i32 %83, 1
  br i1 %84, label %87, label %110

85:                                               ; preds = %94, %87
  %86 = icmp ult i32 %89, %83
  br i1 %86, label %87, label %110, !llvm.loop !49

87:                                               ; preds = %77, %85
  %88 = phi i32 [ %89, %85 ], [ 1, %77 ]
  %89 = shl i32 %88, 1
  %90 = icmp eq i32 %88, 0
  br i1 %90, label %85, label %91

91:                                               ; preds = %87, %94
  %92 = phi i32 [ %95, %94 ], [ 0, %87 ]
  %93 = icmp ult i32 %92, %83
  br i1 %93, label %97, label %94

94:                                               ; preds = %97, %91
  %95 = add nuw i32 %92, 1
  %96 = icmp eq i32 %95, %88
  br i1 %96, label %85, label %91, !llvm.loop !50

97:                                               ; preds = %91, %97
  %98 = phi i32 [ %108, %97 ], [ %92, %91 ]
  %99 = add i32 %98, %88
  %100 = zext i32 %98 to i64
  %101 = getelementptr inbounds float, float* %81, i64 %100
  %102 = load float, float* %101, align 4, !tbaa !36
  %103 = zext i32 %99 to i64
  %104 = getelementptr inbounds float, float* %81, i64 %103
  %105 = load float, float* %104, align 4, !tbaa !36
  %106 = fadd contract float %102, %105
  store float %106, float* %101, align 4, !tbaa !36
  %107 = fsub contract float %102, %105
  store float %107, float* %104, align 4, !tbaa !36
  %108 = add i32 %98, %89
  %109 = icmp ult i32 %108, %83
  br i1 %109, label %97, label %94, !llvm.loop !51

110:                                              ; preds = %85, %77
  %111 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %13, align 8, !tbaa !61
  %112 = call i32 @_ZN6appsdk8SDKTimer9stopTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %111, i32 %15)
  %113 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %13, align 8, !tbaa !61
  %114 = call contract double @_ZN6appsdk8SDKTimer9readTimerEi(%"class.appsdk::SDKTimer"* nonnull align 8 dereferenceable(32) %113, i32 %15)
  %115 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 4
  store double %114, double* %115, align 8, !tbaa !79
  %116 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 7
  %117 = load float*, float** %116, align 8, !tbaa !25
  %118 = load float*, float** %80, align 8, !tbaa !31
  %119 = load i32, i32* %82, align 8, !tbaa !9
  %120 = icmp sgt i32 %119, 1
  br i1 %120, label %121, label %143

121:                                              ; preds = %110
  %122 = zext i32 %119 to i64
  %123 = add nsw i64 %122, -1
  %124 = and i64 %123, 1
  %125 = icmp eq i32 %119, 2
  br i1 %125, label %128, label %126

126:                                              ; preds = %121
  %127 = and i64 %123, -2
  br label %149

128:                                              ; preds = %149, %121
  %129 = phi <2 x float> [ undef, %121 ], [ %171, %149 ]
  %130 = phi i64 [ 1, %121 ], [ %172, %149 ]
  %131 = phi <2 x float> [ zeroinitializer, %121 ], [ %171, %149 ]
  %132 = icmp eq i64 %124, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds float, float* %117, i64 %130
  %135 = load float, float* %134, align 4, !tbaa !36
  %136 = getelementptr inbounds float, float* %118, i64 %130
  %137 = load float, float* %136, align 4, !tbaa !36
  %138 = fsub contract float %135, %137
  %139 = insertelement <2 x float> poison, float %135, i64 0
  %140 = insertelement <2 x float> %139, float %138, i64 1
  %141 = fmul contract <2 x float> %140, %140
  %142 = fadd contract <2 x float> %131, %141
  br label %143

143:                                              ; preds = %133, %128, %110
  %144 = phi <2 x float> [ zeroinitializer, %110 ], [ %129, %128 ], [ %142, %133 ]
  %145 = extractelement <2 x float> %144, i64 0
  %146 = call contract float @sqrtf(float %145) #25
  %147 = call contract float @llvm.fabs.f32(float %145) #25
  %148 = fcmp contract olt float %147, 0x3E7AD7F2A0000000
  br i1 %148, label %205, label %175

149:                                              ; preds = %149, %126
  %150 = phi i64 [ 1, %126 ], [ %172, %149 ]
  %151 = phi <2 x float> [ zeroinitializer, %126 ], [ %171, %149 ]
  %152 = phi i64 [ 0, %126 ], [ %173, %149 ]
  %153 = getelementptr inbounds float, float* %117, i64 %150
  %154 = load float, float* %153, align 4, !tbaa !36
  %155 = getelementptr inbounds float, float* %118, i64 %150
  %156 = load float, float* %155, align 4, !tbaa !36
  %157 = fsub contract float %154, %156
  %158 = insertelement <2 x float> poison, float %154, i64 0
  %159 = insertelement <2 x float> %158, float %157, i64 1
  %160 = fmul contract <2 x float> %159, %159
  %161 = fadd contract <2 x float> %151, %160
  %162 = add nuw nsw i64 %150, 1
  %163 = getelementptr inbounds float, float* %117, i64 %162
  %164 = load float, float* %163, align 4, !tbaa !36
  %165 = getelementptr inbounds float, float* %118, i64 %162
  %166 = load float, float* %165, align 4, !tbaa !36
  %167 = fsub contract float %164, %166
  %168 = insertelement <2 x float> poison, float %164, i64 0
  %169 = insertelement <2 x float> %168, float %167, i64 1
  %170 = fmul contract <2 x float> %169, %169
  %171 = fadd contract <2 x float> %161, %170
  %172 = add nuw nsw i64 %150, 2
  %173 = add i64 %152, 2
  %174 = icmp eq i64 %173, %127
  br i1 %174, label %128, label %149, !llvm.loop !80

175:                                              ; preds = %143
  %176 = extractelement <2 x float> %144, i64 1
  %177 = call contract float @sqrtf(float %176) #25
  %178 = fdiv contract float %177, %146
  %179 = fcmp contract olt float %178, 0x3EB0C6F7A0000000
  br i1 %179, label %180, label %205

180:                                              ; preds = %175
  %181 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i64 8)
  %182 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %183 = getelementptr i8, i8* %182, i64 -24
  %184 = bitcast i8* %183 to i64*
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %185
  %187 = getelementptr inbounds i8, i8* %186, i64 240
  %188 = bitcast i8* %187 to %"class.std::ctype"**
  %189 = load %"class.std::ctype"*, %"class.std::ctype"** %188, align 8, !tbaa !19
  %190 = icmp eq %"class.std::ctype"* %189, null
  br i1 %190, label %191, label %192

191:                                              ; preds = %180
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

192:                                              ; preds = %180
  %193 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %189, i64 0, i32 8
  %194 = load i8, i8* %193, align 8, !tbaa !22
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %189, i64 0, i32 9, i64 10
  %198 = load i8, i8* %197, align 1, !tbaa !24
  br label %230

199:                                              ; preds = %192
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %189)
  %200 = bitcast %"class.std::ctype"* %189 to i8 (%"class.std::ctype"*, i8)***
  %201 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %200, align 8, !tbaa !17
  %202 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %201, i64 6
  %203 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %202, align 8
  %204 = call signext i8 %203(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %189, i8 signext 10)
  br label %230

205:                                              ; preds = %143, %175
  %206 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i64 7)
  %207 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %208 = getelementptr i8, i8* %207, i64 -24
  %209 = bitcast i8* %208 to i64*
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %210
  %212 = getelementptr inbounds i8, i8* %211, i64 240
  %213 = bitcast i8* %212 to %"class.std::ctype"**
  %214 = load %"class.std::ctype"*, %"class.std::ctype"** %213, align 8, !tbaa !19
  %215 = icmp eq %"class.std::ctype"* %214, null
  br i1 %215, label %216, label %217

216:                                              ; preds = %205
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

217:                                              ; preds = %205
  %218 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %214, i64 0, i32 8
  %219 = load i8, i8* %218, align 8, !tbaa !22
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %214, i64 0, i32 9, i64 10
  %223 = load i8, i8* %222, align 1, !tbaa !24
  br label %230

224:                                              ; preds = %217
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %214)
  %225 = bitcast %"class.std::ctype"* %214 to i8 (%"class.std::ctype"*, i8)***
  %226 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %225, align 8, !tbaa !17
  %227 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %226, i64 6
  %228 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %227, align 8
  %229 = call signext i8 %228(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %214, i8 signext 10)
  br label %230

230:                                              ; preds = %224, %221, %199, %196
  %231 = phi i8 [ %198, %196 ], [ %204, %199 ], [ %223, %221 ], [ %229, %224 ]
  %232 = phi i32 [ 0, %196 ], [ 0, %199 ], [ 1, %221 ], [ 1, %224 ]
  %233 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %231)
  %234 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %233)
  br label %235

235:                                              ; preds = %230, %1
  %236 = phi i32 [ 0, %1 ], [ %232, %230 ]
  ret i32 %236
}

; Function Attrs: uwtable
define dso_local void @_ZN18FastWalshTransform10printStatsEv(%class.FastWalshTransform* nocapture nonnull readonly align 8 dereferenceable(112) %0) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = alloca %"class.std::basic_ostringstream", align 8
  %7 = alloca %"class.std::allocator.0", align 1
  %8 = alloca %"class.std::allocator.0", align 1
  %9 = alloca %"class.std::basic_ostringstream", align 8
  %10 = alloca %"class.std::allocator.0", align 1
  %11 = alloca %"class.std::allocator.0", align 1
  %12 = alloca %"class.std::basic_ostringstream", align 8
  %13 = alloca [3 x %"class.std::basic_string"], align 16
  %14 = alloca %"class.std::allocator.0", align 1
  %15 = alloca %"class.std::allocator.0", align 1
  %16 = alloca %"class.std::allocator.0", align 1
  %17 = alloca [3 x %"class.std::basic_string"], align 16
  %18 = alloca %"class.std::basic_string", align 8
  %19 = alloca %"class.std::basic_string", align 8
  %20 = alloca %"class.std::basic_string", align 8
  %21 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 13
  %22 = bitcast %"class.appsdk::HIPCommandArgs"** %21 to %"class.appsdk::SDKCmdArgsParser"**
  %23 = load %"class.appsdk::SDKCmdArgsParser"*, %"class.appsdk::SDKCmdArgsParser"** %22, align 8, !tbaa !26
  %24 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %23, i64 0, i32 11
  %25 = load i8, i8* %24, align 2, !tbaa !81, !range !30
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %786, label %27

27:                                               ; preds = %1
  %28 = bitcast [3 x %"class.std::basic_string"]* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %28) #25
  %29 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 0
  %30 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %14, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %30) #25
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %14)
  %31 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 1
  %32 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %15, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %32) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %15)
          to label %33 unwind label %739

33:                                               ; preds = %27
  %34 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 2
  %35 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %16, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %35) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %16)
          to label %36 unwind label %741

36:                                               ; preds = %33
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %35) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %32) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %30) #25
  %37 = bitcast [3 x %"class.std::basic_string"]* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %37) #25
  %38 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 0
  %39 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 0, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %39, align 16, !tbaa !52
  %40 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 1, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %40, align 8, !tbaa !52
  %41 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 2, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %41, align 16, !tbaa !52
  %42 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 1
  %43 = load double, double* %42, align 8, !tbaa !66
  %44 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 2
  %45 = load double, double* %44, align 8, !tbaa !78
  %46 = fadd contract double %43, %45
  %47 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 12
  %48 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %47, align 8, !tbaa !61
  %49 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %48, i64 0, i32 1
  store double %46, double* %49, align 8, !tbaa !82
  %50 = bitcast %"class.std::basic_string"* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #25
  %51 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 5
  %52 = load i32, i32* %51, align 8, !tbaa !9
  %53 = bitcast %"class.std::basic_ostringstream"* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %53) #25, !noalias !85
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %12, i32 16)
          to label %54 unwind label %750

54:                                               ; preds = %36
  %55 = bitcast %"class.std::basic_ostringstream"* %12 to i8**
  %56 = load i8*, i8** %55, align 8, !tbaa !17, !noalias !85
  %57 = getelementptr i8, i8* %56, i64 -24
  %58 = bitcast i8* %57 to i64*
  %59 = load i64, i64* %58, align 8, !noalias !85
  %60 = getelementptr inbounds i8, i8* %53, i64 %59
  %61 = getelementptr inbounds i8, i8* %60, i64 24
  %62 = bitcast i8* %61 to i32*
  %63 = load i32, i32* %62, align 8, !tbaa !88, !noalias !85
  %64 = and i32 %63, -75
  %65 = or i32 %64, 2
  store i32 %65, i32* %62, align 8, !tbaa !94, !noalias !85
  %66 = bitcast %"class.std::basic_ostringstream"* %12 to %"class.std::basic_ostream"*
  %67 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %66, i32 %52)
          to label %68 unwind label %98, !noalias !85

68:                                               ; preds = %54
  %69 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %18, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %69)
          to label %70 unwind label %98

70:                                               ; preds = %68
  %71 = load i32 (...)**, i32 (...)*** bitcast ([4 x i8*]* @_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE to i32 (...)***), align 8
  %72 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 0, i32 0
  store i32 (...)** %71, i32 (...)*** %72, align 8, !tbaa !17, !noalias !85
  %73 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTSt19basic_ostringstreamIcSt11char_traitsIcESaIcEE, i64 0, i64 3) to i32 (...)***), align 8
  %74 = getelementptr i32 (...)*, i32 (...)** %71, i64 -3
  %75 = bitcast i32 (...)** %74 to i64*
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i8, i8* %53, i64 %76
  %78 = bitcast i8* %77 to i32 (...)***
  store i32 (...)** %73, i32 (...)*** %78, align 8, !tbaa !17, !noalias !85
  %79 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %79, align 8, !tbaa !17, !noalias !85
  %80 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 2, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8, !tbaa !13, !noalias !85
  %82 = getelementptr inbounds i8, i8* %81, i64 -24
  %83 = bitcast i8* %82 to %"struct.std::basic_string<char>::_Rep"*
  %84 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %11, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %84) #25, !noalias !85
  %85 = icmp eq i8* %82, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %85, label %100, label %86, !prof !16

86:                                               ; preds = %70
  %87 = getelementptr inbounds i8, i8* %81, i64 -8
  %88 = bitcast i8* %87 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %89, label %91

89:                                               ; preds = %86
  %90 = atomicrmw volatile add i32* %88, i32 -1 acq_rel, align 4
  br label %94

91:                                               ; preds = %86
  %92 = load i32, i32* %88, align 8, !tbaa !7
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %88, align 8, !tbaa !7
  br label %94

94:                                               ; preds = %91, %89
  %95 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %96 = icmp slt i32 %95, 1
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %83, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11) #25
  br label %100

98:                                               ; preds = %68, %54
  %99 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %12) #25
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %53) #25, !noalias !85
  br label %754

100:                                              ; preds = %97, %94, %70
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %84) #25, !noalias !85
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %79, align 8, !tbaa !17, !noalias !85
  %101 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %101) #25
  %102 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %12, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %102) #25
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %53) #25, !noalias !85
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %38, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18)
          to label %103 unwind label %752

103:                                              ; preds = %100
  %104 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %18, i64 0, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8, !tbaa !13
  %106 = getelementptr inbounds i8, i8* %105, i64 -24
  %107 = bitcast i8* %106 to %"struct.std::basic_string<char>::_Rep"*
  %108 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %10, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %108) #25
  %109 = icmp eq i8* %106, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %109, label %122, label %110, !prof !16

110:                                              ; preds = %103
  %111 = getelementptr inbounds i8, i8* %105, i64 -8
  %112 = bitcast i8* %111 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %113, label %115

113:                                              ; preds = %110
  %114 = atomicrmw volatile add i32* %112, i32 -1 acq_rel, align 4
  br label %118

115:                                              ; preds = %110
  %116 = load i32, i32* %112, align 8, !tbaa !7
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %112, align 8, !tbaa !7
  br label %118

118:                                              ; preds = %115, %113
  %119 = phi i32 [ %114, %113 ], [ %116, %115 ]
  %120 = icmp slt i32 %119, 1
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %107, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %10) #25
  br label %122

122:                                              ; preds = %103, %118, %121
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %108) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #25
  %123 = bitcast %"class.std::basic_string"* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %123) #25
  %124 = load %"class.appsdk::SDKTimer"*, %"class.appsdk::SDKTimer"** %47, align 8, !tbaa !61
  %125 = getelementptr inbounds %"class.appsdk::SDKTimer", %"class.appsdk::SDKTimer"* %124, i64 0, i32 1
  %126 = load double, double* %125, align 8, !tbaa !82
  %127 = bitcast %"class.std::basic_ostringstream"* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %127) #25, !noalias !95
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %9, i32 16)
          to label %128 unwind label %756

128:                                              ; preds = %122
  %129 = bitcast %"class.std::basic_ostringstream"* %9 to i8**
  %130 = load i8*, i8** %129, align 8, !tbaa !17, !noalias !95
  %131 = getelementptr i8, i8* %130, i64 -24
  %132 = bitcast i8* %131 to i64*
  %133 = load i64, i64* %132, align 8, !noalias !95
  %134 = getelementptr inbounds i8, i8* %127, i64 %133
  %135 = getelementptr inbounds i8, i8* %134, i64 24
  %136 = bitcast i8* %135 to i32*
  %137 = load i32, i32* %136, align 8, !tbaa !88, !noalias !95
  %138 = and i32 %137, -75
  %139 = or i32 %138, 2
  store i32 %139, i32* %136, align 8, !tbaa !94, !noalias !95
  %140 = bitcast %"class.std::basic_ostringstream"* %9 to %"class.std::basic_ostream"*
  %141 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %140, double %126)
          to label %142 unwind label %168, !noalias !95

142:                                              ; preds = %128
  %143 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %19, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %143)
          to label %144 unwind label %168

144:                                              ; preds = %142
  %145 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 0, i32 0
  store i32 (...)** %71, i32 (...)*** %145, align 8, !tbaa !17, !noalias !95
  %146 = load i64, i64* %75, align 8
  %147 = getelementptr inbounds i8, i8* %127, i64 %146
  %148 = bitcast i8* %147 to i32 (...)***
  store i32 (...)** %73, i32 (...)*** %148, align 8, !tbaa !17, !noalias !95
  %149 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %149, align 8, !tbaa !17, !noalias !95
  %150 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 2, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8, !tbaa !13, !noalias !95
  %152 = getelementptr inbounds i8, i8* %151, i64 -24
  %153 = bitcast i8* %152 to %"struct.std::basic_string<char>::_Rep"*
  %154 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %154) #25, !noalias !95
  %155 = icmp eq i8* %152, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %155, label %170, label %156, !prof !16

156:                                              ; preds = %144
  %157 = getelementptr inbounds i8, i8* %151, i64 -8
  %158 = bitcast i8* %157 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %159, label %161

159:                                              ; preds = %156
  %160 = atomicrmw volatile add i32* %158, i32 -1 acq_rel, align 4
  br label %164

161:                                              ; preds = %156
  %162 = load i32, i32* %158, align 8, !tbaa !7
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %158, align 8, !tbaa !7
  br label %164

164:                                              ; preds = %161, %159
  %165 = phi i32 [ %160, %159 ], [ %162, %161 ]
  %166 = icmp slt i32 %165, 1
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %153, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %8) #25
  br label %170

168:                                              ; preds = %142, %128
  %169 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %9) #25
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %127) #25, !noalias !95
  br label %760

170:                                              ; preds = %167, %164, %144
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %154) #25, !noalias !95
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %149, align 8, !tbaa !17, !noalias !95
  %171 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %171) #25
  %172 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %9, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %172) #25
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %127) #25, !noalias !95
  %173 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 1
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %173, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %19)
          to label %174 unwind label %758

174:                                              ; preds = %170
  %175 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %19, i64 0, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8, !tbaa !13
  %177 = getelementptr inbounds i8, i8* %176, i64 -24
  %178 = bitcast i8* %177 to %"struct.std::basic_string<char>::_Rep"*
  %179 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %179) #25
  %180 = icmp eq i8* %177, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %180, label %193, label %181, !prof !16

181:                                              ; preds = %174
  %182 = getelementptr inbounds i8, i8* %176, i64 -8
  %183 = bitcast i8* %182 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %184, label %186

184:                                              ; preds = %181
  %185 = atomicrmw volatile add i32* %183, i32 -1 acq_rel, align 4
  br label %189

186:                                              ; preds = %181
  %187 = load i32, i32* %183, align 8, !tbaa !7
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* %183, align 8, !tbaa !7
  br label %189

189:                                              ; preds = %186, %184
  %190 = phi i32 [ %185, %184 ], [ %187, %186 ]
  %191 = icmp slt i32 %190, 1
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %178, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7) #25
  br label %193

193:                                              ; preds = %174, %189, %192
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %179) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %123) #25
  %194 = bitcast %"class.std::basic_string"* %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %194) #25
  %195 = load double, double* %44, align 8, !tbaa !78
  %196 = bitcast %"class.std::basic_ostringstream"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 352, i8* nonnull %196) #25, !noalias !98
  invoke void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %6, i32 16)
          to label %197 unwind label %762

197:                                              ; preds = %193
  %198 = bitcast %"class.std::basic_ostringstream"* %6 to i8**
  %199 = load i8*, i8** %198, align 8, !tbaa !17, !noalias !98
  %200 = getelementptr i8, i8* %199, i64 -24
  %201 = bitcast i8* %200 to i64*
  %202 = load i64, i64* %201, align 8, !noalias !98
  %203 = getelementptr inbounds i8, i8* %196, i64 %202
  %204 = getelementptr inbounds i8, i8* %203, i64 24
  %205 = bitcast i8* %204 to i32*
  %206 = load i32, i32* %205, align 8, !tbaa !88, !noalias !98
  %207 = and i32 %206, -75
  %208 = or i32 %207, 2
  store i32 %208, i32* %205, align 8, !tbaa !94, !noalias !98
  %209 = bitcast %"class.std::basic_ostringstream"* %6 to %"class.std::basic_ostream"*
  %210 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %209, double %195)
          to label %211 unwind label %237, !noalias !98

211:                                              ; preds = %197
  %212 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1
  invoke void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* nonnull sret(%"class.std::basic_string") align 8 %20, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80) %212)
          to label %213 unwind label %237

213:                                              ; preds = %211
  %214 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 0, i32 0
  store i32 (...)** %71, i32 (...)*** %214, align 8, !tbaa !17, !noalias !98
  %215 = load i64, i64* %75, align 8
  %216 = getelementptr inbounds i8, i8* %196, i64 %215
  %217 = bitcast i8* %216 to i32 (...)***
  store i32 (...)** %73, i32 (...)*** %217, align 8, !tbaa !17, !noalias !98
  %218 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_stringbufIcSt11char_traitsIcESaIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %218, align 8, !tbaa !17, !noalias !98
  %219 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 2, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8, !tbaa !13, !noalias !98
  %221 = getelementptr inbounds i8, i8* %220, i64 -24
  %222 = bitcast i8* %221 to %"struct.std::basic_string<char>::_Rep"*
  %223 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %223) #25, !noalias !98
  %224 = icmp eq i8* %221, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %224, label %239, label %225, !prof !16

225:                                              ; preds = %213
  %226 = getelementptr inbounds i8, i8* %220, i64 -8
  %227 = bitcast i8* %226 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %228, label %230

228:                                              ; preds = %225
  %229 = atomicrmw volatile add i32* %227, i32 -1 acq_rel, align 4
  br label %233

230:                                              ; preds = %225
  %231 = load i32, i32* %227, align 8, !tbaa !7
  %232 = add nsw i32 %231, -1
  store i32 %232, i32* %227, align 8, !tbaa !7
  br label %233

233:                                              ; preds = %230, %228
  %234 = phi i32 [ %229, %228 ], [ %231, %230 ]
  %235 = icmp slt i32 %234, 1
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %222, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #25
  br label %239

237:                                              ; preds = %211, %197
  %238 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88) %6) #25
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %196) #25, !noalias !98
  br label %766

239:                                              ; preds = %236, %233, %213
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %223) #25, !noalias !98
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %218, align 8, !tbaa !17, !noalias !98
  %240 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8) %240) #25
  %241 = getelementptr inbounds %"class.std::basic_ostringstream", %"class.std::basic_ostringstream"* %6, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %241) #25
  call void @llvm.lifetime.end.p0i8(i64 352, i8* nonnull %196) #25, !noalias !98
  %242 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 2
  invoke void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %242, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20)
          to label %243 unwind label %764

243:                                              ; preds = %239
  %244 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %20, i64 0, i32 0, i32 0
  %245 = load i8*, i8** %244, align 8, !tbaa !13
  %246 = getelementptr inbounds i8, i8* %245, i64 -24
  %247 = bitcast i8* %246 to %"struct.std::basic_string<char>::_Rep"*
  %248 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %248) #25
  %249 = icmp eq i8* %246, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %249, label %262, label %250, !prof !16

250:                                              ; preds = %243
  %251 = getelementptr inbounds i8, i8* %245, i64 -8
  %252 = bitcast i8* %251 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %253, label %255

253:                                              ; preds = %250
  %254 = atomicrmw volatile add i32* %252, i32 -1 acq_rel, align 4
  br label %258

255:                                              ; preds = %250
  %256 = load i32, i32* %252, align 8, !tbaa !7
  %257 = add nsw i32 %256, -1
  store i32 %257, i32* %252, align 8, !tbaa !7
  br label %258

258:                                              ; preds = %255, %253
  %259 = phi i32 [ %254, %253 ], [ %256, %255 ]
  %260 = icmp slt i32 %259, 1
  br i1 %260, label %261, label %262

261:                                              ; preds = %258
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %247, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #25
  br label %262

262:                                              ; preds = %243, %258, %261
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %248) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %194) #25
  %263 = invoke noalias nonnull dereferenceable(12) i8* @_Znam(i64 12) #27
          to label %264 unwind label %774

264:                                              ; preds = %262
  %265 = bitcast i8* %263 to i32*
  %266 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %267 = getelementptr i8, i8* %266, i64 -24
  %268 = bitcast i8* %267 to i64*
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %269
  %271 = getelementptr inbounds i8, i8* %270, i64 240
  %272 = bitcast i8* %271 to %"class.std::ctype"**
  %273 = load %"class.std::ctype"*, %"class.std::ctype"** %272, align 8, !tbaa !19
  %274 = icmp eq %"class.std::ctype"* %273, null
  br i1 %274, label %275, label %277

275:                                              ; preds = %264
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %276 unwind label %774

276:                                              ; preds = %275
  unreachable

277:                                              ; preds = %264
  %278 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %273, i64 0, i32 8
  %279 = load i8, i8* %278, align 8, !tbaa !22
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %277
  %282 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %273, i64 0, i32 9, i64 10
  %283 = load i8, i8* %282, align 1, !tbaa !24
  br label %291

284:                                              ; preds = %277
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %273)
          to label %285 unwind label %774

285:                                              ; preds = %284
  %286 = bitcast %"class.std::ctype"* %273 to i8 (%"class.std::ctype"*, i8)***
  %287 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %286, align 8, !tbaa !17
  %288 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %287, i64 6
  %289 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %288, align 8
  %290 = invoke signext i8 %289(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %273, i8 signext 10)
          to label %291 unwind label %774

291:                                              ; preds = %285, %281
  %292 = phi i8 [ %283, %281 ], [ %290, %285 ]
  %293 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %292)
          to label %294 unwind label %774

294:                                              ; preds = %291
  %295 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %293)
          to label %296 unwind label %774

296:                                              ; preds = %294
  %297 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %295, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), i64 1)
          to label %298 unwind label %774

298:                                              ; preds = %296
  %299 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 0, i32 0, i32 0
  %300 = load i8*, i8** %299, align 16, !tbaa !13
  %301 = getelementptr inbounds i8, i8* %300, i64 -24
  %302 = bitcast i8* %301 to i64*
  %303 = load i64, i64* %302, align 8, !tbaa !33
  %304 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 0, i32 0, i32 0
  %305 = load i8*, i8** %304, align 16, !tbaa !13
  %306 = getelementptr inbounds i8, i8* %305, i64 -24
  %307 = bitcast i8* %306 to i64*
  %308 = load i64, i64* %307, align 8, !tbaa !33
  %309 = icmp ugt i64 %303, %308
  %310 = select i1 %309, i64 %303, i64 %308
  %311 = trunc i64 %310 to i32
  store i32 %311, i32* %265, align 4, !tbaa !7
  %312 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0), i64 1)
          to label %313 unwind label %774

313:                                              ; preds = %298
  %314 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %315 = getelementptr i8, i8* %314, i64 -24
  %316 = bitcast i8* %315 to i64*
  %317 = load i64, i64* %316, align 8
  %318 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %317
  %319 = shl i64 %310, 32
  %320 = add i64 %319, 4294967296
  %321 = ashr exact i64 %320, 32
  %322 = getelementptr inbounds i8, i8* %318, i64 16
  %323 = bitcast i8* %322 to i64*
  store i64 %321, i64* %323, align 8, !tbaa !101
  %324 = load i64, i64* %316, align 8
  %325 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %324
  %326 = getelementptr inbounds i8, i8* %325, i64 24
  %327 = bitcast i8* %326 to i32*
  %328 = load i32, i32* %327, align 8, !tbaa !88
  %329 = and i32 %328, -177
  %330 = or i32 %329, 32
  store i32 %330, i32* %327, align 8, !tbaa !94
  %331 = load i8*, i8** %299, align 16, !tbaa !13
  %332 = getelementptr inbounds i8, i8* %331, i64 -24
  %333 = bitcast i8* %332 to i64*
  %334 = load i64, i64* %333, align 8, !tbaa !33
  %335 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %331, i64 %334)
          to label %336 unwind label %774

336:                                              ; preds = %313
  %337 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %335, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), i64 1)
          to label %338 unwind label %774

338:                                              ; preds = %336
  %339 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 1, i32 0, i32 0
  %340 = load i8*, i8** %339, align 8, !tbaa !13
  %341 = getelementptr inbounds i8, i8* %340, i64 -24
  %342 = bitcast i8* %341 to i64*
  %343 = load i64, i64* %342, align 8, !tbaa !33
  %344 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 1, i32 0, i32 0
  %345 = load i8*, i8** %344, align 8, !tbaa !13
  %346 = getelementptr inbounds i8, i8* %345, i64 -24
  %347 = bitcast i8* %346 to i64*
  %348 = load i64, i64* %347, align 8, !tbaa !33
  %349 = icmp ugt i64 %343, %348
  %350 = select i1 %349, i64 %343, i64 %348
  %351 = trunc i64 %350 to i32
  %352 = getelementptr inbounds i32, i32* %265, i64 1
  store i32 %351, i32* %352, align 4, !tbaa !7
  %353 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0), i64 1)
          to label %354 unwind label %774

354:                                              ; preds = %338
  %355 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %356 = getelementptr i8, i8* %355, i64 -24
  %357 = bitcast i8* %356 to i64*
  %358 = load i64, i64* %357, align 8
  %359 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %358
  %360 = shl i64 %350, 32
  %361 = add i64 %360, 4294967296
  %362 = ashr exact i64 %361, 32
  %363 = getelementptr inbounds i8, i8* %359, i64 16
  %364 = bitcast i8* %363 to i64*
  store i64 %362, i64* %364, align 8, !tbaa !101
  %365 = load i64, i64* %357, align 8
  %366 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %365
  %367 = getelementptr inbounds i8, i8* %366, i64 24
  %368 = bitcast i8* %367 to i32*
  %369 = load i32, i32* %368, align 8, !tbaa !88
  %370 = and i32 %369, -177
  %371 = or i32 %370, 32
  store i32 %371, i32* %368, align 8, !tbaa !94
  %372 = load i8*, i8** %339, align 8, !tbaa !13
  %373 = getelementptr inbounds i8, i8* %372, i64 -24
  %374 = bitcast i8* %373 to i64*
  %375 = load i64, i64* %374, align 8, !tbaa !33
  %376 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %372, i64 %375)
          to label %377 unwind label %774

377:                                              ; preds = %354
  %378 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %376, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), i64 1)
          to label %379 unwind label %774

379:                                              ; preds = %377
  %380 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 2, i32 0, i32 0
  %381 = load i8*, i8** %380, align 16, !tbaa !13
  %382 = getelementptr inbounds i8, i8* %381, i64 -24
  %383 = bitcast i8* %382 to i64*
  %384 = load i64, i64* %383, align 8, !tbaa !33
  %385 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 2, i32 0, i32 0
  %386 = load i8*, i8** %385, align 16, !tbaa !13
  %387 = getelementptr inbounds i8, i8* %386, i64 -24
  %388 = bitcast i8* %387 to i64*
  %389 = load i64, i64* %388, align 8, !tbaa !33
  %390 = icmp ugt i64 %384, %389
  %391 = select i1 %390, i64 %384, i64 %389
  %392 = trunc i64 %391 to i32
  %393 = getelementptr inbounds i32, i32* %265, i64 2
  store i32 %392, i32* %393, align 4, !tbaa !7
  %394 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0), i64 1)
          to label %395 unwind label %774

395:                                              ; preds = %379
  %396 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %397 = getelementptr i8, i8* %396, i64 -24
  %398 = bitcast i8* %397 to i64*
  %399 = load i64, i64* %398, align 8
  %400 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %399
  %401 = shl i64 %391, 32
  %402 = add i64 %401, 4294967296
  %403 = ashr exact i64 %402, 32
  %404 = getelementptr inbounds i8, i8* %400, i64 16
  %405 = bitcast i8* %404 to i64*
  store i64 %403, i64* %405, align 8, !tbaa !101
  %406 = load i64, i64* %398, align 8
  %407 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %406
  %408 = getelementptr inbounds i8, i8* %407, i64 24
  %409 = bitcast i8* %408 to i32*
  %410 = load i32, i32* %409, align 8, !tbaa !88
  %411 = and i32 %410, -177
  %412 = or i32 %411, 32
  store i32 %412, i32* %409, align 8, !tbaa !94
  %413 = load i8*, i8** %380, align 16, !tbaa !13
  %414 = getelementptr inbounds i8, i8* %413, i64 -24
  %415 = bitcast i8* %414 to i64*
  %416 = load i64, i64* %415, align 8, !tbaa !33
  %417 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %413, i64 %416)
          to label %418 unwind label %774

418:                                              ; preds = %395
  %419 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %417, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), i64 1)
          to label %420 unwind label %774

420:                                              ; preds = %418
  %421 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %422 = getelementptr i8, i8* %421, i64 -24
  %423 = bitcast i8* %422 to i64*
  %424 = load i64, i64* %423, align 8
  %425 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %424
  %426 = getelementptr inbounds i8, i8* %425, i64 240
  %427 = bitcast i8* %426 to %"class.std::ctype"**
  %428 = load %"class.std::ctype"*, %"class.std::ctype"** %427, align 8, !tbaa !19
  %429 = icmp eq %"class.std::ctype"* %428, null
  br i1 %429, label %430, label %432

430:                                              ; preds = %420
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %431 unwind label %774

431:                                              ; preds = %430
  unreachable

432:                                              ; preds = %420
  %433 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %428, i64 0, i32 8
  %434 = load i8, i8* %433, align 8, !tbaa !22
  %435 = icmp eq i8 %434, 0
  br i1 %435, label %439, label %436

436:                                              ; preds = %432
  %437 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %428, i64 0, i32 9, i64 10
  %438 = load i8, i8* %437, align 1, !tbaa !24
  br label %446

439:                                              ; preds = %432
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %428)
          to label %440 unwind label %774

440:                                              ; preds = %439
  %441 = bitcast %"class.std::ctype"* %428 to i8 (%"class.std::ctype"*, i8)***
  %442 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %441, align 8, !tbaa !17
  %443 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %442, i64 6
  %444 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %443, align 8
  %445 = invoke signext i8 %444(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %428, i8 signext 10)
          to label %446 unwind label %774

446:                                              ; preds = %440, %436
  %447 = phi i8 [ %438, %436 ], [ %445, %440 ]
  %448 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %447)
          to label %449 unwind label %774

449:                                              ; preds = %446
  %450 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %448)
          to label %451 unwind label %774

451:                                              ; preds = %449
  %452 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %450, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), i64 1)
          to label %453 unwind label %774

453:                                              ; preds = %451
  %454 = load i32, i32* %265, align 4, !tbaa !7
  %455 = icmp sgt i32 %454, -2
  br i1 %455, label %456, label %565

456:                                              ; preds = %453
  %457 = add i32 %454, 1
  br label %601

458:                                              ; preds = %591
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %459 unwind label %774

459:                                              ; preds = %458
  unreachable

460:                                              ; preds = %591
  %461 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %599, i64 0, i32 8
  %462 = load i8, i8* %461, align 8, !tbaa !22
  %463 = icmp eq i8 %462, 0
  br i1 %463, label %467, label %464

464:                                              ; preds = %460
  %465 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %599, i64 0, i32 9, i64 10
  %466 = load i8, i8* %465, align 1, !tbaa !24
  br label %474

467:                                              ; preds = %460
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %599)
          to label %468 unwind label %774

468:                                              ; preds = %467
  %469 = bitcast %"class.std::ctype"* %599 to i8 (%"class.std::ctype"*, i8)***
  %470 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %469, align 8, !tbaa !17
  %471 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %470, i64 6
  %472 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %471, align 8
  %473 = invoke signext i8 %472(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %599, i8 signext 10)
          to label %474 unwind label %774

474:                                              ; preds = %468, %464
  %475 = phi i8 [ %466, %464 ], [ %473, %468 ]
  %476 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %475)
          to label %477 unwind label %774

477:                                              ; preds = %474
  %478 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %476)
          to label %479 unwind label %774

479:                                              ; preds = %477
  %480 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %478, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), i64 1)
          to label %481 unwind label %774

481:                                              ; preds = %479
  %482 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0), i64 1)
          to label %483 unwind label %774

483:                                              ; preds = %481
  %484 = add nsw i32 %454, 1
  %485 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %486 = getelementptr i8, i8* %485, i64 -24
  %487 = bitcast i8* %486 to i64*
  %488 = load i64, i64* %487, align 8
  %489 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %488
  %490 = sext i32 %484 to i64
  %491 = getelementptr inbounds i8, i8* %489, i64 16
  %492 = bitcast i8* %491 to i64*
  store i64 %490, i64* %492, align 8, !tbaa !101
  %493 = load i64, i64* %487, align 8
  %494 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %493
  %495 = getelementptr inbounds i8, i8* %494, i64 24
  %496 = bitcast i8* %495 to i32*
  %497 = load i32, i32* %496, align 8, !tbaa !88
  %498 = and i32 %497, -177
  %499 = or i32 %498, 32
  store i32 %499, i32* %496, align 8, !tbaa !94
  %500 = load i8*, i8** %304, align 16, !tbaa !13
  %501 = getelementptr inbounds i8, i8* %500, i64 -24
  %502 = bitcast i8* %501 to i64*
  %503 = load i64, i64* %502, align 8, !tbaa !33
  %504 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %500, i64 %503)
          to label %505 unwind label %774

505:                                              ; preds = %483
  %506 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %504, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), i64 1)
          to label %507 unwind label %774

507:                                              ; preds = %505
  %508 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0), i64 1)
          to label %509 unwind label %774

509:                                              ; preds = %507
  %510 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %511 = getelementptr i8, i8* %510, i64 -24
  %512 = bitcast i8* %511 to i64*
  %513 = load i64, i64* %512, align 8
  %514 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %513
  %515 = getelementptr inbounds i8, i8* %514, i64 16
  %516 = bitcast i8* %515 to i64*
  store i64 %362, i64* %516, align 8, !tbaa !101
  %517 = load i64, i64* %512, align 8
  %518 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %517
  %519 = getelementptr inbounds i8, i8* %518, i64 24
  %520 = bitcast i8* %519 to i32*
  %521 = load i32, i32* %520, align 8, !tbaa !88
  %522 = and i32 %521, -177
  %523 = or i32 %522, 32
  store i32 %523, i32* %520, align 8, !tbaa !94
  %524 = load i8*, i8** %344, align 8, !tbaa !13
  %525 = getelementptr inbounds i8, i8* %524, i64 -24
  %526 = bitcast i8* %525 to i64*
  %527 = load i64, i64* %526, align 8, !tbaa !33
  %528 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %524, i64 %527)
          to label %529 unwind label %774

529:                                              ; preds = %509
  %530 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %528, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), i64 1)
          to label %531 unwind label %774

531:                                              ; preds = %529
  %532 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0), i64 1)
          to label %533 unwind label %774

533:                                              ; preds = %531
  %534 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %535 = getelementptr i8, i8* %534, i64 -24
  %536 = bitcast i8* %535 to i64*
  %537 = load i64, i64* %536, align 8
  %538 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %537
  %539 = getelementptr inbounds i8, i8* %538, i64 16
  %540 = bitcast i8* %539 to i64*
  store i64 %403, i64* %540, align 8, !tbaa !101
  %541 = load i64, i64* %536, align 8
  %542 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %541
  %543 = getelementptr inbounds i8, i8* %542, i64 24
  %544 = bitcast i8* %543 to i32*
  %545 = load i32, i32* %544, align 8, !tbaa !88
  %546 = and i32 %545, -177
  %547 = or i32 %546, 32
  store i32 %547, i32* %544, align 8, !tbaa !94
  %548 = load i8*, i8** %385, align 16, !tbaa !13
  %549 = getelementptr inbounds i8, i8* %548, i64 -24
  %550 = bitcast i8* %549 to i64*
  %551 = load i64, i64* %550, align 8, !tbaa !33
  %552 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %548, i64 %551)
          to label %553 unwind label %774

553:                                              ; preds = %533
  %554 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %552, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), i64 1)
          to label %555 unwind label %774

555:                                              ; preds = %553
  %556 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %557 = getelementptr i8, i8* %556, i64 -24
  %558 = bitcast i8* %557 to i64*
  %559 = load i64, i64* %558, align 8
  %560 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %559
  %561 = getelementptr inbounds i8, i8* %560, i64 240
  %562 = bitcast i8* %561 to %"class.std::ctype"**
  %563 = load %"class.std::ctype"*, %"class.std::ctype"** %562, align 8, !tbaa !19
  %564 = icmp eq %"class.std::ctype"* %563, null
  br i1 %564, label %607, label %609

565:                                              ; preds = %604, %453
  %566 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), i64 1)
          to label %567 unwind label %774

567:                                              ; preds = %565
  %568 = icmp sgt i32 %351, -2
  br i1 %568, label %569, label %577

569:                                              ; preds = %567
  %570 = add i32 %351, 1
  br label %571

571:                                              ; preds = %569, %574
  %572 = phi i32 [ %575, %574 ], [ 0, %569 ]
  %573 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i64 1)
          to label %574 unwind label %770

574:                                              ; preds = %571
  %575 = add nuw i32 %572, 1
  %576 = icmp eq i32 %572, %570
  br i1 %576, label %577, label %571, !llvm.loop !102

577:                                              ; preds = %574, %567
  %578 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), i64 1)
          to label %579 unwind label %774

579:                                              ; preds = %577
  %580 = icmp sgt i32 %392, -2
  br i1 %580, label %581, label %589

581:                                              ; preds = %579
  %582 = add i32 %392, 1
  br label %583

583:                                              ; preds = %581, %586
  %584 = phi i32 [ %587, %586 ], [ 0, %581 ]
  %585 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i64 1)
          to label %586 unwind label %768

586:                                              ; preds = %583
  %587 = add nuw i32 %584, 1
  %588 = icmp eq i32 %584, %582
  br i1 %588, label %589, label %583, !llvm.loop !102

589:                                              ; preds = %586, %579
  %590 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), i64 1)
          to label %591 unwind label %774

591:                                              ; preds = %589
  %592 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %593 = getelementptr i8, i8* %592, i64 -24
  %594 = bitcast i8* %593 to i64*
  %595 = load i64, i64* %594, align 8
  %596 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %595
  %597 = getelementptr inbounds i8, i8* %596, i64 240
  %598 = bitcast i8* %597 to %"class.std::ctype"**
  %599 = load %"class.std::ctype"*, %"class.std::ctype"** %598, align 8, !tbaa !19
  %600 = icmp eq %"class.std::ctype"* %599, null
  br i1 %600, label %458, label %460

601:                                              ; preds = %456, %604
  %602 = phi i32 [ %605, %604 ], [ 0, %456 ]
  %603 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i64 1)
          to label %604 unwind label %772

604:                                              ; preds = %601
  %605 = add nuw i32 %602, 1
  %606 = icmp eq i32 %602, %457
  br i1 %606, label %565, label %601, !llvm.loop !102

607:                                              ; preds = %555
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %608 unwind label %774

608:                                              ; preds = %607
  unreachable

609:                                              ; preds = %555
  %610 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %563, i64 0, i32 8
  %611 = load i8, i8* %610, align 8, !tbaa !22
  %612 = icmp eq i8 %611, 0
  br i1 %612, label %616, label %613

613:                                              ; preds = %609
  %614 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %563, i64 0, i32 9, i64 10
  %615 = load i8, i8* %614, align 1, !tbaa !24
  br label %623

616:                                              ; preds = %609
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %563)
          to label %617 unwind label %774

617:                                              ; preds = %616
  %618 = bitcast %"class.std::ctype"* %563 to i8 (%"class.std::ctype"*, i8)***
  %619 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %618, align 8, !tbaa !17
  %620 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %619, i64 6
  %621 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %620, align 8
  %622 = invoke signext i8 %621(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %563, i8 signext 10)
          to label %623 unwind label %774

623:                                              ; preds = %617, %613
  %624 = phi i8 [ %615, %613 ], [ %622, %617 ]
  %625 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 signext %624)
          to label %626 unwind label %774

626:                                              ; preds = %623
  %627 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %625)
          to label %628 unwind label %774

628:                                              ; preds = %626
  call void @_ZdaPv(i8* nonnull %263) #28
  %629 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  %630 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 2, i32 0, i32 0
  %631 = load i8*, i8** %630, align 16, !tbaa !13
  %632 = getelementptr inbounds i8, i8* %631, i64 -24
  %633 = bitcast i8* %632 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %629) #25
  %634 = icmp eq i8* %632, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %634, label %647, label %635, !prof !16

635:                                              ; preds = %628
  %636 = getelementptr inbounds i8, i8* %631, i64 -8
  %637 = bitcast i8* %636 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %638, label %640

638:                                              ; preds = %635
  %639 = atomicrmw volatile add i32* %637, i32 -1 acq_rel, align 4
  br label %643

640:                                              ; preds = %635
  %641 = load i32, i32* %637, align 8, !tbaa !7
  %642 = add nsw i32 %641, -1
  store i32 %642, i32* %637, align 8, !tbaa !7
  br label %643

643:                                              ; preds = %640, %638
  %644 = phi i32 [ %639, %638 ], [ %641, %640 ]
  %645 = icmp slt i32 %644, 1
  br i1 %645, label %646, label %647

646:                                              ; preds = %643
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %633, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #25
  br label %647

647:                                              ; preds = %628, %643, %646
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %629) #25
  %648 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 1, i32 0, i32 0
  %649 = load i8*, i8** %648, align 8, !tbaa !13
  %650 = getelementptr inbounds i8, i8* %649, i64 -24
  %651 = bitcast i8* %650 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %629) #25
  %652 = icmp eq i8* %650, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %652, label %665, label %653, !prof !16

653:                                              ; preds = %647
  %654 = getelementptr inbounds i8, i8* %649, i64 -8
  %655 = bitcast i8* %654 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %659, label %656

656:                                              ; preds = %653
  %657 = load i32, i32* %655, align 8, !tbaa !7
  %658 = add nsw i32 %657, -1
  store i32 %658, i32* %655, align 8, !tbaa !7
  br label %661

659:                                              ; preds = %653
  %660 = atomicrmw volatile add i32* %655, i32 -1 acq_rel, align 4
  br label %661

661:                                              ; preds = %659, %656
  %662 = phi i32 [ %660, %659 ], [ %657, %656 ]
  %663 = icmp slt i32 %662, 1
  br i1 %663, label %664, label %665

664:                                              ; preds = %661
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %651, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #25
  br label %665

665:                                              ; preds = %664, %661, %647
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %629) #25
  %666 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 0, i32 0, i32 0
  %667 = load i8*, i8** %666, align 16, !tbaa !13
  %668 = getelementptr inbounds i8, i8* %667, i64 -24
  %669 = bitcast i8* %668 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %629) #25
  %670 = icmp eq i8* %668, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %670, label %683, label %671, !prof !16

671:                                              ; preds = %665
  %672 = getelementptr inbounds i8, i8* %667, i64 -8
  %673 = bitcast i8* %672 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %677, label %674

674:                                              ; preds = %671
  %675 = load i32, i32* %673, align 8, !tbaa !7
  %676 = add nsw i32 %675, -1
  store i32 %676, i32* %673, align 8, !tbaa !7
  br label %679

677:                                              ; preds = %671
  %678 = atomicrmw volatile add i32* %673, i32 -1 acq_rel, align 4
  br label %679

679:                                              ; preds = %677, %674
  %680 = phi i32 [ %678, %677 ], [ %675, %674 ]
  %681 = icmp slt i32 %680, 1
  br i1 %681, label %682, label %683

682:                                              ; preds = %679
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %669, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #25
  br label %683

683:                                              ; preds = %682, %679, %665
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %629) #25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %37) #25
  %684 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  %685 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 2, i32 0, i32 0
  %686 = load i8*, i8** %685, align 16, !tbaa !13
  %687 = getelementptr inbounds i8, i8* %686, i64 -24
  %688 = bitcast i8* %687 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %684) #25
  %689 = icmp eq i8* %687, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %689, label %702, label %690, !prof !16

690:                                              ; preds = %683
  %691 = getelementptr inbounds i8, i8* %686, i64 -8
  %692 = bitcast i8* %691 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %693, label %695

693:                                              ; preds = %690
  %694 = atomicrmw volatile add i32* %692, i32 -1 acq_rel, align 4
  br label %698

695:                                              ; preds = %690
  %696 = load i32, i32* %692, align 8, !tbaa !7
  %697 = add nsw i32 %696, -1
  store i32 %697, i32* %692, align 8, !tbaa !7
  br label %698

698:                                              ; preds = %695, %693
  %699 = phi i32 [ %694, %693 ], [ %696, %695 ]
  %700 = icmp slt i32 %699, 1
  br i1 %700, label %701, label %702

701:                                              ; preds = %698
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %688, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #25
  br label %702

702:                                              ; preds = %683, %698, %701
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %684) #25
  %703 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 1, i32 0, i32 0
  %704 = load i8*, i8** %703, align 8, !tbaa !13
  %705 = getelementptr inbounds i8, i8* %704, i64 -24
  %706 = bitcast i8* %705 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %684) #25
  %707 = icmp eq i8* %705, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %707, label %720, label %708, !prof !16

708:                                              ; preds = %702
  %709 = getelementptr inbounds i8, i8* %704, i64 -8
  %710 = bitcast i8* %709 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %714, label %711

711:                                              ; preds = %708
  %712 = load i32, i32* %710, align 8, !tbaa !7
  %713 = add nsw i32 %712, -1
  store i32 %713, i32* %710, align 8, !tbaa !7
  br label %716

714:                                              ; preds = %708
  %715 = atomicrmw volatile add i32* %710, i32 -1 acq_rel, align 4
  br label %716

716:                                              ; preds = %714, %711
  %717 = phi i32 [ %715, %714 ], [ %712, %711 ]
  %718 = icmp slt i32 %717, 1
  br i1 %718, label %719, label %720

719:                                              ; preds = %716
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %706, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #25
  br label %720

720:                                              ; preds = %719, %716, %702
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %684) #25
  %721 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 0, i32 0, i32 0
  %722 = load i8*, i8** %721, align 16, !tbaa !13
  %723 = getelementptr inbounds i8, i8* %722, i64 -24
  %724 = bitcast i8* %723 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %684) #25
  %725 = icmp eq i8* %723, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %725, label %738, label %726, !prof !16

726:                                              ; preds = %720
  %727 = getelementptr inbounds i8, i8* %722, i64 -8
  %728 = bitcast i8* %727 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %732, label %729

729:                                              ; preds = %726
  %730 = load i32, i32* %728, align 8, !tbaa !7
  %731 = add nsw i32 %730, -1
  store i32 %731, i32* %728, align 8, !tbaa !7
  br label %734

732:                                              ; preds = %726
  %733 = atomicrmw volatile add i32* %728, i32 -1 acq_rel, align 4
  br label %734

734:                                              ; preds = %732, %729
  %735 = phi i32 [ %733, %732 ], [ %730, %729 ]
  %736 = icmp slt i32 %735, 1
  br i1 %736, label %737, label %738

737:                                              ; preds = %734
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %724, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #25
  br label %738

738:                                              ; preds = %737, %734, %720
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %684) #25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %28) #25
  br label %786

739:                                              ; preds = %27
  %740 = landingpad { i8*, i32 }
          cleanup
  br label %743

741:                                              ; preds = %33
  %742 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %35) #25
  br label %743

743:                                              ; preds = %739, %741
  %744 = phi %"class.std::basic_string"* [ %34, %741 ], [ %31, %739 ]
  %745 = phi { i8*, i32 } [ %742, %741 ], [ %740, %739 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %32) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %30) #25
  br label %746

746:                                              ; preds = %743, %746
  %747 = phi %"class.std::basic_string"* [ %748, %746 ], [ %744, %743 ]
  %748 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %747, i64 -1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %748) #25
  %749 = icmp eq %"class.std::basic_string"* %748, %29
  br i1 %749, label %784, label %746

750:                                              ; preds = %36
  %751 = landingpad { i8*, i32 }
          cleanup
  br label %754

752:                                              ; preds = %100
  %753 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18) #25
  br label %754

754:                                              ; preds = %750, %98, %752
  %755 = phi { i8*, i32 } [ %753, %752 ], [ %751, %750 ], [ %99, %98 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #25
  br label %776

756:                                              ; preds = %122
  %757 = landingpad { i8*, i32 }
          cleanup
  br label %760

758:                                              ; preds = %170
  %759 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %19) #25
  br label %760

760:                                              ; preds = %756, %168, %758
  %761 = phi { i8*, i32 } [ %759, %758 ], [ %757, %756 ], [ %169, %168 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %123) #25
  br label %776

762:                                              ; preds = %193
  %763 = landingpad { i8*, i32 }
          cleanup
  br label %766

764:                                              ; preds = %239
  %765 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20) #25
  br label %766

766:                                              ; preds = %762, %237, %764
  %767 = phi { i8*, i32 } [ %765, %764 ], [ %763, %762 ], [ %238, %237 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %194) #25
  br label %776

768:                                              ; preds = %583
  %769 = landingpad { i8*, i32 }
          cleanup
  br label %776

770:                                              ; preds = %571
  %771 = landingpad { i8*, i32 }
          cleanup
  br label %776

772:                                              ; preds = %601
  %773 = landingpad { i8*, i32 }
          cleanup
  br label %776

774:                                              ; preds = %262, %275, %284, %285, %291, %294, %296, %298, %313, %336, %338, %354, %377, %379, %395, %418, %430, %439, %440, %446, %449, %451, %458, %467, %468, %474, %477, %479, %481, %483, %505, %507, %509, %529, %531, %533, %553, %565, %577, %589, %607, %616, %617, %623, %626
  %775 = landingpad { i8*, i32 }
          cleanup
  br label %776

776:                                              ; preds = %768, %772, %774, %770, %766, %760, %754
  %777 = phi { i8*, i32 } [ %767, %766 ], [ %761, %760 ], [ %755, %754 ], [ %769, %768 ], [ %771, %770 ], [ %773, %772 ], [ %775, %774 ]
  %778 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 2
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %778) #25
  %779 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %779) #25
  %780 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %17, i64 0, i64 0
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %780) #25
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %37) #25
  %781 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 2
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %781) #25
  %782 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 1
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %782) #25
  %783 = getelementptr inbounds [3 x %"class.std::basic_string"], [3 x %"class.std::basic_string"]* %13, i64 0, i64 0
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %783) #25
  br label %784

784:                                              ; preds = %746, %776
  %785 = phi { i8*, i32 } [ %777, %776 ], [ %745, %746 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %28) #25
  resume { i8*, i32 } %785

786:                                              ; preds = %738, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN18FastWalshTransform7cleanupEv(%class.FastWalshTransform* nocapture nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 9
  %3 = bitcast float** %2 to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !47
  %5 = tail call i32 @hipHostFree(i8* %4)
  %6 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 6
  %7 = load float*, float** %6, align 8, !tbaa !12
  %8 = icmp eq float* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = bitcast float* %7 to i8*
  tail call void @free(i8* %10) #25
  store float* null, float** %6, align 8, !tbaa !12
  br label %11

11:                                               ; preds = %9, %1
  %12 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 7
  %13 = load float*, float** %12, align 8, !tbaa !25
  %14 = icmp eq float* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = bitcast float* %13 to i8*
  tail call void @free(i8* %16) #25
  store float* null, float** %12, align 8, !tbaa !25
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %0, i64 0, i32 8
  %19 = load float*, float** %18, align 8, !tbaa !31
  %20 = icmp eq float* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = bitcast float* %19 to i8*
  tail call void @free(i8* %22) #25
  store float* null, float** %18, align 8, !tbaa !31
  br label %23

23:                                               ; preds = %21, %17
  ret i32 0
}

declare dso_local i32 @hipHostFree(i8*) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #16

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #3 personality i32 (...)* @__gxx_personality_v0 {
  %3 = alloca %class.FastWalshTransform, align 8
  %4 = bitcast %class.FastWalshTransform* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %4) #25
  %5 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %3, i64 0, i32 0
  store i32 123, i32* %5, align 8, !tbaa !103
  %6 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %3, i64 0, i32 5
  store i32 1024, i32* %6, align 8, !tbaa !9
  %7 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %3, i64 0, i32 6
  store float* null, float** %7, align 8, !tbaa !12
  %8 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %3, i64 0, i32 8
  store float* null, float** %8, align 8, !tbaa !31
  %9 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %3, i64 0, i32 1
  %10 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %3, i64 0, i32 11
  %11 = bitcast double* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  store i32 1, i32* %10, align 8, !tbaa !76
  %12 = tail call noalias nonnull dereferenceable(96) i8* @_Znwm(i64 96) #27
  %13 = bitcast i8* %12 to %"class.appsdk::HIPCommandArgs"*
  %14 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %13, i64 0, i32 0, i32 0
  %15 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %13, i64 0, i32 0, i32 7, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %15, align 8, !tbaa !52
  %16 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %13, i64 0, i32 0, i32 8, i32 0
  %17 = bitcast i32* %16 to <4 x i32>*
  store <4 x i32> <i32 2, i32 9, i32 1, i32 1>, <4 x i32>* %17, align 8, !tbaa !7
  %18 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %13, i64 0, i32 0, i32 8, i32 4
  store i32 1, i32* %18, align 8, !tbaa !104
  %19 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %13, i64 0, i32 0, i32 12, i32 0, i32 0
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %19, align 8, !tbaa !52
  %20 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %13, i64 0, i32 0, i32 1
  store i32 0, i32* %20, align 8, !tbaa !57
  %21 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %13, i64 0, i32 0, i32 2
  store i32 0, i32* %21, align 4, !tbaa !105
  %22 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %13, i64 0, i32 0, i32 4
  %23 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %13, i64 0, i32 0, i32 3
  %24 = bitcast i8*** %22 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  store i32 123, i32* %23, align 8, !tbaa !106
  %25 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %13, i64 0, i32 0, i32 9
  store i8 0, i8* %25, align 4, !tbaa !32
  %26 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %13, i64 0, i32 0, i32 10
  store i8 0, i8* %26, align 1, !tbaa !27
  %27 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %13, i64 0, i32 0, i32 11
  store i8 0, i8* %27, align 2, !tbaa !81
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN6appsdk14HIPCommandArgsE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %14, align 8, !tbaa !17
  %28 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %13, i64 0, i32 1
  store i32 0, i32* %28, align 8, !tbaa !107
  %29 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %13, i64 0, i32 2
  store i8 0, i8* %29, align 4, !tbaa !109
  %30 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %3, i64 0, i32 13
  %31 = bitcast %"class.appsdk::HIPCommandArgs"** %30 to i8**
  store i8* %12, i8** %31, align 8, !tbaa !26
  %32 = tail call noalias nonnull dereferenceable(32) i8* @_Znwm(i64 32) #27
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %32, i8 0, i64 24, i1 false) #25
  %33 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %3, i64 0, i32 12
  %34 = bitcast %"class.appsdk::SDKTimer"** %33 to i8**
  store i8* %32, i8** %34, align 8, !tbaa !61
  %35 = bitcast i8* %12 to %"class.appsdk::SDKCmdArgsParser"*
  %36 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %35, i64 0, i32 12
  %37 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.55, i64 0, i64 0), i64 29)
  %38 = call i32 @_ZN18FastWalshTransform10initializeEv(%class.FastWalshTransform* nonnull align 8 dereferenceable(112) %3)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %75

40:                                               ; preds = %2
  %41 = load %"class.appsdk::HIPCommandArgs"*, %"class.appsdk::HIPCommandArgs"** %30, align 8, !tbaa !26
  %42 = bitcast %"class.appsdk::HIPCommandArgs"* %41 to i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)***
  %43 = load i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)**, i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)*** %42, align 8, !tbaa !17
  %44 = load i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)*, i32 (%"class.appsdk::HIPCommandArgs"*, i32, i8**)** %43, align 8
  %45 = call i32 %44(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %41, i32 %0, i8** %1)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %75

47:                                               ; preds = %40
  %48 = call i32 @_ZN18FastWalshTransform5setupEv(%class.FastWalshTransform* nonnull align 8 dereferenceable(112) %3)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %47
  %51 = call i32 @_ZN18FastWalshTransform3runEv(%class.FastWalshTransform* nonnull align 8 dereferenceable(112) %3)
  %52 = call i32 @_ZN18FastWalshTransform13verifyResultsEv(%class.FastWalshTransform* nonnull align 8 dereferenceable(112) %3)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %3, i64 0, i32 9
  %56 = bitcast float** %55 to i8**
  %57 = load i8*, i8** %56, align 8, !tbaa !47
  %58 = call i32 @hipHostFree(i8* %57)
  %59 = load float*, float** %7, align 8, !tbaa !12
  %60 = icmp eq float* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %54
  %62 = bitcast float* %59 to i8*
  call void @free(i8* %62) #25
  store float* null, float** %7, align 8, !tbaa !12
  br label %63

63:                                               ; preds = %61, %54
  %64 = getelementptr inbounds %class.FastWalshTransform, %class.FastWalshTransform* %3, i64 0, i32 7
  %65 = load float*, float** %64, align 8, !tbaa !25
  %66 = icmp eq float* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = bitcast float* %65 to i8*
  call void @free(i8* %68) #25
  store float* null, float** %64, align 8, !tbaa !25
  br label %69

69:                                               ; preds = %67, %63
  %70 = load float*, float** %8, align 8, !tbaa !31
  %71 = icmp eq float* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = bitcast float* %70 to i8*
  call void @free(i8* %73) #25
  store float* null, float** %8, align 8, !tbaa !31
  br label %74

74:                                               ; preds = %69, %72
  call void @_ZN18FastWalshTransform10printStatsEv(%class.FastWalshTransform* nonnull align 8 dereferenceable(112) %3)
  br label %75

75:                                               ; preds = %50, %47, %40, %2, %74
  %76 = phi i32 [ 0, %74 ], [ 1, %2 ], [ 1, %40 ], [ 1, %47 ], [ 1, %50 ]
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %4) #25
  ret i32 %76
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #17

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znam(i64) local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(i8*) local_unnamed_addr #14

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), %"class.std::basic_string"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @gettimeofday(%struct.timeval* nocapture noundef, %struct.timezone* nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare dso_local float @sqrtf(float) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #17

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk14HIPCommandArgs16parseCommandLineEiPPc(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %0, i32 %1, i8** %2) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = alloca %"class.std::allocator.0", align 1
  %7 = alloca %"class.std::allocator.0", align 1
  %8 = alloca %"class.std::allocator.0", align 1
  %9 = alloca %"class.std::allocator.0", align 1
  %10 = alloca %"class.std::basic_string", align 8
  %11 = alloca %"class.std::allocator.0", align 1
  %12 = alloca %"class.std::basic_string", align 8
  %13 = alloca %"class.std::allocator.0", align 1
  %14 = alloca %"class.std::basic_string", align 8
  %15 = alloca %"class.std::allocator.0", align 1
  %16 = alloca %"class.std::basic_string", align 8
  %17 = alloca %"class.std::allocator.0", align 1
  %18 = alloca %"class.std::basic_string", align 8
  %19 = alloca %"class.std::allocator.0", align 1
  %20 = alloca %"class.std::basic_string", align 8
  %21 = alloca %"class.std::allocator.0", align 1
  %22 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0
  %23 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 2
  store i32 %1, i32* %23, align 4, !tbaa !105
  %24 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 4
  store i8** %2, i8*** %24, align 8, !tbaa !110
  %25 = icmp eq i32 %1, 1
  br i1 %25, label %86, label %26

26:                                               ; preds = %3
  %27 = icmp sgt i32 %1, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %26, %28
  %29 = phi i8** [ %36, %28 ], [ %2, %26 ]
  %30 = phi i32 [ %34, %28 ], [ %1, %26 ]
  %31 = tail call i32 @_ZN6appsdk16SDKCmdArgsParser5matchEPPci(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %22, i8** %29, i32 %30)
  %32 = icmp sgt i32 %31, 1
  %33 = select i1 %32, i32 %31, i32 1
  %34 = sub nsw i32 %30, %33
  %35 = zext i32 %33 to i64
  %36 = getelementptr inbounds i8*, i8** %29, i64 %35
  %37 = icmp sgt i32 %34, 0
  br i1 %37, label %28, label %38, !llvm.loop !111

38:                                               ; preds = %28
  %39 = icmp eq i32 %31, 0
  br i1 %39, label %40, label %86

40:                                               ; preds = %26, %38
  %41 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i64 0, i64 0), i64 6)
  tail call void @_ZN6appsdk16SDKCmdArgsParser4helpEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %22)
  %42 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %11, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %42) #25
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %11)
  %43 = load i32, i32* %23, align 4, !tbaa !105
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %40, %59
  %46 = phi i32 [ %60, %59 ], [ %43, %40 ]
  %47 = phi i64 [ %61, %59 ], [ 0, %40 ]
  %48 = load i8**, i8*** %24, align 8, !tbaa !110
  %49 = getelementptr inbounds i8*, i8** %48, i64 %47
  %50 = load i8*, i8** %49, align 8, !tbaa !3
  %51 = load i8, i8* %50, align 1, !tbaa !24
  %52 = icmp eq i8 %51, 45
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = getelementptr inbounds i8, i8* %50, i64 1
  %55 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %10, i8* nonnull %54) #25
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %23, align 4, !tbaa !105
  br label %59

59:                                               ; preds = %57, %45
  %60 = phi i32 [ %58, %57 ], [ %46, %45 ]
  %61 = add nuw nsw i64 %47, 1
  %62 = sext i32 %60 to i64
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %45, label %64, !llvm.loop !112

64:                                               ; preds = %53, %59, %40
  %65 = phi i1 [ false, %40 ], [ false, %59 ], [ true, %53 ]
  %66 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %10, i64 0, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8, !tbaa !13
  %68 = getelementptr inbounds i8, i8* %67, i64 -24
  %69 = bitcast i8* %68 to %"struct.std::basic_string<char>::_Rep"*
  %70 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %9, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %70) #25
  %71 = icmp eq i8* %68, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %71, label %84, label %72, !prof !16

72:                                               ; preds = %64
  %73 = getelementptr inbounds i8, i8* %67, i64 -8
  %74 = bitcast i8* %73 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %75, label %77

75:                                               ; preds = %72
  %76 = atomicrmw volatile add i32* %74, i32 -1 acq_rel, align 4
  br label %80

77:                                               ; preds = %72
  %78 = load i32, i32* %74, align 8, !tbaa !7
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %74, align 8, !tbaa !7
  br label %80

80:                                               ; preds = %77, %75
  %81 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %82 = icmp slt i32 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %69, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %9) #25
  br label %84

84:                                               ; preds = %64, %80, %83
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %70) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %42) #25
  br i1 %65, label %85, label %339

85:                                               ; preds = %84
  call void @exit(i32 0) #30
  unreachable

86:                                               ; preds = %3, %38
  %87 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %13, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %87) #25
  call void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %13)
  %88 = load i32, i32* %23, align 4, !tbaa !105
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %86, %104
  %91 = phi i32 [ %105, %104 ], [ %88, %86 ]
  %92 = phi i64 [ %106, %104 ], [ 0, %86 ]
  %93 = load i8**, i8*** %24, align 8, !tbaa !110
  %94 = getelementptr inbounds i8*, i8** %93, i64 %92
  %95 = load i8*, i8** %94, align 8, !tbaa !3
  %96 = load i8, i8* %95, align 1, !tbaa !24
  %97 = icmp eq i8 %96, 45
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = getelementptr inbounds i8, i8* %95, i64 1
  %100 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %12, i8* nonnull %99) #25
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %23, align 4, !tbaa !105
  br label %104

104:                                              ; preds = %102, %90
  %105 = phi i32 [ %103, %102 ], [ %91, %90 ]
  %106 = add nuw nsw i64 %92, 1
  %107 = sext i32 %105 to i64
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %90, label %109, !llvm.loop !112

109:                                              ; preds = %98, %104, %86
  %110 = phi i1 [ false, %86 ], [ false, %104 ], [ true, %98 ]
  %111 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %12, i64 0, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8, !tbaa !13
  %113 = getelementptr inbounds i8, i8* %112, i64 -24
  %114 = bitcast i8* %113 to %"struct.std::basic_string<char>::_Rep"*
  %115 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %8, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %115) #25
  %116 = icmp eq i8* %113, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %116, label %129, label %117, !prof !16

117:                                              ; preds = %109
  %118 = getelementptr inbounds i8, i8* %112, i64 -8
  %119 = bitcast i8* %118 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %120, label %122

120:                                              ; preds = %117
  %121 = atomicrmw volatile add i32* %119, i32 -1 acq_rel, align 4
  br label %125

122:                                              ; preds = %117
  %123 = load i32, i32* %119, align 8, !tbaa !7
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %119, align 8, !tbaa !7
  br label %125

125:                                              ; preds = %122, %120
  %126 = phi i32 [ %121, %120 ], [ %123, %122 ]
  %127 = icmp slt i32 %126, 1
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %114, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %8) #25
  br label %129

129:                                              ; preds = %109, %125, %128
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %115) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %87) #25
  br i1 %110, label %130, label %131

130:                                              ; preds = %129
  call void @_ZN6appsdk16SDKCmdArgsParser5usageEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %22)
  call void @exit(i32 0) #30
  unreachable

131:                                              ; preds = %129
  %132 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %15, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %132) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %15)
          to label %133 unwind label %231

133:                                              ; preds = %131
  %134 = load i32, i32* %23, align 4, !tbaa !105
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %133, %150
  %137 = phi i32 [ %151, %150 ], [ %134, %133 ]
  %138 = phi i64 [ %152, %150 ], [ 0, %133 ]
  %139 = load i8**, i8*** %24, align 8, !tbaa !110
  %140 = getelementptr inbounds i8*, i8** %139, i64 %138
  %141 = load i8*, i8** %140, align 8, !tbaa !3
  %142 = load i8, i8* %141, align 1, !tbaa !24
  %143 = icmp eq i8 %142, 45
  br i1 %143, label %144, label %150

144:                                              ; preds = %136
  %145 = getelementptr inbounds i8, i8* %141, i64 1
  %146 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14, i8* nonnull %145) #25
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %204, label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %23, align 4, !tbaa !105
  br label %150

150:                                              ; preds = %148, %136
  %151 = phi i32 [ %149, %148 ], [ %137, %136 ]
  %152 = add nuw nsw i64 %138, 1
  %153 = sext i32 %151 to i64
  %154 = icmp slt i64 %152, %153
  br i1 %154, label %136, label %155, !llvm.loop !112

155:                                              ; preds = %150, %133
  %156 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %17, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %156) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %17)
          to label %157 unwind label %233

157:                                              ; preds = %155
  %158 = load i32, i32* %23, align 4, !tbaa !105
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %183

160:                                              ; preds = %157, %178
  %161 = phi i32 [ %179, %178 ], [ %158, %157 ]
  %162 = phi i64 [ %180, %178 ], [ 0, %157 ]
  %163 = load i8**, i8*** %24, align 8, !tbaa !110
  %164 = getelementptr inbounds i8*, i8** %163, i64 %162
  %165 = load i8*, i8** %164, align 8, !tbaa !3
  %166 = load i8, i8* %165, align 1, !tbaa !24
  %167 = icmp eq i8 %166, 45
  br i1 %167, label %168, label %178

168:                                              ; preds = %160
  %169 = getelementptr inbounds i8, i8* %165, i64 1
  %170 = load i8, i8* %169, align 1, !tbaa !24
  %171 = icmp eq i8 %170, 45
  %172 = select i1 %171, i8* %169, i8* %165
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %16, i8* nonnull %173) #25
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %168
  %177 = load i32, i32* %23, align 4, !tbaa !105
  br label %178

178:                                              ; preds = %176, %160
  %179 = phi i32 [ %177, %176 ], [ %161, %160 ]
  %180 = add nuw nsw i64 %162, 1
  %181 = sext i32 %179 to i64
  %182 = icmp slt i64 %180, %181
  br i1 %182, label %160, label %183, !llvm.loop !112

183:                                              ; preds = %168, %178, %157
  %184 = phi i1 [ false, %157 ], [ true, %168 ], [ false, %178 ]
  %185 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %16, i64 0, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8, !tbaa !13
  %187 = getelementptr inbounds i8, i8* %186, i64 -24
  %188 = bitcast i8* %187 to %"struct.std::basic_string<char>::_Rep"*
  %189 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %7, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %189) #25
  %190 = icmp eq i8* %187, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %190, label %203, label %191, !prof !16

191:                                              ; preds = %183
  %192 = getelementptr inbounds i8, i8* %186, i64 -8
  %193 = bitcast i8* %192 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %194, label %196

194:                                              ; preds = %191
  %195 = atomicrmw volatile add i32* %193, i32 -1 acq_rel, align 4
  br label %199

196:                                              ; preds = %191
  %197 = load i32, i32* %193, align 8, !tbaa !7
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %193, align 8, !tbaa !7
  br label %199

199:                                              ; preds = %196, %194
  %200 = phi i32 [ %195, %194 ], [ %197, %196 ]
  %201 = icmp slt i32 %200, 1
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %188, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %7) #25
  br label %203

203:                                              ; preds = %183, %199, %202
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %189) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %156) #25
  br label %204

204:                                              ; preds = %144, %203
  %205 = phi i1 [ %184, %203 ], [ true, %144 ]
  %206 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %14, i64 0, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8, !tbaa !13
  %208 = getelementptr inbounds i8, i8* %207, i64 -24
  %209 = bitcast i8* %208 to %"struct.std::basic_string<char>::_Rep"*
  %210 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %6, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %210) #25
  %211 = icmp eq i8* %208, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %211, label %224, label %212, !prof !16

212:                                              ; preds = %204
  %213 = getelementptr inbounds i8, i8* %207, i64 -8
  %214 = bitcast i8* %213 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %215, label %217

215:                                              ; preds = %212
  %216 = atomicrmw volatile add i32* %214, i32 -1 acq_rel, align 4
  br label %220

217:                                              ; preds = %212
  %218 = load i32, i32* %214, align 8, !tbaa !7
  %219 = add nsw i32 %218, -1
  store i32 %219, i32* %214, align 8, !tbaa !7
  br label %220

220:                                              ; preds = %217, %215
  %221 = phi i32 [ %216, %215 ], [ %218, %217 ]
  %222 = icmp slt i32 %221, 1
  br i1 %222, label %223, label %224

223:                                              ; preds = %220
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %209, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %6) #25
  br label %224

224:                                              ; preds = %204, %220, %223
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %210) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %132) #25
  br i1 %205, label %225, label %237

225:                                              ; preds = %224
  %226 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i64 0, i64 0))
  %227 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0, i32 12, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8, !tbaa !13
  %229 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %226, i8* %228)
  %230 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %229)
  call void @exit(i32 0) #30
  unreachable

231:                                              ; preds = %131
  %232 = landingpad { i8*, i32 }
          cleanup
  br label %235

233:                                              ; preds = %155
  %234 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %156) #25
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %14) #25
  br label %235

235:                                              ; preds = %233, %231
  %236 = phi { i8*, i32 } [ %234, %233 ], [ %232, %231 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %132) #25
  br label %341

237:                                              ; preds = %224
  %238 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %19, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %238) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %19)
          to label %239 unwind label %333

239:                                              ; preds = %237
  %240 = load i32, i32* %23, align 4, !tbaa !105
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %261

242:                                              ; preds = %239, %256
  %243 = phi i32 [ %257, %256 ], [ %240, %239 ]
  %244 = phi i64 [ %258, %256 ], [ 0, %239 ]
  %245 = load i8**, i8*** %24, align 8, !tbaa !110
  %246 = getelementptr inbounds i8*, i8** %245, i64 %244
  %247 = load i8*, i8** %246, align 8, !tbaa !3
  %248 = load i8, i8* %247, align 1, !tbaa !24
  %249 = icmp eq i8 %248, 45
  br i1 %249, label %250, label %256

250:                                              ; preds = %242
  %251 = getelementptr inbounds i8, i8* %247, i64 1
  %252 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18, i8* nonnull %251) #25
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %310, label %254

254:                                              ; preds = %250
  %255 = load i32, i32* %23, align 4, !tbaa !105
  br label %256

256:                                              ; preds = %254, %242
  %257 = phi i32 [ %255, %254 ], [ %243, %242 ]
  %258 = add nuw nsw i64 %244, 1
  %259 = sext i32 %257 to i64
  %260 = icmp slt i64 %258, %259
  br i1 %260, label %242, label %261, !llvm.loop !112

261:                                              ; preds = %256, %239
  %262 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %21, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %262) #25
  invoke void @_ZNSsC1EPKcRKSaIcE(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %21)
          to label %263 unwind label %335

263:                                              ; preds = %261
  %264 = load i32, i32* %23, align 4, !tbaa !105
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %289

266:                                              ; preds = %263, %284
  %267 = phi i32 [ %285, %284 ], [ %264, %263 ]
  %268 = phi i64 [ %286, %284 ], [ 0, %263 ]
  %269 = load i8**, i8*** %24, align 8, !tbaa !110
  %270 = getelementptr inbounds i8*, i8** %269, i64 %268
  %271 = load i8*, i8** %270, align 8, !tbaa !3
  %272 = load i8, i8* %271, align 1, !tbaa !24
  %273 = icmp eq i8 %272, 45
  br i1 %273, label %274, label %284

274:                                              ; preds = %266
  %275 = getelementptr inbounds i8, i8* %271, i64 1
  %276 = load i8, i8* %275, align 1, !tbaa !24
  %277 = icmp eq i8 %276, 45
  %278 = select i1 %277, i8* %275, i8* %271
  %279 = getelementptr inbounds i8, i8* %278, i64 1
  %280 = call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %20, i8* nonnull %279) #25
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %289, label %282

282:                                              ; preds = %274
  %283 = load i32, i32* %23, align 4, !tbaa !105
  br label %284

284:                                              ; preds = %282, %266
  %285 = phi i32 [ %283, %282 ], [ %267, %266 ]
  %286 = add nuw nsw i64 %268, 1
  %287 = sext i32 %285 to i64
  %288 = icmp slt i64 %286, %287
  br i1 %288, label %266, label %289, !llvm.loop !112

289:                                              ; preds = %274, %284, %263
  %290 = phi i1 [ false, %263 ], [ true, %274 ], [ false, %284 ]
  %291 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %20, i64 0, i32 0, i32 0
  %292 = load i8*, i8** %291, align 8, !tbaa !13
  %293 = getelementptr inbounds i8, i8* %292, i64 -24
  %294 = bitcast i8* %293 to %"struct.std::basic_string<char>::_Rep"*
  %295 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %295) #25
  %296 = icmp eq i8* %293, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %296, label %309, label %297, !prof !16

297:                                              ; preds = %289
  %298 = getelementptr inbounds i8, i8* %292, i64 -8
  %299 = bitcast i8* %298 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %300, label %302

300:                                              ; preds = %297
  %301 = atomicrmw volatile add i32* %299, i32 -1 acq_rel, align 4
  br label %305

302:                                              ; preds = %297
  %303 = load i32, i32* %299, align 8, !tbaa !7
  %304 = add nsw i32 %303, -1
  store i32 %304, i32* %299, align 8, !tbaa !7
  br label %305

305:                                              ; preds = %302, %300
  %306 = phi i32 [ %301, %300 ], [ %303, %302 ]
  %307 = icmp slt i32 %306, 1
  br i1 %307, label %308, label %309

308:                                              ; preds = %305
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %294, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #25
  br label %309

309:                                              ; preds = %289, %305, %308
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %295) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %262) #25
  br label %310

310:                                              ; preds = %250, %309
  %311 = phi i1 [ %290, %309 ], [ true, %250 ]
  %312 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %18, i64 0, i32 0, i32 0
  %313 = load i8*, i8** %312, align 8, !tbaa !13
  %314 = getelementptr inbounds i8, i8* %313, i64 -24
  %315 = bitcast i8* %314 to %"struct.std::basic_string<char>::_Rep"*
  %316 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %316) #25
  %317 = icmp eq i8* %314, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %317, label %330, label %318, !prof !16

318:                                              ; preds = %310
  %319 = getelementptr inbounds i8, i8* %313, i64 -8
  %320 = bitcast i8* %319 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %321, label %323

321:                                              ; preds = %318
  %322 = atomicrmw volatile add i32* %320, i32 -1 acq_rel, align 4
  br label %326

323:                                              ; preds = %318
  %324 = load i32, i32* %320, align 8, !tbaa !7
  %325 = add nsw i32 %324, -1
  store i32 %325, i32* %320, align 8, !tbaa !7
  br label %326

326:                                              ; preds = %323, %321
  %327 = phi i32 [ %322, %321 ], [ %324, %323 ]
  %328 = icmp slt i32 %327, 1
  br i1 %328, label %329, label %330

329:                                              ; preds = %326
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %315, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #25
  br label %330

330:                                              ; preds = %310, %326, %329
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %316) #25
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %238) #25
  br i1 %311, label %331, label %339

331:                                              ; preds = %330
  %332 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 2
  store i8 1, i8* %332, align 4, !tbaa !109
  br label %339

333:                                              ; preds = %237
  %334 = landingpad { i8*, i32 }
          cleanup
  br label %337

335:                                              ; preds = %261
  %336 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %262) #25
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %18) #25
  br label %337

337:                                              ; preds = %335, %333
  %338 = phi { i8*, i32 } [ %336, %335 ], [ %334, %333 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %238) #25
  br label %341

339:                                              ; preds = %330, %331, %84
  %340 = phi i32 [ 1, %84 ], [ 0, %331 ], [ 0, %330 ]
  ret i32 %340

341:                                              ; preds = %337, %235
  %342 = phi { i8*, i32 } [ %338, %337 ], [ %236, %235 ]
  resume { i8*, i32 } %342
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN6appsdk16SDKCmdArgsParserD2Ev(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0) unnamed_addr #9 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTVN6appsdk16SDKCmdArgsParserE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %4, align 8, !tbaa !17
  %5 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %6 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %5, align 8, !tbaa !58
  %7 = icmp eq %"struct.appsdk::Option"* %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %6, i64 -1, i32 5
  %10 = bitcast i8** %9 to i8*
  %11 = bitcast i8** %9 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %6, i64 %12
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi %"struct.appsdk::Option"* [ %18, %16 ], [ %15, %14 ]
  %18 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %17, i64 -1
  tail call void @_ZN6appsdk6OptionD2Ev(%"struct.appsdk::Option"* nonnull align 8 dereferenceable(48) %18) #25
  %19 = icmp eq %"struct.appsdk::Option"* %18, %6
  br i1 %19, label %20, label %16

20:                                               ; preds = %16, %8
  tail call void @_ZdaPv(i8* nonnull %10) #28
  br label %21

21:                                               ; preds = %20, %1
  %22 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 12, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8, !tbaa !13
  %24 = getelementptr inbounds i8, i8* %23, i64 -24
  %25 = bitcast i8* %24 to %"struct.std::basic_string<char>::_Rep"*
  %26 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %26) #25
  %27 = icmp eq i8* %24, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %27, label %40, label %28, !prof !16

28:                                               ; preds = %21
  %29 = getelementptr inbounds i8, i8* %23, i64 -8
  %30 = bitcast i8* %29 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %31, label %33

31:                                               ; preds = %28
  %32 = atomicrmw volatile add i32* %30, i32 -1 acq_rel, align 4
  br label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %30, align 8, !tbaa !7
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %30, align 8, !tbaa !7
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %25, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #25
  br label %40

40:                                               ; preds = %21, %36, %39
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %26) #25
  %41 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 7, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8, !tbaa !13
  %43 = getelementptr inbounds i8, i8* %42, i64 -24
  %44 = bitcast i8* %43 to %"struct.std::basic_string<char>::_Rep"*
  %45 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %45) #25
  %46 = icmp eq i8* %43, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %46, label %59, label %47, !prof !16

47:                                               ; preds = %40
  %48 = getelementptr inbounds i8, i8* %42, i64 -8
  %49 = bitcast i8* %48 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %50, label %52

50:                                               ; preds = %47
  %51 = atomicrmw volatile add i32* %49, i32 -1 acq_rel, align 4
  br label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %49, align 8, !tbaa !7
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %49, align 8, !tbaa !7
  br label %55

55:                                               ; preds = %52, %50
  %56 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %44, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #25
  br label %59

59:                                               ; preds = %40, %55, %58
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %45) #25
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN6appsdk14HIPCommandArgsD0Ev(%"class.appsdk::HIPCommandArgs"* nonnull align 8 dereferenceable(93) %0) unnamed_addr #9 comdat align 2 {
  %2 = getelementptr inbounds %"class.appsdk::HIPCommandArgs", %"class.appsdk::HIPCommandArgs"* %0, i64 0, i32 0
  tail call void @_ZN6appsdk16SDKCmdArgsParserD2Ev(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(93) %2) #25
  %3 = bitcast %"class.appsdk::HIPCommandArgs"* %0 to i8*
  tail call void @_ZdlPv(i8* nonnull %3) #28
  ret void
}

declare dso_local void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6appsdk16SDKCmdArgsParser5usageEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #8 comdat align 2 {
  %2 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i64 0, i64 0), i64 6)
  tail call void @_ZN6appsdk16SDKCmdArgsParser4helpEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0)
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #19

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZN6appsdk16SDKCmdArgsParser5matchEPPci(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0, i8** %1, i32 %2) local_unnamed_addr #5 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = load i8*, i8** %1, align 8, !tbaa !3
  %6 = load i8, i8* %5, align 1, !tbaa !24
  %7 = icmp eq i8 %6, 45
  br i1 %7, label %8, label %199

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, i8* %5, i64 1
  %10 = load i8, i8* %9, align 1, !tbaa !24
  %11 = icmp eq i8 %10, 45
  %12 = select i1 %11, i8* %9, i8* %5
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 1
  %15 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %16 = load i32, i32* %14, align 8, !tbaa !57
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %199

18:                                               ; preds = %8
  br i1 %11, label %19, label %30

19:                                               ; preds = %18, %25
  %20 = phi i64 [ %26, %25 ], [ 0, %18 ]
  %21 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !58
  %22 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %21, i64 %20, i32 1
  %23 = tail call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %22, i8* nonnull %13) #25
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %19
  %26 = add nuw nsw i64 %20, 1
  %27 = load i32, i32* %14, align 8, !tbaa !57
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %19, label %199, !llvm.loop !113

30:                                               ; preds = %18, %194
  %31 = phi i64 [ %195, %194 ], [ 0, %18 ]
  %32 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !58
  %33 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %32, i64 %31, i32 0
  %34 = tail call i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %33, i8* nonnull %13) #25
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %194

36:                                               ; preds = %30, %19
  %37 = phi i64 [ %20, %19 ], [ %31, %30 ]
  %38 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %15, align 8, !tbaa !58
  %39 = and i64 %37, 4294967295
  %40 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 4
  %41 = load i32, i32* %40, align 8, !tbaa !53
  switch i32 %41, label %132 [
    i32 4, label %42
    i32 1, label %45
    i32 2, label %74
    i32 0, label %103
  ]

42:                                               ; preds = %36
  %43 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %44 = load i8*, i8** %43, align 8, !tbaa !56
  store i8 1, i8* %44, align 1, !tbaa !114
  br label %199

45:                                               ; preds = %36
  %46 = icmp sgt i32 %2, 1
  br i1 %46, label %47, label %54

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8*, i8** %1, i64 1
  %49 = load i8*, i8** %48, align 8, !tbaa !3
  %50 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %51 = bitcast i8** %50 to float**
  %52 = load float*, float** %51, align 8, !tbaa !56
  %53 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0), float* %52) #25
  br label %199

54:                                               ; preds = %45
  %55 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.59, i64 0, i64 0), i64 29)
  %56 = load i8*, i8** %1, align 8, !tbaa !3
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %60 = getelementptr i8, i8* %59, i64 -24
  %61 = bitcast i8* %60 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %62
  %64 = bitcast i8* %63 to %"class.std::basic_ios"*
  %65 = getelementptr inbounds i8, i8* %63, i64 32
  %66 = bitcast i8* %65 to i32*
  %67 = load i32, i32* %66, align 8, !tbaa !115
  %68 = or i32 %67, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %64, i32 %68)
  br label %72

69:                                               ; preds = %54
  %70 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %56) #25
  %71 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %56, i64 %70)
  br label %72

72:                                               ; preds = %58, %69
  %73 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0), i64 2)
  br label %199

74:                                               ; preds = %36
  %75 = icmp sgt i32 %2, 1
  br i1 %75, label %76, label %83

76:                                               ; preds = %74
  %77 = getelementptr inbounds i8*, i8** %1, i64 1
  %78 = load i8*, i8** %77, align 8, !tbaa !3
  %79 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %80 = bitcast i8** %79 to double**
  %81 = load double*, double** %80, align 8, !tbaa !56
  %82 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i64 0, i64 0), double* %81) #25
  br label %199

83:                                               ; preds = %74
  %84 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.59, i64 0, i64 0), i64 29)
  %85 = load i8*, i8** %1, align 8, !tbaa !3
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %89 = getelementptr i8, i8* %88, i64 -24
  %90 = bitcast i8* %89 to i64*
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %91
  %93 = bitcast i8* %92 to %"class.std::basic_ios"*
  %94 = getelementptr inbounds i8, i8* %92, i64 32
  %95 = bitcast i8* %94 to i32*
  %96 = load i32, i32* %95, align 8, !tbaa !115
  %97 = or i32 %96, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %93, i32 %97)
  br label %101

98:                                               ; preds = %83
  %99 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %85) #25
  %100 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %85, i64 %99)
  br label %101

101:                                              ; preds = %87, %98
  %102 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0), i64 2)
  br label %199

103:                                              ; preds = %36
  %104 = icmp sgt i32 %2, 1
  br i1 %104, label %105, label %112

105:                                              ; preds = %103
  %106 = getelementptr inbounds i8*, i8** %1, i64 1
  %107 = load i8*, i8** %106, align 8, !tbaa !3
  %108 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %109 = bitcast i8** %108 to i32**
  %110 = load i32*, i32** %109, align 8, !tbaa !56
  %111 = tail call i32 (i8*, i8*, ...) @sscanf(i8* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i32* %110) #25
  br label %199

112:                                              ; preds = %103
  %113 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.59, i64 0, i64 0), i64 29)
  %114 = load i8*, i8** %1, align 8, !tbaa !3
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %127

116:                                              ; preds = %112
  %117 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %118 = getelementptr i8, i8* %117, i64 -24
  %119 = bitcast i8* %118 to i64*
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %120
  %122 = bitcast i8* %121 to %"class.std::basic_ios"*
  %123 = getelementptr inbounds i8, i8* %121, i64 32
  %124 = bitcast i8* %123 to i32*
  %125 = load i32, i32* %124, align 8, !tbaa !115
  %126 = or i32 %125, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %122, i32 %126)
  br label %130

127:                                              ; preds = %112
  %128 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %114) #25
  %129 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %114, i64 %128)
  br label %130

130:                                              ; preds = %116, %127
  %131 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0), i64 2)
  br label %199

132:                                              ; preds = %36
  %133 = icmp sgt i32 %2, 1
  br i1 %133, label %134, label %174

134:                                              ; preds = %132
  %135 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %38, i64 %39, i32 5
  %136 = bitcast i8** %135 to %"class.std::basic_string"**
  %137 = load %"class.std::basic_string"*, %"class.std::basic_string"** %136, align 8, !tbaa !56
  %138 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %137, i64 0, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8, !tbaa !13
  %140 = getelementptr inbounds i8, i8* %139, i64 -8
  %141 = bitcast i8* %140 to i32*
  %142 = load atomic i32, i32* %141 acquire, align 8
  %143 = icmp sgt i32 %142, 0
  %144 = load i8*, i8** %138, align 8, !tbaa !13
  %145 = getelementptr inbounds i8, i8* %144, i64 -24
  br i1 %143, label %146, label %163

146:                                              ; preds = %134
  %147 = bitcast i8* %145 to %"struct.std::basic_string<char>::_Rep"*
  %148 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %148) #25
  %149 = icmp eq i8* %145, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %149, label %162, label %150, !prof !16

150:                                              ; preds = %146
  %151 = getelementptr inbounds i8, i8* %144, i64 -8
  %152 = bitcast i8* %151 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %153, label %155

153:                                              ; preds = %150
  %154 = atomicrmw volatile add i32* %152, i32 -1 acq_rel, align 4
  br label %158

155:                                              ; preds = %150
  %156 = load i32, i32* %152, align 8, !tbaa !7
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %152, align 8, !tbaa !7
  br label %158

158:                                              ; preds = %155, %153
  %159 = phi i32 [ %154, %153 ], [ %156, %155 ]
  %160 = icmp slt i32 %159, 1
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %147, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #25
  br label %162

162:                                              ; preds = %161, %158, %146
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %148) #25
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %138, align 8, !tbaa !13
  br label %169

163:                                              ; preds = %134
  %164 = icmp eq i8* %145, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %164, label %169, label %165, !prof !16

165:                                              ; preds = %163
  %166 = getelementptr inbounds i8, i8* %144, i64 -8
  %167 = bitcast i8* %166 to i32*
  store i32 0, i32* %167, align 8, !tbaa !116
  %168 = bitcast i8* %145 to i64*
  store i64 0, i64* %168, align 8, !tbaa !33
  store i8 0, i8* %144, align 1, !tbaa !24
  br label %169

169:                                              ; preds = %162, %163, %165
  %170 = getelementptr inbounds i8*, i8** %1, i64 1
  %171 = load i8*, i8** %170, align 8, !tbaa !3
  %172 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %171) #25
  %173 = call nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %137, i8* %171, i64 %172)
  br label %199

174:                                              ; preds = %132
  %175 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.59, i64 0, i64 0), i64 29)
  %176 = load i8*, i8** %1, align 8, !tbaa !3
  %177 = icmp eq i8* %176, null
  br i1 %177, label %178, label %189

178:                                              ; preds = %174
  %179 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %180 = getelementptr i8, i8* %179, i64 -24
  %181 = bitcast i8* %180 to i64*
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %182
  %184 = bitcast i8* %183 to %"class.std::basic_ios"*
  %185 = getelementptr inbounds i8, i8* %183, i64 32
  %186 = bitcast i8* %185 to i32*
  %187 = load i32, i32* %186, align 8, !tbaa !115
  %188 = or i32 %187, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264) %184, i32 %188)
  br label %192

189:                                              ; preds = %174
  %190 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %176) #25
  %191 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %176, i64 %190)
  br label %192

192:                                              ; preds = %178, %189
  %193 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0), i64 2)
  br label %199

194:                                              ; preds = %30
  %195 = add nuw nsw i64 %31, 1
  %196 = load i32, i32* %14, align 8, !tbaa !57
  %197 = sext i32 %196 to i64
  %198 = icmp slt i64 %195, %197
  br i1 %198, label %30, label %199, !llvm.loop !113

199:                                              ; preds = %194, %25, %8, %192, %130, %101, %72, %47, %105, %169, %76, %42, %3
  %200 = phi i32 [ 0, %3 ], [ 1, %192 ], [ 1, %130 ], [ 1, %101 ], [ 1, %72 ], [ 2, %169 ], [ 2, %105 ], [ 2, %76 ], [ 2, %47 ], [ 1, %42 ], [ 0, %8 ], [ 0, %25 ], [ 0, %194 ]
  ret i32 %200
}

; Function Attrs: nounwind
declare dso_local i32 @_ZNKSs7compareEPKc(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i8*) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @sscanf(i8* nocapture noundef readonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nounwind
declare dso_local void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24), %"class.std::allocator.0"* nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: nounwind
declare extern_weak dso_local i32 @__pthread_key_create(i32*, void (i8*)*) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #20

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN6appsdk16SDKCmdArgsParser4helpEv(%"class.appsdk::SDKCmdArgsParser"* nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::allocator.0", align 1
  %3 = alloca %"class.std::allocator.0", align 1
  %4 = alloca %"class.std::allocator.0", align 1
  %5 = alloca %"class.std::allocator.0", align 1
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::basic_string", align 8
  %8 = alloca %"class.std::basic_string", align 8
  %9 = alloca %"class.std::basic_string", align 8
  %10 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i64 0, i64 0), i64 4)
  %11 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %12 = getelementptr i8, i8* %11, i64 -24
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %14
  %16 = getelementptr inbounds i8, i8* %15, i64 24
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 8, !tbaa !88
  %19 = and i32 %18, -177
  %20 = or i32 %19, 32
  store i32 %20, i32* %17, align 8, !tbaa !94
  %21 = load i64, i64* %13, align 8
  %22 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %21
  %23 = getelementptr inbounds i8, i8* %22, i64 16
  %24 = bitcast i8* %23 to i64*
  store i64 14, i64* %24, align 8, !tbaa !101
  %25 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i64 6)
  %26 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %27 = getelementptr i8, i8* %26, i64 -24
  %28 = bitcast i8* %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %29
  %31 = getelementptr inbounds i8, i8* %30, i64 24
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 8, !tbaa !88
  %34 = and i32 %33, -177
  %35 = or i32 %34, 32
  store i32 %35, i32* %32, align 8, !tbaa !94
  %36 = load i64, i64* %28, align 8
  %37 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %36
  %38 = getelementptr inbounds i8, i8* %37, i64 16
  %39 = bitcast i8* %38 to i64*
  store i64 32, i64* %39, align 8, !tbaa !101
  %40 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0), i64 1)
  %41 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.66, i64 0, i64 0), i64 25)
  %42 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 1
  %43 = getelementptr inbounds %"class.appsdk::SDKCmdArgsParser", %"class.appsdk::SDKCmdArgsParser"* %0, i64 0, i32 5
  %44 = bitcast %"class.std::basic_string"* %6 to i8*
  %45 = bitcast %"class.std::basic_string"* %7 to i8*
  %46 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %7, i64 0, i32 0, i32 0
  %47 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %6, i64 0, i32 0, i32 0
  %48 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %5, i64 0, i32 0
  %49 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %4, i64 0, i32 0
  %50 = bitcast %"class.std::basic_string"* %8 to i8*
  %51 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %8, i64 0, i32 0, i32 0
  %52 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %3, i64 0, i32 0
  %53 = bitcast %"class.std::basic_string"* %9 to i8*
  %54 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %9, i64 0, i32 0, i32 0
  %55 = getelementptr inbounds %"class.std::allocator.0", %"class.std::allocator.0"* %2, i64 0, i32 0
  %56 = load i32, i32* %42, align 8, !tbaa !57
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %247, %1
  ret void

59:                                               ; preds = %1, %247
  %60 = phi i64 [ %248, %247 ], [ 0, %1 ]
  %61 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !58
  %62 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %61, i64 %60, i32 0
  %63 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %62, i64 0, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8, !tbaa !13
  %65 = getelementptr inbounds i8, i8* %64, i64 -24
  %66 = bitcast i8* %65 to i64*
  %67 = load i64, i64* %66, align 8, !tbaa !33
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %140, label %69

69:                                               ; preds = %59
  %70 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %71 = getelementptr i8, i8* %70, i64 -24
  %72 = bitcast i8* %71 to i64*
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %73
  %75 = bitcast i8* %74 to i32*
  %76 = load i32, i32* %75, align 8, !tbaa !88
  %77 = and i32 %76, -177
  %78 = or i32 %77, 32
  store i32 %78, i32* %75, align 8, !tbaa !94
  %79 = load i64, i64* %72, align 8
  %80 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %79
  %81 = bitcast i8* %80 to i64*
  store i64 4, i64* %81, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %44) #25
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45) #25
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %46, align 8, !tbaa !52, !alias.scope !117
  %82 = add i64 %67, 1
  invoke void @_ZNSs7reserveEm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i64 %82)
          to label %83 unwind label %89

83:                                               ; preds = %69
  %84 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i64 1)
          to label %85 unwind label %89

85:                                               ; preds = %83
  %86 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %62)
          to label %91 unwind label %89

87:                                               ; preds = %138, %214, %252, %222, %167, %89
  %88 = phi { i8*, i32 } [ %90, %89 ], [ %168, %167 ], [ %223, %222 ], [ %253, %252 ], [ %215, %214 ], [ %139, %138 ]
  resume { i8*, i32 } %88

89:                                               ; preds = %85, %83, %69
  %90 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7) #25
  br label %87

91:                                               ; preds = %85
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %92 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i64 0, i64 0), i64 2)
          to label %93 unwind label %134

93:                                               ; preds = %91
  %94 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %92, i64 0, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8, !tbaa !52, !noalias !120
  store i8* %95, i8** %47, align 8, !tbaa !52, !alias.scope !120
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %94, align 8, !tbaa !13, !noalias !120
  %96 = load i8*, i8** %47, align 8, !tbaa !13
  %97 = getelementptr inbounds i8, i8* %96, i64 -24
  %98 = bitcast i8* %97 to i64*
  %99 = load i64, i64* %98, align 8, !tbaa !33
  %100 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %96, i64 %99)
          to label %101 unwind label %136

101:                                              ; preds = %93
  %102 = bitcast i8* %97 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %48) #25
  %103 = icmp eq i8* %97, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %103, label %116, label %104, !prof !16

104:                                              ; preds = %101
  %105 = getelementptr inbounds i8, i8* %96, i64 -8
  %106 = bitcast i8* %105 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %107, label %109

107:                                              ; preds = %104
  %108 = atomicrmw volatile add i32* %106, i32 -1 acq_rel, align 4
  br label %112

109:                                              ; preds = %104
  %110 = load i32, i32* %106, align 8, !tbaa !7
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %106, align 8, !tbaa !7
  br label %112

112:                                              ; preds = %109, %107
  %113 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %114 = icmp slt i32 %113, 1
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %102, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %5) #25
  br label %116

116:                                              ; preds = %101, %112, %115
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %48) #25
  %117 = load i8*, i8** %46, align 8, !tbaa !13
  %118 = getelementptr inbounds i8, i8* %117, i64 -24
  %119 = bitcast i8* %118 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %49) #25
  %120 = icmp eq i8* %118, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %120, label %133, label %121, !prof !16

121:                                              ; preds = %116
  %122 = getelementptr inbounds i8, i8* %117, i64 -8
  %123 = bitcast i8* %122 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %124, label %126

124:                                              ; preds = %121
  %125 = atomicrmw volatile add i32* %123, i32 -1 acq_rel, align 4
  br label %129

126:                                              ; preds = %121
  %127 = load i32, i32* %123, align 8, !tbaa !7
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %123, align 8, !tbaa !7
  br label %129

129:                                              ; preds = %126, %124
  %130 = phi i32 [ %125, %124 ], [ %127, %126 ]
  %131 = icmp slt i32 %130, 1
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %119, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %4) #25
  br label %133

133:                                              ; preds = %116, %129, %132
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %49) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44) #25
  br label %142

134:                                              ; preds = %91
  %135 = landingpad { i8*, i32 }
          cleanup
  br label %138

136:                                              ; preds = %93
  %137 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %6) #25
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi { i8*, i32 } [ %137, %136 ], [ %135, %134 ]
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %7) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44) #25
  br label %87

140:                                              ; preds = %59
  %141 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0), i64 4)
  br label %142

142:                                              ; preds = %140, %133
  %143 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %144 = getelementptr i8, i8* %143, i64 -24
  %145 = bitcast i8* %144 to i64*
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %146
  %148 = bitcast i8* %147 to i32*
  %149 = load i32, i32* %148, align 8, !tbaa !88
  %150 = and i32 %149, -177
  %151 = or i32 %150, 32
  store i32 %151, i32* %148, align 8, !tbaa !94
  %152 = load i64, i64* %145, align 8
  %153 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %152
  %154 = bitcast i8* %153 to i64*
  store i64 14, i64* %154, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #25
  %155 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !58
  %156 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %155, i64 %60, i32 1
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  store i8* bitcast (i64* getelementptr inbounds ([0 x i64], [0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE, i64 0, i64 3) to i8*), i8** %51, align 8, !tbaa !52, !alias.scope !123
  %157 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %156, i64 0, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8, !tbaa !13, !noalias !123
  %159 = getelementptr inbounds i8, i8* %158, i64 -24
  %160 = bitcast i8* %159 to i64*
  %161 = load i64, i64* %160, align 8, !tbaa !33, !noalias !123
  %162 = add i64 %161, 2
  invoke void @_ZNSs7reserveEm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i64 %162)
          to label %163 unwind label %167

163:                                              ; preds = %142
  %164 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0), i64 2)
          to label %165 unwind label %167

165:                                              ; preds = %163
  %166 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %156)
          to label %169 unwind label %167

167:                                              ; preds = %165, %163, %142
  %168 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8) #25
  br label %87

169:                                              ; preds = %165
  %170 = load i8*, i8** %51, align 8, !tbaa !13
  %171 = getelementptr inbounds i8, i8* %170, i64 -24
  %172 = bitcast i8* %171 to i64*
  %173 = load i64, i64* %172, align 8, !tbaa !33
  %174 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %170, i64 %173)
          to label %175 unwind label %214

175:                                              ; preds = %169
  %176 = load i8*, i8** %51, align 8, !tbaa !13
  %177 = getelementptr inbounds i8, i8* %176, i64 -24
  %178 = bitcast i8* %177 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %52) #25
  %179 = icmp eq i8* %177, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %179, label %192, label %180, !prof !16

180:                                              ; preds = %175
  %181 = getelementptr inbounds i8, i8* %176, i64 -8
  %182 = bitcast i8* %181 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %183, label %185

183:                                              ; preds = %180
  %184 = atomicrmw volatile add i32* %182, i32 -1 acq_rel, align 4
  br label %188

185:                                              ; preds = %180
  %186 = load i32, i32* %182, align 8, !tbaa !7
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %182, align 8, !tbaa !7
  br label %188

188:                                              ; preds = %185, %183
  %189 = phi i32 [ %184, %183 ], [ %186, %185 ]
  %190 = icmp slt i32 %189, 1
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %178, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %3) #25
  br label %192

192:                                              ; preds = %175, %188, %191
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %52) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #25
  %193 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !58
  %194 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %193, i64 %60, i32 3, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8, !tbaa !13
  %196 = getelementptr inbounds i8, i8* %195, i64 -24
  %197 = bitcast i8* %196 to i64*
  %198 = load i64, i64* %197, align 8, !tbaa !33
  %199 = icmp eq i64 %198, 0
  %200 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !17
  %201 = getelementptr i8, i8* %200, i64 -24
  %202 = bitcast i8* %201 to i64*
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 2) to i8*), i64 %203
  %205 = bitcast i8* %204 to i32*
  %206 = load i32, i32* %205, align 8, !tbaa !88
  %207 = and i32 %206, -177
  %208 = or i32 %207, 32
  store i32 %208, i32* %205, align 8, !tbaa !94
  %209 = load i64, i64* %202, align 8
  %210 = getelementptr inbounds i8, i8* bitcast (i64* getelementptr inbounds (%"class.std::basic_ostream", %"class.std::basic_ostream"* @_ZSt4cout, i64 0, i32 1, i32 0, i32 1) to i8*), i64 %209
  %211 = bitcast i8* %210 to i64*
  store i64 32, i64* %211, align 8, !tbaa !101
  br i1 %199, label %216, label %212

212:                                              ; preds = %192
  %213 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %195, i64 %198)
  br label %218

214:                                              ; preds = %169
  %215 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %8) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #25
  br label %87

216:                                              ; preds = %192
  %217 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.70, i64 0, i64 0), i64 0)
  br label %218

218:                                              ; preds = %216, %212
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %53) #25
  %219 = load %"struct.appsdk::Option"*, %"struct.appsdk::Option"** %43, align 8, !tbaa !58
  %220 = getelementptr inbounds %"struct.appsdk::Option", %"struct.appsdk::Option"* %219, i64 %60, i32 2
  call void @_ZNSsC1ERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9, %"class.std::basic_string"* nonnull align 8 dereferenceable(8) %220)
  %221 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0), i64 1)
          to label %224 unwind label %222

222:                                              ; preds = %218
  %223 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9) #25
  br label %87

224:                                              ; preds = %218
  %225 = load i8*, i8** %54, align 8, !tbaa !13
  %226 = getelementptr inbounds i8, i8* %225, i64 -24
  %227 = bitcast i8* %226 to i64*
  %228 = load i64, i64* %227, align 8, !tbaa !33
  %229 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* nonnull %225, i64 %228)
          to label %230 unwind label %252

230:                                              ; preds = %224
  %231 = load i8*, i8** %54, align 8, !tbaa !13
  %232 = getelementptr inbounds i8, i8* %231, i64 -24
  %233 = bitcast i8* %232 to %"struct.std::basic_string<char>::_Rep"*
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %55) #25
  %234 = icmp eq i8* %232, bitcast ([0 x i64]* @_ZNSs4_Rep20_S_empty_rep_storageE to i8*)
  br i1 %234, label %247, label %235, !prof !16

235:                                              ; preds = %230
  %236 = getelementptr inbounds i8, i8* %231, i64 -8
  %237 = bitcast i8* %236 to i32*
  br i1 icmp ne (i8* bitcast (i32 (i32*, void (i8*)*)* @__pthread_key_create to i8*), i8* null), label %238, label %240

238:                                              ; preds = %235
  %239 = atomicrmw volatile add i32* %237, i32 -1 acq_rel, align 4
  br label %243

240:                                              ; preds = %235
  %241 = load i32, i32* %237, align 8, !tbaa !7
  %242 = add nsw i32 %241, -1
  store i32 %242, i32* %237, align 8, !tbaa !7
  br label %243

243:                                              ; preds = %240, %238
  %244 = phi i32 [ %239, %238 ], [ %241, %240 ]
  %245 = icmp slt i32 %244, 1
  br i1 %245, label %246, label %247

246:                                              ; preds = %243
  call void @_ZNSs4_Rep10_M_destroyERKSaIcE(%"struct.std::basic_string<char>::_Rep"* nonnull align 8 dereferenceable(24) %233, %"class.std::allocator.0"* nonnull align 1 dereferenceable(1) %2) #25
  br label %247

247:                                              ; preds = %230, %243, %246
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %55) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53) #25
  %248 = add nuw nsw i64 %60, 1
  %249 = load i32, i32* %42, align 8, !tbaa !57
  %250 = sext i32 %249 to i64
  %251 = icmp slt i64 %248, %250
  br i1 %251, label %59, label %58, !llvm.loop !126

252:                                              ; preds = %224
  %253 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSsD2Ev(%"class.std::basic_string"* nonnull align 8 dereferenceable(8) %9) #25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53) #25
  br label %87
}

declare dso_local void @_ZNSs7reserveEm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6appendERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), %"class.std::basic_string"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare dso_local void @_ZNSsC1ERKSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), %"class.std::basic_string"* nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull align 8 dereferenceable(264), i32) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8 signext) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: noreturn
declare dso_local void @_ZSt16__throw_bad_castv() local_unnamed_addr #21

declare dso_local void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570)) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_string"* @_ZNSs6assignEPKcm(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @srand(i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), double) local_unnamed_addr #0

; Function Attrs: uwtable
declare dso_local void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88), i32) unnamed_addr #5 align 2

; Function Attrs: nounwind uwtable
declare dso_local void @_ZNSt19basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::basic_ostringstream"* nonnull align 8 dereferenceable(88)) unnamed_addr #9 align 2

; Function Attrs: nounwind
declare dso_local void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull align 8 dereferenceable(216)) unnamed_addr #1

; Function Attrs: uwtable
declare dso_local void @_ZNKSt15basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::basic_string"* noalias sret(%"class.std::basic_string") align 8, %"class.std::basic_stringbuf"* nonnull align 8 dereferenceable(80)) local_unnamed_addr #5 align 2

declare dso_local void @_ZNSs4swapERSs(%"class.std::basic_string"* nonnull align 8 dereferenceable(8), %"class.std::basic_string"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_fastwalshtransform.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #25
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
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (float*, i32)** @_Z18fastWalshTransformPfi to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %9 = tail call i32 @atexit(void (i8*)* nonnull @__hip_module_dtor)
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #22

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #23

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #7 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #23 = { argmemonly nofree nounwind willreturn writeonly }
attributes #24 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #25 = { nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { builtin nounwind }
attributes #29 = { allocsize(0) }
attributes #30 = { noreturn nounwind }

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
!9 = !{!10, !8, i64 40}
!10 = !{!"_ZTS18FastWalshTransform", !8, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !8, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !8, i64 88, !4, i64 96, !4, i64 104}
!11 = !{!"double", !5, i64 0}
!12 = !{!10, !4, i64 48}
!13 = !{!14, !4, i64 0}
!14 = !{!"_ZTSSs", !15, i64 0}
!15 = !{!"_ZTSNSs12_Alloc_hiderE", !4, i64 0}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{!18, !18, i64 0}
!18 = !{!"vtable pointer", !6, i64 0}
!19 = !{!20, !4, i64 240}
!20 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !4, i64 216, !5, i64 224, !21, i64 225, !4, i64 232, !4, i64 240, !4, i64 248, !4, i64 256}
!21 = !{!"bool", !5, i64 0}
!22 = !{!23, !5, i64 56}
!23 = !{!"_ZTSSt5ctypeIcE", !4, i64 16, !21, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!24 = !{!5, !5, i64 0}
!25 = !{!10, !4, i64 56}
!26 = !{!10, !4, i64 104}
!27 = !{!28, !21, i64 77}
!28 = !{!"_ZTSN6appsdk16SDKCmdArgsParserE", !8, i64 8, !8, i64 12, !8, i64 16, !4, i64 24, !4, i64 32, !21, i64 40, !14, i64 48, !29, i64 56, !21, i64 76, !21, i64 77, !21, i64 78, !14, i64 80}
!29 = !{!"_ZTSN6appsdk13sdkVersionStrE", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16}
!30 = !{i8 0, i8 2}
!31 = !{!10, !4, i64 64}
!32 = !{!28, !21, i64 76}
!33 = !{!34, !35, i64 0}
!34 = !{!"_ZTSNSs9_Rep_baseE", !35, i64 0, !35, i64 8, !8, i64 16}
!35 = !{!"long", !5, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"float", !5, i64 0}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = distinct !{!40, !39}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !39}
!43 = !{!44, !8, i64 332}
!44 = !{!"_ZTS15hipDeviceProp_t", !5, i64 0, !35, i64 256, !35, i64 264, !8, i64 272, !8, i64 276, !8, i64 280, !5, i64 284, !5, i64 296, !8, i64 308, !8, i64 312, !8, i64 316, !35, i64 320, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !8, i64 348, !8, i64 352, !45, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !8, i64 372, !35, i64 376, !8, i64 384, !8, i64 388, !8, i64 392, !5, i64 396, !8, i64 652, !8, i64 656, !8, i64 660, !8, i64 664, !8, i64 668, !5, i64 672, !5, i64 680, !4, i64 696, !4, i64 704, !35, i64 712, !35, i64 720, !35, i64 728, !8, i64 736, !8, i64 740, !8, i64 744, !8, i64 748, !8, i64 752, !8, i64 756, !8, i64 760, !8, i64 764, !8, i64 768, !8, i64 772, !8, i64 776, !8, i64 780, !8, i64 784, !8, i64 788}
!45 = !{!"_ZTS15hipDeviceArch_t", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 2, !8, i64 2, !8, i64 2}
!46 = !{!44, !8, i64 328}
!47 = !{!10, !4, i64 72}
!48 = distinct !{!48, !39}
!49 = distinct !{!49, !39}
!50 = distinct !{!50, !39}
!51 = distinct !{!51, !39}
!52 = !{!15, !4, i64 0}
!53 = !{!54, !55, i64 32}
!54 = !{!"_ZTSN6appsdk6OptionE", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !55, i64 32, !4, i64 40}
!55 = !{!"_ZTSN6appsdk11CmdArgsEnumE", !5, i64 0}
!56 = !{!54, !4, i64 40}
!57 = !{!28, !8, i64 8}
!58 = !{!28, !4, i64 32}
!59 = distinct !{!59, !39}
!60 = !{i64 0, i64 65}
!61 = !{!10, !4, i64 96}
!62 = !{!63, !4, i64 8}
!63 = !{!"_ZTSSt12_Vector_baseIPN6appsdk8SDKTimer5TimerESaIS3_EE", !64, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIPN6appsdk8SDKTimer5TimerESaIS3_EE12_Vector_implE", !4, i64 0, !4, i64 8, !4, i64 16}
!65 = !{!63, !4, i64 0}
!66 = !{!10, !11, i64 8}
!67 = !{!68, !69, i64 8}
!68 = !{!"_ZTSN6appsdk8SDKTimer5TimerE", !14, i64 0, !69, i64 8, !69, i64 16, !69, i64 24}
!69 = !{!"long long", !5, i64 0}
!70 = !{!63, !4, i64 16}
!71 = !{!72, !35, i64 0}
!72 = !{!"_ZTS7timeval", !35, i64 0, !35, i64 8}
!73 = !{!72, !35, i64 8}
!74 = !{!68, !69, i64 24}
!75 = !{!68, !69, i64 16}
!76 = !{!10, !8, i64 88}
!77 = distinct !{!77, !39}
!78 = !{!10, !11, i64 16}
!79 = !{!10, !11, i64 32}
!80 = distinct !{!80, !39}
!81 = !{!28, !21, i64 78}
!82 = !{!83, !11, i64 24}
!83 = !{!"_ZTSN6appsdk8SDKTimerE", !84, i64 0, !11, i64 24}
!84 = !{!"_ZTSSt6vectorIPN6appsdk8SDKTimer5TimerESaIS3_EE"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E: argument 0"}
!87 = distinct !{!87, !"_ZN6appsdk8toStringIiEESsT_PFRSt8ios_baseS3_E"}
!88 = !{!89, !90, i64 24}
!89 = !{!"_ZTSSt8ios_base", !35, i64 8, !35, i64 16, !90, i64 24, !91, i64 28, !91, i64 32, !4, i64 40, !92, i64 48, !5, i64 64, !8, i64 192, !4, i64 200, !93, i64 208}
!90 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!91 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!92 = !{!"_ZTSNSt8ios_base6_WordsE", !4, i64 0, !35, i64 8}
!93 = !{!"_ZTSSt6locale", !4, i64 0}
!94 = !{!90, !90, i64 0}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!97 = distinct !{!97, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E: argument 0"}
!100 = distinct !{!100, !"_ZN6appsdk8toStringIdEESsT_PFRSt8ios_baseS3_E"}
!101 = !{!89, !35, i64 16}
!102 = distinct !{!102, !39}
!103 = !{!10, !8, i64 0}
!104 = !{!29, !8, i64 16}
!105 = !{!28, !8, i64 12}
!106 = !{!28, !8, i64 16}
!107 = !{!108, !8, i64 88}
!108 = !{!"_ZTSN6appsdk14HIPCommandArgsE", !8, i64 88, !21, i64 92}
!109 = !{!108, !21, i64 92}
!110 = !{!28, !4, i64 24}
!111 = distinct !{!111, !39}
!112 = distinct !{!112, !39}
!113 = distinct !{!113, !39}
!114 = !{!21, !21, i64 0}
!115 = !{!89, !91, i64 32}
!116 = !{!34, !8, i64 16}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_: argument 0"}
!119 = distinct !{!119, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_: argument 0"}
!122 = distinct !{!122, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EOS6_PKS3_"}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_: argument 0"}
!125 = distinct !{!125, !"_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_"}
!126 = distinct !{!126, !39}
